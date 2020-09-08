import os

import numpy as np
import Adams                            # pylint: disable=import-error

def edit_results(file, reqs_to_edit, output_file):                             #pylint: disable=redefined-outer-name
    """Opens Adams/View, loads results files, and writes the specified results to an output file.
    
    Parameters
    ----------
    file : list
        List of results or requests filenames
    reqs_to_edit : dict
        Dictionary of results to edit.  Should include time in the root dictionary.

    """        
    # Load Results    
    if os.path.exists(os.path.splitext(file)[0] + '.adm'):
        Adams.execute_cmd('file adams_data_set  read file_name="{}"'.format(os.path.splitext(file)[0] + '.adm'))
        Adams.execute_cmd('file analysis read file_name="{}" model_name={}'.format(file, os.path.splitext(os.path.split(file)[-1])[0]))
    else:
        Adams.execute_cmd('file analysis read file_name="{}"'.format(file))

    _mod, ans = get_mod_and_ans()

    if 'TIME' in reqs_to_edit:
        time_key = 'TIME'
    elif 'time' in reqs_to_edit:
        time_key = 'time'
    else:
        time_key = None
        
    print('----- START: DEBUG MESSAGE ----')
    print(f'time_key = {time_key}')
    print('----- STOP : DEBUG MESSAGE ----')

    if time_key is not None:
        time = ans.results.get('TIME').values
        _time_np = np.round(np.asarray(time), 10)
        i_min = np.argmax(_time_np >= reqs_to_edit[time_key][0])
        
        print('----- START: DEBUG MESSAGE ----')
        print(f'reqs_to_edit[time_key][-1] = {reqs_to_edit[time_key][-1]}')
        print('----- STOP : DEBUG MESSAGE ----')
    
        i_max = np.argmax(_time_np > reqs_to_edit[time_key][-1])

        print('----- START: DEBUG MESSAGE ----')
        print(f'i_min = {i_min}')
        print(f't_min = {time[i_min]}')
        print(f'i_max = {i_max}')
        print(f't_max = {time[i_max]}')
        print('----- STOP : DEBUG MESSAGE ----')

    for (req_to_edit, cmps_to_edit) in [(req, cmps) for req, cmps in reqs_to_edit.items() if req != time_key]:
        
        if req_to_edit not in ans.results:
            raise AviewError(f'{req_to_edit} is not a result set!')

        for cmp_to_edit, values in cmps_to_edit.items():
            if cmp_to_edit not in ans.results[req_to_edit]:
                raise AviewError(f'{cmp_to_edit} is not a component in {req_to_edit}!')
                        
            new_values = values if time_key is None else ans.results[req_to_edit][cmp_to_edit].values[:i_min] + values + ans.results[req_to_edit][cmp_to_edit].values[i_max:]
            edit_result_in_DB(req_to_edit, cmp_to_edit, new_values)

    write_edited_results(output_file)

def write_edited_results(filename):
    _mod, ans = get_mod_and_ans()
    Adams.execute_cmd(f'file results write analysis_name="{ans.name}" file_name="{filename}"')
           
def edit_result_in_DB(res : str, cmp : str, new_values):  
    _mod, ans = get_mod_and_ans()
    orig_len = len(ans.results[res][cmp].values)
    
    # Confirm that lengths are the same
    if orig_len != len(new_values):
        raise AviewError(f'Original {res}.{cmp} had {orig_len} values and you are trying to replace them with {len(new_values)} values!')

    Adams.execute_cmd(f'numeric_result component modify result_set_component_name = {res}.{cmp} values = ' + f'{new_values}'.replace('[', '',).replace(']', ''))

def get_mod_and_ans():
    # Get the model object
    mod = Adams.Models.get([mn for mn in Adams.Models][0])
    
    # Get the analysis object
    ans = mod.Analyses.get([an for an in mod.Analyses][0])
    return mod, ans

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
    reqs_to_edit = {{ reqs_to_edit }}
    output_file = r'{{ output_file }}'

    edit_results(res_file, reqs_to_edit, output_file)
    