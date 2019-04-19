"""adripy is a set of python tools for manipulating MSC Adams Drill files and data.
"""
#pylint: disable=wrong-import-position
import os

# Test that the user config file exists
if 'ADRILL_USER_CFG' not in os.environ:
    if os.path.isfile(os.path.join(os.path.expanduser('~'), '.adrill.cfg')):
        os.environ['ADRILL_USER_CFG'] = os.path.join(os.path.expanduser('~'), '.adrill.cfg')
    else:
        raise EnvironmentError('ADRILL_USER_CFG environment variable is not set!')
        
elif not os.path.exists(os.environ['ADRILL_USER_CFG']):
    raise FileExistsError('The configuration file {} does not exist!  You must set the ADRILL_USER_CFG environment variable to an existing cfg file before importing adripy.'.format(os.environ['ADRILL_USER_CFG']))

# Test that the user shared file exists
if 'ADRILL_SHARED_CFG' not in os.environ:    
    raise EnvironmentError('ADRILL_SHARED_CFG environment variable is not set!')
elif not os.path.exists(os.environ['ADRILL_SHARED_CFG']):
    raise FileExistsError('The configuration file {} does not exist!  You must set the ADRILL_SHARED_CFG environment variable to an existing cfg file before importing adripy.'.format(os.environ['ADRILL_SHARED_CFG']))

# Test that the adams launch file exists
if 'ADAMS_LAUNCH_COMMAND' not in os.environ:
    # raise EnvironmentError('ADAMS_LAUNCH_COMMAND environment variable is not set!')
    os.environ['ADAMS_LAUNCH_COMMAND'] = os.path.join(os.environ['XDG_CACHE_HOME'], 'common', 'mdi.bat')
elif not os.path.exists(os.environ['ADAMS_LAUNCH_COMMAND']):
    raise FileExistsError('The adams launch file {} does not exist!  You must set the ADRILL_SHARED_CFG environment variable to an existing cfg file before importing adripy.'.format(os.environ['ADAMS_LAUNCH_COMMAND']))

import jinja2

TMPLT_ENV = jinja2.Environment(
    loader=jinja2.PackageLoader('adamspy.adripy', 'templates'),
    autoescape=False,
    keep_trailing_newline=True,
    trim_blocks=True,
    lstrip_blocks=True
)

from .utilities import * 
from .tool import DrillTool
from .event import DrillEvent
from .string import DrillString
from .solver_settings import DrillSolverSettings
from .drillsim import DrillSim
from .hole import DrillHole
