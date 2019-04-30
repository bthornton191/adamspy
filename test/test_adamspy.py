import os
import shutil
import unittest

from adamspy.adamspy import set_n_threads, get_n_threads

from test import *

TEST_ADM_FILE_TO_CHANGE = os.path.join(os.path.split(TEST_ADM_FILE)[0], 'test_modified.adm')

class Test_SetNThreads(unittest.TestCase):

    def setUp(self):
        # Delete the modified adm file if it exists
        try:
            os.remove(TEST_ADM_FILE_TO_CHANGE)
        except FileNotFoundError:
            pass
            
        # Copy the adm file
        shutil.copyfile(TEST_ADM_FILE, TEST_ADM_FILE_TO_CHANGE)               

    def test_set_n_threads(self):
        """Tests that set_n_threads correctly changes the adm file.

        """
        set_n_threads(TEST_ADM_FILE_TO_CHANGE, 10)
        with open(TEST_ADM_FILE_TO_CHANGE, 'r') as fid:
            lines = fid.readlines()
        
        threads_line = lines[12336].strip()

        self.assertEqual(threads_line, ', NTHREADS = 10')           

    def test_get_n_threads(self):
        """Tests that get_n_threads correctly gets the number of threads defined in an adm file.

        """
        n_threads = get_n_threads(TEST_ADM_FILE)
        self.assertEqual(n_threads, 4)

    def tearDown(self):
        # Delete the modified adm file if it exists
        try:
            os.remove(TEST_ADM_FILE_TO_CHANGE)
        except FileNotFoundError:
            pass
            