import os
import glob
import shutil
import unittest

import matplotlib.pyplot as plt
import pandas as pd

from adamspy.postprocess.ppt import manually_remove_spikes, filter_results, get_results

TEST_ANALYSIS_DIR = os.path.join('test', 'files', 'real_analysis_with_spikes')

LOWER_TORQUE_MEAS_NAME = 'clutch_torque_lower'
UPPER_TORQUE_MEAS_NAME = 'clutch_torque_upper'
UPPER_SPRING_STRESS_MEAS = {f'spring_stress_U{el+2}': ['Q'] for el in range(30)}
LOWER_SPRING_STRESS_MEAS = {f'spring_stress_L{el+2}': ['Q'] for el in range(28)}
SPRING_STRESS_MEAS = {**LOWER_SPRING_STRESS_MEAS, **UPPER_SPRING_STRESS_MEAS}
MEASURES = {**SPRING_STRESS_MEAS, LOWER_TORQUE_MEAS_NAME: ['Q'], UPPER_TORQUE_MEAS_NAME: ['Q']}

class Test_FilterSpikes(unittest.TestCase):

    def setUp(self):
        self.temp_ans_dir = TEST_ANALYSIS_DIR + '_tmp'        
        self._setup_files()
        self.res_to_edit = glob.glob(os.path.join(self.temp_ans_dir, '*.res'))[0]

    def test_filter_spikes(self):
        filtered_results, raw_results = filter_results(self.res_to_edit, MEASURES, 20, return_raw=True)       
        df_filt = convert_dict_to_df(filtered_results).set_index('time', drop=True)
        df_raw = convert_dict_to_df(raw_results).set_index('time', drop=True)

        for meas in SPRING_STRESS_MEAS.keys():
            _fig, ax = plt.subplots()
            ax.plot(df_filt[meas]/1000, label='filtered')
            ax.plot(df_raw[meas]/1000, '.', markersize=5, alpha=.8, label='raw')
            ax.set_xlim([4, 5.5])
            ax.grid()
            ax.set_ylabel('Stress (ksi)')
            ax.set_xlabel('Time (sec)')
            ax.legend()
        
        for meas in [LOWER_TORQUE_MEAS_NAME, UPPER_TORQUE_MEAS_NAME]:
            _fig, ax = plt.subplots()
            ax.plot(df_filt[meas], label='filtered')      
            ax.plot(df_raw[meas], '.', markersize=5, alpha=.8, label='raw')               
            ax.set_xlim([4, 5.5])         
            ax.grid()
            ax.set_xlabel('Time (sec)')
            ax.set_ylabel('Torque (lbf-in)')
            ax.legend()

        plt.show()
        self.assertTrue(False)

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



def convert_dict_to_df(data):
    reform = {'time': data['time'], **{f'{outer_key}': values for outer_key, inner_dict in data.items() if outer_key != 'time' for inner_key, values in inner_dict.items()}}
    return pd.DataFrame(reform)