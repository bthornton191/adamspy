"""Package for working with Adams Results
"""
import os
import subprocess
import re
import time

PPT_AFTERSTART_FILENAME = 'pptAS.cmd'
RES_LOADED_PATTERN = '^! File Name:.*{}.*Time Steps:.*Start Time:.*Stop Time:.*(sec)$'

def launch_ppt(res_file, wait=False, timeout=30, _terminate=False):
    """Launches the Adams PostProcessor and reads in the specified results file.
    
    Parameters
    ----------
    res_file : str
        Filepath to an Adams Results file.
    wait : bool, optional
        If `True`, code execution will freeze until the postprocessor is closed. (the default is False)
    timeout : float, optional
        If `wait`=`False`, code execution will freeze until the postprocessor has started loading the results file or until `timeout` secodns have elapsed.
    _terminate : bool, optional
        If `True`, the PostProcessor will close immediately.  This is for testing purposes.  
    
    """    
    # Determine the directory, relative results filename, and pptAS name
    directory, res_file = os.path.split(res_file)
    if not directory:
        directory = os.getcwd()    
    ppt_as_filename = os.path.join(directory, PPT_AFTERSTART_FILENAME)
    
    # Write the pptAS file
    with open(ppt_as_filename, 'w') as fid:
        fid.write(f'file results read file_name="{res_file}"')    
        
    # Run the postprocessor
    startupinfo = subprocess.STARTUPINFO()
    startupinfo.dwFlags |= subprocess.STARTF_USESHOWWINDOW        
    ppt_proc = subprocess.Popen('{} appt'.format(os.environ['ADAMS_LAUNCH_COMMAND']), cwd=directory, startupinfo=startupinfo)
    
    # Terminate immediately or wait for the process to complete before moving on.
    if _terminate:
        ppt_proc.terminate()
    elif wait:
        ppt_proc.wait()
    else:
        sleep_time = 0.2
        for _i in range(int(timeout/sleep_time)):
            with open(os.path.join(directory, 'ppt.log'), 'r') as fid:
                text = fid.read()
            if re.search(RES_LOADED_PATTERN.format(res_file), text, re.MULTILINE):
                break
            time.sleep(0.2)

    # Remove the pptAS file
    os.remove(ppt_as_filename)

    return directory
