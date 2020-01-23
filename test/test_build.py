import unittest
import os
import glob
import re
from test import *
# Set the ADRILL_USER_CFG and ADRILL_SHARED_CFG environment variables
from adamspy import adripy

class Test_Build(unittest.TestCase):

    @classmethod
    def setUpClass(cls):
        try:
            adripy.add_cdb_to_cfg(TEST_DATABASE_NAME, TEST_DATABASE_PATH, os.environ['ADRILL_USER_CFG'])
        except ValueError:
            pass
        
        # Create DrillString object
        string = adripy.DrillString(TEST_STRING_NAME, hole_file=TEST_EXISTING_HOLE_FILE, event_file=TEST_EVENT_FILE)
        
        # Create DrillTools objects
        pdc_bit = adripy.DrillTool(TEST_PDC_FILE)
        stabilizer = adripy.DrillTool(TEST_STABILIZER_FILE)
        drill_pipe = adripy.DrillTool(TEST_DRILLPIPE_FILE)
        eus = adripy.DrillTool(TEST_EUS_FILE)
        top_drive = adripy.DrillTool(TEST_TOP_DRIVE_FILE)
        
        # Add DrillTools to string
        string.add_tool(pdc_bit)
        string.add_tool(stabilizer)
        string.add_tool(drill_pipe, joints=TEST_NUMBER_OF_DRILLPIPES, group_name='Upper_DP_Group')
        string.add_tool(eus, joints=TEST_NUMBER_OF_EUSPIPES, group_name='equivalent_pipe', equivalent=True)
        string.add_tool(top_drive)

        # Write the string file
        string_file = string.write_to_file(TEST_WORKING_DIRECTORY)
        
        # Create DrillSolverSettings object
        solver_settings = adripy.DrillSolverSettings('baseline_settings')

        # Write the solver settings file
        solver_settings_file = solver_settings.write_to_file(TEST_SOLVER_SETTINGS_NAME, directory=TEST_WORKING_DIRECTORY)

        # Build model
        adripy.build(string_file, solver_settings_file, TEST_WORKING_DIRECTORY)

    def test_adm(self):
        """Tests that the adm was created
        """
        self.assertTrue(os.path.exists(os.path.join(TEST_WORKING_DIRECTORY, TEST_STRING_NAME + '.adm')))

    def test_acf(self):
        """Tests that the acf was created
        """
        self.assertTrue(os.path.exists(os.path.join(TEST_WORKING_DIRECTORY, TEST_STRING_NAME + '.acf')))
    
    def test_errors_in_log(self):
        """Tests that no errors are found in the aview.log file
        """        
        with open(os.path.join(TEST_WORKING_DIRECTORY, 'aview.log'), 'r') as fid:
            text = fid.read()
        errors = re.findall('ERROR:  ', text)
        
        self.assertEqual(len(errors), 0)
        
    @classmethod
    def tearDownClass(cls):
        adripy.remove_cdb_from_cfg(TEST_DATABASE_NAME, os.environ['ADRILL_USER_CFG'])
        # Remove all the files in the working directory
        for file in glob.glob(os.path.join(TEST_WORKING_DIRECTORY, '*')):
            os.remove(file)

if __name__ == '__main__':
    unittest.main()
