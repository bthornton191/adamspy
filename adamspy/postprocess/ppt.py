"""This module is for sending scripts through Adams/PPT

"""
import os
import subprocess
import re
import time

import jinja2
from numpy import genfromtxt
import matplotlib.pyplot as plt
from thornpy.signal import manually_clean_sig


LOG_COMPLETE_PATTERN = '! Command file is exhausted, batch run is finished.'

LUNAR_SCRIPT_NAME = '_get_lunar_results.py'
GET_RESULTS_SCRIPT_NAME = '_get_results.py'
EDIT_RESULTS_SCRIPT_NAME = '_edit_results.py'
TEMP_OUTPUT_FILENAME = '_results_.tmp'

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
    template = TMPLT_ENV.from_string(open(os.path.join(os.path.dirname(__file__), 'aview_scripts', GET_RESULTS_SCRIPT_NAME)).read())
    working_directory = os.path.dirname(res_file)

    with open(os.path.join(working_directory, GET_RESULTS_SCRIPT_NAME), 'w') as fid:
        fid.write(template.render({'res_file': os.path.split(res_file)[-1], 'reqs_to_get': reqs_to_get, 't_min': t_min, 't_max': t_max, 'output_file': TEMP_OUTPUT_FILENAME}))

    if _just_write_script is False:
        # Delete the aview.log file
        try:
            os.remove(os.path.join(working_directory, LOG_NAME))
        except FileNotFoundError:
            pass
        except PermissionError:
            pass

        # Run the postprocessor
        startupinfo = subprocess.STARTUPINFO()
        startupinfo.dwFlags |= subprocess.STARTF_USESHOWWINDOW        
        subprocess.Popen('"{}" aview ru-s b {}'.format(os.environ['ADAMS_LAUNCH_COMMAND'], GET_RESULTS_SCRIPT_NAME), cwd=working_directory, startupinfo=startupinfo)

        # Wait for complete
        _wait(os.path.join(working_directory, LOG_NAME), timeout=timeout)

        # Check the log file for errors
        _get_log_errors(os.path.join(working_directory, LOG_NAME))

        # Read and return the results
        data = genfromtxt(os.path.join(working_directory, TEMP_OUTPUT_FILENAME), delimiter=',', names=True, dtype=None)

        os.remove(os.path.join(working_directory, GET_RESULTS_SCRIPT_NAME))
        os.remove(os.path.join(working_directory, TEMP_OUTPUT_FILENAME))

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

    with open(os.path.join(working_directory, EDIT_RESULTS_SCRIPT_NAME), 'w') as fid:
        fid.write(template.render({'res_file': os.path.split(res_file)[-1], 'reqs_to_edit': input_dict, 'output_file': new_res_file}))

    if _just_write_script is False:
        # Delete the aview.log file
        try:
            os.remove(os.path.join(working_directory, LOG_NAME))
        except FileNotFoundError:
            pass
        except PermissionError:
            pass

        # Run the postprocessor
        startupinfo = subprocess.STARTUPINFO()
        startupinfo.dwFlags |= subprocess.STARTF_USESHOWWINDOW        
        subprocess.Popen('"{}" aview ru-s b {}'.format(os.environ['ADAMS_LAUNCH_COMMAND'], EDIT_RESULTS_SCRIPT_NAME), cwd=working_directory, startupinfo=startupinfo)

        # Wait for complete
        _wait(os.path.join(working_directory, LOG_NAME), timeout=timeout)

        # Check the log file for errors
        _get_log_errors(os.path.join(working_directory, LOG_NAME))

def get_lunar_results(res_files, reqs_to_get, t_min, t_max, output_file, _just_write_script=False, timeout=_TIMEOUT):
    
    template = TMPLT_ENV.from_string(open(os.path.join(os.path.dirname(__file__), 'aview_scripts', LUNAR_SCRIPT_NAME)).read())
    
    working_directory = os.path.dirname(res_files[0])

    with open(os.path.join(working_directory, LUNAR_SCRIPT_NAME), 'w') as fid:
        fid.write(template.render({'res_files': res_files, 'reqs_to_get': reqs_to_get, 't_min': t_min, 't_max': t_max, 'output_suffix': output_file}))

    if _just_write_script is False:
        # Delete the aview.log file
        try:
            os.remove(os.path.join(working_directory, LOG_NAME))
        except FileNotFoundError:
            pass

        # Run the postprocessor
        startupinfo = subprocess.STARTUPINFO()
        startupinfo.dwFlags |= subprocess.STARTF_USESHOWWINDOW        
        subprocess.Popen('"{}" aview ru-s b {}'.format(os.environ['ADAMS_LAUNCH_COMMAND'], LUNAR_SCRIPT_NAME), cwd=working_directory, startupinfo=startupinfo)

        # Wait for complete
        _wait(os.path.join(working_directory, LOG_NAME), timeout=timeout)

        os.remove(os.path.join(working_directory, LUNAR_SCRIPT_NAME))

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

def manually_remove_spikes(res_file, reqs_to_clean, t_min=None, t_max=None, _just_write_script=False, timeout=_TIMEOUT, inplace=False):
    results = get_results(res_file, reqs_to_clean, t_min=t_min, t_max=t_max, _just_write_script=_just_write_script, timeout=timeout)
    
    time_sig = results['time']
    
    # Remove the spikes
    for res, res_comps in results.items():
        if res != 'time':        
            for res_comp, values in res_comps.items(): #pylint: disable=no-member
                results[res][res_comp] = manually_clean_sig(time_sig, values)

    # Update the analysis files
    edit_results(res_file, results)

    # Return the cleaned results
    return results
    
class AviewError(Exception):
    """Raise this error to if a known error occurs in the log file.
    
    """
    pass