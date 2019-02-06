"""Classes representing adams drill objects. (Events, Strings, Stabilizers, ect.)
"""

import jinja2

TMPLT_ENV = jinja2.Environment(
    loader=jinja2.PackageLoader('adamspy.adripy', 'templates'),
    autoescape=False,
    keep_trailing_newline=True,
    trim_blocks=True,
    lstrip_blocks=True
)

from .tool import DrillTool
from .event import DrillEvent
from .string import DrillString
from .solver_settings import DrillSolverSettings
from .drillsim import DrillSim