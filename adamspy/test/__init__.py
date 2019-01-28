import os
import glob

EXISTING_CDB_NAME = '_EXISTING_DATABASE_1'
EXISTING_CDB_PATH = os.path.join('C:\\', EXISTING_CDB_NAME + '.cdb')
NEW_CDB_NAME = '_NEW_DATABASE'
NEW_CDB_PATH = os.path.join('C:\\', NEW_CDB_NAME + '.cdb')
TEST_CONFIG_FILENAME = '_test_drill.cfg'    
TEST_CONFIG_FILEPATH = os.path.join(os.getcwd(), 'test', TEST_CONFIG_FILENAME)
CDB_TO_REMOVE_NAME = '_EXISTING_DATABASE_2'
CDB_TO_REMOVE_PATH = os.path.join('C:\\', CDB_TO_REMOVE_NAME + '.cdb')
EXAMPLE_STABILIZER_NAME = 'example_stabilizer'
TEST_DATABASE_NAME = 'example_database'
TEST_DATABASE_PATH = os.path.join(os.getcwd(), 'test', TEST_DATABASE_NAME + '.cdb')
    
TEST_CREATED_EVENT_NAME = '_test_event_'
TEST_CREATED_EVENT_FILENAME = os.path.join(TEST_DATABASE_PATH,'events.tbl', f'{TEST_CREATED_EVENT_NAME}.evt')

TEST_EVENT_NAME = 'test_event'
TEST_EVENT_FILE = os.path.join(f'<{TEST_DATABASE_NAME}>', 'events.tbl', TEST_EVENT_NAME + '.evt')

TEST_SOLVER_SETTINGS_NAME = 'test_solver_settings'

TEST_EXISTING_STRING_NAME = 'test_string'
TEST_STRING_NAME = 'test_string_1'
TEST_HOLE_NAME = 'test_hole'
TEST_HOLE_FILE = os.path.join(f'<{TEST_DATABASE_NAME}>', 'holes.tbl', TEST_HOLE_NAME + '.hol')
TEST_PDC_NAME = 'test_pdc'
TEST_PDC_FILE = os.path.join(f'<{TEST_DATABASE_NAME}>', 'pdc_bits.tbl', TEST_PDC_NAME + '.pdc')
TEST_STABILIZER_NAME = 'example_stabilizer'
TEST_STABILIZER_FILE = os.path.join(f'<{TEST_DATABASE_NAME}>', 'stabilizers.tbl', TEST_STABILIZER_NAME + '.sta')

TEST_DRILLPIPE_NAME = 'test_drillpipe'
TEST_DRILLPIPE_FILE = os.path.join(f'<{TEST_DATABASE_NAME}>', 'drill_pipes.tbl', TEST_DRILLPIPE_NAME + '.pip')
TEST_DRILLPIPE_GROUPNAME = 'Upper_DP_Group'
TEST_NUMBER_OF_DRILLPIPES = 20

TEST_EUS_NAME = 'test_eus'
TEST_EUS_FILE = os.path.join(f'<{TEST_DATABASE_NAME}>', 'drill_pipes.tbl', TEST_EUS_NAME + '.pip')
TEST_EUS_GROUPNAME = 'equivalent_pipe'
TEST_NUMBER_OF_EUSPIPES = 20

TEST_TOP_DRIVE_NAME = 'test_top_drive'
TEST_TOP_DRIVE_FILE = os.path.join(f'<{TEST_DATABASE_NAME}>', 'top_drives.tbl', TEST_TOP_DRIVE_NAME + '.tdr')    

TEST_NEW_DATABASE_NAME = 'new_database'
TEST_NEW_DATABASE_PATH = os.path.join(os.getcwd(), 'test', TEST_NEW_DATABASE_NAME + '.cdb')

TEST_WORKING_DIRECTORY = os.path.join(os.getcwd(), 'test', 'example_working_directory')

TEST_ORIG_CONFIG_FILE_TEXT = f'''!----------------------------------------------------------------------!
! ************  Adams Drill Private Configuration File  ************
!----------------------------------------------------------------------!
!
!----------------------------------------------------------------------!
! - List of personal environment variables
!----------------------------------------------------------------------!
!
!----------------------------------------------------------------------!
! - List of personal database directories
!            Database name     Path of Database
!----------------------------------------------------------------------!
DATABASE   {EXISTING_CDB_NAME}   {EXISTING_CDB_PATH}
DATABASE   {CDB_TO_REMOVE_NAME}   {CDB_TO_REMOVE_PATH}

DEFAULT_WRITE_DB    adrill_private
!
!----------------------------------------------------------------------!
! - List of personal tables directories
!            Type class            Name of table              Extension
!----------------------------------------------------------------------!
! Example table entry:
!TABLE        example               example.tbl                      exa
!
!----------------------------------------------------------------------!
! - List of personal default property files
!            Type class         Default property file
!----------------------------------------------------------------------!
! Example property file entry:
!PROPFILE     pdc_bit           <adrill_private>/pdc_bits.tbl/SC_Acme_Co_695b.pdc
!----------------------------------------------------------------------!
'''

EXPECTED_CONFIG_FILE_AFTER_ADD = f'''!----------------------------------------------------------------------!
! ************  Adams Drill Private Configuration File  ************
!----------------------------------------------------------------------!
!
!----------------------------------------------------------------------!
! - List of personal environment variables
!----------------------------------------------------------------------!
!
!----------------------------------------------------------------------!
! - List of personal database directories
!            Database name     Path of Database
!----------------------------------------------------------------------!
DATABASE   {EXISTING_CDB_NAME}   {EXISTING_CDB_PATH}
DATABASE   {CDB_TO_REMOVE_NAME}   {CDB_TO_REMOVE_PATH}
DATABASE   {NEW_CDB_NAME}   {NEW_CDB_PATH}

DEFAULT_WRITE_DB    adrill_private
!
!----------------------------------------------------------------------!
! - List of personal tables directories
!            Type class            Name of table              Extension
!----------------------------------------------------------------------!
! Example table entry:
!TABLE        example               example.tbl                      exa
!
!----------------------------------------------------------------------!
! - List of personal default property files
!            Type class         Default property file
!----------------------------------------------------------------------!
! Example property file entry:
!PROPFILE     pdc_bit           <adrill_private>/pdc_bits.tbl/SC_Acme_Co_695b.pdc
!----------------------------------------------------------------------!
'''

EXPECTED_CONFIG_FILE_AFTER_REMOVE = f'''!----------------------------------------------------------------------!
! ************  Adams Drill Private Configuration File  ************
!----------------------------------------------------------------------!
!
!----------------------------------------------------------------------!
! - List of personal environment variables
!----------------------------------------------------------------------!
!
!----------------------------------------------------------------------!
! - List of personal database directories
!            Database name     Path of Database
!----------------------------------------------------------------------!
DATABASE   {EXISTING_CDB_NAME}   {EXISTING_CDB_PATH}

DEFAULT_WRITE_DB    adrill_private
!
!----------------------------------------------------------------------!
! - List of personal tables directories
!            Type class            Name of table              Extension
!----------------------------------------------------------------------!
! Example table entry:
!TABLE        example               example.tbl                      exa
!
!----------------------------------------------------------------------!
! - List of personal default property files
!            Type class         Default property file
!----------------------------------------------------------------------!
! Example property file entry:
!PROPFILE     pdc_bit           <adrill_private>/pdc_bits.tbl/SC_Acme_Co_695b.pdc
!----------------------------------------------------------------------!
'''

EXPECTED_EVENT_FILE_TEXT = f"""$ ==================================================================
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
 Event_Name  =  '{TEST_CREATED_EVENT_NAME}'
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
{{Start_Time  Ramp_Duration  Delta_RPM}}
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
{{Start_Time  Ramp_Duration  Delta_RPM}}
0   1   1
$ 
$ PUMP_FLOW applies only to 3D motors; valid only for DRIVE_TYPE = WITH_MOTOR
$ Gallons/minute in imperial units; Liters/minute in metric units
(PUMP_FLOW)
{{Start_Time  Ramp_Duration  Delta_Flow_Rate}}
1   10   500
$ 
(WOB)
{{Start_Time  Ramp_Duration  Delta_WOB}}
30   10   50
$ 
(ROP)
{{Start_Time  Ramp_Duration  Delta_ROP}}
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
{{Start_Time  Ramp_Duration}}
0   1
$-----------------------------------------------------------------------DYNAMICS
[DYNAMICS]
$ Specify the simulation time and output rate in seconds
{{End_Time  Output_Step_Size}}
10   0.05
100   0.05
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

EXPECTED_STRING_WRITE_TEXT = f"""$ ==================================================================
$ This is the master drill string assmembly file which contains
$ the following data blocks:
$  [UNITS]
$  [MODEL]
$  [CONTACT]
$  [DRIVE]
$  [MEASUREMENT_POINTS]
$  [DRILL_TOOL_n]
$  [TOP_OF_STRING]
$  [TOP_DRIVE]
$ 
$ NOTA BENE: block and subblock titles MUST begin in column 1.
$ Comments also must begin in column 1.
$ ==================================================================
$ 
$--------------------------------------------------------------------------UNITS
[UNITS]
$ Adams Drill supports two units sets:
$ 'Imperial' (foot, degree, pound force, pound mass, second)
$ 'Metric' (meter, degree, Newton, kilogram, second)
 Units  =  'Imperial'
$--------------------------------------------------------------------------MODEL
[MODEL]
$ general model set-up parameters
 ModelName  =  'test_string_1'
 OutputName  =  'test_string_1'
 Gravity  =  32.187
 Deviation_Deg  =  0.0
$ Used to rotate gravity direction relative to string
$ Adams_Results must equal 'standard' 'animation' or 'diagnostics'
$ Note that 'diagnostics' produces VERY large files sizes
 Adams_Results  =  'animation'
 Adams_Requests  =  'on'
 Adams_Graphics  =  'off'
 SolverDLL  =  'adrill_solver'
$ Do not include the '.dll' extension here
$------------------------------------------------------------------------CONTACT
[CONTACT]
$ ContactMethod options are 'Subroutine' and 'ImpactFunction'
$ ** but only 'Subroutine' is valid at present **
 Hole_Property_File  =  '<{TEST_DATABASE_NAME}>\\holes.tbl\\{TEST_HOLE_NAME}.hol'
 Contact_Method  =  'Subroutine'
 Cyl_Drag_Coeff  =  1.2
 Hole_Color  =  'LtGray'
$--------------------------------------------------------------------------DRIVE
[DRIVE]
 Event_Property_File  =  '<{TEST_DATABASE_NAME}>\\events.tbl\\{TEST_EVENT_NAME}.evt'
$-------------------------------------------------------------MEASUREMENT_POINTS
[MEASUREMENT_POINTS]
$ These are auxialliary measurement points in addition to any  measurement
$ requests made directly on tools or pipes in the DRILL_TOOL blocks.
$ These are locations in the design position of the model at which
$ output will be generated.  The output will be generated at the nearest
$ tool or pipe wall contact point in the string.
{{Distance_from_Bit}}
$ ------------------------------------------------------------------------------
$ 
$  The DRILL_TOOL blocks below form a descriptive list of tools from bottom to top
$  NOTA BENE: The tools or sections must be numbered from 1 consecutively
$  and the last tool or section must be 'TopOfString'.  Remember that a
$  section  of pipes can include many elements.
$------------------------------------------------------------------DRILL_TOOL_01
[DRILL_TOOL_01]
 Stack_Order  =  1
 Type  =  'pdc_bit'
 Name  =  '{TEST_PDC_NAME}_01'
 Property_File  =  '<{TEST_DATABASE_NAME}>\\pdc_bits.tbl\\{TEST_PDC_NAME}.pdc'
 Measure  =  'yes'
 Color  =  'Default'
$------------------------------------------------------------------DRILL_TOOL_02
[DRILL_TOOL_02]
 Stack_Order  =  2
 Type  =  'stabilizer'
 Name  =  '{TEST_STABILIZER_NAME}_02'
 Property_File  =  '<{TEST_DATABASE_NAME}>\\stabilizers.tbl\\{TEST_STABILIZER_NAME}.sta'
 Measure  =  'yes'
 Color  =  'Default'
$------------------------------------------------------------------DRILL_TOOL_03
[DRILL_TOOL_03]
 Stack_Order  =  3
 Type  =  'drillpipe'
 Name  =  '{TEST_DRILLPIPE_GROUPNAME}'
 Property_File  =  '<{TEST_DATABASE_NAME}>\\drill_pipes.tbl\\{TEST_DRILLPIPE_NAME}.pip'
 Measure  =  'no'
 Color  =  'Default'
 Number_of_Joints  =  {TEST_NUMBER_OF_DRILLPIPES}
$------------------------------------------------------------------DRILL_TOOL_04
[DRILL_TOOL_04]
 Stack_Order  =  4
 Type  =  'equivalent_upper_string'
 Name  =  '{TEST_EUS_GROUPNAME}'
 Property_File  =  '<{TEST_DATABASE_NAME}>\\drill_pipes.tbl\\{TEST_EUS_NAME}.pip'
 Measure  =  'no'
 Color  =  'Default'
 Number_of_Joints  =  {TEST_NUMBER_OF_EUSPIPES}
$------------------------------------------------------------------TOP_OF_STRING
[TOP_OF_STRING]
$----------------------------------------------------------------------TOP_DRIVE
[TOP_DRIVE]
 Type  =  'top_drive'
 Name  =  '{TEST_TOP_DRIVE_NAME}'
 Property_File  =  '<{TEST_DATABASE_NAME}>\\top_drives.tbl\\{TEST_TOP_DRIVE_NAME}.tdr'

"""

def check_file_contents(filename, expected_text):
    """Checks that the given file contains the expected text.
    
    Arguments:
        filename {string} -- Name of file to check
        expected_text {string} -- Expected contents of file
    
    Returns:
        list -- list of unexpected lines
    """

    # Read the file
    with open(filename, 'r') as fid:
        lines = fid.readlines()

    # Initialize a list of failures
    failures = []

    # Loop through lines
    for actual_line, expected_line, line_num in zip(lines, expected_text.split('\n'), range(len(lines))):
        expected_line += '\n'

        # Test if lines are equal
        if actual_line != expected_line:
            failures.append('Unexpected file contents (line {}): ACTUAL: {} -- EXPECTED: {}'.format(line_num, actual_line, expected_line))
    
    return failures


def clear_database(database_path):
    """Deletes all the property files in the given database
    
    Arguments:
        database_path {string} -- Path to the database to be cleared
    """
    for table in glob.glob(os.path.join(database_path,'*')):
        for file in glob.glob(os.path.join(table,'*')):
            os.remove(file)
