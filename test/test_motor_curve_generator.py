import unittest

from adamspy.adripy.utilities import get_motor_curve

import matplotlib.pyplot as plt

class Test_MotorCurveGenerator(unittest.TestCase):

    def setUp(self):
        return

    def test_motor_curve(self):
        # Set the parameters
        stall_torque = 20
        max_torque = 15
        max_rpm = 100
        min_rpm = 80

        # Get the curves
        nor_rpm, esr_rpm, nor_torque, esr_torque = motor_curve(stall_torque, max_torque, max_rpm, min_rpm)
        
        # Plot the curves
        plt.plot([rpm + min_rpm for rpm in nor_rpm], nor_torque)
        plt.plot(esr_rpm, esr_torque, linestyle='--')        

        expected_nor_torque = [
            15.0, 
            14.9625, 
            14.85, 
            14.6625, 
            14.4, 
            14.0625, 
            13.65, 
            13.1625, 
            12.6, 
            11.9625, 
            11.25, 
            10.4625, 
            9.600000000000001, 
            8.662500000000001, 
            7.65, 
            6.5625, 
            5.4, 
            4.1625, 
            2.8499999999999996, 
            1.4625000000000004, 
            0.0]

        self.assertListEqual(nor_torque, expected_nor_torque)

    def tearDown(self):
        return