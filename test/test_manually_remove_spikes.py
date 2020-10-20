import os
import glob
import shutil
import unittest

import matplotlib.pyplot as plt

from adamspy.postprocess.ppt import manually_remove_spikes

TEST_ANALYSIS_DIR = os.path.join('test', 'files', 'analysis_with_spikes')

class Test_ManuallyRemoveSpikes(unittest.TestCase):

    def setUp(self):
        self.temp_ans_dir = TEST_ANALYSIS_DIR + '_tmp'        
        self._setup_files()
        self.res_to_edit =os.path.join(self.temp_ans_dir, 'test_analysis_with_spikes.res')

    def test_spike_removed_from_results(self):
        results_to_clean = {'torque': ['Q']}
        results = manually_remove_spikes(self.res_to_edit, results_to_clean)
                
        self.assertLess(max(results['torque']['Q']), .01)

    def test_spike_removed_from_other_result_comps(self):
        results_to_clean = {'torque': ['Q'], 'torque_spike': ['FX', 'FY', 'FZ', 'TX', 'TY', 'TZ']}
        results = manually_remove_spikes(self.res_to_edit, results_to_clean)
        
        self.assertTrue(all([max(results['torque']['Q']) < .01, max(results['torque_spike']['TZ']) < .01]))

    def test_spike_removed_from_other_result_comps_without_checking(self):
        results_to_clean = {'torque': ['Q'], 'torque_spike': ['FX', 'FY', 'FZ', 'TX', 'TY', 'TZ']}
        results_to_check = {'torque_spike': ['FX', 'FY', 'FZ', 'TX', 'TY', 'TZ']}
        results = manually_remove_spikes(self.res_to_edit, results_to_clean, reqs_to_check=results_to_check)
        
        self.assertTrue(all([max(results['torque']['Q']) < .01, max(results['torque_spike']['TZ']) < .01]))
        
    def tearDown(self):
        """Deletes the temporary working directory.

        """
        shutil.rmtree(self.temp_ans_dir)
            
    def _setup_files(self):
        """Copies the test analysis files to a temporary working directory

        """
        if os.path.exists(self.temp_ans_dir) is True:
            shutil.rmtree(self.temp_ans_dir)

        os.makedirs(self.temp_ans_dir)
        
        for file in glob.glob(os.path.join(TEST_ANALYSIS_DIR, '*')):
            shutil.copyfile(file, os.path.join(self.temp_ans_dir, os.path.split(file)[-1]))   