import unittest
import os

import matplotlib.pyplot as plt

from adamspy.waterfall import waterfall

RESULTS_FILE = os.path.join(os.getcwd(), 'test', 'files', 'waterfall_files', 'LC_3.req')

RESULT = 'cust_response_2_vel'
RESULT_COMPONENT = 'X'
FIGURE_FOLDER = os.path.join(os.getcwd(), 'test', 'files', 'waterfall_files', 'figures')

class Test_Waterfall(unittest.TestCase):

    def setUp(self):
        self.picture_file = os.path.join(FIGURE_FOLDER, f'{os.path.splitext(os.path.split(RESULTS_FILE)[-1])[0]}_{RESULT}_{RESULT_COMPONENT}_.png')
        
        # Make waterfall
        self.fig = waterfall.fft_watefall(RESULTS_FILE, RESULT, RESULT_COMPONENT, percent_overlap=75, n_fft=128, t_min=6.25, t_max=10, input_res='response_1_vel', input_comp='R3', response_unit='mm/s', order_lines=[1, 4, 10, 40, 63], title=RESULT, z_scale='dB', f_range=[0, 500])
        
    def test_human_approval(self):
        plt.show()     
        self.assertTrue(True)
    
    def tearDown(self):
        plt.close()

        try:
            os.remove(self.picture_file)
        except FileNotFoundError:
            pass
