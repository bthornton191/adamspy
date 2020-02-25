import unittest
import os
from adamspy.postprocess import xml
from adamspy.postprocess import launch_ppt
from adamspy.postprocess import _get_model_name_from_cmd

from test import *

class Test_ShrinkResults(unittest.TestCase):

    def setUp(self):
        # Delete existing shrunk results file
        if os.path.exists(TEST_EXISTING_RES_FILE.replace('.res', '') + xml.SHRUNK_RES_SUFFIX +'.res'):
            os.remove(TEST_EXISTING_RES_FILE.replace('.res', '') + xml.SHRUNK_RES_SUFFIX +'.res')
        
        # Create shrunk results file
        xml.shrink_results(TEST_EXISTING_RES_FILE, TEST_REQUESTS_TO_GET, TEST_REQUEST_TIME_MIN, TEST_REQUEST_TIME_MAX)
        
    def test_shrink_results_exist(self):
        """Tests if the shrunken results file exists
        
        """        
        # Check that the shrunk results file exists
        results_exist = os.path.exists(TEST_EXISTING_RES_FILE.replace('.res', '') + xml.SHRUNK_RES_SUFFIX +'.res')
        
        # Assert that the shrunk results file exists
        self.assertTrue(results_exist)

    def tearDown(self):
        # Delete shrunk results file
        if os.path.exists(TEST_EXISTING_RES_FILE.replace('.res', '') + xml.SHRUNK_RES_SUFFIX +'.res'):
            os.remove(TEST_EXISTING_RES_FILE.replace('.res', '') + xml.SHRUNK_RES_SUFFIX +'.res')

class Test_GetResults(unittest.TestCase):

    def setUp(self):
        # Get results from a results file
        self.requests, self.units = xml.get_results(TEST_EXISTING_RES_FILE, TEST_REQUESTS_TO_GET, TEST_REQUEST_TIME_MIN, TEST_REQUEST_TIME_MAX, return_units=True)

    def test_get_results_requests(self):       
        """Tests if `requests` returned by :meth:`xml.get_results` is as expected.

        """
        self.assertDictEqual(self.requests, TEST_EXPECTED_REQUESTS)

    def test_get_results_units(self):       
        """Tests if `units` returned by :meth:`xml.get_results` is as expected.

        """
        self.assertDictEqual(self.units, TEST_EXPECTED_REQUEST_UNITS)
    
    def test_get_results_all(self):    
        _requests, _units = xml.get_results(TEST_EXISTING_RES_FILE, t_min=TEST_REQUEST_TIME_MIN, t_max=TEST_REQUEST_TIME_MAX, return_units=True)
        
    def tearDown(self):
        return

class Test_GetResultsIterparse(unittest.TestCase):

    def setUp(self):
        # Get results from a results file
        self.requests, self.units = xml.get_results(TEST_EXISTING_RES_FILE, TEST_REQUESTS_TO_GET, TEST_REQUEST_TIME_MIN, TEST_REQUEST_TIME_MAX, return_units=True, use_iterparse=True)

    def test_get_results_requests(self):       
        """Tests if `requests` returned by :meth:`xml.get_results` is as expected.

        """
        self.assertDictEqual(self.requests, TEST_EXPECTED_REQUESTS)

    def test_get_results_units(self):       
        """Tests if `units` returned by :meth:`xml.get_results` is as expected.

        """
        self.assertDictEqual(self.units, TEST_EXPECTED_REQUEST_UNITS)
    
    def test_get_results_all(self):    
        _requests, _units = xml.get_results(TEST_EXISTING_RES_FILE, t_min=TEST_REQUEST_TIME_MIN, t_max=TEST_REQUEST_TIME_MAX, return_units=True, use_iterparse=True)
        
    def tearDown(self):
        return

class Test_LaunchPPT(unittest.TestCase):

    def setUp(self):
        return

    def test_get_model_name_from_cmd(self):
        mod_name = _get_model_name_from_cmd(TEST_EXISTING_CMD_FILE)
        self.assertEqual(mod_name, TEST_EXPECTED_MODNAME_IN_CMD)

    def test_pptAS_exists(self):
        directory = launch_ppt(TEST_EXISTING_RES_FILE)
        expected_directory = os.path.split(TEST_EXISTING_RES_FILE)[0]
        self.assertEqual(directory, expected_directory)

    def tearDown(self):
        return
        