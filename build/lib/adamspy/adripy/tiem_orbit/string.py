"""Contains the DrillString class
"""

import os
import shutil
import re
from . import TMPLT_ENV
from .tool import DrillTool
from .utilities import read_TO_file
from ..adripy import get_cdb_location, get_cdb_path, get_full_path, TO_LENGTH_PARAM

class DrillString():
    """
    Creates an object with all data necessary to write a drill string.      
    
    Parameters in the string file can be specified when the DrillString is instanced using kwargs or they can be set later using: 
        
        >>> drill_string.parameters[parameter] = value    

    Note
    ----
    Once the DrillString is instanced tools within the string must be defined as DrillTool objects before the string is written to a string file.  Use the `add_tool()` method to add DrillTool objects to the string.

    Attributes
    ----------
    parameters : dict
        Dictionary of parameters that make up an Adams Drill string and would be found in an Adams Drill string file (.str).  The keys of the dictionary are the parameter names that would be seen in the string file and the values of the dictionary are the values that would be seen in the string file.
    tools : list
        List of tools in the drill string.  Each element of the list is a dictionary with the keys 'DrillTool', 'Name', 'Property_File', 'Measure', 'Color', 'Number_of_Joints', and 'Stack_Order'.
    top_drive : dict
        Describes the top drive.  The keys are 'DrillTool', 'Type', 'Name', and 'Property_File'.
    SCALAR_PARAMETERS : list
        A class attribute listing the names of all scalar parameters found in an Adams Drill string file.
    DEFAULT_PARAMETER_SCALARS : dict
        A class attribute defining defaults for some of the string parameters.
    ARRAY_PARAMETERS : list 
        A class attribute listing the names of all array parameters found in an Adams Drill string file.
    DEFAULT_PARAMETER_ARRAYS : dict
        A class attribute defining defaults for some of the string parameters.
    CDB_TABLE : str
        A class attribute defining the cdb table to be used for Adams Drill string files (.str)
    EXT : str
        A class attribute defining the extension of the Adams Drill string files.
    MULTI_JOINT_TOOLS : list
        A class attribute listing all the tool types that need to have `Number_of_Joints` defined in the Adams Drill string file.
    DRILL_TOOL_PATTERN : SRE_Pattern
        A :class:`_sre.SRE_Pattern` object defining the pattern of the Drill Tool block header in the string file.    
    """

    SCALAR_PARAMETERS = [
        'Units',
        'ModelName',
        'OutputName',
        'Gravity',
        'Deviation_Deg',
        'Adams_Results',
        'Adams_Requests',
        'SolverDLL',
        'Hole_Property_File',
        'Contact_Method',
        'Cyl_Drag_Coeff',
        'Hole_Color',
        'Event_Property_File'
    ]
    DEFAULT_PARAMETER_SCALARS = {
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

    ARRAY_PARAMETERS = [
        'Distance_from_Bit'
    ]

    DEFAULT_PARAMETER_ARRAYS = {
        'Distance_from_Bit': []
    }

    CDB_TABLE = 'drill_strings.tbl'
    EXT = 'str'
    MULTI_JOINT_TOOLS = ['hw_pipe', 'drillpipe', 'equivalent_upper_string']
    
    DRILL_TOOL_PATTERN = re.compile('^DRILL_TOOL_[0-9]{2}$')

    def __init__(self, string_name, hole_file, event_file, **kwargs):
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
        Adds a DrillTool object to the DrillString.
        
        Parameters
        ----------
        tool : DrillTool
            DrillTool object representing the tool to be added        
        joints : int
            Number of Joints. Note that this only applies for certain tool types. (default is 1)
        measure : bool
            If TRUE indicates that output requests should be generated for this tool.  (default is FALSE)
        stack_order : int
            If an integer is given the tool will be inserted into the string at that point. (default is None and the tool will be appended to the end)
        color : str
            The color used to render the tool in an Adams Drill animation. (default is 'Default')
        """
        # Check that the group_name argument is givn
        if drill_tool.tool_type.lower() in self.MULTI_JOINT_TOOLS and group_name is None:
            raise ValueError('group_name is required for tools of type {}.'.format('{}'.format(self.MULTI_JOINT_TOOLS)[1:-1].replace("'",'')))
        
        if drill_tool.tool_type.lower() != 'top_drive':
            # If the tool added IS NOT a top_drive

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
            if drill_tool.tool_type.lower() in self.MULTI_JOINT_TOOLS:
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
    
    def set_pipe_joints(self, joints, equivalent=False):
        """Sets the number of joints in the upper most section of
        drill pipe. Set pipe_type='equivalent' to adjust equivalent
        upper string joints'
        
        Parameters
        ----------
            joints {int}           -- Number of physical drill 
                                      pipe joints.
            equivalent {str}       -- False for physical
                                      string. True for 
                                      equivalent upper string.
                                      Default=False
        
        Raises
        ------
            DrillStringError       -- Raised if the drill string
                                      doesn't have drill pipe 
                                      of the specified type.
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
    
    def get_tool(self, tool_type, instance='first'):
        """Returns a DrillTool object of type tool_type in the 
        DrillString object's tools list.  
        
        Parameters
        ----------
        tool_type : str
            Desired tool type.       
        
        instance : str or int
            If 'first', will take the first instance.  If 'last', will take the last instance. If an integer N is given, will take the Nth instance. (the default is 'first')
        
        Raises
        ------
        DrillStringError
            Raised if a tools of the specified type does not exist in the drill string.
        
        Returns
        -------
        DrillTool
            DrillTool object
        """
        tools_found = []
        for tool in self.tools:
            if tool['Type']==tool_type:
                if isinstance(instance,str):
                    if instance=='first':
                        return tool['DrillTool']
                    elif instance=='last':
                        tools_found.append(tool['DrillTool'])
                else:
                    if len(tools_found)==instance-1:
                        return tool['DrillTool']
                    else:
                        tools_found.append(tool['DrillTool'])

        
        # Raise an error if no tools were found
        if tools_found == []:
            raise DrillStringError(f'No tool of type {tool_type} was found!')

        if instance=='last':
            return tools_found[-1]
        
    def get_bha_length(self):
        """
        Gets the total length of the drill string defined in 
        string_file NOT including the equivalent upper string and 
        highest most physical string.
        
                        
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
        
        Arguments:
            distance {float} -- Distance from the bit (in feet) at which to place a measurement point.
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
        write_directory : str
            Directory in which to write the file. (default is None which means the string will be written to the cdb given in `cdb`.)
        cdb : str
            Name of the cdb in which to write the file.  This argument is overridden by `directory`. (default is None which means the string will be written to the directory in `directory` and will use the filename in `filename`.)  
        publish : bool
            If true, writes all the supporting files to the same cdb. (default is False.)
        
        Raises
        ------
        ValueError
            Raised if neither directory nor cdb are given.
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
                # as the Event_Name in the file
                filename = self.parameters['ModelName']
                
            else:
                # If the filename argument is passed, strip the path and the 
                # extension
                filename = os.path.split(filename)[-1].replace(f'.{self.EXT}','')
            
            # Set the filepath to the filename in the given directory
            filepath = os.path.join(directory, f'{filename}.{self.EXT}')

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
                filename = os.path.split(filename)[-1].replace(f'.{self.EXT}','')
            
            # Set the filepath to the file in the cdb
            filepath = get_full_path(os.path.join(f'<{cdb}>', self.CDB_TABLE, f'{filename}.{self.EXT}'))        

        else:
            # If neither directory nor cdb is given, raise an error
            raise ValueError('Ether directory or cdb must be passed.')
                      
        # Define templates
        string_template_1 = TMPLT_ENV.get_template(f'template_1.{self.EXT}')
        string_template_2 = TMPLT_ENV.get_template(f'template_2.{self.EXT}')
        string_template_3 = TMPLT_ENV.get_template(f'template_3.{self.EXT}')
        
        if publish is True:
            # If the string is being published, copy all the tools to the new 
            # cdb or directory
            for tool in self.tools:      
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
                fid.write(string_template_2.render(tool, Multi_Joint_Tools=self.MULTI_JOINT_TOOLS))

            # Write the top_of_string block
            fid.write(string_template_3.render(self.top_drive))
        
        return get_cdb_path(filepath)
    
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
        
        # Test that the DrillString has a top_drive defined
        if not self.top_drive:
            validated = False

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
        if not all([eus_found, ps_found, pdc_found]):
            validated = False        
            
        return validated            
    
    @classmethod
    def read_from_file(cls, filename):
        """Reads a string file and returns a DrillString object
        with DrillString.parameters based on data in the string 
        file.
        
        Arguments:
            filename {str} -- Filename of a .str file.
            
        Returns:
            {DrillString} -- DrillString object with parameters
                             from the passed string file.
        """
        # Read the TO data into a dictionary
        tiem_orbit_data = read_TO_file(get_full_path(filename))

        drill_string = cls('','','')
        
        # Extract the DrillString parameters from the TO dictionary        
        drill_string._get_params_from_TO_data(tiem_orbit_data) #pylint: disable=protected-access

        # Extract the DrillTools from the TO dictionary
        drill_string._get_tools_from_TO_data(tiem_orbit_data) #pylint: disable=protected-access

        return drill_string

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
    
    def _copy_hole_file(self, directory=None, cdb=None):
        """Copys the hole file to a new locations.  Must give directory OR cdb.
        
        Keyword Arguments:
            directory {string} -- Directory to put the copied hole file (default: {None})
            cdb {string} -- Name of cdb to put the copied hole file (default: {None})
        """
        # Check that directory or cdb was given.
        if cdb is None and directory is None:
            raise ValueError('Either directory or cdb is required!')

        # Get the hole name from the current file
        hole_name = os.path.split(self.parameters['Hole_Property_File'])[-1].replace('.' + DrillTool.DATABASE_INFO['hole']['extension'], '') + '.' + DrillTool.DATABASE_INFO['hole']['extension']

        # Set the new filename
        if cdb is not None:
            new_filename = os.path.join(get_cdb_location(cdb), DrillTool.DATABASE_INFO['hole']['table'], hole_name)
        else:
            new_filename = os.path.join(directory, hole_name)

        # Copy the file
        shutil.copyfile(get_full_path(self.parameters['Hole_Property_File']), new_filename)

        # Change the hole filename in the self.parameters dictionary
        self.parameters['Hole_Property_File'] = get_cdb_path(new_filename)
    
    def _copy_event_file(self, directory=None, cdb=None):
        """Copys the event file to a new locations.  Must give directory OR cdb.
        
        Keyword Arguments:
            directory {string} -- Directory to put the copied event file (default: {None})
            cdb {string} -- Name of cdb to put the copied event file (default: {None})
        """
        # Check that directory or cdb was given.
        if cdb is None and directory is None:
            raise ValueError('Either directory or cdb is required!')

        # Get the event name from the current file
        event_name = os.path.split(self.parameters['Event_Property_File'])[-1].replace('.' + DrillTool.DATABASE_INFO['event']['extension'], '') + '.' + DrillTool.DATABASE_INFO['event']['extension']

        # Set the new filename
        if cdb is not None:
            new_filename = os.path.join(get_cdb_location(cdb), DrillTool.DATABASE_INFO['event']['table'], event_name)
        else:
            new_filename = os.path.join(directory, event_name)

        # Copy the file
        shutil.copyfile(get_full_path(self.parameters['Event_Property_File']), new_filename)

        # Change the event filename in the self.parameters dictionary
        self.parameters['Event_Property_File'] = get_cdb_path(new_filename)
    
    def _get_tools_from_TO_data(self, tiem_orbit_data):
        """Reads the tools in the string out of a dictoinary of Tiem Orbit
        data generated by adripy.utilities.read_TO_file()
        
        Arguments:
            tiem_orbit_data {dict} -- Dictionary of Tiem Orbit data
        """
        # Add the tools
        drill_tool_blocks = [block for block in tiem_orbit_data if self.DRILL_TOOL_PATTERN.match(block)]
        for block in drill_tool_blocks:
            # For each drill tool block, create a DrillTool object
            tool = DrillTool(tiem_orbit_data[block]['property_file'])

            # Check if the tool as a number_of_joints parameter
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
        
        # Add the top drive
        top_drive = DrillTool(tiem_orbit_data['TOP_DRIVE']['property_file'])
        self.add_tool(top_drive)

    
    def _get_params_from_TO_data(self, tiem_orbit_data):
        """Reads the string parameters out of a dictoinary of Tiem Orbit
        data generated by adripy.utilities.read_TO_file()
        
        Arguments:
            tiem_orbit_data {dict} -- Dictionary of Tiem Orbit data
        
        Raises:
            ValueError -- A string parameter could not be found
        """

        for param in self.SCALAR_PARAMETERS + self.ARRAY_PARAMETERS:
            # For each string parameter initialize a found flag
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

                        if param.lower() in tiem_orbit_data[block][sub_block].lower():
                            # If the parameter is in the sub block, set the parameter and break the loop
                            self.parameters[param] = tiem_orbit_data[block][sub_block][param.lower()]
                            found = True
                            break
                    
                    if found:
                        break
            
            # Raise a value error if the parameter isn't found.
            if not found:
                raise ValueError(f'{param} not found!')

class DrillStringError(Exception):
    pass