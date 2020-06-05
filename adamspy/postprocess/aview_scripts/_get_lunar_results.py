import os

import numpy as np
import Adams        #pylint: disable=import-error

def get_lunar_results(res_files, reqs_to_get, t_min, t_max, output_file): 

    res_dict = {}

    for i_res, res_file in enumerate(res_files):
        
        # Load Results
        Adams.execute_cmd(f'file results read file_name="{res_file}"')

        # Get the model object
        mod = Adams.Models.get([mn for mn in Adams.Models][0])
        
        # Get the analysis object
        ans = mod.Analyses.get([an for an in mod.Analyses][0])
            
        # Get time and set indices of results to export 
        time = ans.results.get('TIME').values
        _time_np = np.asarray(time)
        i_min = np.argmax(_time_np >= t_min)
        i_max = np.argmax(_time_np >= t_max)

        if i_res == 0:
            # Get a name for the output time file
            time_output_file = os.path.splitext(output_file)[0] + '_time' + os.path.splitext(output_file)[-1]

            # Write the time values
            with open(time_output_file, 'w') as fid:
                fid.write(f'{time}'.replace('[','').replace(']','').replace(' ',''))
        
        # Define first two columns of the output string
        res_dict[os.path.split(res_file)[-1]] = {}
        
        for res_name, res_comps in reqs_to_get.items():

            # Get the result object handle
            res = ans.results.get(res_name)

            for res_comp in res_comps:

                values = res.get(res_comp).values[i_min:i_max]

                full_res_name = f'{res_name}_{res_comp}'

                # Get a name for the output time file
                res_output_file = os.path.splitext(output_file)[0] + '_' + full_res_name + os.path.splitext(output_file)[-1]

                with open(res_output_file, 'w' if i_res==0 else 'a') as fid:
                    fid.write(f'{values}\n'.replace('[','').replace(']','').replace(' ',''))    

        # Delete the model and results
        mod.destroy()      

if __name__ in ['aview_main', '__main__']:
    
    Adams.execute_cmd('def com echo=on')

    res_files = {{ res_files }}
    reqs_to_get = {{ reqs_to_get }}
    t_min = {{ t_min }}
    t_max = {{ t_max }}
    output_suffix = r'{{ output_suffix }}'

    get_lunar_results(res_files, reqs_to_get, t_min, t_max, output_suffix)
    
