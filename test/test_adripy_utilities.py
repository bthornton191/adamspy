import unittest
import os
from test import *

# Set the ADRILL_USER_CFG and ADRILL_SHARED_CFG environment variables
os.environ['ADRILL_USER_CFG'] = os.path.join('C:\\', 'Users', 'bthornt', '.adrill.cfg')
os.environ['ADRILL_SHARED_CFG'] = os.path.join('C:\\', 'MSC.Software', 'Adams', '2018', 'adrill', 'adrill.cfg')
os.environ['ADAMS_LAUNCH_COMMAND'] = os.path.join('C:\\', 'MSC.Software', 'Adams', '2018', 'common', 'mdi.bat')
from adamspy import adripy

class Test_TOParameterPattern(unittest.TestCase):
    """Tests that the TO_PARAMTER_PATTERN regex works on a variety of example text. 
    """
    
    def test_string_file_event_property_file(self):
        line_text = ' Event_Property_File  =  \'c:\\Users\\bthornt\\GUI\\adamspy\\test\example_working_directory\\test_analysis_1.evt\''
        match = adripy.TO_PARAMETER_PATTERN.match(line_text)
        self.assertTrue(bool(match))
    
    def test_string_file_units(self):
        line_text = ' Units  =  \'Imperial\''
        match = adripy.TO_PARAMETER_PATTERN.match(line_text)
        self.assertTrue(bool(match))

class Test_AdripyFunctions(unittest.TestCase):    
    
    def setUp(self):
        # Create a test configuration file
        adripy.create_cfg_file(TEST_CONFIG_FILENAME, [EXISTING_CDB_PATH, CDB_TO_REMOVE_PATH, TEST_DATABASE_PATH])
        
    
    def test_create_cfg_file(self):
        """Tests that create_cfg_file() creates a configuration file with the expected contents
        """
        # Check the config file contents
        failures = check_file_contents(TEST_CONFIG_FILENAME, TEST_ORIG_CONFIG_FILE_TEXT)
        
        self.assertListEqual([], failures)

    def test_add_cdb_to_cfg(self):
        """
        Tests if adripy.add_cdb_to_cfg adds the correct cdb.
        """
        # Run the function
        adripy.add_cdb_to_cfg(NEW_CDB_NAME, NEW_CDB_PATH, TEST_CONFIG_FILENAME)

        # Check the config file contents
        failures = check_file_contents(TEST_CONFIG_FILENAME, EXPECTED_CONFIG_FILE_AFTER_ADD)
        
        self.assertListEqual([], failures)

    def test_remove_cdb_from_cfg(self):
        """
        Tests if adripy.remove_cdb_from_cfg removes the correct cdb.
        """
        # Run the function
        adripy.remove_cdb_from_cfg(CDB_TO_REMOVE_NAME, TEST_CONFIG_FILENAME)
        
        # Check the config file contents
        failures = check_file_contents(TEST_CONFIG_FILENAME, EXPECTED_CONFIG_FILE_AFTER_REMOVE)
        
        self.assertListEqual([], failures)

    def test_get_full_path(self):
        """Test that adripy.get_full_path returns the correct path.
        """
        expected_full_path = os.path.join(EXISTING_CDB_PATH, 'stabilizers.tbl', EXAMPLE_STABILIZER_NAME + '.sta')
        example_cdb_path = os.path.join(f'<{EXISTING_CDB_NAME}>', 'stabilizers.tbl', EXAMPLE_STABILIZER_NAME + '.sta')
        full_path = adripy.get_full_path(example_cdb_path)

        self.assertEqual(full_path, expected_full_path)
    
    def test_get_to_param_string_value(self):
        """Tests that adripy.get_to_param() returns the correct 
        parameter when requesting a parameter that has a string
        as the value.
        """
        expected_value = 'test_string'
        actual_value = adripy.get_TO_param(TEST_EXISTING_STRING_FILE, 'OutputName')

        self.assertEqual(actual_value, expected_value)
    
    def test_get_to_param_event_file(self):
        """Tests that adripy.get_to_param() returns the correct 
        parameter when requesting a parameter that has a string
        as the value.
        """
        expected_value = '<example_database>\\events.tbl\\test_event.evt'
        actual_value = adripy.get_TO_param(TEST_EXISTING_STRING_FILE, 'Event_Property_File')

        self.assertEqual(actual_value, expected_value)

    def test_get_to_param_float_value(self):
        """Tests that adripy.get_to_param() returns the correct 
        parameter when requesting a parameter that has a string
        as the value.
        """
        expected_value = 32.187
        actual_value = adripy.get_TO_param(TEST_EXISTING_STRING_FILE, 'Gravity')

        self.assertEqual(actual_value, expected_value)
    
    def test_get_to_param_int_value(self):
        """Tests that adripy.get_to_param() returns the correct 
        parameter when requesting a parameter that has a string
        as the value.
        """
        expected_value = 4
        actual_value = adripy.get_TO_param(TEST_SOLVER_SETTINGS_FILE, 'Thread_Count')

        self.assertEqual(actual_value, expected_value)

        
    def tearDown(self):
        os.remove(TEST_CONFIG_FILENAME)
        os.environ['ADRILL_USER_CFG'] = os.path.join(os.environ['USERPROFILE'], '.adrill.cfg')

if __name__ == '__main__':
    unittest.main()
