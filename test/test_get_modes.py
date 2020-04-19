import os
import unittest


from adamspy.postprocess.msg import get_modes

TEST_MSG_FILE = os.path.join(os.getcwd(), 'test', 'files', 'get_modes', 'LC_4_int_modal.msg')

class Test_GetModes(unittest.TestCase):

    def setUp(self):
        self.modes_unsorted = get_modes(TEST_MSG_FILE, sort_by_wn=False, underdamped_only=False)
        self.modes_sorted = get_modes(TEST_MSG_FILE)

    def test_first_ten_reals(self):        
        first_ten_reals = self.modes_unsorted['Real'][:10]
        expected_reals = [
            4.32782E+00,
            7.56550E+00,
            -8.63392E+00,
            -1.20591E+01,
            -1.23835E+01,
            -1.23848E+01,
            -1.25394E+01,
            -1.26904E+01,
            -1.27002E+01,
            -1.28625E+01
        ]

        self.assertListEqual(first_ten_reals, expected_reals)

    def test_first_ten_freqs(self):        
        first_ten_reals = self.modes_unsorted['Wn'][:10]
        expected_reals = [4.32782, 7.5655, 8.63392, 12.0591, 12.3835, 12.3848, 12.5394, 12.6904, 12.7002, 12.8625]

        self.assertListEqual(first_ten_reals, expected_reals)

    def test_last_real(self):        
        last_real = self.modes_unsorted['Real'][-1]
        expected_real = -1.59054E+04

        self.assertEqual(last_real, expected_real)

    def test_first_ten_freqs_sorted(self):
        first_ten_reals = self.modes_sorted['Wn'][:10]
        expected_reals = [10.315066083249297, 13.185346399605889, 14.901002538138165, 15.890317234965904, 15.891802089691907, 15.900500613152028, 15.903637885528738, 15.904800161856416, 15.91000179855844, 15.910600035681854]

        self.assertListEqual(first_ten_reals, expected_reals)    

    def tearDown(self):
        return
        