"""This module contains tools for extracing data from the message file.

"""
import os
import re

import pandas as pd
import numpy as np

EIG_HEADER_PATTERN = re.compile('^\\s*E I G E N V A L U E S  at time = [\\d+-\\.E]+\\s*$', flags=re.MULTILINE)
EIG_END_PATTERN = re.compile('^\\s*$', flags=re.MULTILINE)

OFFSET = 1

def get_modes(filename, output_type='dict', i_analysis=0, underdamped_only=True, sort_by_wn=True):
    """Gets the modes from an Adams Solver message file.
    
    Parameters
    ----------
    filename : str
        Name of Adams Solver message (.msg) file.
    output_type : str, optional
        If 'DataFrame', returns a pandas `:obj:pd.DataFrame` if 'dict', returns a `:obj:dict`. (Default is 'dict')
    i_analysis : int, (optional)
        If the Adams Solver message (.msg) file contains multiple eigensolutions, this specifies which one to get. (Default is 0 which takes the first analysis)

    Returns
    -------
    `:obj:pd.DataFrame` or `:obj:dict`
        Table of modes

    """
    temp_file = _write_temp_file(filename, i_analysis=i_analysis)

    data = pd.read_csv(temp_file, skiprows=1, delim_whitespace=True, index_col=0)
    os.remove(temp_file)

    data.fillna(0, inplace=True)    
    data.rename(columns={'Real(cycles/second)': 'Real', 'Imag.(cycles/second)': 'Imag'}, inplace=True)    

    data['Wn'] = np.sqrt(data['Real']**2 + data['Imag']**2)    
    data['zeta'] = -data['Real'] / data['Wn']    
    data['Wd'] = data['Wn'] * np.sqrt((1 - data['zeta']**2))
    
    if underdamped_only is True:
        # Drop the critically/overdamped modes
        data.drop(data[data['Imag']==0].index, inplace=True)

    if sort_by_wn is True:
        # Sort by Wn
        data.sort_values('Wn', inplace=True)
    
    data.reset_index(drop=False, inplace=True)
    data.rename({'Number': 'Aview Number'}, inplace=True)
    data.index.rename('Mode', inplace=True)

    if output_type.lower() == 'dict':
        data.reset_index(inplace=True)
        data = data.to_dict('list')        

    return data

def _write_temp_file(filename, i_analysis=0):

    temp_filename = os.path.splitext(filename)[0] + '.tmp'

    with open(filename, 'r') as fid, open(temp_filename, 'w') as fid_out:        

        start_line = None
        end_line = None
        counter = 0
        for i_line, line in enumerate(fid):

            if start_line is None and EIG_HEADER_PATTERN.match(line) and counter==i_analysis:
                # If we've found the eigenvalue table, 
                start_line = i_line
                fid_out.write(line.replace('+/-', '   '))
            
            elif start_line is None and EIG_HEADER_PATTERN.match(line) and counter<i_analysis:
                # If we found an eigenvalue table, but not the one we're looking for, increase the counter
                counter += 1
            
            elif start_line is not None and EIG_END_PATTERN.match(line):
                # If we've reached the first blank line since the table started, break from the loop
                end_line = i_line
                break
                
            elif start_line is not None:
                # If we're in the table, write the line
                fid_out.write(line.replace('+/-', '   '))
        
        # Raise exceptions if lines not found
        if start_line is None or end_line is None:          
            if counter > 0:
                raise ValueError(f'Only found {counter} analys' + 'is' if counter==1 else 'es' + f', but {i_analysis+1} expected!')
            else:
                raise Exception(f'No modal table found!')
    
    return temp_filename
