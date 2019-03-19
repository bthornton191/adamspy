"""Module for working with Adams Drill Hole (.hol) files
"""
import os
from . import TMPLT_ENV
from .utilities import read_TO_file, get_cdb_path, get_full_path
class DrillHole():
    _SCALAR_PARAMETERS = [
        'Hole_Name',
        'Length',
        'Mass',
        'Angle',
        'Time'
    ]

    _DEFAULT_PARAMETER_SCALARS = {
        'File_Type': 'event',
        'File_Version': 1.0,
        'Length': 'foot',
        'Mass': 'pound_mass',
        'Angle': 'degrees',
        'Time': 'seconds'
    }

    _ARRAY_PARAMETERS = [
        'Centerline',
        'Diameter',
        'Wall_Contact',
        'Wall_Friction'
    ]

    _DEFAULT_PARAMETER_ARRAYS = {
        'Centerline': ((), (), ()),
        'Diameter': ((), ()),
        'Wall_Contact': ((-1,), (1e6,), (1e3)),
        'Wall_Friction': ((), (), (), (), ())
    }
    
    _CDB_TABLE = 'holes.tbl'
    _EXT = 'hol'
    def __init__(self, hole_name, **kwargs):
        self.parameters = kwargs
        self.parameters['Hole_Name'] = hole_name
        
        self._apply_defaults()

        self.filename = ''
        
    def _apply_defaults(self):
        """
        Applies defaults from class variables
        """
        # Applies normal parameter defaults
        for scalar_parameter, value in self._DEFAULT_PARAMETER_SCALARS.items():
            if scalar_parameter not in self.parameters:
                self.parameters[scalar_parameter] = value

        # Applies defaults to all ramp parameters
        for array_parameter, array in self._DEFAULT_PARAMETER_ARRAYS.items():
            self.parameters[array_parameter] = [list(tup) for tup in array]
            self.parameters['_' + array_parameter] = zip(*self.parameters[array_parameter])

    def write_to_file(self, directory=None, filename=None, cdb=None):

        # Raise an error if the parameters can't be validated
        if not self.validate():
            raise ValueError('The parameters could not be validated.')
        
        if directory is not None:
            # If the write_directory argument is passed
            if filename is None:
                # If the filename argument is not passed, set the filename
                # as the Event_Name in the file
                filename = self.parameters['Event_Name']
                
            else:
                # If the filename argument is passed, strip the path and the 
                # extension
                filename = os.path.split(filename)[-1].replace(f'.{self._EXT}','')
            
            # Set the filepath to the filename in the given directory
            filepath = os.path.join(directory, f'{filename}.{self._EXT}')

        elif cdb is not None:
            # If the write_directory argument is not passed, but the cdb
            # argument is

            if filename is None:
                # If the filename argument is not passed, set the filename
                # as the Event_Name in the file
                filename = self.parameters['Event_Name']
            
            else:
                # If the filename argument is passed, strip the path and the 
                # extension
                filename = os.path.split(filename)[-1].replace(f'.{self._EXT}','')
            
            # Set the filepath to the file in the cdb
            filepath = get_full_path(os.path.join(f'<{cdb}>', self._CDB_TABLE, f'{filename}.{self._EXT}'))
            

        hole_template = TMPLT_ENV.from_string(open(os.path.join(os.path.dirname(__file__), 'templates', f'template.{self._EXT}')).read())
        
        with open(filepath, 'w') as fid:
            fid.write(hole_template.render(self.parameters))

        self.filename = get_cdb_path(filepath)
    
    def validate(self):
        """
        Determines if all parameters have been set
        
        Returns
        -------
        bool
            `True` if all parameters have been set. Otherwise `False`.

        """
        validated = True        
        # Check that all parameters exist in the self.parameters dictionary
        for param_name in self._SCALAR_PARAMETERS:
            if param_name not in self.parameters:
                validated = False        
        
        for param_name in self._ARRAY_PARAMETERS:
            if not self.parameters[param_name]:
                validated = False
            
        return validated    

    def modify_array(self, param_name, md_start, md_end, new_values):
        """Modifies the array parameter with key `param_name` in the range defined by `md_start` and `md_end`.
        
        Note
        ----
        Use this method to modify the following items in :attr:`DrillHole.parameters`:
        * Centerline
        * Diameter
        * Wall_Contact
        * Wall_Friction
        **DO NOT MODIFY OR SET THESE ITEMS DIRECTOY.** They will not write correctly when the :meth:`DrillHole.write_to_file` is called. 

        Example
        -------
        >>> drill_hole.parameters['Wall_Contact']
        [[0, 1000, 2000, 3000, 4000], [1.0e5, 1.0e5, 1.0e5, 1.0e6, 1.0e6], [1.0e3, 1.0e3, 1.0e3, 2.0e3, 2.0e3]]
        >>> md_start = 3000
        >>> md_end = 4000
        >>> contact = [1.0e7, 3.0e3]
        >>> drill_hole.modify_wall_contact(md_start, md_end, contact)
        >>> drill_hole.parameters['Wall_Contact']
        [[0, 1000, 2000, 3000, 4000], [1.0e5, 1.0e5, 1.0e5, 1.0e7, 1.0e7], [1.0e3, 1.0e3, 1.0e3, 3.0e3, 3.0e3]]
        
        
        Parameters
        ----------
        param_name : str
            Name of the parameter to be modified.  Must match a key in `DrillHole._ARRAY_PARAMETERS`
        md_start : float
            Start of measured depth range to be modified.
        md_end : float
            End of measured depth range to be modified.
        new_values : :obj:`list` of :obj:`float`s
            New parameter values.  The order of this list must match the order in which these parameters are listed in the table in the Adams Drill Hole (.hol) file. 
        
        """
        # Raise an error if this isn't an acceptable parameter
        if param_name not in self._ARRAY_PARAMETERS:
            raise ValueError(f'{param_name} is not a DrillHole array.')
        
        # Loop through the rows of the parameter
        for i, line in enumerate(self.parameters[f'_{param_name}']):
            # for each row

            if md_start <= line[0] <= md_end:
                # if that md for that row is withing the specified range

                for j, new_value in enumerate(new_values):
                    # For each parameter (e.g. mu_s, v_s, mu_d, v_d)
                    # Modify the value in that line
                    self.parameters[param_name][j][i] = new_value
            
            elif line > md_end:
                # If passed the specified md range, break the loop
                break
        
        # Re-zip the parameter
        self.parameters[f'_{param_name}'] = zip(*self.parameters[param_name])
    
    def set_array(self, param_name, values):
        """Sets the array parameter with the key `param_name`.
        
        Note
        ----
        Use this method to set the following items in :attr:`DrillHole.parameters`:
        * Centerline
        * Diameter
        * Wall_Contact
        * Wall_Friction
        **DO NOT MODIFY OR SET THESE ITEMS DIRECTOY.** They will not write correctly when the :meth:`DrillHole.write_to_file` is called. 
        
        Example
        -------
        >>> md = [0, 1000, 2000, 3000, 4000]
        >>> mu_s = [0.7, 0.7, 0.7, 0.8, 0.8]
        >>> v_s = [0.1, 0.1, 0.1, 0.1, 0.1]
        >>> mu_d = [0.5, 0.5, 0.5, 0.6, 0.6]
        >>> v_d = [0.2, 0.2, 0.2, 0.2, 0.2]
        >>> friction = [md, mu_s, v_s, mu_d, v_d]
        >>> drill_hole.set_array('Wall_Friction', friction)
        >>> drill_hole.parameters['Wall_Friction']
        [[0, 1000, 2000, 3000, 4000], [0.7, 0.7, 0.7, 0.8, 0.8], [0.1, 0.1, 0.1, 0.1, 0.1], [0.5, 0.5, 0.5, 0.6, 0.6], [0.2, 0.2, 0.2, 0.2, 0.2]]
        
        Parameters
        ----------
        param_name : str
            Name of the parameter to be modified.  Must match a key in `DrillHole._ARRAY_PARAMETERS`
        values : :obj:`list` of :obj:`list`s
            Parameter values.  The order of this list must match the order in which these parameters are listed in the table in the Adams Drill Hole (.hol) file.
        
        """
        self.parameters[param_name] = values
        self.parameters[f'_{param_name}'] = zip(*self.parameters[param_name])
