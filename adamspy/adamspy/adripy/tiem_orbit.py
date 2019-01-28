"""
--------------------------------------------------------------------------
Description
--------------------------------------------------------------------------
tiem_orbit is a set of python tools for manipulating MSC Adams Drill Tiem
Orbit files.
--------------------------------------------------------------------------
Author
--------------------------------------------------------------------------
Ben Thornton (ben.thornton@mscsofware.com)
Simulation Consultant - MSC Software
"""
import os
import re
import shutil
import jinja2
from .adripy import get_cdb_location, get_cdb_path, get_full_path

env = jinja2.Environment(
    loader=jinja2.PackageLoader('adamspy.adripy', 'templates'),
    autoescape=False,
    keep_trailing_newline=True,
    trim_blocks=True,
    lstrip_blocks=True
)

class DrillEvent():
    """
    Creates an object with all data necessary to write a drill event.  Once the DrillEvent is instanced
    ramp parameters must be defined before the DrillEvent is written to an event file.  
    
    All parameters in the event file can be specified when the DrillEvent is instanced 
    using **kwargs or they can be set later using: 
        
        DrillEvent.parameters[parameter] = value    
    """

    SCALAR_PARAMETERS = [
        'File_Type',
        'Units',
        'File_Version',
        'Event_Name',
        'Drive_Type',
        'Measurement_Tool',
        'Start_Depth',
        'Off_Bottom',
        'Initial_Drive_Torque',
        'Motor_Type',
        'Filter_Time_Constant',
        'Motor_Bend_Start',
        'Motor_Bend_Ramp',
        'Mud_Density',
        'Impact_Damping_Penetration',
        'Impact_Exponent',
        'MWD_Pulsing',
        'NperRev',
        'N',
        'S_threshold',
        'C_hi',
        'Plotting_4D',
        'Start_Time',
        'End_Time',
        'Plotting_Interval',
        'Start_Distance',
        'End_Distance'
    ]
    DEFAULT_PARAMETER_SCALARS = {
        'File_Type': 'event',
        'File_Version': 1.0,
        'Units': 'Imperial',
        'Drive_Type': 'WITH_MOTOR',
        'Measurement_Tool': 'TOS',
        'Initial_Drive_Torque': 0,
        'Motor_Type': '3D',
        'Filter_Time_Constant': 0.05,
        'Motor_Bend_Start': 1.0,
        'Motor_Bend_Ramp': 9.0,
        'Mud_Density': 75,
        'Impact_Damping_Penetration': 0.005,
        'Impact_Exponent': 1.05,
        'MWD_Pulsing': 'On',
        'NperRev': 'off',
        'N': 1,
        'S_threshold': 0.55,
        'C_hi': 1.05,
        'Plotting_4D': 'off',
        'Start_Time': 160,
        'End_Time': 200,
        'Plotting_Interval': 0.1,
        'Start_Distance': 2.0,
        'End_Distance': 100.0
    }

    ARRAY_PARAMETERS = [
        'TOP_DRIVE',
        'MOTOR',
        'PUMP_FLOW',
        'WOB',
        'ROP',
        'NPERREV',
        'DYNAMICS'
    ]

    DEFAULT_PARAMETER_ARRAYS = {
        'TOP_DRIVE': [[],[],[]],
        'MOTOR': [[0], [1], [1]],
        'PUMP_FLOW': [[],[],[]],
        'WOB': [[],[],[]],
        'ROP': [[],[],[]],
        'NPERREV': [[0],[1]],
        'DYNAMICS': [[], []]
    }

    CDB_TABLE = 'events.tbl'
    EXT = 'evt'

    def __init__(self, event_name, start_depth, off_bottom, **kwargs):
        self.parameters = kwargs
        self.parameters['Event_Name'] = event_name
        self.parameters['Start_Depth'] = start_depth
        self.parameters['Off_Bottom'] = off_bottom        
        
        # Apply default parameters                
        self._apply_defaults()    

        self.filename = ''

    def add_simulation_step(self, end_time, output_step_size=0.05, clear_existing=False):
        """
        Adds a dynamic simulation step.
        
        Arguments:
            end_time {float} -- End time of the step.
            output_step_size {foat} -- Output step size of the step. Defaults to 0.05.
        """
        if clear_existing:
            self.parameters['DYNAMICS'] = [[],[]]
        self.parameters['DYNAMICS'][0].append(end_time)
        self.parameters['DYNAMICS'][1].append(output_step_size)
        self.parameters['_DYNAMICS'] = zip(*self.parameters['DYNAMICS'])
    
    def add_ramp(self, parameter, start_time, ramp_duration, delta, clear_existing=False):
        """Adds a ramp to the specified ramp parameter
        
        Arguments:
            parameter {string} -- ramp parameter, options are 'TOP_DRIVE', 'WOB', 'PUMP_FLOW', of 'ROP'
            start_time {float} -- Start time of the ramp.
            ramp_duration {float} -- Duration of the ramp.
            delta {float} -- Delta of the ramp.
            clear_existing {bool} -- If true, existing ramps for the specified parameter will be deleted.
        """
        if clear_existing:
            self.parameters[parameter] = [[],[],[]]
        self.parameters[parameter][0].append(start_time)
        self.parameters[parameter][1].append(ramp_duration)
        self.parameters[parameter][2].append(delta)
        self.parameters['_' + parameter] = zip(*self.parameters[parameter])    

    def write_to_file(self, write_directory=None, filename=None, cdb=None):
        """Creates an event file from the DrillEvent object.
        
        Keyword Arguments:
            write_directory {string} -- (OPTIONAL) Directory in which to write the file. Defaults to current working directory.
            filename {string} -- (OPTIONAL) Name of the file to write.  Defaults to self.parameters['EVENT_NAME']
            cdb {string} -- (OPTIONAL) Name of the cdb in which to write the file.  This argument overrides the write_directory.
        
        Raises:
            ValueError -- Raised if not all parameters have been defined.
        """
        if not self.validate():
            raise ValueError('The parameters could not be validated.')
        
        if write_directory is None and cdb is None:
            write_directory = os.getcwd()
        elif cdb is not None:
            write_directory = get_cdb_location(cdb)        
        if filename is None:
            filename = self.parameters['Event_Name']
        if not filename.endswith(f'.{self.EXT}'):
            filename += f'.{self.EXT}'
                      
        event_template = env.get_template(f'template.{self.EXT}')

        filepath = os.path.join(write_directory, self.CDB_TABLE, filename)
        
        with open(filepath, 'w') as fid:
            fid.write(event_template.render(self.parameters))

        self.filename = get_cdb_path(filepath)

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
    
    def add_measurement_point(self, distance):
        """
        Adds a measurement point at the given distance from the bit in feet.
        
        Arguments:
            distance {float} -- Distance from the bit (in feet) at which to place a measurement point.
        """
        self.parameters['Distance_from_Bit'].append(distance)
        self.parameters['Distance_from_Bit'].sort()

    def read_from_file(self, read_directory=None, filename=None, cdb=None):
        return
        
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
        string_template_1 = env.get_template(f'template_1.{self.EXTENSION}')
        string_template_2 = env.get_template(f'template_2.{self.EXTENSION}')
        string_template_3 = env.get_template(f'template_3.{self.EXTENSION}')

        
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

class DrillTool():
    """
    Object representing an Adams Drill tool.  Instances must be generated from a tool property file.
    
    Arguments:
        {string} -- Filepath to an Adams Drill Tool property file.
    """

    TO_PARAMETER_PATTERN = re.compile('^ [_a-zA-Z]+ += +.+')
    TO_HEADER_PATTERN = re.compile('^[[_a-zA-A]+')    

    DATABASE_INFO = {
        'assembly': {'table': 'drill_strings.tbl', 'extension': 'str'},
        'drillpipe': {'table': 'drill_pipes.tbl', 'extension': 'pip'},
        'drill_collar': {'table': 'drill_collars.tbl', 'extension': 'col'},
        'hole': {'table': 'holes.tbl', 'extension': 'hol'},
        'accelerator': {'table': 'accelerators.tbl', 'extension': 'acc'},
        'stabilizer': {'table': 'stabilizers.tbl', 'extension': 'sta'},
        'short_collar': {'table': 'short_collars.tbl', 'extension': 'sco'},
        'dart': {'table': 'darts.tbl', 'extension': 'drt'},
        'jar': {'table': 'jars.tbl', 'extension': 'djr'},
        'agitator': {'table': 'agitators.tbl', 'extension': 'agi'},
        'blade_reamer': {'table': 'blade_reamers.tbl', 'extension': 'bre'},
        'crossover': {'table': 'crossovers.tbl', 'extension': 'crs'},
        'darts': {'table': 'darts.tbl', 'extension': 'drt'},
        'event': {'table': 'events.tbl', 'extension': 'evt'},
        'flex_pipe': {'table': 'flex_pipes.tbl', 'extension': 'flp'},
        'hw_pipe': {'table': 'hw_pipes.tbl', 'extension': 'hwp'},
        'pdc_bit': {'table': 'pdc_bits.tbl', 'extension': 'pdc'},
        'motor': {'table': 'motors.tbl', 'extension': 'mot'},
        'shock_sub': {'table': 'shock_subs.tbl', 'extension': 'shk'},
        'lwd_tool': {'table': 'lwd_tools.tbl', 'extension': 'lwd'},
        'mfr_tool': {'table': 'mfr_tools.tbl', 'extension': 'mfr'},
        'mwd_tool': {'table': 'mwd_tools.tbl', 'extension': 'mwd'},
        'rss': {'table': 'rss.tbl', 'extension': 'rsd'},
        'instrumentation_sub': {'table': 'instrumentation_subs.tbl', 'extension': 'ins'},
        'generic_long': {'table': 'generic_longs.tbl', 'extension': 'gnl'},
        'generic_short': {'table': 'generic_shorts.tbl', 'extension': 'gns'},
        'roller_cone_bit': {'table': 'roller_cone_bits.tbl', 'extension': 'rcb'},
        'solver_setting': {'table': 'solver_settings.tbl', 'extension': 'ssf'},
        'plot_config': {'table': 'plot_configs.tbl', 'extension': 'plt'},
        'top_drive': {'table': 'top_drives.tbl', 'extension': 'tdr'},
        'equivalent_upper_string': {'table': 'drill_pipes.tbl', 'extension': 'pip'}
    }
    
    def __init__(self, property_file):
        self.property_file = get_cdb_path(property_file)
        self.name = self._get_name()
        self.tool_type = self._get_type()    
        self.extension = self._get_extension()
        self.table = self._get_table()
    
    def rename(self, new_name, remove_original=False):
        """
        Rename the tool
        
        Arguments:
            new_name {string} -- New name for the tool.
            in_place {bool} -- If True will rename the property file.  If False will create a new one.
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
    
    def copy_file(self, directory=None, cdb=None):
        """Creates string file from the DrillString object.
        
        Keyword Arguments:
            write_directory {string} -- (OPTIONAL) Directory in which to write the file.            
            cdb {string} -- (OPTIONAL) Name of the cdb in which to write the file.  This argument overrides the directory.
        
        Raises:
            ValueError -- Raised if neither directory nor cdb are given.
            ValueError -- Raised if not all parameters have been defined.
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
        Returns the value of the specified parameter from the property file.  NOTE: get_parameter_value cannot get parameters from the UNITS block.
        
        Arguments:
            parameter_to_get {string} -- Name of the parameter to get from the property file.
        
        Returns:
            {string or float} -- Value of the specified parameter from the property file.
        """
        # Initilize return variable as None
        value = None

        # Read the property file
        filename = get_full_path(self.property_file)
        with open(filename, 'r') as fid:
            lines = fid.readlines()

        # Initialize a boolean specifying if the for loop is at a line in the [UNITS] block
        at_units_block = False
        
        for line in lines:                
            # For each line in the property file
            
            if at_units_block and self.TO_HEADER_PATTERN.match(line):
                # If end of units block reached 
                at_units_block = False

            elif line.startswith('[UNITS]'):
                # If beginning of units block reached
                at_units_block = True

            if self.TO_PARAMETER_PATTERN.match(line) and at_units_block is False:                
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
                        value = float(current_value)                    
                    break
        return value

    def modify_parameter_value(self, parameter_to_change, new_value):
        """Modifies a parameter in a DrillTool property file
        
        Arguments:
            parameter_to_change {string} -- Name of the parameter to modify.  Must match the name in the property file. (Not case sensitive). 
            new_value {float or string} -- New value of the parameter to change
        
        Keyword Arguments:
            new_filename {string} -- Filename of new property file.  If None the original property file will be overwritten (default: {None})
        """

        filename = get_full_path(self.property_file)        
            
        # Read the lines in the original file into a list
        with open(filename, 'r') as fid:
            original_lines = fid.readlines()

        # Write a new list with the correct line modified
        new_lines = []
        for line in original_lines:
                
            # For each line in the original file
            new_lines.append(line)
            if self.TO_PARAMETER_PATTERN.match(line):
                
                # If the line matches the pattern of a parameter definition
                [current_parameter, value] = line.replace('\n','').replace(' ','').split('=')
                if current_parameter.lower() == parameter_to_change.lower():

                    # If the parameter is the parameter to be changed
                    if "'" in value:

                        # If the value is a string
                        new_value = "'{}'".format(new_value)
                    
                    new_lines[-1] = ' {}  =  {}\n'.format(current_parameter, new_value)

        with open(filename, 'w') as fid:
            fid.writelines(new_lines)

    def _get_name(self):
        return self.get_parameter_value('Name')
    
    def _get_type(self):
        return self.get_parameter_value('File_Type').lower()
    
    def _get_extension(self):
        extension = self.DATABASE_INFO[self.tool_type]['extension']
        return extension

    def _get_table(self):
        table = self.DATABASE_INFO[self.tool_type]['table']
        return table


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
        ssf_template = env.get_template(f'template.{self.EXTENSION}')

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




        





                

        

        
