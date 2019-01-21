import unittest
import os
import re
from adamspy import adripy

class test_adripy_functions(unittest.TestCase):
    TEST_CONFIG_FILENAME = '_test_drill.cfg'
    TEST_ORIG_CONFIG_FILE_TEXT = '''!----------------------------------------------------------------------!
! ************  Adams Drill Private Configuration File  ************
!----------------------------------------------------------------------!
!
!----------------------------------------------------------------------!
! - List of personal environment variables
!----------------------------------------------------------------------!
!
!----------------------------------------------------------------------!
! - List of personal database directories
!            Database name     Path of Database
!----------------------------------------------------------------------!
DATABASE\t_EXISTING_DATABASE\tC:\\_EXISTING_DATABASE.cdb

DEFAULT_WRITE_DB    adrill_private
!
!----------------------------------------------------------------------!
! - List of personal tables directories
!            Type class            Name of table              Extension
!----------------------------------------------------------------------!
! Example table entry:
!TABLE        example               example.tbl                      exa
!
!----------------------------------------------------------------------!
! - List of personal default property files
!            Type class         Default property file
!----------------------------------------------------------------------!
! Example property file entry:
!PROPFILE     pdc_bit           <adrill_private>/pdc_bits.tbl/SC_Acme_Co_695b.pdc
!----------------------------------------------------------------------!
'''
    EXPECTED_CONFIG_FILE_TEXT = '''!----------------------------------------------------------------------!
! ************  Adams Drill Private Configuration File  ************
!----------------------------------------------------------------------!
!
!----------------------------------------------------------------------!
! - List of personal environment variables
!----------------------------------------------------------------------!
!
!----------------------------------------------------------------------!
! - List of personal database directories
!            Database name     Path of Database
!----------------------------------------------------------------------!
DATABASE\t_EXISTING_DATABASE\tC:\\_EXISTING_DATABASE.cdb
DATABASE\t_NEW_DATABASE\tC:\\_NEW_DATABASE.cdb

DEFAULT_WRITE_DB    adrill_private
!
!----------------------------------------------------------------------!
! - List of personal tables directories
!            Type class            Name of table              Extension
!----------------------------------------------------------------------!
! Example table entry:
!TABLE        example               example.tbl                      exa
!
!----------------------------------------------------------------------!
! - List of personal default property files
!            Type class         Default property file
!----------------------------------------------------------------------!
! Example property file entry:
!PROPFILE     pdc_bit           <adrill_private>/pdc_bits.tbl/SC_Acme_Co_695b.pdc
!----------------------------------------------------------------------!
'''
    
    def setUp(self):
        # Write a test configuration file
        with open(self.TEST_CONFIG_FILENAME, 'w') as fid:
            fid.write(self.TEST_ORIG_CONFIG_FILE_TEXT)
    
    def test_add_cdb_to_cfg(self):
        """
        Tests if adripy.add_cdb_to_cfg adds the correct cdbs.
        """
        # Run the function
        adripy.add_cdb_to_cfg('_NEW_DATABASE', 'C:/_NEW_DATABASE.cdb', self.TEST_CONFIG_FILENAME)

        # Read the config file
        with open(self.TEST_CONFIG_FILENAME, 'r') as fid:
            lines = fid.readlines()
        
        # Initialize a list of failures
        failures = []

        # Loop through lines
        for actual_line, expected_line, line_num in zip(lines, self.EXPECTED_CONFIG_FILE_TEXT.split('\n'), range(len(lines))):
            expected_line += '\n'

            # Test if lines are equal
            if actual_line != expected_line:
                failures.append('cfg mismatch (line {}): {} -- {}'.format(line_num, actual_line, expected_line))
        
        self.assertListEqual([], failures)
        
    def tearDown(self):
        os.remove(self.TEST_CONFIG_FILENAME)
        
if __name__ == '__main__':
    unittest.main()
