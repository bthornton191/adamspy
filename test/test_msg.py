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
        
        self.assertListEqual(matches, [('0.00000E+00', '20.06'), ('2.00000E-01', '8:40')])

    def test_get_timestamps(self):
        timestamps = get_timestamps(TEST_MSG_FILE)
        self.assertListEqual(timestamps, [[0.0, 1.13], [1.0, 1.75], [2.0, 2.33], [3.0, 2.73], [4.0, 3.25], [5.0, 3.89], [6.0, 4.47], [7.0, 4.95], [8.0, 5.47], [9.0, 5.78], [10.0, 6.16], [10.0, 6.16], [19.0, 10.8], [28.0, 23.56], [37.0, 32.61], [46.0, 42.47], [55.0, 51.94], [64.0, 62.0], [73.0, 72.0], [82.0, 83.0], [91.0, 93.0], [100.0, 102.0]])

    def test_check_if_finished(self):
        finished = check_if_finished(TEST_MSG_FILE)
        self.assertTrue(finished)

    def test_check_if_unfinished(self):
        finished = check_if_finished(TEST_UNFINISHED_MSG_FILE)
        self.assertFalse(finished)

    def tearDown(self):
        return


