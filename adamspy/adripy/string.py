"""A module that contains the :class:`DrillString` class
"""
import os
import re
import shutil
from . import TMPLT_ENV
from .tool import DrillTool
from .utilities import read_TO_file, get_cdb_location, get_cdb_path, get_full_path, TO_LENGTH_PARAM, isabs
from .constants import DATABASE_INFO

class DrillString():
    """
    Creates an object with all data necessary to write a drill string.      
    
    Parameters in the string file can be specified when the DrillString is instanced using kwargs or they can be set later using: 
        
        >>> drill_string.parameters[parameter] = value    

    Note
    ----
    Once the :class:`DrillString` is instanced, tools within the string must be defined as :class:`DrillTool` objects before the string is written to a string file.  Use the :meth:`add_tool()` method to add :class:`DrillTool` objects to the string.

    Attributes
    ----------
    parameters : dict
        Dictionary of parameters that make up an Adams Drill string and would be found in an Adams Drill string file (.str).  The keys of the dictionary are the parameter names that would be seen in the string file and the values of the dictionary are the values that would be seen in the string file.
    tools : list
        List of tools in the drill string.  Each element of the list is a dictionary with the keys 'DrillTool', 'Name', 'Property_File', 'Measure', 'Color', 'Number_of_Joints', and 'Stack_Order'.
    top_drive : dict
        Describes the top drive.  The keys are 'DrillTool', 'Type', 'Name', and 'Property_File'.
        
    """
    _SCALAR_PARAMETERS = [
        'Units',
        'ModelName',
        'OutputName',
        'Gravity',
        'Deviation_Deg',
        'Adams_Results',
        'Adams_Requests',
        'SolverDLL',
        'Contact_Method',
        'Cyl_Drag_Coeff',
        'Hole_Color'
    ]

    _FILENAME_PARAMETERS = [        
        'Hole_Property_File',
        'Event_Property_File'
    ]
    _DEFAULT_PARAMETER_SCALARS = {
        'Units': 'Imperial',
        'Gravity': 32.187,
        'Deviation_Deg': 0.0,
        'Adams_Results': 'animation',
        'Adams_Requests': 'on',
        'Adams_Graphics': 'off',
        'SolverDLL': 'adrill_solver',
        'Contact_Method': 'Subroutine',
        'Cyl_Drag_Coeff': 1.2,
        'Hole_Color': 'LtGray'
    }

    _ARRAY_PARAMETERS = [
        'Distance_from_Bit'
    ]

    _DEFAULT_PARAMETER_ARRAYS = {
        'Distance_from_Bit': ()
    }

    _CDB_TABLE = 'drill_strings.tbl'
    _EXT = 'str'
    _MULTI_JOINT_TOOLS = ['hw_pipe', 'drillpipe', 'equivalent_upper_string', 'drill_collar']
    
    _DRILL_TOOL_PATTERN = re.compile('^DRILL_TOOL_[0-9]{2}$')

    def __init__(self, string_name, hole_file, event_file, **kwargs):
        """Initializes the :class:`DrillString` object.
        
        Parameters
        ----------
        string_name : int
            Name of the string.
        hole_file : str
            Filename of a hole file.
        event_file : str
            Filename of an event file.
        
        """

        self.parameters = kwargs
        self.parameters['ModelName'] = string_name
        self.parameters['OutputName'] = string_name
        self.parameters['Hole_Property_File'] = get_cdb_path(hole_file)
        self.parameters['Event_Property_File'] = get_cdb_path(event_file)
                        
        self._apply_defaults()

        self.tools = []
        self.top_drive = {}

    def add_tool(self, drill_tool, joints=1, measure=False, stack_order=None, color='Default', group_name=None, equivalent=False):
        """
        Adds a :class:`DrillTool` object to the :class:`DrillString`.

        Note
        ----
        You cannot add the same :class:`DrillTool` object to the string multiple times.  If you want to add multiple instances of the same tool you must create two seperate :class:`DrillTool` objects from the same Tiem Orbit property file.
        
        Parameters
        ----------
        drill_tool : DrillTool
            :class:`DrillTool` object representing the tool to be added        
        joints : int
            Number of Joints. Note that this only applies for certain tool types. (default is 1)
        measure : bool
            If TRUE indicates that output requests should be generated for this tool.  (default is FALSE)
        stack_order : int
            If an integer is given the tool will be inserted into the string at that point. (default is None which means the tool will be appended to the end)
        color : str
            The color used to render the tool in an Adams Drill animation. (default is 'Default')
        group_name : str
            This argument is required if the tool being added is a tool that comes in multiple joints (e.g. drill_pipe).  NOTE: Tools that come in multiple joints are listed in :attr:`DrillTool._MULTI_JOINT_TOOLS`.
        eqivalent : bool
            Set this to `True` if the tool being added is drill_pipe and you want to use the equivalent upper string formulation.
            
        """
        # Check that the group_name argument is givn
        if drill_tool.tool_type.lower() in self._MULTI_JOINT_TOOLS and group_name is None:
            raise ValueError('group_name is required for tools of type {}.'.format('{}'.format(self._MULTI_JOINT_TOOLS)[1:-1].replace("'",'')))
                
        if drill_tool.tool_type.lower() != 'top_drive':
            # If the tool added IS NOT a top_drive, check that the tool is not already in the tools list
            for existing_tool in self.tools:
                if drill_tool is existing_tool:
                    raise DrillStringError('You cannot add the same DrillTool object to a DrillString multiple times!')

            # Create a dictionary describing the tool
            tool = {
                'DrillTool': drill_tool,
                'Name': None,
                'Property_File': drill_tool.property_file,
                'Measure': 'yes' if measure else 'no',
                'Color': color,
                'Number_of_Joints': joints,
                'Stack_Order': None
            }
            
            # set tool['Name'] to equivalent_upper_string if equivalent=True
            if drill_tool.tool_type.lower() == 'drillpipe' and equivalent is True:                
                tool['Type'] = 'equivalent_upper_string'
            else:
                tool['Type'] = drill_tool.tool_type

            # Set tool['Name'] equal to the group name if this is a multi joint tool
            if drill_tool.tool_type.lower() in self._MULTI_JOINT_TOOLS:
                tool['Name'] = group_name
            else:
                tool['Name'] = drill_tool.name

            # If the stack order is not given append to the end otherwise insert accordingly
            if stack_order is None:
                self.tools.append(tool)
            else:
                self.tools.insert(stack_order-1, tool)
            
            # Set Stack Orders equal to place in list
            for order, tool in enumerate(self.tools):
                tool['Stack_Order'] = order + 1

        else:
            # If the tool added IS a top_drive
            self.top_drive = {
                'DrillTool': drill_tool,
                'Type': drill_tool.tool_type,
                'Name': drill_tool.name,
                'Property_File': drill_tool.property_file
            }
        
        # This binds drill_tool.name to tool['Name'] and tool['Property_File]
        # Now if drill_tool is renamed by another processes, the tools list won't need to be updated.
        drill_tool.bind_name_to(self.tool_renamed)
    
    def set_pipe_joints(self, joints, equivalent=False):
        """Sets the number of joints in the upper most section of drill pipe. Set `equivalent=True` to adjust equivalent upper string joints.
        
        Parameters
        ----------
        joints : int
            Number of physical drill pipe joints.
        equivalent : str
            False for physical string. True for equivalent upper string. (Default is False.)
        
        Raises
        ------
        DrillStringError
            Raised if the drill string doesn't have drill pipe of the specified type.
        """
        # Check that the pipe type argument was passed correctly

        tool_type = 'equivalent_upper_string' if equivalent else 'drillpipe'

        found = False
        for tool in self.tools[::-1]:
            if tool['Type'] == tool_type:
                # set the number of joints
                tool['Number_of_Joints'] = joints
                found = True
                break

        if not found:          
            raise DrillStringError(f'There is no {tool_type} in this string!')        
    
    def get_tool(self, tool_type, index=0):
        """Returns a DrillTool object of type `tool_type` in the :class:`DrillString` object's tools list.  
        
        Parameters
        ----------
        tool_type : str
            Desired tool type.       
        
        index : int
            Index of the tool to return (the default is 0)
        
        Raises
        ------
        DrillStringError
            Raised if a tool of the specified type does not exist in the drill string.
        
        Returns
        -------
        DrillTool
            :class:`DrillTool` object
        """
        tools_found = []
        for tool in self.tools:
            # For each tool in self.tools if this tool matches the requested tool type
            if tool['Type']==tool_type:
                tools_found.append(tool['DrillTool'])

                # If the requested instance is positive and we've found enough tools to stop
                if index >= 0 and len(tools_found) == index+1:
                    break

        # Raise an error if no tools were found
        if tools_found == []:
            raise DrillStringError(f'No tool of type {tool_type} was found!')

        if index >= len(tools_found):
            n_tools_found = len(tools_found)
            raise DrillStringError(f'Not enough tools of type {tool_type} were found.  Number of tools found was {n_tools_found}.  Requested index was {index}.')

        return tools_found[index]
        
    def tool_renamed(self, renamed_tool):
        """Updates the 'name' and 'Property_File' entries in the :attr:`tools` to match `renamed_tool`.name.        

        Parameters
        ----------
        renamed_tool : DrillTool
            :class:`DrillTool` object that has been renamed and needs to have its 'Name' and 'Property_File' entries updates.
        """

        for tool in self.tools:
            if tool['DrillTool'] is renamed_tool:
                tool['Name'] = renamed_tool.name
                ext = tool['DrillTool'].extension
                tool['Property_File'] = os.path.join(os.path.split(tool['Property_File'])[0], f'{renamed_tool.name}.{ext}')
                break

    def get_bha_length(self):
        """Gets the total length of the BHA defined in string_file 
        
        Note
        ----
        The BHA is all the tools EXCEPT the equivalent upper string and highest most physical string.
                                
        Returns
        -------
        float : Cumulative length of the bha    
        """
        # Get a list of the drill pipe tools in the string
        drill_pipe_tools = [tool for tool in self.tools if tool['Type'] == 'drillpipe']

        # Initialize a list of tool lengths
        tool_lengths = []
        for tool in self.tools:        
            # for each tool in the tools list
            if tool['Type'] != 'equivalent_upper_string' and tool is not drill_pipe_tools[-1]:
                # If this isn't equivalent upper string or the last drill pipe tool
                lnth_params = TO_LENGTH_PARAM[tool['Type']]
                lengths = []
                for lnth_param in lnth_params:
                    length = tool['DrillTool'].get_parameter_value(lnth_param)
                    lengths.append(length)
                tool_length = sum(lengths)
                joints = tool['Number_of_Joints']
                tool_lengths.append(tool_length*joints)        
        
        return sum(tool_lengths)
    
    def add_measurement_point(self, distance):
        """
        Adds a measurement point at the given distance from the bit in feet.
        
        Parameters
        ----------
        distance : float
            Distance from the bit (in feet) at which to place a measurement point.
        """
        self.parameters['Distance_from_Bit'].append(distance)
        self.parameters['Distance_from_Bit'].sort()
        
    def write_to_file(self, directory=None, filename=None, cdb=None, publish=False, publish_event=False):
        """Writes a string file from the DrillString object.

        Notes
        -----
            There are no required parameters.  However, either `directory` or `cdb` must be defined.  Otherwise `write_to_file()` raises a ValueError.

            When publishing to a directory, relative paths will be used for all filenames in the string file.
        
        Parameters
        ----------
        directory : str
            Directory in which to write the file. (default is None which means the string will be written to the cdb given in `cdb`.)
        cdb : str
            Name of the cdb in which to write the file.  This argument is overridden by `directory`. (default is None which means the string will be written to the directory in `directory` and will use the filename in `filename`.)  
        publish : bool
            If True, writes all the supporting files except the event file to the same cdb or directory. (default is False.)
        publish_event : bool
            If True, writes the event file to the same cdb or directory. (default is False.)
        
        Raises
        ------
        ValueError
            Raised if neither directory nor cdb are given.
        RuntimeError
            Raised if not all parameters have been defined.
        """
        # Raise an error if the parameters can't be validated
        validation = self.validate()
        if not validation['valid']:
            raise RuntimeError('The parameters could not be validated because {}.'.format(validation['reason']))

        if directory is not None:
            # If the write_directory argument is passed
            if filename is None:
                # If the filename argument is not passed, set the filename
                # as the Event_Name in the file
                filename = self.parameters['ModelName']
                
            else:
                # If the filename argument is passed, strip the path and the 
                # extension
                filename = os.path.split(filename)[-1].replace(f'.{self._EXT}','')
            
            # Set the filepath to the filename in the given directory
            filepath = os.path.join(directory, f'{filename}.{self._EXT}')

            # Set cdb to None to ensure that the directory argument overwrites it
            cdb = None
        
        elif cdb is not None:
            # If the write_directory argument is not passed, but the cdb
            # argument is

            if filename is None:
                # If the filename argument is not passed, set the filename
                # as the Event_Name in the file
                filename = self.parameters['ModelName']
            
            else:
                # If the filename argument is passed, strip the path and the 
                # extension
                filename = os.path.split(filename)[-1].replace(f'.{self._EXT}','')
            
            # Set the filepath to the file in the cdb
            filepath = get_full_path(os.path.join(f'<{cdb}>', self._CDB_TABLE, f'{filename}.{self._EXT}'))        

        else:
            # If neither directory nor cdb is given, raise an error
            raise ValueError('Ether directory or cdb must be passed.')
                      
        # Define templates
        string_template_1 = TMPLT_ENV.from_string(open(os.path.join(os.path.dirname(__file__), 'templates', f'template_1.{self._EXT}')).read())
        string_template_2 = TMPLT_ENV.from_string(open(os.path.join(os.path.dirname(__file__), 'templates', f'template_2.{self._EXT}')).read())
        string_template_3 = TMPLT_ENV.from_string(open(os.path.join(os.path.dirname(__file__), 'templates', f'template_3.{self._EXT}')).read())
        
        if publish is True:
            # If the string is being published, copy all the tools to the new 
            # cdb or directory
            for tool in self.tools:   

                # Copy the DrillTool object   
                tool['DrillTool'].copy_file(cdb=cdb, directory=directory)

                # Update the tool file paths in the drill_string.tools list
                if directory is not None:
                    # If publishing to a directory, use relative paths
                    tool['Property_File'] = os.path.split(tool['DrillTool'].property_file)[1]

                else:
                    # If publsihing to a cdb, use the cdb path
                    tool['Property_File'] = tool['DrillTool'].property_file
            
            # Copy the topdrive file
            self.top_drive['DrillTool'].copy_file(cdb=cdb, directory=directory)

            # Update the top drive path in the drill_string.tools list
            if directory is not None:
                # If publishing to a directory, use relative path
                self.top_drive['Property_File'] = os.path.split(self.top_drive['DrillTool'].property_file)[1]

            else:
                # If publsihing to a cdb, use the cdb path
                self.top_drive['Property_File'] = self.top_drive['DrillTool'].property_file

            # Copy the hole file to the new location
            self._copy_hole_file(cdb=cdb, directory=directory)

            if directory is not None:
                # If publishing to a direcotry, use relative path                
                self.parameters['Hole_Property_File'] = os.path.split(self.parameters['Hole_Property_File'])[1]

        if publish_event is True:
            # If the string is being published with the event file, copy the
            # event file to the new location
            self._copy_event_file(cdb=cdb, directory=directory)

            if directory is not None:
                # If publishing to a direcotry, use relative path                
                self.parameters['Event_Property_File'] = os.path.split(self.parameters['Event_Property_File'])[1]

        with open(filepath, 'w') as fid:
            # Write the top of the file
            fid.write(string_template_1.render(self.parameters))
            
            # Write the tool blocks
            for tool in self.tools:
                fid.write(string_template_2.render(tool, Multi_Joint_Tools=self._MULTI_JOINT_TOOLS))

            # Write the top_of_string block
            fid.write(string_template_3.render(self.top_drive))
        
        return get_cdb_path(filepath)
    
    @classmethod
    def read_from_file(cls, filename):
        """Reads a string file and returns a :class:`DrillString` object with `DrillString.parameters` based on data in the string file.
        
        Parameters
        ----------
        filename : str
            Filename of a string file.
            
        Returns
        -------
        DrillString
            :class:`DrillString` object with parameters from the passed string file.
        """
        drill_string = cls('','','')
        
        # Extract the DrillString parameters from the TO dictionary        
        drill_string._get_params_from_TO_data(filename) #pylint: disable=protected-access

        # Extract the DrillTools from the TO dictionary
        drill_string._get_tools_from_TO_data(filename) #pylint: disable=protected-access

        return drill_string
    
    def validate(self):
        """
        Determines if all parameters have been set.
        
        Returns
        -------
        dict
            :obj:`dict` with a `valid` key with a boolean value indicating whether the string was successfully validated and a `reason` key with a str value indicating the reason (if any) that the string was not successfully validated.
        """
        validation = {'valid': True, 'reason': ''}
        # Check that all parameters exist in the self.parameters dictionary
        for param_name in self._SCALAR_PARAMETERS + self._FILENAME_PARAMETERS:
            if param_name not in self.parameters:
                validation['valid'] = False
                validation['reason'] = 'not all string parameters have been defined'
        
        # Test that the DrillString has a top_drive defined
        if not self.top_drive:
            validation['valid'] = False
            validation['reason'] = 'the string doesn\'t have a Top Drive'

        # Check that the DrillString has ps, eus, and a pdc
        eus_found = False
        ps_found = False
        pdc_found = False
        for tool in self.tools:
            if tool['Type'].lower() == 'equivalent_upper_string':
                eus_found = True
            elif tool['Type'].lower() == 'drillpipe':
                ps_found = True
            elif tool['Type'].lower() == 'pdc_bit':
                pdc_found = True

        if not eus_found:
            validation['valid'] = False
            validation['reason'] = 'the string doesn\'t have equivalent upper string'     
        if not ps_found:
            validation['valid'] = False
            validation['reason'] = 'the string doesn\'t have physical string'                 
        if not pdc_found:
            validation['valid'] = False
            validation['reason'] = 'the string doesn\'t have a bit'     

        return validation   

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
            self.parameters[array_parameter] = {}
            self.parameters[array_parameter] = [list(tup) for tup in array]
            self.parameters['_' + array_parameter] = zip(*self.parameters[array_parameter])
    
    def _copy_hole_file(self, directory=None, cdb=None):
        """Copys the hole file to a new locations.  Must give directory OR cdb.
        
        Parameters
        ----------
        directory : str
            Directory to put the copied hole file (default is None)
        cdb : str
            Name of cdb to put the copied hole file (default is None)
        """
        # Check that directory or cdb was given.
        if cdb is None and directory is None:
            raise ValueError('Either directory or cdb is required!')

        # Get the hole name from the current file
        hole_name = os.path.split(self.parameters['Hole_Property_File'])[-1].replace('.' + DATABASE_INFO['hole']['extension'], '') + '.' + DATABASE_INFO['hole']['extension']

        # Set the new filename
        if cdb is not None:
            new_filename = os.path.join(get_cdb_location(cdb), DATABASE_INFO['hole']['table'], hole_name)
        else:
            new_filename = os.path.join(directory, hole_name)

        # Copy the file
        shutil.copyfile(get_full_path(self.parameters['Hole_Property_File']), new_filename)

        # Change the hole filename in the self.parameters dictionary
        self.parameters['Hole_Property_File'] = get_cdb_path(new_filename)
    
    def _copy_event_file(self, directory=None, cdb=None):
        """Copys the event file to a new locations.
        
        Parameters
        ----------
        directory : str
            Directory to put the copied event file (default is None)
        cdb : str
            Name of cdb to put the copied event file (default is None)
        
        Note
        ----
        Either directory or cdb must be given.
        """
        # Check that directory or cdb was given.
        if cdb is None and directory is None:
            raise ValueError('Either directory or cdb is required!')

        # Get the event name from the current file
        event_name = os.path.split(self.parameters['Event_Property_File'])[-1].replace('.' + DATABASE_INFO['event']['extension'], '') + '.' + DATABASE_INFO['event']['extension']

        # Set the new filename
        if cdb is not None:
            new_filename = os.path.join(get_cdb_location(cdb), DATABASE_INFO['event']['table'], event_name)
        else:
            new_filename = os.path.join(directory, event_name)

        # Copy the file
        shutil.copyfile(get_full_path(self.parameters['Event_Property_File']), new_filename)

        # Change the event filename in the self.parameters dictionary
        self.parameters['Event_Property_File'] = get_cdb_path(new_filename)
    
    def _get_tools_from_TO_data(self, tiem_orbit_file):
        """Reads the tools in the string out of a dictoinary of Tiem Orbit data generated by `adripy.utilities.read_TO_file()`
        
        Parameters
        ----------
        tiem_orbit_data : dict
            Dictionary of Tiem Orbit data
        """
        # Read the tiem orbit data into a dictionary
        tiem_orbit_data = read_TO_file(tiem_orbit_file)

        # -------------
        # Add the tools
        # -------------
        drill_tool_blocks = [block for block in tiem_orbit_data if self._DRILL_TOOL_PATTERN.match(block)]
        for block in drill_tool_blocks:
            # For each drill tool block, get the tool property file
            tool_file = tiem_orbit_data[block]['property_file']

            # If the tool property file is not absolute, make it absolute
            if not isabs(tool_file):
                tool_file = os.path.join(os.path.split(tiem_orbit_file)[0], os.path.normpath(tool_file))
            
            # Create a DrillTool object from the tool property file
            tool = DrillTool(tool_file)

            # Check if the tool has a number_of_joints parameter
            if 'number_of_joints' in tiem_orbit_data[block]:
                joints = tiem_orbit_data[block]['number_of_joints']
                group_name = tiem_orbit_data[block]['name']
                
            else:
                joints = 1
                group_name = None
            
            # Check if the tool is equivalent upper string
            equivalent = True if 'equivalent' in tiem_orbit_data[block]['type'].lower() else False

            # Add the tool to the tools list
            self.add_tool(tool, joints=joints, measure=tiem_orbit_data[block]['measure'], group_name=group_name, stack_order=tiem_orbit_data[block]['stack_order'], equivalent=equivalent)
        
        # -----------------
        # Add the top drive
        # -----------------
        # Get the top drive file
        top_drive_file = tiem_orbit_data['TOP_DRIVE']['property_file']

        # If the top drive property file is not absolute, make it absolute
        if not isabs(top_drive_file):
            top_drive_file = os.path.join(os.path.split(tiem_orbit_file)[0], os.path.normpath(top_drive_file))
        
        # Create a DrillTool object from the property file
        top_drive = DrillTool(top_drive_file)

        # Add the top drive to the tools list
        self.add_tool(top_drive)
    
    def _get_params_from_TO_data(self, tiem_orbit_file):
        """Reads the string parameters out of a dictoinary of Tiem Orbit data generated by `adripy.utilities.read_TO_file()`
        
        Parameters
        ----------
        tiem_orbit_file : dict
            Dictionary of Tiem Orbit data
        
        Raises
        ------
        ValueError
            A string parameter could not be found
        """
        # Read the tiem orbit data into a dictionary
        tiem_orbit_data = read_TO_file(tiem_orbit_file)
        
        for param in self._SCALAR_PARAMETERS + self._ARRAY_PARAMETERS + self._FILENAME_PARAMETERS:
            # For each string parameter initialize a found flag
            param_value = None
        
            for block in tiem_orbit_data:
                # For each block in the TO file

                if param.lower() in tiem_orbit_data[block]:
                    # If the parameter is in this block, set the parameter and break the loop
                    param_value = tiem_orbit_data[block][param.lower()]
                    break

                else:
                    # If the parameter is not in this block, find all the sub blocks 
                    # and look for the parameter inside each sub block
                    sub_blocks = [header for header in tiem_orbit_data[block] if isinstance(tiem_orbit_data[block][header], dict)]
                    
                    for sub_block in sub_blocks:
                        # For each sub_block in the block

                        if param.lower() in tiem_orbit_data[block][sub_block].lower():
                            # If the parameter is in the sub block, set the parameter and break the loop
                            param_value = tiem_orbit_data[block][sub_block][param.lower()]
                            break
                    
                    if param_value:
                        break
            
            # Raise a value error if the parameter isn't found.
            # Unless the parameter is Distance_from_Bit, then change it to []
            if param_value is None:
                if param == 'Distance_from_Bit':
                    param_value = []
                else:
                    raise ValueError(f'{param} not found!')
            
            # If the parameter is a relative filename, make it absolute
            if param in self._FILENAME_PARAMETERS and not isabs(param_value):
                param_value = os.path.join(os.path.split(get_cdb_path(tiem_orbit_file))[0], os.path.normpath(param_value))
            
            # store the parameter in the self.parameters dict
            self.parameters[param] = param_value

                

class DrillStringError(Exception):
    pass
