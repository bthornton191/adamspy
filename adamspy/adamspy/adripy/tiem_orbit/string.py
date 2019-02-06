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
    Creates an object with all data necessary to write a drill string.  Once the DrillString is instanced
    tools within the string must be defined as DrillTool objects before the string is written to an string file.  
    
    All parameters in the string file can be specified when the DrillString is instanced 
    using **kwargs or they can be set later using: 
        
        DrillEvent.parameters[parameter] = value    
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

    TABLE = 'drill_strings.tbl'
    EXTENSION = 'str'
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

    def add_tool(self, drill_tool, joints=1, measure='no', stack_order=None, color='Default', group_name=None, equivalent=False):
        """
        Adds a DrillTool object to the DrillString.
        
        Arguments:
            tool {DrillTool} -- An adripy DrillTool object.
        
        Keyword Arguments:
            joints {int} -- Number of Joints (only applies for certain tool types) (default: {1})
            measure {str} -- 'on' or 'off' (default: {'no'})
            stack_order {int} -- If an integer is given the tool will be inserted into the string at that point.  Otherwise it will be appended (default: {None})
            color {str} -- The color used to render the tool in an Adams Drill animation. (default: {'Default'})
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
                'Measure': measure,
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
        
        Arguments:
        ----------
            joints {int}           -- Number of physical drill 
                                      pipe joints.
            equivalent {str}       -- False for physical
                                      string. True for 
                                      equivalent upper string.
                                      Default=False
        
        Raises:
        ----------
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
        
        Arguments:
        ----------
            tool_type {str} -- Desired tool type.
        
        Keyword Arguments:
        ----------
            instance {str or int} -- If 'first', will take the
                                     first instance.  If 'last', 
                                     will take the last instance.
                                     If an integer N is given, 
                                     will take the Nth instance. 
                                     (default: {'first'})
        
        Returns:
        ----------
            DrillTool            -- DrillTool object
        
        Raises:
        ----------
            DrillStringError     -- Raised if a tools of the
                                    specified type does not exist
                                    in the drill string.
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
            {float}:      Cumulative length of the bha    
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
        
    def write_to_file(self, directory=None, cdb=None, publish=False):
        """Creates string file from the DrillString object.
        
        Keyword Arguments:
            write_directory {string} -- (OPTIONAL) Directory in which to write the file.            
            cdb {string} -- (OPTIONAL) Name of the cdb in which to write the file.  This argument overrides the directory.
            publish {bool} -- (OPTIONAL) Writes all the supporting files to the same cdb.
        
        Raises:
            ValueError -- Raised if neither directory nor cdb are given.
            ValueError -- Raised if not all parameters have been defined.
        """
        # Check that directory or cdb was given.
        if directory is None and cdb is None:
            raise ValueError('Either directory or cdb is required!')

        # Validate the parameters
        if not self.validate():
            raise ValueError('The parameters could not be validated.')
        
        # Determine the filename for writing
        if cdb is not None:
            # If cdb was given
            filename = os.path.join(get_cdb_location(cdb), self.TABLE, self.parameters['ModelName'] + '.' +  self.EXTENSION)
        else:
            # If cdb not given and directory was given
            filename = os.path.join(directory, self.parameters['ModelName'] + '.' + self.EXTENSION)
                      
        # Define templates
        string_template_1 = TMPLT_ENV.get_template(f'template_1.{self.EXTENSION}')
        string_template_2 = TMPLT_ENV.get_template(f'template_2.{self.EXTENSION}')
        string_template_3 = TMPLT_ENV.get_template(f'template_3.{self.EXTENSION}')

        
        if publish is True:
            # If the string is being published

            # Copy all the tools to the new cdb or directory
            for tool in self.tools:      
                tool['DrillTool'].copy_file(cdb=cdb, directory=directory)
                tool['Property_File'] = tool['DrillTool'].property_file
            
            self.top_drive['DrillTool'].copy_file(cdb=cdb, directory=directory)
            self.top_drive['Property_File'] = self.top_drive['DrillTool'].property_file

            # Copy the hole and event files to the new cdb
            self._copy_hole_file(cdb=cdb, directory=directory)
            self._copy_event_file(cdb=cdb, directory=directory)

        with open(filename, 'w') as fid:
            # Write the top of the file
            fid.write(string_template_1.render(self.parameters))
            
            # Write the tool blocks
            for tool in self.tools:
                fid.write(string_template_2.render(tool, Multi_Joint_Tools=self.MULTI_JOINT_TOOLS))

            # Write the top_of_string block
            fid.write(string_template_3.render(self.top_drive))
        
        return get_cdb_path(filename)
    
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