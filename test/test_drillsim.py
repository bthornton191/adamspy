"""Tests related to the tiem_orbit.DrillSim class
"""

import unittest
import os
import glob
from test import *
os.environ['ADRILL_SHARED_CFG'] = os.path.join('C:\\', 'MSC.Software', 'Adams', '2018', 'adrill', 'adrill.cfg')
os.environ['ADRILL_USER_CFG'] = os.path.join(os.environ['USERPROFILE'], '.adrill.cfg')
os.environ['ADAMS_LAUNCH_COMMAND'] = os.path.join('C:\\', 'MSC.Software', 'Adams', '2018', 'common', 'mdi.bat')
    
from adamspy import adripy #pylint: disable=wrong-import-position
from adamspy.adripy.tiem_orbit import DrillSim #pylint: disable=wrong-import-position

class Test_DrillSim(unittest.TestCase):
    """Tests related to the tiem_orbit.DrillSim class
    """
    maxDiff = None

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

        # Create a DrillString object
        self.drill_string = adripy.tiem_orbit.DrillString(TEST_STRING_NAME, TEST_HOLE_FILE, TEST_EVENT_FILE)

        # Add the DrillTool objects to the DrillString object
        self.drill_string.add_tool(self.pdc_bit, measure='yes')
        self.drill_string.add_tool(self.stabilizer, measure='yes')
        self.drill_string.add_tool(self.drill_pipe, joints=20, group_name='Upper_DP_Group')
        self.drill_string.add_tool(self.eus, joints=20, group_name='equivalent_pipe', equivalent=True)
        self.drill_string.add_tool(self.top_drive)

        # Create an event object
        self.event = adripy.tiem_orbit.DrillEvent(TEST_EVENT_NAME,2000, 3)

        # Create a solver settings object
        self.solver_settings = adripy.tiem_orbit.DrillSolverSettings(TEST_SOLVER_SETTINGS_NAME)

    def test_write_tiem_orbit_files_event_filename(self):
        """Tests that DrillSim.event has the correct event filename 
        """
        # Create a DrillSim object
        drill_sim = DrillSim(self.drill_string, self.event, self.solver_settings, TEST_WORKING_DIRECTORY, TEST_ANALYSIS_NAME)

        # Test the filename
        expected_filename = os.path.join(TEST_WORKING_DIRECTORY, TEST_ANALYSIS_NAME + '.evt')        
        actual_filename = drill_sim.event.filename        
        self.assertEqual(actual_filename, expected_filename)

    def test_write_tiem_orbit_files_string_filename(self):
        """Tests that DrillSim.event has the correct string filename 
        """
        # Create a DrillSim object
        drill_sim = DrillSim(self.drill_string, self.event, self.solver_settings, TEST_WORKING_DIRECTORY, TEST_ANALYSIS_NAME)

        # Test the filename
        expected_filename = os.path.join(TEST_WORKING_DIRECTORY, TEST_ANALYSIS_NAME + '.str')        
        actual_filename = drill_sim.string_filename        
        self.assertEqual(actual_filename, expected_filename)

    def test_write_tiem_orbit_files_ssf_filename(self):
        """Tests that DrillSim.event has the correct string filename 
        """
        # Create a DrillSim object
        drill_sim = DrillSim(self.drill_string, self.event, self.solver_settings, TEST_WORKING_DIRECTORY, TEST_ANALYSIS_NAME)

        # Test the filename
        expected_filename = os.path.join(TEST_WORKING_DIRECTORY, TEST_ANALYSIS_NAME + '.ssf')        
        actual_filename = drill_sim.solver_settings.filename        
        self.assertEqual(actual_filename, expected_filename)
    
    def test_write_tiem_orbit_files_directory_contents(self):
        """Tests that DrillSim.directory contains the expected files
        """
        # Create a DrillSim object
        drill_sim = DrillSim(self.drill_string, self.event, self.solver_settings, TEST_WORKING_DIRECTORY, TEST_ANALYSIS_NAME)

        expected_contents = [
            drill_sim.event.filename,
            drill_sim.string_filename,
            drill_sim.solver_settings.filename
        ]
        for tool in drill_sim.string.tools:
            expected_contents.append(tool['Property_File'])
        
        expected_contents.append(drill_sim.string.top_drive['Property_File'])
        expected_contents.append(drill_sim.string.parameters['Hole_Property_File'])

        actual_contents = glob.glob(os.path.join(drill_sim.directory, '*'))
        
        self.assertListEqual(sorted(actual_contents), sorted(expected_contents))

    def tearDown(self):
        # Remove the test cfg file if it exists
        try:
            os.remove(TEST_CONFIG_FILENAME)
        except: #pylint: disable=bare-except
            pass
        
        # Reset the ADRILL_USER_CFG environment variable
        os.environ['ADRILL_USER_CFG'] = os.path.join(os.environ['USERPROFILE'], '.adrill.cfg')

        # Remove all the files in the working directory
        for file in glob.glob(os.path.join(TEST_WORKING_DIRECTORY, '*')):
            os.remove(file)
