import unittest
import os
import re
from test import *

# Set the ADRILL_USER_CFG and ADRILL_SHARED_CFG environment variables
os.environ['ADRILL_USER_CFG'] = os.path.join('C:\\', 'Users', 'bthornt', '.adrill.cfg')
os.environ['ADRILL_SHARED_CFG'] = os.path.join('C:\\', 'MSC.Software', 'Adams', '2018', 'adrill', 'adrill.cfg')
os.environ['ADAMS_LAUNCH_COMMAND'] = os.path.join('C:\\', 'MSC.Software', 'Adams', '2018', 'common', 'mdi.bat')
from adamspy import adripy

class Test_AdripyFunctions(unittest.TestCase):    
    
    def setUp(self):
        # Create a test configuration file
        adripy.create_cfg_file(TEST_CONFIG_FILENAME, [EXISTING_CDB_PATH, CDB_TO_REMOVE_PATH])
    
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
        
    def tearDown(self):
        os.remove(TEST_CONFIG_FILENAME)
        os.environ['ADRILL_USER_CFG'] = os.path.join(os.environ['USERPROFILE'], '.adrill.cfg')

if __name__ == '__main__':
    unittest.main()
