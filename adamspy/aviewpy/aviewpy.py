
from contextlib import contextmanager
import os
from pathlib import Path
from platform import system
import re
import shutil
import subprocess
from tempfile import NamedTemporaryFile, TemporaryDirectory
import time
from typing import List, Union

from ..adamspy import LOG_COMPLETE_PATTERN, get_log_errors

START_SCRIPT_NAMES: List[str] = ['aviewBS.cmd', 'aview.cmd', 'aviewAS.cmd']


def run_script(script_file: Path, cwd: Path = None, delete_log=True, timeout=300, mdi: Union[List,str]=None):
    """Runs the commands in `:arg:script_file` in an isolated Adams View session. Ignores any startup
    scripts (i.e. aviewBS.cmd, aview.cmd, aviewAS.cmd) in the working directory.

    Parameters
    ----------
    cmds : List[str]
        Commands to run (Adams View Command Language)
    cwd : Path
        Working directory
    """
    script_file = Path(script_file)
        
    if cwd is None:
        # If cwd not provided, set equal to script parent directory
        cwd = Path(script_file).parent
        delete_script = False

    elif Path(cwd) != Path(script_file).parent:
        # If cwd provided, and not equal to script parent directory, copy the script to a temporary
        # file in cwd
        with NamedTemporaryFile(mode='w', dir=cwd, suffix='.cmd', delete=False) as _fid:
            _fid.write(script_file.read_text())
            script_file = Path(_fid.name).resolve()
        
        # Flag to delete the script later
        delete_script = True
    
    else:
        # If cwd is provided **AND** it is equal to the script parent directory, just make sure
        # it's a Path object
        cwd = Path(cwd)
        delete_script = False

    # Get a unique log file name (NOTE: This also *creates* the log file in the process)
    _fid = NamedTemporaryFile(dir=cwd, suffix='.log', delete=False)
    _fid.close()
    log_file = Path(_fid.name)
    
    # Delete the file
    log_file.unlink()

    if mdi is None:
        mdi = [os.environ['ADAMS_LAUNCH_COMMAND']]
    elif isinstance(mdi, str):
        mdi = [mdi]

    with no_start_scripts(cwd):

        # Change the log file name
        (cwd / 'aviewBS.cmd').write_text(f'file log_file file_name = "{log_file.name}"\n')

        # Run the commands in Adams
        if system() == 'Windows':
            startupinfo = subprocess.STARTUPINFO()
            startupinfo.dwFlags |= subprocess.STARTF_USESHOWWINDOW
            subprocess.Popen([*mdi, 'aview', 'ru-s', 'b', script_file.name], cwd=cwd, startupinfo=startupinfo)

        else:
            subprocess.Popen([*mdi, '-c', 'aview', 'ru-standard', 'b', script_file.name, 'exit'], cwd=cwd)

        # Wait for complete
        _wait(log_file, timeout=timeout)

        # Remove temporary startup files
        for file in (f for f in (*START_SCRIPT_NAMES, 'aview.log') if (cwd / f).exists()):
            (cwd / file).unlink()

        if delete_script:
            script_file.unlink()

    log = Path(log_file).read_text()

    # Check the log file for errors
    try:
        get_log_errors(log_file)

    finally:

        # Delete the log
        if delete_log is True:
            log_file.unlink()

    return log


def run_commands(cmds: List[str], cwd: Path, delete_log=True, timeout=300, mdi: Union[List,str]=None):
    """Runs the commands in `:arg:cmds` in an isolated Adams View session. Ignores any startup
    scripts (i.e. aviewBS.cmd, aview.cmd, aviewAS.cmd) in the working directory.

    Parameters
    ----------
    cmds : List[str]
        Commands to run (Adams View Command Language)
    cwd : Path
        Working directory
    """
    # Write the commands
    with NamedTemporaryFile(dir=cwd, mode='w', suffix='.cmd', delete=False) as fid:
        fid.write('\n'.join(cmds))
        script_file = Path(fid.name)

    return run_script(script_file, cwd, delete_log=delete_log, timeout=timeout, mdi=mdi)


@contextmanager
def no_start_scripts(cwd: Path, skip: List[str] = None, preserve_log_file=True):
    """Moves all startup script files *NOT* named in `:arg:skip` to a temporary directory on entry.
    Moves them back on exit.

    Parameters
    ----------
    cwd : Path
        Current working directory
    scripts : str, optional
        Names of scripts to move. Nonexistent files are ignored, by default ['aviewBS.cmd', 'aview.cmd', 'aviewAS.cmd']
    """
    skip = skip or []
    cwd = Path(cwd)
    with TemporaryDirectory() as twd_:
        twd = Path(twd_).resolve()
        for script_name in [s for s in START_SCRIPT_NAMES if (cwd / s).is_file() and s not in skip]:
            shutil.move(cwd / script_name, twd / script_name)

        if preserve_log_file and (cwd / 'aview.log').is_file():
            shutil.move(cwd / 'aview.log', twd / 'aview.log')

        try:
            yield

        finally:
            for script_name in [s for s in START_SCRIPT_NAMES if (twd / s).is_file() and s not in skip]:
                if (cwd / script_name).is_file():
                    os.remove(cwd / script_name)
                shutil.move(twd / script_name, cwd / script_name)

            if preserve_log_file and (twd / 'aview.log').is_file():
                if (cwd / 'aview.log').is_file():
                    os.remove(cwd / 'aview.log')
                shutil.move(twd / 'aview.log', cwd / 'aview.log')


def _wait(log_file, sleep_time=0.2, timeout=300):
    """Waits for the log file to write the last line of the macro

    Parameters
    ----------
    log_file : str
        filename of log file
    sleep_time : float, optional
        Time between checks, by default 0.2
    timeout : int, optional
        During after which to time out, by default 300

    """

    for _i in range(int(timeout/sleep_time)):

        if Path(log_file).exists() is True:

            with open(log_file, 'r') as fid:
                text = fid.read()
            if re.search(LOG_COMPLETE_PATTERN, text):
                
                time.sleep(sleep_time)
                return

        time.sleep(sleep_time)
    
    raise TimeoutError(f'Process timed out before {log_file} indicated completion!')
