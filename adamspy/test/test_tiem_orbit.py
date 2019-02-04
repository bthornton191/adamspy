import unittest
import os
import glob
from test import *
os.environ['ADRILL_SHARED_CFG'] = os.path.join('C:\\', 'MSC.Software', 'Adams', '2018', 'adrill', 'adrill.cfg')
os.environ['ADRILL_USER_CFG'] = os.path.join(os.environ['USERPROFILE'], '.adrill.cfg')
os.environ['ADAMS_LAUNCH_COMMAND'] = os.path.join('C:\\', 'MSC.Software', 'Adams', '2018', 'common', 'mdi.bat')
from adamspy import adripy
from adamspy.adripy.tiem_orbit import utilities

class Test_EventFile(unittest.TestCase):
    """
    Tests that adripy can correctly write an event file
    """
    maxDiff = None
    def setUp(self):
        
        # Create a configuration file for testing
        adripy.create_cfg_file(TEST_CONFIG_FILENAME, [TEST_DATABASE_PATH])

        # Create event file object
        self.event_file = adripy.tiem_orbit.DrillEvent(TEST_CREATED_EVENT_NAME, 4000, 4)
        
        # Add ramp parameters to event file object
        self.event_file.add_ramp('PUMP_FLOW', 1, 10, 500, clear_existing=True)
        self.event_file.add_ramp('TOP_DRIVE', 10, 15, 60, clear_existing=True)
        self.event_file.add_ramp('WOB', 30, 10, 50, clear_existing=True)
        self.event_file.add_ramp('ROP', 35, 10, 100, clear_existing=True)   

        # Add simulation steps to event file object
        self.event_file.add_simulation_step(10, clear_existing=True)
        self.event_file.add_simulation_step(100)     

        # Write an event file from the event file object
        self.event_file.write_to_file(cdb=TEST_DATABASE_NAME)

    def test_read_from_file(self):
        """Tests that the parameters in the string are correct after a string is read from a file.
        """
        
        # Create an event object
        event_from_file = adripy.tiem_orbit.DrillEvent(TEST_EVENT_NAME, 3000, 3)

        # Read new parameters into the drill string object from a file
        event_from_file.read_from_file(os.path.join(f'<{TEST_DATABASE_NAME}>', 'events.tbl', TEST_EVENT_NAME + '.evt'))
        
        params = dict(event_from_file.parameters)
        params.pop('_DYNAMICS')
        params.pop('_MOTOR')
        params.pop('_NPERREV')
        params.pop('_PUMP_FLOW')
        params.pop('_ROP')
        params.pop('_TOP_DRIVE')
        params.pop('_WOB')

        self.assertDictEqual(params, TEST_EXPECTED_EVENT_TO_PARAMETERS)
    
    def test_write_event_file(self):
        """
        Tests if the event file was written correctly.
        """
        # Check content of created event file
        failures = check_file_contents(TEST_CREATED_EVENT_FILENAME, EXPECTED_EVENT_FILE_TEXT)        
            
        self.assertListEqual([], failures)

    def tearDown(self):

        # Delete test config file
        os.remove(TEST_CONFIG_FILENAME)
        os.environ['ADRILL_USER_CFG'] = os.path.join(os.environ['USERPROFILE'], '.adrill.cfg')

        # Delete the test event file
        os.remove(TEST_CREATED_EVENT_FILENAME)

class Test_DrillTool(unittest.TestCase):
    """Tests the methods in adamspy.adripy.tiem_orbit.DrillTool
    """
    TEST_STABILZIER_NAME = 'example_stabilizer'
    NEW_STABILIZER_NAME = 'modified_stabilizer'
    STABILIZER_PARAM_TO_MODIFY = 'Stabilizer_ID'
    STABILIZER_NEW_PARAM_VALUE = 0.3

    def setUp(self):
        
        # Create a test config file containing the test database
        adripy.create_cfg_file(TEST_CONFIG_FILENAME, [TEST_DATABASE_PATH])
        
        # Create a DrillTool object from a stabilizer property file
        filename = os.path.join(f'<{TEST_DATABASE_NAME}>', 'stabilizers.tbl', self.TEST_STABILZIER_NAME + '.sta')
        self.stabilizer = adripy.tiem_orbit.DrillTool(filename)
        
        # Create an identical DrillTool object that will be modified later
        self.stabilizer_to_modify = adripy.tiem_orbit.DrillTool(os.path.join(f'<{TEST_DATABASE_NAME}>', 'stabilizers.tbl', self.TEST_STABILZIER_NAME + '.sta'))
        self.stabilizer_to_modify.rename(self.NEW_STABILIZER_NAME)

    def test_stabilizer_name(self):
        """Test that DrillTool.name is correct.
        """
        self.assertEqual(self.stabilizer.name, self.TEST_STABILZIER_NAME)

    def test_stabilizer_type(self):
        """Test that DrillTool.tool_type is correct.
        """
        self.assertEqual(self.stabilizer.tool_type, 'stabilizer')

    def test_stabilizer_extension(self):
        """Test that DrillTool.extension is correct.
        """
        self.assertEqual(self.stabilizer.extension, 'sta')

    def test_stabilizer_filename(self):
        """Test that DrillTool.property_file is correct
        """
        expected_filename = os.path.join(f'<{TEST_DATABASE_NAME}>', 'stabilizers.tbl', self.TEST_STABILZIER_NAME + '.sta')
        self.assertEqual(self.stabilizer.property_file, expected_filename)        
    
    def test_get_mass_value(self):
        """Test that DrillTool.get_parameter_value returns the mass of the stabilizer and not the mass unit.
        """
        mass = self.stabilizer.get_parameter_value('Mass')
        self.assertEqual(mass, 0)
    
    def test_get_string_parameter(self):
        """Test that DrillTool.get_parameter_value can return a parameter that has a string as its value.
        """
        tool_name = self.stabilizer.get_parameter_value('Tool_Name')
        self.assertEqual(tool_name, self.TEST_STABILZIER_NAME)
    
    def test_rename_name(self):
        """Tests that DrillTool.name was is changed correctly after DrillTool.rename().
        """
        self.assertEqual(self.stabilizer_to_modify.name, self.NEW_STABILIZER_NAME)
    
    def test_rename_property_file(self):
        """Tests that DrillTool.property_file is changed correctly after DrillTool.rename().
        """
        expected_filename = os.path.join(f'<{TEST_DATABASE_NAME}>', 'stabilizers.tbl', self.NEW_STABILIZER_NAME + '.sta')
        self.assertEqual(self.stabilizer_to_modify.property_file, expected_filename)
  
    def test_modify_parameter_value(self):
        """Modify a parameter value then get the parameter value and test the expected value is returned.
        """
        self.stabilizer_to_modify.modify_parameter_value(self.STABILIZER_PARAM_TO_MODIFY, self.STABILIZER_NEW_PARAM_VALUE)
        new_value = self.stabilizer_to_modify.get_parameter_value(self.STABILIZER_PARAM_TO_MODIFY)
        self.assertEqual(new_value, self.STABILIZER_NEW_PARAM_VALUE)    

    def tearDown(self):
        # Remove the stabilizer property file that was created
        modified_stabilizer_file = os.path.join(TEST_DATABASE_PATH, 'stabilizers.tbl', self.NEW_STABILIZER_NAME + '.sta')
        os.remove(modified_stabilizer_file)

        # Delete test config file
        os.remove(TEST_CONFIG_FILENAME)
        os.environ['ADRILL_USER_CFG'] = os.path.join(os.environ['USERPROFILE'], '.adrill.cfg')

class Test_DrillString(unittest.TestCase):
    """Tests the DrillString class.
    """
    maxDiff = None
    def setUp(self):
        # Create a test config file containing the test database
        adripy.create_cfg_file(TEST_CONFIG_FILENAME, [TEST_DATABASE_PATH, TEST_NEW_DATABASE_PATH])
        
        # Create a DrillTool object representing a stabilizer
        self.pdc_bit = adripy.tiem_orbit.DrillTool(TEST_PDC_FILE)

        # Create a DrillTool object representing a stabilizer
        self.stabilizer = adripy.tiem_orbit.DrillTool(TEST_STABILIZER_FILE)

        # Create a DrillTool object representing a drill pipe
        self.drill_pipe = adripy.tiem_orbit.DrillTool(TEST_DRILLPIPE_FILE)

        # Create a DrillTool object representing EUS
        self.eus = adripy.tiem_orbit.DrillTool(TEST_EUS_FILE)
        
        # Create a DrillTool object representing a top drive
        self.top_drive = adripy.tiem_orbit.DrillTool(TEST_TOP_DRIVE_FILE)

    def test_add_tool(self):
        """Test the DrillString.add_tool() method.
        """
        # Create a DrillString object
        drill_string = adripy.tiem_orbit.DrillString(TEST_STRING_NAME, TEST_HOLE_FILE, TEST_EVENT_FILE)

        # Add the DrillTool object to the DrillString object
        drill_string.add_tool(self.stabilizer)

        # Define the first expected element in DrillString.tools
        expected_tool_dictionary = {
            'DrillTool': self.stabilizer,
            'Type': self.stabilizer.tool_type,
            'Name': self.stabilizer.name,
            'Property_File': self.stabilizer.property_file,
            'Measure': 'no',
            'Color': 'Default',
            'Number_of_Joints': 1,
            'Stack_Order': 1
        }

        self.assertEqual(drill_string.tools, [expected_tool_dictionary])  

    def test_write_string_to_database(self): 
        """Test the DrillString.write_to_file() method.
        """
        # Create a DrillString object
        drill_string = adripy.tiem_orbit.DrillString(TEST_STRING_NAME, TEST_HOLE_FILE, TEST_EVENT_FILE)

        # Add the DrillTool objects to the DrillString object
        drill_string.add_tool(self.pdc_bit, measure='yes')
        drill_string.add_tool(self.stabilizer, measure='yes')
        drill_string.add_tool(self.drill_pipe, joints=20, group_name='Upper_DP_Group')
        drill_string.add_tool(self.eus, joints=20, group_name='equivalent_pipe', equivalent=True)
        drill_string.add_tool(self.top_drive)

        # Write drill string to file
        drill_string.write_to_file(cdb=TEST_DATABASE_NAME)

        expected_string_filename = os.path.join(TEST_DATABASE_PATH, 'drill_strings.tbl', TEST_STRING_NAME + '.str')
        
        failures = check_file_contents(expected_string_filename, EXPECTED_STRING_WRITE_TEXT)

        self.assertListEqual(failures, [])

    def test_publish_string_to_new_database(self):
        """Test the DrillString.write_to_file() method with publish=True
        """
        # Create a DrillString object
        drill_string = adripy.tiem_orbit.DrillString(TEST_STRING_NAME, TEST_HOLE_FILE, TEST_EVENT_FILE)

        # Add the DrillTool objects to the DrillString object
        drill_string.add_tool(self.pdc_bit, measure='yes')
        drill_string.add_tool(self.stabilizer, measure='yes')
        drill_string.add_tool(self.drill_pipe, joints=20, group_name='Upper_DP_Group')
        drill_string.add_tool(self.eus, joints=20, group_name='equivalent_pipe', equivalent=True)
        drill_string.add_tool(self.top_drive)

        # Publish drill string to new database
        drill_string.write_to_file(cdb=TEST_NEW_DATABASE_NAME, publish=True)

        expected_string_filename = os.path.join(TEST_NEW_DATABASE_PATH, 'drill_strings.tbl', TEST_STRING_NAME + '.str')
        expected_text = EXPECTED_STRING_WRITE_TEXT.replace(TEST_DATABASE_NAME, TEST_NEW_DATABASE_NAME)
        
        failures = check_file_contents(expected_string_filename, expected_text)

        self.assertListEqual(failures, [])
    
    def test_read_string_from_file_parameters(self):
        """Tests that the parameters in the string are correct after a string is read from a file.
        """
        expected_parameters = {
            'Units': 'Imperial',
            'ModelName': 'test_string',
            'OutputName': 'test_string',
            'Gravity': 32.187,
            'Deviation_Deg': 0.0,
            'Adams_Results': 'animation',
            'Adams_Graphics': 'off',
            'Adams_Requests': 'on',
            'Distance_from_Bit': [100.0, 300.0, 500.0],
            'SolverDLL': 'adrill_solver',
            'Hole_Property_File': '<example_database>\\holes.tbl\\test_hole.hol',
            'Contact_Method': 'Subroutine',
            'Cyl_Drag_Coeff': 1.0,
            'Hole_Color': 'LtGray',
            'Event_Property_File': '<example_database>\\events.tbl\\test_event.evt'
        }
        # Create a drill string object
        drill_string_from_file = adripy.tiem_orbit.DrillString(TEST_STRING_NAME, TEST_HOLE_FILE, TEST_EVENT_FILE)

        # Read new parameters into the drill string object from a file
        drill_string_from_file.read_from_file(os.path.join(f'<{TEST_DATABASE_NAME}>', 'drill_strings.tbl', TEST_EXISTING_STRING_NAME + '.str'))
        
        # Remove some keys from the parameters dictionary
        drill_string_from_file.parameters.pop('_Distance_from_Bit')

        self.assertDictEqual(drill_string_from_file.parameters, expected_parameters)

    def test_read_string_from_file_first_tool(self):
        """Tests that the first few tools are correct after the string is read from a file
        """
        expected_tool = {
            'Name': 'test_pdc',
            'Type': 'pdc_bit',
            'Property_File': '<example_database>\\pdc_bits.tbl\\test_pdc.pdc',
            'Measure': 'yes',
            'Color': 'Default',
            'Stack_Order': 1,
            'Number_of_Joints': 1,
        }
        
        # Create a drill string object
        drill_string_from_file = adripy.tiem_orbit.DrillString(TEST_STRING_NAME, TEST_HOLE_FILE, TEST_EVENT_FILE)

        # Read new parameters into the drill string object from a file
        drill_string_from_file.read_from_file(os.path.join(f'<{TEST_DATABASE_NAME}>', 'drill_strings.tbl', TEST_EXISTING_STRING_NAME + '.str'))

        # Get the first tool
        actual_tool = drill_string_from_file.tools[0]
        
        # Remove the DrillTool key from the dictionary (for testing purposes)
        actual_tool.pop('DrillTool')

        self.assertDictEqual(actual_tool, expected_tool)

    def test_read_string_from_file_drillpipe(self):
        """Tests that the first few tools are correct after the string is read from a file
        """
        expected_tool = {
            'Name': 'test_pdc',
            'Type': 'pdc_bit',
            'Property_File': '<example_database>\\pdc_bits.tbl\\test_pdc.pdc',
            'Measure': 'yes',
            'Color': 'Default',
            'Stack_Order': 1,
            'Number_of_Joints': 1,
        }
        
        # Create a drill string object
        drill_string_from_file = adripy.tiem_orbit.DrillString(TEST_STRING_NAME, TEST_HOLE_FILE, TEST_EVENT_FILE)

        # Read new parameters into the drill string object from a file
        drill_string_from_file.read_from_file(os.path.join(f'<{TEST_DATABASE_NAME}>', 'drill_strings.tbl', TEST_EXISTING_STRING_NAME + '.str'))

        # Get the first tool
        actual_tool = drill_string_from_file.tools[0]
        
        # Remove the DrillTool key from the dictionary (for testing purposes)
        actual_tool.pop('DrillTool')

        self.assertDictEqual(actual_tool, expected_tool)

    def test_read_string_from_file_last_tool(self):
        """Tests that the first few tools are correct after the string is read from a file
        """
        expected_tool = {
            'Name': 'equivalent_pipe',
            'Type': 'equivalent_upper_string',
            'Property_File': '<example_database>\\drill_pipes.tbl\\test_eus.pip',
            'Measure': 'yes',
            'Color': 'Default',
            'Stack_Order': 18,
            'Number_of_Joints': 19,
        }
        
        # Create a drill string object
        drill_string_from_file = adripy.tiem_orbit.DrillString(TEST_STRING_NAME, TEST_HOLE_FILE, TEST_EVENT_FILE)

        # Read new parameters into the drill string object from a file
        drill_string_from_file.read_from_file(os.path.join(f'<{TEST_DATABASE_NAME}>', 'drill_strings.tbl', TEST_EXISTING_STRING_NAME + '.str'))

        # Get the first tool
        actual_tool = drill_string_from_file.tools[-1]
        
        # Remove the DrillTool key from the dictionary (for testing purposes)
        actual_tool.pop('DrillTool')

        self.assertDictEqual(actual_tool, expected_tool)

    def test_read_string_from_file_bit_object(self):
        """Test that bit object attributes are corrct after a string is read from a file
        """
        expected_property_file = '<example_database>\\pdc_bits.tbl\\test_pdc.pdc'
        expected_name = 'test_pdc'
        expected_tool_type = 'pdc_bit'
        expected_extension = 'pdc'
        expected_table = 'pdc_bits.tbl'

        # Create a drill string object
        drill_string_from_file = adripy.tiem_orbit.DrillString(TEST_STRING_NAME, TEST_HOLE_FILE, TEST_EVENT_FILE)

        # Read new parameters into the drill string object from a file
        drill_string_from_file.read_from_file(os.path.join(f'<{TEST_DATABASE_NAME}>', 'drill_strings.tbl', TEST_EXISTING_STRING_NAME + '.str'))

        # Get the first tool
        bit = drill_string_from_file.tools[0]['DrillTool']

        failures = []
        
        expected_attributes = [expected_property_file, expected_name, expected_tool_type, expected_extension, expected_table]
        actual_attributes = [bit.property_file, bit.name, bit.tool_type, bit.extension]        
        for actual, expected in zip(actual_attributes, expected_attributes):
            if actual != expected:
                failures.append('Attribute Mismatch: {}  --  {}'.format(actual, expected))       
        
        self.assertListEqual(failures,[])

    def test_read_string_from_file_drillpipe_object(self):
        """Test that bit object attributes are corrct after a string is read from a file
        """
        expected_property_file = '<example_database>\\drill_pipes.tbl\\test_eus.pip'
        expected_name = 'test_eus'
        expected_tool_type = 'drillpipe'
        expected_extension = 'pip'
        expected_table = 'drill_pipes.tbl'

        # Create a drill string object
        drill_string_from_file = adripy.tiem_orbit.DrillString(TEST_STRING_NAME, TEST_HOLE_FILE, TEST_EVENT_FILE)

        # Read new parameters into the drill string object from a file
        drill_string_from_file.read_from_file(os.path.join(f'<{TEST_DATABASE_NAME}>', 'drill_strings.tbl', TEST_EXISTING_STRING_NAME + '.str'))

        # Get the first tool
        bit = drill_string_from_file.tools[-1]['DrillTool']

        failures = []
        
        expected_attributes = [expected_property_file, expected_name, expected_tool_type, expected_extension, expected_table]
        actual_attributes = [bit.property_file, bit.name, bit.tool_type, bit.extension]        
        for actual, expected in zip(actual_attributes, expected_attributes):
            if actual != expected:
                failures.append('Attribute Mismatch: {}  --  {}'.format(actual, expected))       
        
        self.assertListEqual(failures,[])

    def test_read_string_from_file_ntools(self):
        """Tests that the number of tools is correct after a string is read from a file
        """

        expected_n_tools = 18

        # Create a drill string object
        drill_string_from_file = adripy.tiem_orbit.DrillString(TEST_STRING_NAME, TEST_HOLE_FILE, TEST_EVENT_FILE)

        # Read new parameters into the drill string object from a file
        drill_string_from_file.read_from_file(os.path.join(f'<{TEST_DATABASE_NAME}>', 'drill_strings.tbl', TEST_EXISTING_STRING_NAME + '.str'))

        actual_n_tools = len(drill_string_from_file.tools)

        self.assertEqual(actual_n_tools, expected_n_tools)

    
    def test_get_tool_first(self):
        """Tests that DrillString.get_tool() returns the correct value.
        """
        # Create a DrillString object
        drill_string = adripy.tiem_orbit.DrillString(TEST_STRING_NAME, TEST_HOLE_FILE, TEST_EVENT_FILE)

        # Add the DrillTool objects to the DrillString object
        drill_string.add_tool(self.pdc_bit, measure='yes')
        drill_string.add_tool(self.stabilizer, measure='yes')
        drill_string.add_tool(self.stabilizer, measure='no')
        drill_string.add_tool(self.drill_pipe, joints=20, group_name='Upper_DP_Group')
        drill_string.add_tool(self.eus, joints=20, group_name='equivalent_pipe', equivalent=True)
        drill_string.add_tool(self.top_drive)

        got_tool = drill_string.get_tool('stabilizer')

        self.assertEqual(got_tool, self.stabilizer)      

    def tearDown(self):
        # Delete test config file
        os.remove(TEST_CONFIG_FILENAME)
        os.environ['ADRILL_USER_CFG'] = os.path.join(os.environ['USERPROFILE'], '.adrill.cfg')

        # Delete string file from test_write_string_to_database()        
        try:
            os.remove(os.path.join(TEST_DATABASE_PATH, 'drill_strings.tbl', TEST_STRING_NAME + '.str'))
        except FileNotFoundError:
            pass
            
        # Clear the entire new database
        clear_database(TEST_NEW_DATABASE_PATH)

class Test_ReadTOFile(unittest.TestCase):
    """Tests adamspy.adripy.tiem_orbit.utilities.read_to_file()    
    """
    maxDiff = None
    def setUp(self):
        adripy.create_cfg_file(TEST_CONFIG_FILENAME, [TEST_DATABASE_PATH, TEST_NEW_DATABASE_PATH])

    def test_cdb_alias_works(self):
        try:
            parameters = utilities.read_TO_file(adripy.get_full_path(os.path.join(f'<{TEST_DATABASE_NAME}>', 'drill_strings.tbl', TEST_EXISTING_STRING_NAME + '.str')))
        except FileNotFoundError:
            self.fail('File not found when cdb alias path used')
    
    def test_full_path_works(self):
        try:
            parameters = utilities.read_TO_file(os.path.join(f'<{TEST_DATABASE_NAME}>', 'drill_strings.tbl', TEST_EXISTING_STRING_NAME + '.str'))
        except FileNotFoundError:
            self.fail('File not found when full path used')
        
    def test_correct_values(self):
        """Tests that the parameters in the written TO file are as expected
        """
        # Create a test config file containing the test database
        parameters = utilities.read_TO_file(adripy.get_full_path(os.path.join(f'<{TEST_DATABASE_NAME}>', 'drill_strings.tbl', TEST_EXISTING_STRING_NAME + '.str')))

        self.assertDictEqual(parameters, EXPECTED_STRING_TO_PARAMETERS)

    def tearDown(self):
        try:
            os.remove(TEST_CONFIG_FILENAME)
        except:
            pass
        os.environ['ADRILL_USER_CFG'] = os.path.join(os.environ['USERPROFILE'], '.adrill.cfg')

class Test_RexExPatterns(unittest.TestCase):
    """Tests the regular expressions in adripy.tiem_orbit.utilities    
    """
    def setUp(self):
        return

    def test_block_header_pattern(self):
        strings_to_match = [
            '[LKJFDSLKJ]\n',
            '[lkjfdslkj]\n',
            '[LKJFDLKJ_FDSD]\n',
            '[lkjfdlkjfd_lkjfdslkjfds]\n',
            '[PLOT_4D]\n'
        ]
        strings_to_not_match = [
            '$[LKJFDLKJ]\n',
            '(LKJFDSLKJ)\n'
        ]
        failures = self._find_match_failures(strings_to_match, strings_to_not_match, utilities.TO_BLOCK_HEADER_PATTERN)        
        self.assertEqual(failures, [])

    def test_subblock_header_pattern(self):
        strings_to_match = [
            '(LKJFDSLKJ)\n',
            '(lkjfdslkj)\n',
            '(LKJFDLKJ_FDSD)\n',
            '(lkjfdlkjfd_lkjfdslkjfds)\n',
            '(PLOT_4D)\n'
        ]
        strings_to_not_match = [
            '[LKJFDLKJ]\n',
            '$(LKJFDSLKJ)\n'
        ]
        failures = self._find_match_failures(strings_to_match, strings_to_not_match, utilities.TO_SUBBLOCK_HEADER_PATTERN)
        self.assertEqual(failures, [])

    def test_table_header_pattern(self):
        strings_to_match = [
            '{lkjfdslkj lkjfds fdslkjs}\n',
            '{FDSSDF lkjfds fdslkjs}\n',
            '{FDSLKJFDSLKJ LKJFDLKJ FDSLKJFDS}\n',
            '{FDSLKJ_FDSLKJ LKJFDLKJ FDSLKJFDS}\n',
            '{ lkjfdslkj lkjfds fdslkjs }\n'
        ]
        strings_to_not_match = [
            '{FDSLKJ-FDSLKJ, LKJFDLKJ FDSLKJFDS}\n',
            '[DSF]\n',
            '${lkjfdslk lkjfdslkj}\n'
        ]             
        failures = self._find_match_failures(strings_to_match, strings_to_not_match, utilities.TO_TABLE_HEADER_PATTERN)      
        self.assertEqual(failures, [])

    def test_table_line_pattern(self):
        strings_to_match = [
            ' 432 32.3 -43 -43.45 \n',
            '432 32.3 -43 -43.45\n',
            '432  32.3  -43  -43.45 \n',
            '234.3\n',
            '\'lkjfdslkj\'\n',
            '\'lkjfdslkj\' \'DLKDSFLK\'\n',
            '  \'lkjfdslkj\' \'DLKDSFLK\'  \n',
            '\'lkjfdslkj\' \'DLKDSFLK_4D\'\n'            
        ]
        strings_to_not_match = [
            '$ 432 32.3 -43 -43.45 \n',
            '$ [SDFSDFS]\n',
            '$ (SDFSDFS)\n'
        ]             
        failures = self._find_match_failures(strings_to_match, strings_to_not_match, utilities.TO_TABLE_LINE_PATTERN)      
        self.assertEqual(failures, [])

    def test_parameter_pattern(self):
        strings_to_match = [
            ' lkjfdslkj  =  \'lkjfdslkj\' \n',
            ' lkjfdslkj  =  \'lkjfdslkj\'\n',
            ' lkjfdslkj  =  100\n',
            ' lkjfdslkj  =  100.00\n',
            ' lkjfdslkj  =  -100\n',
            ' lkjfdslkj  =  -100.00\n',
            ' DSFDSFFDD  =  100\n',
            ' DSFdffdsf  =  100\n',
            ' Plotting_4D		= \'on\''
        ]
        strings_to_not_match = [
            'lkjfds  =  2\n',
            '$ lkjfds  =  2\n',
            ' fdslkj  =  "lkjfdslkj"\n',
            ' fdslkfds  =  5*10'
        ]             
        failures = self._find_match_failures(strings_to_match, strings_to_not_match, utilities.TO_PARAMETER_PATTERN)      
        self.assertEqual(failures, [])

    def _find_match_failures(self, strings_to_match, strings_to_not_match, pattern):
        """Test that strings_to_match matches pattern and strings_to_not_match 
        does not match pattern.
        
        Arguments:
            strings_to_match {str} -- Strings that should match pattern
            strings_to_not_match {str} -- Strings that should not match pattern
            pattern {re.match} -- Match object
        
        Returns:
            [list] -- List of failures
        """

        failures = []
        # Add missed strings to failures list
        for string in strings_to_match:
            if not pattern.match(string):
                failures.append(f'{string} erroneously not matched')
        
        # Add erroneously matched strings to failures list
        for string in strings_to_not_match:
            if pattern.match(string):
                failures.append(f'{string} erroneously matched')
        
        return failures

    def tearDown(self):
        return

if __name__ == '__main__':
    unittest.main()
