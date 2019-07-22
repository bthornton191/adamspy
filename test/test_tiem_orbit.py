"""Tests related to using :mod:`adampsy.adripy.utilities` to read tiem orbit files.
"""

import unittest
import os
from test import *
    
from adamspy import adripy #pylint: disable=wrong-import-position
from adamspy.adripy import utilities #pylint: disable=wrong-import-position
from adamspy.adripy.constants import TO_PARAMETER_PATTERN

class Test_ReadTOFile(unittest.TestCase):
    """Tests adamspy.adripy.utilities.read_to_file()    
    """
    maxDiff = None
    def setUp(self):
        adripy.create_cfg_file(TEST_CONFIG_FILENAME, [TEST_DATABASE_PATH, TEST_NEW_DATABASE_PATH])

    def test_full_path_works(self):
        """Tests if :meth:`read_TO_file` works with a full path is passed.
        """
        try:
            _parameters = utilities.read_TO_file(adripy.get_full_path(os.path.join(f'<{TEST_DATABASE_NAME}>', 'drill_strings.tbl', TEST_EXISTING_STRING_NAME + '.str')))
        except FileNotFoundError:
            self.fail('File not found when full path used')
    
    def test_cdb_alias_works(self):
        """Tests if :meth:`read_TO_file` works with a cdb alias path is passed.
        """
        try:
            _parameters = utilities.read_TO_file(os.path.join(f'<{TEST_DATABASE_NAME}>', 'drill_strings.tbl', TEST_EXISTING_STRING_NAME + '.str'))
        except FileNotFoundError:
            self.fail('File not found when cdb alias path used')
        
    def test_correct_values(self):
        """Tests that the parameters in the written TO file are as expected
        """
        # Create a test config file containing the test database
        parameters = utilities.read_TO_file(adripy.get_full_path(os.path.join(f'<{TEST_DATABASE_NAME}>', 'drill_strings.tbl', TEST_EXISTING_STRING_NAME + '.str')))

        self.assertDictEqual(parameters, EXPECTED_STRING_TO_PARAMETERS)    

    def tearDown(self):
        try:
            os.remove(TEST_CONFIG_FILENAME)
        except FileNotFoundError:
            pass
        os.environ['ADRILL_USER_CFG'] = os.path.join(os.environ['USERPROFILE'], '.adrill.cfg')

class Test_RexExPatterns(unittest.TestCase):
    """Tests the regular expressions in adripy.utilities    
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
            '432  5.55e+02  -4e-3  -43.45 \n',
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
            'lkjfds  =  2\n',
            ' lkjfdslkj  =  100\n',
            ' lkjfdslkj  =  100.00\n',
            ' lkjfdslkj  =  -100\n',
            ' lkjfdslkj  =  -100.00\n',
            ' DSFDSFFDD  =  100\n',
            ' DSFdffdsf  =  100\n',
            ' Plotting_4D		= \'on\'',
            ' Hmax =   5.0e-3',
            ' PP =   5.0e+3',
            '  Pipe_Length         = 31',
            " Event_Property_File  =  ''",
            '  Stabilizer_Length= 3.0000'
        ]
        strings_to_not_match = [
            '$ lkjfds  =  2\n',
            ' fdslkj  =  "lkjfdslkj"\n',
            ' fdslkfds  =  5*10'
        ]             
        failures = self._find_match_failures(strings_to_match, strings_to_not_match, TO_PARAMETER_PATTERN)      
        self.assertEqual(failures, [])

    def _find_match_failures(self, strings_to_match, strings_to_not_match, pattern):
        """Test that strings_to_match matches pattern and strings_to_not_match 
        does not match pattern.
        
        Parameters
        ----------
        strings_to_match : str
            Strings that should match pattern
        strings_to_not_match : str
            Strings that should not match pattern
        pattern : re.match
            Match object
        
        Returns
        -------
        list
            List of failures
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
