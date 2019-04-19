import os
import glob

# Set the ADRILL_USER_CFG and ADRILL_SHARED_CFG environment variables
os.environ['ADRILL_USER_CFG'] = os.path.join('C:\\', 'Users', 'bthornt', '.adrill.cfg')
os.environ['ADRILL_SHARED_CFG'] = os.path.join('C:\\', 'MSC.Software', 'Adams', '2018', 'adrill', 'adrill.cfg')
os.environ['ADAMS_LAUNCH_COMMAND'] = os.path.join('C:\\', 'MSC.Software', 'Adams', '2018', 'common', 'mdi.bat')

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

TEST_SOLVER_SETTINGS_NAME = 'test_solver_settings'
TEST_SOLVER_SETTINGS_FILE = os.path.join(f'<{TEST_DATABASE_NAME}>', 'solver_settings.tbl', TEST_SOLVER_SETTINGS_NAME + '.ssf')

TEST_EXISTING_STRING_NAME = 'test_string'
TEST_EXISTING_STRING_FILE = os.path.join(f'<{TEST_DATABASE_NAME}>', 'drill_strings.tbl', TEST_EXISTING_STRING_NAME + '.str')

TEST_EXISTING_AGITATOR_FILE = os.path.join(f'<{TEST_DATABASE_NAME}>', 'agitators.tbl', 'test_agitator.agn')

TEST_EXISTING_STRING_NAME_WITH_SPACES_IN_HOLE_REF = 'test_string_with_spaces_in_hole_ref'
TEST_EXISTING_STRING_FILE_WITH_SPACES_IN_HOLE_REF = os.path.join(f'<{TEST_DATABASE_NAME}>', 'drill_strings.tbl', TEST_EXISTING_STRING_NAME_WITH_SPACES_IN_HOLE_REF + '.str')

TEST_EXISTING_STRING_NAME_COLLAR = 'test_string_collar'
TEST_EXISTING_STRING_FILE_COLLAR = os.path.join(f'<{TEST_DATABASE_NAME}>', 'drill_strings.tbl', TEST_EXISTING_STRING_NAME_COLLAR + '.str')

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

TEST_EXISTING_RES_FILE = os.path.join(os.getcwd(), 'test', 'files', 'SW_TEST_20181207_1_out.res')
TEST_EXISTING_CMD_FILE = os.path.join(os.getcwd(), 'test', 'files', 'test_analysis_1.cmd')
TEST_EXPECTED_MODNAME_IN_CMD = 'test_analysis_1'

TEST_REQUESTS_TO_GET = {}
TEST_REQUESTS_TO_GET['MSE'] = ['Instantaneous_Bottom_MSE', 'Filtered_Surface_MSE']
TEST_REQUESTS_TO_GET['ROP_controls'] = ['Command_ROP', 'True_WOB']
TEST_REQUESTS_TO_GET['blahMotor_X_X_X_150_10000_02_Motion'] = ['Omega_Z', 'Axial_Load']

TEST_REQUEST_TIME_MIN = 20
TEST_REQUEST_TIME_MAX = 22

TEST_EXPECTED_REQUESTS = {
    'MSE': {
        'Instantaneous_Bottom_MSE': [5337.63906383821995405, 5606.08545797803253663, 5025.78584931647219491, 5313.80955553230887745, 5159.68664727625764499, 5607.2919254371226998, 5991.99287229788205877, 6131.18889136154848529, 6170.69141104307709611, 6549.93155836753612675, 6489.67243176894589851, 6530.90851605792795453, 6822.07449483032814896, 7010.84223324748472805, 7133.85856673468788358, 7574.65456524828368856, 7602.81023443935464456, 7439.26197539354143373, 7927.1898833254335841, 8164.27304330869355908, 8008.95769430475047557, 8810.15104968192827073, 9360.14305730695923558, 8946.2664248036689969, 9853.8508844798507198, 10550.30729893630268634, 11113.54431583623227198, 11299.6148276115545741, 11409.65555154075627797, 12474.38875767132230976, 13081.14612744832993485, 13615.01872298609123391, 14102.63043832186122017, 14529.01588833887944929, 14866.17863855830728426, 15489.28184527035773499, 16269.48759981991679524, 16494.9358892105956329, 16369.6224154571955296, 16516.74036933651586878, 16126.71318612981121987],
        'Filtered_Surface_MSE': [4071.5519294589294077, 4083.157542856668897, 4092.88241973852154842, 4101.72977035121311928, 4109.6365418938557923, 4116.70774506975340046, 4125.13563379233437445, 4138.18753025703699677, 4154.8709256556139735, 4172.56203927405022114, 4191.91313803450611886, 4214.5115935509920746, 4241.38322800753667252, 4273.6561924689776788, 4310.56577820793245337, 4350.95807000842069101, 4394.10566171913887956, 4417.53971402381102962, 4427.88505838601304276, 4435.14007286372816452, 4440.55182685662839503, 4445.3447418567884597, 4450.50445194647181779, 4453.90254771645504661, 4451.68315890305893845, 4445.43065898566419492, 4437.69956660439765983, 4429.38849024241335428, 4419.49934266118543746, 4407.84774371893217904, 4395.31087299091359455, 4382.23967300330696162, 4368.362663806125056, 4353.61349984459047846, 4338.21871841793381464, 4322.28104821346914832, 4305.79968465097772423, 4288.8520501469147348, 4271.53494108469567436, 4253.92811936651196447, 4236.11016275707424938]
        },
    'ROP_controls': {
        'Command_ROP': [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
        'True_WOB': [-0.35687612723437723, -0.37002615027920943, -0.35428708240187651, -0.33166899007505479, -0.35216880579133486, -0.38260034088964257, -0.37165476173966239, -0.34179377102365799, -0.34317994219966841, -0.37792036619761532, -0.3680400045551358, -0.33252402164984668, -0.36884723976082467, -0.37772724188297846, -0.33360384203228033, -0.36522847735889608, -0.38263552049941574, -0.3355350437580919, -0.35629183798777875, -0.41723697323720638, -0.3531362085574925, -0.34313344273760732, -0.36722283977338205, -0.39222538860475203, -0.34838681496183505, -0.33504143289575367, -0.34148430131081353, -0.3750862940265029, -0.39946682555155677, -0.38025434257042035, -0.36297367056368207, -0.33162685579619311, -0.31540055746398082, -0.327104544157925, -0.35228662272271938, -0.37457331612890865, -0.38824363426731684, -0.39173506383694712, -0.39479636874692836, -0.36786841156164907, -0.35242227098855866]
        },
    'blahMotor_X_X_X_150_10000_02_Motion': {
        'Omega_Z': [66.90634329732056074, 62.60019725021228254, 64.78332043877659885, 59.37540535497772254, 53.47263125081227031, 51.21249318499707215, 48.78643650960881928, 45.93429237053917547, 45.61758851569293682, 43.77644604267238293, 38.63290089997874333, 39.23355331387567446, 40.77738156779842882, 38.53366220016756927, 38.44495403824966218, 41.8365512876726342, 38.38455828666773328, 41.1390333373547108, 45.78009046203814592, 42.5091512089859549, 42.25224912031987401, 49.20381100727702517, 48.82282676892545226, 47.35131487995779764, 52.43624944192972492, 56.89843545063819619, 58.89899879376195457, 58.90901437845763411, 59.99342947718843533, 63.10503270581924795, 65.14929742922323896, 65.02079741834057813, 66.77900328350649772, 69.23993953418458602, 71.32980402219995142, 72.11818658777495727, 70.37269768363850631, 68.29974843665354456, 65.39954884869547413, 62.68634435739900113, 62.71613140312947365],
        'Axial_Load': [-0.35687612723435419, -0.37002615027754554, -0.35428708240198281, -0.33166899007058021, -0.35216880579103965, -0.38260034088871736, -0.37165476173989331, -0.34179377102244968, -0.34317994219627018, -0.37792036619759356, -0.36804000455514951, -0.3325240216497426, -0.36884723976131278, -0.37772724188295592, -0.33360384203231774, -0.36522847735888081, -0.38263552049942207, -0.33553504375809756, -0.35629183798785263, -0.41723697323720599, -0.35313620855743955, -0.34313344273769897, -0.36722283977350872, -0.39222538860490591, -0.34838681496027224, -0.33504143289590071, -0.34148430131081609, -0.3750862940222397, -0.39946682555149499, -0.38025434256995849, -0.36297367056409019, -0.33162685579609269, -0.3154005574637832, -0.32710454415822754, -0.35228662272279365, -0.37457331612756073, -0.38824363426705488, -0.39173506383689455, -0.39479636874710766, -0.36786841156164835, -0.35242227098855816]
        },
    'time': [20.0, 20.05, 20.1, 20.15, 20.2, 20.25, 20.3, 20.35, 20.4, 20.45, 20.5, 20.55, 20.6, 20.65, 20.7, 20.75, 20.8, 20.85, 20.9, 20.95, 21.0, 21.05, 21.1, 21.15, 21.2, 21.25, 21.3, 21.35, 21.4, 21.45, 21.5, 21.55, 21.6, 21.65, 21.7, 21.75, 21.8, 21.85, 21.9, 21.95, 22.0]
    }

TEST_EXPECTED_REQUEST_UNITS = {
    'blahMotor_X_X_X_150_10000_02_Motion': {
        'Omega_Z': '(RPM)',
        'Axial_Load': '(Klbf)'
        },
    'ROP_controls': {
        'Command_ROP': '(ft/hr)',
        'True_WOB': '(klbf)'
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

EXPECTED_DRILLSIM_ADM_FILE_TEXT = '''
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
(TOP_DRIVE)
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
$ PUMP_FLOW applies only to 3D motors; valid only for DRIVE_TYPE = WITH_MOTOR
$ Gallons/minute in imperial units; Liters/minute in metric units
(PUMP_FLOW)
{{Start_Time  Ramp_Duration  Delta_Flow_Rate}}
0   15   500
$ 
(WOB)
{{Start_Time  Ramp_Duration  Delta_WOB}}
30   15   50
$ 
(ROP)
{{Start_Time  Ramp_Duration  Delta_ROP}}
30   15   100
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
    'PUMP_FLOW': [[33.0], [20.0], [511.0]],
    'Plotting_4D': 'on',
    'Plotting_Interval': 0.1,
    'ROP': [[88.0], [42.0], [125.0]],
    'S_threshold': 0.5,
    'Start_Depth': 1300.0,
    'Start_Distance': 50.0,
    'Start_Time': [30.0],
    'TOP_DRIVE': [[30.0], [10.0], [120.0]],
    'Units': 'Imperial',
    'WOB': [[85.0], [35.0], [50000.0]],
    'C_hi': 1.005,
    'DYNAMICS': [
        [10.0, 50.0, 100.0, 150.0, 200.0],
        [0.04, 0.04, 0.02, 0.02, 0.02]
    ],
    'Drive_Type': 'TOP_ONLY',
    'End_Distance': 550.0,
    'End_Time': [10.0, 50.0, 100.0, 150.0, 200.0],
    'Event_Name': 'test_event',
    'File_Type': 'event',
    'File_Version': 1.0,
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
