"""Tests related to the tiem_orbit package
"""

import unittest
import os
from test import *
os.environ['ADRILL_SHARED_CFG'] = os.path.join('C:\\', 'MSC.Software', 'Adams', '2018', 'adrill', 'adrill.cfg')
os.environ['ADRILL_USER_CFG'] = os.path.join(os.environ['USERPROFILE'], '.adrill.cfg')
os.environ['ADAMS_LAUNCH_COMMAND'] = os.path.join('C:\\', 'MSC.Software', 'Adams', '2018', 'common', 'mdi.bat')
    
from adamspy import adripy #pylint: disable=wrong-import-position
from adamspy.adripy import utilities #pylint: disable=wrong-import-position

class Test_DrillTool(unittest.TestCase):
    """Tests the methods in adamspy.adripy.tool.DrillTool
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
        self.stabilizer = adripy.DrillTool(filename)
        
        # Create an identical DrillTool object that will be modified later
        self.stabilizer_to_modify = adripy.DrillTool(os.path.join(f'<{TEST_DATABASE_NAME}>', 'stabilizers.tbl', self.TEST_STABILZIER_NAME + '.sta'))
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
  
    def test_get_parameter_value_bit_length(self):
        """Tests that DrillTool.get_parameter_value() returns the correct bit length.
        """
        pdc_bit = adripy.DrillTool(TEST_PDC_FILE)
        expected_value = 1.5
        actual_value = pdc_bit.get_parameter_value('Bit_Length')

        self.assertEqual(actual_value, expected_value)


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


class Test_DrillSolverSettings(unittest.TestCase):
    
    maxDiff = None
    
    def setUp(self):        
        # Create a configuration file for testing
        adripy.create_cfg_file(TEST_CONFIG_FILENAME, [TEST_DATABASE_PATH])

    def test_read_from_file(self):        
        """Tests that the parameters in the string are correct after a string is read from a file.
        """        
        # Create an event object
        solver_settings_file = os.path.join(f'<{TEST_DATABASE_NAME}>', 'solver_settings.tbl', TEST_SOLVER_SETTINGS_NAME + '.ssf')

        # Read new parameters into the drill string object from a file
        solver_settings_from_file = adripy.DrillSolverSettings.read_from_file(solver_settings_file)
        
        params = dict(solver_settings_from_file.parameters)
        params.pop('_Funnel')
        TEST_EXPECTED_SOLVER_SETTINGS_TO_PARAMETERS.pop('_Funnel')

        self.assertDictEqual(params, TEST_EXPECTED_SOLVER_SETTINGS_TO_PARAMETERS)

    def tearDown(self):
        # Delete test config file
        os.remove(TEST_CONFIG_FILENAME)
        os.environ['ADRILL_USER_CFG'] = os.path.join(os.environ['USERPROFILE'], '.adrill.cfg')

class Test_ReadTOFile(unittest.TestCase):
    """Tests adamspy.adripy.utilities.read_to_file()    
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
            ' lkjfdslkj  =  100\n',
            ' lkjfdslkj  =  100.00\n',
            ' lkjfdslkj  =  -100\n',
            ' lkjfdslkj  =  -100.00\n',
            ' DSFDSFFDD  =  100\n',
            ' DSFdffdsf  =  100\n',
            ' Plotting_4D		= \'on\'',
            ' Hmax =   5.0e-3',
            ' PP =   5.0e+3'
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
