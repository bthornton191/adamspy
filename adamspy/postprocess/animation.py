"""Code for generating animations automatically in Adams View

"""
import os
import re
import time
import subprocess
import platform

from . import AVIEW_AFTERSTART_FILENAME

LOG_COMPLETE_PATTERN = ' >> quit conf=no'

def create_animation(model_file : str, res_file : str, model_name : str, analysis_name : str, timeout=60):
    """Creates an animation from the given model.
    
    Parameters
    ----------
    model_file : str
        Adams View model (.cmd) file
    res_file : str
        Adams results (.res) file
    model_name : str
        Name of the model
    analysis_name : str
        Name of the analysis
    wait : bool, optional
        If `True`, code execution will freeze until the animation script completes and the postprocessor closes. (the default is True)    

    """
    # Determine the directory, relative results filename, and pptAS name
    directory, res_file = os.path.split(res_file)
    if not directory:
        directory = os.getcwd()    

    ppt_as_filename = os.path.join(directory, AVIEW_AFTERSTART_FILENAME)

    # Write aviewAS.cmd
    with open(ppt_as_filename, 'w') as fid:
        fid.write(CMD_CODE.format(**{'model_file': model_file, 'res_file': res_file, 'model_name': model_name, 'analysis_name': analysis_name, 'mov_filename': analysis_name}))

    # Set the ppt.log filename
    ppt_log_file = os.path.join(directory, 'aview.log')

    # Remove aview.log
    if os.path.exists(ppt_log_file):
        try:
            os.remove(ppt_log_file)
        except PermissionError:
            pass


    # Run the postprocessor
    if platform.system() == 'Windows':
        startupinfo = subprocess.STARTUPINFO()
        startupinfo.dwFlags |= subprocess.STARTF_USESHOWWINDOW        
        _ppt_proc = subprocess.Popen('"{}" aview ru-s i'.format(os.environ['ADAMS_LAUNCH_COMMAND']), cwd=directory, startupinfo=startupinfo)
    
    else:
        _ppt_proc = subprocess.Popen([os.environ['ADAMS_LAUNCH_COMMAND'], '-c', 'aview', 'ru-standard', 'i'], cwd=directory)
    
    # Wait for process to complete
    _wait(ppt_log_file, timeout=timeout)

    # Remove the pptAS file
    try:
        os.remove(ppt_as_filename)
    except PermissionError:
        pass

    return os.path.join(directory, analysis_name + '.avi')

def _wait(log_file, sleep_time=0.2, timeout=60):
    """Waits for the log file to write the last line of the macro
    
    Parameters
    ----------
    log_file : str
        filename of log file
    sleep_time : float, optional
        Time between checks, by default 0.2
    timeout : int, optional
        During after which to time out, by default 60

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

CMD_CODE = '''
!
def com echo=on
file command read file_name = "{model_file}"
file results read model_name = {model_name} file_name = "{res_file}" 
interface plot window open
interface window undisplay window = .gui.main
!
!
interface plot window page_display page=.gui.ppt_main.sash1.sash2.gfx.page_1
!****** These commands create the animation movie file.
! !
 if cond=("animation" !="")
   interface plot window set_mode mode=Animation
 else
   interface plot window set_mode=plotting
 end

 interface plot window load_view analysis=.{model_name}.{analysis_name}

 color modify &
   color=Background &
   red=1.0 &
   green=1.0 &
   blue=1.0
 !
 view manage orient view=iso up_axis=(.MDI.up_axis) forward_axis=(.MDI.forward_axis)
 view zoom auto=on
!
 animation modify increment=10 animation_name=.animation_1
 animation record start image_type = avi avi_compression = yes avi_frames_per_sec = 10 image_prefix = "{mov_filename}.avi" avi_keyframe_every = 500 avi_quality = 75
 defaults animation_settings loop=play_once
 animation play page_name=.gui.ppt_main.sash1.sash2.gfx.page_1
 animation record stop 
!

quit conf=no
'''
