import os
import csv

import numpy as np
import Adams                            # pylint: disable=import-error

def write_results(file,  reqs_to_get, output_file, t_min=None, t_max=None):                             #pylint: disable=redefined-outer-name
    """Opens Adams/View, loads results files, and writes the specified results to an output file.
    
    Parameters
    ----------
    files : list
        List of results or requests filenames
    reqs_to_get : dict
        Dictionary of results to export.  The keys should be results and the values should be result componenets
    t_min : float (Optional)
        Minimum time to export.  (first time in the dataset by default)
    t_max : float (Optional)
        Maximum time to export  (last time in the dataset by default)
    output_file : str
        Name of output file

    """
    # Initialize a dictionary for the results 
    res_dict = {}
        
    # Load Results
    Adams.execute_cmd(f'file {get_result_file_type(file)} read file_name="{file}"')

    # Get the model object
    mod = Adams.Models.get([mn for mn in Adams.Models][0])
    
    # Get the analysis object
    ans = mod.Analyses.get([an for an in mod.Analyses][0])

    time = ans.results.get('TIME').values
    _time_np = np.asarray(time)
    i_min = 0 if t_min is None else np.argmax(_time_np >= t_min)
    i_max = len(time)-1 if t_max is None else np.argmax(_time_np >= t_max)

    # Store the time values
    res_dict['time'] = time[i_min:i_max]    

    # Loop over the requsted results
    for res_name, res_comps in reqs_to_get.items():
        print(f'res_comps={res_comps}')
        
        # Get the result object handle
        res = ans.results.get(res_name) if get_result_file_type(file) is 'results' else get_req_from_comment(res_name, ans)

        for res_comp in res_comps:

            print(f'res_comp={res_comp}')
            print(f'req = {res}')
            
            values = res.get(res_comp).values[i_min:i_max]
            res_dict[f'{res_name}_{res_comp}'] = values
    
    # Write to a csv file
    with open(output_file, 'w', newline='') as outfile:
        writer = csv.writer(outfile)
        writer.writerow(res_dict.keys())
        writer.writerows(zip(*res_dict.values()))

def get_result_file_type(file):        
    """Checks if `file` is a results file or a request file.
    
    Parameters
    ----------
    file : str
        Results/request file name.
    
    Returns
    -------
    str
        Type of file
    
    Raises
    ------
    ValueError
        Raised if `file` is neither a request nor a results file.

    """
    if file.endswith('.res'):
        file_type = 'results'
        print('\n--------------\nResults file detected!\n--------------')
    elif file.endswith('.req'):
        file_type = 'request'
        print('\n--------------\nRequst file detected!\n--------------')
    else:
        raise AviewError('Files must be .res or .req files.')
    return file_type

def get_req_from_comment(comment, ans):
    """Gets the actual name of a request
    
    Parameters
    ----------
    comment : str
        Request comment
    results : Analysis
        Adams `:obj:Analysis` object
    
    Returns
    -------
    nt
        Adams results (`:obj:nt`)? object
        
    """
    for req_name in [r for r in ans.results.keys() if r.startswith('REQUEST_')]:
        if Adams.evaluate_exp(f'{req_name}.comment').lower() == comment.lower():
            return ans.results.get(req_name)

    raise AviewError(f'No request found with comment {comment}!')

class AviewError(Exception):
    """Use this error so ppt._get_log_errors will flag these errors.    
    
    """
    pass
            
if __name__ in ['aview_main', '__main__']:
    
    Adams.execute_cmd('def com echo=on')

    res_file = r'{{ res_file }}'
    reqs_to_get = {{ reqs_to_get }}
    t_min = {{ t_min }}
    t_max = {{ t_max }}
    output_file = r'{{ output_file }}'

    write_results(res_file, reqs_to_get, output_file, t_min, t_max)
    