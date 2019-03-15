"""Contains the DrillTool class
"""

import os
import shutil
from thornpy import numtype
from .utilities import TO_BLOCK_HEADER_PATTERN, TO_PARAMETER_PATTERN, get_cdb_location, get_cdb_path, get_full_path

class DrillTool():
    """
    Object representing an Adams Drill tool.  Instances must be generated from a tool property file.
    
    Attributes
    ----------
    property_file : str
        Tiem Orbit file representing the drill tool.
    name : str
        Name of the tools
    tool_type : str
        Type of the tool.
    extension : str
        Extension used for tiem orbit file
    table : str
        Name of the cdb table used for the particular tool type

    """ 
    _DATABASE_INFO = {
        'drillpipe': {'table': 'drill_pipes.tbl', 'extension': 'pip'},
        'drill_collar': {'table': 'drill_collars.tbl', 'extension': 'col'},
        'accelerator': {'table': 'accelerators.tbl', 'extension': 'acc'},
        'stabilizer': {'table': 'stabilizers.tbl', 'extension': 'sta'},
        'short_collar': {'table': 'short_collars.tbl', 'extension': 'sco'},
        'dart': {'table': 'darts.tbl', 'extension': 'drt'},
        'jar': {'table': 'jars.tbl', 'extension': 'djr'},
        'agitator': {'table': 'agitators.tbl', 'extension': 'agi'},
        'blade_reamer': {'table': 'blade_reamers.tbl', 'extension': 'bre'},
        'crossover': {'table': 'crossovers.tbl', 'extension': 'crs'},
        'darts': {'table': 'darts.tbl', 'extension': 'drt'},
        'flex_pipe': {'table': 'flex_pipes.tbl', 'extension': 'flp'},
        'hw_pipe': {'table': 'hw_pipes.tbl', 'extension': 'hwp'},
        'pdc_bit': {'table': 'pdc_bits.tbl', 'extension': 'pdc'},
        'motor': {'table': 'motors.tbl', 'extension': 'mot'},
        'shock_sub': {'table': 'shock_subs.tbl', 'extension': 'shk'},
        'lwd_tool': {'table': 'lwd_tools.tbl', 'extension': 'lwd'},
        'mfr_tool': {'table': 'mfr_tools.tbl', 'extension': 'mfr'},
        'mwd_tool': {'table': 'mwd_tools.tbl', 'extension': 'mwd'},
        'instrumentation_sub': {'table': 'instrumentation_subs.tbl', 'extension': 'ins'},
        'generic_long': {'table': 'generic_longs.tbl', 'extension': 'gnl'},
        'generic_short': {'table': 'generic_shorts.tbl', 'extension': 'gns'},
        'top_drive': {'table': 'top_drives.tbl', 'extension': 'tdr'},
        'equivalent_upper_string': {'table': 'drill_pipes.tbl', 'extension': 'pip'}
    }

    def __init__(self, property_file):
        """Initializes the `DrillTool` object.
        
        Parameters
        ----------
        property_file : str
            Tiem Orbit file representing the drill tool.

        """ 
        self._check_extension(property_file)
        self.property_file = get_cdb_path(property_file)
        self.name = self._get_name()
        self.tool_type = self._get_type()    
        self.extension = self._get_extension()
        self.table = self._get_table()        
        self._name_receivers = []

        
    
    def bind_name_to(self, name_receiver):
        """Appends :arg:`name_receiver` to :attr:`_name_receivers`.
        
        All the methods in the :arg:`name_receiver` :obj:list will be called anytime the :meth:`rename()` method is called

        Parameters
        ----------
        name_receiver : func
            Any method that takes a :class:`DrillTool`.

        """
        self._name_receivers.append(name_receiver)
    
    def rename(self, new_name, remove_original=False):
        """Renames the tool
        
        Note
        ----
        If this tool is part of a :class:`DrillString` object, the :class:`DrillString` object will be updated with the new name and property file.

        Parameters
        ----------
        new_name : str
            New name for the tool.
        remove_original : bool
            If `True` will rename the property file.  If `False` will create a new one.

        """
        # Determine the new filename
        current_filename = get_full_path(self.property_file)
        current_filepath = os.path.split(current_filename)[0]
        new_filename = os.path.join(current_filepath, f'{new_name}.{self.extension}')
        
        # Copy the file to the new location
        shutil.copyfile(current_filename, new_filename)
        self.property_file = get_cdb_path(new_filename)   

        # Modify the property file
        self.modify_parameter_value('Name', new_name)

        # Change the name variable
        self.name = new_name     
        
        if remove_original is True:
            # Delete the old property file
            os.remove(current_filename)    
                
        # NOTE: The for loop below updates the name and property file in the DrillString object
        # Run all the name receivers 
        for name_receiver in self._name_receivers:
            name_receiver(self)

    def copy_file(self, directory=None, cdb=None):
        """Copies the file to `directory` or to the appropriate table in `cdb`.
        
        Parameters
        ----------
        write_directory : str
            Directory in which to write the file. (default is None.)            
        cdb : str
            Name of the cdb in which to write the file.  This argument overrides the directory. (default is None.)
                    
        Raises
        ------
        ValueError
            Raised if neither directory nor cdb are given.
        ValueError
            Raised if not all parameters have been defined.
        
        Note
        ----
        Either `directory` or `cdb` must be given. 

        """
        # Check that directory or cdb was given.
        if directory is None and cdb is None:
            raise ValueError('Either directory or cdb is required!')
        
        # Determine the filename for writing
        if cdb is not None:
            # If cdb was given
            filename = os.path.join(get_cdb_location(cdb), self.table, f'{self.name}.{self.extension}')            
        else:
            # If cdb not given and directory was given
            filename = os.path.join(directory, f'{self.name}.{self.extension}')

        # Copy the file to the new location
        shutil.copyfile(get_full_path(self.property_file), filename)

        # Change the property_file attribute
        self.property_file = get_cdb_path(filename)
    
    def get_parameter_value(self, parameter_to_get):
        """
        Returns the value of the specified parameter from the property file.  
        
        Note
        ----
        This method cannot get parameters from the UNITS block.
        
        Parameters
        ----------
        parameter_to_get : str
            Name of the parameter to get from the property file.
        
        Returns
        -------
        :obj:`string` or :obj:`float`
            Value of the specified parameter from the property file.

        """
        # Initilize return variable as None
        found = False

        # Read the property file
        filename = get_full_path(self.property_file)
        with open(filename, 'r') as fid:
            lines = fid.readlines()

        # Initialize a boolean specifying if the for loop is at a line in the [UNITS] block
        at_units_block = False
        
        for line in lines:                
            # For each line in the property file
            
            if at_units_block and TO_BLOCK_HEADER_PATTERN.match(line):
                # If end of units block reached 
                at_units_block = False

            elif line.startswith('[UNITS]'):
                # If beginning of units block reached
                at_units_block = True

            if TO_PARAMETER_PATTERN.match(line) and at_units_block is False:                
                # If the line matches the pattern of a parameter definition

                # Split the line into parameter and value
                [current_parameter, current_value] = line.replace('\n','').replace(' ','').split('=')
                if current_parameter.lower() == parameter_to_get.lower():
                    # If the parameter on the current line is the parameter to get
                    
                    if "'" in current_value:
                        # If the value is a string
                        value = current_value.replace("'",'')
                    
                    else:
                        # If the value is a number
                        value = float(current_value) if numtype.str_is_float(current_value) else int(current_value)
                    found = True
                    break
        
        if not found:
            # If the parameter wasn't found raise an exception
            filename = self.property_file
            raise DrillToolError(f'The parameter {parameter_to_get} was not found in {filename}!')

        return value

    def modify_parameter_value(self, parameter_to_change, new_value):
        """Modifies a parameter in a :class:`DrillTool` property file.
        
        Parameters
        ----------
        parameter_to_change : str
            Name of the parameter to modify.  Must match the name in the property file. (Not case sensitive). 
        new_value : :obj:`float` or :obj:`str`
            New value of the parameter to change
        new_filename : str
            Filename of new property file.  If None the original property file will be overwritten (the default is None.)

        """
        filename = get_full_path(self.property_file)        
            
        # Read the lines in the original file into a list
        with open(filename, 'r') as fid:
            original_lines = fid.readlines()

        # Write a new list with the correct line modified
        new_lines = []
        for line in original_lines:                
            # For each line in the original file, append to new_lines
            new_lines.append(line)

            if TO_PARAMETER_PATTERN.match(line):                
                # If the line matches the pattern of a parameter definition
                [current_parameter, value] = line.replace('\n','').replace(' ','').split('=')

                if current_parameter.lower() == parameter_to_change.lower():
                    # If the parameter is the parameter to be changed

                    if "'" in value:
                        # If the value is a string, add quotes
                        new_value = "'{}'".format(new_value)
                    
                    new_lines[-1] = ' {}  =  {}\n'.format(current_parameter, new_value)

        with open(filename, 'w') as fid:
            fid.writelines(new_lines)

    def _get_name(self):
        return self.get_parameter_value('Name')
    
    def _get_type(self):
        return self.get_parameter_value('File_Type').lower()
    
    def _get_extension(self):
        extension = self._DATABASE_INFO[self.tool_type]['extension']
        return extension

    def _get_table(self):
        table = self._DATABASE_INFO[self.tool_type]['table']
        return table

    @classmethod
    def _check_extension(cls, property_file):      
        """Checks if the extension on `property_file` is in the list of supported tool file types.
        
        Parameters
        ----------
        property_file : str
            Filename of an Adams Drill property file.
        
        Raises
        ------
        DrillToolError
            Raised if the extension on `property_file` is not in the list of supported tool file types.
        
        """
        ext = os.path.splitext(property_file)[1]
        if ext not in ['.' + tool['extension'] for tool in cls._DATABASE_INFO.values()]:
            raise DrillToolError(f'The extension {ext} is not supported by the DrillTool class.')

class DrillToolError(Exception):
    pass