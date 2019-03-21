"""Module for working with Adams Drill Hole (.hol) files
"""
import os
import copy
from . import TMPLT_ENV
from .utilities import read_TO_file, get_cdb_path, get_full_path
class DrillHole():
    """An object with all teh data necessary to write an Adams Drill hole (.hol) file.
    
    Parameters
    ----------
    hole_name : str
        Name of the hole object
    
    Attributes
    ----------
    parameters : dict
        Dictionary of parameters that make up an Adams Drill hole and would be found in an Adams Drill hole (.str) file.  The keys of the dictionary are the parameter names that would be seen in the hole file and the values of the dictionary are the values that would be seen in the hole file.
    filename : str
        Name of the file that the hole object was read from or last written to.    

    """
    _SCALAR_PARAMETERS = [
        'Hole_Name',
        'Length',
        'Mass',
        'Angle',
        'Time'
    ]

    _DEFAULT_PARAMETER_SCALARS = {
        'File_Type': 'hole',
        'File_Version': 1.0,
        'Length': 'foot',
        'Mass': 'pound_mass',
        'Angle': 'degrees',
        'Time': 'seconds'
    }

    _TABLE_PARAMETERS = [
        'Centerline',
        'Diameter',
        'Wall_Contact',
        'Wall_Friction'
    ]

    _DEFAULT_PARAMETER_TABLES = {
        'Centerline': ((), (), ()),
        'Diameter': ((), ()),
        'Wall_Contact': ((-1,), (1e6,), (1e3,)),
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
                self.parameters[scalar_parameter] = copy.copy(value)

        # Applies defaults to all ramp parameters
        for table_parameter, table in self._DEFAULT_PARAMETER_TABLES.items():
            self.parameters[table_parameter] = [list(tup) for tup in table]
            self.parameters['_' + table_parameter] = zip(*self.parameters[table_parameter])
    
    @classmethod
    def read_from_file(cls, filename):        
        """Reads an Adams Drill hole (.hol) file and sets :attr:`DrillHole.parameters` based on data in the file.
        
        Parameters
        ----------
        filename : str
            Filename of an Adams Drill hole (.hol) file.

        """
        # Read the TO data into a dictionary
        tiem_orbit_data = read_TO_file(get_full_path(filename))
        
        # Create an empty hole object
        hole = cls('')

        # Extract the DrillHole parameters from the TO dictionary      
        hole._get_params_from_TO_data(tiem_orbit_data) #pylint: disable=protected-access
        
        return hole

    def write_to_file(self, directory=None, filename=None, cdb=None):
        """Writes an Adams Drill hole (.hol) file from the object.
        
        Parameters
        ----------
        write_directory : str
            Directory in which to write the file. Defaults to current working directory.
        filename : str
            Name of the file to write.  Defaults to self.parameters['Hole_Name']
        cdb : str
            Name of the cdb in which to write the file.  This argument overrides the write_directory.
        
        Raises
        ------
        ValueError
            Raised if not all parameters have been defined.
            
        """
        # Raise an error if the parameters can't be validated
        if not self.validate():
            raise ValueError('The parameters could not be validated.')
        
        if directory is not None:
            # If the write_directory argument is passed
            if filename is None:
                # If the filename argument is not passed, set the filename
                # as the Hole_Name in the file
                filename = self.parameters['Hole_Name']
                
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
                # as the Hole_Name in the file
                filename = self.parameters['Hole_Name']
            
            else:
                # If the filename argument is passed, strip the path and the 
                # extension
                filename = os.path.split(filename)[-1].replace(f'.{self._EXT}','')
            
            # Set the filepath to the file in the cdb
            filepath = get_full_path(os.path.join(f'<{cdb}>', self._CDB_TABLE, f'{filename}.{self._EXT}'))
        
        elif filename is not None:
            # If the filename argument is given
            filepath = os.path.normpath(filename)
        
        else:
            # Raise an error if none of the arguments are provided
            raise ValueError('Ether directory, filename, or cdb must be passed.')            

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
        
        for param_name in self._TABLE_PARAMETERS:
            if not all([elem for elem in self.parameters[param_name]]):
                validated = False
            
        return validated    

    def modify_table(self, param_name, md_start, md_end, new_values):
        """Modifies the table parameter with key `param_name` in the range defined by `md_start` and `md_end`.
        
        Note
        ----
        Use this method to modify the following items in :attr:`DrillHole.parameters`:
        * Centerline
        * Diameter
        * Wall_Contact
        * Wall_Friction
        **DO NOT MODIFY OR SET THESE ITEMS DIRECTLY.** They will not write correctly when the :meth:`DrillHole.write_to_file` is called. 

        Example
        -------
        >>> drill_hole.parameters['Wall_Contact']
        [[0, 1000, 2000, 3000, 4000], [1.0e5, 1.0e5, 1.0e5, 1.0e6, 1.0e6], [1.0e3, 1.0e3, 1.0e3, 2.0e3, 2.0e3]]
        >>> md_start = 3000
        >>> md_end = 4000
        >>> k = 1.0e7
        >>> c = 3.0e3
        >>> contact = [k, c]
        >>> drill_hole.modify_table('Wall_Contact', md_start, md_end, contact)
        >>> drill_hole.parameters['Wall_Contact']
        [[0, 1000, 2000, 3000, 4000], [1.0e5, 1.0e5, 1.0e5, 1.0e7, 1.0e7], [1.0e3, 1.0e3, 1.0e3, 3.0e3, 3.0e3]]
        
        
        Parameters
        ----------
        param_name : str
            Name of the parameter to be modified.  Must match a key in `DrillHole._TABLE_PARAMETERS`
        md_start : float
            Start of measured depth range to be modified.
        md_end : float
            End of measured depth range to be modified.
        new_values : :obj:`list` of :obj:`float`s
            New parameter values.  The order of this list must match the order in which these parameters are listed in the table in the Adams Drill Hole (.hol) file. 
        
        """
        # Raise an error if this isn't an acceptable parameter
        if param_name not in self._TABLE_PARAMETERS:
            raise ValueError(f'{param_name} is not a DrillHole table.')
        
        # Loop through the rows of the parameter
        for i, line in enumerate(self.parameters[f'_{param_name}']):
            # for each row

            if md_start <= line[0] <= md_end:
                # if that md for that row is withing the specified range

                for j, new_value in enumerate(new_values):
                    # For each parameter (e.g. mu_s, v_s, mu_d, v_d)
                    # Modify the value in that line
                    self.parameters[param_name][j+1][i] = new_value
            
            elif line[0] > md_end:
                # If passed the specified md range, break the loop
                break
        
        # Re-zip the parameter
        self.parameters[f'_{param_name}'] = zip(*self.parameters[param_name])
    
    def set_table(self, param_name, values):
        """Sets the table parameter with the key `param_name`.
        
        Note
        ----
        Use this method to set the following items in :attr:`DrillHole.parameters`:
        * Centerline
        * Diameter
        * Wall_Contact
        * Wall_Friction
        **DO NOT MODIFY OR SET THESE ITEMS DIRECTLY.** They will not write correctly when the :meth:`DrillHole.write_to_file` is called. 
        
        Example
        -------
        >>> md = [0, 1000, 2000, 3000, 4000]
        >>> mu_s = [0.7, 0.7, 0.7, 0.8, 0.8]
        >>> v_s = [0.1, 0.1, 0.1, 0.1, 0.1]
        >>> mu_d = [0.5, 0.5, 0.5, 0.6, 0.6]
        >>> v_d = [0.2, 0.2, 0.2, 0.2, 0.2]
        >>> friction = [md, mu_s, v_s, mu_d, v_d]
        >>> drill_hole.set_table('Wall_Friction', friction)
        >>> drill_hole.parameters['Wall_Friction']
        [[0, 1000, 2000, 3000, 4000], [0.7, 0.7, 0.7, 0.8, 0.8], [0.1, 0.1, 0.1, 0.1, 0.1], [0.5, 0.5, 0.5, 0.6, 0.6], [0.2, 0.2, 0.2, 0.2, 0.2]]
        
        Parameters
        ----------
        param_name : str
            Name of the parameter to be modified.  Must match a key in `DrillHole._TABLE_PARAMETERS`
        values : :obj:`list` of :obj:`list`s
            Parameter values.  The order of this list must match the order in which these parameters are listed in the table in the Adams Drill Hole (.hol) file.
        
        """
        self.parameters[param_name] = copy.deepcopy(values)
        self.parameters[f'_{param_name}'] = zip(*self.parameters[param_name])

    def _get_params_from_TO_data(self, tiem_orbit_data):
        """Reads the hole parameters out of a dictoinary of Tiem Orbit data generated by :func:`adamspy.adripy.utilities.read_TO_file`
        
        Parameters
        ----------
        tiem_orbit_data : dict
            Dictionary of Tiem Orbit data
        
        Raises
        ------
        ValueError
            An event parameter could not be found

        """
        for param in self._SCALAR_PARAMETERS:
            # For each event parameter initialize a found flag
            found = False
        
            for block in tiem_orbit_data:
                # For each block in the TO file

                if param.lower() in tiem_orbit_data[block]:
                    # If the parameter is in this block, set the parameter and break the loop
                    self.parameters[param] = tiem_orbit_data[block][param.lower()]
                    found = True
                    break

                else:
                    # If the parameter is not in this block, find all the sub blocks 
                    # and look for the parameter inside each sub block
                    sub_blocks = [header for header in tiem_orbit_data[block] if isinstance(tiem_orbit_data[block][header], dict)]
                    
                    for sub_block in sub_blocks:
                        # For each sub_block in the block

                        if param.lower() in tiem_orbit_data[block][sub_block]:
                            # If the parameter is in the sub block, set the parameter and break the loop
                            self.parameters[param] = tiem_orbit_data[block][sub_block][param.lower()]
                            found = True
                            break
                    
                    if found:
                        break
            
            # Raise a value error if the parameter isn't found.
            if not found:
                raise ValueError(f'{param} not found!')
        
        for param in self._TABLE_PARAMETERS:
            # For each event parameter initialize a found flag
            found = False

            blocks = [header for header in tiem_orbit_data if isinstance(tiem_orbit_data[header], dict)]
        
            for block in blocks:
                # For each block in the TO file, get the sub blocks
                sub_blocks = [header for header in tiem_orbit_data[block] if isinstance(tiem_orbit_data[block][header], dict)]

                if param.upper()==block and block=='CENTERLINE':
                    # If the parameter is CENTERLINE and so is the current block
                    self.parameters[param][0] = tiem_orbit_data[block]['north']
                    self.parameters[param][1] = tiem_orbit_data[block]['east']
                    self.parameters[param][2] = tiem_orbit_data[block]['true_depth']
                    found = True
                    break

                elif param.upper()==block and block=='DIAMETER':
                    # If the parameter is DIAMETER and so is the current block
                    self.parameters[param][0] = tiem_orbit_data[block]['measured_depth']
                    self.parameters[param][1] = tiem_orbit_data[block]['diameter']                    
                    found = True
                    break

                elif param.upper()==block and block=='WALL_CONTACT':
                    # If the parameter is WALL_CONTACT and so is the current block
                    self.parameters[param][0] = tiem_orbit_data[block]['measured_depth']
                    self.parameters[param][1] = tiem_orbit_data[block]['k']                    
                    self.parameters[param][2] = tiem_orbit_data[block]['c']                    
                    found = True
                    break

                elif param.upper()==block and block=='WALL_FRICTION':
                    # If the parameter is WALL_FRICTION and so is the current block
                    self.parameters[param][0] = tiem_orbit_data[block]['measured_depth']
                    self.parameters[param][1] = tiem_orbit_data[block]['staticmu']
                    self.parameters[param][2] = tiem_orbit_data[block]['staticv']
                    self.parameters[param][3] = tiem_orbit_data[block]['dynamicmu']
                    self.parameters[param][4] = tiem_orbit_data[block]['dynamicv']
                    found = True
                    break
                
            if not found:
                raise ValueError(f'{param} not found!')
            
            self.parameters['_' + param] = zip(*self.parameters[param])
