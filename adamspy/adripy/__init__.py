"""adripy is a set of python tools for manipulating MSC Adams Drill files and data.
"""
#pylint: disable=wrong-import-position
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
