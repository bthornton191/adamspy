"""Package for working with Adams Results
"""
import os
import subprocess
import re
import time

PPT_AFTERSTART_FILENAME = 'pptAS.cmd'
AVIEW_AFTERSTART_FILENAME = 'aviewAS.cmd'
RES_LOADED_PATTERN = '^! File Name:.*{}.*Time Steps:.*Start Time:.*Stop Time:.*(sec)$'
CMD_MODNAME_PATTERN = r'model create[ \t]+&[ \t]*\n[ \t]*model_name[ \t]*=[ \t]*\w+[ \t]*'

def launch_ppt(res_file, cmd_file=None, wait=False, timeout=30, _terminate=False):
    """Launches the Adams PostProcessor and reads in the specified results file.
    
    Parameters
    ----------
    res_file : str
        Filepath to an Adams Results file.
    cmd_file : str, optional
        Adams View command (.cmd) file. If given, this will be loaded before the results file.  This is necessary to view animations.
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
    ppt_as_filename = os.path.join(directory, AVIEW_AFTERSTART_FILENAME)

    
    # Write the pptAS file
    with open(ppt_as_filename, 'w') as fid:        
        if cmd_file is not None and os.path.isfile(os.path.join(directory, cmd_file)):
            # if the .cmd file is specified, get the model name from the cmd file
            model_name = _get_model_name_from_cmd(cmd_file)
            
            # Write the command to load the .cmd file
            fid.write(f'file command read file_name="{cmd_file}"\n')

            # Write the command to load the results file
            fid.write(f'file results read model_name={model_name} file_name="{res_file}"\n')   

            # Open the postprocess window
            fid.write(f'interface plot window open')
        
        else:
            # if the .cmd file is not specified, write the command to load the results file
            fid.write(f'file results read file_name="{res_file}"\n')    

            # Open the postprocess window
            fid.write(f'interface plot window open')
        
    # Run the postprocessor
    startupinfo = subprocess.STARTUPINFO()
    startupinfo.dwFlags |= subprocess.STARTF_USESHOWWINDOW        
    ppt_proc = subprocess.Popen('{} aview ru-s i'.format(os.environ['ADAMS_LAUNCH_COMMAND']), cwd=directory, startupinfo=startupinfo)
    
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

def _get_model_name_from_cmd(filename):
    """Gets the name of the model defined in the command file.
    
    Parameters
    ----------
    filename : str
        Filename of Adams View command (.cmd) file
    
    Returns
    -------
    str
        Name of model defined in the command file.

    """
    with open(filename, 'r') as fid:
        text = fid.read()

    mod_name_block = re.findall(CMD_MODNAME_PATTERN, text)[0]
    mod_name = mod_name_block.split('=')[-1].strip()

    return mod_name
