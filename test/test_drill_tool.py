"""Tests related to the :class:`adripy.tool.DrillTool` class.
"""

import unittest
import os
from test import *
os.environ['ADRILL_SHARED_CFG'] = os.path.join('C:\\', 'MSC.Software', 'Adams', '2018', 'adrill', 'adrill.cfg')
os.environ['ADRILL_USER_CFG'] = os.path.join(os.environ['USERPROFILE'], '.adrill.cfg')
os.environ['ADAMS_LAUNCH_COMMAND'] = os.path.join('C:\\', 'MSC.Software', 'Adams', '2018', 'common', 'mdi.bat')
    
from adamspy import adripy #pylint: disable=wrong-import-position

class Test_AgitatorDrillTool(unittest.TestCase):

    def setUp(self):        
        # Create a test config file containing the test database
        adripy.create_cfg_file(TEST_CONFIG_FILENAME, [TEST_DATABASE_PATH])

        self.agitator = adripy.DrillTool(TEST_EXISTING_AGITATOR_FILE)

    def test_agitator_type(self):
        self.assertEqual(self.agitator.tool_type, 'agitator')

    def tearDown(self):
        # Delete test config file
        os.remove(TEST_CONFIG_FILENAME)
        os.environ['ADRILL_USER_CFG'] = os.path.join(os.environ['USERPROFILE'], '.adrill.cfg')

class Test_DrillTool(unittest.TestCase):
    """Tests the methods in :class:`adripy.tool.DrillTool`
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
    
    def test_check_extension(self):
        """Tests that DrillTool throws an error if you give it a string file.
        
        """
        with self.assertRaises(adripy.tool.DrillToolError):
            _bad_tool = adripy.DrillTool('dummy.str')

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
