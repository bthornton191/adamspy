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
                duration = float(re.split('end *=',line.lower().replace(' ',''))[-1].split(',')[0])
                found=True
    
    # Raise an error if no duration found
    if not found:
        raise RuntimeError('No simulation end time was found in the specified message file!')
        
    return duration

def get_simdur_from_acf(acf_file):
    """Reads an Adams command file (.acf) and returns the total duration of the simulation.
    
    Parameters
    ----------
    acf_file : str
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
    with open(acf_file, 'r') as fid:
        for line in fid:
            if re.match('sim(ulate)?/dyn(anmic)?.*, *end *=.*', line.lower()):
                duration = float(re.split('end *=',line.lower().replace(' ',''))[-1].split(',')[0])
                found=True
    
    # Raise an error if no duration found
    if not found:
        raise RuntimeError('No simulation end time was found in the specified message file!')
        
    return duration
