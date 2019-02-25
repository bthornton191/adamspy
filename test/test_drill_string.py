"""Tests related to the DrillString class
"""

import unittest
import os
from test import *
os.environ['ADRILL_SHARED_CFG'] = os.path.join('C:\\', 'MSC.Software', 'Adams', '2018', 'adrill', 'adrill.cfg')
os.environ['ADRILL_USER_CFG'] = os.path.join(os.environ['USERPROFILE'], '.adrill.cfg')
os.environ['ADAMS_LAUNCH_COMMAND'] = os.path.join('C:\\', 'MSC.Software', 'Adams', '2018', 'common', 'mdi.bat')
    
from adamspy import adripy #pylint: disable=wrong-import-position

class Test_DrillString(unittest.TestCase):
    """Tests the DrillString class.
    """
    maxDiff = None
    def setUp(self):
        # Create a test config file containing the test database
        adripy.create_cfg_file(TEST_CONFIG_FILENAME, [TEST_DATABASE_PATH, TEST_NEW_DATABASE_PATH])
        
        # Create a DrillTool object representing a stabilizer
        self.pdc_bit = adripy.DrillTool(TEST_PDC_FILE)

        # Create a DrillTool object representing a stabilizer
        self.stabilizer = adripy.DrillTool(TEST_STABILIZER_FILE)

        # Create a DrillTool object representing a drill pipe
        self.drill_pipe = adripy.DrillTool(TEST_DRILLPIPE_FILE)

        # Create a DrillTool object representing EUS
        self.eus = adripy.DrillTool(TEST_EUS_FILE)
        
        # Create a DrillTool object representing a top drive
        self.top_drive = adripy.DrillTool(TEST_TOP_DRIVE_FILE)

    def test_add_tool(self):
        """Test the DrillString.add_tool() method.
        """
        # Create a DrillString object
        drill_string = adripy.DrillString(TEST_STRING_NAME, TEST_HOLE_FILE, TEST_EVENT_FILE)

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
        drill_string = adripy.DrillString(TEST_STRING_NAME, TEST_HOLE_FILE, TEST_EVENT_FILE)

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
        drill_string = adripy.DrillString(TEST_STRING_NAME, TEST_HOLE_FILE, TEST_EVENT_FILE)

        # Add the DrillTool objects to the DrillString object
        drill_string.add_tool(self.pdc_bit, measure='yes')
        drill_string.add_tool(self.stabilizer, measure='yes')
        drill_string.add_tool(self.drill_pipe, joints=20, group_name='Upper_DP_Group')
        drill_string.add_tool(self.eus, joints=20, group_name='equivalent_pipe', equivalent=True)
        drill_string.add_tool(self.top_drive)

        # Publish drill string to new database
        drill_string.write_to_file(cdb=TEST_NEW_DATABASE_NAME, publish=True, publish_event=True)

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

        # Read new parameters into the drill string object from a file
        string_file = os.path.join(f'<{TEST_DATABASE_NAME}>', 'drill_strings.tbl', TEST_EXISTING_STRING_NAME + '.str')
        drill_string_from_file = adripy.DrillString.read_from_file(string_file)
        
        # Remove some keys from the parameters dictionary
        drill_string_from_file.parameters.pop('_Distance_from_Bit')

        self.assertDictEqual(drill_string_from_file.parameters, expected_parameters)
    
    def test_read_string_from_file_no_dfb(self):
        
        expected_parameters = {
            'Units': 'Imperial',
            'ModelName': 'test_string',
            'OutputName': 'test_string',
            'Gravity': 32.187,
            'Deviation_Deg': 0.0,
            'Adams_Results': 'animation',
            'Adams_Graphics': 'off',
            'Adams_Requests': 'on',
            'Distance_from_Bit': [],
            'SolverDLL': 'adrill_solver',
            'Hole_Property_File': '<example_database>\\holes.tbl\\test_hole.hol',
            'Contact_Method': 'Subroutine',
            'Cyl_Drag_Coeff': 1.0,
            'Hole_Color': 'LtGray',
            'Event_Property_File': '<example_database>\\events.tbl\\test_event.evt'
        }

        # Read new parameters into the drill string object from a file
        string_file = os.path.join(f'<{TEST_DATABASE_NAME}>', 'drill_strings.tbl', TEST_EXISTING_STRING_NAME_NO_DFB + '.str')
        drill_string_from_file = adripy.DrillString.read_from_file(string_file)
        
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

        # Read new parameters into the drill string object from a file
        string_file = os.path.join(f'<{TEST_DATABASE_NAME}>', 'drill_strings.tbl', TEST_EXISTING_STRING_NAME + '.str')
        drill_string_from_file = adripy.DrillString.read_from_file(string_file)
        
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

        # Read new parameters into the drill string object from a file
        string_file = os.path.join(f'<{TEST_DATABASE_NAME}>', 'drill_strings.tbl', TEST_EXISTING_STRING_NAME + '.str')
        drill_string_from_file = adripy.DrillString.read_from_file(string_file)

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

        # Read new parameters into the drill string object from a file
        string_file = os.path.join(f'<{TEST_DATABASE_NAME}>', 'drill_strings.tbl', TEST_EXISTING_STRING_NAME + '.str')
        drill_string_from_file = adripy.DrillString.read_from_file(string_file)
        
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

        # Read new parameters into the drill string object from a file
        string_file = os.path.join(f'<{TEST_DATABASE_NAME}>', 'drill_strings.tbl', TEST_EXISTING_STRING_NAME + '.str')
        drill_string_from_file = adripy.DrillString.read_from_file(string_file)
        
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

        # Read new parameters into the drill string object from a file
        string_file = os.path.join(f'<{TEST_DATABASE_NAME}>', 'drill_strings.tbl', TEST_EXISTING_STRING_NAME + '.str')
        drill_string_from_file = adripy.DrillString.read_from_file(string_file)
        
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

        # Read new parameters into the drill string object from a file
        string_file = os.path.join(f'<{TEST_DATABASE_NAME}>', 'drill_strings.tbl', TEST_EXISTING_STRING_NAME + '.str')
        drill_string_from_file = adripy.DrillString.read_from_file(string_file)
        
        actual_n_tools = len(drill_string_from_file.tools)

        self.assertEqual(actual_n_tools, expected_n_tools)

    
    def test_get_tool_first(self):
        """Tests that DrillString.get_tool() returns the correct value.
        """
        # Create a DrillString object
        drill_string = adripy.DrillString(TEST_STRING_NAME, TEST_HOLE_FILE, TEST_EVENT_FILE)

        # Define a new stabilizer object
        different_stabilizer  = adripy.DrillTool(TEST_STABILIZER_FILE)

        # Add the DrillTool objects to the DrillString object
        drill_string.add_tool(self.pdc_bit, measure='yes')
        drill_string.add_tool(self.stabilizer, measure='yes')
        drill_string.add_tool(different_stabilizer, measure='no')
        drill_string.add_tool(self.drill_pipe, joints=20, group_name='Upper_DP_Group')
        drill_string.add_tool(self.eus, joints=20, group_name='equivalent_pipe', equivalent=True)
        drill_string.add_tool(self.top_drive)

        got_tool = drill_string.get_tool('stabilizer')

        self.assertEqual(got_tool, self.stabilizer)    

    def test_get_tool_last(self):
        """Tests that DrillString.get_tool() returns the correct value.
        """
        # Create a DrillString object
        drill_string = adripy.DrillString(TEST_STRING_NAME, TEST_HOLE_FILE, TEST_EVENT_FILE)
        
        # Define a new stabilizer object
        different_stabilizer  = adripy.DrillTool(TEST_STABILIZER_FILE)
        
        # Add the DrillTool objects to the DrillString object
        drill_string.add_tool(self.pdc_bit, measure='yes')
        drill_string.add_tool(self.stabilizer, measure='yes')
        drill_string.add_tool(different_stabilizer, measure='no')
        drill_string.add_tool(self.drill_pipe, joints=20, group_name='Upper_DP_Group')
        drill_string.add_tool(self.eus, joints=20, group_name='equivalent_pipe', equivalent=True)
        drill_string.add_tool(self.top_drive)

        got_tool = drill_string.get_tool('stabilizer', instance='last')

        self.assertEqual(got_tool, different_stabilizer)  

    def test_get_tool_1(self):
        """Tests that DrillString.get_tool() returns the correct value.
        """
        # Create a DrillString object
        drill_string = adripy.DrillString(TEST_STRING_NAME, TEST_HOLE_FILE, TEST_EVENT_FILE)
        
        # Define a new stabilizer object
        different_stabilizer  = adripy.DrillTool(TEST_STABILIZER_FILE)
        
        # Add the DrillTool objects to the DrillString object
        drill_string.add_tool(self.pdc_bit, measure='yes')
        drill_string.add_tool(self.stabilizer, measure='yes')
        drill_string.add_tool(different_stabilizer, measure='no')
        drill_string.add_tool(self.drill_pipe, joints=20, group_name='Upper_DP_Group')
        drill_string.add_tool(self.eus, joints=20, group_name='equivalent_pipe', equivalent=True)
        drill_string.add_tool(self.top_drive)

        got_tool = drill_string.get_tool('stabilizer', instance=1)

        self.assertEqual(got_tool, self.stabilizer)  

    def test_get_tool_2(self):
        """Tests that DrillString.get_tool() returns the correct value.
        """
        # Create a DrillString object
        drill_string = adripy.DrillString(TEST_STRING_NAME, TEST_HOLE_FILE, TEST_EVENT_FILE)
        
        # Define a new stabilizer object
        different_stabilizer  = adripy.DrillTool(TEST_STABILIZER_FILE)
        
        # Add the DrillTool objects to the DrillString object
        drill_string.add_tool(self.pdc_bit, measure='yes')
        drill_string.add_tool(self.stabilizer, measure='yes')
        drill_string.add_tool(different_stabilizer, measure='no')
        drill_string.add_tool(self.drill_pipe, joints=20, group_name='Upper_DP_Group')
        drill_string.add_tool(self.eus, joints=20, group_name='equivalent_pipe', equivalent=True)
        drill_string.add_tool(self.top_drive)

        got_tool = drill_string.get_tool('stabilizer', instance=2)

        self.assertEqual(got_tool, different_stabilizer)  

    def test_set_pipe_joints_physical(self):
        """Tests that DrillString.set_pipe_joints() correctly 
        sets the number of joints of physical pipe.
        """
        expected_joints = 100
        # Create a DrillString object
        drill_string = adripy.DrillString(TEST_STRING_NAME, TEST_HOLE_FILE, TEST_EVENT_FILE)

        # Add the DrillTool objects to the DrillString object
        drill_string.add_tool(self.pdc_bit, measure='yes')
        drill_string.add_tool(self.stabilizer, measure='yes')
        drill_string.add_tool(self.stabilizer, measure='no')
        drill_string.add_tool(self.drill_pipe, joints=20, group_name='Upper_DP_Group')
        drill_string.add_tool(self.eus, joints=20, group_name='equivalent_pipe', equivalent=True)
        drill_string.add_tool(self.top_drive)

        drill_string.set_pipe_joints(expected_joints)

        actual_joints = drill_string.tools[-2]['Number_of_Joints']

        self.assertEqual(actual_joints, expected_joints)

    def test_set_pipe_joints_equivalent(self):
        """Tests that DrillString.set_pipe_joints() correctly 
        sets the number of joints of equivalent pipe.
        """
        expected_joints = 100
        # Create a DrillString object
        drill_string = adripy.DrillString(TEST_STRING_NAME, TEST_HOLE_FILE, TEST_EVENT_FILE)

        # Add the DrillTool objects to the DrillString object
        drill_string.add_tool(self.pdc_bit, measure='yes')
        drill_string.add_tool(self.stabilizer, measure='yes')
        drill_string.add_tool(self.stabilizer, measure='no')
        drill_string.add_tool(self.drill_pipe, joints=20, group_name='Upper_DP_Group')
        drill_string.add_tool(self.eus, joints=20, group_name='equivalent_pipe', equivalent=True)
        drill_string.add_tool(self.top_drive)

        drill_string.set_pipe_joints(expected_joints, equivalent=True)

        actual_joints = drill_string.tools[-1]['Number_of_Joints']

        self.assertEqual(actual_joints, expected_joints)

    def test_get_bha_length(self):
        """Tests that DrillString.get_bha_length() returns the correct length.
        """
        # Create a DrillString object
        drill_string = adripy.DrillString(TEST_STRING_NAME, TEST_HOLE_FILE, TEST_EVENT_FILE)

        # Add the DrillTool objects to the DrillString object
        drill_string.add_tool(self.pdc_bit, measure='yes')
        drill_string.add_tool(self.stabilizer, measure='yes')
        drill_string.add_tool(self.stabilizer, measure='no')
        drill_string.add_tool(self.drill_pipe, joints=20, group_name='Upper_DP_Group')
        drill_string.add_tool(self.eus, joints=20, group_name='equivalent_pipe', equivalent=True)
        drill_string.add_tool(self.top_drive)

        expected_length = 14.48
        actual_length = drill_string.get_bha_length()

        self.assertEqual(actual_length, expected_length)
        
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