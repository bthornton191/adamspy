"""Functions for manipulating adams files and data
"""
import os
import re
import subprocess
import platform

XMT_PATTERN = re.compile('\\s*file_name\\s*=\\s*"?.+\\.xmt_txt"?\\s*')

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
        raise RuntimeError('No simulation end time was found in the specified acf file!')

    return duration

def modify_xmt_path(cmd_file, new_xmt_path):
    with open(cmd_file, 'r') as fid_in, open(cmd_file.replace('.cmd', '.tmp'), 'w') as fid_out:
        for line in fid_in:
            if XMT_PATTERN.match(line) is None:
                fid_out.write(line)
            else:
                line_parts = line.split('"')
                fid_out.write('"'.join([line_parts[0], new_xmt_path, line_parts[-1]]))
                original_path = line_parts[1]
    os.remove(cmd_file)
    os.rename(cmd_file.replace('.cmd', '.tmp'), cmd_file)
    return original_path

def get_n_threads(adm_file):
    """Searches `adm_file` for the NTHREADS statement and returns its value.

    Parameters
    ----------
    adm_file : str
        Path to an Adams Dataset (.adm) file

    Returns
    -------
    int
        Number of threads set `adm_file`

    """
    n_threads = 1
    with open(adm_file, 'r') as fid:
        for line in fid:

            # If at the NTHREADS statement, rewrite it
            if re.match('^,[ \\t]*nthreads[ \\t]*=[ \\t]*\\d$', line, flags=re.I):
                n_threads = int(line.split('=')[1].strip())

    return n_threads

def set_n_threads(adm_file, n_threads):
    """Changes or creates the NTHREADS option on the PREFERENCES statement in `adm_file`.

    Parameters
    ----------
    adm_file : str
        File path to an Adams Dataset (.adm) file
    n_threads : int
        Number of threads to use when running the model specified in `adm_file`

    """
    found = False
    with open(adm_file, 'r') as fid_old, open(adm_file + '.tmp', 'w') as fid_new:
        for line in fid_old:

            # If at the NTHREADS statement, rewrite it
            if re.match('^,[ \\t]*nthreads[ \\t]*=[ \\t]*\\d$', line, flags=re.I):
                fid_new.write(f', NTHREADS = {n_threads}\n')
                found = True

            # If the end is reached and the NTHREADS statement isn't found, create it
            elif re.match('^end[ \\t]*$', line, re.I) and not found:
                fid_new.write(f'PREFERENCES/\n, NTHREADS = {n_threads}\n!\n')
                fid_new.write(line)

            # If at a normal line, write it
            else:
                fid_new.write(line)

    # Delete the old adm file and replace with modified
    os.remove(adm_file)
    os.rename(adm_file + '.tmp', adm_file)

def solve(acf_file, wait=False, use_adams_car=False):
    """Runs Adams Solver to solve the model specified in `acf_file`

    Parameters
    ----------
    acf_file : str
        Path to an Adams Command (.acf) File

    """
    file = os.path.split(acf_file)[-1]
    cwd = os.path.dirname(acf_file) if os.path.dirname(acf_file) != '' else os.getcwd()

    if platform.system() == 'Windows':
        startupinfo = subprocess.STARTUPINFO()
        startupinfo.dwFlags |= subprocess.STARTF_USESHOWWINDOW

        if use_adams_car is False:
            command = '"{}" ru-s "{}"'.format(os.environ['ADAMS_LAUNCH_COMMAND'], file)
        else:
            command = '"{}" acar ru-solver "{}"'.format(os.environ['ADAMS_LAUNCH_COMMAND'], file)

        proc = subprocess.Popen(command, cwd=cwd, startupinfo=startupinfo)

    else:
        if use_adams_car is False:
            command = [os.environ['ADAMS_LAUNCH_COMMAND'], '-c', 'ru-standard', 'i', file, 'exit']
        else:
            command = [os.environ['ADAMS_LAUNCH_COMMAND'], '-c', 'acar', 'ru-solver', 'i', file, 'exit']

        proc = subprocess.Popen(command, cwd=cwd)

    if wait:
        proc.wait()

    return proc

class AdmFileError(Exception):
    pass
