import unittest
import os
import glob
from test import *
# Set the ADRILL_USER_CFG and ADRILL_SHARED_CFG environment variables
os.environ['ADRILL_USER_CFG'] = os.path.join('C:\\', 'Users', 'bthornt', '.adrill.cfg')
os.environ['ADRILL_SHARED_CFG'] = os.path.join('C:\\', 'MSC.Software', 'Adams', '2018', 'adrill', 'adrill.cfg')
os.environ['ADAMS_LAUNCH_COMMAND'] = os.path.join('C:\\', 'MSC.Software', 'Adams', '2018', 'common', 'mdi.bat')
from adamspy import adripy

class Test_Build(unittest.TestCase):

    def setUp(self):
        try:
            adripy.add_cdb_to_cfg(TEST_DATABASE_NAME, TEST_DATABASE_PATH, os.environ['ADRILL_USER_CFG'])
        except ValueError:
            pass
        
        # Create DrillString object
        string = adripy.tiem_orbit.DrillString(TEST_STRING_NAME, hole_file=TEST_HOLE_FILE, event_file=TEST_EVENT_FILE)
        
        # Create DrillTools objects
        pdc_bit = adripy.tiem_orbit.DrillTool(TEST_PDC_FILE)
        stabilizer = adripy.tiem_orbit.DrillTool(TEST_STABILIZER_FILE)
        drill_pipe = adripy.tiem_orbit.DrillTool(TEST_DRILLPIPE_FILE)
        eus = adripy.tiem_orbit.DrillTool(TEST_EUS_FILE)
        top_drive = adripy.tiem_orbit.DrillTool(TEST_TOP_DRIVE_FILE)
        
        # Add DrillTools to string
        string.add_tool(pdc_bit)
        string.add_tool(stabilizer)
        string.add_tool(drill_pipe, joints=TEST_NUMBER_OF_DRILLPIPES, group_name='Upper_DP_Group')
        string.add_tool(eus, joints=TEST_NUMBER_OF_EUSPIPES, group_name='equivalent_pipe', equivalent=True)
        string.add_tool(top_drive)
        
        # Create DrillSolverSettings object
        solver_settings = adripy.tiem_orbit.DrillSolverSettings('baseline_settings')

        # Build model
        adripy.build(string, solver_settings, TEST_WORKING_DIRECTORY)    

    def test_adm(self):
        """Tests that the adm was created
        """
        self.assertTrue(os.path.exists(os.path.join(TEST_WORKING_DIRECTORY, TEST_STRING_NAME + '.adm')))

    def test_acf(self):
        """Tests that the adm was created
        """
        self.assertTrue(os.path.exists(os.path.join(TEST_WORKING_DIRECTORY, TEST_STRING_NAME + '.acf')))

    def tearDown(self):
        adripy.remove_cdb_from_cfg(TEST_DATABASE_NAME, os.environ['ADRILL_USER_CFG'])
        # Remove all the files in the working directory
        for file in glob.glob(os.path.join(TEST_WORKING_DIRECTORY, '*')):
            os.remove(file)
        return
