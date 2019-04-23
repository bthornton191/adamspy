"""Tests related to the DrillSim class
"""
import unittest
import os
import glob

import dripy

from test import *
os.environ['ADRILL_SHARED_CFG'] = os.path.join('C:\\', 'MSC.Software', 'Adams', '2018', 'adrill', 'adrill.cfg')
os.environ['ADRILL_USER_CFG'] = os.path.join(os.environ['USERPROFILE'], '.adrill.cfg')
os.environ['ADAMS_LAUNCH_COMMAND'] = os.path.join('C:\\', 'MSC.Software', 'Adams', '2018', 'common', 'mdi.bat')
    
from adamspy import adripy #pylint: disable=wrong-import-position
from adamspy.adripy import DrillSim #pylint: disable=wrong-import-position

class Test_ReadResults(unittest.TestCase):

    def setUp(self):
        # Create a test config file containing the test database
        adripy.create_cfg_file(TEST_CONFIG_FILENAME, [TEST_DATABASE_PATH, TEST_NEW_DATABASE_PATH])
        self.drill_sim = DrillSim.read_from_directory(TEST_EXISTING_DRILLSIM_DIRECTORY)
        self.drill_sim.run()

    def test_read_and_shrink_1(self):    
        """Tests that `drill_sim.read_results` produces a smaller results file when reqs_to_read is not specified and a time period is specified. 
        
        """
        # Get the size before shrinking
        original_size = os.stat(os.path.join(self.drill_sim.directory, self.drill_sim.res_filename)).st_size        
        
        # Read and shrink
        self.drill_sim.read_results(t_min=80, t_max=99, shrink_results_file=True)
        
        # Get the size after shrinking
        new_size = os.stat(os.path.join(self.drill_sim.directory, self.drill_sim.res_filename)).st_size

        # Assert that size before shrinking is greater
        self.assertGreater(original_size, new_size)

    def test_read_and_shrink_2(self):        
        """Tests that `drill_sim.read_results` produces a smaller results file when reqs_to_read is specified and a time period is not specified.
        
        """
        # Get the size before shrinking
        original_size = os.stat(os.path.join(self.drill_sim.directory, self.drill_sim.res_filename)).st_size        
        
        reqs_to_keep = {
            'top_drive_data': ['True_Torque', 'Command_Torque']
        }

        # Read and shrink
        self.drill_sim.read_results(reqs_to_read=reqs_to_keep, shrink_results_file=True)
        
        # Get the size after shrinking
        new_size = os.stat(os.path.join(self.drill_sim.directory, self.drill_sim.res_filename)).st_size

        # Assert that size before shrinking is greater
        self.assertGreater(original_size, new_size)

    def test_read_and_shrink_3(self):        
        """Tests that `drill_sim.read_results` produces a smaller results file when reqs_to_read is specified and a time period is also specified.

        """
        # Get the size before shrinking
        original_size = os.stat(os.path.join(self.drill_sim.directory, self.drill_sim.res_filename)).st_size        
        
        reqs_to_keep = {
            'top_drive_data': ['True_Torque', 'Command_Torque']
        }

        # Read and shrink
        self.drill_sim.read_results(reqs_to_read=reqs_to_keep, t_min=80, t_max=99, shrink_results_file=True)
        
        # Get the size after shrinking
        new_size = os.stat(os.path.join(self.drill_sim.directory, self.drill_sim.res_filename)).st_size

        # Assert that size before shrinking is greater
        self.assertGreater(original_size, new_size)

    def tearDown(self):
        # Remove the test cfg file if it exists
        try:
            os.remove(TEST_CONFIG_FILENAME)
        except: #pylint: disable=bare-except
            pass

        os.remove(os.path.join(self.drill_sim.directory, self.drill_sim.res_filename))
        os.remove(os.path.join(self.drill_sim.directory, self.drill_sim.msg_filename))
        
        # Reset the ADRILL_USER_CFG environment variable
        os.environ['ADRILL_USER_CFG'] = os.path.join(os.environ['USERPROFILE'], '.adrill.cfg')

class Test_DrillSim(unittest.TestCase):
    """Tests related to the DrillSim class
    """
    maxDiff = None

    def setUp(self):
        # Create a test config file containing the test database
        adripy.create_cfg_file(TEST_CONFIG_FILENAME, [TEST_DATABASE_PATH, TEST_NEW_DATABASE_PATH])
        
        # Create a DrillTool object representing a stabilizer
        self.pdc_bit = adripy.DrillTool(TEST_PDC_FILE)

        # Create a DrillTool object representing a stabilizer
        self.stabilizer = adripy.DrillTool(TEST_STABILIZER_FILE)

        # Create a DrillTool object representing a drill pipe
        self.drill_pipe = adripy.DrillTool(TEST_DRILLPIPE_FILE)

        # Create a DrillTool object representing EUS
        self.eus = adripy.DrillTool(TEST_EUS_FILE)
        
        # Create a DrillTool object representing a top drive
        self.top_drive = adripy.DrillTool(TEST_TOP_DRIVE_FILE)

        # Create a DrillString object
        self.drill_string = adripy.DrillString(TEST_STRING_NAME, TEST_EXISTING_HOLE_FILE, TEST_EVENT_FILE)

        # Add the DrillTool objects to the DrillString object
        self.drill_string.add_tool(self.pdc_bit, measure='yes')
        self.drill_string.add_tool(self.stabilizer, measure='yes')
        self.drill_string.add_tool(self.drill_pipe, joints=20, group_name='Upper_DP_Group')
        self.drill_string.add_tool(self.eus, joints=20, group_name='equivalent_pipe', equivalent=True)
        self.drill_string.add_tool(self.top_drive)

        # Create an event object
        self.event = adripy.DrillEvent(TEST_EVENT_NAME,2000, 3)
        self.event.add_simulation_step(10)
        self.event.add_simulation_step(100)
        self.event.add_ramp('PUMP_FLOW', 0, 15, 500)
        self.event.add_ramp('TOP_DRIVE', 15, 15, 60)
        self.event.add_ramp('WOB', 30, 15, 50)
        self.event.add_ramp('ROP', 30, 15, 100)

        # Create a solver settings object
        self.solver_settings = adripy.DrillSolverSettings(TEST_SOLVER_SETTINGS_NAME)
    
    def test_read_from_file(self):
        drill_sim = DrillSim.read_from_directory(TEST_EXISTING_DRILLSIM_DIRECTORY)
        self.assertEqual(drill_sim.analysis_name, TEST_EXISTING_DRILLSIM_ANALYSIS_NAME)        

    def test_build_evt_contents(self):
        """Tests that the event file created in the DrillSim directory has the correct contents.        
        
        """
        drill_sim = DrillSim(self.drill_string, self.event, self.solver_settings, TEST_WORKING_DIRECTORY, TEST_ANALYSIS_NAME)        
        drill_sim.build()
        evt_file = os.path.join(TEST_WORKING_DIRECTORY, TEST_ANALYSIS_NAME + '.evt')
        failures = check_file_contents(evt_file, EXPECTED_DRILLSIM_EVENT_FILE_TEXT)
        self.assertListEqual(failures, [])

    def test_build_adm_contents(self):
        """Tests that the event file created in the DrillSim directory has the correct contents.        
        
        """
        drill_sim = DrillSim(self.drill_string, self.event, self.solver_settings, TEST_WORKING_DIRECTORY, TEST_ANALYSIS_NAME)        
        pason_data = dripy.PasonData(TEST_PASON_DATA)
        drill_sim.get_pason_inputs(pason_data, show_plots=False)
        drill_sim.build()
        adm_file = os.path.join(TEST_WORKING_DIRECTORY, TEST_ANALYSIS_NAME + '.adm')
        n_adm_lines = len(open(adm_file,'r').readlines())
        expected_n_adm_lines = 12451
        self.assertEqual(n_adm_lines, expected_n_adm_lines)

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
            expected_contents.append(os.path.join(drill_sim.directory, tool['Property_File']))
        
        expected_contents.append(os.path.join(drill_sim.directory, drill_sim.string.top_drive['Property_File']))
        expected_contents.append(os.path.join(drill_sim.directory, drill_sim.string.parameters['Hole_Property_File']))

        actual_contents = glob.glob(os.path.join(drill_sim.directory, '*'))
        
        self.assertListEqual(sorted(actual_contents), sorted(expected_contents))
    
    def test_relativity_in_string_hole_reference(self):
        """Tests that the file references in the string file are relative to drill_sim.directory       
        """
        drill_sim = DrillSim(self.drill_string, self.event, self.solver_settings, TEST_WORKING_DIRECTORY, TEST_ANALYSIS_NAME)
        
        hole_filepath = adripy.get_TO_param(drill_sim.string_filename, 'Hole_Property_File')
        self.assertFalse(os.path.normpath(drill_sim.directory) in os.path.normpath(hole_filepath))

    def test_relativity_in_string_event_reference(self):
        """Tests that the file references in the string file are relative to drill_sim.directory       
        """
        drill_sim = DrillSim(self.drill_string, self.event, self.solver_settings, TEST_WORKING_DIRECTORY, TEST_ANALYSIS_NAME)
        
        event_filepath = adripy.get_TO_param(drill_sim.string_filename, 'Event_Property_File')
        self.assertFalse(os.path.normpath(drill_sim.directory) in os.path.normpath(event_filepath))

    def test_relativity_in_string_pdc_reference(self):
        """Tests that the file references in the string file are relative to drill_sim.directory       
        """
        drill_sim = DrillSim(self.drill_string, self.event, self.solver_settings, TEST_WORKING_DIRECTORY, TEST_ANALYSIS_NAME)
        
        _name, pdc_filepath, _so, _gn = adripy.get_tool_name(drill_sim.string_filename, 'pdc_bit', return_full_path=True)

        self.assertFalse(os.path.normpath(drill_sim.directory) in os.path.normpath(pdc_filepath))

    def test_input_deck_directory_contents(self):
        """Tests that the input deck (adm, acf, cmd files) are written to the directory
        """
        drill_sim = DrillSim(self.drill_string, self.event, self.solver_settings, TEST_WORKING_DIRECTORY, TEST_ANALYSIS_NAME)
        
        drill_sim.build()
        expected_contents = [
            drill_sim.event.filename,
            drill_sim.string_filename,
            drill_sim.solver_settings.filename,
            os.path.join(drill_sim.directory, drill_sim.adm_filename),
            os.path.join(drill_sim.directory, drill_sim.acf_filename),
            os.path.join(drill_sim.directory, drill_sim.cmd_filename),
            os.path.join(drill_sim.directory, 'aview.cmd'),
            os.path.join(drill_sim.directory, 'aview.log'),
            os.path.join(drill_sim.directory, 'build.cmd'),   
        ]

        for tool in drill_sim.string.tools:
            tool_file = tool['Property_File']
            expected_contents.append(os.path.join(drill_sim.directory, tool_file))
        expected_contents.append(os.path.join(drill_sim.directory, drill_sim.string.top_drive['Property_File']))
        expected_contents.append(os.path.join(drill_sim.directory, drill_sim.string.parameters['Hole_Property_File']))

        actual_contents = glob.glob(os.path.join(drill_sim.directory, '*'))
        
        # Remove the aview.cmd.bak file from the actual contents list
        if os.path.join(drill_sim.directory, 'aview.cmd.bak') in actual_contents:
            actual_contents.remove(os.path.join(drill_sim.directory, 'aview.cmd.bak'))

        # Remove the aview.loq file from the actual contents list
        if os.path.join(drill_sim.directory, 'aview.loq') in actual_contents:
            actual_contents.remove(os.path.join(drill_sim.directory, 'aview.loq'))

        self.assertListEqual(sorted(actual_contents), sorted(expected_contents))    

    def test_get_inputs_from_pason_gpm(self):
        """Tests that setting the inputs from a :class:`PasonData` object works.
        
        """        
        pason_data = dripy.PasonData(TEST_PASON_DATA)
        drill_sim = DrillSim(self.drill_string, self.event, self.solver_settings, TEST_WORKING_DIRECTORY, TEST_ANALYSIS_NAME)
        drill_sim.get_pason_inputs(pason_data, show_plots=False)
        
        self.assertListEqual(drill_sim.pason_inputs['gpm'][0][1000:1010], TEST_EXPECTED_CLEANED_GPM)

    def test_get_inputs_from_pason_rpm(self):
        """Tests that setting the inputs from a :class:`PasonData` object works.
        
        """        
        pason_data = dripy.PasonData(TEST_PASON_DATA)
        drill_sim = DrillSim(self.drill_string, self.event, self.solver_settings, TEST_WORKING_DIRECTORY, TEST_ANALYSIS_NAME)
        drill_sim.get_pason_inputs(pason_data, show_plots=False)
        
        self.assertListEqual(drill_sim.pason_inputs['rpm'][0][1000:1010], TEST_EXPECTED_CLEANED_RPM)

    def test_get_inputs_from_pason_wob(self):
        """Tests that setting the inputs from a :class:`PasonData` object works.
        
        """        
        pason_data = dripy.PasonData(TEST_PASON_DATA)
        drill_sim = DrillSim(self.drill_string, self.event, self.solver_settings, TEST_WORKING_DIRECTORY, TEST_ANALYSIS_NAME)
        drill_sim.get_pason_inputs(pason_data, show_plots=False)
        
        self.assertListEqual(drill_sim.pason_inputs['wob'][0][1000:1010], TEST_EXPECTED_CLEANED_WOB)

    def test_get_inputs_from_pason_rop(self):
        """Tests that setting the inputs from a :class:`PasonData` object works.
        
        """        
        pason_data = dripy.PasonData(TEST_PASON_DATA)
        drill_sim = DrillSim(self.drill_string, self.event, self.solver_settings, TEST_WORKING_DIRECTORY, TEST_ANALYSIS_NAME)
        drill_sim.get_pason_inputs(pason_data, show_plots=False)
        
        self.assertListEqual(drill_sim.pason_inputs['rop'][0][1000:1010], TEST_EXPECTED_CLEANED_ROP)
    
    def test_clean_pason_data_gpm(self):
        """Tests that :meth:`clean_pason` returns the expected values for the gpm signal
        
        """
        pason_data = dripy.PasonData(TEST_PASON_DATA)
        signal, _time = DrillSim.clean_pason(pason_data, 'gpm', show_plot=False)
        
        # # Plot for confirmation
        # pason_data.plt.plot(pason_data.time, pason_data.gpm)
        # pason_data.plt.plot(_time, signal)
        # pason_data.plt.show()

        self.assertListEqual(signal[1000:1010], TEST_EXPECTED_CLEANED_GPM)
    
    def test_clean_pason_data_rpm(self):
        """Tests that :meth:`clean_pason` returns the expected values for the rpm signal
        
        """
        pason_data = dripy.PasonData(TEST_PASON_DATA)
        signal, _time = DrillSim.clean_pason(pason_data, 'rpm', show_plot=False)
        
        # # Plot for confirmation
        # pason_data.plt.plot(pason_data.time, pason_data.rpm)
        # pason_data.plt.plot(_time, signal)
        # pason_data.plt.show()

        self.assertListEqual(signal[1000:1010], TEST_EXPECTED_CLEANED_RPM)
    
    def test_clean_pason_data_wob(self):
        """Tests that :meth:`clean_pason` returns the expected values for the wob signal
        
        """
        pason_data = dripy.PasonData(TEST_PASON_DATA)
        signal, _time = DrillSim.clean_pason(pason_data, 'wob', show_plot=False)
        
        # # Plot for confirmation
        # pason_data.plt.plot(pason_data.time, pason_data.wob)
        # pason_data.plt.plot(_time, signal)
        # pason_data.plt.show()

        self.assertListEqual(signal[1000:1010], TEST_EXPECTED_CLEANED_WOB)
    
    def test_clean_pason_data_rop(self):
        """Tests that :meth:`clean_pason` returns the expected values for the rop signal
        
        """
        pason_data = dripy.PasonData(TEST_PASON_DATA)
        signal, _time = DrillSim.clean_pason(pason_data, 'rop', show_plot=False)
        
        # # Plot for confirmation
        # pason_data.plt.plot(pason_data.time, pason_data.rop)
        # pason_data.plt.plot(_time, signal)
        # pason_data.plt.show()

        self.assertListEqual(signal[1000:1010], TEST_EXPECTED_CLEANED_ROP)

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
            
if __name__ == '__main__':
    unittest.main()
