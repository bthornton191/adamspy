import unittest
import os
from adamspy import adripy
from adamspy.adripy import tiem_orbit

class test_event_file(unittest.TestCase):
    """
    Tests that adripy can correctly write an event file
    """
    
    TEST_EVENT_NAME = '_test_event_'
    TEST_CDB = 'adrill_private'
    EVENT_FILENAME = adripy.get_full_path(os.path.join(f'<{TEST_CDB}>','events.tbl',f'{TEST_EVENT_NAME}.evt'))
    EXPECTED_EVENT_FILE_TEXT = """$ ==================================================================
$ This is the Adams Drill Event file which contains
$ the following data blocks:
$   [UNITS]
$   [DRIVE]
$   [MISC]
$ 
$  NOTA BENE: block and subblock titles MUST begin in column 1.
$  Comments also must begin in column 1.
$  ==================================================================
$-------------------------------------------------------------ADAMS_DRILL_HEADER
[ADAMS_DRILL_HEADER]
 File_Type  =  'event'
 File_Version  =  1.0
$--------------------------------------------------------------------------UNITS
[UNITS]
$  Adams Drill currently supports one units set: 
$  'Imperial' (foot, degree, pound force, pound mass, second)
 Units  =  'Imperial'
$--------------------------------------------------------------------------DRIVE
[DRIVE]
(GENERAL)
 Event_Name  =  '_test_event_'
$ Valid Drive Types: 'WITH_MOTOR', 'TOP_ONLY'
 Drive_Type  =  'WITH_MOTOR'
$ Either 'TOS' (default) or user-selected tool from drill string
 Measurement_Tool  =  'TOS'
 Start_Depth  =  4000
 Off_Bottom  =  4
$ 
 Initial_Drive_Torque  =  0
$ 
(TOP_DRIVE)
{Start_Time  Ramp_Duration  Delta_RPM}
10   15   60
$ 
$ MOTOR valid only for DRIVE_TYPE = WITH_MOTOR
(MOTOR)
 Motor_Type  =  '3D'
$ 
$ No user control of this parameter.
 Filter_Time_Constant  =  0.05
$ 
$ Note that the motor starts out straight for simulation purposes and
$ builds up to the full bend over the ramp time.  The bend is defined
$ in the tool description.  These values allow the static simulation to
$ proceed better.  *They should not be changed by the user.*
 Motor_Bend_Start  =  1.0
 Motor_Bend_Ramp  =  9.0
$ 
{Start_Time  Ramp_Duration  Delta_RPM}
0   1   1
$ 
$ PUMP_FLOW applies only to 3D motors; valid only for DRIVE_TYPE = WITH_MOTOR
$ Gallons/minute in imperial units; Liters/minute in metric units
(PUMP_FLOW)
{Start_Time  Ramp_Duration  Delta_Flow_Rate}
1   10   500
$ 
(WOB)
{Start_Time  Ramp_Duration  Delta_WOB}
30   10   50
$ 
(ROP)
{Start_Time  Ramp_Duration  Delta_ROP}
35   10   100
$---------------------------------------------------------------------------MISC
[MISC]
$ Enter MUD_DENSITY in pounds-mass per cubic foot for IMPERIAL units
$ Enter MUD_DENSITY in kilograms per cubic meter for METRIC units
 Mud_Density  =  75
 Impact_Damping_Penetration  =  0.005
 Impact_Exponent  =  1.05
 MWD_Pulsing  =  'On'
$ 
(NPERREV)
$ See Adams Drill documentation prior to switching NperRev 'on'
 NperRev  =  'off'
 N  =  1
 S_threshold  =  0.55
 C_hi  =  1.05
{Start_Time  Ramp_Duration}
0   1
$-----------------------------------------------------------------------DYNAMICS
[DYNAMICS]
$ Specify the simulation time and output rate in seconds
{End_Time  Output_Step_Size}
10   0.04200   0.0510   0.05100   0.05
$------------------------------------------------------------------------PLOT_4D
[PLOT_4D]
$ Select if 3D and 4D plotting is to be enabled (on/off).
$ If 3D/4D plotting is turned on, set time range and time increment at which
$ to take measurements ('Plotting_Interval'). Also specify where along the
$ string to measure (Start Distance and End Distance are relative to bit at 0).
$ One (1) contiguous block of not more than a 400 time measurements during the
$ simulation can be specified, for not more than one 5000ft (1500m) section
$ of the physically modeled string. (Equivalent Upper String not allowed.)
 Plotting_4D  =  'off'
 Start_Time  =  160
 End_Time  =  200
 Plotting_Interval  =  0.1
 Start_Distance  =  2.0
 End_Distance  =  100.0
    """

    def setUp(self):
        # Create event file object
        self.event_file = tiem_orbit.DrillEvent(self.TEST_EVENT_NAME, 4000, 4)
        
        # Add ramp parameters to event file object
        self.event_file.add_ramp('PUMP_FLOW', 1, 10, 500)
        self.event_file.add_ramp('TOP_DRIVE', 10, 15, 60)
        self.event_file.add_ramp('WOB', 30, 10, 50)
        self.event_file.add_ramp('ROP', 35, 10, 100)   

        # Add simulation steps to event file object
        self.event_file.add_simulation_step(10)
        self.event_file.add_simulation_step(100)     

        # Write an event file from the event file object
        self.event_file.write_to_file(cdb=self.TEST_CDB)
    
    def test_write_event_file(self):
        """
        Tests if the event file was written correctly.
        """
        # Read the event file
        with open(self.EVENT_FILENAME, 'r') as fid:
            lines = fid.readlines()
        
        # Initialize a list of failures
        failures = []

        # Loop through lines
        for actual_line, expected_line, line_num in zip(lines, self.EXPECTED_EVENT_FILE_TEXT.split('\n'), range(len(lines))):
            expected_line += '\n'
            
            # Test if lines are equal
            if actual_line != expected_line:
                failures.append('Event file mismatch (line {}): {} -- {}'.format(line_num, actual_line, expected_line))
            
        self.assertListEqual([], failures)

    def tearDown(self):
        # Delete the test event file
        os.remove(self.EVENT_FILENAME)
        return
        
if __name__ == '__main__':
    unittest.main()

