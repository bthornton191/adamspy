"""This module is for sending scripts through Adams/PPT

"""
import os
import subprocess
import re
import time
import platform

import jinja2
from numpy import genfromtxt
import matplotlib.pyplot as plt
from thornpy.signal import manually_clean_sig, remove_data_point, manually_clean_sigs, low_pass
from thornpy.signal import _clean_sig as clean_sig


LOG_COMPLETE_PATTERN = '! Command file is exhausted, batch run is finished.'

LUNAR_SCRIPT_NAME = 'get_lunar_results.py'
GET_RESULTS_SCRIPT_NAME = 'get_results.py'
EDIT_RESULTS_SCRIPT_NAME = 'edit_results.py'
TEMP_OUTPUT_FILENAME = 'results.tmp'

LOG_NAME = 'aview.log'

TMPLT_ENV = jinja2.Environment(
    loader=jinja2.PackageLoader('adamspy.postprocess', 'aview_scripts'),
    autoescape=False,
    keep_trailing_newline=True,
    trim_blocks=True,
    lstrip_blocks=True
)

_TIMEOUT = 300
LOG_FILE_ERROR_PATTERN = '! \\S*Error: '

def get_results(res_file, reqs_to_get, t_min=None, t_max=None, _just_write_script=False, timeout=_TIMEOUT):
    """Gets results from an Adams results (.res) file.
	
	Example
	-------
	>>> result_file = 'example.res'
	>>> t_min = 70
	>>> t_max = 80
	>>> reqs_to_get = {}
	>>> reqs_to_get['MSE'] = ['Instantaneous_Bottom_MSE', 'Filtered_Surface_MSE']
	>>> reqs_to_get['ROP_controls'] = ['Command_ROP', 'True_WOB']
	>>> requests, units = get_results(result_file, reqs_to_get, t_min, t_max)

	Note
	----
	This funciton only works with Requests.  It does not work with Result Sets.

	Note
	----
	This function only works with xml results files.
	
	Parameters
	----------
	result_file : str
		Filename of an Adams results (.res) file
	reqs_to_get : dict
		Dictionary of requests to extract (the default is None, which gets all results)
	t_min : float, optional
		Minimum time for which to extract results (the default is None)
	t_max : float, optional
		Maximum time for which to extract results (the default is None)
	
	Returns
	-------
	dict
		Dictionary of request data
	
	"""
    template = TMPLT_ENV.from_string(open(os.path.join(os.path.dirname(__file__), 'aview_scripts', GET_RESULTS_SCRIPT_NAME)).read())
    working_directory = os.path.dirname(res_file)


    script_filename = _get_unique_filename(GET_RESULTS_SCRIPT_NAME)
    output_filename = _get_unique_filename(TEMP_OUTPUT_FILENAME)
    
    with open(os.path.join(working_directory, script_filename), 'w') as fid:
        fid.write(template.render({'res_file': os.path.split(res_file)[-1], 'reqs_to_get': reqs_to_get, 't_min': t_min, 't_max': t_max, 'output_file': output_filename}))

    if _just_write_script is False:
        # Delete the aview.log file
        try:
            os.remove(os.path.join(working_directory, LOG_NAME))
        except FileNotFoundError:
            pass
        except PermissionError:
            pass

        # Run the postprocessor
        if platform.system() == 'Windows':
            startupinfo = subprocess.STARTUPINFO()
            startupinfo.dwFlags |= subprocess.STARTF_USESHOWWINDOW        
            subprocess.Popen('"{}" aview ru-s b {}'.format(os.environ['ADAMS_LAUNCH_COMMAND'], script_filename), cwd=working_directory, startupinfo=startupinfo)
        
        else:
            subprocess.Popen([os.environ['ADAMS_LAUNCH_COMMAND'], '-c', 'aview', 'ru-standard', 'b', script_filename, 'exit'], cwd=working_directory)            

        # Wait for complete
        _wait(os.path.join(working_directory, LOG_NAME), timeout=timeout)

        # Check the log file for errors
        _get_log_errors(os.path.join(working_directory, LOG_NAME))

        # Read and return the results
        data = genfromtxt(os.path.join(working_directory, output_filename), delimiter=',', names=True, dtype=None)

        os.remove(os.path.join(working_directory, script_filename))
        os.remove(os.path.join(working_directory, output_filename))

        output_dict = {'time': list(data['time'])}
        for res in reqs_to_get:
            output_dict[res] = {}
            for comp in reqs_to_get[res]:
                output_dict[res][comp] = list(data[f'{res}_{comp}'])
        
        return output_dict

def write_results(res_file, input_dict):
    # TODO
    return

def edit_results(res_file, input_dict, new_res_file=None, _just_write_script=False, timeout=_TIMEOUT):
    template = TMPLT_ENV.from_string(open(os.path.join(os.path.dirname(__file__), 'aview_scripts', EDIT_RESULTS_SCRIPT_NAME)).read())
    working_directory = os.path.dirname(res_file)

    new_res_file = os.path.split(res_file)[-1] if new_res_file is None else os.path.split(new_res_file)[-1]

    script_name = _get_unique_filename(EDIT_RESULTS_SCRIPT_NAME)

    with open(os.path.join(working_directory, script_name), 'w') as fid:
        fid.write(template.render({'res_file': os.path.split(res_file)[-1], 'reqs_to_edit': input_dict, 'output_file': new_res_file}))

    if _just_write_script is False:
        # Delete the aview.log file
        try:
            os.remove(os.path.join(working_directory, LOG_NAME))
        except FileNotFoundError:
            pass
        except PermissionError:
            pass

        if platform.system() == 'Windows':
            # Run the postprocessor
            startupinfo = subprocess.STARTUPINFO()
            startupinfo.dwFlags |= subprocess.STARTF_USESHOWWINDOW        
            subprocess.Popen('"{}" aview ru-s b {}'.format(os.environ['ADAMS_LAUNCH_COMMAND'], script_name), cwd=working_directory, startupinfo=startupinfo)
        
        else:
            subprocess.Popen([os.environ['ADAMS_LAUNCH_COMMAND'], '-c', 'aview', 'ru-s', 'b', script_name, 'exit'], cwd=working_directory)

        # Wait for complete
        _wait(os.path.join(working_directory, LOG_NAME), timeout=timeout)

        # Check the log file for errors
        _get_log_errors(os.path.join(working_directory, LOG_NAME))

def get_lunar_results(res_files, reqs_to_get, t_min, t_max, output_file, _just_write_script=False, timeout=_TIMEOUT):
    
    template = TMPLT_ENV.from_string(open(os.path.join(os.path.dirname(__file__), 'aview_scripts', LUNAR_SCRIPT_NAME)).read())
    
    working_directory = os.path.dirname(res_files[0])

    script_name = _get_unique_filename(LUNAR_SCRIPT_NAME)

    with open(os.path.join(working_directory, script_name), 'w') as fid:
        fid.write(template.render({'res_files': res_files, 'reqs_to_get': reqs_to_get, 't_min': t_min, 't_max': t_max, 'output_suffix': output_file}))

    if _just_write_script is False:
        # Delete the aview.log file
        try:
            os.remove(os.path.join(working_directory, LOG_NAME))
        except FileNotFoundError:
            pass
        
        # Run the postprocessor
        if platform.system() == 'Windows':
            startupinfo = subprocess.STARTUPINFO()
            startupinfo.dwFlags |= subprocess.STARTF_USESHOWWINDOW        
            subprocess.Popen('"{}" aview ru-s b {}'.format(os.environ['ADAMS_LAUNCH_COMMAND'], script_name), cwd=working_directory, startupinfo=startupinfo)
        
        else:
            subprocess.Popen([os.environ['ADAMS_LAUNCH_COMMAND'], 'aview', 'ru-s', 'b', script_name], cwd=working_directory)

        # Wait for complete
        _wait(os.path.join(working_directory, LOG_NAME), timeout=timeout)

        os.remove(os.path.join(working_directory, script_name))

        # Make a list of the files that are written
        res_output_files = [os.path.splitext(output_file)[0] + '_time' + os.path.splitext(output_file)[-1]]
        for res_name, res_comps in reqs_to_get.items():
            for res_comp in res_comps:
                full_res_name = f'{res_name}_{res_comp}'
                res_output_files.append(os.path.splitext(output_file)[0] + '_' + full_res_name + os.path.splitext(output_file)[-1])

        return res_output_files

def _wait(log_file, sleep_time=0.2, timeout=300):
    """Waits for the log file to write the last line of the macro
    
    Parameters
    ----------
    log_file : str
        filename of log file
    sleep_time : float, optional
        Time between checks, by default 0.2
    timeout : int, optional
        During after which to time out, by default 300

    """    

    for _i in range(int(timeout/sleep_time)):
        
        ppt_log_file_exists = os.path.exists(log_file)       

        if ppt_log_file_exists is True:
            # If ppt.log exists, open it and see if the results have been loaded
            with open(log_file, 'r') as fid:
                text = fid.read()
            if re.search(LOG_COMPLETE_PATTERN, text):
                break
                
        time.sleep(sleep_time)

def _get_log_errors(log_file):
    """Checks the log file for errors of the type AviewError.
    
    Parameters
    ----------
    log_file : str
        Filename of aview log file (usulally aview.log)

    """
    with open(log_file, 'r') as fid:
        lines = fid.readlines()
    
    for line in lines:
        if re.search(LOG_FILE_ERROR_PATTERN, line):
            raise AviewError(line[2:])        

def manually_remove_spikes(res_file, reqs_to_clean, reqs_to_check=None, t_min=None, t_max=None, _just_write_script=False, timeout=_TIMEOUT, _inplace=False):
    """Allows the user to manually scan through the result sets to pick out points to eliminate.

    Parameters
    ----------
    res_file : str
        Adams Results (.res) filename 
    reqs_to_clean : dict, optional
        Nested dictionary of result sets and result components to clean
    reqs_to_check : dict
        Nested dictionary of result sets and result components to check for spikes, by default same as reqs_to_clean
    t_min : float, optional
        Minumum simulation time to clean, by default None
    t_max : float, optional
        Maximum simulation time to clean, by default None
    timeout : float, optional
        Number of seconds to wait for results to load before timing out, by default _TIMEOUT

    Returns
    -------
    dict
        Nested dictionary of cleaned results
        
    """
    if reqs_to_check is None:
        reqs_to_check = reqs_to_clean

    results = get_results(res_file, reqs_to_clean, t_min=t_min, t_max=t_max, _just_write_script=_just_write_script, timeout=timeout)
    
    time_sig = results['time']
    
    # Remove the spikes
    for (res, res_comps) in [(r, rc) for r, rc in results.items() if r in reqs_to_check]:
        for (res_comp, values) in [(rc, v) for rc, v in res_comps.items() if rc in reqs_to_check[res]]:
            results[res][res_comp], i_mod = manually_clean_sig(time_sig, values, indices=True)

            # If a modification was made to the signal, make that modification to the rest of the signals
            if i_mod != []:

                # Loop over all the other results
                for (other_res, other_res_comps) in [(r, rc) for r, rc in results.items() if r != 'time']:
                    for (other_res_comp, other_values) in [(rc, v) for rc, v in other_res_comps.items() if not (other_res == res and rc == res_comp)]: #pylint: disable=no-member
                        for i in i_mod:
                            results[other_res][other_res_comp] = remove_data_point(time_sig, other_values, i)

    # Update the analysis files
    edit_results(res_file, results)

    # Return the cleaned results
    return results

def filter_results(res_file, reqs_to_clean, freq_cutoff, N_filter=5, reqs_to_check=None, t_min=None, t_max=None, _just_write_script=False, timeout=_TIMEOUT, _inplace=False, return_raw=False):
    """Similar to `manually_remove_spikes`, but allows user to plot the signals in batches.  Instead of passing a dictionary for the `reqs_to_check` argument, pass a list of dictionaries and the results in each dictionary in the list will be plotted together.

    Parameters
    ----------
    res_file : str
        Adams Results (.res) filename 
    reqs_to_clean : dict
        Nested dictionary of result sets and result components to clean
    freq_cutoff : float
        Cutoff freqency of filter in Hz
    N_filter : int
        Order of filter
    reqs_to_check : list of dicts
        list of nested dictionary of result sets and result components to check for spikes, by default same as reqs_to_clean
    t_min : float, optional
        Minumum simulation time to clean, by default None
    t_max : float, optional
        Maximum simulation time to clean, by default None
    timeout : float, optional
        Number of seconds to wait for results to load before timing out, by default _TIMEOUT

    Returns
    -------
    dict
        Nested dictionary of cleaned results
        
    """
    if reqs_to_check is None:
        reqs_to_check = [reqs_to_clean]

    results = get_results(res_file, reqs_to_clean, t_min=t_min, t_max=t_max, _just_write_script=_just_write_script, timeout=timeout)    
    time_sig = results.pop('time')

    filtered_results = {}
    for res_name, res_comps in results.items():
        filtered_results[res_name] = {}
        for res_comp, values in res_comps.items():                                          # pylint: disable=no-member

            cleaned_sig, _, _ = clean_sig(values, 3)
            
            filtered_results[res_name][res_comp], _ = low_pass(cleaned_sig, time_sig, freq_cutoff, N=N_filter)

    # Return the cleaned results
    if return_raw is True:
        return {'time': time_sig, **filtered_results}, {'time': time_sig, **results}
    else:
        return {'time': time_sig, **filtered_results} 

def manually_remove_spikes_batch(res_file, reqs_to_clean, reqs_to_check=None, t_min=None, t_max=None, _just_write_script=False, timeout=_TIMEOUT, _inplace=False):
    """Similar to `manually_remove_spikes`, but allows user to plot the signals in batches.  Instead of passing a dictionary for the `reqs_to_check` argument, pass a list of dictionaries and the results in each dictionary in the list will be plotted together.

    Parameters
    ----------
    res_file : str
        Adams Results (.res) filename 
    reqs_to_clean : dict
        Nested dictionary of result sets and result components to clean
    reqs_to_check : list of dicts
        list of nested dictionary of result sets and result components to check for spikes, by default same as reqs_to_clean
    t_min : float, optional
        Minumum simulation time to clean, by default None
    t_max : float, optional
        Maximum simulation time to clean, by default None
    timeout : float, optional
        Number of seconds to wait for results to load before timing out, by default _TIMEOUT

    Returns
    -------
    dict
        Nested dictionary of cleaned results
        
    """
    if reqs_to_check is None:
        reqs_to_check = [reqs_to_clean]

    results = get_results(res_file, reqs_to_clean, t_min=t_min, t_max=t_max, _just_write_script=_just_write_script, timeout=timeout)
    
    time_sig = results['time']

    # Create a flag indicating if the results have been modified and need to be rewritten
    results_modified = False

    for batch_to_check in reqs_to_check:
        
        # Make a list/batch of values to clean
        values_to_check = []
        for (res, res_comps) in [(r, rc) for r, rc in results.items() if r in batch_to_check]:
            for (res_comp, values) in [(rc, v) for rc, v in res_comps.items() if rc in batch_to_check[res]]:
                
                values_to_check.append(values)

        _, i_mod = manually_clean_sigs(time_sig, values_to_check, indices=True)

        # If a modification was made to the signal, make that modification to the rest of the signals
        if i_mod != []:
            
            # Loop over all the results
            for (res, res_comps) in [(r, rc) for r, rc in results.items() if r != 'time']:
                for (res_comp, values) in res_comps.items():
                    for i in i_mod:
                        results[res][res_comp] = remove_data_point(time_sig, values, i)

            # Flag that the results have been modified
            results_modified = True

    # If the results were modified, update the analysis files
    if results_modified is True:
        edit_results(res_file, results)

    # Return the cleaned results
    return results
    
def _get_unique_filename(filename):
    if os.path.exists(filename):

        for i in range(9999):
            new_name, ext = os.path.splitext(filename)
            new_name = new_name + f'_{i+1}'
            if not os.path.exists(new_name + ext):
                filename = new_name + ext
                break    

    return filename

class AviewError(Exception):
    """Raise this error to if a known error occurs in the log file.
    
    """
    pass