"""Tests related to the DrillEvent class
"""

import unittest
import os
from test import *
    
from adamspy import adripy #pylint: disable=wrong-import-position

class Test_ReadThenWrite(unittest.TestCase):

    def setUp(self):        
        # Create a configuration file for testing
        adripy.create_cfg_file(TEST_CONFIG_FILENAME, [TEST_DATABASE_PATH])
        
        self.written_event_file_2018 = os.path.join(os.getcwd(), 'test', 'files', 'read_then_write_2018.evt')
        self.written_event_file_2019 = os.path.join(os.getcwd(), 'test', 'files', 'read_then_write_2019.evt')

        for file in [self.written_event_file_2018, self.written_event_file_2019]:
            try:
                os.remove(file)
            except Exception:                                               # pylint: disable=broad-except
                pass

    def test_read_from_file_2018(self):
        """Tests that the parameters in the string are correct after a string is read from a file.
        """
        
        # Create an event object
        event_file = os.path.join(f'<{TEST_DATABASE_NAME}>', 'events.tbl', TEST_EVENT_NAME + '.evt')

        # Read new parameters into the drill string object from a file
        event_from_file = adripy.DrillEvent.read_from_file(event_file)
        
        params = dict(event_from_file.parameters)
        params.pop('_DYNAMICS')
        params.pop('_MOTOR')
        params.pop('_NPERREV')
        params.pop('_FLOW_RATE')
        params.pop('_ROP')
        params.pop('_ROTARY_RPM')
        params.pop('_WOB')

        self.assertDictEqual(params, TEST_EXPECTED_EVENT_TO_PARAMETERS)
    
    def test_read_from_file_2019_2(self):        
        # Create an event object
        event_file = os.path.join(f'<{TEST_DATABASE_NAME}>', 'events.tbl', TEST_EVENT_NAME_2019_2 + '.evt')

        # Read new parameters into the drill string object from a file
        event_from_file = adripy.DrillEvent.read_from_file(event_file)
        
        params = dict(event_from_file.parameters)
        params.pop('_DYNAMICS')
        params.pop('_MOTOR')
        params.pop('_NPERREV')
        params.pop('_FLOW_RATE')
        params.pop('_ROP')
        params.pop('_ROTARY_RPM')
        params.pop('_WOB')

        self.assertDictEqual(params, TEST_EXPECTED_EVENT_TO_PARAMETERS)

    def test_read_then_write_2018(self):
        event_file = os.path.join(f'<{TEST_DATABASE_NAME}>', 'events.tbl', TEST_EVENT_NAME + '.evt')
        event = adripy.event.DrillEvent.read_from_file(event_file)

        event.write_to_file(filename=self.written_event_file_2018)
        failures = check_file_contents(self.written_event_file_2018, EXPECTED_READ_THEN_WRITE_EVENT_TEXT)
        self.assertListEqual(failures, [])

    def test_read_then_write_2019(self):
        event_file = os.path.join(f'<{TEST_DATABASE_NAME}>', 'events.tbl', TEST_EVENT_NAME_2019_2 + '.evt')
        event = adripy.event.DrillEvent.read_from_file(event_file)

        event.write_to_file(filename=self.written_event_file_2019)
        failures = check_file_contents(self.written_event_file_2019, EXPECTED_READ_THEN_WRITE_EVENT_TEXT)
        self.assertListEqual(failures, [])

    

    def tearDown(self):
        for file in [self.written_event_file_2018, self.written_event_file_2019]:
            try:
                os.remove(file)
            except Exception:                                               # pylint: disable=broad-except
                pass
        

class Test_EventFile(unittest.TestCase):
    """
    Tests that adripy can correctly write an event file
    """
    maxDiff = None
    def setUp(self):
        
        # Create a configuration file for testing
        adripy.create_cfg_file(TEST_CONFIG_FILENAME, [TEST_DATABASE_PATH])

        # Create event file object
        self.event = adripy.DrillEvent(TEST_CREATED_EVENT_NAME, 4000, 4)
        
        # Add ramp parameters to event file object
        self.event.add_ramp('FLOW_RATE', 1, 10, 500, clear_existing=True)
        self.event.add_ramp('ROTARY_RPM', 10, 15, 60, clear_existing=True)
        self.event.add_ramp('WOB', 30, 10, 50000, clear_existing=True)
        self.event.add_ramp('ROP', 35, 10, 100, clear_existing=True)   

        # Add simulation steps to event file object
        self.event.add_simulation_step(10, clear_existing=True)
        self.event.add_simulation_step(100)     

        # Write an event file from the event file object
        self.event.write_to_file(cdb=TEST_DATABASE_NAME)

    def test_validate_with_an_empty_table(self):
        """Tests if :meth:`DrillEvent.validate` returns False when one of the table parameters is not set.        
        """
        event = adripy.DrillEvent(TEST_CREATED_EVENT_NAME, 4000, 4)
        event.add_ramp('FLOW_RATE', 1, 10, 500, clear_existing=True)
        event.add_ramp('ROTARY_RPM', 10, 15, 60, clear_existing=True)
        event.add_ramp('WOB', 30, 10, 50000, clear_existing=True)
        
        validated = event.validate()
        self.assertFalse(validated)
    
    def test_read_from_file_2019_2_WOB_UNITS(self):        
        # Create an event object
        event_file = os.path.join(f'<{TEST_DATABASE_NAME}>', 'events.tbl', TEST_EVENT_NAME_2019_2 + '.evt')

        # Read new parameters into the drill string object from a file
        event_from_file = adripy.DrillEvent.read_from_file(event_file)
        
        params = dict(event_from_file.parameters)

        self.assertEqual([p for p in params['_WOB']][0][2], 50000.0)
    
    def test_read_from_file_2018_WOB_UNITS(self):        
        # Create an event object
        event_file = os.path.join(f'<{TEST_DATABASE_NAME}>', 'events.tbl', TEST_EVENT_NAME + '.evt')

        # Read new parameters into the drill string object from a file
        event_from_file = adripy.DrillEvent.read_from_file(event_file)
        
        params = dict(event_from_file.parameters)

        self.assertEqual([p for p in params['_WOB']][0][2], 50000.0)
    

    
    def test_write_event_file(self):
        """
        Tests if the event file was written correctly.
        """
        # Check content of created event file
        failures = check_file_contents(TEST_CREATED_EVENT_FILENAME, EXPECTED_EVENT_FILE_TEXT)        
            
        self.assertListEqual([], failures)

    def tearDown(self):

        # Delete test config file
        os.remove(TEST_CONFIG_FILENAME)
        os.environ['ADRILL_USER_CFG'] = os.path.join(os.environ['USERPROFILE'], '.adrill.cfg')

        # Delete the test event file
        os.remove(TEST_CREATED_EVENT_FILENAME)

if __name__ == '__main__':
    unittest.main()
