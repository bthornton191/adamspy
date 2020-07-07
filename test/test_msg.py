import os
import unittest

from adamspy.postprocess.msg import TIMESTAMP_PATTERN, get_timestamps, check_if_finished

TEST_TIMESTAMP = '''Simulation      Step        Function    Cumulative   Integration     CPU
       Time         Size       Evaluations  Steps Taken    Order        time
    ___________  ___________   ___________  ___________   _________    ________
    0.00000E+00  2.00000E-04            0            0       1           20.06 
    2.00000E-01  1.26086E-04         8463         2226       2            8:40 
'''

TEST_MSG_FILE = os.path.join(os.getcwd(), 'test', 'files', 'test_analysis_1.msg')
TEST_UNFINISHED_MSG_FILE = os.path.join(os.getcwd(), 'test', 'files', 'test_analysis_1_unfinished.msg')

class Test_Msg(unittest.TestCase):

    def setUp(self):
        return

    def test_timestamp_pattern(self):
        matches = TIMESTAMP_PATTERN.findall(TEST_TIMESTAMP)        
        self.assertListEqual(matches, [('0.00000E+00', '2.00000E-04', '0', '0', '1', '20.06'), ('2.00000E-01', '1.26086E-04', '8463', '2226', '2', '8:40')])

    def test_get_timestamps(self):
        timestamps = get_timestamps(TEST_MSG_FILE)
        self.assertListEqual(timestamps, [[0.0, 0.00025, 0, 0, 1, 1.13], [1.0, 0.005, 436, 215, 2, 1.75], [2.0, 0.005, 876, 435, 2, 2.33], [3.0, 0.005, 1316, 655, 2, 2.73], [4.0, 0.005, 1756, 875, 2, 3.25], [5.0, 0.005, 2196, 1095, 2, 3.89], [6.0, 0.005, 2636, 1315, 2, 4.47], [7.0, 0.005, 3076, 1535, 2, 4.95], [8.0, 0.005, 3516, 1755, 2, 5.47], [9.0, 0.005, 3916, 1955, 2, 5.78], [10.0, 0.005, 4316, 2155, 2, 6.16], [10.0, 0.005, 4316, 2155, 2, 6.16], [19.0, 0.005, 9304, 4077, 2, 10.8], [28.0, 0.005, 19167, 6608, 2, 23.56], [37.0, 0.005, 27379, 8692, 2, 32.61], [46.0, 0.00473321, 35792, 10814, 2, 42.47], [55.0, 0.00111111, 44081, 12902, 2, 51.94], [64.0, 0.005, 52294, 14980, 2, 62.0], [73.0, 0.005, 60684, 17135, 2, 72.0], [82.0, 0.005, 69198, 19298, 2, 83.0], [91.0, 0.005, 77634, 21461, 2, 93.0], [100.0, 0.005, 86064, 23606, 2, 102.0]])

    def test_check_if_finished(self):
        finished = check_if_finished(TEST_MSG_FILE)
        self.assertTrue(finished)

    def test_check_if_unfinished(self):
        finished = check_if_finished(TEST_UNFINISHED_MSG_FILE)
        self.assertFalse(finished)

    def tearDown(self):
        return
