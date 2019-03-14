import unittest
import os
import shutil
import difflib
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
    
    def test_isabs_cdb(self):
        """Tests that :meth:`adripy.isabs` returns True when a cdb path is passed.
        """
        test_path = os.path.join(f'<{EXISTING_CDB_NAME}>', 'drill_string.tbl', 'fake_filename.str')
        path_is_abs = adripy.isabs(test_path)
        self.assertTrue(path_is_abs)
    
    def test_isabs_abs(self):
        """Tests that :meth:`adripy.isabs` returns True when an absolute path is passed.
        """
        test_path = os.path.join('c:\\', 'fake_cdb.cdb', 'drill_string.tbl', 'fake_filename.str')
        path_is_abs = adripy.isabs(test_path)
        self.assertTrue(path_is_abs)
    
    def test_isabs_rel(self):
        """Tests that :meth:`adripy.isabs` returns True when just a filename is passed.
        """
        test_path = os.path.join('fake_filename.str')
        path_is_abs = adripy.isabs(test_path)
        self.assertFalse(path_is_abs)
    
    def test_isabs_rel_dir(self):
        """Tests that :meth:`adripy.isabs` returns True when a relative path starting from a parent directory is passed.
        """
        test_path = os.path.join('fake_dir', 'fake_filename.str')
        path_is_abs = adripy.isabs(test_path)
        self.assertFalse(path_is_abs)
        
    def tearDown(self):
        os.remove(TEST_CONFIG_FILENAME)
        os.environ['ADRILL_USER_CFG'] = os.path.join(os.environ['USERPROFILE'], '.adrill.cfg')

class Test_AddSplines(unittest.TestCase):

    def setUp(self):
        return

    def test_add_splines_to_adm(self):
        shutil.copyfile(TEST_ADM_FILE, TEST_ADM_FILENAME_WITH_SPLINES)
        adripy.add_splines_to_adm(TEST_ADM_FILENAME_WITH_SPLINES, TEST_SPLINES_TO_ADD)
        file_diff = compare_files(TEST_ADM_FILE, TEST_ADM_FILENAME_WITH_SPLINES)
        self.assertEqual(file_diff, TEST_EXPECTED_ADM_FILE_DIFF)

    def test_add_splines_to_acf(self):
        shutil.copyfile(TEST_ACF_FILE, TEST_ACF_FILENAME_WITH_SPLINES)
        adripy.add_splines_to_acf(TEST_ACF_FILENAME_WITH_SPLINES)
        file_diff = compare_files(TEST_ACF_FILE, TEST_ACF_FILENAME_WITH_SPLINES)
        self.assertEqual(file_diff, TEST_EXPECTED_ACF_FILE_DIFF)

    def tearDown(self):
        # Remove the new adm file that has splines
        if os.path.exists(TEST_ADM_FILENAME_WITH_SPLINES):
            os.remove(TEST_ADM_FILENAME_WITH_SPLINES)

        # Remove the new acf file that has splines
        if os.path.exists(TEST_ACF_FILENAME_WITH_SPLINES):
            os.remove(TEST_ACF_FILENAME_WITH_SPLINES)

def compare_files(file_1, file_2):
    text_1 = open(file_1).readlines()
    text_2 = open(file_2).readlines()

    file_diff = ''
    # Remove + from beginning of lines
    for line in difflib.unified_diff(text_1, text_2, n=0):
        if line.startswith('+') and not line.startswith('+++'):
            file_diff += line[1:]
    
    return file_diff

    

if __name__ == '__main__':
    unittest.main()
