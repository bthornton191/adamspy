"""Contains the DrillSolverSettings class
"""

import os
from . import TMPLT_ENV
from ..adripy import get_cdb_location, get_cdb_path

class DrillSolverSettings():

    SCALAR_PARAMETERS = [
        'Integrator',
        'Formulation',
        'Corrector',
        'Error',
        'HMax',
        'Alpha',
        'Thread_Count'
    ]
    DEFAULT_PARAMETER_SCALARS = {
        'Integrator': 'HHT',
        'Formulation': 'I3',
        'Corrector': 'Modified',
        'Error': 0.00001,
        'HMax': 0.005,
        'Alpha': -0.25,
        'Thread_Count': 4
    }

    ARRAY_PARAMETERS = [
        'Funnel'
    ]

    DEFAULT_PARAMETER_ARRAYS = {
        'Funnel': [
            [
                500,
                500,
                51,
                52,
                53,
                54,
                55,
                56,
                57,
                58,
                59,
                60,
                61,
                62,
                63,
                100
            ],
            [
                0.1,
                5,
                0.5,
                0.5,
                0.5,
                0.5,
                0.5,
                0.5,
                0.5,
                0.5,
                0.5,
                0.5,
                0.5,
                0.5,
                0.5,
                0.5
            ],
            [
                0.1,
                1,
                0.3,
                0.3,
                0.2,
                0.2,
                0.1,
                0.1,
                0.05,
                0.05,
                0.01,
                0.01,
                0.005,
                0.005,
                0.005,
                0.005
            ],
            [
                0.1,
                1,
                0.3,
                0.2,
                0.2,
                0.1,
                0.1,
                0.05,
                0.05,
                0.01,
                0.01,
                0.005,
                0.005,
                0.001,
                0.0005,
                0.005
            ],
            [
                1,
                0.5,
                0.5,
                0.5,
                0.5,
                0.5,
                0.5,
                0.5,
                0.5,
                0.5,
                0.5,
                0.5,
                0.5,
                0.5,
                0.5,
                0.5
            ],
            [
                2,
                1,
                1,
                1,
                1,
                1,
                1,
                1,
                1,
                1,
                1,
                1,
                1,
                1,
                1,
                1
            ]
        ]
    }

    TABLE = 'solver_settings.tbl'
    EXTENSION = 'ssf'

    def __init__(self, name, **kwargs):
        self.name = name
        self.parameters = kwargs
        
        # Apply default parameters from Class Variable
        self._apply_defaults()
        
        # Initialize filename instance variable
        self.filename = ''

    def write_to_file(self, write_directory=None, filename=None, cdb=None):
        """Creates a solver settings file from the DrillSolverSettings object.
        
        Keyword Arguments:
            write_directory {string} -- (OPTIONAL) Directory in which to write the file. Defaults to current working directory.
            filename {string} -- (OPTIONAL) Name of the file to write.  Defaults to self.name
            cdb {string} -- (OPTIONAL) Name of the cdb in which to write the file.  This argument overrides the write_directory.
        
        Raises:
            ValueError -- Raised if not all parameters have been defined.
        """
        if not self.validate():
            raise ValueError('The parameters could not be validated.')
        
        # Determine if writing to cdb or directory
        if write_directory is None and cdb is None:
            # If neither cdb nor write_directory are given...            
            write_directory = os.getcwd()

        elif cdb is not None:
            # If cdb is given
            write_directory = os.path.join(get_cdb_location(cdb), self.TABLE)       

        # If filename not given, filename is object name
        if filename is None:            
            filename = self.name
        
        # Add extension if filename not getven with one
        if not filename.endswith(f'.{self.EXTENSION}'):
            filename += f'.{self.EXTENSION}'
        
        # Set the full filepath to the ssf file
        filepath = os.path.join(write_directory, filename)
                      
        # Get the jinja2 template for a solver settings file
        ssf_template = TMPLT_ENV.get_template(f'template.{self.EXTENSION}')

        # Write the solver settings file
        with open(filepath, 'w') as fid:
            fid.write(ssf_template.render(self.parameters))

        # Update the instance's filename attribute
        self.filename = get_cdb_path(filepath)

        # Return the name of the file that was written
        return self.filename


    def validate(self):
        """
        Determines if all parameters have been set
        
        Returns:
            Bool -- True if all parameters have been set. Otherwise False
        """
        validated = True        
        # Check that all parameters exist in the self.parameters dictionary
        for param_name in self.SCALAR_PARAMETERS:
            if param_name not in self.parameters:
                validated = False        
        
        for param_name in self.ARRAY_PARAMETERS:
            if not self.parameters[param_name]:
                validated = False
            
        return validated     

    def _apply_defaults(self):
        """
        Applies defaults from class variables
        """
        # Applies normal parameter defaults
        for scalar_parameter, value in self.DEFAULT_PARAMETER_SCALARS.items():
            if scalar_parameter not in self.parameters:
                self.parameters[scalar_parameter] = value

        # Applies defaults to all ramp parameters
        for array_parameter, array in self.DEFAULT_PARAMETER_ARRAYS.items():
            self.parameters[array_parameter] = {}
            self.parameters[array_parameter] = array
            self.parameters['_' + array_parameter] = zip(*self.parameters[array_parameter])
