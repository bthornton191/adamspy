import os
import time
import shutil
import unittest

from adamspy.adamspy import set_n_threads, get_n_threads, solve

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
            
class Test_Solve(unittest.TestCase):

    def setUp(self):
        for file in glob.glob(os.path.join(EXISTING_MODEL_DIR, '*')):
            ext = os.path.splitext(file)[-1]
            if ext not in ['.acf', '.adm', '.xmt_txt']:
                try:
                    os.remove(file)
                except FileNotFoundError:               
                    pass
                except PermissionError:
                    pass

    def test_solve_wait(self):
        """Tests that adamspy.adamspy.solve() works when wait=True
        
        """
        acf_file = glob.glob(os.path.join(EXISTING_MODEL_DIR, '*.acf'))[0]
        solve(acf_file, wait=True)
        res_files = glob.glob(os.path.join(EXISTING_MODEL_DIR, '*.res'))
        self.assertTrue(res_files != [])

    
    def test_solve_dont_wait(self):
        """Tests that adamspy.adamspy.solve() works when wait=False
        
        """
        acf_file = glob.glob(os.path.join(EXISTING_MODEL_DIR, '*.acf'))[0]
        proc = solve(acf_file, wait=False)
        
        # Check that the res file isn't there yet
        res_files = glob.glob(os.path.join(EXISTING_MODEL_DIR, '*.res'))
        if res_files != []:
            self.fail('Solve did not wait!')
        
        # Wait 60 seconds for the res file to show up
        for _i in range(60):            
            res_files = glob.glob(os.path.join(EXISTING_MODEL_DIR, '*.res'))
            if res_files != []:
                break 
            time.sleep(1)
    
        self.assertTrue(res_files != [])
       
    def tearDown(self):
        for file in glob.glob(os.path.join(EXISTING_MODEL_DIR, '*')):
            ext = os.path.splitext(file)[-1]
            if ext not in ['.acf', '.adm', '.xmt_txt']:
                try:
                    os.remove(file)
                except FileNotFoundError:               
                    pass
                except PermissionError:
                    pass
