import unittest
import os
import glob
from test import *
os.environ['ADRILL_SHARED_CFG'] = os.path.join('C:\\', 'MSC.Software', 'Adams', '2018', 'adrill', 'adrill.cfg')
os.environ['ADRILL_USER_CFG'] = os.path.join(os.environ['USERPROFILE'], '.adrill.cfg')
os.environ['ADAMS_LAUNCH_COMMAND'] = os.path.join('C:\\', 'MSC.Software', 'Adams', '2018', 'common', 'mdi.bat')
from adamspy import adripy

class Test_EventFile(unittest.TestCase):
    """
    Tests that adripy can correctly write an event file
    """
    def setUp(self):
        
        # Create a configuration file for testing
        adripy.create_cfg_file(TEST_CONFIG_FILENAME, [TEST_DATABASE_PATH])

        # Create event file object
        self.event_file = adripy.tiem_orbit.DrillEvent(TEST_CREATED_EVENT_NAME, 4000, 4)
        
        # Add ramp parameters to event file object
        self.event_file.add_ramp('PUMP_FLOW', 1, 10, 500)
        self.event_file.add_ramp('TOP_DRIVE', 10, 15, 60)
        self.event_file.add_ramp('WOB', 30, 10, 50)
        self.event_file.add_ramp('ROP', 35, 10, 100)   

        # Add simulation steps to event file object
        self.event_file.add_simulation_step(10)
        self.event_file.add_simulation_step(100)     

        # Write an event file from the event file object
        self.event_file.write_to_file(cdb=TEST_DATABASE_NAME)
    
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

if __name__ == '__main__':
    unittest.main()
