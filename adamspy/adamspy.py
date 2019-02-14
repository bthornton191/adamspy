"""Functions for manipulating adams files and data
"""
import re

def get_simdur_from_msg(msg_file):
    """Reads an Adams message file (.msg) and returns the total duration of the simulation.
    
    Parameters
    ----------
    msg_file : str
        Filepath to an Adams message file (.msg)
    
    Raises
    ------
    RuntimeError
        Returned if no simulation end time was found in the specified message file
    
    Returns
    -------
    float
        Total duration of the simulation
    """

    found = False
    with open(msg_file, 'r') as fid:
        for line in fid:
            if re.match(' *command: sim(ulate)?/dyn(anmic)?.*, *end *=.*', line.lower()):
                sim_dur = float(re.split('end *=',line.lower().replace(' ',''))[-1].split(',')[0])
                print(line)
                print(sim_dur)
                found=True
    if found:
        return sim_dur
    else:
        raise RuntimeError('No simulation end time was found in the specified message file!')


