"""Tests related to the DrillString class
"""

import unittest
import os
import traceback
from test import *
    
from adamspy import adripy #pylint: disable=wrong-import-position

class Test_DrillString(unittest.TestCase):
    """Tests the :obj:`DrillString` class.
    """
    maxDiff = None
    def setUp(self):
        # Create a test config file containing the test database
        adripy.create_cfg_file(TEST_CONFIG_FILENAME, [TEST_DATABASE_PATH, TEST_NEW_DATABASE_PATH])
        
        # Create a DrillTool object representing a stabilizer
        self.pdc_bit = adripy.DrillTool(TEST_PDC_FILE)

        # Create a DrillTool object representing a motor
        self.motor = adripy.DrillTool(TEST_MOTOR_FILE)

        # Create a DrillTool object representing a stabilizer
        self.stabilizer = adripy.DrillTool(TEST_STABILIZER_FILE)

        # Create a DrillTool object representing an mwd
        self.mwd = adripy.DrillTool(TEST_MWD_FILE)

        # Create a DrillTool object representing a stabilizer
        self.upper_stabilizer = adripy.DrillTool(TEST_STABILIZER_FILE)

        # Create a DrillTool object representing a collar
        self.collar = adripy.DrillTool(TEST_COLLAR_FILE)

        # Create a DrillTool object representing a drill pipe
        self.drill_pipe = adripy.DrillTool(TEST_DRILLPIPE_FILE)

        # Create a DrillTool object representing EUS
        self.eus = adripy.DrillTool(TEST_EUS_FILE)
        
        # Create a DrillTool object representing a top drive
        self.top_drive = adripy.DrillTool(TEST_TOP_DRIVE_FILE)
        
    def test_add_tool(self):
        """Test the `DrillString.add_tool()` method.
        """
        # Create a DrillString object
        drill_string = adripy.DrillString(TEST_STRING_NAME, TEST_EXISTING_HOLE_FILE, TEST_EVENT_FILE)

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

    def test_write_string_to_database_with_collar(self):
        """Tests if the string file is written correctly when the string has a collar in it.
        """
        # Create a DrillString object
        drill_string = adripy.DrillString(TEST_STRING_NAME, TEST_EXISTING_HOLE_FILE, TEST_EVENT_FILE)

        # Add the DrillTool objects to the DrillString object
        drill_string.add_tool(self.pdc_bit, measure='yes')
        drill_string.add_tool(self.stabilizer, measure='yes')
        drill_string.add_tool(self.collar, measure='yes', joints=TEST_NUMBER_OF_COLLARS, group_name=TEST_COLLAR_GROUPNAME)
        drill_string.add_tool(self.drill_pipe, joints=TEST_NUMBER_OF_DRILLPIPES, group_name=TEST_DRILLPIPE_GROUPNAME)
        drill_string.add_tool(self.eus, joints=TEST_NUMBER_OF_EUSPIPES, group_name=TEST_EUS_GROUPNAME, equivalent=True)
        drill_string.add_tool(self.top_drive)

        # Write drill string to file
        drill_string.write_to_file(cdb=TEST_DATABASE_NAME)

        expected_string_filename = os.path.join(TEST_DATABASE_PATH, 'drill_strings.tbl', TEST_STRING_NAME + '.str')
        
        failures = check_file_contents(expected_string_filename, EXPECTED_STRING_WRITE_TEXT_COLLAR)

        self.assertListEqual(failures, [])

    def test_write_string_to_database(self): 
        """Test the `DrillString.write_to_file()` method.
        """
        # Create a DrillString object
        drill_string = adripy.DrillString(TEST_STRING_NAME, TEST_EXISTING_HOLE_FILE, TEST_EVENT_FILE)

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

    def test_write_string_to_database_with_dfb(self): 
        """Test the `DrillString.write_to_file()` method.
        """
        # Create a DrillString object
        drill_string = adripy.DrillString(TEST_STRING_NAME, TEST_EXISTING_HOLE_FILE, TEST_EVENT_FILE)

        # Add DFBs to the drill string
        drill_string.parameters['Distance_from_Bit'] = [100, 200]

        # Add the DrillTool objects to the DrillString object
        drill_string.add_tool(self.pdc_bit, measure='yes')
        drill_string.add_tool(self.stabilizer, measure='yes')
        drill_string.add_tool(self.drill_pipe, joints=20, group_name='Upper_DP_Group')
        drill_string.add_tool(self.eus, joints=20, group_name='equivalent_pipe', equivalent=True)
        drill_string.add_tool(self.top_drive)

        # Write drill string to file
        drill_string.write_to_file(cdb=TEST_DATABASE_NAME)

        expected_string_filename = os.path.join(TEST_DATABASE_PATH, 'drill_strings.tbl', TEST_STRING_NAME + '.str')
        
        failures = check_file_contents(expected_string_filename, EXPECTED_STRING_WRITE_TEXT_WITH_DFB)

        self.assertListEqual(failures, [])
    
    def test_publish_string_with_spaces_in_hole_path(self):
        """Tests if publish works when the hole path has spaces        
        """
        # Create a DrillString object
        drill_string = adripy.DrillString(TEST_STRING_NAME, TEST_EXISTING_HOLE_FILE_WITH_SPACES, TEST_EVENT_FILE)

        # Add the DrillTool objects to the DrillString object
        drill_string.add_tool(self.pdc_bit, measure='yes')
        drill_string.add_tool(self.stabilizer, measure='yes')
        drill_string.add_tool(self.collar, measure='yes', joints=TEST_NUMBER_OF_COLLARS, group_name=TEST_COLLAR_GROUPNAME)
        drill_string.add_tool(self.drill_pipe, joints=TEST_NUMBER_OF_DRILLPIPES, group_name=TEST_DRILLPIPE_GROUPNAME)
        drill_string.add_tool(self.eus, joints=TEST_NUMBER_OF_EUSPIPES, group_name=TEST_EUS_GROUPNAME, equivalent=True)
        drill_string.add_tool(self.top_drive)

        # Write drill string to file
        try:
            drill_string.write_to_file(cdb=TEST_NEW_DATABASE_NAME, publish=True)
            pass
        except FileNotFoundError:
            self.fail()

    def test_publish_string_to_new_database(self):
        """Test the `DrillString.write_to_file()` method with publish=True
        """
        # Create a DrillString object
        drill_string = adripy.DrillString(TEST_STRING_NAME, TEST_EXISTING_HOLE_FILE, TEST_EVENT_FILE)

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
    
    def test_publish_string_with_duplicate_tools_to_new_database_1(self):
        """Test the `DrillString.write_to_file()` method with publish=True when the string contains two of the same stabilizer.  The criteria for this test is that only a single tool file is published to the database even though the tool is used twice.

        Notes
        -----
            This test intentionally uses a string that uses the same tool twice.            
        """
        # Create a DrillString object
        drill_string = adripy.DrillString(TEST_STRING_NAME, TEST_EXISTING_HOLE_FILE, TEST_EVENT_FILE)

        # Add the DrillTool objects to the DrillString object
        drill_string.add_tool(self.pdc_bit, measure='yes')
        drill_string.add_tool(self.stabilizer, measure='yes')
        drill_string.add_tool(self.mwd, measure='yes')
        drill_string.add_tool(self.upper_stabilizer, measure='yes')
        drill_string.add_tool(self.drill_pipe, joints=20, group_name='Upper_DP_Group')
        drill_string.add_tool(self.eus, joints=20, group_name='equivalent_pipe', equivalent=True)
        drill_string.add_tool(self.top_drive)

        # Publish drill string to new database
        drill_string.write_to_file(cdb=TEST_NEW_DATABASE_NAME, publish=True, publish_event=True)

        expected_files = [adripy.get_full_path(drill_string.tools[1]['Property_File'])]
        actual_files = glob.glob(os.path.join(TEST_NEW_DATABASE_PATH, 'stabilizers.tbl', '*'))

        self.assertListEqual(actual_files, expected_files)    
    
    def test_publish_string_with_duplicate_tools_to_new_database_2(self):
        """Test the `DrillString.write_to_file()` method with `publish=True` when the string contains two of the same stabilizer.  The criteria for this test is that the `DrillTool` that is used twice has the same property file and it is correct.

        Note
        ----
        This test intentionally uses a string that uses the same tool twice.            
        """
        # Create a DrillString object
        drill_string = adripy.DrillString(TEST_STRING_NAME, TEST_EXISTING_HOLE_FILE, TEST_EVENT_FILE)

        # Add the DrillTool objects to the DrillString object
        drill_string.add_tool(self.pdc_bit, measure='yes')
        drill_string.add_tool(self.stabilizer, measure='yes')
        drill_string.add_tool(self.mwd, measure='yes')
        drill_string.add_tool(self.upper_stabilizer, measure='yes')
        drill_string.add_tool(self.drill_pipe, joints=20, group_name='Upper_DP_Group')
        drill_string.add_tool(self.eus, joints=20, group_name='equivalent_pipe', equivalent=True)
        drill_string.add_tool(self.top_drive)

        # Publish drill string to new database
        drill_string.write_to_file(cdb=TEST_NEW_DATABASE_NAME, publish=True, publish_event=True)

        actual_files = [drill_string.tools[i]['Property_File'] for i in [1,3]]
        expected_files = [os.path.join(f'<{TEST_NEW_DATABASE_NAME}>', 'stabilizers.tbl', 'example_stabilizer.sta')]*2

        self.assertListEqual(actual_files, expected_files)    

    def test_read_string_from_file_with_spaces_in_hole_ref(self):
        """Tests that the parameters in the string are correct after a string is read from a file.
        """
        # Read new parameters into the drill string object from a file
        string_file = os.path.join(f'<{TEST_DATABASE_NAME}>', 'drill_strings.tbl', TEST_EXISTING_STRING_NAME_WITH_SPACES_IN_HOLE_REF + '.str')
        drill_string_from_file = adripy.DrillString.read_from_file(string_file)
        
        # Remove some keys from the parameters dictionary
        hole_filename = drill_string_from_file.parameters['Hole_Property_File']
        
        self.assertEqual(hole_filename, TEST_EXISTING_HOLE_FILE_WITH_SPACES)

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
        drill_string = adripy.DrillString.read_from_file(TEST_EXISTING_STRING_FILE)
        
        # Get the first tool
        actual_tool = drill_string.tools[0]
        
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
        drill_string = adripy.DrillString.read_from_file(TEST_EXISTING_STRING_FILE)

        # Get the first tool
        actual_tool = drill_string.tools[0]
        
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
        drill_string = adripy.DrillString.read_from_file(TEST_EXISTING_STRING_FILE)
        
        # Get the first tool
        actual_tool = drill_string.tools[-1]
        
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
        drill_string = adripy.DrillString.read_from_file(TEST_EXISTING_STRING_FILE)
        
        # Get the first tool
        bit = drill_string.tools[0]['DrillTool']

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
        drill_string = adripy.DrillString.read_from_file(TEST_EXISTING_STRING_FILE)
        
        # Get the first tool
        bit = drill_string.tools[-1]['DrillTool']

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
        drill_string = adripy.DrillString.read_from_file(TEST_EXISTING_STRING_FILE)
        
        actual_n_tools = len(drill_string.tools)

        self.assertEqual(actual_n_tools, expected_n_tools)
    
    def test_read_string_from_file_collar(self):
        """Tests that a string file is read correctly when it has a collar in it.
        """
        # Read new parameters into the drill string object from a file
        drill_string = adripy.DrillString.read_from_file(TEST_EXISTING_STRING_FILE_COLLAR)
        
        # Get the collar from the drill string
        collar = drill_string.get_tool('drill_collar')
        
        # Messy way to find the collar in the strings tools list
        # and get the number of joints
        for tool in drill_string.tools:
            if tool['DrillTool'] is collar:
                actual_n_joints = tool['Number_of_Joints']
        
        # Set the expected number of joins
        expected_n_joints = 2

        self.assertEqual(actual_n_joints, expected_n_joints)

    def test_read_string_from_file_relative_references(self):
        """Tests that the string is read correctly when the file uses relative references.
        """
        
        drill_string = adripy.DrillString(TEST_STRING_NAME, TEST_EXISTING_HOLE_FILE, TEST_EVENT_FILE)

        # Add the DrillTool objects to the DrillString object
        drill_string.add_tool(self.pdc_bit, measure='yes')
        drill_string.add_tool(self.stabilizer, measure='yes')
        drill_string.add_tool(self.drill_pipe, joints=20, group_name='Upper_DP_Group')
        drill_string.add_tool(self.eus, joints=20, group_name='equivalent_pipe', equivalent=True)
        drill_string.add_tool(self.top_drive)

        # Create an event object
        event = adripy.DrillEvent(TEST_EVENT_NAME,2000, 3)
        event.add_simulation_step(10)
        event.add_simulation_step(100)
        event.add_ramp('PUMP_FLOW', 0, 15, 500)
        event.add_ramp('TOP_DRIVE', 15, 15, 60)
        event.add_ramp('WOB', 30, 15, 50)
        event.add_ramp('ROP', 30, 15, 100)

        # Create a solver settings object
        solver_settings = adripy.DrillSolverSettings(TEST_SOLVER_SETTINGS_NAME)
        
        # Create a DrillSim object
        drill_sim = adripy.DrillSim(drill_string, event, solver_settings, TEST_WORKING_DIRECTORY, TEST_ANALYSIS_NAME)

        try:
            _drill_string = adripy.DrillString.read_from_file(drill_sim.string_filename)
        except FileNotFoundError as err:
            self.fail('Failed to read the drill string: ' + traceback.format_exc())


    def test_get_tool_first(self):
        """Tests that DrillString.get_tool() returns the correct value.
        """
        # Create a DrillString object
        drill_string = adripy.DrillString(TEST_STRING_NAME, TEST_EXISTING_HOLE_FILE, TEST_EVENT_FILE)

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
        drill_string = adripy.DrillString(TEST_STRING_NAME, TEST_EXISTING_HOLE_FILE, TEST_EVENT_FILE)
        
        # Define a new stabilizer object
        different_stabilizer  = adripy.DrillTool(TEST_STABILIZER_FILE)
        
        # Add the DrillTool objects to the DrillString object
        drill_string.add_tool(self.pdc_bit, measure='yes')
        drill_string.add_tool(self.stabilizer, measure='yes')
        drill_string.add_tool(different_stabilizer, measure='no')
        drill_string.add_tool(self.drill_pipe, joints=20, group_name='Upper_DP_Group')
        drill_string.add_tool(self.eus, joints=20, group_name='equivalent_pipe', equivalent=True)
        drill_string.add_tool(self.top_drive)

        got_tool = drill_string.get_tool('stabilizer', index=-1)

        self.assertEqual(got_tool, different_stabilizer)  

    def test_get_tool_1(self):
        """Tests that DrillString.get_tool() returns the correct value.
        """
        # Create a DrillString object
        drill_string = adripy.DrillString(TEST_STRING_NAME, TEST_EXISTING_HOLE_FILE, TEST_EVENT_FILE)
        
        # Define a new stabilizer object
        different_stabilizer  = adripy.DrillTool(TEST_STABILIZER_FILE)
        
        # Add the DrillTool objects to the DrillString object
        drill_string.add_tool(self.pdc_bit, measure='yes')
        drill_string.add_tool(self.stabilizer, measure='yes')
        drill_string.add_tool(different_stabilizer, measure='no')
        drill_string.add_tool(self.drill_pipe, joints=20, group_name='Upper_DP_Group')
        drill_string.add_tool(self.eus, joints=20, group_name='equivalent_pipe', equivalent=True)
        drill_string.add_tool(self.top_drive)

        got_tool = drill_string.get_tool('stabilizer', index=0)

        self.assertEqual(got_tool, self.stabilizer)  

    def test_get_tool_2(self):
        """Tests that DrillString.get_tool() returns the correct value.
        """
        # Create a DrillString object
        drill_string = adripy.DrillString(TEST_STRING_NAME, TEST_EXISTING_HOLE_FILE, TEST_EVENT_FILE)
        
        # Define a new stabilizer object
        different_stabilizer  = adripy.DrillTool(TEST_STABILIZER_FILE)
        
        # Add the DrillTool objects to the DrillString object
        drill_string.add_tool(self.pdc_bit, measure='yes')
        drill_string.add_tool(self.stabilizer, measure='yes')
        drill_string.add_tool(different_stabilizer, measure='no')
        drill_string.add_tool(self.drill_pipe, joints=20, group_name='Upper_DP_Group')
        drill_string.add_tool(self.eus, joints=20, group_name='equivalent_pipe', equivalent=True)
        drill_string.add_tool(self.top_drive)

        got_tool = drill_string.get_tool('stabilizer', index=1)

        self.assertEqual(got_tool, different_stabilizer)  

    def test_set_pipe_joints_physical(self):
        """Tests that DrillString.set_pipe_joints() correctly 
        sets the number of joints of physical pipe.
        """
        expected_joints = 100
        # Create a DrillString object
        drill_string = adripy.DrillString(TEST_STRING_NAME, TEST_EXISTING_HOLE_FILE, TEST_EVENT_FILE)

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
        drill_string = adripy.DrillString(TEST_STRING_NAME, TEST_EXISTING_HOLE_FILE, TEST_EVENT_FILE)

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
        drill_string = adripy.DrillString(TEST_STRING_NAME, TEST_EXISTING_HOLE_FILE, TEST_EVENT_FILE)

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
    
    def test_change_tool_name(self):
        """Tests that changing the name of a :class:`DrillTool` object causes the 'Name' and 'Property_File' values in :attr:`DrillString.tools` to change as well.
        """
        # Create a DrillString object
        drill_string = adripy.DrillString(TEST_STRING_NAME, TEST_EXISTING_HOLE_FILE, TEST_EVENT_FILE)

        # Add the DrillTool objects to the DrillString object
        drill_string.add_tool(self.pdc_bit, measure='yes')
        drill_string.add_tool(self.motor, measure='yes')
        drill_string.add_tool(self.stabilizer, measure='yes')
        drill_string.add_tool(self.drill_pipe, joints=20, group_name='Upper_DP_Group')
        drill_string.add_tool(self.eus, joints=20, group_name='equivalent_pipe', equivalent=True)
        drill_string.add_tool(self.top_drive)

        # Get the motor
        motor = drill_string.get_tool('motor')

        # Rename the motor
        expected_tool_name = 'new_motor_name'        
        motor.rename(expected_tool_name)        

        # Get the motor as recorded in the drill_string.tools list
        actual_tool_name = drill_string.tools[1]['Name']
        
        # Delete the tool file that was created
        os.remove(os.path.join(TEST_DATABASE_PATH, 'motors.tbl', f'{expected_tool_name}.mot'))

        self.assertEqual(actual_tool_name, expected_tool_name)
    
    def test_change_tool_property_file(self):
        """Tests that changing the name of a :class:`DrillTool` object causes the 'Name' and 'Property_File' values in :attr:`DrillString.tools` to change as well.
        """
        # Create a DrillString object
        drill_string = adripy.DrillString(TEST_STRING_NAME, TEST_EXISTING_HOLE_FILE, TEST_EVENT_FILE)

        # Add the DrillTool objects to the DrillString object
        drill_string.add_tool(self.pdc_bit, measure='yes')
        drill_string.add_tool(self.motor, measure='yes')
        drill_string.add_tool(self.stabilizer, measure='yes')
        drill_string.add_tool(self.drill_pipe, joints=20, group_name='Upper_DP_Group')
        drill_string.add_tool(self.eus, joints=20, group_name='equivalent_pipe', equivalent=True)
        drill_string.add_tool(self.top_drive)

        # Get the motor
        motor = drill_string.get_tool('motor')

        # Rename the motor
        expected_tool_name = 'new_motor_name'        
        expected_tool_propertyfile = os.path.join(f'<{TEST_DATABASE_NAME}>', 'motors.tbl', f'{expected_tool_name}.mot')
        motor.rename(expected_tool_name)        

        # Get the motor as recorded in the drill_string.tools list
        actual_tool_propertyfile = drill_string.tools[1]['Property_File']

        # Delete the tool file that was created
        os.remove(os.path.join(TEST_DATABASE_PATH, 'motors.tbl', f'{expected_tool_name}.mot'))

        self.assertEqual(actual_tool_propertyfile, expected_tool_propertyfile)
        
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
