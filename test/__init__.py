import os
import glob

# Set the ADRILL_USER_CFG and ADRILL_SHARED_CFG environment variables
os.environ['ADRILL_SHARED_CFG'] = os.path.join('C:\\', 'Program Files', 'MSC.Software', 'Adams', '2019_2', 'adrill', 'adrill.cfg')
os.environ['ADRILL_USER_CFG'] = os.path.join(os.environ['USERPROFILE'], '.adrill.cfg')
os.environ['ADAMS_LAUNCH_COMMAND'] = os.path.join('C:\\', 'Program Files', 'MSC.Software', 'Adams', '2019_2', 'common', 'mdi.bat')

from adamspy.adripy.constants import DATABASE_INFO

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

TEST_EVENT_NAME_2019_2 = 'test_event_2019_2'
TEST_EVENT_FILE_2019_2 = os.path.join(f'<{TEST_DATABASE_NAME}>', 'events.tbl', TEST_EVENT_NAME_2019_2 + '.evt')

TEST_SOLVER_SETTINGS_NAME = 'test_solver_settings'
TEST_SOLVER_SETTINGS_NAME_2 = 'test_solver_settings_2'
TEST_SOLVER_SETTINGS_FILE = os.path.join(f'<{TEST_DATABASE_NAME}>', 'solver_settings.tbl', TEST_SOLVER_SETTINGS_NAME + '.ssf')

TEST_EXISTING_STRING_NAME = 'test_string'
TEST_EXISTING_STRING_FILE = os.path.join(f'<{TEST_DATABASE_NAME}>', 'drill_strings.tbl', TEST_EXISTING_STRING_NAME + '.str')

TEST_EXISTING_AGITATOR_FILE = os.path.join(f'<{TEST_DATABASE_NAME}>', 'agitators.tbl', 'test_agitator.agn')

TEST_EXISTING_STRING_NAME_WITH_SPACES_IN_HOLE_REF = 'test_string_with_spaces_in_hole_ref'
TEST_EXISTING_STRING_FILE_WITH_SPACES_IN_HOLE_REF = os.path.join(f'<{TEST_DATABASE_NAME}>', 'drill_strings.tbl', TEST_EXISTING_STRING_NAME_WITH_SPACES_IN_HOLE_REF + '.str')

TEST_EXISTING_STRING_NAME_COLLAR = 'test_string_collar'
TEST_EXISTING_STRING_FILE_COLLAR = os.path.join(f'<{TEST_DATABASE_NAME}>', 'drill_strings.tbl', TEST_EXISTING_STRING_NAME_COLLAR + '.str')

TEST_EXISTING_STRING_NAME_WRONG_CASE = 'test_string_wrong_case'
TEST_EXISTING_STRING_FILE_WRONG_CASE = os.path.join(f'<{TEST_DATABASE_NAME}>', 'drill_strings.tbl', TEST_EXISTING_STRING_NAME_WRONG_CASE + '.str')

TEST_EXISTING_STRING_NAME_NO_DFB = 'test_string_no_dfb'

TEST_STRING_NAME = 'test_string_1'
TEST_HOLE_NAME = 'test'
TEST_EXISTING_HOLE_NAME = 'test_hole'
TEST_EXISTING_HOLE_FILE = os.path.join(f'<{TEST_DATABASE_NAME}>', 'holes.tbl', TEST_EXISTING_HOLE_NAME + '.hol')
TEST_EXISTING_HOLE_FILE_WITH_SPACES = os.path.join(f'<{TEST_DATABASE_NAME}>', 'holes.tbl', 'subdir with spaces', TEST_EXISTING_HOLE_NAME + '.hol')
TEST_PDC_NAME = 'test_pdc'
TEST_PDC_FILE = os.path.join(f'<{TEST_DATABASE_NAME}>', 'pdc_bits.tbl', TEST_PDC_NAME + '.pdc')
TEST_STABILIZER_NAME = 'example_stabilizer'
TEST_STABILIZER_FILE = os.path.join(f'<{TEST_DATABASE_NAME}>', 'stabilizers.tbl', TEST_STABILIZER_NAME + '.sta')
TEST_MOTOR_NAME = 'example_motor'
TEST_MOTOR_FILE = os.path.join(f'<{TEST_DATABASE_NAME}>', 'motors.tbl', TEST_MOTOR_NAME + '.mot')
TEST_MWD_NAME = 'test_mwd'
TEST_MWD_FILE = os.path.join(f'<{TEST_DATABASE_NAME}>', 'mwd_tools.tbl', TEST_MWD_NAME + '.mwd')
TEST_COLLAR_NAME = 'test_collar'
TEST_COLLAR_FILE = os.path.join(f'<{TEST_DATABASE_NAME}>', 'drill_collars.tbl', TEST_COLLAR_NAME + '.col')
TEST_COLLAR_GROUPNAME = f'{TEST_COLLAR_NAME}s'
TEST_NUMBER_OF_COLLARS = 2

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
TEST_ANALYSIS_NAME = 'test_analysis_1'

TEST_EXISTING_DRILLSIM_DIRECTORY = os.path.join(os.getcwd(), 'test', 'existing_drillsim')
TEST_EXISTING_DRILLSIM_ANALYSIS_NAME = 'test_analysis_1'

TEST_EXISTING_UNBUILT_DRILLSIM_DIRECTORY = os.path.join(os.getcwd(), 'test', 'existing_unbuilt_drillsim')
TEST_EXISTING_UNBUILT_DRILLSIM_ANALYSIS_NAME = 'test_analysis_1'

TEST_EXISTING_RES_FILE = os.path.join(os.getcwd(), 'test', 'files', 'test_analysis_1.res')
TEST_EXISTING_CMD_FILE = os.path.join(os.getcwd(), 'test', 'files', 'test_analysis_1.cmd')
TEST_EXPECTED_MODNAME_IN_CMD = 'test_analysis_1'


TEST_REQUEST_TIME_MIN = 20
TEST_REQUEST_TIME_MAX = 22

TEST_BAD_REFS_CDB_PATH = os.path.join(os.getcwd(), 'test', 'bad_refs.cdb')
TEST_BAD_REF = '\\\\nonexistent_server\\nonexistent_path\\nonexistent.cdb'
TEST_BAD_REF_NEW_CDB = 'nonexistent.cdb'

TEST_EXPECTED_STRING_AFTER_BAD_REF_REPLACE = '''$ ==================================================================
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
 ModelName  =  'test_string'
 OutputName  =  'test_string'
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
 Hole_Property_File  =  '<nonexistent>\\holes.tbl\\test_hole.hol'
 Contact_Method  =  'Subroutine'
 Cyl_Drag_Coeff  =  1.0
 Hole_Color  =  'LtGray'
$--------------------------------------------------------------------------DRIVE
[DRIVE]
 Event_Property_File  =  '<nonexistent>\\events.tbl\\test_event.evt'
$-------------------------------------------------------------MEASUREMENT_POINTS
[MEASUREMENT_POINTS]
$ These are auxialliary measurement points in addition to any  measurement
$ requests made directly on tools or pipes in the DRILL_TOOL blocks.
$ These are locations in the design position of the model at which
$ output will be generated.  The output will be generated at the nearest
$ tool or pipe wall contact point in the string.
{Distance_from_Bit}
100.0
300.0
500.0
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
 Name  =  'test_pdc_01'
 Property_File  =  '<nonexistent>\\pdc_bits.tbl\\test_pdc.pdc'
 Measure  =  'yes'
 Color  =  'Default'
$------------------------------------------------------------------DRILL_TOOL_02
[DRILL_TOOL_02]
 Stack_Order  =  2
 Type  =  'stabilizer'
 Name  =  'example_stabilizer_02'
 Property_File  =  '<nonexistent>\\stabilizers.tbl\\example_stabilizer.sta'
 Measure  =  'yes'
 Color  =  'Default'
$------------------------------------------------------------------DRILL_TOOL_03
[DRILL_TOOL_03]
 Stack_Order  =  3
 Type  =  'short_collar'
 Name  =  'test_collar_03'
 Property_File  =  '<nonexistent>\\short_collars.tbl\\test_collar.sco'
 Measure  =  'no'
 Color  =  'Default'
$------------------------------------------------------------------DRILL_TOOL_04
[DRILL_TOOL_04]
 Stack_Order  =  4
 Type  =  'generic_long'
 Name  =  'test_generic_long_04'
 Property_File  =  '<nonexistent>/generic_longs.tbl/test_generic_long.gnl'
 Measure  =  'no'
 Color  =  'Default'
$------------------------------------------------------------------DRILL_TOOL_05
[DRILL_TOOL_05]
 Stack_Order  =  5
 Type  =  'stabilizer'
 Name  =  'example_stabilizer_05'
 Property_File  =  '<nonexistent>\\stabilizers.tbl\\example_stabilizer.sta'
 Measure  =  'yes'
 Color  =  'Default'
$------------------------------------------------------------------DRILL_TOOL_06
[DRILL_TOOL_06]
 Stack_Order  =  6
 Type  =  'mwd_tool'
 Name  =  'test_mwd_06'
 Property_File  =  '<nonexistent>\\mwd_tools.tbl\\test_mwd.mwd'
 Measure  =  'no'
 Color  =  'Default'
$------------------------------------------------------------------DRILL_TOOL_07
[DRILL_TOOL_07]
 Stack_Order  =  7
 Type  =  'crossover'
 Name  =  'test_crossover_07'
 Property_File  =  '<nonexistent>\\crossovers.tbl\\test_crossover.crs'
 Measure  =  'no'
 Color  =  'Default'
$------------------------------------------------------------------DRILL_TOOL_08
[DRILL_TOOL_08]
 Stack_Order  =  8
 Type  =  'blade_reamer'
 Name  =  'test_blade_reamer_08'
 Property_File  =  '<nonexistent>\\blade_reamers.tbl\\test_blade_reamer.bre'
 Measure  =  'yes'
 Color  =  'Default'
$------------------------------------------------------------------DRILL_TOOL_09
[DRILL_TOOL_09]
 Stack_Order  =  9
 Type  =  'flex_pipe'
 Name  =  'test_flex_pipe_09'
 Property_File  =  '<nonexistent>\\flex_pipes.tbl\\test_flex_pipe.flp'
 Measure  =  'no'
 Color  =  'Default'
$------------------------------------------------------------------DRILL_TOOL_10
[DRILL_TOOL_10]
 Stack_Order  =  10
 Type  =  'crossover'
 Name  =  'test_float_crossover_10'
 Property_File  =  '<nonexistent>\\crossovers.tbl\\test_float_crossover.crs'
 Measure  =  'no'
 Color  =  'Default'
$------------------------------------------------------------------DRILL_TOOL_11
[DRILL_TOOL_11]
 Stack_Order  =  11
 Type  =  'hw_pipe'
 Name  =  'lower_group'
 Property_File  =  '<nonexistent>\\hw_pipes.tbl\\test_hwdp.hwp'
 Measure  =  'no'
 Color  =  'Default'
 Number_of_Joints  =  4
$------------------------------------------------------------------DRILL_TOOL_12
[DRILL_TOOL_12]
 Stack_Order  =  12
 Type  =  'jar'
 Name  =  'test_jar_12'
 Property_File  =  '<nonexistent>\\jars.tbl\\test_jar.djr'
 Measure  =  'yes'
 Color  =  'Default'
$------------------------------------------------------------------DRILL_TOOL_13
[DRILL_TOOL_13]
 Stack_Order  =  13
 Type  =  'hw_pipe'
 Name  =  'middle_group'
 Property_File  =  '<nonexistent>\\hw_pipes.tbl\\test_hwdp2.hwp'
 Measure  =  'yes'
 Color  =  'Default'
 Number_of_Joints  =  5
$------------------------------------------------------------------DRILL_TOOL_14
[DRILL_TOOL_14]
 Stack_Order  =  14
 Type  =  'accelerator'
 Name  =  'test_accelerator_14'
 Property_File  =  '<nonexistent>\\accelerators.tbl\\test_accelerator.acc'
 Measure  =  'yes'
 Color  =  'Default'
$------------------------------------------------------------------DRILL_TOOL_15
[DRILL_TOOL_15]
 Stack_Order  =  15
 Type  =  'hw_pipe'
 Name  =  'upper_group'
 Property_File  =  '<nonexistent>\\hw_pipes.tbl\\test_hwdp3.hwp'
 Measure  =  'no'
 Color  =  'Default'
 Number_of_Joints  =  2
$------------------------------------------------------------------DRILL_TOOL_16
[DRILL_TOOL_16]
 Stack_Order  =  16
 Type  =  'crossover'
 Name  =  'test_crossover2_16'
 Property_File  =  '<nonexistent>\\crossovers.tbl\\test_crossover2.crs'
 Measure  =  'no'
 Color  =  'Default'
$------------------------------------------------------------------DRILL_TOOL_17
[DRILL_TOOL_17]
 Stack_Order  =  17
 Type  =  'drillpipe'
 Name  =  'Upper_DP_Group'
 Property_File  =  '<nonexistent>\\drill_pipes.tbl\\test_drillpipe.pip'
 Measure  =  'no'
 Color  =  'Default'
 Number_of_Joints  =  6
$------------------------------------------------------------------DRILL_TOOL_18
[DRILL_TOOL_18]
 Stack_Order  =  18
 Type  =  'equivalent_upper_string'
 Name  =  'equivalent_pipe'
 Property_File  =  '<nonexistent>\\drill_pipes.tbl\\test_eus.pip'
 Measure  =  'yes'
 Color  =  'Default'
 Number_of_Joints  =  19
$------------------------------------------------------------------TOP_OF_STRING
[TOP_OF_STRING]
$----------------------------------------------------------------------TOP_DRIVE
[TOP_DRIVE]
 Type  =  'top_drive'
 Name  =  'test_top_drive'
 Property_File  =  '<nonexistent>\\top_drives.tbl\\test_top_drive.tdr'
'''

TEST_REQUESTS_TO_GET = {}
TEST_REQUESTS_TO_GET['MSE'] = ['Instantaneous_Bottom_MSE', 'Filtered_Surface_MSE']
TEST_REQUESTS_TO_GET['ROP_controls'] = ['Input_ROP', 'Downhole_WOB']
TEST_REQUESTS_TO_GET['example_stabilizer_02_Motion'] = ['Rotational_Speed', 'Axial_Load']

TEST_EXPECTED_REQUESTS = {
    'MSE': {
        'Instantaneous_Bottom_MSE': [1252.046479497551, 1473.4761643169381, 1339.1000029420168, 1143.937724921869, 973.8311961613808, 804.5194794696514, 657.3270407078766, 647.7251564871043, 666.8617468752008, 665.0189106753431, 649.185517361307, 539.1018829563101, 442.26695581553474, 300.99973222709184, 210.80223369013098, 173.09811383046076, 229.0586475081117, 285.17587398177596, 376.28593387637756, 481.49773245931254, 564.1556796293199, 736.9398069068692, 1058.745536845072, 1502.9168528533248, 1684.2111024279525, 1601.0761887181122, 1426.189400594801, 1234.9961706458982, 1044.4389193750214, 920.4737868322152, 852.7469266383363, 827.3029463994977, 818.0704938862445, 732.7721235422634, 649.972035309576, 548.6491138953828, 670.9876440613709, 621.6883431199908, 625.1017938350799, 605.7981572938194, 842.2909581544272],
        'Filtered_Surface_MSE': [709.6826939238002, 715.3177587034884, 714.4490585316235, 715.1865424643119, 729.4539109113067, 746.6840936432457, 761.4137695010331, 774.699856476926, 783.8923475840382, 787.1328168996073, 795.2666615632901, 805.9604400895984, 817.5464920382102, 830.1658098953271, 844.0238977655521, 859.6032697376272, 876.9407865290065, 896.2150161838526, 918.2399232005355, 943.4120152968327, 972.1098657736925, 1004.4650605810189, 1038.2984527890235, 1068.437278073741, 1072.136473561054, 1070.9356824124432, 1071.071484766245, 1077.6332029880796, 1097.1913300048743, 1115.643140079313, 1130.8432904014219, 1136.7221366473655, 1142.338605457468, 1156.330191425505, 1173.0127907326869, 1191.0812244465824, 1211.0914850514682, 1232.5493030197663, 1255.186846684822, 1280.6722332633167, 1308.758600298811]
        },
    'ROP_controls': {
        'Input_ROP': [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0],
        'Downhole_WOB': [-0.3540086920614221, -0.0545265169834274, -0.02660072281223885, -0.04226438666830533, -0.01227828696198056, -0.01479921082796479, -0.00849804783863615, -0.01425058532820132, -0.02368295821506012, 0.01271084039317438, -0.0076200608156598, -0.00279479532439745, 0.11656167174081987, 0.11486911778001781, 0.0874974359133656, 0.0664041052774107, 0.04940556662949629, -0.00844261202388051, 0.09798765976919664, 0.13860631033606058, 0.21442496192354857, 0.02517250460685882, -0.01600482779828358, -0.05393128910852323, -0.04904950526154315, -0.0342245984183599, -0.02674035690362688, -0.01568863152463847, -0.00344591772843415, -0.01332461435241055, -0.02984600006326215, -0.00108448604951762, -0.00683745554219912, -0.00511229931933447, 0.13312168472212293, 0.1547534542069619, -0.00847852809228596, 0.1714932296329531, 0.14897414509221757, 0.154972057935717, -0.01453568828838551]
        },
    'example_stabilizer_02_Motion': {
        'Rotational_Speed': [57.55758061344168, 67.24542851140119, 60.90524738973068, 51.722189834703485, 43.91597102085619, 36.214862520581406, 29.499688727220263, 28.925285061668767, 29.589912017498076, 29.293246471470546, 28.473172287390042, 23.56014089700522, 19.28460956656822, 13.069914040508799, 9.077562544957425, 7.381785855682683, 9.667862094366724, 11.98217963562189, 15.727473922601533, 20.061049374896676, 23.34942792668114, 30.265422666888046, 43.28214594250013, 60.958180056890924, 67.87697862837638, 64.428060056018, 57.38974152589197, 49.756195960321776, 42.1044209869912, 37.039909947056415, 34.234984559971764, 33.08350919633739, 32.61969344034411, 29.196241588593004, 25.860465221417133, 21.76712278321716, 26.547182026061684, 24.583773163584254, 24.783722412316745, 23.89427958419846, 33.03728695941052],
        'Axial_Load': [-0.35400869206142355, -0.05452651698342818, -0.0266007228122405, -0.04226438666830763, -0.01227828696198236, -0.01479921082796692, -0.0084980478386389, -0.01425058532820483, -0.02368295821506348, 0.01271084039317094, -0.00762006081566291, -0.00279479532440269, 0.11656167174081403, 0.11486911778001055, 0.08749743591335682, 0.06640410527740072, 0.04940556662948576, -0.00844261202389097, 0.09798765976918335, 0.138606310336047, 0.21442496192353383, 0.02517250460684852, -0.01600482779829435, -0.05393128910853517, -0.04904950526155442, -0.03422459841837094, -0.02674035690363583, -0.01568863152464662, -0.00344591772844652, -0.01332461435242693, -0.02984600006327751, -0.00108448604953451, -0.00683745554220976, -0.0051122993193617, 0.13312168472209018, 0.1547534542069211, -0.00847852809232655, 0.17149322963291447, 0.14897414509217424, 0.15497205793564664, -0.01453568828843766]
        },
    'time': [20.0, 20.05, 20.1, 20.15, 20.2, 20.25, 20.3, 20.35, 20.4, 20.45, 20.5, 20.55, 20.6, 20.65, 20.7, 20.75, 20.8, 20.85, 20.9, 20.95, 21.0, 21.05, 21.1, 21.15, 21.2, 21.25, 21.3, 21.35, 21.4, 21.45, 21.5, 21.55, 21.6, 21.65, 21.7, 21.75, 21.8, 21.85, 21.9, 21.95, 22.0]
    }

TEST_EXPECTED_REQUEST_UNITS = {
    'example_stabilizer_02_Motion': {
        'Rotational_Speed': '(RPM)',
        'Axial_Load': '(Klbf)'
        },
    'ROP_controls': {
        'Input_ROP': '(ft/hr)',
        'Downhole_WOB': '(klbf)'
        },
    'MSE': {
        'Instantaneous_Bottom_MSE': '(psi)',
        'Filtered_Surface_MSE': '(psi)'
        }
    }

TEST_PASON_DATA = os.path.join(os.getcwd(), 'test', 'files', 'test_pason.csv')
TEST_EXPECTED_CLEANED_RPM = [84.42401117318435, 84.42401117318435, 84.42401117318435, 84.42401117318435, 84.42401117318435, 84.42401117318435, 84.42401117318435, 84.42401117318435, 84.42401117318435, 84.42401117318435]
TEST_EXPECTED_CLEANED_GPM = [775.3327365045429, 775.3327365045429, 775.3327365045429, 775.3327365045429, 775.3327365045429, 775.3327365045429, 775.3327365045429, 775.3327365045429, 775.3327365045429, 775.3327365045429]
TEST_EXPECTED_CLEANED_WOB = [58.736188968630344, 58.70212581252066, 58.66982295651355, 58.64386364566833, 58.62615942128198, 58.61539260972009, 58.608106536393144, 58.601407783211805, 58.59572175695047, 58.595395233734656]
TEST_EXPECTED_CLEANED_ROP = [85.31195257697232, 84.72910983931986, 84.10590633094469, 83.42023583924377, 82.6482627368351, 81.7764528963229, 80.81070725651136, 79.77935457592197, 78.72849366658764, 77.71094436308452]

TEST_SPLINES_TO_ADD = {
    'gpm': [[0, 78.125, 250.0, 421.875, 500, 500, 500, 500, 500, 500, 500], [0.0, 1.0, 2.0, 3.0, 4.0, 5.0, 6.0, 7.0, 8.0, 9.0, 10.0]],
    'rpm': [[0, 0, 0, 0, 12, 37, 50, 50, 50, 50, 50], [0.0, 1.0, 2.0, 3.0, 4.0, 5.0, 6.0, 7.0, 8.0, 9.0, 10.0]],
    'wob': [[0, 0, 0, 0, 0, 0, 0, 10, 29, 40, 40], [0.0, 1.0, 2.0, 3.0, 4.0, 5.0, 6.0, 7.0, 8.0, 9.0, 10.0]],
    'rop': [[0, 0, 0, 0, 0, 0, 0, 25, 74, 100, 100], [0.0, 1.0, 2.0, 3.0, 4.0, 5.0, 6.0, 7.0, 8.0, 9.0, 10.0]]
}

TEST_ADM_FILE = os.path.join(os.getcwd(), 'test', 'files', 'test.adm')
TEST_ADM_FILENAME_WITH_SPLINES = TEST_ADM_FILE.replace('.adm','') + '_with_splines.adm'

TEST_ACF_FILE = os.path.join(os.getcwd(), 'test', 'files', 'test.acf')
TEST_ACF_FILENAME_WITH_SPLINES = TEST_ADM_FILE.replace('.acf','') + '_with_splines.acf'

TEST_HOLE_CENTERLINE_NORTH = [0, 100, 200, 300, 400, 500, 600, 700, 800, 900, 1000]
TEST_HOLE_CENTERLINE_EAST = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
TEST_HOLE_CENTERLINE_TVD = [0, 1300, 1400, 1460, 1491, 1502, 1502, 1502, 1502, 1502, 1502]
TEST_HOLE_CENTERLINE = [TEST_HOLE_CENTERLINE_EAST, TEST_HOLE_CENTERLINE_NORTH, TEST_HOLE_CENTERLINE_TVD]

TEST_HOLE_MD = [0, 250, 500, 750, 1000, 1250, 1500]
TEST_HOLE_DIAMETER_D = [1.0835, 1.0835, 1.0835, 1.0835, 1.0835, 1.09, 1.09 ]
TEST_HOLE_DIAMETER = [TEST_HOLE_MD, TEST_HOLE_DIAMETER_D]

TEST_HOLE_CONTACT_K = [5e5, 5e5, 5e5, 5e5, 5e5, 6e5, 6e5]
TEST_HOLE_CONTACT_C = [5e2, 5e2, 5e2, 5e2, 5e2, 6e2, 6e2]
TEST_HOLE_CONTACT = [TEST_HOLE_MD, TEST_HOLE_CONTACT_K, TEST_HOLE_CONTACT_C]

TEST_HOLE_FRICTION_MUS = [0.9, 0.9, 0.9, 0.9, 0.9, 0.95, 0.95]
TEST_HOLE_FRICTION_VS = [0.15, 0.15, 0.15, 0.15, 0.15, 0.17, 0.17]
TEST_HOLE_FRICTION_MUD = [0.3, 0.3, 0.3, 0.3, 0.3, 0.35, 0.35]
TEST_HOLE_FRICTION_VD = [0.25, 0.25, 0.25, 0.25, 0.25, 0.26, 0.26]
TEST_HOLE_FRICTION = [TEST_HOLE_MD, TEST_HOLE_FRICTION_MUS, TEST_HOLE_FRICTION_VS, TEST_HOLE_FRICTION_MUD, TEST_HOLE_FRICTION_VD]

TEST_MODIFIED_HOLE_FRICTION_1 = [0.95, 0.17, 0.5, 0.26]
TEST_MODIFIED_HOLE_FRICTION_2 = [None, None, 0.5, None]

TEST_EXPECTED_MODIFIED_HOLE_FRICTION_MUS = [0.9, 0.9, 0.9, 0.9, TEST_MODIFIED_HOLE_FRICTION_1[0], TEST_MODIFIED_HOLE_FRICTION_1[0], TEST_MODIFIED_HOLE_FRICTION_1[0]]
TEST_EXPECTED_MODIFIED_HOLE_FRICTION_VS = [0.15, 0.15, 0.15, 0.15, TEST_MODIFIED_HOLE_FRICTION_1[1], TEST_MODIFIED_HOLE_FRICTION_1[1], TEST_MODIFIED_HOLE_FRICTION_1[1]]
TEST_EXPECTED_MODIFIED_HOLE_FRICTION_MUD = [0.3, 0.3, 0.3, 0.3, TEST_MODIFIED_HOLE_FRICTION_1[2], TEST_MODIFIED_HOLE_FRICTION_1[2], TEST_MODIFIED_HOLE_FRICTION_1[2]]
TEST_EXPECTED_MODIFIED_HOLE_FRICTION_VD = [0.25, 0.25, 0.25, 0.25, TEST_MODIFIED_HOLE_FRICTION_1[3], TEST_MODIFIED_HOLE_FRICTION_1[3], TEST_MODIFIED_HOLE_FRICTION_1[3]]
TEST_EXPECTED_MODIFIED_HOLE_FRICTION_1 = [TEST_HOLE_MD, TEST_EXPECTED_MODIFIED_HOLE_FRICTION_MUS, TEST_EXPECTED_MODIFIED_HOLE_FRICTION_VS, TEST_EXPECTED_MODIFIED_HOLE_FRICTION_MUD, TEST_EXPECTED_MODIFIED_HOLE_FRICTION_VD]
TEST_EXPECTED_MODIFIED_HOLE_FRICTION_2 = [TEST_HOLE_MD, TEST_HOLE_FRICTION_MUS, TEST_HOLE_FRICTION_VS, TEST_EXPECTED_MODIFIED_HOLE_FRICTION_MUD, TEST_HOLE_FRICTION_VD]

TEST_NEW_HOLE_FILE = os.path.join(os.getcwd(), 'test', 'files', TEST_HOLE_NAME + '.hol')

TEST_EXPECTED_HOLE_FILE_TEXT = '''$ NOTE: Block and subblock titles MUST begin in column 1
$ Comment lines MUST also begin in column 1
$-------------------------------------------------------------ADAMS_DRILL_HEADER
[ADAMS_DRILL_HEADER]
 File_Type  =  'Hole'
 File_Version  =  1.0
 Hole_Name  =  'test'
$--------------------------------------------------------------------------UNITS
[UNITS]
 Length  =  'foot'
 Mass  =  'pound_mass'
 Angle  =  'degrees'
 Time  =  'seconds'
$---------------------------------------------------------------------CENTERLINE
[CENTERLINE]
$ 
$ In the Excel Hole workbook this data can be entered either as
$ North-East-Depth or Depth-Inclination-Azimuth.  When entered
$ in the Hole Workbook as Depth-Inclination-Azimuth, Adams Drill
$ converts to North-East-Depth format for the .hol file.
$ 
{ North   East   True_Depth }
0   0   0
0   100   1300
0   200   1400
0   300   1460
0   400   1491
0   500   1502
0   600   1502
0   700   1502
0   800   1502
0   900   1502
0   1000   1502
$ 
$ In the tables below, *if* there is only one line, and
$  *if* the measured depth is -1.0, then the respective values
$  are considered constant, i.e. they do not change with depth.
$  If you put in tabular data, be sure that the depth covers the
$  range of the true depth!  (ADAMS *will* extrapolate.)
$-----------------------------------------------------------------------DIAMETER
[DIAMETER]
{ Measured_depth   Diameter }
0   1.0835
250   1.0835
500   1.0835
750   1.0835
1000   1.0835
1250   1.09
1500   1.09
$-------------------------------------------------------------------WALL_CONTACT
[WALL_CONTACT]
{ Measured_Depth    K      C }
0   500000.0   500.0
250   500000.0   500.0
500   500000.0   500.0
750   500000.0   500.0
1000   500000.0   500.0
1250   600000.0   600.0
1500   600000.0   600.0
$------------------------------------------------------------------WALL_FRICTION
[WALL_FRICTION]
{ Measured_Depth   StaticMu   StaticV   DynamicMu   DynamicV }
0   0.9   0.15   0.3   0.25
250   0.9   0.15   0.3   0.25
500   0.9   0.15   0.3   0.25
750   0.9   0.15   0.3   0.25
1000   0.9   0.15   0.3   0.25
1250   0.95   0.17   0.35   0.26
1500   0.95   0.17   0.35   0.26
$ '''


TEST_EXPECTED_ADM_FILE_DIFF = '''!----------------------------------- SPLINES ------------------------------------
!
!                          adams_view_name='ROP_Spline'
SPLINE/10000
, LINEAR_EXTRAPOLATE
, X=0.0, 1.0, 2.0, 3.0, 4.0, 5.0, 6.0, 7.0, 8.0, 9.0, 10.0
, Y=0.00,0.00,0.00,0.00,0.00,0.00,0.00,25.00,74.00,100.00,100.00
!
!                          adams_view_name='WOB_Spline'
SPLINE/10001
, LINEAR_EXTRAPOLATE
, X=0.0, 1.0, 2.0, 3.0, 4.0, 5.0, 6.0, 7.0, 8.0, 9.0, 10.0
, Y=0.00,0.00,0.00,0.00,0.00,0.00,0.00,10.00,29.00,40.00,40.00
!
!                          adams_view_name='RPM_Spline'
SPLINE/10002
, LINEAR_EXTRAPOLATE
, X=0.0, 1.0, 2.0, 3.0, 4.0, 5.0, 6.0, 7.0, 8.0, 9.0, 10.0
, Y=0.00,0.00,0.00,0.00,12.00,37.00,50.00,50.00,50.00,50.00,50.00
!
!                          adams_view_name='GPM_Spline'
SPLINE/10003
, LINEAR_EXTRAPOLATE
, X=0.0, 1.0, 2.0, 3.0, 4.0, 5.0, 6.0, 7.0, 8.0, 9.0, 10.0
, Y=0.00,78.12,250.00,421.88,500.00,500.00,500.00,500.00,500.00,500.00,500.00
!
'''

TEST_EXPECTED_ACF_FILE_DIFF = ''', FUNCTION = STEP(TIME, 0,0,1,1)*(AKISPL(TIME,0,10002, 0))*(PI/30)
, FUNCTION = STEP(TIME, 0,0,1,1)*VARVAL(11021)*ABS(AKISPL(TIME,0,10003, 0))
, FUNCTION = STEP(TIME, 0,0,1,1)*(AKISPL(TIME,0,10001, 0))*1000
, FUNCTION = STEP(TIME, 0,0,1,1)*(AKISPL(TIME,0,10000, 0))/3600
'''

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
DATABASE   {TEST_DATABASE_NAME}   {TEST_DATABASE_PATH}

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
DATABASE   {TEST_DATABASE_NAME}   {TEST_DATABASE_PATH}
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
DATABASE   {TEST_DATABASE_NAME}   {TEST_DATABASE_PATH}

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
$------------------------------------------------------------ADAMS_DRILL_HEADER
[ADAMS_DRILL_HEADER]
 File_Type  =  'event'
 File_Version  =  2.0
$-------------------------------------------------------------------------UNITS
[UNITS]
$ Adams Drill currently supports one units set: 
$ 'Imperial' (foot, degree, pound force, pound mass, second)
 Units  =  'Imperial'
$-------------------------------------------------------------------------DRIVE
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
(ROTARY_RPM)
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
$ FLOW_RATE applies only to 3D motors; valid only for DRIVE_TYPE = WITH_MOTOR
$ Gallons/minute in imperial units; Liters/minute in metric units
(FLOW_RATE)
{{Start_Time  Ramp_Duration  Delta_Flow_Rate}}
1   10   500
$ 
(WOB)
$ Units are in klbf
{{Start_Time  Ramp_Duration  Delta_WOB}}
30   10   50.0
$ 
(ROP)
{{Start_Time  Ramp_Duration  Delta_ROP}}
35   10   100
$--------------------------------------------------------------------------MISC
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
$----------------------------------------------------------------------DYNAMICS
[DYNAMICS]
$ Specify the simulation time and output rate in seconds
{{End_Time  Output_Step_Size}}
10   0.05
100   0.05
$-----------------------------------------------------------------------PLOT_4D
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

EXPECTED_DRILLSIM_ADM_FILE_TEXT = '''
'''

EXPECTED_DRILLSIM_STRING_FILE_TEXT = '''$ ==================================================================
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
 ModelName  =  'test_analysis_1'
 OutputName  =  'test_analysis_1'
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
 Hole_Property_File  =  'test_hole.hol'
 Contact_Method  =  'Subroutine'
 Cyl_Drag_Coeff  =  1.2
 Hole_Color  =  'LtGray'
$--------------------------------------------------------------------------DRIVE
[DRIVE]
 Event_Property_File  =  'test_analysis_1.evt'
$-------------------------------------------------------------MEASUREMENT_POINTS
$ [MEASUREMENT_POINTS]
$ These are auxialliary measurement points in addition to any  measurement
$ requests made directly on tools or pipes in the DRILL_TOOL blocks.
$ These are locations in the design position of the model at which
$ output will be generated.  The output will be generated at the nearest
$ tool or pipe wall contact point in the string.
$ {Distance_from_Bit}
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
 Name  =  'test_pdc_01'
 Property_File  =  'test_pdc.pdc'
 Measure  =  'yes'
 Color  =  'Default'
$------------------------------------------------------------------DRILL_TOOL_02
[DRILL_TOOL_02]
 Stack_Order  =  2
 Type  =  'stabilizer'
 Name  =  'example_stabilizer_02'
 Property_File  =  'example_stabilizer.sta'
 Measure  =  'yes'
 Color  =  'Default'
$------------------------------------------------------------------DRILL_TOOL_03
[DRILL_TOOL_03]
 Stack_Order  =  3
 Type  =  'drillpipe'
 Name  =  'Upper_DP_Group'
 Property_File  =  'test_drillpipe.pip'
 Measure  =  'no'
 Color  =  'Default'
 Number_of_Joints  =  20
$------------------------------------------------------------------DRILL_TOOL_04
[DRILL_TOOL_04]
 Stack_Order  =  4
 Type  =  'equivalent_upper_string'
 Name  =  'equivalent_pipe'
 Property_File  =  'test_eus.pip'
 Measure  =  'no'
 Color  =  'Default'
 Number_of_Joints  =  20
$------------------------------------------------------------------TOP_OF_STRING
[TOP_OF_STRING]
$----------------------------------------------------------------------TOP_DRIVE
[TOP_DRIVE]
 Type  =  'top_drive'
 Name  =  'test_top_drive'
 Property_File  =  'test_top_drive.tdr'
'''

EXPECTED_DRILLSIM_EVENT_FILE_TEXT = f"""$ ==================================================================
$ This is the Adams Drill Event file which contains
$ the following data blocks:
$   [UNITS]
$   [DRIVE]
$   [MISC]
$ 
$  NOTA BENE: block and subblock titles MUST begin in column 1.
$  Comments also must begin in column 1.
$  ==================================================================
$------------------------------------------------------------ADAMS_DRILL_HEADER
[ADAMS_DRILL_HEADER]
 File_Type  =  'event'
 File_Version  =  2.0
$-------------------------------------------------------------------------UNITS
[UNITS]
$ Adams Drill currently supports one units set: 
$ 'Imperial' (foot, degree, pound force, pound mass, second)
 Units  =  'Imperial'
$-------------------------------------------------------------------------DRIVE
[DRIVE]
(GENERAL)
 Event_Name  =  '{TEST_ANALYSIS_NAME}'
$ Valid Drive Types: 'WITH_MOTOR', 'TOP_ONLY'
 Drive_Type  =  'WITH_MOTOR'
$ Either 'TOS' (default) or user-selected tool from drill string
 Measurement_Tool  =  'TOS'
 Start_Depth  =  2000
 Off_Bottom  =  3
$ 
 Initial_Drive_Torque  =  0
$ 
(ROTARY_RPM)
{{Start_Time  Ramp_Duration  Delta_RPM}}
15   15   60
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
$ FLOW_RATE applies only to 3D motors; valid only for DRIVE_TYPE = WITH_MOTOR
$ Gallons/minute in imperial units; Liters/minute in metric units
(FLOW_RATE)
{{Start_Time  Ramp_Duration  Delta_Flow_Rate}}
0   15   500
$ 
(WOB)
$ Units are in klbf
{{Start_Time  Ramp_Duration  Delta_WOB}}
30   15   50.0
$ 
(ROP)
{{Start_Time  Ramp_Duration  Delta_ROP}}
30   15   100
$--------------------------------------------------------------------------MISC
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
$----------------------------------------------------------------------DYNAMICS
[DYNAMICS]
$ Specify the simulation time and output rate in seconds
{{End_Time  Output_Step_Size}}
10   0.05
100   0.05
$-----------------------------------------------------------------------PLOT_4D
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


EXPECTED_STRING_WRITE_TEXT_WITH_DFB = f"""$ ==================================================================
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
 Hole_Property_File  =  '<{TEST_DATABASE_NAME}>\\holes.tbl\\{TEST_EXISTING_HOLE_NAME}.hol'
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
100
200
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
 Hole_Property_File  =  '<{TEST_DATABASE_NAME}>\\holes.tbl\\{TEST_EXISTING_HOLE_NAME}.hol'
 Contact_Method  =  'Subroutine'
 Cyl_Drag_Coeff  =  1.2
 Hole_Color  =  'LtGray'
$--------------------------------------------------------------------------DRIVE
[DRIVE]
 Event_Property_File  =  '<{TEST_DATABASE_NAME}>\\events.tbl\\{TEST_EVENT_NAME}.evt'
$-------------------------------------------------------------MEASUREMENT_POINTS
$ [MEASUREMENT_POINTS]
$ These are auxialliary measurement points in addition to any  measurement
$ requests made directly on tools or pipes in the DRILL_TOOL blocks.
$ These are locations in the design position of the model at which
$ output will be generated.  The output will be generated at the nearest
$ tool or pipe wall contact point in the string.
$ {{Distance_from_Bit}}
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

EXPECTED_STRING_WRITE_TEXT_COLLAR = f"""$ ==================================================================
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
 Hole_Property_File  =  '<{TEST_DATABASE_NAME}>\\holes.tbl\\{TEST_EXISTING_HOLE_NAME}.hol'
 Contact_Method  =  'Subroutine'
 Cyl_Drag_Coeff  =  1.2
 Hole_Color  =  'LtGray'
$--------------------------------------------------------------------------DRIVE
[DRIVE]
 Event_Property_File  =  '<{TEST_DATABASE_NAME}>\\events.tbl\\{TEST_EVENT_NAME}.evt'
$-------------------------------------------------------------MEASUREMENT_POINTS
$ [MEASUREMENT_POINTS]
$ These are auxialliary measurement points in addition to any  measurement
$ requests made directly on tools or pipes in the DRILL_TOOL blocks.
$ These are locations in the design position of the model at which
$ output will be generated.  The output will be generated at the nearest
$ tool or pipe wall contact point in the string.
$ {{Distance_from_Bit}}
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
 Type  =  'drill_collar'
 Name  =  '{TEST_COLLAR_GROUPNAME}'
 Property_File  =  '<{TEST_DATABASE_NAME}>\\drill_collars.tbl\\{TEST_COLLAR_NAME}.col'
 Measure  =  'yes'
 Color  =  'Default'
 Number_of_Joints  =  {TEST_NUMBER_OF_COLLARS}
$------------------------------------------------------------------DRILL_TOOL_04
[DRILL_TOOL_04]
 Stack_Order  =  4
 Type  =  'drillpipe'
 Name  =  '{TEST_DRILLPIPE_GROUPNAME}'
 Property_File  =  '<{TEST_DATABASE_NAME}>\\drill_pipes.tbl\\{TEST_DRILLPIPE_NAME}.pip'
 Measure  =  'no'
 Color  =  'Default'
 Number_of_Joints  =  {TEST_NUMBER_OF_DRILLPIPES}
$------------------------------------------------------------------DRILL_TOOL_05
[DRILL_TOOL_05]
 Stack_Order  =  5
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

EXPECTED_STRING_TO_PARAMETERS = {
    'UNITS': {'units': 'Imperial'},
    'MODEL': {
        'modelname': 'test_string',
        'outputname': 'test_string',
        'gravity': 32.187,
        'deviation_deg': 0.0,
        'adams_results': 'animation',
        'adams_requests': 'on',
        'adams_graphics': 'off',
        'solverdll': 'adrill_solver'
    },
    'CONTACT': {
        'hole_property_file': '<example_database>\\holes.tbl\\test_hole.hol',
        'contact_method': 'Subroutine',
        'cyl_drag_coeff': 1.0,
        'hole_color': 'LtGray'
    },
    'DRIVE': {'event_property_file': '<example_database>\\events.tbl\\test_event.evt'},
    'MEASUREMENT_POINTS': {'distance_from_bit': [100.0, 300.0, 500.0]},
    'DRILL_TOOL_01': {
        'stack_order': 1.0,
        'type': 'pdc_bit',
        'name': 'test_pdc_01',
        'property_file': '<example_database>\\pdc_bits.tbl\\test_pdc.pdc',
        'measure': 'yes',
        'color': 'Default'
    },
    'DRILL_TOOL_02': {
        'stack_order': 2.0,
        'type': 'stabilizer',
        'name': 'example_stabilizer_02',
        'property_file': '<example_database>\\stabilizers.tbl\\example_stabilizer.sta',
        'measure': 'yes',
        'color': 'Default'
    },
    'DRILL_TOOL_03': {
        'stack_order': 3.0,
        'type': 'short_collar',
        'name': 'test_collar_03',
        'property_file': '<example_database>\\short_collars.tbl\\test_collar.sco',
        'measure': 'no',
        'color': 'Default'
    },
    'DRILL_TOOL_04': {
        'stack_order': 4.0,
        'type': 'generic_long',
        'name': 'test_generic_long_04',
        'property_file': '<example_database>/generic_longs.tbl/test_generic_long.gnl',
        'measure': 'no',
        'color': 'Default'
    },
    'DRILL_TOOL_05': {
        'stack_order': 5.0,
        'type': 'stabilizer',
        'name': 'example_stabilizer_05',
        'property_file': '<example_database>\\stabilizers.tbl\\example_stabilizer.sta',
        'measure': 'yes',
        'color': 'Default'
    },
    'DRILL_TOOL_06': {
        'stack_order': 6.0,
        'type': 'mwd_tool',
        'name': 'test_mwd_06',
        'property_file': '<example_database>\\mwd_tools.tbl\\test_mwd.mwd',
        'measure': 'no',
        'color': 'Default'
    },
    'DRILL_TOOL_07': {
        'stack_order': 7.0,
        'type': 'crossover',
        'name': 'test_crossover_07',
        'property_file': '<example_database>\\crossovers.tbl\\test_crossover.crs',
        'measure': 'no',
        'color': 'Default'
    },
    'DRILL_TOOL_08': {
        'stack_order': 8.0,
        'type': 'blade_reamer',
        'name': 'test_blade_reamer_08',
        'property_file': '<example_database>\\blade_reamers.tbl\\test_blade_reamer.bre',
        'measure': 'yes',
        'color': 'Default'
    },
    'DRILL_TOOL_09': {
        'stack_order': 9.0,
        'type': 'flex_pipe',
        'name': 'test_flex_pipe_09',
        'property_file': '<example_database>\\flex_pipes.tbl\\test_flex_pipe.flp',
        'measure': 'no',
        'color': 'Default'
    },
    'DRILL_TOOL_10': {
        'stack_order': 10.0,
        'type': 'crossover',
        'name': 'test_float_crossover_10',
        'property_file': '<example_database>\\crossovers.tbl\\test_float_crossover.crs',
        'measure': 'no',
        'color': 'Default'
    },
    'DRILL_TOOL_11': {
        'stack_order': 11.0,
        'type': 'hw_pipe',
        'name': 'lower_group',
        'property_file': '<example_database>\\hw_pipes.tbl\\test_hwdp.hwp',
        'measure': 'no',
        'color': 'Default',
        'number_of_joints': 4.0
    },
    'DRILL_TOOL_12': {
        'stack_order': 12.0,
        'type': 'jar',
        'name': 'test_jar_12',
        'property_file': '<example_database>\\jars.tbl\\test_jar.djr',
        'measure': 'yes',
        'color': 'Default'
    },
    'DRILL_TOOL_13': {
        'stack_order': 13.0,
        'type': 'hw_pipe',
        'name': 'middle_group',
        'property_file': '<example_database>\\hw_pipes.tbl\\test_hwdp2.hwp',
        'measure': 'yes',
        'color': 'Default',
        'number_of_joints': 5.0
    },
    'DRILL_TOOL_14': {
        'stack_order': 14.0,
        'type': 'accelerator',
        'name': 'test_accelerator_14',
        'property_file': '<example_database>\\accelerators.tbl\\test_accelerator.acc',
        'measure': 'yes',
        'color': 'Default'
    },
    'DRILL_TOOL_15': {
        'stack_order': 15.0,
        'type': 'hw_pipe',
        'name': 'upper_group',
        'property_file': '<example_database>\\hw_pipes.tbl\\test_hwdp3.hwp',
        'measure': 'no',
        'color': 'Default',
        'number_of_joints': 2.0
    },
    'DRILL_TOOL_16': {
        'stack_order': 16.0,
        'type': 'crossover',
        'name': 'test_crossover2_16',
        'property_file': '<example_database>\\crossovers.tbl\\test_crossover2.crs',
        'measure': 'no',
        'color': 'Default'
    },
    'DRILL_TOOL_17': {
        'stack_order': 17.0,
        'type': 'drillpipe',
        'name': 'Upper_DP_Group',
        'property_file': '<example_database>\\drill_pipes.tbl\\test_drillpipe.pip',
        'measure': 'no',
        'color': 'Default',
        'number_of_joints': 6.0
    },
    'DRILL_TOOL_18': {
        'stack_order': 18.0,
        'type': 'equivalent_upper_string',
        'name': 'equivalent_pipe',
        'property_file': '<example_database>\\drill_pipes.tbl\\test_eus.pip',
        'measure': 'yes',
        'color': 'Default',
        'number_of_joints': 19.0
    },
    'TOP_OF_STRING': {},
    'TOP_DRIVE': {
        'type': 'top_drive',
        'name': 'test_top_drive',
        'property_file': '<example_database>\\top_drives.tbl\\test_top_drive.tdr'
    }
}

TEST_EXPECTED_EVENT_TO_PARAMETERS = {
    'Motor_Bend_Ramp': 9.0,
    'Motor_Bend_Start': 1.0,
    'Motor_Type': '3D',
    'Mud_Density': 75.0,
    'N': 5,
    'NPERREV': [[80.0], [20.0]],
    'NperRev': 'on',
    'Off_Bottom': 5.0,
    'FLOW_RATE': [[33.0], [20.0], [511.0]],
    'Plotting_4D': 'on',
    'Plotting_Interval': 0.1,
    'ROP': [[88.0], [42.0], [125.0]],
    'S_threshold': 0.5,
    'Start_Depth': 1300.0,
    'Start_Distance': 50.0,
    'Start_Time': 150,
    'ROTARY_RPM': [[30.0], [10.0], [120.0]],
    'Units': 'Imperial',
    'WOB': [[85.0], [35.0], [50000.0]],
    'C_hi': 1.005,
    'DYNAMICS': [
        [10.0, 50.0, 100.0, 150.0, 200.0],
        [0.04, 0.04, 0.02, 0.02, 0.02]
    ],
    'Drive_Type': 'TOP_ONLY',
    'End_Distance': 550.0,
    'End_Time': 180,
    'Event_Name': 'test_event',
    'Filter_Time_Constant': 0.05,
    'Impact_Damping_Penetration': 0.005,
    'Impact_Exponent': 1.05,
    'Initial_Drive_Torque': 0.0,
    'MOTOR': [[32.0], [8.0], [85.0]],
    'MWD_Pulsing': 'on',
    'Measurement_Tool': 'TOS'
}

TEST_EXPECTED_SOLVER_SETTINGS_TO_PARAMETERS = {
    'Funnel': [
        [500, 500, 500],
        [0.01, 0.001, 0.0005],
        [0.01, 0.001, 0.0005],
        [0.01, 0.001, 0.0005],
        [1, 1, 1],
        [2, 2, 2]
    ],
    'Integrator': 'HHT',
    'Formulation': 'I3',
    'Corrector': 'Original',
    'Error':  2.0e-5,
    'HMax': 0.005,
    'Alpha': -0.25,
    'Thread_Count': 4
}
TEST_EXPECTED_SOLVER_SETTINGS_TO_PARAMETERS['_Funnel'] = zip(*TEST_EXPECTED_SOLVER_SETTINGS_TO_PARAMETERS['Funnel'])

TEST_EXPECTED_SOLVER_SETTINGS_TO_PARAMETERS_2 = {
    'Funnel': [
        [500.0, 500.0, 500.0, 500.0, 500.0],
        [8.0, 8.0, 8.0, 8.0, 8.0],
        [1.0, 0.5, 0.1, 0.05, 0.01],
        [1.0, 0.5, 0.1, 0.05, 0.01],
        [1.0, 1.0, 1.0, 1.0, 1.0],
        [2.0, 2.0, 2.0, 2.0, 2.0]
    ],
    'Integrator': 'HHT',
    'Formulation': 'I3',
    'Corrector': 'Original',
    'Error':  1.0e-5,
    'HMax': 0.1,
    'Alpha': -0.25,
    'Thread_Count': 4
}
TEST_EXPECTED_SOLVER_SETTINGS_TO_PARAMETERS_2['_Funnel'] = zip(*TEST_EXPECTED_SOLVER_SETTINGS_TO_PARAMETERS_2['Funnel'])

TEST_EXPECTED_SOLVER_SETTINGS_FILE_TEXT_READ_THEN_WRITE = """$ ==================================================================
$ This is an Adams Drill solver settings file (.ssf)
$ When this file is specified under 'Adams Solver Parameters' on the
$ 'Run Simulation' tab of an Adams Drill Excel workbook, then the values
$ specified here will override the Adams defaults.
$------------------------------------------------------------------------STATICS
[STATICS]
$ Sometimes, a standard preliminary static simulation will not be possible,
$ so we will need to do a static funnel which runs multiple static simulations
$ with increasingly tighter settings.
$ 'Equilibirum_Mehtod' options: 'Standard' or 'Static_Funnel'
 Equilibrium_Method  =  'Static_Funnel'
$ 
$ Settings for 'Standard' equilibrium method:
 Maxit  =  500.0
 Stability  =  5.0
 Error  =  1.0
 Imbalance  =  1.0
 Tlimit  =  0.5
 Alimit  =  1.0
$ 
$ Settings for 'Static_Funnel' equilibrium method:
$ Alimit is in degrees
(FUNNEL)
{Maxit  Stability  Error  Imbalance  Tlimit  Alimit}
500   0.01   0.01   0.01   1   2
500   0.001   0.001   0.001   1   2
500   0.0005   0.0005   0.0005   1   2
$ 
$-----------------------------------------------------------------------DYNAMICS
[DYNAMICS]
$ Integratror options: GSTIFF or HHT
 Integrator  =  'HHT'
$ 
$ Formulation options: I3 or SI2 (I3 is only valid for HHT)
 Formulation  =  'I3'
$ 
$ Corrector Options: Original or Modified
 Corrector  =  'Original'
 Error  =  2e-05
 HMax  =  0.005
 Alpha  =  -0.25
$---------------------------------------------------------------------EXECUTABLE
[EXECUTABLE]
 Thread_Count  =  4
"""

TEST_EXPECTED_SOLVER_SETTINGS_FILE_TEXT = """$ ==================================================================
$ This is an Adams Drill solver settings file (.ssf)
$ When this file is specified under 'Adams Solver Parameters' on the
$ 'Run Simulation' tab of an Adams Drill Excel workbook, then the values
$ specified here will override the Adams defaults.
$------------------------------------------------------------------------STATICS
[STATICS]
$ Sometimes, a standard preliminary static simulation will not be possible,
$ so we will need to do a static funnel which runs multiple static simulations
$ with increasingly tighter settings.
$ 'Equilibirum_Mehtod' options: 'Standard' or 'Static_Funnel'
 Equilibrium_Method  =  'Static_Funnel'
$ 
$ Settings for 'Standard' equilibrium method:
 Maxit  =  500.0
 Stability  =  5.0
 Error  =  1.0
 Imbalance  =  1.0
 Tlimit  =  0.5
 Alimit  =  1.0
$ 
$ Settings for 'Static_Funnel' equilibrium method:
$ Alimit is in degrees
(FUNNEL)
{Maxit  Stability  Error  Imbalance  Tlimit  Alimit}
500   0.1   0.1   0.1   1   2
500   5   1   1   0.5   1
51   0.5   0.3   0.3   0.5   1
52   0.5   0.3   0.2   0.5   1
53   0.5   0.2   0.2   0.5   1
54   0.5   0.2   0.1   0.5   1
55   0.5   0.1   0.1   0.5   1
56   0.5   0.1   0.05   0.5   1
57   0.5   0.05   0.05   0.5   1
58   0.5   0.05   0.01   0.5   1
59   0.5   0.01   0.01   0.5   1
60   0.5   0.01   0.005   0.5   1
61   0.5   0.005   0.005   0.5   1
62   0.5   0.005   0.001   0.5   1
63   0.5   0.005   0.0005   0.5   1
100   0.5   0.005   0.005   0.5   1
$ 
$-----------------------------------------------------------------------DYNAMICS
[DYNAMICS]
$ Integratror options: GSTIFF or HHT
 Integrator  =  'HHT'
$ 
$ Formulation options: I3 or SI2 (I3 is only valid for HHT)
 Formulation  =  'I3'
$ 
$ Corrector Options: Original or Modified
 Corrector  =  'Modified'
 Error  =  1e-05
 HMax  =  0.005
 Alpha  =  -0.25
$---------------------------------------------------------------------EXECUTABLE
[EXECUTABLE]
 Thread_Count  =  4
"""

TEST_EXPECTED_STRING_CONTENTS_AFTER_REPLACE = """$ ==================================================================
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
 ModelName  =  'test_string'
 OutputName  =  'test_string'
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
 Hole_Property_File  =  '<example_database>\\holes.tbl\\test_hole.hol'
 Contact_Method  =  'Subroutine'
 Cyl_Drag_Coeff  =  1.0
 Hole_Color  =  'LtGray'
$--------------------------------------------------------------------------DRIVE
[DRIVE]
 Event_Property_File  =  '<example_database>\\events.tbl\\test_event.evt'
$-------------------------------------------------------------MEASUREMENT_POINTS
[MEASUREMENT_POINTS]
$ These are auxialliary measurement points in addition to any  measurement
$ requests made directly on tools or pipes in the DRILL_TOOL blocks.
$ These are locations in the design position of the model at which
$ output will be generated.  The output will be generated at the nearest
$ tool or pipe wall contact point in the string.
{Distance_from_Bit}
100.0
300.0
500.0
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
 Name  =  'test_pdc_01'
 Property_File  =  '<example_database>\\pdc_bits.tbl\\test_pdc.pdc'
 Measure  =  'yes'
 Color  =  'Default'
$------------------------------------------------------------------DRILL_TOOL_02
[DRILL_TOOL_02]
 Stack_Order  =  2
 Type  =  'stabilizer'
 Name  =  'fake_stabilizer_02'
 Property_File  =  '<example_database>\\stabilizers.tbl\\fake_stabilizer.sta'
 Measure  =  'yes'
 Color  =  'Default'
$------------------------------------------------------------------DRILL_TOOL_03
[DRILL_TOOL_03]
 Stack_Order  =  3
 Type  =  'short_collar'
 Name  =  'test_collar_03'
 Property_File  =  '<example_database>\\short_collars.tbl\\test_collar.sco'
 Measure  =  'no'
 Color  =  'Default'
$------------------------------------------------------------------DRILL_TOOL_04
[DRILL_TOOL_04]
 Stack_Order  =  4
 Type  =  'generic_long'
 Name  =  'test_generic_long_04'
 Property_File  =  '<example_database>/generic_longs.tbl/test_generic_long.gnl'
 Measure  =  'no'
 Color  =  'Default'
$------------------------------------------------------------------DRILL_TOOL_05
[DRILL_TOOL_05]
 Stack_Order  =  5
 Type  =  'stabilizer'
 Name  =  'fake_stabilizer_05'
 Property_File  =  '<example_database>\\stabilizers.tbl\\fake_stabilizer.sta'
 Measure  =  'yes'
 Color  =  'Default'
$------------------------------------------------------------------DRILL_TOOL_06
[DRILL_TOOL_06]
 Stack_Order  =  6
 Type  =  'mwd_tool'
 Name  =  'test_mwd_06'
 Property_File  =  '<example_database>\\mwd_tools.tbl\\test_mwd.mwd'
 Measure  =  'no'
 Color  =  'Default'
$------------------------------------------------------------------DRILL_TOOL_07
[DRILL_TOOL_07]
 Stack_Order  =  7
 Type  =  'crossover'
 Name  =  'test_crossover_07'
 Property_File  =  '<example_database>\\crossovers.tbl\\test_crossover.crs'
 Measure  =  'no'
 Color  =  'Default'
$------------------------------------------------------------------DRILL_TOOL_08
[DRILL_TOOL_08]
 Stack_Order  =  8
 Type  =  'blade_reamer'
 Name  =  'test_blade_reamer_08'
 Property_File  =  '<example_database>\\blade_reamers.tbl\\test_blade_reamer.bre'
 Measure  =  'yes'
 Color  =  'Default'
$------------------------------------------------------------------DRILL_TOOL_09
[DRILL_TOOL_09]
 Stack_Order  =  9
 Type  =  'flex_pipe'
 Name  =  'test_flex_pipe_09'
 Property_File  =  '<example_database>\\flex_pipes.tbl\\test_flex_pipe.flp'
 Measure  =  'no'
 Color  =  'Default'
$------------------------------------------------------------------DRILL_TOOL_10
[DRILL_TOOL_10]
 Stack_Order  =  10
 Type  =  'crossover'
 Name  =  'test_float_crossover_10'
 Property_File  =  '<example_database>\\crossovers.tbl\\test_float_crossover.crs'
 Measure  =  'no'
 Color  =  'Default'
$------------------------------------------------------------------DRILL_TOOL_11
[DRILL_TOOL_11]
 Stack_Order  =  11
 Type  =  'hw_pipe'
 Name  =  'lower_group'
 Property_File  =  '<example_database>\\hw_pipes.tbl\\test_hwdp.hwp'
 Measure  =  'no'
 Color  =  'Default'
 Number_of_Joints  =  4
$------------------------------------------------------------------DRILL_TOOL_12
[DRILL_TOOL_12]
 Stack_Order  =  12
 Type  =  'jar'
 Name  =  'test_jar_12'
 Property_File  =  '<example_database>\\jars.tbl\\test_jar.djr'
 Measure  =  'yes'
 Color  =  'Default'
$------------------------------------------------------------------DRILL_TOOL_13
[DRILL_TOOL_13]
 Stack_Order  =  13
 Type  =  'hw_pipe'
 Name  =  'middle_group'
 Property_File  =  '<example_database>\\hw_pipes.tbl\\test_hwdp2.hwp'
 Measure  =  'yes'
 Color  =  'Default'
 Number_of_Joints  =  5
$------------------------------------------------------------------DRILL_TOOL_14
[DRILL_TOOL_14]
 Stack_Order  =  14
 Type  =  'accelerator'
 Name  =  'test_accelerator_14'
 Property_File  =  '<example_database>\\accelerators.tbl\\test_accelerator.acc'
 Measure  =  'yes'
 Color  =  'Default'
$------------------------------------------------------------------DRILL_TOOL_15
[DRILL_TOOL_15]
 Stack_Order  =  15
 Type  =  'hw_pipe'
 Name  =  'upper_group'
 Property_File  =  '<example_database>\\hw_pipes.tbl\\test_hwdp3.hwp'
 Measure  =  'no'
 Color  =  'Default'
 Number_of_Joints  =  2
$------------------------------------------------------------------DRILL_TOOL_16
[DRILL_TOOL_16]
 Stack_Order  =  16
 Type  =  'crossover'
 Name  =  'test_crossover2_16'
 Property_File  =  '<example_database>\\crossovers.tbl\\test_crossover2.crs'
 Measure  =  'no'
 Color  =  'Default'
$------------------------------------------------------------------DRILL_TOOL_17
[DRILL_TOOL_17]
 Stack_Order  =  17
 Type  =  'drillpipe'
 Name  =  'Upper_DP_Group'
 Property_File  =  '<example_database>\\drill_pipes.tbl\\test_drillpipe.pip'
 Measure  =  'no'
 Color  =  'Default'
 Number_of_Joints  =  6
$------------------------------------------------------------------DRILL_TOOL_18
[DRILL_TOOL_18]
 Stack_Order  =  18
 Type  =  'equivalent_upper_string'
 Name  =  'equivalent_pipe'
 Property_File  =  '<example_database>\\drill_pipes.tbl\\test_eus.pip'
 Measure  =  'yes'
 Color  =  'Default'
 Number_of_Joints  =  19
$------------------------------------------------------------------TOP_OF_STRING
[TOP_OF_STRING]
$----------------------------------------------------------------------TOP_DRIVE
[TOP_DRIVE]
 Type  =  'top_drive'
 Name  =  'test_top_drive'
 Property_File  =  '<example_database>\\top_drives.tbl\\test_top_drive.tdr'
"""

EXPECTED_READ_THEN_WRITE_EVENT_TEXT = """$ ==================================================================
$ This is the Adams Drill Event file which contains
$ the following data blocks:
$   [UNITS]
$   [DRIVE]
$   [MISC]
$ 
$  NOTA BENE: block and subblock titles MUST begin in column 1.
$  Comments also must begin in column 1.
$  ==================================================================
$------------------------------------------------------------ADAMS_DRILL_HEADER
[ADAMS_DRILL_HEADER]
 File_Type  =  'event'
 File_Version  =  2.0
$-------------------------------------------------------------------------UNITS
[UNITS]
$ Adams Drill currently supports one units set: 
$ 'Imperial' (foot, degree, pound force, pound mass, second)
 Units  =  'Imperial'
$-------------------------------------------------------------------------DRIVE
[DRIVE]
(GENERAL)
 Event_Name  =  'test_event'
$ Valid Drive Types: 'WITH_MOTOR', 'TOP_ONLY'
 Drive_Type  =  'TOP_ONLY'
$ Either 'TOS' (default) or user-selected tool from drill string
 Measurement_Tool  =  'TOS'
 Start_Depth  =  1300.0
 Off_Bottom  =  5.0
$ 
 Initial_Drive_Torque  =  0.0
$ 
(ROTARY_RPM)
{Start_Time  Ramp_Duration  Delta_RPM}
30.0   10.0   120.0
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
32.0   8.0   85.0
$ 
$ FLOW_RATE applies only to 3D motors; valid only for DRIVE_TYPE = WITH_MOTOR
$ Gallons/minute in imperial units; Liters/minute in metric units
(FLOW_RATE)
{Start_Time  Ramp_Duration  Delta_Flow_Rate}
33.0   20.0   511.0
$ 
(WOB)
$ Units are in klbf
{Start_Time  Ramp_Duration  Delta_WOB}
85.0   35.0   50.0
$ 
(ROP)
{Start_Time  Ramp_Duration  Delta_ROP}
88.0   42.0   125.0
$--------------------------------------------------------------------------MISC
[MISC]
$ Enter MUD_DENSITY in pounds-mass per cubic foot for IMPERIAL units
$ Enter MUD_DENSITY in kilograms per cubic meter for METRIC units
 Mud_Density  =  75.0
 Impact_Damping_Penetration  =  0.005
 Impact_Exponent  =  1.05
 MWD_Pulsing  =  'on'
$ 
(NPERREV)
$ See Adams Drill documentation prior to switching NperRev 'on'
 NperRev  =  'on'
 N  =  5
 S_threshold  =  0.5
 C_hi  =  1.005
{Start_Time  Ramp_Duration}
80.0   20.0
$----------------------------------------------------------------------DYNAMICS
[DYNAMICS]
$ Specify the simulation time and output rate in seconds
{End_Time  Output_Step_Size}
10.0   0.04
50.0   0.04
100.0   0.02
150.0   0.02
200.0   0.02
$-----------------------------------------------------------------------PLOT_4D
[PLOT_4D]
$ Select if 3D and 4D plotting is to be enabled (on/off).
$ If 3D/4D plotting is turned on, set time range and time increment at which
$ to take measurements ('Plotting_Interval'). Also specify where along the
$ string to measure (Start Distance and End Distance are relative to bit at 0).
$ One (1) contiguous block of not more than a 400 time measurements during the
$ simulation can be specified, for not more than one 5000ft (1500m) section
$ of the physically modeled string. (Equivalent Upper String not allowed.)
 Plotting_4D  =  'on'
 Start_Time  =  150.0
 End_Time  =  180.0
 Plotting_Interval  =  0.1
 Start_Distance  =  50.0
 End_Distance  =  550.0
"""

EXPECTED_DRILLSIM_FROM_EXISTING_EVENT_FILE_ACF_TEXT = """
file/model=test_analysis_1
!
! Integrator Settings:
INTEGRATOR/ &
, HHT &
, ERROR = 1.0E-05
!
! Command String Speed:
! Note: Factors of PI/30 used to convert from RPM 
! commands to internal modeling units of rad/sec
VARIABLE/9105 &
, FUNCTION=STEP(TIME,30.0,0.0,30.0+10.0,120.0*PI/30)
!
! Command WOB:
! Note: Unit of weight is lbf 
VARIABLE/9106 &
, FUNCTION=STEP(TIME,85.0,0,85.0+35.0,5.0E+04)
!
! Command ROP:
! Note: Factors of 1/3600 used to convert from ft/hr 
! commands to internal modeling units of ft/sec
VARIABLE/9104 &
, FUNCTION=STEP(TIME,88.0,0,88.0+42.0,125.0/3600)
!
!
equil/maxit=500, stab=0.1, error=0.1, imbal=0.1, tlim=1.0, alim=2.0D
sim/stat
equil/maxit=500, stab=5.0, error=1.0, imbal=1.0, tlim=0.5, alim=1.0D
sim/stat
equil/maxit=51, stab=0.5, error=0.3, imbal=0.3, tlim=0.5, alim=1.0D
sim/stat
equil/maxit=52, stab=0.5, error=0.3, imbal=0.2, tlim=0.5, alim=1.0D
sim/stat
equil/maxit=53, stab=0.5, error=0.2, imbal=0.2, tlim=0.5, alim=1.0D
sim/stat
equil/maxit=54, stab=0.5, error=0.2, imbal=0.1, tlim=0.5, alim=1.0D
sim/stat
equil/maxit=55, stab=0.5, error=0.1, imbal=0.1, tlim=0.5, alim=1.0D
sim/stat
equil/maxit=56, stab=0.5, error=0.1, imbal=5.0E-02, tlim=0.5, alim=1.0D
sim/stat
equil/maxit=57, stab=0.5, error=5.0E-02, imbal=5.0E-02, tlim=0.5, alim=1.0D
sim/stat
equil/maxit=58, stab=0.5, error=5.0E-02, imbal=1.0E-02, tlim=0.5, alim=1.0D
sim/stat
equil/maxit=59, stab=0.5, error=1.0E-02, imbal=1.0E-02, tlim=0.5, alim=1.0D
sim/stat
equil/maxit=60, stab=0.5, error=1.0E-02, imbal=5.0E-03, tlim=0.5, alim=1.0D
sim/stat
equil/maxit=61, stab=0.5, error=5.0E-03, imbal=5.0E-03, tlim=0.5, alim=1.0D
sim/stat
equil/maxit=62, stab=0.5, error=5.0E-03, imbal=1.0E-03, tlim=0.5, alim=1.0D
sim/stat
equil/maxit=63, stab=0.5, error=5.0E-03, imbal=5.0E-04, tlim=0.5, alim=1.0D
sim/stat
equil/maxit=100, stab=0.5, error=5.0E-03, imbal=5.0E-03, tlim=0.5, alim=1.0D
sim/stat
!
sim/dyn, end=10.0, dtout=4.0E-02
sim/dyn, end=50.0, dtout=4.0E-02
sim/dyn, end=100.0, dtout=2.0E-02
sim/dyn, end=150.0, dtout=2.0E-02
sim/dyn, end=200.0, dtout=2.0E-02
!

stop
"""

EXPECTED_DRILLSIM_ACF_TEXT_AFTER_SSF_CHANGE = """
file/model=test_analysis_1
!
! Integrator Settings:
INTEGRATOR/ &
, HHT &
, ERROR = 2e-05
!
! Command String Speed:
! Note: Factors of PI/30 used to convert from RPM 
! commands to internal modeling units of rad/sec
VARIABLE/9105 &
, FUNCTION=STEP(TIME,15.0,0.0,15.0+15.0,60.0*PI/30)
!
! Motor GPM:
VARIABLE/1102 &
, FUNCTION=VARVAL(11021) * &
, (STEP(TIME,0.0,0.0,0.0+15.0,500.0))
!
! Command WOB:
! Note: Unit of weight is lbf 
VARIABLE/9106 &
, FUNCTION=STEP(TIME,30.0,0,30.0+15.0,5.0E+04)
!
! Command ROP:
! Note: Factors of 1/3600 used to convert from ft/hr 
! commands to internal modeling units of ft/sec
VARIABLE/9104 &
, FUNCTION=STEP(TIME,30.0,0,30.0+15.0,100.0/3600)
!
!
equil/maxit=500, stab=0.01, error=0.01, imbal=0.01, tlim=1, alim=2D
sim/stat
equil/maxit=500, stab=0.001, error=0.001, imbal=0.001, tlim=1, alim=2D
sim/stat
equil/maxit=500, stab=0.0005, error=0.0005, imbal=0.0005, tlim=1, alim=2D
sim/stat
!
sim/dyn, end=10.0, dtout=5.0E-02
sim/dyn, end=100.0, dtout=5.0E-02
!

stop
"""

EXPECTED_DRILLSIM_SSF_TEXT_AFTER_SSF_CHANGE = """$ ==================================================================
$ This is an Adams Drill solver settings file (.ssf)
$ When this file is specified under 'Adams Solver Parameters' on the
$ 'Run Simulation' tab of an Adams Drill Excel workbook, then the values
$ specified here will override the Adams defaults.
$------------------------------------------------------------------------STATICS
[STATICS]
$ Sometimes, a standard preliminary static simulation will not be possible,
$ so we will need to do a static funnel which runs multiple static simulations
$ with increasingly tighter settings.
$ 'Equilibirum_Mehtod' options: 'Standard' or 'Static_Funnel'
 Equilibrium_Method  =  'Static_Funnel'
$ 
$ Settings for 'Standard' equilibrium method:
 Maxit  =  500.0
 Stability  =  5.0
 Error  =  1.0
 Imbalance  =  1.0
 Tlimit  =  0.5
 Alimit  =  1.0
$ 
$ Settings for 'Static_Funnel' equilibrium method:
$ Alimit is in degrees
(FUNNEL)
{Maxit  Stability  Error  Imbalance  Tlimit  Alimit}
500   0.01   0.01   0.01   1   2
500   0.001   0.001   0.001   1   2
500   0.0005   0.0005   0.0005   1   2
$ 
$-----------------------------------------------------------------------DYNAMICS
[DYNAMICS]
$ Integratror options: GSTIFF or HHT
 Integrator  =  'HHT'
$ 
$ Formulation options: I3 or SI2 (I3 is only valid for HHT)
 Formulation  =  'I3'
$ 
$ Corrector Options: Original or Modified
 Corrector  =  'Original'
 Error  =  2e-05
 HMax  =  0.005
 Alpha  =  -0.25
$---------------------------------------------------------------------EXECUTABLE
[EXECUTABLE]
 Thread_Count  =  4
"""

TEST_EXPECTED_ACF_AFTER_FUNNEL_MOD = """
file/model=test
!
! Integrator Settings:
INTEGRATOR/ &
, HHT &
, ERROR = 1.0E-05
!
! Command String Speed:
! Note: Factors of PI/30 used to convert from RPM 
! commands to internal modeling units of rad/sec
VARIABLE/9105 &
, FUNCTION=STEP(TIME,15.0,0.0,15.0+15.0,60.0*PI/30)
!
! Motor GPM:
VARIABLE/1102 &
, FUNCTION=VARVAL(11021) * &
, (STEP(TIME,0.0,0.0,0.0+15.0,500.0))
!
! Command WOB:
! Note: Unit of weight is lbf 
VARIABLE/9106 &
, FUNCTION=STEP(TIME,30.0,0,30.0+15.0,50.0)
!
! Command ROP:
! Note: Factors of 1/3600 used to convert from ft/hr 
! commands to internal modeling units of ft/sec
VARIABLE/9104 &
, FUNCTION=STEP(TIME,30.0,0,30.0+15.0,100.0/3600)
!
!
equil/maxit=100, stab=1.001, error=11, imbal=22, tlim=4, alim=1D
sim/stat
equil/maxit=101, stab=2.0, error=22, imbal=23, tlim=5, alim=2.0D
sim/stat
equil/maxit=102, stab=3.0, error=33, imbal=24, tlim=6, alim=3D
sim/stat
!
sim/dyn, end=10.0, dtout=5.0E-02
sim/dyn, end=100.0, dtout=5.0E-02
!

stop

"""

TEST_EXPECTED_ACF_AFTER_INTEGRATOR_MOD = """
file/model=test
!
! Integrator Settings:
INTEGRATOR/ &
, HHT &
, ERROR = 3.1
!
! Command String Speed:
! Note: Factors of PI/30 used to convert from RPM 
! commands to internal modeling units of rad/sec
VARIABLE/9105 &
, FUNCTION=STEP(TIME,15.0,0.0,15.0+15.0,60.0*PI/30)
!
! Motor GPM:
VARIABLE/1102 &
, FUNCTION=VARVAL(11021) * &
, (STEP(TIME,0.0,0.0,0.0+15.0,500.0))
!
! Command WOB:
! Note: Unit of weight is lbf 
VARIABLE/9106 &
, FUNCTION=STEP(TIME,30.0,0,30.0+15.0,50.0)
!
! Command ROP:
! Note: Factors of 1/3600 used to convert from ft/hr 
! commands to internal modeling units of ft/sec
VARIABLE/9104 &
, FUNCTION=STEP(TIME,30.0,0,30.0+15.0,100.0/3600)
!
!
equil/maxit=500, stab=0.1, error=0.1, imbal=0.1, tlim=1.0, alim=2.0D
sim/stat
equil/maxit=500, stab=5.0, error=1.0, imbal=1.0, tlim=0.5, alim=1.0D
sim/stat
equil/maxit=51, stab=0.5, error=0.3, imbal=0.3, tlim=0.5, alim=1.0D
sim/stat
equil/maxit=52, stab=0.5, error=0.3, imbal=0.2, tlim=0.5, alim=1.0D
sim/stat
equil/maxit=53, stab=0.5, error=0.2, imbal=0.2, tlim=0.5, alim=1.0D
sim/stat
equil/maxit=54, stab=0.5, error=0.2, imbal=0.1, tlim=0.5, alim=1.0D
sim/stat
equil/maxit=55, stab=0.5, error=0.1, imbal=0.1, tlim=0.5, alim=1.0D
sim/stat
equil/maxit=56, stab=0.5, error=0.1, imbal=5.0E-02, tlim=0.5, alim=1.0D
sim/stat
equil/maxit=57, stab=0.5, error=5.0E-02, imbal=5.0E-02, tlim=0.5, alim=1.0D
sim/stat
equil/maxit=58, stab=0.5, error=5.0E-02, imbal=1.0E-02, tlim=0.5, alim=1.0D
sim/stat
equil/maxit=59, stab=0.5, error=1.0E-02, imbal=1.0E-02, tlim=0.5, alim=1.0D
sim/stat
equil/maxit=60, stab=0.5, error=1.0E-02, imbal=5.0E-03, tlim=0.5, alim=1.0D
sim/stat
equil/maxit=61, stab=0.5, error=5.0E-03, imbal=5.0E-03, tlim=0.5, alim=1.0D
sim/stat
equil/maxit=62, stab=0.5, error=5.0E-03, imbal=1.0E-03, tlim=0.5, alim=1.0D
sim/stat
equil/maxit=63, stab=0.5, error=5.0E-03, imbal=5.0E-04, tlim=0.5, alim=1.0D
sim/stat
equil/maxit=100, stab=0.5, error=5.0E-03, imbal=5.0E-03, tlim=0.5, alim=1.0D
sim/stat
!
sim/dyn, end=10.0, dtout=5.0E-02
sim/dyn, end=100.0, dtout=5.0E-02
!

stop
"""

TEST_EXPECTED_ACF_AFTER_INTEGRATOR_AND_FUNNEL_MOD = """
file/model=test
!
! Integrator Settings:
INTEGRATOR/ &
, HHT &
, ERROR = 3.1
!
! Command String Speed:
! Note: Factors of PI/30 used to convert from RPM 
! commands to internal modeling units of rad/sec
VARIABLE/9105 &
, FUNCTION=STEP(TIME,15.0,0.0,15.0+15.0,60.0*PI/30)
!
! Motor GPM:
VARIABLE/1102 &
, FUNCTION=VARVAL(11021) * &
, (STEP(TIME,0.0,0.0,0.0+15.0,500.0))
!
! Command WOB:
! Note: Unit of weight is lbf 
VARIABLE/9106 &
, FUNCTION=STEP(TIME,30.0,0,30.0+15.0,50.0)
!
! Command ROP:
! Note: Factors of 1/3600 used to convert from ft/hr 
! commands to internal modeling units of ft/sec
VARIABLE/9104 &
, FUNCTION=STEP(TIME,30.0,0,30.0+15.0,100.0/3600)
!
!
equil/maxit=100, stab=1.001, error=11, imbal=22, tlim=4, alim=1D
sim/stat
equil/maxit=101, stab=2.0, error=22, imbal=23, tlim=5, alim=2.0D
sim/stat
equil/maxit=102, stab=3.0, error=33, imbal=24, tlim=6, alim=3D
sim/stat
!
sim/dyn, end=10.0, dtout=5.0E-02
sim/dyn, end=100.0, dtout=5.0E-02
!

stop
"""

EXISTING_MODEL_DIR = os.path.join(os.getcwd(), 'test', 'existing_model')

TEST_STATIC_FUNNELS = [
"""equil/maxit=500, stab=8.0, error=2.0, imbal=2.0, tlim=4.0, alim=4.0D
sim/stat
equil/maxit=500, stab=8.0, error=1.0, imbal=1.0, tlim=4.0, alim=4.0D
sim/stat
equil/maxit=500, stab=1.0, error=0.1, imbal=0.1, tlim=2.0, alim=2.0D
sim/stat
! sdklfsdklj
equil/maxit=500, stab=1.0E-02, error=1.0E-02, imbal=1.0E-02, tlim=1.0, alim=1.0D
sim/stat""",

"""equilibrium/maxit=500, stab=8.0, error=2.0, imbal=2.0, tlim=4.0, alim=4.0D
sim/stat
equil/maxit=500, stab=8.0, error=1.0, imbal=1.0, tlim=4.0, alim=4.0D
sim/stat
equil/maxit=500, stab=1.0, error=0.1, imbal=0.1, tlim=2.0, alim=2.0D
sim/stat
! sdklfsdklj
equil/maxit=500, stab=1.0E-02, error=1.0E-02, imbal=1.0E-02, tlim=1.0, alim=1.0D
sim/stat""",

"""equilibrium/maxit=500, stab=8.0e+2, error=2.0, imbal=2.0, tlim=4.0, alim=4.0D
sim/stat
equil/maxit=500, stab=8.0, error=1.0e-1, imbal=1.0, tlim=4.0, alim=4.0D
sim/stat
equil/maxit=500, stab=1.0, error=0.1e01, imbal=0.1, tlim=2.0, alim=2.0D
sim/stat
! sdklfsdklj
equil/maxit=500, stab=1.0E-02, error=1.0E-02, imbal=1.0E-02, tlim=1.0, alim=1.0D
sim/stat""",

"""equil/maxit=500, stab=8.0e+2, error=2.0, imbal=2.0, tlim=4.0, alim=4.0D
sim/stat
equil/maxit=500, stab=8.0, error=1.0e-1, imbal=1.0, tlim=4.0, alim=4.0D
sim/stat
equil/maxit=500, stab=1.0, error=0.1e01, imbal=0.1, tlim=2.0, alim=2.0D
sim/stat
! sdklfsdklj

!
equil/maxit=500, stab=1.0E-02, error=1.0E-02, imbal=1.0E-02, tlim=1.0, alim=1.0D
sim/stat"""
]

TEST_NON_STATIC_FUNNELS = [
"""sim/dyn, end=5.0, dtout=5.0E-02
sim/dyn, end=45.0, dtout=2.0E-02""",

"""VARIABLE/9104 &
, FUNCTION=STEP(TIME,5.0,0,5.0+15.0,125.0/3600)
!
!
equil/maxit=500, stab=8.0, error=2.0, imbal=2.0, tlim=4.0, alim=4.0D
sim/stat""",

"""!equil/maxit=500, stab=1.0E-02, error=1.0E-02, imbal=1.0E-02, tlim=1.0, alim=1.0D
!sim/stat
!
!sim/dyn, end=5.0, dtout=5.0E-02""",

"""! Note: Unit of weight is lbf 
VARIABLE/9106 &
, FUNCTION=STEP(TIME,5.0,0,5.0+15.0,4.0E+04)
!
! Command ROP:
! Note: Factors of 1/3600 used to convert from ft/hr 
! commands to internal modeling units of ft/sec
VARIABLE/9104 &
, FUNCTION=STEP(TIME,5.0,0,5.0+15.0,125.0/3600)
!
!
equil/maxit=500, stab=8.0, error=2.0, imbal=2.0, tlim=4.0, alim=4.0D
sim/stat
equil/maxit=500, stab=8.0, error=1.0, imbal=1.0, tlim=4.0, alim=4.0D
sim/stat
equil/maxit=500, stab=1.0, error=0.1, imbal=0.1, tlim=2.0, alim=2.0D
sim/stat
! sdklfsdklj
equil/maxit=500, stab=1.0E-02, error=1.0E-02, imbal=1.0E-02, tlim=1.0, alim=1.0D
sim/stat
!
sim/dyn, end=5.0, dtout=5.0E-02
sim/dyn, end=45.0, dtout=2.0E-02
!

stop""",
]

TEST_INTEGRATOR_STATEMENTS = [
    """INTEGRATOR/ &
, HHT &
, ERROR = 1.0E-05""",

'INTEGRATOR/, HHT, ERROR = 1.0E-05',

"""INTEGRATOR/ &
, HHT &
, ERROR = 1.0E-05 &
, hmax = 1.0E-05"""
]

TEST_NON_INTEGRATOR_STATEMENTS = [
    """EQUILIBRIUM/ &
, HHT &
, ERROR = 1.0E-05"""
]

def check_file_contents(filename, expected_text):
    """Checks that the given file contains the expected text.
    
    Parameters
    ----------
    filename : str
        Name of file to check
    expected_text : str
        Expected contents of file
    
    Returns
    -------
    list
        :obj:`list` of unexpected lines
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
    
    Parameters
    ----------
    database_path : str
        Path to the database to be cleared
    """
    for table in glob.glob(os.path.join(database_path,'*')):
        for file in glob.glob(os.path.join(table,'*')):
            os.remove(file)

if not os.path.exists(TEST_WORKING_DIRECTORY):
    os.mkdir(TEST_WORKING_DIRECTORY)

# Make a new database if it doesn't exist already
if not os.path.exists(TEST_NEW_DATABASE_PATH):
    os.mkdir(TEST_NEW_DATABASE_PATH)

# Populate the new database with tables
for table in [DATABASE_INFO[tool]['table'] for tool in DATABASE_INFO]:
    if not os.path.exists(os.path.join(TEST_NEW_DATABASE_PATH, table)):
        os.mkdir(os.path.join(TEST_NEW_DATABASE_PATH, table))
