"""Contains the DrillSolverSettings class
"""
import os
import copy
import thornpy
from . import TMPLT_ENV
from .utilities import read_TO_file, get_cdb_path, get_full_path

class DrillSolverSettings():
    """Creates an object with all data necessary to write an Adams Drill solver settings (.ssf) file. 
    
    Note
    ----
    The static funnel is stored as a :obj:`list` of :obj:`list`s in the 'Funnel' entry of the :attr:`parameters` attribute.  

    Examples
    --------
    This example reads a :class:`DrillSolverSettings` object from a file and prints `Maxit` from all the steps in the static funnel.

    >>> ssf = DrillSolverSettings.read_from_file('example.ssf')
    >>> maxit = ssf.parameters['Funnel'][0]
    >>> print(maxit)
    [500, 500, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 100]

    Attributes
    ----------
    name : str
        Name of the solver settings object
    parameters : dict
        Dictionary of parameters that make up an Adams Drill solver settings and would be found in an Adams Drill solver settings file (.ssf).  The keys of the dictionary are the parameter names that would be seen in the string file and the values of the dictionary are the values that would be seen in the string file.
    filename : str
        Name of the solver settings file (.ssf) in which these solver settings are stored.  This attribute is initially empty and is populated by the `write_to_file()` method.
    """
    

    _SCALAR_PARAMETERS = [
        'Integrator',
        'Formulation',
        'Corrector',
        'Error',
        'HMax',
        'Alpha',
        'Thread_Count'
    ]
    _DEFAULT_PARAMETER_SCALARS = {
        'Integrator': 'HHT',
        'Formulation': 'I3',
        'Corrector': 'Modified',
        'Error': 0.00001,
        'HMax': 0.005,
        'Alpha': -0.25,
        'Thread_Count': 4
    }

    _TABLE_PARAMETERS = [
        'Funnel'
    ]

    _DEFAULT_PARAMETER_TABLES = {
        'Funnel': [
            [500, 500, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 100],
            [0.1, 5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5],
            [0.1, 1, 0.3, 0.3, 0.2, 0.2, 0.1, 0.1, 0.05, 0.05, 0.01, 0.01, 0.005, 0.005, 0.005, 0.005],
            [0.1, 1, 0.3, 0.2, 0.2, 0.1, 0.1, 0.05, 0.05, 0.01, 0.01, 0.005, 0.005, 0.001, 0.0005, 0.005],
            [1, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5],
            [2, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1]
        ]
    }

    _CDB_TABLE = 'solver_settings.tbl'
    _EXT = 'ssf'
    
    def __init__(self, name, **kwargs):
        """Initializes the :class:`DrillSolverSettings` object.
        
        Parameters
        ----------
        name : str
            Name of the solver settings.
        
        """

        self.name = name
        self.parameters = kwargs
        
        # Apply default parameters from Class Variable
        self._apply_defaults()
        
        # Initialize filename instance variable
        self.filename = ''

    def write_to_file(self, filename, directory=None, cdb=None):
        """Creates a solver settings file from the DrillSolverSettings object.
        
        Parameters
        ----------
        filename : str
            Name of the file to write.
        directory : str
            Directory in which to write the file. (default is None which means it is written to the current working directory.
        cdb : str
            Name of the cdb in which to write the file.  This argument overrides `directory`.
        
        Raises
        ------
        ValueError
            Raised if not all parameters have been defined.
        """
        # Raise an error if the parameters can't be validated
        if not self.validate():
            raise ValueError('The parameters could not be validated.')
        
        if directory is not None:
            # If the write_directory argument is passed, strip the filename of
            # it's path and extension
            filename = os.path.split(filename)[-1].replace(f'.{self._EXT}','')
            
            # Set the filepath to the filename in the given directory
            filepath = os.path.join(directory, filename + f'.{self._EXT}')

        elif cdb is not None:
            # If the write_directory argument is not passed, but the cdb
            # argument is, strip the filename of it's path and extension
            filename = os.path.split(filename)[-1].replace(f'.{self._EXT}','')
            
            # Set the filepath to the file in the cdb
            filepath = get_full_path(os.path.join(cdb, self._CDB_TABLE, filename + f'.{self._EXT}'))

        elif filename is not None:
            # If Nothing but a filename is given, set that as the full path
            filepath = thornpy.utilities.convert_path(filename.replace(f'.{self._EXT}',''))            

        else:
            # If nothing is given, raise an error
            raise ValueError('One of the following must key work arguments must be defined: write_directory, filename, cdb')
                      
        # Get the jinja2 template for a solver settings file
        ssf_template = TMPLT_ENV.from_string(open(os.path.join(os.path.dirname(__file__), 'templates', f'template.{self._EXT}')).read())

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
        
        Returns
        -------
        bool
            True if all parameters have been set. Otherwise False.
        """
        validated = True        
        # Check that all parameters exist in the self.parameters dictionary
        for param_name in self._SCALAR_PARAMETERS:
            if param_name not in self.parameters:
                validated = False        
        
        for param_name in self._TABLE_PARAMETERS:
            if not all([elem for elem in self.parameters[param_name]]):
                validated = False
            
        return validated     
    
    @classmethod
    def read_from_file(cls, filename):
        """Reads a string file and returns a DrillString object with DrillString.parameters based on data in the string file.

        Parameters
        ----------
        filename : str
            Filename of a drill string (.str) file.
            
        Returns
        -------
        DrillSolverSettings
            :class:`DrillSolverSettings` object with parameters from the passed solver settings file.

        """
        # Read the TO data into a dictionary
        tiem_orbit_data = read_TO_file(get_full_path(filename))

        drill_solver_settings = cls('')
        
        # Extract the DrillString parameters from the TO dictionary        
        drill_solver_settings._get_params_from_TO_data(tiem_orbit_data) #pylint: disable=protected-access
        
        # Set the filename attribute
        drill_solver_settings.filename = filename
        
        return drill_solver_settings

    def _apply_defaults(self):
        """
        Applies defaults from class variables
        """
        # Applies normal parameter defaults
        for scalar_parameter, value in self._DEFAULT_PARAMETER_SCALARS.items():
            if scalar_parameter not in self.parameters:
                self.parameters[scalar_parameter] = copy.copy(value)

        # Applies defaults to all ramp parameters
        for table_parameter, table in self._DEFAULT_PARAMETER_TABLES.items():
            self.parameters[table_parameter] = {}
            self.parameters[table_parameter] = list(table)
            self.parameters['_' + table_parameter] = zip(*self.parameters[table_parameter])

    
    def _get_params_from_TO_data(self, tiem_orbit_data): #pylint: disable=invalid-name
        """Reads the solver settings parameters out of a dictoinary of Tiem Orbit data generated by :meth:`adamspy.adripy.utilities.read_TO_file`.
        
        Parameters
        ----------
        tiem_orbit_data : dict
            :obj:`dict` of Tiem Orbit data
        
        Raises
        ------
        ValueError
            A solver settings parameter could not be found
        """

        for param in self._TABLE_PARAMETERS:
            # For each parameter initialize a found flag
            found = False
            
            if param.lower() == 'funnel':
                for i, par in enumerate(['maxit', 'stability', 'error', 'imbalance', 'tlimit', 'alimit']):
                    self.parameters[param][i] = tiem_orbit_data['STATICS']['FUNNEL'][par]
                self.parameters['_' + param] = zip(*self.parameters[param])
                found = True
            
            # Raise a value error if the parameter isn't found.
            if not found:
                raise ValueError(f'{param} not found!')

        for param in self._SCALAR_PARAMETERS:
            # For each parameter initialize a found flag
            found = False

            for block in tiem_orbit_data:
                # For each block in the TO file

                if block !='STATICS' and param.lower() in tiem_orbit_data[block]:
                    # If the parameter is in this block, set the parameter and break the loop
                    self.parameters[param] = tiem_orbit_data[block][param.lower()]
                    found = True
                    break
 
                elif block != 'STATICS':
                    # If the parameter is not in this block, find all the sub blocks 
                    # and look for the parameter inside each sub block
                    sub_blocks = [header for header in tiem_orbit_data[block] if isinstance(tiem_orbit_data[block][header], dict)]
                    
                    for sub_block in sub_blocks:
                        # For each sub_block in the block

                        if param.lower() in [p.lower() for p in tiem_orbit_data[block][sub_block]]:
                            # If the parameter is in the sub block, set the parameter and break the loop
                            self.parameters[param] = tiem_orbit_data[block][sub_block][param.lower()]
                            found = True
                            break
                    
                    if found:
                        break
            
            # Raise a value error if the parameter isn't found.
            if not found:
                raise ValueError(f'{param} not found!')
