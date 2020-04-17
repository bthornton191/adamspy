import unittest
import os
from adamspy.postprocess import xml
from adamspy.postprocess import launch_ppt
from adamspy.postprocess import _get_model_name_from_cmd
from adamspy.postprocess.ppt import get_lunar_results, LUNAR_SCRIPT_NAME, get_results

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

class Test_GetResultsPPT(unittest.TestCase):

    TEST_REQUEST_FILE = os.path.join(os.getcwd(), 'test', 'files', 'test_request_file.req')
    def setUp(self):
        return

    def test_get_request(self):
        reqs_to_get = {'response_1_disp': ['X', 'MAG', 'R2', 'AMAG']}
        results = get_results(self.TEST_REQUEST_FILE, reqs_to_get)
        expected_results = {
            'time': [13.0, 13.001000000000001, 13.002, 13.003, 13.004, 13.004999999999999, 13.006],
            'response_1_disp': {
                'X': [3.5, 3.4999599999999997, 3.4999599999999997, 3.4999599999999997, 3.4999599999999997, 3.4999499999999997, 3.4999499999999997],
                'MAG': [3.500000000008821, 3.499960000008402, 3.4999600000085374, 3.4999600000085365, 3.499960000008617, 3.4999500000086563, 3.4999500000085777],
                'R2': [2.3997399999999995e-07, 1.80854e-06, 1.6657699999999998e-06, 1.5456599999999998e-06, 1.44435e-06, 1.3732599999999998e-06, 1.3368999999999999e-06],
                'AMAG': [38.76307707729096, 88.32065382287432, 85.85459677245011, 84.106517786495, 82.52081848120751, 81.60156028408772, 81.61501704525708]
                }
            }

        self.assertDictEqual(results, expected_results)

    def tearDown(self):
        return


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
        
class Test_GetResultsAview(unittest.TestCase):

    def setUp(self):
        self.res_files = [TEST_EXISTING_GENERIC_RES_FILE]
        self.output_file = os.path.join(os.path.dirname(TEST_EXISTING_GENERIC_RES_FILE), 'lunar_Y_file.csv')
        self.reqs_to_get = {'JOINT_1': ['FY']}
        self.t_min = 10
        self.t_max = 19.9


    def test_python_script_contents(self):
        """Checks that the python script that gets passed to aview is written correctly.

        """
        get_lunar_results(self.res_files, self.reqs_to_get, self.t_min, self.t_max, self.output_file, _just_write_script=True)
        directory = os.path.dirname(self.res_files[0])
        
        failures = check_file_contents(os.path.join(directory, LUNAR_SCRIPT_NAME), EXPECTED_LUNAR_PYTHON_SCRIPT.format(**{'reqs_to_get': self.reqs_to_get, 'res_files': self.res_files, 'output_file': self.output_file, 't_min': self.t_min, 't_max': self.t_max}))
        self.assertListEqual(failures, [])

    def test_lunar_y_file(self):
        """Tests that the lunar Y file is written correctly.

        """
        self.res_output_files = get_lunar_results(self.res_files, self.reqs_to_get, self.t_min, self.t_max, self.output_file)

        failures = []

        for res_output_file, expected_contents in zip(self.res_output_files, EXPECTED_LUNAR_Y_FILES):
            failures.append(check_file_contents(res_output_file, expected_contents))

        self.assertListEqual(failures, [])

    def tearDown(self):
        for file in self.res_output_files:
            try:
                os.remove(file)
            except FileNotFoundError:
                pass
            except PermissionError:
                pass

EXPECTED_LUNAR_Y_FILES = [
    '''
''',
    '''
'''
]

#pylint: disable=anomalous-backslash-in-string
EXPECTED_LUNAR_PYTHON_SCRIPT = '''import os

import numpy as np
import Adams

def get_lunar_results(res_files, reqs_to_get, t_min, t_max, output_file):

    res_dict = {{}}

    for i_res, res_file in enumerate(res_files):
        
        Adams.execute_cmd('def com echo=on')

        # Load Results
        Adams.execute_cmd(f'file results read file_name="{{res_file}}"')

        # Get the model object
        mod = Adams.Models.get([mn for mn in Adams.Models][0])
        
        # Get the analysis object
        ans = mod.Analyses.get([an for an in mod.Analyses][0])
            
        # Get time and set indices of results to export 
        time = ans.results.get('TIME').values
        _time_np = np.asarray(time)
        i_min = np.argmax(_time_np >= t_min)
        i_max = np.argmax(_time_np >= t_max)

        if i_res == 0:
            # Get a name for the output time file
            time_output_file = os.path.splitext(output_file)[0] + '_time' + os.path.splitext(output_file)[-1]

            # Write the time values
            with open(time_output_file, 'w') as fid:
                fid.write(f'{{time}}'.replace('[','').replace(']','').replace(' ',''))
        
        # Define first two columns of the output string
        res_dict[os.path.split(res_file)[-1]] = {{}}
        
        for res_name, res_comps in reqs_to_get.items():

            # Get the result object handle
            res = ans.results.get(res_name)

            for res_comp in res_comps:

                values = res.get(res_comp).values[i_min:i_max]

                full_res_name = f'{{res_name}}_{{res_comp}}'

                # Get a name for the output time file
                res_output_file = os.path.splitext(output_file)[0] + '_' + full_res_name + os.path.splitext(output_file)[-1]

                with open(res_output_file, 'w' if i_res==0 else 'a') as fid:
                    fid.write(f'{{values}}\\n'.replace('[','').replace(']','').replace(' ',''))    

        # Delete the model and results
        mod.destroy()          
                
if __name__ == 'aview_main':
    
    Adams.execute_cmd('def com echo=on')

    res_files = {res_files}
    reqs_to_get = {reqs_to_get}
    t_min = {t_min}
    t_max = {t_max}
    output_suffix = r'{output_file}'

    get_lunar_results(res_files, reqs_to_get, t_min, t_max, output_suffix)
    
    print('MESSAGE:  COMPLETE')
    sys.stdout.flush()
    Adams.execute_cmd('quit conf=no')

'''