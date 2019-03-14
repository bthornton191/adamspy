import unittest
import os
from adamspy.postprocess import xml

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
        self.requests, self.units = xml.get_results(TEST_EXISTING_RES_FILE, TEST_REQUESTS_TO_GET, TEST_REQUEST_TIME_MIN, TEST_REQUEST_TIME_MAX)

    def test_get_results_requests(self):       
        """Tests if `requests` returned by :meth:`xml.get_results` is as expected.

        """
        self.assertDictEqual(self.requests, TEST_EXPECTED_REQUESTS)

    def test_get_results_units(self):       
        """Tests if `units` returned by :meth:`xml.get_results` is as expected.

        """
        self.assertDictEqual(self.units, TEST_EXPECTED_REQUEST_UNITS)
    
    def test_get_results_all(self):    
        _requests, _units = xml.get_results(TEST_EXISTING_RES_FILE, t_min=TEST_REQUEST_TIME_MIN, t_max=TEST_REQUEST_TIME_MAX)
        
    def tearDown(self):
        return