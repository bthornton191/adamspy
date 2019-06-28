"""Tests related to the DrillSolverSettings class
"""

import unittest
import os
from test import *

os.environ['ADRILL_SHARED_CFG'] = os.path.join('C:\\', 'MSC.Software', 'Adams', '2018', 'adrill', 'adrill.cfg')
os.environ['ADRILL_USER_CFG'] = os.path.join(os.environ['USERPROFILE'], '.adrill.cfg')
os.environ['ADAMS_LAUNCH_COMMAND'] = os.path.join('C:\\', 'MSC.Software', 'Adams', '2018', 'common', 'mdi.bat')
    
from adamspy import adripy #pylint: disable=wrong-import-position

class Test_DrillSolverSettings(unittest.TestCase):
    
    maxDiff = None
    
    @classmethod
    def setUpClass(cls):        
        # Create a configuration file for testing
        adripy.create_cfg_file(TEST_CONFIG_FILENAME, [TEST_DATABASE_PATH])
        try:            
            os.remove(os.path.join(TEST_WORKING_DIRECTORY, TEST_SOLVER_SETTINGS_NAME + '.ssf'))
        except FileNotFoundError:
            pass
    
    def test_write_to_file(self):
        """Tests that the parameters in a :class:`DrillSolverSettings: object are correctly written to a solver settings file.
        """
        # Create a DrillSolverSettings object
        solver_settings = adripy.DrillSolverSettings(TEST_SOLVER_SETTINGS_NAME)

        # Write the DrillSolverSettings object to a solver settins file
        solver_settings.write_to_file(TEST_SOLVER_SETTINGS_NAME, directory=TEST_WORKING_DIRECTORY)
        
        # Check for unexpected lines in the solver settings file
        failures = check_file_contents(solver_settings.filename, TEST_EXPECTED_SOLVER_SETTINGS_FILE_TEXT)
        
        # Delete the solver settings file
        os.remove(solver_settings.filename)

        self.assertListEqual(failures, [])

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

    def test_read_from_file_2(self):        
        """Tests that the parameters in the string are correct after a string is read from a file.
        """        
        # Create an event object
        solver_settings_file = os.path.join(f'<{TEST_DATABASE_NAME}>', 'solver_settings.tbl', TEST_SOLVER_SETTINGS_NAME_2 + '.ssf')

        # Read new parameters into the drill string object from a file
        solver_settings_from_file = adripy.DrillSolverSettings.read_from_file(solver_settings_file)
        
        params = dict(solver_settings_from_file.parameters)
        params.pop('_Funnel')
        TEST_EXPECTED_SOLVER_SETTINGS_TO_PARAMETERS_2.pop('_Funnel')

        self.assertDictEqual(params, TEST_EXPECTED_SOLVER_SETTINGS_TO_PARAMETERS_2)

    def test_read_from_file_then_write_to_file(self):        
        """Tests that the parameters in the string are correct after a string is read from a file.
        """        
        # Create an event object
        solver_settings_file = os.path.join(f'<{TEST_DATABASE_NAME}>', 'solver_settings.tbl', TEST_SOLVER_SETTINGS_NAME + '.ssf')

        # Read new parameters into the drill string object from a file
        solver_settings_from_file = adripy.DrillSolverSettings.read_from_file(solver_settings_file)

        # Write the DrillSolverSettings object to a solver settins file
        solver_settings_from_file.write_to_file(TEST_SOLVER_SETTINGS_NAME, directory=TEST_WORKING_DIRECTORY)
        
        # Check for unexpected lines in the solver settings file
        failures = check_file_contents(solver_settings_from_file.filename, TEST_EXPECTED_SOLVER_SETTINGS_FILE_TEXT_READ_THEN_WRITE)
        
        # Delete the solver settings file
        os.remove(solver_settings_from_file.filename)

        self.assertListEqual(failures, [])

    @classmethod
    def tearDownClass(cls):
        # Delete test config file
        os.remove(TEST_CONFIG_FILENAME)
        os.environ['ADRILL_USER_CFG'] = os.path.join(os.environ['USERPROFILE'], '.adrill.cfg')
        