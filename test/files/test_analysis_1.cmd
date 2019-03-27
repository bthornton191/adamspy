!
!-------------------------- Default Units for Model ---------------------------!
!
!
defaults units  &
   length = foot  &
   angle = deg  &
   force = pound_force  &
   mass = slug  &
   time = sec
!
defaults units  &
   coordinate_system_type = cartesian  &
   orientation_type = body313
!
!------------------------ Default Attributes for Model ------------------------!
!
!
defaults attributes  &
   inheritance = bottom_up  &
   icon_visibility = off  &
   grid_visibility = off  &
   size_of_icons = 0.1640419948  &
   spacing_for_grid = 3.280839895
!
!------------------------------ Adams View Model ------------------------------!
!
!
model create  &
   model_name = test_analysis_1
!
view erase
!
!-------------------------------- Data storage --------------------------------!
!
!
data_element create variable  &
   variable_name = .test_analysis_1.Command_ROP  &
   adams_id = 9104  &
   function = ""
!
data_element create variable  &
   variable_name = .test_analysis_1.Bit_omega  &
   adams_id = 11022  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .test_analysis_1.drive_torque_command  &
   adams_id = 7000  &
   function = ""
!
data_element create variable  &
   variable_name = .test_analysis_1.TOS_AZ  &
   adams_id = 7002  &
   function = ""
!
data_element create variable  &
   variable_name = .test_analysis_1.TOS_WZ  &
   adams_id = 7003  &
   function = ""
!
data_element create variable  &
   variable_name = .test_analysis_1.ePipe_topAZ  &
   adams_id = 7401  &
   function = ""
!
data_element create variable  &
   variable_name = .test_analysis_1.ePipe_topWZ  &
   adams_id = 7402  &
   function = ""
!
data_element create variable  &
   variable_name = .test_analysis_1.ePipe_topRPM  &
   adams_id = 7403  &
   function = ""
!
data_element create variable  &
   variable_name = .test_analysis_1.hookload_command  &
   adams_id = 11023  &
   function = ""
!
data_element create variable  &
   variable_name = .test_analysis_1.TOS_Z  &
   adams_id = 11024  &
   function = ""
!
data_element create variable  &
   variable_name = .test_analysis_1.TOS_VZ  &
   adams_id = 11025  &
   function = ""
!
data_element create variable  &
   variable_name = .test_analysis_1.g_hat  &
   adams_id = 8300  &
   function = ""
!
data_element create variable  &
   variable_name = .test_analysis_1.Command_String_Speed  &
   adams_id = 9105  &
   function = ""
!
data_element create variable  &
   variable_name = .test_analysis_1.PropGain  &
   adams_id = 9101  &
   function = ""
!
data_element create variable  &
   variable_name = .test_analysis_1.IntGain  &
   adams_id = 9102  &
   function = ""
!
data_element create variable  &
   variable_name = .test_analysis_1.DerivGain  &
   adams_id = 9103  &
   function = ""
!
data_element create variable  &
   variable_name = .test_analysis_1.motor_RPM  &
   adams_id = 1101  &
   function = ""
!
data_element create variable  &
   variable_name = .test_analysis_1.MWDFlowDeficit  &
   adams_id = 11021  &
   function = ""
!
data_element create variable  &
   variable_name = .test_analysis_1.motor_GPM  &
   adams_id = 1102  &
   function = ""
!
data_element create variable  &
   variable_name = .test_analysis_1.Command_WOB  &
   adams_id = 9106  &
   function = ""
!
data_element create variable  &
   variable_name = .test_analysis_1.BitMD  &
   adams_id = 9001  &
   initial_condition = 1372.01  &
   function = ""
!
data_element create variable  &
   variable_name = .test_analysis_1.Surface_MSE  &
   adams_id = 11026  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .test_analysis_1.Bottom_MSE  &
   adams_id = 11027  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .test_analysis_1.dummy_DGSE_input  &
   adams_id = 11028  &
   function = ""
!
data_element create array u_input_array  &
   array_name = .test_analysis_1.Epipe1TorsionInputs  &
   adams_id = 7004  &
   variable_name =  &
      .test_analysis_1.drive_torque_command,  &
      .test_analysis_1.TOS_AZ,  &
      .test_analysis_1.TOS_WZ
!
data_element create array ic_array  &
   array_name = .test_analysis_1.Epipe1TorsionICs  &
   adams_id = 7001  &
   size = 8  &
   numbers = 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0
!
data_element create array x_state_array  &
   array_name = .test_analysis_1.Epipe1TorsionStates  &
   adams_id = 7002  &
   comments = "theta1-4 thetadot1-4"  &
   size = 8
!
data_element create array y_output_array  &
   array_name = .test_analysis_1.Epipe1TorsionOutput  &
   adams_id = 7003  &
   size = 1
!
data_element create array u_input_array  &
   array_name = .test_analysis_1.Epipe1AxialInputs  &
   adams_id = 8004  &
   variable_name =  &
      .test_analysis_1.hookload_command,  &
      .test_analysis_1.TOS_Z,  &
      .test_analysis_1.TOS_VZ,  &
      .test_analysis_1.g_hat
!
data_element create array ic_array  &
   array_name = .test_analysis_1.Epipe1AxialICs  &
   adams_id = 8001  &
   size = 8  &
   numbers = 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0
!
data_element create array x_state_array  &
   array_name = .test_analysis_1.Epipe1AxialStates  &
   adams_id = 8002  &
   comments = "z1-4 zdot1-4"  &
   size = 8
!
data_element create array y_output_array  &
   array_name = .test_analysis_1.Epipe1AxialOutput  &
   adams_id = 8003  &
   size = 1
!
data_element create array ic_array  &
   array_name = .test_analysis_1.sliderCMarray  &
   adams_id = 9002  &
   size = 44  &
   numbers = 9.000001E+06, 9.000201E+06, 9.000301E+06, 9.000401E+06,  &
             9.000501E+06, 9.000701E+06, 9.000801E+06, 9.001001E+06,  &
             9.001101E+06, 9.001301E+06, 9.001401E+06, 9.001601E+06,  &
             9.001701E+06, 9.001901E+06, 9.002001E+06, 9.002201E+06,  &
             9.002301E+06, 9.002501E+06, 9.002601E+06, 9.002801E+06,  &
             9.002901E+06, 9.003101E+06, 9.003201E+06, 9.003401E+06,  &
             9.003501E+06, 9.003701E+06, 9.003801E+06, 9.004001E+06,  &
             9.004101E+06, 9.004301E+06, 9.004401E+06, 9.004601E+06,  &
             9.004701E+06, 9.004901E+06, 9.005001E+06, 9.005201E+06,  &
             9.005301E+06, 9.005501E+06, 9.005601E+06, 9.005801E+06,  &
             9.005901E+06, 9.006101E+06, 9.006201E+06, 9.006301E+06
!
data_element create array ic_array  &
   array_name = .test_analysis_1.FixedJarray  &
   adams_id = 9003  &
   size = 21  &
   numbers = 9.000202E+06, 9.0004E+06, 9.0007E+06, 9.001E+06, 9.0013E+06,  &
             9.0016E+06, 9.0019E+06, 9.0022E+06, 9.0025E+06, 9.0028E+06,  &
             9.0031E+06, 9.0034E+06, 9.0037E+06, 9.004E+06, 9.0043E+06,  &
             9.0046E+06, 9.0049E+06, 9.0052E+06, 9.0055E+06, 9.0058E+06,  &
             9.0061E+06
!
data_element create array ic_array  &
   array_name = .test_analysis_1.Holedata  &
   adams_id = 9001  &
   size = 17  &
   numbers = 9000.0, 1.0, 1001.0, 9002.0, 9.5001E+04, 9001.0, 9.0E+06,  &
             9.000001E+06, 9.000005E+06, 8901.0, 8911.0, 8912.0, 8921.0,  &
             8922.0, 8923.0, 8924.0, 9003.0
!
data_element create array u_input_array  &
   array_name = .test_analysis_1.dummy_DGSE_U  &
   adams_id = 991  &
   size = 1  &
   variable_name = .test_analysis_1.dummy_DGSE_input
!
data_element create array y_output_array  &
   array_name = .test_analysis_1.dummy_DGSE_Y  &
   adams_id = 992  &
   size = 1
!
data_element create array x_state_array  &
   array_name = .test_analysis_1.dummy_DGSE_X  &
   adams_id = 993  &
   size = 1
!
data_element create array ic_array  &
   array_name = .test_analysis_1.dummy_DGSE_IC  &
   adams_id = 994  &
   size = 1  &
   numbers = 0.0
!
data_element create matrix full  &
   matrix_name = .test_analysis_1.HoleCoords  &
   adams_id = 9000  &
   input_order = by_column  &
   row_count = 109  &
   column_count = 3  &
   values =  &
      0.0, 0.0, 0.0,  &
      0.0, 0.0, 0.0,  &
      0.0, 0.0, 0.0,  &
      0.0, 0.0, 0.0,  &
      0.0, 0.0, 8.0E-02,  &
      0.3, 0.69, 1.22,  &
      1.9, 2.74, 3.73,  &
      4.87, 6.16, 7.6,  &
      9.19, 10.93, 12.81,  &
      14.85, 17.04, 19.37,  &
      21.85, 24.47, 27.24,  &
      30.15, 33.21, 36.41,  &
      39.75, 43.23, 46.85,  &
      50.6, 54.5, 58.53,  &
      62.69, 66.99, 71.42,  &
      75.98, 80.66, 85.48,  &
      90.42, 95.49, 100.68,  &
      105.99, 111.43, 116.98,  &
      122.65, 128.43, 134.32,  &
      140.33, 146.45, 152.67,  &
      159.0, 165.43, 171.97,  &
      178.61, 185.34, 192.17,  &
      199.09, 206.11, 213.21,  &
      220.4, 227.68, 235.04,  &
      242.48, 250.0, 257.6,  &
      265.26, 273.0, 280.81,  &
      288.69, 296.63, 304.63,  &
      312.7, 320.82, 328.99,  &
      337.22, 345.49, 353.81,  &
      362.18, 370.59, 379.04,  &
      387.52, 396.04, 404.6,  &
      413.18, 421.78, 430.41,  &
      439.07, 447.74, 456.42,  &
      465.12, 473.83, 482.55,  &
      491.27, 500.0, 600.0,  &
      700.0, 800.0, 900.0,  &
      1000.0, 0.0, 0.0,  &
      0.0, 0.0, 0.0,  &
      0.0, 0.0, 0.0,  &
      0.0, 0.0, 0.0,  &
      0.0, 0.0, 0.0,  &
      0.0, 0.0, 0.0,  &
      0.0, 0.0, 0.0,  &
      0.0, 0.0, 0.0,  &
      0.0, 0.0, 0.0,  &
      0.0, 0.0, 0.0,  &
      0.0, 0.0, 0.0,  &
      0.0, 0.0, 0.0,  &
      0.0, 0.0, 0.0,  &
      0.0, 0.0, 0.0,  &
      0.0, 0.0, 0.0,  &
      0.0, 0.0, 0.0,  &
      0.0, 0.0, 0.0,  &
      0.0, 0.0, 0.0,  &
      0.0, 0.0, 0.0,  &
      0.0, 0.0, 0.0,  &
      0.0, 0.0, 0.0,  &
      0.0, 0.0, 0.0,  &
      0.0, 0.0, 0.0,  &
      0.0, 0.0, 0.0,  &
      0.0, 0.0, 0.0,  &
      0.0, 0.0, 0.0,  &
      0.0, 0.0, 0.0,  &
      0.0, 0.0, 0.0,  &
      0.0, 0.0, 0.0,  &
      0.0, 0.0, 0.0,  &
      0.0, 0.0, 0.0,  &
      0.0, 0.0, 0.0,  &
      0.0, 0.0, 0.0,  &
      0.0, 0.0, 0.0,  &
      0.0, 0.0, 0.0,  &
      0.0, 0.0, 0.0,  &
      0.0, 0.0, 0.0,  &
      252.0, 502.0, 752.0,  &
      822.0, 842.0, 862.0,  &
      882.0, 902.0, 922.0,  &
      942.0, 962.0, 982.0,  &
      1002.0, 1010.73, 1019.45,  &
      1028.17, 1036.88, 1045.58,  &
      1054.26, 1062.93, 1071.59,  &
      1080.22, 1088.82, 1097.4,  &
      1105.96, 1114.48, 1122.96,  &
      1131.41, 1139.82, 1148.19,  &
      1156.51, 1164.78, 1173.01,  &
      1181.18, 1189.3, 1197.37,  &
      1205.37, 1213.31, 1221.19,  &
      1229.0, 1236.74, 1244.4,  &
      1252.0, 1259.52, 1266.96,  &
      1274.32, 1281.6, 1288.79,  &
      1295.89, 1302.91, 1309.83,  &
      1316.66, 1323.39, 1330.03,  &
      1336.57, 1343.0, 1349.33,  &
      1355.55, 1361.67, 1367.68,  &
      1373.57, 1379.35, 1385.02,  &
      1390.57, 1396.01, 1401.32,  &
      1406.51, 1411.58, 1416.52,  &
      1421.34, 1426.02, 1430.58,  &
      1435.01, 1439.31, 1443.47,  &
      1447.5, 1451.4, 1455.15,  &
      1458.77, 1462.25, 1465.59,  &
      1468.79, 1471.85, 1474.76,  &
      1477.53, 1480.15, 1482.63,  &
      1484.96, 1487.15, 1489.19,  &
      1491.07, 1492.81, 1494.4,  &
      1495.84, 1497.13, 1498.27,  &
      1499.26, 1500.1, 1500.78,  &
      1501.31, 1501.7, 1501.92,  &
      1502.0, 1502.0, 1502.0,  &
      1502.0, 1502.0, 1502.0  &
   units = "length"
!
data_element create matrix full  &
   matrix_name = .test_analysis_1.Epipe1TorsionAmat  &
   adams_id = 7101  &
   input_order = by_row  &
   row_count = 8  &
   column_count = 8  &
   values =  &
      0.0, 0.0, 0.0, 0.0, 1.0, 0.0, 0.0, 0.0,  &
      0.0, 0.0, 0.0, 0.0, 0.0, 1.0, 0.0, 0.0,  &
      0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 1.0, 0.0,  &
      0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 1.0,  &
      -3773.7949485908, 3773.7949485908, 0.0, 0.0, -53.3716849285, 37.7379494859, 0.0, 0.0,  &
      3773.7949485908, -7547.5898971816, 3773.7949485908, 0.0, 37.7379494859, -91.1096344144, 37.7379494859, 0.0,  &
      0.0, 3773.7949485908, -7547.5898971816, 3773.7949485908, 0.0, 37.7379494859, -91.1096344144, 37.7379494859,  &
      0.0, 0.0, 3773.7949485908, -7547.5898971816, 0.0, 0.0, 37.7379494859, -91.1096344144
!
data_element create matrix full  &
   matrix_name = .test_analysis_1.Epipe1TorsionBmat  &
   adams_id = 7102  &
   input_order = by_row  &
   row_count = 8  &
   column_count = 3  &
   values =  &
      0.0, 0.0, 0.0,  &
      0.0, 0.0, 0.0,  &
      0.0, 0.0, 0.0,  &
      0.0, 0.0, 0.0,  &
      0.2308094737, 0.0, 0.0,  &
      0.0, 0.0, 0.0,  &
      0.0, 0.0, 0.0,  &
      0.0, 3773.7949485908, 37.7379494859
!
data_element create matrix full  &
   matrix_name = .test_analysis_1.Epipe1TorsionCmat  &
   adams_id = 7103  &
   input_order = by_row  &
   row_count = 1  &
   column_count = 8  &
   values =  &
      0.0, 0.0, 0.0, 1.635026019E+04, 0.0, 0.0, 0.0, 163.502601896
!
data_element create matrix full  &
   matrix_name = .test_analysis_1.Epipe1TorsionDmat  &
   adams_id = 7104  &
   input_order = by_row  &
   row_count = 1  &
   column_count = 3  &
   values =  &
      0.0, -1.635026019E+04, -163.502601896
!
data_element create matrix full  &
   matrix_name = .test_analysis_1.Epipe1AxialAmat  &
   adams_id = 8101  &
   input_order = by_row  &
   row_count = 8  &
   column_count = 8  &
   values =  &
      0.0, 0.0, 0.0, 0.0, 1.0, 0.0, 0.0, 0.0,  &
      0.0, 0.0, 0.0, 0.0, 0.0, 1.0, 0.0, 0.0,  &
      0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 1.0, 0.0,  &
      0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 1.0,  &
      -1.0733238669E+04, 1.0733238669E+04, 0.0, 0.0, -121.5764809977, 107.3323866928, 0.0, 0.0,  &
      1.0733238669E+04, -2.1466477339E+04, 1.0733238669E+04, 0.0, 107.3323866928, -228.9088676905, 107.3323866928, 0.0,  &
      0.0, 1.0733238669E+04, -2.1466477339E+04, 1.0733238669E+04, 0.0, 107.3323866928, -228.9088676905, 107.3323866928,  &
      0.0, 0.0, 1.0733238669E+04, -2.1466477339E+04, 0.0, 0.0, 107.3323866928, -228.9088676905
!
data_element create matrix full  &
   matrix_name = .test_analysis_1.Epipe1AxialBmat  &
   adams_id = 8102  &
   input_order = by_row  &
   row_count = 8  &
   column_count = 4  &
   values =  &
      0.0, 0.0, 0.0, 0.0,  &
      0.0, 0.0, 0.0, 0.0,  &
      0.0, 0.0, 0.0, 0.0,  &
      0.0, 0.0, 0.0, 0.0,  &
      9.49606287E-03, 0.0, 0.0, 1.0,  &
      0.0, 0.0, 0.0, 1.0,  &
      0.0, 0.0, 0.0, 1.0,  &
      0.0, 1.0733238669E+04, 107.3323866928, 1.0
!
data_element create matrix full  &
   matrix_name = .test_analysis_1.Epipe1AxialCmat  &
   adams_id = 8103  &
   input_order = by_row  &
   row_count = 1  &
   column_count = 8  &
   values =  &
      0.0, 0.0, 0.0, 1.1302830253E+06, 0.0, 0.0, 0.0, 1.1302830253E+04
!
data_element create matrix full  &
   matrix_name = .test_analysis_1.Epipe1AxialDmat  &
   adams_id = 8104  &
   input_order = by_row  &
   row_count = 1  &
   column_count = 4  &
   values =  &
      0.0, -1.1302830253E+06, -1.1302830253E+04, 0.0
!
data_element create spline  &
   spline_name = .test_analysis_1.HoleIDspl  &
   adams_id = 8901  &
   x = -5000.0, 0.0, 5000.0, 1.0E+04, 1.5E+04, 2.0E+04  &
   y = 1.0835, 1.0835, 1.0835, 1.0835, 1.0835, 1.0835  &
   linear_extrapolate = yes
!
data_element create spline  &
   spline_name = .test_analysis_1.WallKspl  &
   adams_id = 8911  &
   x = -5000.0, 0.0, 5000.0, 1.0E+04, 1.5E+04, 2.0E+04  &
   y = 5.0E+05, 5.0E+05, 5.0E+05, 5.0E+05, 5.0E+05, 5.0E+05  &
   linear_extrapolate = yes
!
data_element create spline  &
   spline_name = .test_analysis_1.WallCspl  &
   adams_id = 8912  &
   x = -5000.0, 0.0, 5000.0, 1.0E+04, 1.5E+04, 2.0E+04  &
   y = 500.0, 500.0, 500.0, 500.0, 500.0, 500.0  &
   linear_extrapolate = yes
!
data_element create spline  &
   spline_name = .test_analysis_1.Static_Muspl  &
   adams_id = 8921  &
   x = -5000.0, 0.0, 5000.0, 1.0E+04, 1.5E+04, 2.0E+04  &
   y = 0.9, 0.9, 0.9, 0.9, 0.9, 0.9  &
   linear_extrapolate = yes
!
data_element create spline  &
   spline_name = .test_analysis_1.Static_Vspl  &
   adams_id = 8922  &
   x = -5000.0, 0.0, 5000.0, 1.0E+04, 1.5E+04, 2.0E+04  &
   y = 0.15, 0.15, 0.15, 0.15, 0.15, 0.15  &
   linear_extrapolate = yes
!
data_element create spline  &
   spline_name = .test_analysis_1.Dynamic_Muspl  &
   adams_id = 8923  &
   x = -5000.0, 0.0, 5000.0, 1.0E+04, 1.5E+04, 2.0E+04  &
   y = 0.3, 0.3, 0.3, 0.3, 0.3, 0.3  &
   linear_extrapolate = yes
!
data_element create spline  &
   spline_name = .test_analysis_1.Dynamic_Vspl  &
   adams_id = 8924  &
   x = -5000.0, 0.0, 5000.0, 1.0E+04, 1.5E+04, 2.0E+04  &
   y = 0.3, 0.3, 0.3, 0.3, 0.3, 0.3  &
   linear_extrapolate = yes
!
data_element create curve  &
   curve_name = .test_analysis_1.test_hole  &
   adams_id = 9001  &
   closed = no  &
   minimum_parameter = 0.0  &
   maximum_parameter = 1.0  &
   user_function = 0.0  &
   routine = "adrill_solver::HoleCurveSub"
!
!-------------------------------- Rigid Parts ---------------------------------!
!
! Create parts and their dependent markers and graphics
!
!----------------------------------- ground -----------------------------------!
!
!
! ****** Ground Part ******
!
defaults model  &
   part_name = ground
!
defaults coordinate_system  &
   default_coordinate_system = .test_analysis_1.ground
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .test_analysis_1.ground.adrill_origin  &
   adams_id = 1001  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .test_analysis_1.ground.POVrefmark0  &
   adams_id = 3000000  &
   location = 0.0, 0.0, 0.0  &
   orientation = 359.9999997014d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .test_analysis_1.ground.POVrefmark0  &
   color = MAGENTA  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .test_analysis_1.ground.POVrefmark10  &
   adams_id = 3000010  &
   location = -1.042353938E-11, 0.0, 9.9999562882  &
   orientation = 359.9999997014d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .test_analysis_1.ground.POVrefmark10  &
   color = MAGENTA  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .test_analysis_1.ground.POVrefmark20  &
   adams_id = 3000020  &
   location = -2.0846681134E-11, 0.0, 19.9999125763  &
   orientation = 359.9999997014d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .test_analysis_1.ground.POVrefmark20  &
   color = MAGENTA  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .test_analysis_1.ground.POVrefmark30  &
   adams_id = 3000030  &
   location = -3.1268937332E-11, 0.0, 29.9998688645  &
   orientation = 359.9999997015d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .test_analysis_1.ground.POVrefmark30  &
   color = MAGENTA  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .test_analysis_1.ground.POVrefmark40  &
   adams_id = 3000040  &
   location = -4.1689618937E-11, 0.0, 39.9998251527  &
   orientation = 359.9999997015d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .test_analysis_1.ground.POVrefmark40  &
   color = MAGENTA  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .test_analysis_1.ground.POVrefmark50  &
   adams_id = 3000050  &
   location = -5.2107679321E-11, 0.0, 49.9997814409  &
   orientation = 359.9999997017d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .test_analysis_1.ground.POVrefmark50  &
   color = MAGENTA  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .test_analysis_1.ground.POVrefmark60  &
   adams_id = 3000060  &
   location = -6.2521476577E-11, 0.0, 59.999737729  &
   orientation = 359.9999997019d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .test_analysis_1.ground.POVrefmark60  &
   color = MAGENTA  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .test_analysis_1.ground.POVrefmark70  &
   adams_id = 3000070  &
   location = -7.2928400638E-11, 0.0, 69.9996940172  &
   orientation = 359.9999997022d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .test_analysis_1.ground.POVrefmark70  &
   color = MAGENTA  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .test_analysis_1.ground.POVrefmark80  &
   adams_id = 3000080  &
   location = -8.3324280538E-11, 0.0, 79.9996503054  &
   orientation = 359.9999997027d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .test_analysis_1.ground.POVrefmark80  &
   color = MAGENTA  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .test_analysis_1.ground.POVrefmark90  &
   adams_id = 3000090  &
   location = -9.3702437179E-11, 0.0, 89.9996065936  &
   orientation = 359.9999997035d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .test_analysis_1.ground.POVrefmark90  &
   color = MAGENTA  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .test_analysis_1.ground.POVrefmark100  &
   adams_id = 3000100  &
   location = -1.0405216651E-10, 0.0, 99.9995628817  &
   orientation = 359.9999997048d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .test_analysis_1.ground.POVrefmark100  &
   color = MAGENTA  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .test_analysis_1.ground.POVrefmark110  &
   adams_id = 3000110  &
   location = -1.1435630862E-10, 0.0, 109.9995191699  &
   orientation = 359.9999997069d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .test_analysis_1.ground.POVrefmark110  &
   color = MAGENTA  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .test_analysis_1.ground.POVrefmark120  &
   adams_id = 3000120  &
   location = -1.2458735076E-10, 0.0, 119.9994754581  &
   orientation = 359.9999997103d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .test_analysis_1.ground.POVrefmark120  &
   color = MAGENTA  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .test_analysis_1.ground.POVrefmark130  &
   adams_id = 3000130  &
   location = -1.3470117916E-10, 0.0, 129.9994317463  &
   orientation = 359.9999997156d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .test_analysis_1.ground.POVrefmark130  &
   color = MAGENTA  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .test_analysis_1.ground.POVrefmark140  &
   adams_id = 3000140  &
   location = -1.4462706077E-10, 0.0, 139.9993880344  &
   orientation = 359.9999997243d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .test_analysis_1.ground.POVrefmark140  &
   color = MAGENTA  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .test_analysis_1.ground.POVrefmark150  &
   adams_id = 3000150  &
   location = -1.5425157984E-10, 0.0, 149.9993443226  &
   orientation = 359.9999997381d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .test_analysis_1.ground.POVrefmark150  &
   color = MAGENTA  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .test_analysis_1.ground.POVrefmark160  &
   adams_id = 3000160  &
   location = -1.6339288113E-10, 0.0, 159.9993006108  &
   orientation = 359.9999997603d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .test_analysis_1.ground.POVrefmark160  &
   color = MAGENTA  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .test_analysis_1.ground.POVrefmark170  &
   adams_id = 3000170  &
   location = -1.7175937057E-10, 0.0, 169.999256899  &
   orientation = 359.9999997959d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .test_analysis_1.ground.POVrefmark170  &
   color = MAGENTA  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .test_analysis_1.ground.POVrefmark180  &
   adams_id = 3000180  &
   location = -1.7888349424E-10, 0.0, 179.9992131871  &
   orientation = 359.999999853d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .test_analysis_1.ground.POVrefmark180  &
   color = MAGENTA  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .test_analysis_1.ground.POVrefmark190  &
   adams_id = 3000190  &
   location = -1.8401555679E-10, 0.0, 189.9991694753  &
   orientation = 359.9999999445d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .test_analysis_1.ground.POVrefmark190  &
   color = MAGENTA  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .test_analysis_1.ground.POVrefmark200  &
   adams_id = 3000200  &
   location = -1.8595346554E-10, 0.0, 199.9991257635  &
   orientation = 9.1207557586E-08d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .test_analysis_1.ground.POVrefmark200  &
   color = MAGENTA  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .test_analysis_1.ground.POVrefmark210  &
   adams_id = 3000210  &
   location = -1.827697351E-10, 0.0, 209.9990820517  &
   orientation = 3.2647220469E-07d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .test_analysis_1.ground.POVrefmark210  &
   color = MAGENTA  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .test_analysis_1.ground.POVrefmark220  &
   adams_id = 3000220  &
   location = -1.7137375513E-10, 0.0, 219.9990383398  &
   orientation = 7.0370533312E-07d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .test_analysis_1.ground.POVrefmark220  &
   color = MAGENTA  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .test_analysis_1.ground.POVrefmark230  &
   adams_id = 3000230  &
   location = -1.4680991245E-10, 0.0, 229.998994628  &
   orientation = 1.3085766336E-06d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .test_analysis_1.ground.POVrefmark230  &
   color = MAGENTA  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .test_analysis_1.ground.POVrefmark240  &
   adams_id = 3000240  &
   location = -1.0113217058E-10, 0.0, 239.9989509162  &
   orientation = 2.2784524544E-06d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .test_analysis_1.ground.POVrefmark240  &
   color = MAGENTA  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .test_analysis_1.ground.POVrefmark250  &
   adams_id = 3000250  &
   location = -2.1599523873E-11, 0.0, 249.9989072044  &
   orientation = 3.6974573489E-06d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .test_analysis_1.ground.POVrefmark250  &
   color = MAGENTA  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .test_analysis_1.ground.POVrefmark260  &
   adams_id = 3000260  &
   location = 1.0746552134E-10, 0.0, 259.9988634925  &
   orientation = 4.8667350448E-06d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .test_analysis_1.ground.POVrefmark260  &
   color = MAGENTA  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .test_analysis_1.ground.POVrefmark270  &
   adams_id = 3000270  &
   location = 2.7734587947E-10, 0.0, 269.9988197807  &
   orientation = 5.5968906272E-06d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .test_analysis_1.ground.POVrefmark270  &
   color = MAGENTA  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .test_analysis_1.ground.POVrefmark280  &
   adams_id = 3000280  &
   location = 4.7271336411E-10, 0.0, 279.9987760689  &
   orientation = 6.0516252235E-06d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .test_analysis_1.ground.POVrefmark280  &
   color = MAGENTA  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .test_analysis_1.ground.POVrefmark290  &
   adams_id = 3000290  &
   location = 6.8395401123E-10, 0.0, 289.9987323571  &
   orientation = 6.3342091178E-06d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .test_analysis_1.ground.POVrefmark290  &
   color = MAGENTA  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .test_analysis_1.ground.POVrefmark300  &
   adams_id = 3000300  &
   location = 9.0505865397E-10, 0.0, 299.9986886452  &
   orientation = 6.5088171478E-06d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .test_analysis_1.ground.POVrefmark300  &
   color = MAGENTA  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .test_analysis_1.ground.POVrefmark310  &
   adams_id = 3000310  &
   location = 1.1322582401E-09, 0.0, 309.9986449334  &
   orientation = 6.6151028189E-06d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .test_analysis_1.ground.POVrefmark310  &
   color = MAGENTA  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .test_analysis_1.ground.POVrefmark320  &
   adams_id = 3000320  &
   location = 1.3631678799E-09, 0.0, 319.9986012216  &
   orientation = 6.6772036204E-06d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .test_analysis_1.ground.POVrefmark320  &
   color = MAGENTA  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .test_analysis_1.ground.POVrefmark330  &
   adams_id = 3000330  &
   location = 1.596245237E-09, 0.0, 329.9985575098  &
   orientation = 6.7092226522E-06d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .test_analysis_1.ground.POVrefmark330  &
   color = MAGENTA  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .test_analysis_1.ground.POVrefmark340  &
   adams_id = 3000340  &
   location = 1.8304402644E-09, 0.0, 339.9985137979  &
   orientation = 6.7184314404E-06d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .test_analysis_1.ground.POVrefmark340  &
   color = MAGENTA  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .test_analysis_1.ground.POVrefmark350  &
   adams_id = 3000350  &
   location = 2.0649567377E-09, 0.0, 349.9984700861  &
   orientation = 6.7069213018E-06d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .test_analysis_1.ground.POVrefmark350  &
   color = MAGENTA  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .test_analysis_1.ground.POVrefmark360  &
   adams_id = 3000360  &
   location = 2.2990714331E-09, 0.0, 359.9984263743  &
   orientation = 6.6720782827E-06d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .test_analysis_1.ground.POVrefmark360  &
   color = MAGENTA  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .test_analysis_1.ground.POVrefmark370  &
   adams_id = 3000370  &
   location = 2.531969883E-09, 0.0, 369.9983826625  &
   orientation = 6.605989529E-06d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .test_analysis_1.ground.POVrefmark370  &
   color = MAGENTA  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .test_analysis_1.ground.POVrefmark380  &
   adams_id = 3000380  &
   location = 2.7625614103E-09, 0.0, 379.9983389506  &
   orientation = 6.4936462763E-06d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .test_analysis_1.ground.POVrefmark380  &
   color = MAGENTA  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .test_analysis_1.ground.POVrefmark390  &
   adams_id = 3000390  &
   location = 2.9892314355E-09, 0.0, 389.9982952388  &
   orientation = 6.3095353581E-06d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .test_analysis_1.ground.POVrefmark390  &
   color = MAGENTA  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .test_analysis_1.ground.POVrefmark400  &
   adams_id = 3000400  &
   location = 3.2094748053E-09, 0.0, 399.998251527  &
   orientation = 6.0118451616E-06d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .test_analysis_1.ground.POVrefmark400  &
   color = MAGENTA  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .test_analysis_1.ground.POVrefmark410  &
   adams_id = 3000410  &
   location = 3.4193268723E-09, 0.0, 409.9982078152  &
   orientation = 5.532970206E-06d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .test_analysis_1.ground.POVrefmark410  &
   color = MAGENTA  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .test_analysis_1.ground.POVrefmark420  &
   adams_id = 3000420  &
   location = 3.6124631231E-09, 0.0, 419.9981641033  &
   orientation = 4.7641579288E-06d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .test_analysis_1.ground.POVrefmark420  &
   color = MAGENTA  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .test_analysis_1.ground.POVrefmark430  &
   adams_id = 3000430  &
   location = 3.7787628801E-09, 0.0, 429.9981203915  &
   orientation = 3.5308109654E-06d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .test_analysis_1.ground.POVrefmark430  &
   color = MAGENTA  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .test_analysis_1.ground.POVrefmark440  &
   adams_id = 3000440  &
   location = 3.9020108946E-09, 0.0, 439.9980766797  &
   orientation = 1.552836066E-06d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .test_analysis_1.ground.POVrefmark440  &
   color = MAGENTA  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .test_analysis_1.ground.POVrefmark450  &
   adams_id = 3000450  &
   location = 3.9562148618E-09, 0.0, 449.9980329679  &
   orientation = 359.999998381d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .test_analysis_1.ground.POVrefmark450  &
   color = MAGENTA  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .test_analysis_1.ground.POVrefmark460  &
   adams_id = 3000460  &
   location = 3.8997025653E-09, 0.0, 459.997989256  &
   orientation = 359.9999932951d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .test_analysis_1.ground.POVrefmark460  &
   color = MAGENTA  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .test_analysis_1.ground.POVrefmark470  &
   adams_id = 3000470  &
   location = 3.6656581111E-09, 0.0, 469.9979455442  &
   orientation = 359.99998514d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .test_analysis_1.ground.POVrefmark470  &
   color = MAGENTA  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .test_analysis_1.ground.POVrefmark480  &
   adams_id = 3000480  &
   location = 3.14694803E-09, 0.0, 479.9979018324  &
   orientation = 359.9999720637d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .test_analysis_1.ground.POVrefmark480  &
   color = MAGENTA  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .test_analysis_1.ground.POVrefmark490  &
   adams_id = 3000490  &
   location = 2.1717912534E-09, 0.0, 489.9978581206  &
   orientation = 359.9999510966d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .test_analysis_1.ground.POVrefmark490  &
   color = MAGENTA  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .test_analysis_1.ground.POVrefmark500  &
   adams_id = 3000500  &
   location = 4.6474761069E-10, 0.0, 499.9978144087  &
   orientation = 359.999920419d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .test_analysis_1.ground.POVrefmark500  &
   color = MAGENTA  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .test_analysis_1.ground.POVrefmark510  &
   adams_id = 3000510  &
   location = -2.3131419991E-09, 0.0, 509.9977706969  &
   orientation = 359.9998951386d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .test_analysis_1.ground.POVrefmark510  &
   color = MAGENTA  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .test_analysis_1.ground.POVrefmark520  &
   adams_id = 3000520  &
   location = -5.9734805475E-09, 0.0, 519.9977269851  &
   orientation = 359.9998793521d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .test_analysis_1.ground.POVrefmark520  &
   color = MAGENTA  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .test_analysis_1.ground.POVrefmark530  &
   adams_id = 3000530  &
   location = -1.0184866792E-08, 0.0, 529.9976832733  &
   orientation = 359.9998695205d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .test_analysis_1.ground.POVrefmark530  &
   color = MAGENTA  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .test_analysis_1.ground.POVrefmark540  &
   adams_id = 3000540  &
   location = -1.4739442034E-08, 0.0, 539.9976395615  &
   orientation = 359.9998634107d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .test_analysis_1.ground.POVrefmark540  &
   color = MAGENTA  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .test_analysis_1.ground.POVrefmark550  &
   adams_id = 3000550  &
   location = -1.9507285842E-08, 0.0, 549.9975958496  &
   orientation = 359.9998596355d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .test_analysis_1.ground.POVrefmark550  &
   color = MAGENTA  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .test_analysis_1.ground.POVrefmark560  &
   adams_id = 3000560  &
   location = -2.4406911098E-08, 0.0, 559.9975521378  &
   orientation = 359.9998573373d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .test_analysis_1.ground.POVrefmark560  &
   color = MAGENTA  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .test_analysis_1.ground.POVrefmark570  &
   adams_id = 3000570  &
   location = -2.9386758271E-08, 0.0, 569.997508426  &
   orientation = 359.9998559942d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .test_analysis_1.ground.POVrefmark570  &
   color = MAGENTA  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .test_analysis_1.ground.POVrefmark580  &
   adams_id = 3000580  &
   location = -3.4413486236E-08, 0.0, 579.9974647142  &
   orientation = 359.9998553013d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .test_analysis_1.ground.POVrefmark580  &
   color = MAGENTA  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .test_analysis_1.ground.POVrefmark590  &
   adams_id = 3000590  &
   location = -3.9464400502E-08, 0.0, 589.9974210024  &
   orientation = 359.9998551012d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .test_analysis_1.ground.POVrefmark590  &
   color = MAGENTA  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .test_analysis_1.ground.POVrefmark600  &
   adams_id = 3000600  &
   location = -4.4522299291E-08, 0.0, 599.9973772905  &
   orientation = 359.9998553485d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .test_analysis_1.ground.POVrefmark600  &
   color = MAGENTA  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .test_analysis_1.ground.POVrefmark610  &
   adams_id = 3000610  &
   location = -4.9571567009E-08, 0.0, 609.9973335787  &
   orientation = 359.9998560993d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .test_analysis_1.ground.POVrefmark610  &
   color = MAGENTA  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .test_analysis_1.ground.POVrefmark620  &
   adams_id = 3000620  &
   location = -5.4594627947E-08, 0.0, 619.9972898669  &
   orientation = 359.9998575241d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .test_analysis_1.ground.POVrefmark620  &
   color = MAGENTA  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .test_analysis_1.ground.POVrefmark630  &
   adams_id = 3000630  &
   location = -5.956795483E-08, 0.0, 629.9972461551  &
   orientation = 359.9998599464d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .test_analysis_1.ground.POVrefmark630  &
   color = MAGENTA  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .test_analysis_1.ground.POVrefmark640  &
   adams_id = 3000640  &
   location = -6.4456725776E-08, 0.0, 639.9972024432  &
   orientation = 359.9998639165d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .test_analysis_1.ground.POVrefmark640  &
   color = MAGENTA  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .test_analysis_1.ground.POVrefmark650  &
   adams_id = 3000650  &
   location = -6.9206916238E-08, 0.0, 649.9971587314  &
   orientation = 359.9998703358d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .test_analysis_1.ground.POVrefmark650  &
   color = MAGENTA  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .test_analysis_1.ground.POVrefmark660  &
   adams_id = 3000660  &
   location = -7.3733030022E-08, 0.0, 659.9971150196  &
   orientation = 359.9998806623d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .test_analysis_1.ground.POVrefmark660  &
   color = MAGENTA  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .test_analysis_1.ground.POVrefmark670  &
   adams_id = 3000670  &
   location = -7.7898683094E-08, 0.0, 669.9970713078  &
   orientation = 359.9998972411d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .test_analysis_1.ground.POVrefmark670  &
   color = MAGENTA  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .test_analysis_1.ground.POVrefmark680  &
   adams_id = 3000680  &
   location = -8.1485630748E-08, 0.0, 679.997027596  &
   orientation = 359.9999238371d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .test_analysis_1.ground.POVrefmark680  &
   color = MAGENTA  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .test_analysis_1.ground.POVrefmark690  &
   adams_id = 3000690  &
   location = -8.4144204203E-08, 0.0, 689.9969838841  &
   orientation = 359.9999664905d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .test_analysis_1.ground.POVrefmark690  &
   color = MAGENTA  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .test_analysis_1.ground.POVrefmark700  &
   adams_id = 3000700  &
   location = -8.5313900782E-08, 0.0, 699.9969401723  &
   orientation = 3.4887756012E-05d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .test_analysis_1.ground.POVrefmark700  &
   color = MAGENTA  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .test_analysis_1.ground.POVrefmark710  &
   adams_id = 3000710  &
   location = -8.4096093683E-08, 0.0, 709.9968964605  &
   orientation = 1.4456189327E-04d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .test_analysis_1.ground.POVrefmark710  &
   color = MAGENTA  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .test_analysis_1.ground.POVrefmark720  &
   adams_id = 3000720  &
   location = -7.9049953719E-08, 0.0, 719.9968527487  &
   orientation = 3.2041993698E-04d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .test_analysis_1.ground.POVrefmark720  &
   color = MAGENTA  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .test_analysis_1.ground.POVrefmark730  &
   adams_id = 3000730  &
   location = -6.7865236831E-08, 0.0, 729.9968090368  &
   orientation = 6.0239927088E-04d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .test_analysis_1.ground.POVrefmark730  &
   color = MAGENTA  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .test_analysis_1.ground.POVrefmark740  &
   adams_id = 3000740  &
   location = -4.6837627369E-08, 0.0, 739.996765325  &
   orientation = 1.054537437E-03d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .test_analysis_1.ground.POVrefmark740  &
   color = MAGENTA  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .test_analysis_1.ground.POVrefmark750  &
   adams_id = 3000750  &
   location = -1.0027487547E-08, 0.0, 749.9967216131  &
   orientation = 1.6996313533E-03d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .test_analysis_1.ground.POVrefmark750  &
   color = MAGENTA  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .test_analysis_1.ground.POVrefmark760  &
   adams_id = 3000760  &
   location = 4.9300579505E-08, 0.0, 759.9966779013  &
   orientation = 2.0845703161E-03d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .test_analysis_1.ground.POVrefmark760  &
   color = MAGENTA  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .test_analysis_1.ground.POVrefmark770  &
   adams_id = 3000770  &
   location = 1.2206549248E-07, 0.0, 769.9966341894  &
   orientation = 2.0294629395E-03d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .test_analysis_1.ground.POVrefmark770  &
   color = MAGENTA  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .test_analysis_1.ground.POVrefmark780  &
   adams_id = 3000780  &
   location = 1.9290680353E-07, 0.0, 779.9965904775  &
   orientation = 1.5205467966E-03d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .test_analysis_1.ground.POVrefmark780  &
   color = MAGENTA  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .test_analysis_1.ground.POVrefmark790  &
   adams_id = 3000790  &
   location = 2.4598366759E-07, 0.0, 789.9965467656  &
   orientation = 4.4224696699E-04d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .test_analysis_1.ground.POVrefmark790  &
   color = MAGENTA  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .test_analysis_1.ground.POVrefmark800  &
   adams_id = 3000800  &
   location = 2.6142093148E-07, 0.0, 799.9965030538  &
   orientation = 359.9985496814d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .test_analysis_1.ground.POVrefmark800  &
   color = MAGENTA  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .test_analysis_1.ground.POVrefmark810  &
   adams_id = 3000810  &
   location = 2.1079548406E-07, 0.0, 809.996459342  &
   orientation = 359.9954130483d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .test_analysis_1.ground.POVrefmark810  &
   color = MAGENTA  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .test_analysis_1.ground.POVrefmark820  &
   adams_id = 3000820  &
   location = 5.0681364205E-08, 0.0, 819.9964156303  &
   orientation = 359.992233487d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .test_analysis_1.ground.POVrefmark820  &
   color = MAGENTA  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .test_analysis_1.ground.POVrefmark830  &
   adams_id = 3000830  &
   location = -2.2041989987E-07, 0.0, 829.9963719187  &
   orientation = 2.6529409434E-03d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .test_analysis_1.ground.POVrefmark830  &
   color = MAGENTA  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .test_analysis_1.ground.POVrefmark840  &
   adams_id = 3000840  &
   location = -1.2781519595E-07, 0.0, 839.9963282068  &
   orientation = 2.5555865418E-02d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .test_analysis_1.ground.POVrefmark840  &
   color = MAGENTA  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .test_analysis_1.ground.POVrefmark850  &
   adams_id = 3000850  &
   location = 7.6424895324E-07, 0.0, 849.9962844942  &
   orientation = 359.9919596069d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .test_analysis_1.ground.POVrefmark850  &
   color = MAGENTA  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .test_analysis_1.ground.POVrefmark860  &
   adams_id = 3000860  &
   location = 4.8358751151E-07, 0.0, 859.9962407826  &
   orientation = 359.9009885978d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .test_analysis_1.ground.POVrefmark860  &
   color = MAGENTA  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .test_analysis_1.ground.POVrefmark870  &
   adams_id = 3000870  &
   location = -2.9725507522E-06, 0.0, 869.9961970737  &
   orientation = 3.093692326E-02d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .test_analysis_1.ground.POVrefmark870  &
   color = MAGENTA  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .test_analysis_1.ground.POVrefmark880  &
   adams_id = 3000880  &
   location = -1.8926530252E-06, 0.0, 879.996153361  &
   orientation = 0.3881025096d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .test_analysis_1.ground.POVrefmark880  &
   color = MAGENTA  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .test_analysis_1.ground.POVrefmark890  &
   adams_id = 3000890  &
   location = 1.1654828196E-05, 0.0, 889.9961096378  &
   orientation = 359.8787974478d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .test_analysis_1.ground.POVrefmark890  &
   color = MAGENTA  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .test_analysis_1.ground.POVrefmark900  &
   adams_id = 3000900  &
   location = 7.4240731803E-06, 0.0, 899.9960659295  &
   orientation = 358.4778750816d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .test_analysis_1.ground.POVrefmark900  &
   color = MAGENTA  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .test_analysis_1.ground.POVrefmark910  &
   adams_id = 3000910  &
   location = -4.5720380661E-05, 0.0, 909.9960222622  &
   orientation = 0.4753926533d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .test_analysis_1.ground.POVrefmark910  &
   color = MAGENTA  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .test_analysis_1.ground.POVrefmark920  &
   adams_id = 3000920  &
   location = -2.912573833E-05, 0.0, 919.9959785365  &
   orientation = 90.0d, 1.1945477185E-03d, 275.9512430656d
!
marker attributes  &
   marker_name = .test_analysis_1.ground.POVrefmark920  &
   color = MAGENTA  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .test_analysis_1.ground.POVrefmark930  &
   adams_id = 3000930  &
   location = 1.7936123152E-04, 0.0, 929.99593465  &
   orientation = 358.1357994567d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .test_analysis_1.ground.POVrefmark930  &
   color = MAGENTA  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .test_analysis_1.ground.POVrefmark940  &
   adams_id = 3000940  &
   location = 1.1426566872E-04, 0.0, 939.9958909927  &
   orientation = 270.0d, 4.6862535756E-03d, 67.7577564995d
!
marker attributes  &
   marker_name = .test_analysis_1.ground.POVrefmark940  &
   color = MAGENTA  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .test_analysis_1.ground.POVrefmark950  &
   adams_id = 3000950  &
   location = -7.0363636595E-04, 0.0, 949.9958479662  &
   orientation = 90.0d, 1.4630581677E-03d, 277.2759258767d
!
marker attributes  &
   marker_name = .test_analysis_1.ground.POVrefmark950  &
   color = MAGENTA  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .test_analysis_1.ground.POVrefmark960  &
   adams_id = 3000960  &
   location = -4.482856685E-04, 0.0, 959.9958040404  &
   orientation = 90.0d, 1.8384354394E-02d, 328.0642908203d
!
marker attributes  &
   marker_name = .test_analysis_1.ground.POVrefmark960  &
   color = MAGENTA  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .test_analysis_1.ground.POVrefmark970  &
   adams_id = 3000970  &
   location = 2.7603747047E-03, 0.0, 969.99575764  &
   orientation = 270.0d, 5.7391468504E-03d, 63.3966858138d
!
marker attributes  &
   marker_name = .test_analysis_1.ground.POVrefmark970  &
   color = MAGENTA  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .test_analysis_1.ground.POVrefmark980  &
   adams_id = 3000980  &
   location = 1.7587088975E-03, 0.0, 979.9957147675  &
   orientation = 270.0d, 7.2122382063E-02d, 9.0279714905d
!
marker attributes  &
   marker_name = .test_analysis_1.ground.POVrefmark980  &
   color = MAGENTA  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .test_analysis_1.ground.POVrefmark990  &
   adams_id = 3000990  &
   location = -1.0828986319E-02, 0.0, 989.9956816032  &
   orientation = 90.0d, 2.2512996682E-02d, 333.0238233942d
!
marker attributes  &
   marker_name = .test_analysis_1.ground.POVrefmark990  &
   color = MAGENTA  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .test_analysis_1.ground.POVrefmark1000  &
   adams_id = 3001000  &
   location = -6.8997454201E-03, 0.0, 999.995634599  &
   orientation = 90.0d, 0.4337014785d, 358.4864824119d
!
marker attributes  &
   marker_name = .test_analysis_1.ground.POVrefmark1000  &
   color = MAGENTA  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .test_analysis_1.ground.POVrefmark1010  &
   adams_id = 3001010  &
   location = 6.8794337849E-02, 0.0, 1009.9952977032  &
   orientation = 90.0d, 1.4362494727d, 359.5428258722d
!
marker attributes  &
   marker_name = .test_analysis_1.ground.POVrefmark1010  &
   color = MAGENTA  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .test_analysis_1.ground.POVrefmark1020  &
   adams_id = 3001020  &
   location = 0.3194383817, 0.0, 1019.9920552641  &
   orientation = 90.0d, 2.6911766231d, 359.7559436387d
!
marker attributes  &
   marker_name = .test_analysis_1.ground.POVrefmark1020  &
   color = MAGENTA  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .test_analysis_1.ground.POVrefmark1030  &
   adams_id = 3001030  &
   location = 0.7889617967, 0.0, 1029.9809663112  &
   orientation = 90.0d, 3.7473677922d, 359.8246695864d
!
marker attributes  &
   marker_name = .test_analysis_1.ground.POVrefmark1030  &
   color = MAGENTA  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .test_analysis_1.ground.POVrefmark1040  &
   adams_id = 3001040  &
   location = 1.4425285275, 0.0, 1039.9594918723  &
   orientation = 90.0d, 4.9228271375d, 359.8664652312d
!
marker attributes  &
   marker_name = .test_analysis_1.ground.POVrefmark1040  &
   color = MAGENTA  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .test_analysis_1.ground.POVrefmark1050  &
   adams_id = 3001050  &
   location = 2.3006582563, 0.0, 1049.9224996964  &
   orientation = 90.0d, 6.0988940036d, 359.8921440482d
!
marker attributes  &
   marker_name = .test_analysis_1.ground.POVrefmark1050  &
   color = MAGENTA  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .test_analysis_1.ground.POVrefmark1060  &
   adams_id = 3001060  &
   location = 3.363099923, 0.0, 1059.8658331369  &
   orientation = 90.0d, 7.2204101761d, 359.9088276519d
!
marker attributes  &
   marker_name = .test_analysis_1.ground.POVrefmark1060  &
   color = MAGENTA  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .test_analysis_1.ground.POVrefmark1070  &
   adams_id = 3001070  &
   location = 4.6199553152, 0.0, 1069.7864460527  &
   orientation = 90.0d, 8.3649761702d, 359.9212312047d
!
marker attributes  &
   marker_name = .test_analysis_1.ground.POVrefmark1070  &
   color = MAGENTA  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .test_analysis_1.ground.POVrefmark1080  &
   adams_id = 3001080  &
   location = 6.0747259563, 0.0, 1079.6799779726  &
   orientation = 90.0d, 9.5158659045d, 359.9306853326d
!
marker attributes  &
   marker_name = .test_analysis_1.ground.POVrefmark1080  &
   color = MAGENTA  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .test_analysis_1.ground.POVrefmark1090  &
   adams_id = 3001090  &
   location = 7.727919443, 0.0, 1089.542295116  &
   orientation = 90.0d, 10.6566293008d, 359.9380327695d
!
marker attributes  &
   marker_name = .test_analysis_1.ground.POVrefmark1090  &
   color = MAGENTA  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .test_analysis_1.ground.POVrefmark1100  &
   adams_id = 3001100  &
   location = 9.5771291949, 0.0, 1099.3697307217  &
   orientation = 90.0d, 11.7735261504d, 359.9438397262d
!
marker attributes  &
   marker_name = .test_analysis_1.ground.POVrefmark1100  &
   color = MAGENTA  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .test_analysis_1.ground.POVrefmark1110  &
   adams_id = 3001110  &
   location = 11.6175577075, 0.0, 1109.1593058758  &
   orientation = 90.0d, 12.922757826d, 359.9487600939d
!
marker attributes  &
   marker_name = .test_analysis_1.ground.POVrefmark1110  &
   color = MAGENTA  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .test_analysis_1.ground.POVrefmark1120  &
   adams_id = 3001120  &
   location = 13.8538997905, 0.0, 1118.9058967529  &
   orientation = 90.0d, 14.1351358949d, 359.9530765893d
!
marker attributes  &
   marker_name = .test_analysis_1.ground.POVrefmark1120  &
   color = MAGENTA  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .test_analysis_1.ground.POVrefmark1130  &
   adams_id = 3001130  &
   location = 16.295979881, 0.0, 1128.6030529116  &
   orientation = 90.0d, 15.2328624325d, 359.9563863931d
!
marker attributes  &
   marker_name = .test_analysis_1.ground.POVrefmark1130  &
   color = MAGENTA  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .test_analysis_1.ground.POVrefmark1140  &
   adams_id = 3001140  &
   location = 18.9233887941, 0.0, 1138.2516486839  &
   orientation = 90.0d, 16.3882508632d, 359.959385547d
!
marker attributes  &
   marker_name = .test_analysis_1.ground.POVrefmark1140  &
   color = MAGENTA  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .test_analysis_1.ground.POVrefmark1150  &
   adams_id = 3001150  &
   location = 21.7448084518, 0.0, 1147.8452731097  &
   orientation = 90.0d, 17.5143709224d, 359.9619227627d
!
marker attributes  &
   marker_name = .test_analysis_1.ground.POVrefmark1150  &
   color = MAGENTA  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .test_analysis_1.ground.POVrefmark1160  &
   adams_id = 3001160  &
   location = 24.754230592, 0.0, 1157.3815997647  &
   orientation = 90.0d, 18.6890336465d, 359.9642383859d
!
marker attributes  &
   marker_name = .test_analysis_1.ground.POVrefmark1160  &
   color = MAGENTA  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .test_analysis_1.ground.POVrefmark1170  &
   adams_id = 3001170  &
   location = 27.9585323199, 0.0, 1166.8542711771  &
   orientation = 90.0d, 19.8120058447d, 359.9661907082d
!
marker attributes  &
   marker_name = .test_analysis_1.ground.POVrefmark1170  &
   color = MAGENTA  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .test_analysis_1.ground.POVrefmark1180  &
   adams_id = 3001180  &
   location = 31.3478361654, 0.0, 1176.2622389059  &
   orientation = 90.0d, 21.0015458536d, 359.9680262999d
!
marker attributes  &
   marker_name = .test_analysis_1.ground.POVrefmark1180  &
   color = MAGENTA  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .test_analysis_1.ground.POVrefmark1190  &
   adams_id = 3001190  &
   location = 34.9317495454, 0.0, 1185.5978996005  &
   orientation = 90.0d, 22.10371808d, 359.9695465578d
!
marker attributes  &
   marker_name = .test_analysis_1.ground.POVrefmark1190  &
   color = MAGENTA  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .test_analysis_1.ground.POVrefmark1200  &
   adams_id = 3001200  &
   location = 38.694559908, 0.0, 1194.8628592361  &
   orientation = 90.0d, 23.2622682157d, 359.9709851165d
!
marker attributes  &
   marker_name = .test_analysis_1.ground.POVrefmark1200  &
   color = MAGENTA  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .test_analysis_1.ground.POVrefmark1210  &
   adams_id = 3001210  &
   location = 42.6439328578, 0.0, 1204.0498494919  &
   orientation = 90.0d, 24.4190653022d, 359.9722812075d
!
marker attributes  &
   marker_name = .test_analysis_1.ground.POVrefmark1210  &
   color = MAGENTA  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .test_analysis_1.ground.POVrefmark1220  &
   adams_id = 3001220  &
   location = 46.7779711557, 0.0, 1213.1552314863  &
   orientation = 90.0d, 25.5086162235d, 359.9733908288d
!
marker attributes  &
   marker_name = .test_analysis_1.ground.POVrefmark1220  &
   color = MAGENTA  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .test_analysis_1.ground.POVrefmark1230  &
   adams_id = 3001230  &
   location = 51.0843961374, 0.0, 1222.1803461603  &
   orientation = 90.0d, 26.7354000917d, 359.974527902d
!
marker attributes  &
   marker_name = .test_analysis_1.ground.POVrefmark1230  &
   color = MAGENTA  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .test_analysis_1.ground.POVrefmark1240  &
   adams_id = 3001240  &
   location = 55.5830822182, 0.0, 1231.1112371131  &
   orientation = 90.0d, 27.8452965206d, 359.9754667029d
!
marker attributes  &
   marker_name = .test_analysis_1.ground.POVrefmark1240  &
   color = MAGENTA  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .test_analysis_1.ground.POVrefmark1250  &
   adams_id = 3001250  &
   location = 60.2538884595, 0.0, 1239.9532585987  &
   orientation = 90.0d, 28.996594716d, 359.976361063d
!
marker attributes  &
   marker_name = .test_analysis_1.ground.POVrefmark1250  &
   color = MAGENTA  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .test_analysis_1.ground.POVrefmark1260  &
   adams_id = 3001260  &
   location = 65.1014287549, 0.0, 1248.6996786906  &
   orientation = 90.0d, 30.1363100921d, 359.9771756758d
!
marker attributes  &
   marker_name = .test_analysis_1.ground.POVrefmark1260  &
   color = MAGENTA  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .test_analysis_1.ground.POVrefmark1270  &
   adams_id = 3001270  &
   location = 70.1219791675, 0.0, 1257.3479463006  &
   orientation = 90.0d, 31.291559d, 359.9779374185d
!
marker attributes  &
   marker_name = .test_analysis_1.ground.POVrefmark1270  &
   color = MAGENTA  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .test_analysis_1.ground.POVrefmark1280  &
   adams_id = 3001280  &
   location = 75.3158586783, 0.0, 1265.8932131187  &
   orientation = 90.0d, 32.3835304934d, 359.9786043762d
!
marker attributes  &
   marker_name = .test_analysis_1.ground.POVrefmark1280  &
   color = MAGENTA  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .test_analysis_1.ground.POVrefmark1290  &
   adams_id = 3001290  &
   location = 80.6716604199, 0.0, 1274.3379707651  &
   orientation = 90.0d, 33.5818774024d, 359.9792829979d
!
marker attributes  &
   marker_name = .test_analysis_1.ground.POVrefmark1290  &
   color = MAGENTA  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .test_analysis_1.ground.POVrefmark1300  &
   adams_id = 3001300  &
   location = 86.2029019393, 0.0, 1282.6688741242  &
   orientation = 90.0d, 34.7211857377d, 359.9798815173d
!
marker attributes  &
   marker_name = .test_analysis_1.ground.POVrefmark1300  &
   color = MAGENTA  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .test_analysis_1.ground.POVrefmark1310  &
   adams_id = 3001310  &
   location = 91.8986657824, 0.0, 1290.8881065883  &
   orientation = 90.0d, 35.8815458544d, 359.9804488447d
!
marker attributes  &
   marker_name = .test_analysis_1.ground.POVrefmark1310  &
   color = MAGENTA  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .test_analysis_1.ground.POVrefmark1320  &
   adams_id = 3001320  &
   location = 97.7597581387, 0.0, 1298.9903809477  &
   orientation = 90.0d, 36.9919862801d, 359.9809554723d
!
marker attributes  &
   marker_name = .test_analysis_1.ground.POVrefmark1320  &
   color = MAGENTA  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .test_analysis_1.ground.POVrefmark1330  &
   adams_id = 3001330  &
   location = 103.7767259139, 0.0, 1306.9774909166  &
   orientation = 90.0d, 38.1888110006d, 359.9814653225d
!
marker attributes  &
   marker_name = .test_analysis_1.ground.POVrefmark1330  &
   color = MAGENTA  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .test_analysis_1.ground.POVrefmark1340  &
   adams_id = 3001340  &
   location = 109.9592186721, 0.0, 1314.8371956335  &
   orientation = 90.0d, 39.322148735d, 359.981916494d
!
marker attributes  &
   marker_name = .test_analysis_1.ground.POVrefmark1340  &
   color = MAGENTA  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .test_analysis_1.ground.POVrefmark1350  &
   adams_id = 3001350  &
   location = 116.2959724199, 0.0, 1322.5730926358  &
   orientation = 90.0d, 40.4455902565d, 359.9823358988d
!
marker attributes  &
   marker_name = .test_analysis_1.ground.POVrefmark1350  &
   color = MAGENTA  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .test_analysis_1.ground.POVrefmark1360  &
   adams_id = 3001360  &
   location = 122.7831742446, 0.0, 1330.183252048  &
   orientation = 90.0d, 41.5673589061d, 359.9827292328d
!
marker attributes  &
   marker_name = .test_analysis_1.ground.POVrefmark1360  &
   color = MAGENTA  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .test_analysis_1.ground.POVrefmark1370  &
   adams_id = 3001370  &
   location = 129.4181159421, 0.0, 1337.6649473505  &
   orientation = 90.0d, 42.7381071405d, 359.9831147364d
!
marker attributes  &
   marker_name = .test_analysis_1.ground.POVrefmark1370  &
   color = MAGENTA  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .test_analysis_1.ground.POVrefmark1380  &
   adams_id = 3001380  &
   location = 136.2045495659, 0.0, 1345.0095277475  &
   orientation = 90.0d, 43.9186058657d, 359.9834795783d
!
marker attributes  &
   marker_name = .test_analysis_1.ground.POVrefmark1380  &
   color = MAGENTA  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .test_analysis_1.ground.POVrefmark1390  &
   adams_id = 3001390  &
   location = 143.1408258736, 0.0, 1352.2127021593  &
   orientation = 90.0d, 45.0315963041d, 359.9838032361d
!
marker attributes  &
   marker_name = .test_analysis_1.ground.POVrefmark1390  &
   color = MAGENTA  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .test_analysis_1.ground.POVrefmark1400  &
   adams_id = 3001400  &
   location = 150.2157653636, 0.0, 1359.2798428635  &
   orientation = 90.0d, 46.1525969803d, 359.984110709d
!
marker attributes  &
   marker_name = .test_analysis_1.ground.POVrefmark1400  &
   color = MAGENTA  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .test_analysis_1.ground.POVrefmark1410  &
   adams_id = 3001410  &
   location = 157.4275562343, 0.0, 1366.20716432  &
   orientation = 90.0d, 47.3322366476d, 359.984415589d
!
marker attributes  &
   marker_name = .test_analysis_1.ground.POVrefmark1410  &
   color = MAGENTA  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .test_analysis_1.ground.POVrefmark1420  &
   adams_id = 3001420  &
   location = 164.7804606486, 0.0, 1372.9845734907  &
   orientation = 90.0d, 48.501584842d, 359.9847001967d
!
marker attributes  &
   marker_name = .test_analysis_1.ground.POVrefmark1420  &
   color = MAGENTA  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .test_analysis_1.ground.POVrefmark1430  &
   adams_id = 3001430  &
   location = 172.2701373537, 0.0, 1379.6105103745  &
   orientation = 90.0d, 49.6218421585d, 359.9849575002d
!
marker attributes  &
   marker_name = .test_analysis_1.ground.POVrefmark1430  &
   color = MAGENTA  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .test_analysis_1.ground.POVrefmark1440  &
   adams_id = 3001440  &
   location = 179.8879236398, 0.0, 1386.0887488335  &
   orientation = 90.0d, 50.7444716823d, 359.9852012293d
!
marker attributes  &
   marker_name = .test_analysis_1.ground.POVrefmark1440  &
   color = MAGENTA  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .test_analysis_1.ground.POVrefmark1450  &
   adams_id = 3001450  &
   location = 187.6311852732, 0.0, 1392.4165049144  &
   orientation = 90.0d, 51.8821157625d, 359.9854346786d
!
marker attributes  &
   marker_name = .test_analysis_1.ground.POVrefmark1450  &
   color = MAGENTA  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .test_analysis_1.ground.POVrefmark1460  &
   adams_id = 3001460  &
   location = 195.4985369118, 0.0, 1398.589263055  &
   orientation = 90.0d, 53.0785901928d, 359.9856663846d
!
marker attributes  &
   marker_name = .test_analysis_1.ground.POVrefmark1460  &
   color = MAGENTA  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .test_analysis_1.ground.POVrefmark1470  &
   adams_id = 3001470  &
   location = 203.4930526504, 0.0, 1404.5963879459  &
   orientation = 90.0d, 54.1835169646d, 359.9858685174d
!
marker attributes  &
   marker_name = .test_analysis_1.ground.POVrefmark1470  &
   color = MAGENTA  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .test_analysis_1.ground.POVrefmark1480  &
   adams_id = 3001480  &
   location = 211.601973372, 0.0, 1410.44827299  &
   orientation = 90.0d, 55.3501012437d, 359.9860702926d
!
marker attributes  &
   marker_name = .test_analysis_1.ground.POVrefmark1480  &
   color = MAGENTA  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .test_analysis_1.ground.POVrefmark1490  &
   adams_id = 3001490  &
   location = 219.8282951081, 0.0, 1416.1338123457  &
   orientation = 90.0d, 56.4882914052d, 359.9862562646d
!
marker attributes  &
   marker_name = .test_analysis_1.ground.POVrefmark1490  &
   color = MAGENTA  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .test_analysis_1.ground.POVrefmark1500  &
   adams_id = 3001500  &
   location = 228.165954374, 0.0, 1421.6548392247  &
   orientation = 90.0d, 57.6843687816d, 359.9864407307d
!
marker attributes  &
   marker_name = .test_analysis_1.ground.POVrefmark1500  &
   color = MAGENTA  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .test_analysis_1.ground.POVrefmark1510  &
   adams_id = 3001510  &
   location = 236.6170631844, 0.0, 1427.0006360132  &
   orientation = 90.0d, 58.7763194471d, 359.986599831d
!
marker attributes  &
   marker_name = .test_analysis_1.ground.POVrefmark1510  &
   color = MAGENTA  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .test_analysis_1.ground.POVrefmark1520  &
   adams_id = 3001520  &
   location = 245.168472934, 0.0, 1432.184385694  &
   orientation = 90.0d, 59.9326481691d, 359.9867591113d
!
marker attributes  &
   marker_name = .test_analysis_1.ground.POVrefmark1520  &
   color = MAGENTA  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .test_analysis_1.ground.POVrefmark1530  &
   adams_id = 3001530  &
   location = 253.8227768489, 0.0, 1437.1945239155  &
   orientation = 90.0d, 61.071804991d, 359.9869072127d
!
marker attributes  &
   marker_name = .test_analysis_1.ground.POVrefmark1530  &
   color = MAGENTA  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .test_analysis_1.ground.POVrefmark1540  &
   adams_id = 3001540  &
   location = 262.5749778348, 0.0, 1442.031619356  &
   orientation = 90.0d, 62.2230971963d, 359.9870484196d
!
marker attributes  &
   marker_name = .test_analysis_1.ground.POVrefmark1540  &
   color = MAGENTA  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .test_analysis_1.ground.POVrefmark1550  &
   adams_id = 3001550  &
   location = 271.4225718853, 0.0, 1446.6918693523  &
   orientation = 90.0d, 63.3338758155d, 359.9871769442d
!
marker attributes  &
   marker_name = .test_analysis_1.ground.POVrefmark1550  &
   color = MAGENTA  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .test_analysis_1.ground.POVrefmark1560  &
   adams_id = 3001560  &
   location = 280.3588848499, 0.0, 1451.1797484552  &
   orientation = 90.0d, 64.562208709d, 359.9873106383d
!
marker attributes  &
   marker_name = .test_analysis_1.ground.POVrefmark1560  &
   color = MAGENTA  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .test_analysis_1.ground.POVrefmark1570  &
   adams_id = 3001570  &
   location = 289.3893304369, 0.0, 1455.4750208547  &
   orientation = 90.0d, 65.6470584861d, 359.9874216566d
!
marker attributes  &
   marker_name = .test_analysis_1.ground.POVrefmark1570  &
   color = MAGENTA  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .test_analysis_1.ground.POVrefmark1580  &
   adams_id = 3001580  &
   location = 298.4994703353, 0.0, 1459.598544899  &
   orientation = 90.0d, 66.8087106503d, 359.9875334907d
!
marker attributes  &
   marker_name = .test_analysis_1.ground.POVrefmark1580  &
   color = MAGENTA  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .test_analysis_1.ground.POVrefmark1590  &
   adams_id = 3001590  &
   location = 307.6913466441, 0.0, 1463.5365340814  &
   orientation = 90.0d, 67.9634880125d, 359.987637717d
!
marker attributes  &
   marker_name = .test_analysis_1.ground.POVrefmark1590  &
   color = MAGENTA  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .test_analysis_1.ground.POVrefmark1600  &
   adams_id = 3001600  &
   location = 316.9607131358, 0.0, 1467.288474189  &
   orientation = 90.0d, 69.065580689d, 359.9877309653d
!
marker attributes  &
   marker_name = .test_analysis_1.ground.POVrefmark1600  &
   color = MAGENTA  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .test_analysis_1.ground.POVrefmark1610  &
   adams_id = 3001610  &
   location = 326.3005651374, 0.0, 1470.8614472163  &
   orientation = 90.0d, 70.2605592305d, 359.9878254465d
!
marker attributes  &
   marker_name = .test_analysis_1.ground.POVrefmark1610  &
   color = MAGENTA  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .test_analysis_1.ground.POVrefmark1620  &
   adams_id = 3001620  &
   location = 335.7128255132, 0.0, 1474.2388359027  &
   orientation = 90.0d, 71.3775065342d, 359.9879077308d
!
marker attributes  &
   marker_name = .test_analysis_1.ground.POVrefmark1620  &
   color = MAGENTA  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .test_analysis_1.ground.POVrefmark1630  &
   adams_id = 3001630  &
   location = 345.1891997239, 0.0, 1477.4321303485  &
   orientation = 90.0d, 72.5554973621d, 359.9879884042d
!
marker attributes  &
   marker_name = .test_analysis_1.ground.POVrefmark1630  &
   color = MAGENTA  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .test_analysis_1.ground.POVrefmark1640  &
   adams_id = 3001640  &
   location = 354.7292011509, 0.0, 1480.4299251514  &
   orientation = 90.0d, 73.6812216427d, 359.988059813d
!
marker attributes  &
   marker_name = .test_analysis_1.ground.POVrefmark1640  &
   color = MAGENTA  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .test_analysis_1.ground.POVrefmark1650  &
   adams_id = 3001650  &
   location = 364.3262315118, 0.0, 1483.2397078813  &
   orientation = 90.0d, 74.8333635394d, 359.9881273065d
!
marker attributes  &
   marker_name = .test_analysis_1.ground.POVrefmark1650  &
   color = MAGENTA  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .test_analysis_1.ground.POVrefmark1660  &
   adams_id = 3001660  &
   location = 373.9778602459, 0.0, 1485.855963278  &
   orientation = 90.0d, 75.9332103149d, 359.9881865964d
!
marker attributes  &
   marker_name = .test_analysis_1.ground.POVrefmark1660  &
   color = MAGENTA  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .test_analysis_1.ground.POVrefmark1670  &
   adams_id = 3001670  &
   location = 383.6779232675, 0.0, 1488.2864743944  &
   orientation = 90.0d, 77.1520487401d, 359.9882465809d
!
marker attributes  &
   marker_name = .test_analysis_1.ground.POVrefmark1670  &
   color = MAGENTA  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .test_analysis_1.ground.POVrefmark1680  &
   adams_id = 3001680  &
   location = 393.4274284516, 0.0, 1490.510089861  &
   orientation = 90.0d, 78.2909322805d, 359.9882973197d
!
marker attributes  &
   marker_name = .test_analysis_1.ground.POVrefmark1680  &
   color = MAGENTA  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .test_analysis_1.ground.POVrefmark1690  &
   adams_id = 3001690  &
   location = 403.2192869064, 0.0, 1492.539502451  &
   orientation = 90.0d, 79.4124025574d, 359.9883423749d
!
marker attributes  &
   marker_name = .test_analysis_1.ground.POVrefmark1690  &
   color = MAGENTA  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .test_analysis_1.ground.POVrefmark1700  &
   adams_id = 3001700  &
   location = 413.0489480259, 0.0, 1494.3768713134  &
   orientation = 90.0d, 80.5528361356d, 359.9883832913d
!
marker attributes  &
   marker_name = .test_analysis_1.ground.POVrefmark1700  &
   color = MAGENTA  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .test_analysis_1.ground.POVrefmark1710  &
   adams_id = 3001710  &
   location = 422.9132383116, 0.0, 1496.0182375939  &
   orientation = 90.0d, 81.7042276405d, 359.9884196728d
!
marker attributes  &
   marker_name = .test_analysis_1.ground.POVrefmark1710  &
   color = MAGENTA  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .test_analysis_1.ground.POVrefmark1720  &
   adams_id = 3001720  &
   location = 432.8085206819, 0.0, 1497.4610575084  &
   orientation = 90.0d, 82.8475906057d, 359.9884509751d
!
marker attributes  &
   marker_name = .test_analysis_1.ground.POVrefmark1720  &
   color = MAGENTA  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .test_analysis_1.ground.POVrefmark1730  &
   adams_id = 3001730  &
   location = 442.7306174545, 0.0, 1498.7061377572  &
   orientation = 90.0d, 83.9685404708d, 359.9884770573d
!
marker attributes  &
   marker_name = .test_analysis_1.ground.POVrefmark1730  &
   color = MAGENTA  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .test_analysis_1.ground.POVrefmark1740  &
   adams_id = 3001740  &
   location = 452.6751949016, 0.0, 1499.756875896  &
   orientation = 90.0d, 85.1504630981d, 359.9884996747d
!
marker attributes  &
   marker_name = .test_analysis_1.ground.POVrefmark1740  &
   color = MAGENTA  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .test_analysis_1.ground.POVrefmark1750  &
   adams_id = 3001750  &
   location = 462.6392930675, 0.0, 1500.6022607547  &
   orientation = 90.0d, 86.3180158868d, 359.988517142d
!
marker attributes  &
   marker_name = .test_analysis_1.ground.POVrefmark1750  &
   color = MAGENTA  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .test_analysis_1.ground.POVrefmark1760  &
   adams_id = 3001760  &
   location = 472.6185630533, 0.0, 1501.2444402914  &
   orientation = 90.0d, 87.3772001453d, 359.9885288275d
!
marker attributes  &
   marker_name = .test_analysis_1.ground.POVrefmark1760  &
   color = MAGENTA  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .test_analysis_1.ground.POVrefmark1770  &
   adams_id = 3001770  &
   location = 482.6080137855, 0.0, 1501.7020419913  &
   orientation = 90.0d, 88.6413243789d, 359.9885376216d
!
marker attributes  &
   marker_name = .test_analysis_1.ground.POVrefmark1770  &
   color = MAGENTA  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .test_analysis_1.ground.POVrefmark1780  &
   adams_id = 3001780  &
   location = 492.6050966771, 0.0, 1501.939150893  &
   orientation = 90.0d, 89.5793415535d, 359.9885405354d
!
marker attributes  &
   marker_name = .test_analysis_1.ground.POVrefmark1780  &
   color = MAGENTA  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .test_analysis_1.ground.POVrefmark1790  &
   adams_id = 3001790  &
   location = 502.6048098485, 0.0, 1502.0125688555  &
   orientation = 90.0d, 89.8160496266d, 359.9885407852d
!
marker attributes  &
   marker_name = .test_analysis_1.ground.POVrefmark1790  &
   color = MAGENTA  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .test_analysis_1.ground.POVrefmark1800  &
   adams_id = 3001800  &
   location = 512.6047392349, 0.0, 1502.0446741358  &
   orientation = 90.0d, 89.9197748767d, 359.988540833d
!
marker attributes  &
   marker_name = .test_analysis_1.ground.POVrefmark1800  &
   color = MAGENTA  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .test_analysis_1.ground.POVrefmark1810  &
   adams_id = 3001810  &
   location = 522.6046837905, 0.0, 1502.0586759928  &
   orientation = 90.0d, 89.9840648913d, 359.9885408438d
!
marker attributes  &
   marker_name = .test_analysis_1.ground.POVrefmark1810  &
   color = MAGENTA  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .test_analysis_1.ground.POVrefmark1820  &
   adams_id = 3001820  &
   location = 532.6046377483, 0.0, 1502.0614571812  &
   orientation = 90.0d, 90.0235196705d, 359.9885408433d
!
marker attributes  &
   marker_name = .test_analysis_1.ground.POVrefmark1820  &
   color = MAGENTA  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .test_analysis_1.ground.POVrefmark1830  &
   adams_id = 3001830  &
   location = 542.6045974761, 0.0, 1502.0573522406  &
   orientation = 90.0d, 90.0470994178d, 359.9885408404d
!
marker attributes  &
   marker_name = .test_analysis_1.ground.POVrefmark1830  &
   color = MAGENTA  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .test_analysis_1.ground.POVrefmark1840  &
   adams_id = 3001840  &
   location = 552.6045606523, 0.0, 1502.0491318699  &
   orientation = 90.0d, 90.0601591337d, 359.9885408379d
!
marker attributes  &
   marker_name = .test_analysis_1.ground.POVrefmark1840  &
   color = MAGENTA  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .test_analysis_1.ground.POVrefmark1850  &
   adams_id = 3001850  &
   location = 562.6045257385, 0.0, 1502.0386321531  &
   orientation = 90.0d, 90.0656647021d, 359.9885408367d
!
marker attributes  &
   marker_name = .test_analysis_1.ground.POVrefmark1850  &
   color = MAGENTA  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .test_analysis_1.ground.POVrefmark1860  &
   adams_id = 3001860  &
   location = 572.6044916298, 0.0, 1502.0271715346  &
   orientation = 90.0d, 90.0648664462d, 359.9885408369d
!
marker attributes  &
   marker_name = .test_analysis_1.ground.POVrefmark1860  &
   color = MAGENTA  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .test_analysis_1.ground.POVrefmark1870  &
   adams_id = 3001870  &
   location = 582.6044574044, 0.0, 1502.0158502379  &
   orientation = 90.0d, 90.0575830809d, 359.9885408385d
!
marker attributes  &
   marker_name = .test_analysis_1.ground.POVrefmark1870  &
   color = MAGENTA  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .test_analysis_1.ground.POVrefmark1880  &
   adams_id = 3001880  &
   location = 592.6044221138, 0.0, 1502.0058001265  &
   orientation = 90.0d, 90.0422295739d, 359.9885408411d
!
marker attributes  &
   marker_name = .test_analysis_1.ground.POVrefmark1880  &
   color = MAGENTA  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .test_analysis_1.ground.POVrefmark1890  &
   adams_id = 3001890  &
   location = 602.6043845778, 0.0, 1501.9984297017  &
   orientation = 90.0d, 90.0229862305d, 359.9885408433d
!
marker attributes  &
   marker_name = .test_analysis_1.ground.POVrefmark1890  &
   color = MAGENTA  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .test_analysis_1.ground.POVrefmark1900  &
   adams_id = 3001900  &
   location = 612.6043442276, 0.0, 1501.9944178636  &
   orientation = 90.0d, 90.0100249644d, 359.9885408441d
!
marker attributes  &
   marker_name = .test_analysis_1.ground.POVrefmark1900  &
   color = MAGENTA  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .test_analysis_1.ground.POVrefmark1910  &
   adams_id = 3001910  &
   location = 622.6043019819, 0.0, 1501.9926681847  &
   orientation = 90.0d, 90.001991447d, 359.9885408442d
!
marker attributes  &
   marker_name = .test_analysis_1.ground.POVrefmark1910  &
   color = MAGENTA  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .test_analysis_1.ground.POVrefmark1920  &
   adams_id = 3001920  &
   location = 632.6042585613, 0.0, 1501.9923206131  &
   orientation = 90.0d, 89.9970612694d, 359.9885408442d
!
marker attributes  &
   marker_name = .test_analysis_1.ground.POVrefmark1920  &
   color = MAGENTA  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .test_analysis_1.ground.POVrefmark1930  &
   adams_id = 3001930  &
   location = 642.6042144197, 0.0, 1501.9928335161  &
   orientation = 90.0d, 89.9941147889d, 359.9885408442d
!
marker attributes  &
   marker_name = .test_analysis_1.ground.POVrefmark1930  &
   color = MAGENTA  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .test_analysis_1.ground.POVrefmark1940  &
   adams_id = 3001940  &
   location = 652.6041698472, 0.0, 1501.9938606746  &
   orientation = 90.0d, 89.99248286d, 359.9885408442d
!
marker attributes  &
   marker_name = .test_analysis_1.ground.POVrefmark1940  &
   color = MAGENTA  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .test_analysis_1.ground.POVrefmark1950  &
   adams_id = 3001950  &
   location = 662.604125036, 0.0, 1501.9951726572  &
   orientation = 90.0d, 89.9917948715d, 359.9885408441d
!
marker attributes  &
   marker_name = .test_analysis_1.ground.POVrefmark1950  &
   color = MAGENTA  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .test_analysis_1.ground.POVrefmark1960  &
   adams_id = 3001960  &
   location = 672.6040801242, 0.0, 1501.9966047158  &
   orientation = 90.0d, 89.9918945813d, 359.9885408441d
!
marker attributes  &
   marker_name = .test_analysis_1.ground.POVrefmark1960  &
   color = MAGENTA  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .test_analysis_1.ground.POVrefmark1970  &
   adams_id = 3001970  &
   location = 682.604035227, 0.0, 1501.9980193719  &
   orientation = 90.0d, 89.9928046333d, 359.9885408442d
!
marker attributes  &
   marker_name = .test_analysis_1.ground.POVrefmark1970  &
   color = MAGENTA  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .test_analysis_1.ground.POVrefmark1980  &
   adams_id = 3001980  &
   location = 692.6039904629, 0.0, 1501.9992751947  &
   orientation = 90.0d, 89.9947230789d, 359.9885408442d
!
marker attributes  &
   marker_name = .test_analysis_1.ground.POVrefmark1980  &
   color = MAGENTA  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .test_analysis_1.ground.POVrefmark1990  &
   adams_id = 3001990  &
   location = 702.6039459794, 0.0, 1502.0001961871  &
   orientation = 90.0d, 89.9971276428d, 359.9885408442d
!
marker attributes  &
   marker_name = .test_analysis_1.ground.POVrefmark1990  &
   color = MAGENTA  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .test_analysis_1.ground.POVrefmark2000  &
   adams_id = 3002000  &
   location = 712.6039018475, 0.0, 1502.0006975058  &
   orientation = 90.0d, 89.9987472466d, 359.9885408442d
!
marker attributes  &
   marker_name = .test_analysis_1.ground.POVrefmark2000  &
   color = MAGENTA  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .test_analysis_1.ground.POVrefmark2010  &
   adams_id = 3002010  &
   location = 722.6038579524, 0.0, 1502.0009161516  &
   orientation = 90.0d, 89.9997510938d, 359.9885408443d
!
marker attributes  &
   marker_name = .test_analysis_1.ground.POVrefmark2010  &
   color = MAGENTA  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .test_analysis_1.ground.POVrefmark2020  &
   adams_id = 3002020  &
   location = 732.6038142042, 0.0, 1502.0009595937  &
   orientation = 90.0d, 90.0003671584d, 359.9885408442d
!
marker attributes  &
   marker_name = .test_analysis_1.ground.POVrefmark2020  &
   color = MAGENTA  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .test_analysis_1.ground.POVrefmark2030  &
   adams_id = 3002030  &
   location = 742.6037705461, 0.0, 1502.0008955127  &
   orientation = 90.0d, 90.0007353486d, 359.9885408442d
!
marker attributes  &
   marker_name = .test_analysis_1.ground.POVrefmark2030  &
   color = MAGENTA  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .test_analysis_1.ground.POVrefmark2040  &
   adams_id = 3002040  &
   location = 752.6037269418, 0.0, 1502.0007671708  &
   orientation = 90.0d, 90.0009392805d, 359.9885408442d
!
marker attributes  &
   marker_name = .test_analysis_1.ground.POVrefmark2040  &
   color = MAGENTA  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .test_analysis_1.ground.POVrefmark2050  &
   adams_id = 3002050  &
   location = 762.6036833673, 0.0, 1502.0006032361  &
   orientation = 90.0d, 90.0010252671d, 359.9885408442d
!
marker attributes  &
   marker_name = .test_analysis_1.ground.POVrefmark2050  &
   color = MAGENTA  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .test_analysis_1.ground.POVrefmark2060  &
   adams_id = 3002060  &
   location = 772.6036398055, 0.0, 1502.000424294  &
   orientation = 90.0d, 90.001012836d, 359.9885408442d
!
marker attributes  &
   marker_name = .test_analysis_1.ground.POVrefmark2060  &
   color = MAGENTA  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .test_analysis_1.ground.POVrefmark2070  &
   adams_id = 3002070  &
   location = 782.6035962418, 0.0, 1502.0002475216  &
   orientation = 90.0d, 90.0008991639d, 359.9885408442d
!
marker attributes  &
   marker_name = .test_analysis_1.ground.POVrefmark2070  &
   color = MAGENTA  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .test_analysis_1.ground.POVrefmark2080  &
   adams_id = 3002080  &
   location = 792.6035526614, 0.0, 1502.0000905885  &
   orientation = 90.0d, 90.0006595126d, 359.9885408442d
!
marker attributes  &
   marker_name = .test_analysis_1.ground.POVrefmark2080  &
   color = MAGENTA  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .test_analysis_1.ground.POVrefmark2090  &
   adams_id = 3002090  &
   location = 802.6035090461, 0.0, 1501.9999754824  &
   orientation = 90.0d, 90.0003591188d, 359.9885408442d
!
marker attributes  &
   marker_name = .test_analysis_1.ground.POVrefmark2090  &
   color = MAGENTA  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .test_analysis_1.ground.POVrefmark2100  &
   adams_id = 3002100  &
   location = 812.6034653868, 0.0, 1501.9999128046  &
   orientation = 90.0d, 90.0001567779d, 359.9885408443d
!
marker attributes  &
   marker_name = .test_analysis_1.ground.POVrefmark2100  &
   color = MAGENTA  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .test_analysis_1.ground.POVrefmark2110  &
   adams_id = 3002110  &
   location = 822.6034216979, 0.0, 1501.9998854418  &
   orientation = 90.0d, 90.0000313538d, 359.9885408443d
!
marker attributes  &
   marker_name = .test_analysis_1.ground.POVrefmark2110  &
   color = MAGENTA  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .test_analysis_1.ground.POVrefmark2120  &
   adams_id = 3002120  &
   location = 832.6033779906, 0.0, 1501.9998799696  &
   orientation = 90.0d, 89.9999543628d, 359.9885408443d
!
marker attributes  &
   marker_name = .test_analysis_1.ground.POVrefmark2120  &
   color = MAGENTA  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .test_analysis_1.ground.POVrefmark2130  &
   adams_id = 3002130  &
   location = 842.6033342721, 0.0, 1501.9998879347  &
   orientation = 90.0d, 89.9999083201d, 359.9885408443d
!
marker attributes  &
   marker_name = .test_analysis_1.ground.POVrefmark2130  &
   color = MAGENTA  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .test_analysis_1.ground.POVrefmark2140  &
   adams_id = 3002140  &
   location = 852.6032905469, 0.0, 1501.9999039358  &
   orientation = 90.0d, 89.9998827694d, 359.9885408443d
!
marker attributes  &
   marker_name = .test_analysis_1.ground.POVrefmark2140  &
   color = MAGENTA  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .test_analysis_1.ground.POVrefmark2150  &
   adams_id = 3002150  &
   location = 862.6032468179, 0.0, 1501.9999243963  &
   orientation = 90.0d, 89.9998719083d, 359.9885408443d
!
marker attributes  &
   marker_name = .test_analysis_1.ground.POVrefmark2150  &
   color = MAGENTA  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .test_analysis_1.ground.POVrefmark2160  &
   adams_id = 3002160  &
   location = 872.6032030874, 0.0, 1501.9999467525  &
   orientation = 90.0d, 89.9998732701d, 359.9885408443d
!
marker attributes  &
   marker_name = .test_analysis_1.ground.POVrefmark2160  &
   color = MAGENTA  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .test_analysis_1.ground.POVrefmark2170  &
   adams_id = 3002170  &
   location = 882.603159357, 0.0, 1501.9999688709  &
   orientation = 90.0d, 89.9998871641d, 359.9885408443d
!
marker attributes  &
   marker_name = .test_analysis_1.ground.POVrefmark2170  &
   color = MAGENTA  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .test_analysis_1.ground.POVrefmark2180  &
   adams_id = 3002180  &
   location = 892.6031156287, 0.0, 1501.9999885644  &
   orientation = 90.0d, 89.9999166133d, 359.9885408443d
!
marker attributes  &
   marker_name = .test_analysis_1.ground.POVrefmark2180  &
   color = MAGENTA  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .test_analysis_1.ground.POVrefmark2190  &
   adams_id = 3002190  &
   location = 902.6030719047, 0.0, 1502.000003118  &
   orientation = 90.0d, 89.9999535844d, 359.9885408443d
!
marker attributes  &
   marker_name = .test_analysis_1.ground.POVrefmark2190  &
   color = MAGENTA  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .test_analysis_1.ground.POVrefmark2200  &
   adams_id = 3002200  &
   location = 912.603028186, 0.0, 1502.0000112191  &
   orientation = 90.0d, 89.9999785423d, 359.9885408443d
!
marker attributes  &
   marker_name = .test_analysis_1.ground.POVrefmark2200  &
   color = MAGENTA  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .test_analysis_1.ground.POVrefmark2210  &
   adams_id = 3002210  &
   location = 922.6029844711, 0.0, 1502.0000149641  &
   orientation = 90.0d, 89.9999941011d, 359.9885408443d
!
marker attributes  &
   marker_name = .test_analysis_1.ground.POVrefmark2210  &
   color = MAGENTA  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .test_analysis_1.ground.POVrefmark2220  &
   adams_id = 3002220  &
   location = 932.6029407584, 0.0, 1502.0000159937  &
   orientation = 90.0d, 90.0000037943d, 359.9885408443d
!
marker attributes  &
   marker_name = .test_analysis_1.ground.POVrefmark2220  &
   color = MAGENTA  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .test_analysis_1.ground.POVrefmark2230  &
   adams_id = 3002230  &
   location = 942.6028970471, 0.0, 1502.0000153314  &
   orientation = 90.0d, 90.0000098231d, 359.9885408443d
!
marker attributes  &
   marker_name = .test_analysis_1.ground.POVrefmark2230  &
   color = MAGENTA  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .test_analysis_1.ground.POVrefmark2240  &
   adams_id = 3002240  &
   location = 952.6028533367, 0.0, 1502.000013617  &
   orientation = 90.0d, 90.0000135568d, 359.9885408443d
!
marker attributes  &
   marker_name = .test_analysis_1.ground.POVrefmark2240  &
   color = MAGENTA  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .test_analysis_1.ground.POVrefmark2250  &
   adams_id = 3002250  &
   location = 962.6028096269, 0.0, 1502.0000112509  &
   orientation = 90.0d, 90.0000158432d, 359.9885408443d
!
marker attributes  &
   marker_name = .test_analysis_1.ground.POVrefmark2250  &
   color = MAGENTA  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .test_analysis_1.ground.POVrefmark2260  &
   adams_id = 3002260  &
   location = 972.6027659174, 0.0, 1502.0000084858  &
   orientation = 90.0d, 90.0000172016d, 359.9885408443d
!
marker attributes  &
   marker_name = .test_analysis_1.ground.POVrefmark2260  &
   color = MAGENTA  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .test_analysis_1.ground.POVrefmark2270  &
   adams_id = 3002270  &
   location = 982.6027222081, 0.0, 1502.0000054835  &
   orientation = 90.0d, 90.0000179405d, 359.9885408443d
!
marker attributes  &
   marker_name = .test_analysis_1.ground.POVrefmark2270  &
   color = MAGENTA  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .test_analysis_1.ground.POVrefmark2280  &
   adams_id = 3002280  &
   location = 992.6026784989, 0.0, 1502.0000023523  &
   orientation = 90.0d, 90.0000182277d, 359.9885408443d
!
marker attributes  &
   marker_name = .test_analysis_1.ground.POVrefmark2280  &
   color = MAGENTA  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .test_analysis_1.ground.POVrefmark2290  &
   adams_id = 3002290  &
   location = 1002.6026347897, 0.0, 1501.999999171  &
   orientation = 90.0d, 90.0000181285d, 359.9885408443d
!
marker attributes  &
   marker_name = .test_analysis_1.ground.POVrefmark2290  &
   color = MAGENTA  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .test_analysis_1.ground.POVbasemark  &
   adams_id = 2999991  &
   location = 1002.6026347897, 0.0, 1501.999999171  &
   orientation = 90.0d, 90.0000181285d, 179.9885408443d
!
marker create  &
   marker_name = .test_analysis_1.ground.POVcammark  &
   adams_id = 2999992  &
   location = 992.6026784989, 0.0, 1502.0000023523  &
   orientation = 90.0d, 90.0000182277d, 179.9885408443d
!
marker create  &
   marker_name = .test_analysis_1.ground.stop  &
   adams_id = 9006322  &
   location = 713.6038974491, 0.0, 1502.000729913  &
   orientation = 90.0d, 89.9981431949d, 270.0d
!
marker create  &
   marker_name = .test_analysis_1.ground.stopref  &
   adams_id = 9006323  &
   location = 713.1038974494, 0.0, 1502.0007137093  &
   orientation = 90.0d, 89.9981431949d, 270.0d
!
! ****** Floating Markers for current part ******
!
floating_marker create  &
   floating_marker_name = .test_analysis_1.ground.FMARKER_3002291  &
   adams_id = 3002291
!
floating_marker create  &
   floating_marker_name = .test_analysis_1.ground.FMARKER_3002292  &
   adams_id = 3002292
!
floating_marker create  &
   floating_marker_name = .test_analysis_1.ground.FMARKER_3002293  &
   adams_id = 3002293
!
floating_marker create  &
   floating_marker_name = .test_analysis_1.ground.FMARKER_3002294  &
   adams_id = 3002294
!
floating_marker create  &
   floating_marker_name = .test_analysis_1.ground.FMARKER_9000101  &
   adams_id = 9000101
!
floating_marker create  &
   floating_marker_name = .test_analysis_1.ground.FMARKER_9000102  &
   adams_id = 9000102
!
floating_marker create  &
   floating_marker_name = .test_analysis_1.ground.FMARKER_9000103  &
   adams_id = 9000103
!
floating_marker create  &
   floating_marker_name = .test_analysis_1.ground.FMARKER_9000302  &
   adams_id = 9000302
!
floating_marker create  &
   floating_marker_name = .test_analysis_1.ground.FMARKER_9000303  &
   adams_id = 9000303
!
floating_marker create  &
   floating_marker_name = .test_analysis_1.ground.FMARKER_9000304  &
   adams_id = 9000304
!
floating_marker create  &
   floating_marker_name = .test_analysis_1.ground.FMARKER_9000305  &
   adams_id = 9000305
!
floating_marker create  &
   floating_marker_name = .test_analysis_1.ground.FMARKER_9000306  &
   adams_id = 9000306
!
floating_marker create  &
   floating_marker_name = .test_analysis_1.ground.FMARKER_9000307  &
   adams_id = 9000307
!
floating_marker create  &
   floating_marker_name = .test_analysis_1.ground.FMARKER_9000310  &
   adams_id = 9000310
!
floating_marker create  &
   floating_marker_name = .test_analysis_1.ground.FMARKER_9000311  &
   adams_id = 9000311
!
floating_marker create  &
   floating_marker_name = .test_analysis_1.ground.FMARKER_9000601  &
   adams_id = 9000601
!
floating_marker create  &
   floating_marker_name = .test_analysis_1.ground.FMARKER_9000602  &
   adams_id = 9000602
!
floating_marker create  &
   floating_marker_name = .test_analysis_1.ground.FMARKER_9000603  &
   adams_id = 9000603
!
floating_marker create  &
   floating_marker_name = .test_analysis_1.ground.FMARKER_9000604  &
   adams_id = 9000604
!
floating_marker create  &
   floating_marker_name = .test_analysis_1.ground.FMARKER_9000605  &
   adams_id = 9000605
!
floating_marker create  &
   floating_marker_name = .test_analysis_1.ground.FMARKER_9000606  &
   adams_id = 9000606
!
floating_marker create  &
   floating_marker_name = .test_analysis_1.ground.FMARKER_9000609  &
   adams_id = 9000609
!
floating_marker create  &
   floating_marker_name = .test_analysis_1.ground.FMARKER_9000610  &
   adams_id = 9000610
!
floating_marker create  &
   floating_marker_name = .test_analysis_1.ground.FMARKER_9000611  &
   adams_id = 9000611
!
floating_marker create  &
   floating_marker_name = .test_analysis_1.ground.FMARKER_9000612  &
   adams_id = 9000612
!
floating_marker create  &
   floating_marker_name = .test_analysis_1.ground.FMARKER_9000613  &
   adams_id = 9000613
!
floating_marker create  &
   floating_marker_name = .test_analysis_1.ground.FMARKER_9000901  &
   adams_id = 9000901
!
floating_marker create  &
   floating_marker_name = .test_analysis_1.ground.FMARKER_9000902  &
   adams_id = 9000902
!
floating_marker create  &
   floating_marker_name = .test_analysis_1.ground.FMARKER_9000903  &
   adams_id = 9000903
!
floating_marker create  &
   floating_marker_name = .test_analysis_1.ground.FMARKER_9000904  &
   adams_id = 9000904
!
floating_marker create  &
   floating_marker_name = .test_analysis_1.ground.FMARKER_9000905  &
   adams_id = 9000905
!
floating_marker create  &
   floating_marker_name = .test_analysis_1.ground.FMARKER_9000906  &
   adams_id = 9000906
!
floating_marker create  &
   floating_marker_name = .test_analysis_1.ground.FMARKER_9000909  &
   adams_id = 9000909
!
floating_marker create  &
   floating_marker_name = .test_analysis_1.ground.FMARKER_9000910  &
   adams_id = 9000910
!
floating_marker create  &
   floating_marker_name = .test_analysis_1.ground.FMARKER_9000911  &
   adams_id = 9000911
!
floating_marker create  &
   floating_marker_name = .test_analysis_1.ground.FMARKER_9000912  &
   adams_id = 9000912
!
floating_marker create  &
   floating_marker_name = .test_analysis_1.ground.FMARKER_9000913  &
   adams_id = 9000913
!
floating_marker create  &
   floating_marker_name = .test_analysis_1.ground.FMARKER_9001201  &
   adams_id = 9001201
!
floating_marker create  &
   floating_marker_name = .test_analysis_1.ground.FMARKER_9001202  &
   adams_id = 9001202
!
floating_marker create  &
   floating_marker_name = .test_analysis_1.ground.FMARKER_9001203  &
   adams_id = 9001203
!
floating_marker create  &
   floating_marker_name = .test_analysis_1.ground.FMARKER_9001204  &
   adams_id = 9001204
!
floating_marker create  &
   floating_marker_name = .test_analysis_1.ground.FMARKER_9001205  &
   adams_id = 9001205
!
floating_marker create  &
   floating_marker_name = .test_analysis_1.ground.FMARKER_9001206  &
   adams_id = 9001206
!
floating_marker create  &
   floating_marker_name = .test_analysis_1.ground.FMARKER_9001209  &
   adams_id = 9001209
!
floating_marker create  &
   floating_marker_name = .test_analysis_1.ground.FMARKER_9001210  &
   adams_id = 9001210
!
floating_marker create  &
   floating_marker_name = .test_analysis_1.ground.FMARKER_9001211  &
   adams_id = 9001211
!
floating_marker create  &
   floating_marker_name = .test_analysis_1.ground.FMARKER_9001212  &
   adams_id = 9001212
!
floating_marker create  &
   floating_marker_name = .test_analysis_1.ground.FMARKER_9001213  &
   adams_id = 9001213
!
floating_marker create  &
   floating_marker_name = .test_analysis_1.ground.FMARKER_9001501  &
   adams_id = 9001501
!
floating_marker create  &
   floating_marker_name = .test_analysis_1.ground.FMARKER_9001502  &
   adams_id = 9001502
!
floating_marker create  &
   floating_marker_name = .test_analysis_1.ground.FMARKER_9001503  &
   adams_id = 9001503
!
floating_marker create  &
   floating_marker_name = .test_analysis_1.ground.FMARKER_9001504  &
   adams_id = 9001504
!
floating_marker create  &
   floating_marker_name = .test_analysis_1.ground.FMARKER_9001505  &
   adams_id = 9001505
!
floating_marker create  &
   floating_marker_name = .test_analysis_1.ground.FMARKER_9001506  &
   adams_id = 9001506
!
floating_marker create  &
   floating_marker_name = .test_analysis_1.ground.FMARKER_9001509  &
   adams_id = 9001509
!
floating_marker create  &
   floating_marker_name = .test_analysis_1.ground.FMARKER_9001510  &
   adams_id = 9001510
!
floating_marker create  &
   floating_marker_name = .test_analysis_1.ground.FMARKER_9001511  &
   adams_id = 9001511
!
floating_marker create  &
   floating_marker_name = .test_analysis_1.ground.FMARKER_9001512  &
   adams_id = 9001512
!
floating_marker create  &
   floating_marker_name = .test_analysis_1.ground.FMARKER_9001513  &
   adams_id = 9001513
!
floating_marker create  &
   floating_marker_name = .test_analysis_1.ground.FMARKER_9001801  &
   adams_id = 9001801
!
floating_marker create  &
   floating_marker_name = .test_analysis_1.ground.FMARKER_9001802  &
   adams_id = 9001802
!
floating_marker create  &
   floating_marker_name = .test_analysis_1.ground.FMARKER_9001803  &
   adams_id = 9001803
!
floating_marker create  &
   floating_marker_name = .test_analysis_1.ground.FMARKER_9001804  &
   adams_id = 9001804
!
floating_marker create  &
   floating_marker_name = .test_analysis_1.ground.FMARKER_9001805  &
   adams_id = 9001805
!
floating_marker create  &
   floating_marker_name = .test_analysis_1.ground.FMARKER_9001806  &
   adams_id = 9001806
!
floating_marker create  &
   floating_marker_name = .test_analysis_1.ground.FMARKER_9001809  &
   adams_id = 9001809
!
floating_marker create  &
   floating_marker_name = .test_analysis_1.ground.FMARKER_9001810  &
   adams_id = 9001810
!
floating_marker create  &
   floating_marker_name = .test_analysis_1.ground.FMARKER_9001811  &
   adams_id = 9001811
!
floating_marker create  &
   floating_marker_name = .test_analysis_1.ground.FMARKER_9001812  &
   adams_id = 9001812
!
floating_marker create  &
   floating_marker_name = .test_analysis_1.ground.FMARKER_9001813  &
   adams_id = 9001813
!
floating_marker create  &
   floating_marker_name = .test_analysis_1.ground.FMARKER_9002101  &
   adams_id = 9002101
!
floating_marker create  &
   floating_marker_name = .test_analysis_1.ground.FMARKER_9002102  &
   adams_id = 9002102
!
floating_marker create  &
   floating_marker_name = .test_analysis_1.ground.FMARKER_9002103  &
   adams_id = 9002103
!
floating_marker create  &
   floating_marker_name = .test_analysis_1.ground.FMARKER_9002104  &
   adams_id = 9002104
!
floating_marker create  &
   floating_marker_name = .test_analysis_1.ground.FMARKER_9002105  &
   adams_id = 9002105
!
floating_marker create  &
   floating_marker_name = .test_analysis_1.ground.FMARKER_9002106  &
   adams_id = 9002106
!
floating_marker create  &
   floating_marker_name = .test_analysis_1.ground.FMARKER_9002109  &
   adams_id = 9002109
!
floating_marker create  &
   floating_marker_name = .test_analysis_1.ground.FMARKER_9002110  &
   adams_id = 9002110
!
floating_marker create  &
   floating_marker_name = .test_analysis_1.ground.FMARKER_9002111  &
   adams_id = 9002111
!
floating_marker create  &
   floating_marker_name = .test_analysis_1.ground.FMARKER_9002112  &
   adams_id = 9002112
!
floating_marker create  &
   floating_marker_name = .test_analysis_1.ground.FMARKER_9002113  &
   adams_id = 9002113
!
floating_marker create  &
   floating_marker_name = .test_analysis_1.ground.FMARKER_9002401  &
   adams_id = 9002401
!
floating_marker create  &
   floating_marker_name = .test_analysis_1.ground.FMARKER_9002402  &
   adams_id = 9002402
!
floating_marker create  &
   floating_marker_name = .test_analysis_1.ground.FMARKER_9002403  &
   adams_id = 9002403
!
floating_marker create  &
   floating_marker_name = .test_analysis_1.ground.FMARKER_9002404  &
   adams_id = 9002404
!
floating_marker create  &
   floating_marker_name = .test_analysis_1.ground.FMARKER_9002405  &
   adams_id = 9002405
!
floating_marker create  &
   floating_marker_name = .test_analysis_1.ground.FMARKER_9002406  &
   adams_id = 9002406
!
floating_marker create  &
   floating_marker_name = .test_analysis_1.ground.FMARKER_9002409  &
   adams_id = 9002409
!
floating_marker create  &
   floating_marker_name = .test_analysis_1.ground.FMARKER_9002410  &
   adams_id = 9002410
!
floating_marker create  &
   floating_marker_name = .test_analysis_1.ground.FMARKER_9002411  &
   adams_id = 9002411
!
floating_marker create  &
   floating_marker_name = .test_analysis_1.ground.FMARKER_9002412  &
   adams_id = 9002412
!
floating_marker create  &
   floating_marker_name = .test_analysis_1.ground.FMARKER_9002413  &
   adams_id = 9002413
!
floating_marker create  &
   floating_marker_name = .test_analysis_1.ground.FMARKER_9002701  &
   adams_id = 9002701
!
floating_marker create  &
   floating_marker_name = .test_analysis_1.ground.FMARKER_9002702  &
   adams_id = 9002702
!
floating_marker create  &
   floating_marker_name = .test_analysis_1.ground.FMARKER_9002703  &
   adams_id = 9002703
!
floating_marker create  &
   floating_marker_name = .test_analysis_1.ground.FMARKER_9002704  &
   adams_id = 9002704
!
floating_marker create  &
   floating_marker_name = .test_analysis_1.ground.FMARKER_9002705  &
   adams_id = 9002705
!
floating_marker create  &
   floating_marker_name = .test_analysis_1.ground.FMARKER_9002706  &
   adams_id = 9002706
!
floating_marker create  &
   floating_marker_name = .test_analysis_1.ground.FMARKER_9002709  &
   adams_id = 9002709
!
floating_marker create  &
   floating_marker_name = .test_analysis_1.ground.FMARKER_9002710  &
   adams_id = 9002710
!
floating_marker create  &
   floating_marker_name = .test_analysis_1.ground.FMARKER_9002711  &
   adams_id = 9002711
!
floating_marker create  &
   floating_marker_name = .test_analysis_1.ground.FMARKER_9002712  &
   adams_id = 9002712
!
floating_marker create  &
   floating_marker_name = .test_analysis_1.ground.FMARKER_9002713  &
   adams_id = 9002713
!
floating_marker create  &
   floating_marker_name = .test_analysis_1.ground.FMARKER_9003001  &
   adams_id = 9003001
!
floating_marker create  &
   floating_marker_name = .test_analysis_1.ground.FMARKER_9003002  &
   adams_id = 9003002
!
floating_marker create  &
   floating_marker_name = .test_analysis_1.ground.FMARKER_9003003  &
   adams_id = 9003003
!
floating_marker create  &
   floating_marker_name = .test_analysis_1.ground.FMARKER_9003004  &
   adams_id = 9003004
!
floating_marker create  &
   floating_marker_name = .test_analysis_1.ground.FMARKER_9003005  &
   adams_id = 9003005
!
floating_marker create  &
   floating_marker_name = .test_analysis_1.ground.FMARKER_9003006  &
   adams_id = 9003006
!
floating_marker create  &
   floating_marker_name = .test_analysis_1.ground.FMARKER_9003009  &
   adams_id = 9003009
!
floating_marker create  &
   floating_marker_name = .test_analysis_1.ground.FMARKER_9003010  &
   adams_id = 9003010
!
floating_marker create  &
   floating_marker_name = .test_analysis_1.ground.FMARKER_9003011  &
   adams_id = 9003011
!
floating_marker create  &
   floating_marker_name = .test_analysis_1.ground.FMARKER_9003012  &
   adams_id = 9003012
!
floating_marker create  &
   floating_marker_name = .test_analysis_1.ground.FMARKER_9003013  &
   adams_id = 9003013
!
floating_marker create  &
   floating_marker_name = .test_analysis_1.ground.FMARKER_9003301  &
   adams_id = 9003301
!
floating_marker create  &
   floating_marker_name = .test_analysis_1.ground.FMARKER_9003302  &
   adams_id = 9003302
!
floating_marker create  &
   floating_marker_name = .test_analysis_1.ground.FMARKER_9003303  &
   adams_id = 9003303
!
floating_marker create  &
   floating_marker_name = .test_analysis_1.ground.FMARKER_9003304  &
   adams_id = 9003304
!
floating_marker create  &
   floating_marker_name = .test_analysis_1.ground.FMARKER_9003305  &
   adams_id = 9003305
!
floating_marker create  &
   floating_marker_name = .test_analysis_1.ground.FMARKER_9003306  &
   adams_id = 9003306
!
floating_marker create  &
   floating_marker_name = .test_analysis_1.ground.FMARKER_9003309  &
   adams_id = 9003309
!
floating_marker create  &
   floating_marker_name = .test_analysis_1.ground.FMARKER_9003310  &
   adams_id = 9003310
!
floating_marker create  &
   floating_marker_name = .test_analysis_1.ground.FMARKER_9003311  &
   adams_id = 9003311
!
floating_marker create  &
   floating_marker_name = .test_analysis_1.ground.FMARKER_9003312  &
   adams_id = 9003312
!
floating_marker create  &
   floating_marker_name = .test_analysis_1.ground.FMARKER_9003313  &
   adams_id = 9003313
!
floating_marker create  &
   floating_marker_name = .test_analysis_1.ground.FMARKER_9003601  &
   adams_id = 9003601
!
floating_marker create  &
   floating_marker_name = .test_analysis_1.ground.FMARKER_9003602  &
   adams_id = 9003602
!
floating_marker create  &
   floating_marker_name = .test_analysis_1.ground.FMARKER_9003603  &
   adams_id = 9003603
!
floating_marker create  &
   floating_marker_name = .test_analysis_1.ground.FMARKER_9003604  &
   adams_id = 9003604
!
floating_marker create  &
   floating_marker_name = .test_analysis_1.ground.FMARKER_9003605  &
   adams_id = 9003605
!
floating_marker create  &
   floating_marker_name = .test_analysis_1.ground.FMARKER_9003606  &
   adams_id = 9003606
!
floating_marker create  &
   floating_marker_name = .test_analysis_1.ground.FMARKER_9003609  &
   adams_id = 9003609
!
floating_marker create  &
   floating_marker_name = .test_analysis_1.ground.FMARKER_9003610  &
   adams_id = 9003610
!
floating_marker create  &
   floating_marker_name = .test_analysis_1.ground.FMARKER_9003611  &
   adams_id = 9003611
!
floating_marker create  &
   floating_marker_name = .test_analysis_1.ground.FMARKER_9003612  &
   adams_id = 9003612
!
floating_marker create  &
   floating_marker_name = .test_analysis_1.ground.FMARKER_9003613  &
   adams_id = 9003613
!
floating_marker create  &
   floating_marker_name = .test_analysis_1.ground.FMARKER_9003901  &
   adams_id = 9003901
!
floating_marker create  &
   floating_marker_name = .test_analysis_1.ground.FMARKER_9003902  &
   adams_id = 9003902
!
floating_marker create  &
   floating_marker_name = .test_analysis_1.ground.FMARKER_9003903  &
   adams_id = 9003903
!
floating_marker create  &
   floating_marker_name = .test_analysis_1.ground.FMARKER_9003904  &
   adams_id = 9003904
!
floating_marker create  &
   floating_marker_name = .test_analysis_1.ground.FMARKER_9003905  &
   adams_id = 9003905
!
floating_marker create  &
   floating_marker_name = .test_analysis_1.ground.FMARKER_9003906  &
   adams_id = 9003906
!
floating_marker create  &
   floating_marker_name = .test_analysis_1.ground.FMARKER_9003909  &
   adams_id = 9003909
!
floating_marker create  &
   floating_marker_name = .test_analysis_1.ground.FMARKER_9003910  &
   adams_id = 9003910
!
floating_marker create  &
   floating_marker_name = .test_analysis_1.ground.FMARKER_9003911  &
   adams_id = 9003911
!
floating_marker create  &
   floating_marker_name = .test_analysis_1.ground.FMARKER_9003912  &
   adams_id = 9003912
!
floating_marker create  &
   floating_marker_name = .test_analysis_1.ground.FMARKER_9003913  &
   adams_id = 9003913
!
floating_marker create  &
   floating_marker_name = .test_analysis_1.ground.FMARKER_9004201  &
   adams_id = 9004201
!
floating_marker create  &
   floating_marker_name = .test_analysis_1.ground.FMARKER_9004202  &
   adams_id = 9004202
!
floating_marker create  &
   floating_marker_name = .test_analysis_1.ground.FMARKER_9004203  &
   adams_id = 9004203
!
floating_marker create  &
   floating_marker_name = .test_analysis_1.ground.FMARKER_9004204  &
   adams_id = 9004204
!
floating_marker create  &
   floating_marker_name = .test_analysis_1.ground.FMARKER_9004205  &
   adams_id = 9004205
!
floating_marker create  &
   floating_marker_name = .test_analysis_1.ground.FMARKER_9004206  &
   adams_id = 9004206
!
floating_marker create  &
   floating_marker_name = .test_analysis_1.ground.FMARKER_9004209  &
   adams_id = 9004209
!
floating_marker create  &
   floating_marker_name = .test_analysis_1.ground.FMARKER_9004210  &
   adams_id = 9004210
!
floating_marker create  &
   floating_marker_name = .test_analysis_1.ground.FMARKER_9004211  &
   adams_id = 9004211
!
floating_marker create  &
   floating_marker_name = .test_analysis_1.ground.FMARKER_9004212  &
   adams_id = 9004212
!
floating_marker create  &
   floating_marker_name = .test_analysis_1.ground.FMARKER_9004213  &
   adams_id = 9004213
!
floating_marker create  &
   floating_marker_name = .test_analysis_1.ground.FMARKER_9004501  &
   adams_id = 9004501
!
floating_marker create  &
   floating_marker_name = .test_analysis_1.ground.FMARKER_9004502  &
   adams_id = 9004502
!
floating_marker create  &
   floating_marker_name = .test_analysis_1.ground.FMARKER_9004503  &
   adams_id = 9004503
!
floating_marker create  &
   floating_marker_name = .test_analysis_1.ground.FMARKER_9004504  &
   adams_id = 9004504
!
floating_marker create  &
   floating_marker_name = .test_analysis_1.ground.FMARKER_9004505  &
   adams_id = 9004505
!
floating_marker create  &
   floating_marker_name = .test_analysis_1.ground.FMARKER_9004506  &
   adams_id = 9004506
!
floating_marker create  &
   floating_marker_name = .test_analysis_1.ground.FMARKER_9004509  &
   adams_id = 9004509
!
floating_marker create  &
   floating_marker_name = .test_analysis_1.ground.FMARKER_9004510  &
   adams_id = 9004510
!
floating_marker create  &
   floating_marker_name = .test_analysis_1.ground.FMARKER_9004511  &
   adams_id = 9004511
!
floating_marker create  &
   floating_marker_name = .test_analysis_1.ground.FMARKER_9004512  &
   adams_id = 9004512
!
floating_marker create  &
   floating_marker_name = .test_analysis_1.ground.FMARKER_9004513  &
   adams_id = 9004513
!
floating_marker create  &
   floating_marker_name = .test_analysis_1.ground.FMARKER_9004801  &
   adams_id = 9004801
!
floating_marker create  &
   floating_marker_name = .test_analysis_1.ground.FMARKER_9004802  &
   adams_id = 9004802
!
floating_marker create  &
   floating_marker_name = .test_analysis_1.ground.FMARKER_9004803  &
   adams_id = 9004803
!
floating_marker create  &
   floating_marker_name = .test_analysis_1.ground.FMARKER_9004804  &
   adams_id = 9004804
!
floating_marker create  &
   floating_marker_name = .test_analysis_1.ground.FMARKER_9004805  &
   adams_id = 9004805
!
floating_marker create  &
   floating_marker_name = .test_analysis_1.ground.FMARKER_9004806  &
   adams_id = 9004806
!
floating_marker create  &
   floating_marker_name = .test_analysis_1.ground.FMARKER_9004809  &
   adams_id = 9004809
!
floating_marker create  &
   floating_marker_name = .test_analysis_1.ground.FMARKER_9004810  &
   adams_id = 9004810
!
floating_marker create  &
   floating_marker_name = .test_analysis_1.ground.FMARKER_9004811  &
   adams_id = 9004811
!
floating_marker create  &
   floating_marker_name = .test_analysis_1.ground.FMARKER_9004812  &
   adams_id = 9004812
!
floating_marker create  &
   floating_marker_name = .test_analysis_1.ground.FMARKER_9004813  &
   adams_id = 9004813
!
floating_marker create  &
   floating_marker_name = .test_analysis_1.ground.FMARKER_9005101  &
   adams_id = 9005101
!
floating_marker create  &
   floating_marker_name = .test_analysis_1.ground.FMARKER_9005102  &
   adams_id = 9005102
!
floating_marker create  &
   floating_marker_name = .test_analysis_1.ground.FMARKER_9005103  &
   adams_id = 9005103
!
floating_marker create  &
   floating_marker_name = .test_analysis_1.ground.FMARKER_9005104  &
   adams_id = 9005104
!
floating_marker create  &
   floating_marker_name = .test_analysis_1.ground.FMARKER_9005105  &
   adams_id = 9005105
!
floating_marker create  &
   floating_marker_name = .test_analysis_1.ground.FMARKER_9005106  &
   adams_id = 9005106
!
floating_marker create  &
   floating_marker_name = .test_analysis_1.ground.FMARKER_9005109  &
   adams_id = 9005109
!
floating_marker create  &
   floating_marker_name = .test_analysis_1.ground.FMARKER_9005110  &
   adams_id = 9005110
!
floating_marker create  &
   floating_marker_name = .test_analysis_1.ground.FMARKER_9005111  &
   adams_id = 9005111
!
floating_marker create  &
   floating_marker_name = .test_analysis_1.ground.FMARKER_9005112  &
   adams_id = 9005112
!
floating_marker create  &
   floating_marker_name = .test_analysis_1.ground.FMARKER_9005113  &
   adams_id = 9005113
!
floating_marker create  &
   floating_marker_name = .test_analysis_1.ground.FMARKER_9005401  &
   adams_id = 9005401
!
floating_marker create  &
   floating_marker_name = .test_analysis_1.ground.FMARKER_9005402  &
   adams_id = 9005402
!
floating_marker create  &
   floating_marker_name = .test_analysis_1.ground.FMARKER_9005403  &
   adams_id = 9005403
!
floating_marker create  &
   floating_marker_name = .test_analysis_1.ground.FMARKER_9005404  &
   adams_id = 9005404
!
floating_marker create  &
   floating_marker_name = .test_analysis_1.ground.FMARKER_9005405  &
   adams_id = 9005405
!
floating_marker create  &
   floating_marker_name = .test_analysis_1.ground.FMARKER_9005406  &
   adams_id = 9005406
!
floating_marker create  &
   floating_marker_name = .test_analysis_1.ground.FMARKER_9005409  &
   adams_id = 9005409
!
floating_marker create  &
   floating_marker_name = .test_analysis_1.ground.FMARKER_9005410  &
   adams_id = 9005410
!
floating_marker create  &
   floating_marker_name = .test_analysis_1.ground.FMARKER_9005411  &
   adams_id = 9005411
!
floating_marker create  &
   floating_marker_name = .test_analysis_1.ground.FMARKER_9005412  &
   adams_id = 9005412
!
floating_marker create  &
   floating_marker_name = .test_analysis_1.ground.FMARKER_9005413  &
   adams_id = 9005413
!
floating_marker create  &
   floating_marker_name = .test_analysis_1.ground.FMARKER_9005701  &
   adams_id = 9005701
!
floating_marker create  &
   floating_marker_name = .test_analysis_1.ground.FMARKER_9005702  &
   adams_id = 9005702
!
floating_marker create  &
   floating_marker_name = .test_analysis_1.ground.FMARKER_9005703  &
   adams_id = 9005703
!
floating_marker create  &
   floating_marker_name = .test_analysis_1.ground.FMARKER_9005704  &
   adams_id = 9005704
!
floating_marker create  &
   floating_marker_name = .test_analysis_1.ground.FMARKER_9005705  &
   adams_id = 9005705
!
floating_marker create  &
   floating_marker_name = .test_analysis_1.ground.FMARKER_9005706  &
   adams_id = 9005706
!
floating_marker create  &
   floating_marker_name = .test_analysis_1.ground.FMARKER_9005709  &
   adams_id = 9005709
!
floating_marker create  &
   floating_marker_name = .test_analysis_1.ground.FMARKER_9005710  &
   adams_id = 9005710
!
floating_marker create  &
   floating_marker_name = .test_analysis_1.ground.FMARKER_9005711  &
   adams_id = 9005711
!
floating_marker create  &
   floating_marker_name = .test_analysis_1.ground.FMARKER_9005712  &
   adams_id = 9005712
!
floating_marker create  &
   floating_marker_name = .test_analysis_1.ground.FMARKER_9005713  &
   adams_id = 9005713
!
floating_marker create  &
   floating_marker_name = .test_analysis_1.ground.FMARKER_9006001  &
   adams_id = 9006001
!
floating_marker create  &
   floating_marker_name = .test_analysis_1.ground.FMARKER_9006002  &
   adams_id = 9006002
!
floating_marker create  &
   floating_marker_name = .test_analysis_1.ground.FMARKER_9006003  &
   adams_id = 9006003
!
floating_marker create  &
   floating_marker_name = .test_analysis_1.ground.FMARKER_9006004  &
   adams_id = 9006004
!
floating_marker create  &
   floating_marker_name = .test_analysis_1.ground.FMARKER_9006005  &
   adams_id = 9006005
!
floating_marker create  &
   floating_marker_name = .test_analysis_1.ground.FMARKER_9006006  &
   adams_id = 9006006
!
floating_marker create  &
   floating_marker_name = .test_analysis_1.ground.FMARKER_9006009  &
   adams_id = 9006009
!
floating_marker create  &
   floating_marker_name = .test_analysis_1.ground.FMARKER_9006010  &
   adams_id = 9006010
!
floating_marker create  &
   floating_marker_name = .test_analysis_1.ground.FMARKER_9006011  &
   adams_id = 9006011
!
floating_marker create  &
   floating_marker_name = .test_analysis_1.ground.FMARKER_9006012  &
   adams_id = 9006012
!
floating_marker create  &
   floating_marker_name = .test_analysis_1.ground.FMARKER_9006013  &
   adams_id = 9006013
!
floating_marker create  &
   floating_marker_name = .test_analysis_1.ground.FMARKER_9006302  &
   adams_id = 9006302
!
floating_marker create  &
   floating_marker_name = .test_analysis_1.ground.FMARKER_9006303  &
   adams_id = 9006303
!
floating_marker create  &
   floating_marker_name = .test_analysis_1.ground.FMARKER_9006304  &
   adams_id = 9006304
!
floating_marker create  &
   floating_marker_name = .test_analysis_1.ground.FMARKER_9006305  &
   adams_id = 9006305
!
floating_marker create  &
   floating_marker_name = .test_analysis_1.ground.FMARKER_9006306  &
   adams_id = 9006306
!
floating_marker create  &
   floating_marker_name = .test_analysis_1.ground.FMARKER_9006307  &
   adams_id = 9006307
!
floating_marker create  &
   floating_marker_name = .test_analysis_1.ground.FMARKER_9006308  &
   adams_id = 9006308
!
floating_marker create  &
   floating_marker_name = .test_analysis_1.ground.FMARKER_9006309  &
   adams_id = 9006309
!
floating_marker create  &
   floating_marker_name = .test_analysis_1.ground.FMARKER_9006310  &
   adams_id = 9006310
!
floating_marker create  &
   floating_marker_name = .test_analysis_1.ground.FMARKER_9006314  &
   adams_id = 9006314
!
floating_marker create  &
   floating_marker_name = .test_analysis_1.ground.FMARKER_9006315  &
   adams_id = 9006315
!
floating_marker create  &
   floating_marker_name = .test_analysis_1.ground.FMARKER_9006316  &
   adams_id = 9006316
!
floating_marker create  &
   floating_marker_name = .test_analysis_1.ground.FMARKER_9006317  &
   adams_id = 9006317
!
floating_marker create  &
   floating_marker_name = .test_analysis_1.ground.FMARKER_9006318  &
   adams_id = 9006318
!
floating_marker create  &
   floating_marker_name = .test_analysis_1.ground.FMARKER_9006319  &
   adams_id = 9006319
!
floating_marker create  &
   floating_marker_name = .test_analysis_1.ground.FMARKER_9006320  &
   adams_id = 9006320
!
floating_marker create  &
   floating_marker_name = .test_analysis_1.ground.FMARKER_9006321  &
   adams_id = 9006321
!
! ****** Graphics for current part ******
!
geometry create curve polyline  &
   polyline_name = .test_analysis_1.ground.test_holegraphic  &
   location = 0.0, 0.0, 0.0  &
      , 0.0, 0.0, 252.0  &
      , 0.0, 0.0, 502.0  &
      , 0.0, 0.0, 752.0  &
      , 0.0, 0.0, 822.0  &
      , 0.0, 0.0, 842.0  &
      , 0.0, 0.0, 862.0  &
      , 0.0, 0.0, 882.0  &
      , 0.0, 0.0, 902.0  &
      , 0.0, 0.0, 922.0  &
      , 0.0, 0.0, 942.0  &
      , 0.0, 0.0, 962.0  &
      , 0.0, 0.0, 982.0  &
      , 0.0, 0.0, 1002.0  &
      , 8.0E-02, 0.0, 1010.73  &
      , 0.3, 0.0, 1019.45  &
      , 0.69, 0.0, 1028.17  &
      , 1.22, 0.0, 1036.88  &
      , 1.9, 0.0, 1045.58  &
      , 2.74, 0.0, 1054.26  &
      , 3.73, 0.0, 1062.93  &
      , 4.87, 0.0, 1071.59  &
      , 6.16, 0.0, 1080.22  &
      , 7.6, 0.0, 1088.82  &
      , 9.19, 0.0, 1097.4  &
      , 10.93, 0.0, 1105.96  &
      , 12.81, 0.0, 1114.48  &
      , 14.85, 0.0, 1122.96  &
      , 17.04, 0.0, 1131.41  &
      , 19.37, 0.0, 1139.82  &
      , 21.85, 0.0, 1148.19  &
      , 24.47, 0.0, 1156.51  &
      , 27.24, 0.0, 1164.78  &
      , 30.15, 0.0, 1173.01  &
      , 33.21, 0.0, 1181.18  &
      , 36.41, 0.0, 1189.3  &
      , 39.75, 0.0, 1197.37  &
      , 43.23, 0.0, 1205.37  &
      , 46.85, 0.0, 1213.31  &
      , 50.6, 0.0, 1221.19  &
      , 54.5, 0.0, 1229.0  &
      , 58.53, 0.0, 1236.74  &
      , 62.69, 0.0, 1244.4  &
      , 66.99, 0.0, 1252.0  &
      , 71.42, 0.0, 1259.52  &
      , 75.98, 0.0, 1266.96  &
      , 80.66, 0.0, 1274.32  &
      , 85.48, 0.0, 1281.6  &
      , 90.42, 0.0, 1288.79  &
      , 95.49, 0.0, 1295.89  &
      , 100.68, 0.0, 1302.91  &
      , 105.99, 0.0, 1309.83  &
      , 111.43, 0.0, 1316.66  &
      , 116.98, 0.0, 1323.39  &
      , 122.65, 0.0, 1330.03  &
      , 128.43, 0.0, 1336.57  &
      , 134.32, 0.0, 1343.0  &
      , 140.33, 0.0, 1349.33  &
      , 146.45, 0.0, 1355.55  &
      , 152.67, 0.0, 1361.67  &
      , 159.0, 0.0, 1367.68  &
      , 165.43, 0.0, 1373.57  &
      , 171.97, 0.0, 1379.35  &
      , 178.61, 0.0, 1385.02  &
      , 185.34, 0.0, 1390.57  &
      , 192.17, 0.0, 1396.01  &
      , 199.09, 0.0, 1401.32  &
      , 206.11, 0.0, 1406.51  &
      , 213.21, 0.0, 1411.58  &
      , 220.4, 0.0, 1416.52  &
      , 227.68, 0.0, 1421.34  &
      , 235.04, 0.0, 1426.02  &
      , 242.48, 0.0, 1430.58  &
      , 250.0, 0.0, 1435.01  &
      , 257.6, 0.0, 1439.31  &
      , 265.26, 0.0, 1443.47  &
      , 273.0, 0.0, 1447.5  &
      , 280.81, 0.0, 1451.4  &
      , 288.69, 0.0, 1455.15  &
      , 296.63, 0.0, 1458.77  &
      , 304.63, 0.0, 1462.25  &
      , 312.7, 0.0, 1465.59  &
      , 320.82, 0.0, 1468.79  &
      , 328.99, 0.0, 1471.85  &
      , 337.22, 0.0, 1474.76  &
      , 345.49, 0.0, 1477.53  &
      , 353.81, 0.0, 1480.15  &
      , 362.18, 0.0, 1482.63  &
      , 370.59, 0.0, 1484.96  &
      , 379.04, 0.0, 1487.15  &
      , 387.52, 0.0, 1489.19  &
      , 396.04, 0.0, 1491.07  &
      , 404.6, 0.0, 1492.81  &
      , 413.18, 0.0, 1494.4  &
      , 421.78, 0.0, 1495.84  &
      , 430.41, 0.0, 1497.13  &
      , 439.07, 0.0, 1498.27  &
      , 447.74, 0.0, 1499.26  &
      , 456.42, 0.0, 1500.1  &
      , 465.12, 0.0, 1500.78  &
      , 473.83, 0.0, 1501.31  &
      , 482.55, 0.0, 1501.7  &
      , 491.27, 0.0, 1501.92  &
      , 500.0, 0.0, 1502.0  &
      , 600.0, 0.0, 1502.0  &
      , 700.0, 0.0, 1502.0  &
      , 800.0, 0.0, 1502.0  &
      , 900.0, 0.0, 1502.0  &
      , 1000.0, 0.0, 1502.0  &
   close = no
!
geometry attributes  &
   geometry_name = .test_analysis_1.ground.test_holegraphic  &
   color = LtGray
!
geometry create curve circle  &
   circle_name = .test_analysis_1.ground.bottom_graphic  &
   adams_id = 3147  &
   center_marker = .test_analysis_1.ground.stopref  &
   radius = 0.54175  &
   segment_count = 18
!
geometry attributes  &
   geometry_name = .test_analysis_1.ground.bottom_graphic  &
   color = BLUE  &
   render = wireframe
!
!-------------------------------- Hole_Bottom ---------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .test_analysis_1.ground
!
part create rigid_body name_and_position  &
   part_name = .test_analysis_1.Hole_Bottom  &
   adams_id = 95000  &
   location = 712.6039018475, 0.0, 1502.0006975058  &
   orientation = 90.0d, 89.9980570369d, 270.0d
!
defaults coordinate_system  &
   default_coordinate_system = .test_analysis_1.Hole_Bottom
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .test_analysis_1.Hole_Bottom.gref1  &
   adams_id = 9006324  &
   location = 0.0, 0.0, 3.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .test_analysis_1.Hole_Bottom.cm  &
   adams_id = 95001  &
   location = 0.0, 0.0, 3.5  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .test_analysis_1.Hole_Bottom.A1  &
   adams_id = 9006325  &
   location = 0.0, 0.0, 3.8  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .test_analysis_1.Hole_Bottom.A2  &
   adams_id = 9006326  &
   location = 0.0, 0.0, 3.2  &
   orientation = 0.0d, 0.0d, 0.0d
!
! ****** Floating Markers for current part ******
!
floating_marker create  &
   floating_marker_name = .test_analysis_1.Hole_Bottom.FMARKER_9000105  &
   adams_id = 9000105
!
part create rigid_body mass_properties  &
   part_name = .test_analysis_1.Hole_Bottom  &
   mass = 3105.5900621118  &
   center_of_mass_marker = .test_analysis_1.Hole_Bottom.cm  &
   ixx = 1.0  &
   iyy = 1.0  &
   izz = 1.0  &
   ixy = 0.0  &
   izx = 0.0  &
   iyz = 0.0
!
! ****** Graphics for current part ******
!
geometry create curve circle  &
   circle_name = .test_analysis_1.Hole_Bottom.gbottom  &
   adams_id = 3145  &
   center_marker = .test_analysis_1.Hole_Bottom.gref1  &
   radius = 0.54175  &
   segment_count = 24
!
geometry attributes  &
   geometry_name = .test_analysis_1.Hole_Bottom.gbottom  &
   color = YELLOW  &
   render = wireframe
!
geometry create shape cylinder  &
   cylinder_name = .test_analysis_1.Hole_Bottom.Hole_Bottomgraphic  &
   adams_id = 3211  &
   center_marker = .test_analysis_1.Hole_Bottom.A2  &
   angle_extent = 360.0  &
   length = 0.6  &
   radius = 5.0E-02  &
   side_count_for_body = 3  &
   segment_count_for_ends = 3
!
geometry attributes  &
   geometry_name = .test_analysis_1.Hole_Bottom.Hole_Bottomgraphic  &
   color = MidnightBlue2  &
   render = wireframe
!
!-------------------------------- test_pdc_01 ---------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .test_analysis_1.ground
!
part create rigid_body name_and_position  &
   part_name = .test_analysis_1.test_pdc_01  &
   adams_id = 9000000  &
   location = 712.6039018475, 0.0, 1502.0006975058  &
   orientation = 90.0d, 89.9979428749d, 270.0d
!
defaults coordinate_system  &
   default_coordinate_system = .test_analysis_1.test_pdc_01
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .test_analysis_1.test_pdc_01.end  &
   adams_id = 9000000  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .test_analysis_1.test_pdc_01.LateralRef  &
   adams_id = 9000005  &
   location = 0.0, 0.0, -0.16667  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .test_analysis_1.test_pdc_01.gref2  &
   adams_id = 9006327  &
   location = 0.0, 0.0, -1.0833  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .test_analysis_1.test_pdc_01.end_B  &
   adams_id = 9006328  &
   location = 0.0, 0.0, -1.5  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .test_analysis_1.test_pdc_01.cm  &
   adams_id = 9000100  &
   location = 0.0, 0.0, -0.6798399811  &
   orientation = 0.0d, 0.0d, 0.0d
!
part create rigid_body mass_properties  &
   part_name = .test_analysis_1.test_pdc_01  &
   mass = 14.508963246  &
   center_of_mass_marker = .test_analysis_1.test_pdc_01.cm  &
   ixx = 2.9544012351  &
   iyy = 2.9544012351  &
   izz = 1.6511602504  &
   ixy = 0.0  &
   izx = 0.0  &
   iyz = 0.0
!
! ****** Graphics for current part ******
!
geometry create shape frustum  &
   frustum_name = .test_analysis_1.test_pdc_01.frust1  &
   adams_id = 3461  &
   center_marker = .test_analysis_1.test_pdc_01.LateralRef  &
   angle_extent = 360.0  &
   length = 0.1583365  &
   top_radius = 0.171875  &
   bottom_radius = 0.34375  &
   side_count_for_body = 18  &
   segment_count_for_ends = 18
!
geometry attributes  &
   geometry_name = .test_analysis_1.test_pdc_01.frust1  &
   color = Coral
!
geometry create shape cylinder  &
   cylinder_name = .test_analysis_1.test_pdc_01.cyl1  &
   adams_id = 3212  &
   center_marker = .test_analysis_1.test_pdc_01.LateralRef  &
   angle_extent = 360.0  &
   length = -0.91663  &
   radius = 0.34375  &
   side_count_for_body = 18  &
   segment_count_for_ends = 18
!
geometry attributes  &
   geometry_name = .test_analysis_1.test_pdc_01.cyl1  &
   color = Coral
!
geometry create shape cylinder  &
   cylinder_name = .test_analysis_1.test_pdc_01.cyl2  &
   adams_id = 3213  &
   center_marker = .test_analysis_1.test_pdc_01.gref2  &
   angle_extent = 360.0  &
   length = -0.4167  &
   radius = 0.34375  &
   side_count_for_body = 18  &
   segment_count_for_ends = 18
!
geometry attributes  &
   geometry_name = .test_analysis_1.test_pdc_01.cyl2  &
   color = Coral
!
geometry create curve polyline  &
   polyline_name = .test_analysis_1.test_pdc_01.tts14  &
   location = 0.309375, 0.125, -1.0833  &
      , 0.360415, 0.125, -1.0833  &
      , 0.360415, -0.125, -1.0833  &
      , 0.309375, -0.125, -1.0833  &
      , 0.309375, 0.125, -1.0833  &
   close = yes
!
geometry attributes  &
   geometry_name = .test_analysis_1.test_pdc_01.tts14  &
   color = Coral
!
geometry create curve polyline  &
   polyline_name = .test_analysis_1.test_pdc_01.tts11  &
   location = 0.309375, 0.125, -1.0833  &
      , 0.309375, 0.125, -0.899974  &
      , 0.5104, 0.125, -0.899974  &
      , 0.360415, 0.125, -1.0833  &
      , 0.309375, 0.125, -1.0833  &
   close = yes
!
geometry attributes  &
   geometry_name = .test_analysis_1.test_pdc_01.tts11  &
   color = Coral
!
geometry create curve polyline  &
   polyline_name = .test_analysis_1.test_pdc_01.tts12  &
   location = 0.360415, 0.125, -1.0833  &
      , 0.5104, 0.125, -0.899974  &
      , 0.5104, -0.125, -0.899974  &
      , 0.360415, -0.125, -1.0833  &
      , 0.360415, 0.125, -1.0833  &
   close = yes
!
geometry attributes  &
   geometry_name = .test_analysis_1.test_pdc_01.tts12  &
   color = SILVER
!
geometry create curve polyline  &
   polyline_name = .test_analysis_1.test_pdc_01.tts13  &
   location = 0.360415, -0.125, -1.0833  &
      , 0.5104, -0.125, -0.899974  &
      , 0.309375, -0.125, -0.899974  &
      , 0.309375, -0.125, -1.0833  &
      , 0.360415, -0.125, -1.0833  &
   close = yes
!
geometry attributes  &
   geometry_name = .test_analysis_1.test_pdc_01.tts13  &
   color = Coral
!
geometry create curve polyline  &
   polyline_name = .test_analysis_1.test_pdc_01.tts21  &
   location = 0.309375, 0.125, -0.899974  &
      , 0.309375, 0.125, -0.716648  &
      , 0.5104, 0.125, -0.716648  &
      , 0.5104, 0.125, -0.899974  &
      , 0.309375, 0.125, -0.899974  &
   close = yes
!
geometry attributes  &
   geometry_name = .test_analysis_1.test_pdc_01.tts21  &
   color = Coral
!
geometry create curve polyline  &
   polyline_name = .test_analysis_1.test_pdc_01.tts22  &
   location = 0.5104, 0.125, -0.899974  &
      , 0.5104, 0.125, -0.716648  &
      , 0.5104, -0.125, -0.716648  &
      , 0.5104, -0.125, -0.899974  &
      , 0.5104, 0.125, -0.899974  &
   close = yes
!
geometry attributes  &
   geometry_name = .test_analysis_1.test_pdc_01.tts22  &
   color = SILVER
!
geometry create curve polyline  &
   polyline_name = .test_analysis_1.test_pdc_01.tts23  &
   location = 0.5104, -0.125, -0.899974  &
      , 0.5104, -0.125, -0.716648  &
      , 0.309375, -0.125, -0.716648  &
      , 0.309375, -0.125, -0.899974  &
      , 0.5104, -0.125, -0.899974  &
   close = yes
!
geometry attributes  &
   geometry_name = .test_analysis_1.test_pdc_01.tts23  &
   color = Coral
!
geometry create curve polyline  &
   polyline_name = .test_analysis_1.test_pdc_01.tts31  &
   location = 0.309375, 0.125, -0.716648  &
      , 0.309375, 0.125, -0.533322  &
      , 0.5104, 0.125, -0.533322  &
      , 0.5104, 0.125, -0.716648  &
      , 0.309375, 0.125, -0.716648  &
   close = yes
!
geometry attributes  &
   geometry_name = .test_analysis_1.test_pdc_01.tts31  &
   color = Coral
!
geometry create curve polyline  &
   polyline_name = .test_analysis_1.test_pdc_01.tts32  &
   location = 0.5104, 0.125, -0.716648  &
      , 0.5104, 0.125, -0.533322  &
      , 0.5104, -0.125, -0.533322  &
      , 0.5104, -0.125, -0.716648  &
      , 0.5104, 0.125, -0.716648  &
   close = yes
!
geometry attributes  &
   geometry_name = .test_analysis_1.test_pdc_01.tts32  &
   color = SILVER
!
geometry create curve polyline  &
   polyline_name = .test_analysis_1.test_pdc_01.tts33  &
   location = 0.5104, -0.125, -0.716648  &
      , 0.5104, -0.125, -0.533322  &
      , 0.309375, -0.125, -0.533322  &
      , 0.309375, -0.125, -0.716648  &
      , 0.5104, -0.125, -0.716648  &
   close = yes
!
geometry attributes  &
   geometry_name = .test_analysis_1.test_pdc_01.tts33  &
   color = Coral
!
geometry create curve polyline  &
   polyline_name = .test_analysis_1.test_pdc_01.tts41  &
   location = 0.309375, 0.125, -0.533322  &
      , 0.309375, 0.125, -0.349996  &
      , 0.5104, 0.125, -0.349996  &
      , 0.5104, 0.125, -0.533322  &
      , 0.309375, 0.125, -0.533322  &
   close = yes
!
geometry attributes  &
   geometry_name = .test_analysis_1.test_pdc_01.tts41  &
   color = Coral
!
geometry create curve polyline  &
   polyline_name = .test_analysis_1.test_pdc_01.tts42  &
   location = 0.5104, 0.125, -0.533322  &
      , 0.5104, 0.125, -0.349996  &
      , 0.5104, -0.125, -0.349996  &
      , 0.5104, -0.125, -0.533322  &
      , 0.5104, 0.125, -0.533322  &
   close = yes
!
geometry attributes  &
   geometry_name = .test_analysis_1.test_pdc_01.tts42  &
   color = SILVER
!
geometry create curve polyline  &
   polyline_name = .test_analysis_1.test_pdc_01.tts43  &
   location = 0.5104, -0.125, -0.533322  &
      , 0.5104, -0.125, -0.349996  &
      , 0.309375, -0.125, -0.349996  &
      , 0.309375, -0.125, -0.533322  &
      , 0.5104, -0.125, -0.533322  &
   close = yes
!
geometry attributes  &
   geometry_name = .test_analysis_1.test_pdc_01.tts43  &
   color = Coral
!
geometry create curve polyline  &
   polyline_name = .test_analysis_1.test_pdc_01.tts51  &
   location = 0.309375, 0.125, -0.349996  &
      , 0.309375, 0.125, -0.16667  &
      , 0.5104, 0.125, -0.16667  &
      , 0.5104, 0.125, -0.349996  &
      , 0.309375, 0.125, -0.349996  &
   close = yes
!
geometry attributes  &
   geometry_name = .test_analysis_1.test_pdc_01.tts51  &
   color = Coral
!
geometry create curve polyline  &
   polyline_name = .test_analysis_1.test_pdc_01.tts52  &
   location = 0.5104, 0.125, -0.349996  &
      , 0.5104, 0.125, -0.16667  &
      , 0.5104, -0.125, -0.16667  &
      , 0.5104, -0.125, -0.349996  &
      , 0.5104, 0.125, -0.349996  &
   close = yes
!
geometry attributes  &
   geometry_name = .test_analysis_1.test_pdc_01.tts52  &
   color = SILVER
!
geometry create curve polyline  &
   polyline_name = .test_analysis_1.test_pdc_01.tts53  &
   location = 0.5104, -0.125, -0.349996  &
      , 0.5104, -0.125, -0.16667  &
      , 0.309375, -0.125, -0.16667  &
      , 0.309375, -0.125, -0.349996  &
      , 0.5104, -0.125, -0.349996  &
   close = yes
!
geometry attributes  &
   geometry_name = .test_analysis_1.test_pdc_01.tts53  &
   color = Coral
!
geometry create curve polyline  &
   polyline_name = .test_analysis_1.test_pdc_01.tts61  &
   location = 0.1546875, 0.125, -0.16667  &
      , 0.1415961035, 0.125, -0.1250025  &
      , 0.46720421, 0.125, -0.1250025  &
      , 0.5104, 0.125, -0.16667  &
      , 0.1546875, 0.125, -0.16667  &
   close = yes
!
geometry attributes  &
   geometry_name = .test_analysis_1.test_pdc_01.tts61  &
   color = Coral
!
geometry create curve polyline  &
   polyline_name = .test_analysis_1.test_pdc_01.tts62  &
   location = 0.5104, 0.125, -0.16667  &
      , 0.46720421, 0.125, -0.1250025  &
      , 0.46720421, -0.125, -0.1250025  &
      , 0.5104, -0.125, -0.16667  &
      , 0.5104, 0.125, -0.16667  &
   close = yes
!
geometry attributes  &
   geometry_name = .test_analysis_1.test_pdc_01.tts62  &
   color = SILVER
!
geometry create curve polyline  &
   polyline_name = .test_analysis_1.test_pdc_01.tts63  &
   location = 0.5104, -0.125, -0.16667  &
      , 0.46720421, -0.125, -0.1250025  &
      , 0.1415961035, -0.125, -0.1250025  &
      , 0.1546875, -0.125, -0.16667  &
      , 0.5104, -0.125, -0.16667  &
   close = yes
!
geometry attributes  &
   geometry_name = .test_analysis_1.test_pdc_01.tts63  &
   color = Coral
!
geometry create curve polyline  &
   polyline_name = .test_analysis_1.test_pdc_01.tts71  &
   location = 0.1415961035, 0.125, -0.1250025  &
      , 0.128504707, 0.125, -8.3335E-02  &
      , 0.42400842, 0.125, -8.3335E-02  &
      , 0.46720421, 0.125, -0.1250025  &
      , 0.1415961035, 0.125, -0.1250025  &
   close = yes
!
geometry attributes  &
   geometry_name = .test_analysis_1.test_pdc_01.tts71  &
   color = Coral
!
geometry create curve polyline  &
   polyline_name = .test_analysis_1.test_pdc_01.tts72  &
   location = 0.46720421, 0.125, -0.1250025  &
      , 0.42400842, 0.125, -8.3335E-02  &
      , 0.42400842, -0.125, -8.3335E-02  &
      , 0.46720421, -0.125, -0.1250025  &
      , 0.46720421, 0.125, -0.1250025  &
   close = yes
!
geometry attributes  &
   geometry_name = .test_analysis_1.test_pdc_01.tts72  &
   color = SILVER
!
geometry create curve polyline  &
   polyline_name = .test_analysis_1.test_pdc_01.tts73  &
   location = 0.46720421, -0.125, -0.1250025  &
      , 0.42400842, -0.125, -8.3335E-02  &
      , 0.128504707, -0.125, -8.3335E-02  &
      , 0.1415961035, -0.125, -0.1250025  &
      , 0.46720421, -0.125, -0.1250025  &
   close = yes
!
geometry attributes  &
   geometry_name = .test_analysis_1.test_pdc_01.tts73  &
   color = Coral
!
geometry create curve polyline  &
   polyline_name = .test_analysis_1.test_pdc_01.tts81  &
   location = 0.128504707, 0.125, -8.3335E-02  &
      , 0.1154133105, 0.125, -4.16675E-02  &
      , 0.38081263, 0.125, -4.16675E-02  &
      , 0.42400842, 0.125, -8.3335E-02  &
      , 0.128504707, 0.125, -8.3335E-02  &
   close = yes
!
geometry attributes  &
   geometry_name = .test_analysis_1.test_pdc_01.tts81  &
   color = Coral
!
geometry create curve polyline  &
   polyline_name = .test_analysis_1.test_pdc_01.tts82  &
   location = 0.42400842, 0.125, -8.3335E-02  &
      , 0.38081263, 0.125, -4.16675E-02  &
      , 0.38081263, -0.125, -4.16675E-02  &
      , 0.42400842, -0.125, -8.3335E-02  &
      , 0.42400842, 0.125, -8.3335E-02  &
   close = yes
!
geometry attributes  &
   geometry_name = .test_analysis_1.test_pdc_01.tts82  &
   color = SILVER
!
geometry create curve polyline  &
   polyline_name = .test_analysis_1.test_pdc_01.tts83  &
   location = 0.42400842, -0.125, -8.3335E-02  &
      , 0.38081263, -0.125, -4.16675E-02  &
      , 0.1154133105, -0.125, -4.16675E-02  &
      , 0.128504707, -0.125, -8.3335E-02  &
      , 0.42400842, -0.125, -8.3335E-02  &
   close = yes
!
geometry attributes  &
   geometry_name = .test_analysis_1.test_pdc_01.tts83  &
   color = Coral
!
geometry create curve polyline  &
   polyline_name = .test_analysis_1.test_pdc_01.tts94  &
   location = 0.1023219141, 0.125, 0.0  &
      , 0.33761684, 0.125, 0.0  &
      , 0.33761684, -0.125, 0.0  &
      , 0.1023219141, -0.125, 0.0  &
      , 0.1023219141, 0.125, 0.0  &
   close = yes
!
geometry attributes  &
   geometry_name = .test_analysis_1.test_pdc_01.tts94  &
   color = SILVER
!
geometry create curve polyline  &
   polyline_name = .test_analysis_1.test_pdc_01.tts91  &
   location = 0.1154133105, 0.125, -4.16675E-02  &
      , 0.1023219141, 0.125, 0.0  &
      , 0.33761684, 0.125, 0.0  &
      , 0.38081263, 0.125, -4.16675E-02  &
      , 0.1154133105, 0.125, -4.16675E-02  &
   close = yes
!
geometry attributes  &
   geometry_name = .test_analysis_1.test_pdc_01.tts91  &
   color = Coral
!
geometry create curve polyline  &
   polyline_name = .test_analysis_1.test_pdc_01.tts92  &
   location = 0.38081263, 0.125, -4.16675E-02  &
      , 0.33761684, 0.125, 0.0  &
      , 0.33761684, -0.125, 0.0  &
      , 0.38081263, -0.125, -4.16675E-02  &
      , 0.38081263, 0.125, -4.16675E-02  &
   close = yes
!
geometry attributes  &
   geometry_name = .test_analysis_1.test_pdc_01.tts92  &
   color = SILVER
!
geometry create curve polyline  &
   polyline_name = .test_analysis_1.test_pdc_01.tts93  &
   location = 0.38081263, -0.125, -4.16675E-02  &
      , 0.33761684, -0.125, 0.0  &
      , 0.1023219141, -0.125, 0.0  &
      , 0.1154133105, -0.125, -4.16675E-02  &
      , 0.38081263, -0.125, -4.16675E-02  &
   close = yes
!
geometry attributes  &
   geometry_name = .test_analysis_1.test_pdc_01.tts93  &
   color = Coral
!
geometry create curve polyline  &
   polyline_name = .test_analysis_1.test_pdc_01.tts11_2  &
   location = -0.125, 0.309375, -1.0833  &
      , -0.125, 0.309375, -0.899974  &
      , -0.125, 0.5104, -0.899974  &
      , -0.125, 0.360415, -1.0833  &
      , -0.125, 0.309375, -1.0833  &
   close = yes
!
geometry attributes  &
   geometry_name = .test_analysis_1.test_pdc_01.tts11_2  &
   color = Coral
!
geometry create curve polyline  &
   polyline_name = .test_analysis_1.test_pdc_01.tts12_2  &
   location = -0.125, 0.360415, -1.0833  &
      , -0.125, 0.5104, -0.899974  &
      , 0.125, 0.5104, -0.899974  &
      , 0.125, 0.360415, -1.0833  &
      , -0.125, 0.360415, -1.0833  &
   close = yes
!
geometry attributes  &
   geometry_name = .test_analysis_1.test_pdc_01.tts12_2  &
   color = SILVER
!
geometry create curve polyline  &
   polyline_name = .test_analysis_1.test_pdc_01.tts13_2  &
   location = 0.125, 0.360415, -1.0833  &
      , 0.125, 0.5104, -0.899974  &
      , 0.125, 0.309375, -0.899974  &
      , 0.125, 0.309375, -1.0833  &
      , 0.125, 0.360415, -1.0833  &
   close = yes
!
geometry attributes  &
   geometry_name = .test_analysis_1.test_pdc_01.tts13_2  &
   color = Coral
!
geometry create curve polyline  &
   polyline_name = .test_analysis_1.test_pdc_01.tts14_2  &
   location = -0.125, 0.309375, -1.0833  &
      , -0.125, 0.360415, -1.0833  &
      , 0.125, 0.360415, -1.0833  &
      , 0.125, 0.309375, -1.0833  &
      , -0.125, 0.309375, -1.0833  &
   close = yes
!
geometry attributes  &
   geometry_name = .test_analysis_1.test_pdc_01.tts14_2  &
   color = Coral
!
geometry create curve polyline  &
   polyline_name = .test_analysis_1.test_pdc_01.tts21_2  &
   location = -0.125, 0.309375, -0.899974  &
      , -0.125, 0.309375, -0.716648  &
      , -0.125, 0.5104, -0.716648  &
      , -0.125, 0.5104, -0.899974  &
      , -0.125, 0.309375, -0.899974  &
   close = yes
!
geometry attributes  &
   geometry_name = .test_analysis_1.test_pdc_01.tts21_2  &
   color = Coral
!
geometry create curve polyline  &
   polyline_name = .test_analysis_1.test_pdc_01.tts22_2  &
   location = -0.125, 0.5104, -0.899974  &
      , -0.125, 0.5104, -0.716648  &
      , 0.125, 0.5104, -0.716648  &
      , 0.125, 0.5104, -0.899974  &
      , -0.125, 0.5104, -0.899974  &
   close = yes
!
geometry attributes  &
   geometry_name = .test_analysis_1.test_pdc_01.tts22_2  &
   color = SILVER
!
geometry create curve polyline  &
   polyline_name = .test_analysis_1.test_pdc_01.tts23_2  &
   location = 0.125, 0.5104, -0.899974  &
      , 0.125, 0.5104, -0.716648  &
      , 0.125, 0.309375, -0.716648  &
      , 0.125, 0.309375, -0.899974  &
      , 0.125, 0.5104, -0.899974  &
   close = yes
!
geometry attributes  &
   geometry_name = .test_analysis_1.test_pdc_01.tts23_2  &
   color = Coral
!
geometry create curve polyline  &
   polyline_name = .test_analysis_1.test_pdc_01.tts31_2  &
   location = -0.125, 0.309375, -0.716648  &
      , -0.125, 0.309375, -0.533322  &
      , -0.125, 0.5104, -0.533322  &
      , -0.125, 0.5104, -0.716648  &
      , -0.125, 0.309375, -0.716648  &
   close = yes
!
geometry attributes  &
   geometry_name = .test_analysis_1.test_pdc_01.tts31_2  &
   color = Coral
!
geometry create curve polyline  &
   polyline_name = .test_analysis_1.test_pdc_01.tts32_2  &
   location = -0.125, 0.5104, -0.716648  &
      , -0.125, 0.5104, -0.533322  &
      , 0.125, 0.5104, -0.533322  &
      , 0.125, 0.5104, -0.716648  &
      , -0.125, 0.5104, -0.716648  &
   close = yes
!
geometry attributes  &
   geometry_name = .test_analysis_1.test_pdc_01.tts32_2  &
   color = SILVER
!
geometry create curve polyline  &
   polyline_name = .test_analysis_1.test_pdc_01.tts33_2  &
   location = 0.125, 0.5104, -0.716648  &
      , 0.125, 0.5104, -0.533322  &
      , 0.125, 0.309375, -0.533322  &
      , 0.125, 0.309375, -0.716648  &
      , 0.125, 0.5104, -0.716648  &
   close = yes
!
geometry attributes  &
   geometry_name = .test_analysis_1.test_pdc_01.tts33_2  &
   color = Coral
!
geometry create curve polyline  &
   polyline_name = .test_analysis_1.test_pdc_01.tts41_2  &
   location = -0.125, 0.309375, -0.533322  &
      , -0.125, 0.309375, -0.349996  &
      , -0.125, 0.5104, -0.349996  &
      , -0.125, 0.5104, -0.533322  &
      , -0.125, 0.309375, -0.533322  &
   close = yes
!
geometry attributes  &
   geometry_name = .test_analysis_1.test_pdc_01.tts41_2  &
   color = Coral
!
geometry create curve polyline  &
   polyline_name = .test_analysis_1.test_pdc_01.tts42_2  &
   location = -0.125, 0.5104, -0.533322  &
      , -0.125, 0.5104, -0.349996  &
      , 0.125, 0.5104, -0.349996  &
      , 0.125, 0.5104, -0.533322  &
      , -0.125, 0.5104, -0.533322  &
   close = yes
!
geometry attributes  &
   geometry_name = .test_analysis_1.test_pdc_01.tts42_2  &
   color = SILVER
!
geometry create curve polyline  &
   polyline_name = .test_analysis_1.test_pdc_01.tts43_2  &
   location = 0.125, 0.5104, -0.533322  &
      , 0.125, 0.5104, -0.349996  &
      , 0.125, 0.309375, -0.349996  &
      , 0.125, 0.309375, -0.533322  &
      , 0.125, 0.5104, -0.533322  &
   close = yes
!
geometry attributes  &
   geometry_name = .test_analysis_1.test_pdc_01.tts43_2  &
   color = Coral
!
geometry create curve polyline  &
   polyline_name = .test_analysis_1.test_pdc_01.tts51_2  &
   location = -0.125, 0.309375, -0.349996  &
      , -0.125, 0.309375, -0.16667  &
      , -0.125, 0.5104, -0.16667  &
      , -0.125, 0.5104, -0.349996  &
      , -0.125, 0.309375, -0.349996  &
   close = yes
!
geometry attributes  &
   geometry_name = .test_analysis_1.test_pdc_01.tts51_2  &
   color = Coral
!
geometry create curve polyline  &
   polyline_name = .test_analysis_1.test_pdc_01.tts52_2  &
   location = -0.125, 0.5104, -0.349996  &
      , -0.125, 0.5104, -0.16667  &
      , 0.125, 0.5104, -0.16667  &
      , 0.125, 0.5104, -0.349996  &
      , -0.125, 0.5104, -0.349996  &
   close = yes
!
geometry attributes  &
   geometry_name = .test_analysis_1.test_pdc_01.tts52_2  &
   color = SILVER
!
geometry create curve polyline  &
   polyline_name = .test_analysis_1.test_pdc_01.tts53_2  &
   location = 0.125, 0.5104, -0.349996  &
      , 0.125, 0.5104, -0.16667  &
      , 0.125, 0.309375, -0.16667  &
      , 0.125, 0.309375, -0.349996  &
      , 0.125, 0.5104, -0.349996  &
   close = yes
!
geometry attributes  &
   geometry_name = .test_analysis_1.test_pdc_01.tts53_2  &
   color = Coral
!
geometry create curve polyline  &
   polyline_name = .test_analysis_1.test_pdc_01.tts61_2  &
   location = -0.125, 0.1546875, -0.16667  &
      , -0.125, 0.1415961035, -0.1250025  &
      , -0.125, 0.46720421, -0.1250025  &
      , -0.125, 0.5104, -0.16667  &
      , -0.125, 0.1546875, -0.16667  &
   close = yes
!
geometry attributes  &
   geometry_name = .test_analysis_1.test_pdc_01.tts61_2  &
   color = Coral
!
geometry create curve polyline  &
   polyline_name = .test_analysis_1.test_pdc_01.tts62_2  &
   location = -0.125, 0.5104, -0.16667  &
      , -0.125, 0.46720421, -0.1250025  &
      , 0.125, 0.46720421, -0.1250025  &
      , 0.125, 0.5104, -0.16667  &
      , -0.125, 0.5104, -0.16667  &
   close = yes
!
geometry attributes  &
   geometry_name = .test_analysis_1.test_pdc_01.tts62_2  &
   color = SILVER
!
geometry create curve polyline  &
   polyline_name = .test_analysis_1.test_pdc_01.tts63_2  &
   location = 0.125, 0.5104, -0.16667  &
      , 0.125, 0.46720421, -0.1250025  &
      , 0.125, 0.1415961035, -0.1250025  &
      , 0.125, 0.1546875, -0.16667  &
      , 0.125, 0.5104, -0.16667  &
   close = yes
!
geometry attributes  &
   geometry_name = .test_analysis_1.test_pdc_01.tts63_2  &
   color = Coral
!
geometry create curve polyline  &
   polyline_name = .test_analysis_1.test_pdc_01.tts71_2  &
   location = -0.125, 0.1415961035, -0.1250025  &
      , -0.125, 0.128504707, -8.3335E-02  &
      , -0.125, 0.42400842, -8.3335E-02  &
      , -0.125, 0.46720421, -0.1250025  &
      , -0.125, 0.1415961035, -0.1250025  &
   close = yes
!
geometry attributes  &
   geometry_name = .test_analysis_1.test_pdc_01.tts71_2  &
   color = Coral
!
geometry create curve polyline  &
   polyline_name = .test_analysis_1.test_pdc_01.tts72_2  &
   location = -0.125, 0.46720421, -0.1250025  &
      , -0.125, 0.42400842, -8.3335E-02  &
      , 0.125, 0.42400842, -8.3335E-02  &
      , 0.125, 0.46720421, -0.1250025  &
      , -0.125, 0.46720421, -0.1250025  &
   close = yes
!
geometry attributes  &
   geometry_name = .test_analysis_1.test_pdc_01.tts72_2  &
   color = SILVER
!
geometry create curve polyline  &
   polyline_name = .test_analysis_1.test_pdc_01.tts73_2  &
   location = 0.125, 0.46720421, -0.1250025  &
      , 0.125, 0.42400842, -8.3335E-02  &
      , 0.125, 0.128504707, -8.3335E-02  &
      , 0.125, 0.1415961035, -0.1250025  &
      , 0.125, 0.46720421, -0.1250025  &
   close = yes
!
geometry attributes  &
   geometry_name = .test_analysis_1.test_pdc_01.tts73_2  &
   color = Coral
!
geometry create curve polyline  &
   polyline_name = .test_analysis_1.test_pdc_01.tts81_2  &
   location = -0.125, 0.128504707, -8.3335E-02  &
      , -0.125, 0.1154133105, -4.16675E-02  &
      , -0.125, 0.38081263, -4.16675E-02  &
      , -0.125, 0.42400842, -8.3335E-02  &
      , -0.125, 0.128504707, -8.3335E-02  &
   close = yes
!
geometry attributes  &
   geometry_name = .test_analysis_1.test_pdc_01.tts81_2  &
   color = Coral
!
geometry create curve polyline  &
   polyline_name = .test_analysis_1.test_pdc_01.tts82_2  &
   location = -0.125, 0.42400842, -8.3335E-02  &
      , -0.125, 0.38081263, -4.16675E-02  &
      , 0.125, 0.38081263, -4.16675E-02  &
      , 0.125, 0.42400842, -8.3335E-02  &
      , -0.125, 0.42400842, -8.3335E-02  &
   close = yes
!
geometry attributes  &
   geometry_name = .test_analysis_1.test_pdc_01.tts82_2  &
   color = SILVER
!
geometry create curve polyline  &
   polyline_name = .test_analysis_1.test_pdc_01.tts83_2  &
   location = 0.125, 0.42400842, -8.3335E-02  &
      , 0.125, 0.38081263, -4.16675E-02  &
      , 0.125, 0.1154133105, -4.16675E-02  &
      , 0.125, 0.128504707, -8.3335E-02  &
      , 0.125, 0.42400842, -8.3335E-02  &
   close = yes
!
geometry attributes  &
   geometry_name = .test_analysis_1.test_pdc_01.tts83_2  &
   color = Coral
!
geometry create curve polyline  &
   polyline_name = .test_analysis_1.test_pdc_01.tts91_2  &
   location = -0.125, 0.1154133105, -4.16675E-02  &
      , -0.125, 0.1023219141, 0.0  &
      , -0.125, 0.33761684, 0.0  &
      , -0.125, 0.38081263, -4.16675E-02  &
      , -0.125, 0.1154133105, -4.16675E-02  &
   close = yes
!
geometry attributes  &
   geometry_name = .test_analysis_1.test_pdc_01.tts91_2  &
   color = Coral
!
geometry create curve polyline  &
   polyline_name = .test_analysis_1.test_pdc_01.tts92_2  &
   location = -0.125, 0.38081263, -4.16675E-02  &
      , -0.125, 0.33761684, 0.0  &
      , 0.125, 0.33761684, 0.0  &
      , 0.125, 0.38081263, -4.16675E-02  &
      , -0.125, 0.38081263, -4.16675E-02  &
   close = yes
!
geometry attributes  &
   geometry_name = .test_analysis_1.test_pdc_01.tts92_2  &
   color = SILVER
!
geometry create curve polyline  &
   polyline_name = .test_analysis_1.test_pdc_01.tts93_2  &
   location = 0.125, 0.38081263, -4.16675E-02  &
      , 0.125, 0.33761684, 0.0  &
      , 0.125, 0.1023219141, 0.0  &
      , 0.125, 0.1154133105, -4.16675E-02  &
      , 0.125, 0.38081263, -4.16675E-02  &
   close = yes
!
geometry attributes  &
   geometry_name = .test_analysis_1.test_pdc_01.tts93_2  &
   color = Coral
!
geometry create curve polyline  &
   polyline_name = .test_analysis_1.test_pdc_01.tts94_2  &
   location = -0.125, 0.1023219141, 0.0  &
      , -0.125, 0.33761684, 0.0  &
      , 0.125, 0.33761684, 0.0  &
      , 0.125, 0.1023219141, 0.0  &
      , -0.125, 0.1023219141, 0.0  &
   close = yes
!
geometry attributes  &
   geometry_name = .test_analysis_1.test_pdc_01.tts94_2  &
   color = SILVER
!
geometry create curve polyline  &
   polyline_name = .test_analysis_1.test_pdc_01.tts11_3  &
   location = -0.309375, -0.125, -1.0833  &
      , -0.309375, -0.125, -0.899974  &
      , -0.5104, -0.125, -0.899974  &
      , -0.360415, -0.125, -1.0833  &
      , -0.309375, -0.125, -1.0833  &
   close = yes
!
geometry attributes  &
   geometry_name = .test_analysis_1.test_pdc_01.tts11_3  &
   color = Coral
!
geometry create curve polyline  &
   polyline_name = .test_analysis_1.test_pdc_01.tts12_3  &
   location = -0.360415, -0.125, -1.0833  &
      , -0.5104, -0.125, -0.899974  &
      , -0.5104, 0.125, -0.899974  &
      , -0.360415, 0.125, -1.0833  &
      , -0.360415, -0.125, -1.0833  &
   close = yes
!
geometry attributes  &
   geometry_name = .test_analysis_1.test_pdc_01.tts12_3  &
   color = SILVER
!
geometry create curve polyline  &
   polyline_name = .test_analysis_1.test_pdc_01.tts13_3  &
   location = -0.360415, 0.125, -1.0833  &
      , -0.5104, 0.125, -0.899974  &
      , -0.309375, 0.125, -0.899974  &
      , -0.309375, 0.125, -1.0833  &
      , -0.360415, 0.125, -1.0833  &
   close = yes
!
geometry attributes  &
   geometry_name = .test_analysis_1.test_pdc_01.tts13_3  &
   color = Coral
!
geometry create curve polyline  &
   polyline_name = .test_analysis_1.test_pdc_01.tts14_3  &
   location = -0.309375, -0.125, -1.0833  &
      , -0.360415, -0.125, -1.0833  &
      , -0.360415, 0.125, -1.0833  &
      , -0.309375, 0.125, -1.0833  &
      , -0.309375, -0.125, -1.0833  &
   close = yes
!
geometry attributes  &
   geometry_name = .test_analysis_1.test_pdc_01.tts14_3  &
   color = Coral
!
geometry create curve polyline  &
   polyline_name = .test_analysis_1.test_pdc_01.tts21_3  &
   location = -0.309375, -0.125, -0.899974  &
      , -0.309375, -0.125, -0.716648  &
      , -0.5104, -0.125, -0.716648  &
      , -0.5104, -0.125, -0.899974  &
      , -0.309375, -0.125, -0.899974  &
   close = yes
!
geometry attributes  &
   geometry_name = .test_analysis_1.test_pdc_01.tts21_3  &
   color = Coral
!
geometry create curve polyline  &
   polyline_name = .test_analysis_1.test_pdc_01.tts22_3  &
   location = -0.5104, -0.125, -0.899974  &
      , -0.5104, -0.125, -0.716648  &
      , -0.5104, 0.125, -0.716648  &
      , -0.5104, 0.125, -0.899974  &
      , -0.5104, -0.125, -0.899974  &
   close = yes
!
geometry attributes  &
   geometry_name = .test_analysis_1.test_pdc_01.tts22_3  &
   color = SILVER
!
geometry create curve polyline  &
   polyline_name = .test_analysis_1.test_pdc_01.tts23_3  &
   location = -0.5104, 0.125, -0.899974  &
      , -0.5104, 0.125, -0.716648  &
      , -0.309375, 0.125, -0.716648  &
      , -0.309375, 0.125, -0.899974  &
      , -0.5104, 0.125, -0.899974  &
   close = yes
!
geometry attributes  &
   geometry_name = .test_analysis_1.test_pdc_01.tts23_3  &
   color = Coral
!
geometry create curve polyline  &
   polyline_name = .test_analysis_1.test_pdc_01.tts31_3  &
   location = -0.309375, -0.125, -0.716648  &
      , -0.309375, -0.125, -0.533322  &
      , -0.5104, -0.125, -0.533322  &
      , -0.5104, -0.125, -0.716648  &
      , -0.309375, -0.125, -0.716648  &
   close = yes
!
geometry attributes  &
   geometry_name = .test_analysis_1.test_pdc_01.tts31_3  &
   color = Coral
!
geometry create curve polyline  &
   polyline_name = .test_analysis_1.test_pdc_01.tts32_3  &
   location = -0.5104, -0.125, -0.716648  &
      , -0.5104, -0.125, -0.533322  &
      , -0.5104, 0.125, -0.533322  &
      , -0.5104, 0.125, -0.716648  &
      , -0.5104, -0.125, -0.716648  &
   close = yes
!
geometry attributes  &
   geometry_name = .test_analysis_1.test_pdc_01.tts32_3  &
   color = SILVER
!
geometry create curve polyline  &
   polyline_name = .test_analysis_1.test_pdc_01.tts33_3  &
   location = -0.5104, 0.125, -0.716648  &
      , -0.5104, 0.125, -0.533322  &
      , -0.309375, 0.125, -0.533322  &
      , -0.309375, 0.125, -0.716648  &
      , -0.5104, 0.125, -0.716648  &
   close = yes
!
geometry attributes  &
   geometry_name = .test_analysis_1.test_pdc_01.tts33_3  &
   color = Coral
!
geometry create curve polyline  &
   polyline_name = .test_analysis_1.test_pdc_01.tts41_3  &
   location = -0.309375, -0.125, -0.533322  &
      , -0.309375, -0.125, -0.349996  &
      , -0.5104, -0.125, -0.349996  &
      , -0.5104, -0.125, -0.533322  &
      , -0.309375, -0.125, -0.533322  &
   close = yes
!
geometry attributes  &
   geometry_name = .test_analysis_1.test_pdc_01.tts41_3  &
   color = Coral
!
geometry create curve polyline  &
   polyline_name = .test_analysis_1.test_pdc_01.tts42_3  &
   location = -0.5104, -0.125, -0.533322  &
      , -0.5104, -0.125, -0.349996  &
      , -0.5104, 0.125, -0.349996  &
      , -0.5104, 0.125, -0.533322  &
      , -0.5104, -0.125, -0.533322  &
   close = yes
!
geometry attributes  &
   geometry_name = .test_analysis_1.test_pdc_01.tts42_3  &
   color = SILVER
!
geometry create curve polyline  &
   polyline_name = .test_analysis_1.test_pdc_01.tts43_3  &
   location = -0.5104, 0.125, -0.533322  &
      , -0.5104, 0.125, -0.349996  &
      , -0.309375, 0.125, -0.349996  &
      , -0.309375, 0.125, -0.533322  &
      , -0.5104, 0.125, -0.533322  &
   close = yes
!
geometry attributes  &
   geometry_name = .test_analysis_1.test_pdc_01.tts43_3  &
   color = Coral
!
geometry create curve polyline  &
   polyline_name = .test_analysis_1.test_pdc_01.tts51_3  &
   location = -0.309375, -0.125, -0.349996  &
      , -0.309375, -0.125, -0.16667  &
      , -0.5104, -0.125, -0.16667  &
      , -0.5104, -0.125, -0.349996  &
      , -0.309375, -0.125, -0.349996  &
   close = yes
!
geometry attributes  &
   geometry_name = .test_analysis_1.test_pdc_01.tts51_3  &
   color = Coral
!
geometry create curve polyline  &
   polyline_name = .test_analysis_1.test_pdc_01.tts52_3  &
   location = -0.5104, -0.125, -0.349996  &
      , -0.5104, -0.125, -0.16667  &
      , -0.5104, 0.125, -0.16667  &
      , -0.5104, 0.125, -0.349996  &
      , -0.5104, -0.125, -0.349996  &
   close = yes
!
geometry attributes  &
   geometry_name = .test_analysis_1.test_pdc_01.tts52_3  &
   color = SILVER
!
geometry create curve polyline  &
   polyline_name = .test_analysis_1.test_pdc_01.tts53_3  &
   location = -0.5104, 0.125, -0.349996  &
      , -0.5104, 0.125, -0.16667  &
      , -0.309375, 0.125, -0.16667  &
      , -0.309375, 0.125, -0.349996  &
      , -0.5104, 0.125, -0.349996  &
   close = yes
!
geometry attributes  &
   geometry_name = .test_analysis_1.test_pdc_01.tts53_3  &
   color = Coral
!
geometry create curve polyline  &
   polyline_name = .test_analysis_1.test_pdc_01.tts61_3  &
   location = -0.1546875, -0.125, -0.16667  &
      , -0.1415961035, -0.125, -0.1250025  &
      , -0.46720421, -0.125, -0.1250025  &
      , -0.5104, -0.125, -0.16667  &
      , -0.1546875, -0.125, -0.16667  &
   close = yes
!
geometry attributes  &
   geometry_name = .test_analysis_1.test_pdc_01.tts61_3  &
   color = Coral
!
geometry create curve polyline  &
   polyline_name = .test_analysis_1.test_pdc_01.tts62_3  &
   location = -0.5104, -0.125, -0.16667  &
      , -0.46720421, -0.125, -0.1250025  &
      , -0.46720421, 0.125, -0.1250025  &
      , -0.5104, 0.125, -0.16667  &
      , -0.5104, -0.125, -0.16667  &
   close = yes
!
geometry attributes  &
   geometry_name = .test_analysis_1.test_pdc_01.tts62_3  &
   color = SILVER
!
geometry create curve polyline  &
   polyline_name = .test_analysis_1.test_pdc_01.tts63_3  &
   location = -0.5104, 0.125, -0.16667  &
      , -0.46720421, 0.125, -0.1250025  &
      , -0.1415961035, 0.125, -0.1250025  &
      , -0.1546875, 0.125, -0.16667  &
      , -0.5104, 0.125, -0.16667  &
   close = yes
!
geometry attributes  &
   geometry_name = .test_analysis_1.test_pdc_01.tts63_3  &
   color = Coral
!
geometry create curve polyline  &
   polyline_name = .test_analysis_1.test_pdc_01.tts71_3  &
   location = -0.1415961035, -0.125, -0.1250025  &
      , -0.128504707, -0.125, -8.3335E-02  &
      , -0.42400842, -0.125, -8.3335E-02  &
      , -0.46720421, -0.125, -0.1250025  &
      , -0.1415961035, -0.125, -0.1250025  &
   close = yes
!
geometry attributes  &
   geometry_name = .test_analysis_1.test_pdc_01.tts71_3  &
   color = Coral
!
geometry create curve polyline  &
   polyline_name = .test_analysis_1.test_pdc_01.tts72_3  &
   location = -0.46720421, -0.125, -0.1250025  &
      , -0.42400842, -0.125, -8.3335E-02  &
      , -0.42400842, 0.125, -8.3335E-02  &
      , -0.46720421, 0.125, -0.1250025  &
      , -0.46720421, -0.125, -0.1250025  &
   close = yes
!
geometry attributes  &
   geometry_name = .test_analysis_1.test_pdc_01.tts72_3  &
   color = SILVER
!
geometry create curve polyline  &
   polyline_name = .test_analysis_1.test_pdc_01.tts73_3  &
   location = -0.46720421, 0.125, -0.1250025  &
      , -0.42400842, 0.125, -8.3335E-02  &
      , -0.128504707, 0.125, -8.3335E-02  &
      , -0.1415961035, 0.125, -0.1250025  &
      , -0.46720421, 0.125, -0.1250025  &
   close = yes
!
geometry attributes  &
   geometry_name = .test_analysis_1.test_pdc_01.tts73_3  &
   color = Coral
!
geometry create curve polyline  &
   polyline_name = .test_analysis_1.test_pdc_01.tts81_3  &
   location = -0.128504707, -0.125, -8.3335E-02  &
      , -0.1154133105, -0.125, -4.16675E-02  &
      , -0.38081263, -0.125, -4.16675E-02  &
      , -0.42400842, -0.125, -8.3335E-02  &
      , -0.128504707, -0.125, -8.3335E-02  &
   close = yes
!
geometry attributes  &
   geometry_name = .test_analysis_1.test_pdc_01.tts81_3  &
   color = Coral
!
geometry create curve polyline  &
   polyline_name = .test_analysis_1.test_pdc_01.tts82_3  &
   location = -0.42400842, -0.125, -8.3335E-02  &
      , -0.38081263, -0.125, -4.16675E-02  &
      , -0.38081263, 0.125, -4.16675E-02  &
      , -0.42400842, 0.125, -8.3335E-02  &
      , -0.42400842, -0.125, -8.3335E-02  &
   close = yes
!
geometry attributes  &
   geometry_name = .test_analysis_1.test_pdc_01.tts82_3  &
   color = SILVER
!
geometry create curve polyline  &
   polyline_name = .test_analysis_1.test_pdc_01.tts83_3  &
   location = -0.42400842, 0.125, -8.3335E-02  &
      , -0.38081263, 0.125, -4.16675E-02  &
      , -0.1154133105, 0.125, -4.16675E-02  &
      , -0.128504707, 0.125, -8.3335E-02  &
      , -0.42400842, 0.125, -8.3335E-02  &
   close = yes
!
geometry attributes  &
   geometry_name = .test_analysis_1.test_pdc_01.tts83_3  &
   color = Coral
!
geometry create curve polyline  &
   polyline_name = .test_analysis_1.test_pdc_01.tts91_3  &
   location = -0.1154133105, -0.125, -4.16675E-02  &
      , -0.1023219141, -0.125, 0.0  &
      , -0.33761684, -0.125, 0.0  &
      , -0.38081263, -0.125, -4.16675E-02  &
      , -0.1154133105, -0.125, -4.16675E-02  &
   close = yes
!
geometry attributes  &
   geometry_name = .test_analysis_1.test_pdc_01.tts91_3  &
   color = Coral
!
geometry create curve polyline  &
   polyline_name = .test_analysis_1.test_pdc_01.tts92_3  &
   location = -0.38081263, -0.125, -4.16675E-02  &
      , -0.33761684, -0.125, 0.0  &
      , -0.33761684, 0.125, 0.0  &
      , -0.38081263, 0.125, -4.16675E-02  &
      , -0.38081263, -0.125, -4.16675E-02  &
   close = yes
!
geometry attributes  &
   geometry_name = .test_analysis_1.test_pdc_01.tts92_3  &
   color = SILVER
!
geometry create curve polyline  &
   polyline_name = .test_analysis_1.test_pdc_01.tts93_3  &
   location = -0.38081263, 0.125, -4.16675E-02  &
      , -0.33761684, 0.125, 0.0  &
      , -0.1023219141, 0.125, 0.0  &
      , -0.1154133105, 0.125, -4.16675E-02  &
      , -0.38081263, 0.125, -4.16675E-02  &
   close = yes
!
geometry attributes  &
   geometry_name = .test_analysis_1.test_pdc_01.tts93_3  &
   color = Coral
!
geometry create curve polyline  &
   polyline_name = .test_analysis_1.test_pdc_01.tts94_3  &
   location = -0.1023219141, -0.125, 0.0  &
      , -0.33761684, -0.125, 0.0  &
      , -0.33761684, 0.125, 0.0  &
      , -0.1023219141, 0.125, 0.0  &
      , -0.1023219141, -0.125, 0.0  &
   close = yes
!
geometry attributes  &
   geometry_name = .test_analysis_1.test_pdc_01.tts94_3  &
   color = SILVER
!
geometry create curve polyline  &
   polyline_name = .test_analysis_1.test_pdc_01.tts11_4  &
   location = 0.125, -0.309375, -1.0833  &
      , 0.125, -0.309375, -0.899974  &
      , 0.125, -0.5104, -0.899974  &
      , 0.125, -0.360415, -1.0833  &
      , 0.125, -0.309375, -1.0833  &
   close = yes
!
geometry attributes  &
   geometry_name = .test_analysis_1.test_pdc_01.tts11_4  &
   color = Coral
!
geometry create curve polyline  &
   polyline_name = .test_analysis_1.test_pdc_01.tts12_4  &
   location = 0.125, -0.360415, -1.0833  &
      , 0.125, -0.5104, -0.899974  &
      , -0.125, -0.5104, -0.899974  &
      , -0.125, -0.360415, -1.0833  &
      , 0.125, -0.360415, -1.0833  &
   close = yes
!
geometry attributes  &
   geometry_name = .test_analysis_1.test_pdc_01.tts12_4  &
   color = SILVER
!
geometry create curve polyline  &
   polyline_name = .test_analysis_1.test_pdc_01.tts13_4  &
   location = -0.125, -0.360415, -1.0833  &
      , -0.125, -0.5104, -0.899974  &
      , -0.125, -0.309375, -0.899974  &
      , -0.125, -0.309375, -1.0833  &
      , -0.125, -0.360415, -1.0833  &
   close = yes
!
geometry attributes  &
   geometry_name = .test_analysis_1.test_pdc_01.tts13_4  &
   color = Coral
!
geometry create curve polyline  &
   polyline_name = .test_analysis_1.test_pdc_01.tts14_4  &
   location = 0.125, -0.309375, -1.0833  &
      , 0.125, -0.360415, -1.0833  &
      , -0.125, -0.360415, -1.0833  &
      , -0.125, -0.309375, -1.0833  &
      , 0.125, -0.309375, -1.0833  &
   close = yes
!
geometry attributes  &
   geometry_name = .test_analysis_1.test_pdc_01.tts14_4  &
   color = Coral
!
geometry create curve polyline  &
   polyline_name = .test_analysis_1.test_pdc_01.tts21_4  &
   location = 0.125, -0.309375, -0.899974  &
      , 0.125, -0.309375, -0.716648  &
      , 0.125, -0.5104, -0.716648  &
      , 0.125, -0.5104, -0.899974  &
      , 0.125, -0.309375, -0.899974  &
   close = yes
!
geometry attributes  &
   geometry_name = .test_analysis_1.test_pdc_01.tts21_4  &
   color = Coral
!
geometry create curve polyline  &
   polyline_name = .test_analysis_1.test_pdc_01.tts22_4  &
   location = 0.125, -0.5104, -0.899974  &
      , 0.125, -0.5104, -0.716648  &
      , -0.125, -0.5104, -0.716648  &
      , -0.125, -0.5104, -0.899974  &
      , 0.125, -0.5104, -0.899974  &
   close = yes
!
geometry attributes  &
   geometry_name = .test_analysis_1.test_pdc_01.tts22_4  &
   color = SILVER
!
geometry create curve polyline  &
   polyline_name = .test_analysis_1.test_pdc_01.tts23_4  &
   location = -0.125, -0.5104, -0.899974  &
      , -0.125, -0.5104, -0.716648  &
      , -0.125, -0.309375, -0.716648  &
      , -0.125, -0.309375, -0.899974  &
      , -0.125, -0.5104, -0.899974  &
   close = yes
!
geometry attributes  &
   geometry_name = .test_analysis_1.test_pdc_01.tts23_4  &
   color = Coral
!
geometry create curve polyline  &
   polyline_name = .test_analysis_1.test_pdc_01.tts31_4  &
   location = 0.125, -0.309375, -0.716648  &
      , 0.125, -0.309375, -0.533322  &
      , 0.125, -0.5104, -0.533322  &
      , 0.125, -0.5104, -0.716648  &
      , 0.125, -0.309375, -0.716648  &
   close = yes
!
geometry attributes  &
   geometry_name = .test_analysis_1.test_pdc_01.tts31_4  &
   color = Coral
!
geometry create curve polyline  &
   polyline_name = .test_analysis_1.test_pdc_01.tts32_4  &
   location = 0.125, -0.5104, -0.716648  &
      , 0.125, -0.5104, -0.533322  &
      , -0.125, -0.5104, -0.533322  &
      , -0.125, -0.5104, -0.716648  &
      , 0.125, -0.5104, -0.716648  &
   close = yes
!
geometry attributes  &
   geometry_name = .test_analysis_1.test_pdc_01.tts32_4  &
   color = SILVER
!
geometry create curve polyline  &
   polyline_name = .test_analysis_1.test_pdc_01.tts33_4  &
   location = -0.125, -0.5104, -0.716648  &
      , -0.125, -0.5104, -0.533322  &
      , -0.125, -0.309375, -0.533322  &
      , -0.125, -0.309375, -0.716648  &
      , -0.125, -0.5104, -0.716648  &
   close = yes
!
geometry attributes  &
   geometry_name = .test_analysis_1.test_pdc_01.tts33_4  &
   color = Coral
!
geometry create curve polyline  &
   polyline_name = .test_analysis_1.test_pdc_01.tts41_4  &
   location = 0.125, -0.309375, -0.533322  &
      , 0.125, -0.309375, -0.349996  &
      , 0.125, -0.5104, -0.349996  &
      , 0.125, -0.5104, -0.533322  &
      , 0.125, -0.309375, -0.533322  &
   close = yes
!
geometry attributes  &
   geometry_name = .test_analysis_1.test_pdc_01.tts41_4  &
   color = Coral
!
geometry create curve polyline  &
   polyline_name = .test_analysis_1.test_pdc_01.tts42_4  &
   location = 0.125, -0.5104, -0.533322  &
      , 0.125, -0.5104, -0.349996  &
      , -0.125, -0.5104, -0.349996  &
      , -0.125, -0.5104, -0.533322  &
      , 0.125, -0.5104, -0.533322  &
   close = yes
!
geometry attributes  &
   geometry_name = .test_analysis_1.test_pdc_01.tts42_4  &
   color = SILVER
!
geometry create curve polyline  &
   polyline_name = .test_analysis_1.test_pdc_01.tts43_4  &
   location = -0.125, -0.5104, -0.533322  &
      , -0.125, -0.5104, -0.349996  &
      , -0.125, -0.309375, -0.349996  &
      , -0.125, -0.309375, -0.533322  &
      , -0.125, -0.5104, -0.533322  &
   close = yes
!
geometry attributes  &
   geometry_name = .test_analysis_1.test_pdc_01.tts43_4  &
   color = Coral
!
geometry create curve polyline  &
   polyline_name = .test_analysis_1.test_pdc_01.tts51_4  &
   location = 0.125, -0.309375, -0.349996  &
      , 0.125, -0.309375, -0.16667  &
      , 0.125, -0.5104, -0.16667  &
      , 0.125, -0.5104, -0.349996  &
      , 0.125, -0.309375, -0.349996  &
   close = yes
!
geometry attributes  &
   geometry_name = .test_analysis_1.test_pdc_01.tts51_4  &
   color = Coral
!
geometry create curve polyline  &
   polyline_name = .test_analysis_1.test_pdc_01.tts52_4  &
   location = 0.125, -0.5104, -0.349996  &
      , 0.125, -0.5104, -0.16667  &
      , -0.125, -0.5104, -0.16667  &
      , -0.125, -0.5104, -0.349996  &
      , 0.125, -0.5104, -0.349996  &
   close = yes
!
geometry attributes  &
   geometry_name = .test_analysis_1.test_pdc_01.tts52_4  &
   color = SILVER
!
geometry create curve polyline  &
   polyline_name = .test_analysis_1.test_pdc_01.tts53_4  &
   location = -0.125, -0.5104, -0.349996  &
      , -0.125, -0.5104, -0.16667  &
      , -0.125, -0.309375, -0.16667  &
      , -0.125, -0.309375, -0.349996  &
      , -0.125, -0.5104, -0.349996  &
   close = yes
!
geometry attributes  &
   geometry_name = .test_analysis_1.test_pdc_01.tts53_4  &
   color = Coral
!
geometry create curve polyline  &
   polyline_name = .test_analysis_1.test_pdc_01.tts61_4  &
   location = 0.125, -0.1546875, -0.16667  &
      , 0.125, -0.1415961035, -0.1250025  &
      , 0.125, -0.46720421, -0.1250025  &
      , 0.125, -0.5104, -0.16667  &
      , 0.125, -0.1546875, -0.16667  &
   close = yes
!
geometry attributes  &
   geometry_name = .test_analysis_1.test_pdc_01.tts61_4  &
   color = Coral
!
geometry create curve polyline  &
   polyline_name = .test_analysis_1.test_pdc_01.tts62_4  &
   location = 0.125, -0.5104, -0.16667  &
      , 0.125, -0.46720421, -0.1250025  &
      , -0.125, -0.46720421, -0.1250025  &
      , -0.125, -0.5104, -0.16667  &
      , 0.125, -0.5104, -0.16667  &
   close = yes
!
geometry attributes  &
   geometry_name = .test_analysis_1.test_pdc_01.tts62_4  &
   color = SILVER
!
geometry create curve polyline  &
   polyline_name = .test_analysis_1.test_pdc_01.tts63_4  &
   location = -0.125, -0.5104, -0.16667  &
      , -0.125, -0.46720421, -0.1250025  &
      , -0.125, -0.1415961035, -0.1250025  &
      , -0.125, -0.1546875, -0.16667  &
      , -0.125, -0.5104, -0.16667  &
   close = yes
!
geometry attributes  &
   geometry_name = .test_analysis_1.test_pdc_01.tts63_4  &
   color = Coral
!
geometry create curve polyline  &
   polyline_name = .test_analysis_1.test_pdc_01.tts71_4  &
   location = 0.125, -0.1415961035, -0.1250025  &
      , 0.125, -0.128504707, -8.3335E-02  &
      , 0.125, -0.42400842, -8.3335E-02  &
      , 0.125, -0.46720421, -0.1250025  &
      , 0.125, -0.1415961035, -0.1250025  &
   close = yes
!
geometry attributes  &
   geometry_name = .test_analysis_1.test_pdc_01.tts71_4  &
   color = Coral
!
geometry create curve polyline  &
   polyline_name = .test_analysis_1.test_pdc_01.tts72_4  &
   location = 0.125, -0.46720421, -0.1250025  &
      , 0.125, -0.42400842, -8.3335E-02  &
      , -0.125, -0.42400842, -8.3335E-02  &
      , -0.125, -0.46720421, -0.1250025  &
      , 0.125, -0.46720421, -0.1250025  &
   close = yes
!
geometry attributes  &
   geometry_name = .test_analysis_1.test_pdc_01.tts72_4  &
   color = SILVER
!
geometry create curve polyline  &
   polyline_name = .test_analysis_1.test_pdc_01.tts73_4  &
   location = -0.125, -0.46720421, -0.1250025  &
      , -0.125, -0.42400842, -8.3335E-02  &
      , -0.125, -0.128504707, -8.3335E-02  &
      , -0.125, -0.1415961035, -0.1250025  &
      , -0.125, -0.46720421, -0.1250025  &
   close = yes
!
geometry attributes  &
   geometry_name = .test_analysis_1.test_pdc_01.tts73_4  &
   color = Coral
!
geometry create curve polyline  &
   polyline_name = .test_analysis_1.test_pdc_01.tts81_4  &
   location = 0.125, -0.128504707, -8.3335E-02  &
      , 0.125, -0.1154133105, -4.16675E-02  &
      , 0.125, -0.38081263, -4.16675E-02  &
      , 0.125, -0.42400842, -8.3335E-02  &
      , 0.125, -0.128504707, -8.3335E-02  &
   close = yes
!
geometry attributes  &
   geometry_name = .test_analysis_1.test_pdc_01.tts81_4  &
   color = Coral
!
geometry create curve polyline  &
   polyline_name = .test_analysis_1.test_pdc_01.tts82_4  &
   location = 0.125, -0.42400842, -8.3335E-02  &
      , 0.125, -0.38081263, -4.16675E-02  &
      , -0.125, -0.38081263, -4.16675E-02  &
      , -0.125, -0.42400842, -8.3335E-02  &
      , 0.125, -0.42400842, -8.3335E-02  &
   close = yes
!
geometry attributes  &
   geometry_name = .test_analysis_1.test_pdc_01.tts82_4  &
   color = SILVER
!
geometry create curve polyline  &
   polyline_name = .test_analysis_1.test_pdc_01.tts83_4  &
   location = -0.125, -0.42400842, -8.3335E-02  &
      , -0.125, -0.38081263, -4.16675E-02  &
      , -0.125, -0.1154133105, -4.16675E-02  &
      , -0.125, -0.128504707, -8.3335E-02  &
      , -0.125, -0.42400842, -8.3335E-02  &
   close = yes
!
geometry attributes  &
   geometry_name = .test_analysis_1.test_pdc_01.tts83_4  &
   color = Coral
!
geometry create curve polyline  &
   polyline_name = .test_analysis_1.test_pdc_01.tts91_4  &
   location = 0.125, -0.1154133105, -4.16675E-02  &
      , 0.125, -0.1023219141, 0.0  &
      , 0.125, -0.33761684, 0.0  &
      , 0.125, -0.38081263, -4.16675E-02  &
      , 0.125, -0.1154133105, -4.16675E-02  &
   close = yes
!
geometry attributes  &
   geometry_name = .test_analysis_1.test_pdc_01.tts91_4  &
   color = Coral
!
geometry create curve polyline  &
   polyline_name = .test_analysis_1.test_pdc_01.tts92_4  &
   location = 0.125, -0.38081263, -4.16675E-02  &
      , 0.125, -0.33761684, 0.0  &
      , -0.125, -0.33761684, 0.0  &
      , -0.125, -0.38081263, -4.16675E-02  &
      , 0.125, -0.38081263, -4.16675E-02  &
   close = yes
!
geometry attributes  &
   geometry_name = .test_analysis_1.test_pdc_01.tts92_4  &
   color = SILVER
!
geometry create curve polyline  &
   polyline_name = .test_analysis_1.test_pdc_01.tts93_4  &
   location = -0.125, -0.38081263, -4.16675E-02  &
      , -0.125, -0.33761684, 0.0  &
      , -0.125, -0.1023219141, 0.0  &
      , -0.125, -0.1154133105, -4.16675E-02  &
      , -0.125, -0.38081263, -4.16675E-02  &
   close = yes
!
geometry attributes  &
   geometry_name = .test_analysis_1.test_pdc_01.tts93_4  &
   color = Coral
!
geometry create curve polyline  &
   polyline_name = .test_analysis_1.test_pdc_01.tts94_4  &
   location = 0.125, -0.1023219141, 0.0  &
      , 0.125, -0.33761684, 0.0  &
      , -0.125, -0.33761684, 0.0  &
      , -0.125, -0.1023219141, 0.0  &
      , 0.125, -0.1023219141, 0.0  &
   close = yes
!
geometry attributes  &
   geometry_name = .test_analysis_1.test_pdc_01.tts94_4  &
   color = SILVER
!
!---------------------------- test_pdc_01_sliderA -----------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .test_analysis_1.ground
!
part create rigid_body name_and_position  &
   part_name = .test_analysis_1.test_pdc_01_sliderA  &
   adams_id = 9000001  &
   location = 712.4372318476, 0.0, 1502.0006915217  &
   orientation = 90.0d, 89.9979428749d, 270.0d
!
defaults coordinate_system  &
   default_coordinate_system = .test_analysis_1.test_pdc_01_sliderA
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .test_analysis_1.test_pdc_01_sliderA.cm  &
   adams_id = 9000001  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .test_analysis_1.test_pdc_01_sliderA.A1  &
   adams_id = 9006329  &
   location = 0.0, 0.0, 0.3  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .test_analysis_1.test_pdc_01_sliderA.A2  &
   adams_id = 9006330  &
   location = 0.0, 0.0, -0.3  &
   orientation = 0.0d, 0.0d, 0.0d
!
! ****** Floating Markers for current part ******
!
floating_marker create  &
   floating_marker_name = .test_analysis_1.test_pdc_01_sliderA.FMARKER_9000104  &
   adams_id = 9000104
!
part create rigid_body mass_properties  &
   part_name = .test_analysis_1.test_pdc_01_sliderA  &
   density = 0.1
!
! ****** Graphics for current part ******
!
geometry create shape cylinder  &
   cylinder_name = .test_analysis_1.test_pdc_01_sliderA.test_pdc_01_sliderAgraphic  &
   adams_id = 3214  &
   center_marker = .test_analysis_1.test_pdc_01_sliderA.A2  &
   angle_extent = 360.0  &
   length = 0.6  &
   radius = 7.0E-02  &
   side_count_for_body = 4  &
   segment_count_for_ends = 4
!
geometry attributes  &
   geometry_name = .test_analysis_1.test_pdc_01_sliderA.test_pdc_01_sliderAgraphic  &
   color = MidnightBlue2  &
   render = wireframe
!
geometry create curve circle  &
   circle_name = .test_analysis_1.test_pdc_01_sliderA.ghole  &
   adams_id = 3146  &
   center_marker = .test_analysis_1.test_pdc_01_sliderA.cm  &
   radius = 0.54175  &
   segment_count = 24
!
geometry attributes  &
   geometry_name = .test_analysis_1.test_pdc_01_sliderA.ghole  &
   color = BLUE  &
   render = wireframe
!
!----------------------- example_stabilizer_02_sliderA ------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .test_analysis_1.ground
!
part create rigid_body name_and_position  &
   part_name = .test_analysis_1.example_stabilizer_02_sliderA  &
   adams_id = 9000201  &
   location = 708.5909084524, 0.0, 1502.0005209362  &
   orientation = 90.0d, 89.9972021726d, 270.0d
!
defaults coordinate_system  &
   default_coordinate_system = .test_analysis_1.example_stabilizer_02_sliderA
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .test_analysis_1.example_stabilizer_02_sliderA.cm  &
   adams_id = 9000201  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .test_analysis_1.example_stabilizer_02_sliderA.A1  &
   adams_id = 9006335  &
   location = 0.0, 0.0, 0.3  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .test_analysis_1.example_stabilizer_02_sliderA.A2  &
   adams_id = 9006336  &
   location = 0.0, 0.0, -0.3  &
   orientation = 0.0d, 0.0d, 0.0d
!
! ****** Floating Markers for current part ******
!
floating_marker create  &
   floating_marker_name = .test_analysis_1.example_stabilizer_02_sliderA.FMARKER_9000308  &
   adams_id = 9000308
!
part create rigid_body mass_properties  &
   part_name = .test_analysis_1.example_stabilizer_02_sliderA  &
   density = 0.1
!
! ****** Graphics for current part ******
!
geometry create shape cylinder  &
   cylinder_name = .test_analysis_1.example_stabilizer_02_sliderA.example_stabilizer_02_sliderAgraphic  &
   adams_id = 3218  &
   center_marker = .test_analysis_1.example_stabilizer_02_sliderA.A2  &
   angle_extent = 360.0  &
   length = 0.6  &
   radius = 7.0E-02  &
   side_count_for_body = 4  &
   segment_count_for_ends = 4
!
geometry attributes  &
   geometry_name = .test_analysis_1.example_stabilizer_02_sliderA.example_stabilizer_02_sliderAgraphic  &
   color = MidnightBlue2  &
   render = wireframe
!
geometry create curve circle  &
   circle_name = .test_analysis_1.example_stabilizer_02_sliderA.ghole  &
   adams_id = 3148  &
   center_marker = .test_analysis_1.example_stabilizer_02_sliderA.cm  &
   radius = 0.54175  &
   segment_count = 24
!
geometry attributes  &
   geometry_name = .test_analysis_1.example_stabilizer_02_sliderA.ghole  &
   color = BLUE  &
   render = wireframe
!
!-------------------------- example_stabilizer_02_B ---------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .test_analysis_1.ground
!
part create rigid_body name_and_position  &
   part_name = .test_analysis_1.example_stabilizer_02_B  &
   adams_id = 9000200  &
   location = 708.7739084522, 0.0, 1502.0005298723  &
   orientation = 90.0d, 89.9972021726d, 270.0d
!
defaults coordinate_system  &
   default_coordinate_system = .test_analysis_1.example_stabilizer_02_B
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .test_analysis_1.example_stabilizer_02_B.end_B1  &
   adams_id = 9000202  &
   location = 0.0, 0.0, 2.33  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .test_analysis_1.example_stabilizer_02_B.barrelA  &
   adams_id = 9006331  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .test_analysis_1.example_stabilizer_02_B.barrelA1  &
   adams_id = 9000200  &
   location = 0.0, 0.0, -0.183  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .test_analysis_1.example_stabilizer_02_B.barrelB1  &
   adams_id = 9000300  &
   location = 0.0, 0.0, -1.647  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .test_analysis_1.example_stabilizer_02_B.barrelB  &
   adams_id = 9006332  &
   location = 0.0, 0.0, -1.83  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .test_analysis_1.example_stabilizer_02_B.cm  &
   adams_id = 9006333  &
   location = 0.0, 0.0, -0.915  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .test_analysis_1.example_stabilizer_02_B.end_B2  &
   adams_id = 9006334  &
   location = 0.0, 0.0, -4.16  &
   orientation = 0.0d, 0.0d, 0.0d
!
part create rigid_body mass_properties  &
   part_name = .test_analysis_1.example_stabilizer_02_B  &
   mass = 22.4508185341  &
   center_of_mass_marker = .test_analysis_1.example_stabilizer_02_B.cm  &
   ixx = 65.5345280843  &
   iyy = 65.5345280843  &
   izz = 1.1981914445  &
   ixy = 0.0  &
   izx = 0.0  &
   iyz = 0.0
!
! ****** Graphics for current part ******
!
geometry create shape cylinder  &
   cylinder_name = .test_analysis_1.example_stabilizer_02_B.cyl2  &
   adams_id = 3216  &
   center_marker = .test_analysis_1.example_stabilizer_02_B.barrelA  &
   angle_extent = 360.0  &
   length = -1.83  &
   radius = 0.2691666666  &
   side_count_for_body = 16  &
   segment_count_for_ends = 16
!
geometry attributes  &
   geometry_name = .test_analysis_1.example_stabilizer_02_B.cyl2  &
   color = MedOrchid
!
geometry create shape cylinder  &
   cylinder_name = .test_analysis_1.example_stabilizer_02_B.cyl1  &
   adams_id = 3215  &
   center_marker = .test_analysis_1.example_stabilizer_02_B.end_B1  &
   angle_extent = 360.0  &
   length = -2.33  &
   radius = 0.2691666666  &
   side_count_for_body = 16  &
   segment_count_for_ends = 16
!
geometry attributes  &
   geometry_name = .test_analysis_1.example_stabilizer_02_B.cyl1  &
   color = MedOrchid
!
geometry create shape cylinder  &
   cylinder_name = .test_analysis_1.example_stabilizer_02_B.cyl11  &
   adams_id = 3217  &
   center_marker = .test_analysis_1.example_stabilizer_02_B.end_B2  &
   angle_extent = 360.0  &
   length = 2.33  &
   radius = 0.2691666666  &
   side_count_for_body = 16  &
   segment_count_for_ends = 16
!
geometry attributes  &
   geometry_name = .test_analysis_1.example_stabilizer_02_B.cyl11  &
   color = MedOrchid
!
geometry create curve polyline  &
   polyline_name = .test_analysis_1.example_stabilizer_02_B.tth14  &
   location = 0.24225, 0.1041666667, -1.83  &
      , 0.2771458333, 0.1041666667, -1.83  &
      , 0.2771458333, -0.1041666667, -1.83  &
      , 0.24225, -0.1041666667, -1.83  &
      , 0.24225, 0.1041666667, -1.83  &
   close = yes
!
geometry attributes  &
   geometry_name = .test_analysis_1.example_stabilizer_02_B.tth14  &
   color = MedOrchid
!
geometry create curve polyline  &
   polyline_name = .test_analysis_1.example_stabilizer_02_B.tth11  &
   location = 0.24225, 0.1041666667, -1.83  &
      , 0.24225, 0.1041666667, -1.647  &
      , 0.3489583334, 0.1041666667, -1.647  &
      , 0.2771458333, 0.1041666667, -1.83  &
      , 0.24225, 0.1041666667, -1.83  &
   close = yes
!
geometry attributes  &
   geometry_name = .test_analysis_1.example_stabilizer_02_B.tth11  &
   color = MedOrchid
!
geometry create curve polyline  &
   polyline_name = .test_analysis_1.example_stabilizer_02_B.tth12  &
   location = 0.2771458333, 0.1041666667, -1.83  &
      , 0.3489583334, 0.1041666667, -1.647  &
      , 0.3489583334, -0.1041666667, -1.647  &
      , 0.2771458333, -0.1041666667, -1.83  &
      , 0.2771458333, 0.1041666667, -1.83  &
   close = yes
!
geometry attributes  &
   geometry_name = .test_analysis_1.example_stabilizer_02_B.tth12  &
   color = SILVER
!
geometry create curve polyline  &
   polyline_name = .test_analysis_1.example_stabilizer_02_B.tth13  &
   location = 0.2771458333, -0.1041666667, -1.83  &
      , 0.3489583334, -0.1041666667, -1.647  &
      , 0.24225, -0.1041666667, -1.647  &
      , 0.24225, -0.1041666667, -1.83  &
      , 0.2771458333, -0.1041666667, -1.83  &
   close = yes
!
geometry attributes  &
   geometry_name = .test_analysis_1.example_stabilizer_02_B.tth13  &
   color = MedOrchid
!
geometry create curve polyline  &
   polyline_name = .test_analysis_1.example_stabilizer_02_B.tth104  &
   location = 0.24225, 0.1041666667, 0.0  &
      , 0.2771458333, 0.1041666667, 0.0  &
      , 0.2771458333, -0.1041666667, 0.0  &
      , 0.24225, -0.1041666667, 0.0  &
      , 0.24225, 0.1041666667, 0.0  &
   close = yes
!
geometry attributes  &
   geometry_name = .test_analysis_1.example_stabilizer_02_B.tth104  &
   color = MedOrchid
!
geometry create curve polyline  &
   polyline_name = .test_analysis_1.example_stabilizer_02_B.tth101  &
   location = 0.24225, 0.1041666667, -0.183  &
      , 0.24225, 0.1041666667, 0.0  &
      , 0.2771458333, 0.1041666667, 0.0  &
      , 0.3489583333, 0.1041666667, -0.183  &
      , 0.24225, 0.1041666667, -0.183  &
   close = yes
!
geometry attributes  &
   geometry_name = .test_analysis_1.example_stabilizer_02_B.tth101  &
   color = MedOrchid
!
geometry create curve polyline  &
   polyline_name = .test_analysis_1.example_stabilizer_02_B.tth102  &
   location = 0.3489583333, 0.1041666667, -0.183  &
      , 0.2771458333, 0.1041666667, 0.0  &
      , 0.2771458333, -0.1041666667, 0.0  &
      , 0.3489583333, -0.1041666667, -0.183  &
      , 0.3489583333, 0.1041666667, -0.183  &
   close = yes
!
geometry attributes  &
   geometry_name = .test_analysis_1.example_stabilizer_02_B.tth102  &
   color = SILVER
!
geometry create curve polyline  &
   polyline_name = .test_analysis_1.example_stabilizer_02_B.tth103  &
   location = 0.3489583333, -0.1041666667, -0.183  &
      , 0.2771458333, -0.1041666667, 0.0  &
      , 0.24225, -0.1041666667, 0.0  &
      , 0.24225, -0.1041666667, -0.183  &
      , 0.3489583333, -0.1041666667, -0.183  &
   close = yes
!
geometry attributes  &
   geometry_name = .test_analysis_1.example_stabilizer_02_B.tth103  &
   color = MedOrchid
!
geometry create curve polyline  &
   polyline_name = .test_analysis_1.example_stabilizer_02_B.tth21  &
   location = 0.24225, 0.1041666667, -1.647  &
      , 0.24225, 0.1041666667, -1.464  &
      , 0.3489583334, 0.1041666667, -1.464  &
      , 0.3489583334, 0.1041666667, -1.647  &
      , 0.24225, 0.1041666667, -1.647  &
   close = yes
!
geometry attributes  &
   geometry_name = .test_analysis_1.example_stabilizer_02_B.tth21  &
   color = MedOrchid
!
geometry create curve polyline  &
   polyline_name = .test_analysis_1.example_stabilizer_02_B.tth22  &
   location = 0.3489583334, 0.1041666667, -1.647  &
      , 0.3489583334, 0.1041666667, -1.464  &
      , 0.3489583334, -0.1041666667, -1.464  &
      , 0.3489583334, -0.1041666667, -1.647  &
      , 0.3489583334, 0.1041666667, -1.647  &
   close = yes
!
geometry attributes  &
   geometry_name = .test_analysis_1.example_stabilizer_02_B.tth22  &
   color = SILVER
!
geometry create curve polyline  &
   polyline_name = .test_analysis_1.example_stabilizer_02_B.tth23  &
   location = 0.3489583334, -0.1041666667, -1.647  &
      , 0.3489583334, -0.1041666667, -1.464  &
      , 0.24225, -0.1041666667, -1.464  &
      , 0.24225, -0.1041666667, -1.647  &
      , 0.3489583334, -0.1041666667, -1.647  &
   close = yes
!
geometry attributes  &
   geometry_name = .test_analysis_1.example_stabilizer_02_B.tth23  &
   color = MedOrchid
!
geometry create curve polyline  &
   polyline_name = .test_analysis_1.example_stabilizer_02_B.tth31  &
   location = 0.24225, 0.1041666667, -1.464  &
      , 0.24225, 0.1041666667, -1.281  &
      , 0.3489583334, 0.1041666667, -1.281  &
      , 0.3489583334, 0.1041666667, -1.464  &
      , 0.24225, 0.1041666667, -1.464  &
   close = yes
!
geometry attributes  &
   geometry_name = .test_analysis_1.example_stabilizer_02_B.tth31  &
   color = MedOrchid
!
geometry create curve polyline  &
   polyline_name = .test_analysis_1.example_stabilizer_02_B.tth32  &
   location = 0.3489583334, 0.1041666667, -1.464  &
      , 0.3489583334, 0.1041666667, -1.281  &
      , 0.3489583334, -0.1041666667, -1.281  &
      , 0.3489583334, -0.1041666667, -1.464  &
      , 0.3489583334, 0.1041666667, -1.464  &
   close = yes
!
geometry attributes  &
   geometry_name = .test_analysis_1.example_stabilizer_02_B.tth32  &
   color = SILVER
!
geometry create curve polyline  &
   polyline_name = .test_analysis_1.example_stabilizer_02_B.tth33  &
   location = 0.3489583334, -0.1041666667, -1.464  &
      , 0.3489583334, -0.1041666667, -1.281  &
      , 0.24225, -0.1041666667, -1.281  &
      , 0.24225, -0.1041666667, -1.464  &
      , 0.3489583334, -0.1041666667, -1.464  &
   close = yes
!
geometry attributes  &
   geometry_name = .test_analysis_1.example_stabilizer_02_B.tth33  &
   color = MedOrchid
!
geometry create curve polyline  &
   polyline_name = .test_analysis_1.example_stabilizer_02_B.tth41  &
   location = 0.24225, 0.1041666667, -1.281  &
      , 0.24225, 0.1041666667, -1.098  &
      , 0.3489583333, 0.1041666667, -1.098  &
      , 0.3489583334, 0.1041666667, -1.281  &
      , 0.24225, 0.1041666667, -1.281  &
   close = yes
!
geometry attributes  &
   geometry_name = .test_analysis_1.example_stabilizer_02_B.tth41  &
   color = MedOrchid
!
geometry create curve polyline  &
   polyline_name = .test_analysis_1.example_stabilizer_02_B.tth42  &
   location = 0.3489583334, 0.1041666667, -1.281  &
      , 0.3489583333, 0.1041666667, -1.098  &
      , 0.3489583333, -0.1041666667, -1.098  &
      , 0.3489583334, -0.1041666667, -1.281  &
      , 0.3489583334, 0.1041666667, -1.281  &
   close = yes
!
geometry attributes  &
   geometry_name = .test_analysis_1.example_stabilizer_02_B.tth42  &
   color = SILVER
!
geometry create curve polyline  &
   polyline_name = .test_analysis_1.example_stabilizer_02_B.tth43  &
   location = 0.3489583334, -0.1041666667, -1.281  &
      , 0.3489583333, -0.1041666667, -1.098  &
      , 0.24225, -0.1041666667, -1.098  &
      , 0.24225, -0.1041666667, -1.281  &
      , 0.3489583334, -0.1041666667, -1.281  &
   close = yes
!
geometry attributes  &
   geometry_name = .test_analysis_1.example_stabilizer_02_B.tth43  &
   color = MedOrchid
!
geometry create curve polyline  &
   polyline_name = .test_analysis_1.example_stabilizer_02_B.tth51  &
   location = 0.24225, 0.1041666667, -1.098  &
      , 0.24225, 0.1041666667, -0.915  &
      , 0.3489583333, 0.1041666667, -0.915  &
      , 0.3489583333, 0.1041666667, -1.098  &
      , 0.24225, 0.1041666667, -1.098  &
   close = yes
!
geometry attributes  &
   geometry_name = .test_analysis_1.example_stabilizer_02_B.tth51  &
   color = MedOrchid
!
geometry create curve polyline  &
   polyline_name = .test_analysis_1.example_stabilizer_02_B.tth52  &
   location = 0.3489583333, 0.1041666667, -1.098  &
      , 0.3489583333, 0.1041666667, -0.915  &
      , 0.3489583333, -0.1041666667, -0.915  &
      , 0.3489583333, -0.1041666667, -1.098  &
      , 0.3489583333, 0.1041666667, -1.098  &
   close = yes
!
geometry attributes  &
   geometry_name = .test_analysis_1.example_stabilizer_02_B.tth52  &
   color = SILVER
!
geometry create curve polyline  &
   polyline_name = .test_analysis_1.example_stabilizer_02_B.tth53  &
   location = 0.3489583333, -0.1041666667, -1.098  &
      , 0.3489583333, -0.1041666667, -0.915  &
      , 0.24225, -0.1041666667, -0.915  &
      , 0.24225, -0.1041666667, -1.098  &
      , 0.3489583333, -0.1041666667, -1.098  &
   close = yes
!
geometry attributes  &
   geometry_name = .test_analysis_1.example_stabilizer_02_B.tth53  &
   color = MedOrchid
!
geometry create curve polyline  &
   polyline_name = .test_analysis_1.example_stabilizer_02_B.tth61  &
   location = 0.24225, 0.1041666667, -0.915  &
      , 0.24225, 0.1041666667, -0.732  &
      , 0.3489583333, 0.1041666667, -0.732  &
      , 0.3489583333, 0.1041666667, -0.915  &
      , 0.24225, 0.1041666667, -0.915  &
   close = yes
!
geometry attributes  &
   geometry_name = .test_analysis_1.example_stabilizer_02_B.tth61  &
   color = MedOrchid
!
geometry create curve polyline  &
   polyline_name = .test_analysis_1.example_stabilizer_02_B.tth62  &
   location = 0.3489583333, 0.1041666667, -0.915  &
      , 0.3489583333, 0.1041666667, -0.732  &
      , 0.3489583333, -0.1041666667, -0.732  &
      , 0.3489583333, -0.1041666667, -0.915  &
      , 0.3489583333, 0.1041666667, -0.915  &
   close = yes
!
geometry attributes  &
   geometry_name = .test_analysis_1.example_stabilizer_02_B.tth62  &
   color = SILVER
!
geometry create curve polyline  &
   polyline_name = .test_analysis_1.example_stabilizer_02_B.tth63  &
   location = 0.3489583333, -0.1041666667, -0.915  &
      , 0.3489583333, -0.1041666667, -0.732  &
      , 0.24225, -0.1041666667, -0.732  &
      , 0.24225, -0.1041666667, -0.915  &
      , 0.3489583333, -0.1041666667, -0.915  &
   close = yes
!
geometry attributes  &
   geometry_name = .test_analysis_1.example_stabilizer_02_B.tth63  &
   color = MedOrchid
!
geometry create curve polyline  &
   polyline_name = .test_analysis_1.example_stabilizer_02_B.tth71  &
   location = 0.24225, 0.1041666667, -0.732  &
      , 0.24225, 0.1041666667, -0.549  &
      , 0.3489583333, 0.1041666667, -0.549  &
      , 0.3489583333, 0.1041666667, -0.732  &
      , 0.24225, 0.1041666667, -0.732  &
   close = yes
!
geometry attributes  &
   geometry_name = .test_analysis_1.example_stabilizer_02_B.tth71  &
   color = MedOrchid
!
geometry create curve polyline  &
   polyline_name = .test_analysis_1.example_stabilizer_02_B.tth72  &
   location = 0.3489583333, 0.1041666667, -0.732  &
      , 0.3489583333, 0.1041666667, -0.549  &
      , 0.3489583333, -0.1041666667, -0.549  &
      , 0.3489583333, -0.1041666667, -0.732  &
      , 0.3489583333, 0.1041666667, -0.732  &
   close = yes
!
geometry attributes  &
   geometry_name = .test_analysis_1.example_stabilizer_02_B.tth72  &
   color = SILVER
!
geometry create curve polyline  &
   polyline_name = .test_analysis_1.example_stabilizer_02_B.tth73  &
   location = 0.3489583333, -0.1041666667, -0.732  &
      , 0.3489583333, -0.1041666667, -0.549  &
      , 0.24225, -0.1041666667, -0.549  &
      , 0.24225, -0.1041666667, -0.732  &
      , 0.3489583333, -0.1041666667, -0.732  &
   close = yes
!
geometry attributes  &
   geometry_name = .test_analysis_1.example_stabilizer_02_B.tth73  &
   color = MedOrchid
!
geometry create curve polyline  &
   polyline_name = .test_analysis_1.example_stabilizer_02_B.tth81  &
   location = 0.24225, 0.1041666667, -0.549  &
      , 0.24225, 0.1041666667, -0.366  &
      , 0.3489583333, 0.1041666667, -0.366  &
      , 0.3489583333, 0.1041666667, -0.549  &
      , 0.24225, 0.1041666667, -0.549  &
   close = yes
!
geometry attributes  &
   geometry_name = .test_analysis_1.example_stabilizer_02_B.tth81  &
   color = MedOrchid
!
geometry create curve polyline  &
   polyline_name = .test_analysis_1.example_stabilizer_02_B.tth82  &
   location = 0.3489583333, 0.1041666667, -0.549  &
      , 0.3489583333, 0.1041666667, -0.366  &
      , 0.3489583333, -0.1041666667, -0.366  &
      , 0.3489583333, -0.1041666667, -0.549  &
      , 0.3489583333, 0.1041666667, -0.549  &
   close = yes
!
geometry attributes  &
   geometry_name = .test_analysis_1.example_stabilizer_02_B.tth82  &
   color = SILVER
!
geometry create curve polyline  &
   polyline_name = .test_analysis_1.example_stabilizer_02_B.tth83  &
   location = 0.3489583333, -0.1041666667, -0.549  &
      , 0.3489583333, -0.1041666667, -0.366  &
      , 0.24225, -0.1041666667, -0.366  &
      , 0.24225, -0.1041666667, -0.549  &
      , 0.3489583333, -0.1041666667, -0.549  &
   close = yes
!
geometry attributes  &
   geometry_name = .test_analysis_1.example_stabilizer_02_B.tth83  &
   color = MedOrchid
!
geometry create curve polyline  &
   polyline_name = .test_analysis_1.example_stabilizer_02_B.tth91  &
   location = 0.24225, 0.1041666667, -0.366  &
      , 0.24225, 0.1041666667, -0.183  &
      , 0.3489583333, 0.1041666667, -0.183  &
      , 0.3489583333, 0.1041666667, -0.366  &
      , 0.24225, 0.1041666667, -0.366  &
   close = yes
!
geometry attributes  &
   geometry_name = .test_analysis_1.example_stabilizer_02_B.tth91  &
   color = MedOrchid
!
geometry create curve polyline  &
   polyline_name = .test_analysis_1.example_stabilizer_02_B.tth92  &
   location = 0.3489583333, 0.1041666667, -0.366  &
      , 0.3489583333, 0.1041666667, -0.183  &
      , 0.3489583333, -0.1041666667, -0.183  &
      , 0.3489583333, -0.1041666667, -0.366  &
      , 0.3489583333, 0.1041666667, -0.366  &
   close = yes
!
geometry attributes  &
   geometry_name = .test_analysis_1.example_stabilizer_02_B.tth92  &
   color = SILVER
!
geometry create curve polyline  &
   polyline_name = .test_analysis_1.example_stabilizer_02_B.tth93  &
   location = 0.3489583333, -0.1041666667, -0.366  &
      , 0.3489583333, -0.1041666667, -0.183  &
      , 0.24225, -0.1041666667, -0.183  &
      , 0.24225, -0.1041666667, -0.366  &
      , 0.3489583333, -0.1041666667, -0.366  &
   close = yes
!
geometry attributes  &
   geometry_name = .test_analysis_1.example_stabilizer_02_B.tth93  &
   color = MedOrchid
!
geometry create curve polyline  &
   polyline_name = .test_analysis_1.example_stabilizer_02_B.tth11_2  &
   location = -0.1041666666, 0.24225, -1.83  &
      , -0.1041666666, 0.24225, -1.647  &
      , -0.1041666666, 0.3489583334, -1.647  &
      , -0.1041666666, 0.2771458333, -1.83  &
      , -0.1041666666, 0.24225, -1.83  &
   close = yes
!
geometry attributes  &
   geometry_name = .test_analysis_1.example_stabilizer_02_B.tth11_2  &
   color = MedOrchid
!
geometry create curve polyline  &
   polyline_name = .test_analysis_1.example_stabilizer_02_B.tth12_2  &
   location = -0.1041666666, 0.2771458333, -1.83  &
      , -0.1041666666, 0.3489583334, -1.647  &
      , 0.1041666666, 0.3489583334, -1.647  &
      , 0.1041666666, 0.2771458333, -1.83  &
      , -0.1041666666, 0.2771458333, -1.83  &
   close = yes
!
geometry attributes  &
   geometry_name = .test_analysis_1.example_stabilizer_02_B.tth12_2  &
   color = SILVER
!
geometry create curve polyline  &
   polyline_name = .test_analysis_1.example_stabilizer_02_B.tth13_2  &
   location = 0.1041666666, 0.2771458333, -1.83  &
      , 0.1041666666, 0.3489583334, -1.647  &
      , 0.1041666666, 0.24225, -1.647  &
      , 0.1041666666, 0.24225, -1.83  &
      , 0.1041666666, 0.2771458333, -1.83  &
   close = yes
!
geometry attributes  &
   geometry_name = .test_analysis_1.example_stabilizer_02_B.tth13_2  &
   color = MedOrchid
!
geometry create curve polyline  &
   polyline_name = .test_analysis_1.example_stabilizer_02_B.tth14_2  &
   location = -0.1041666666, 0.24225, -1.83  &
      , -0.1041666666, 0.2771458333, -1.83  &
      , 0.1041666666, 0.2771458333, -1.83  &
      , 0.1041666666, 0.24225, -1.83  &
      , -0.1041666666, 0.24225, -1.83  &
   close = yes
!
geometry attributes  &
   geometry_name = .test_analysis_1.example_stabilizer_02_B.tth14_2  &
   color = MedOrchid
!
geometry create curve polyline  &
   polyline_name = .test_analysis_1.example_stabilizer_02_B.tth101_2  &
   location = -0.1041666666, 0.24225, -0.183  &
      , -0.1041666666, 0.24225, 0.0  &
      , -0.1041666666, 0.2771458333, 0.0  &
      , -0.1041666666, 0.3489583333, -0.183  &
      , -0.1041666666, 0.24225, -0.183  &
   close = yes
!
geometry attributes  &
   geometry_name = .test_analysis_1.example_stabilizer_02_B.tth101_2  &
   color = MedOrchid
!
geometry create curve polyline  &
   polyline_name = .test_analysis_1.example_stabilizer_02_B.tth102_2  &
   location = -0.1041666666, 0.3489583333, -0.183  &
      , -0.1041666666, 0.2771458333, 0.0  &
      , 0.1041666666, 0.2771458333, 0.0  &
      , 0.1041666666, 0.3489583333, -0.183  &
      , -0.1041666666, 0.3489583333, -0.183  &
   close = yes
!
geometry attributes  &
   geometry_name = .test_analysis_1.example_stabilizer_02_B.tth102_2  &
   color = SILVER
!
geometry create curve polyline  &
   polyline_name = .test_analysis_1.example_stabilizer_02_B.tth103_2  &
   location = 0.1041666666, 0.3489583333, -0.183  &
      , 0.1041666666, 0.2771458333, 0.0  &
      , 0.1041666666, 0.24225, 0.0  &
      , 0.1041666666, 0.24225, -0.183  &
      , 0.1041666666, 0.3489583333, -0.183  &
   close = yes
!
geometry attributes  &
   geometry_name = .test_analysis_1.example_stabilizer_02_B.tth103_2  &
   color = MedOrchid
!
geometry create curve polyline  &
   polyline_name = .test_analysis_1.example_stabilizer_02_B.tth104_2  &
   location = -0.1041666666, 0.24225, 0.0  &
      , -0.1041666666, 0.2771458333, 0.0  &
      , 0.1041666666, 0.2771458333, 0.0  &
      , 0.1041666666, 0.24225, 0.0  &
      , -0.1041666666, 0.24225, 0.0  &
   close = yes
!
geometry attributes  &
   geometry_name = .test_analysis_1.example_stabilizer_02_B.tth104_2  &
   color = MedOrchid
!
geometry create curve polyline  &
   polyline_name = .test_analysis_1.example_stabilizer_02_B.tth21_2  &
   location = -0.1041666666, 0.24225, -1.647  &
      , -0.1041666666, 0.24225, -1.464  &
      , -0.1041666666, 0.3489583334, -1.464  &
      , -0.1041666666, 0.3489583334, -1.647  &
      , -0.1041666666, 0.24225, -1.647  &
   close = yes
!
geometry attributes  &
   geometry_name = .test_analysis_1.example_stabilizer_02_B.tth21_2  &
   color = MedOrchid
!
geometry create curve polyline  &
   polyline_name = .test_analysis_1.example_stabilizer_02_B.tth22_2  &
   location = -0.1041666666, 0.3489583334, -1.647  &
      , -0.1041666666, 0.3489583334, -1.464  &
      , 0.1041666666, 0.3489583334, -1.464  &
      , 0.1041666666, 0.3489583334, -1.647  &
      , -0.1041666666, 0.3489583334, -1.647  &
   close = yes
!
geometry attributes  &
   geometry_name = .test_analysis_1.example_stabilizer_02_B.tth22_2  &
   color = SILVER
!
geometry create curve polyline  &
   polyline_name = .test_analysis_1.example_stabilizer_02_B.tth23_2  &
   location = 0.1041666666, 0.3489583334, -1.647  &
      , 0.1041666666, 0.3489583334, -1.464  &
      , 0.1041666666, 0.24225, -1.464  &
      , 0.1041666666, 0.24225, -1.647  &
      , 0.1041666666, 0.3489583334, -1.647  &
   close = yes
!
geometry attributes  &
   geometry_name = .test_analysis_1.example_stabilizer_02_B.tth23_2  &
   color = MedOrchid
!
geometry create curve polyline  &
   polyline_name = .test_analysis_1.example_stabilizer_02_B.tth31_2  &
   location = -0.1041666666, 0.24225, -1.464  &
      , -0.1041666666, 0.24225, -1.281  &
      , -0.1041666666, 0.3489583334, -1.281  &
      , -0.1041666666, 0.3489583334, -1.464  &
      , -0.1041666666, 0.24225, -1.464  &
   close = yes
!
geometry attributes  &
   geometry_name = .test_analysis_1.example_stabilizer_02_B.tth31_2  &
   color = MedOrchid
!
geometry create curve polyline  &
   polyline_name = .test_analysis_1.example_stabilizer_02_B.tth32_2  &
   location = -0.1041666666, 0.3489583334, -1.464  &
      , -0.1041666666, 0.3489583334, -1.281  &
      , 0.1041666666, 0.3489583334, -1.281  &
      , 0.1041666666, 0.3489583334, -1.464  &
      , -0.1041666666, 0.3489583334, -1.464  &
   close = yes
!
geometry attributes  &
   geometry_name = .test_analysis_1.example_stabilizer_02_B.tth32_2  &
   color = SILVER
!
geometry create curve polyline  &
   polyline_name = .test_analysis_1.example_stabilizer_02_B.tth33_2  &
   location = 0.1041666666, 0.3489583334, -1.464  &
      , 0.1041666666, 0.3489583334, -1.281  &
      , 0.1041666666, 0.24225, -1.281  &
      , 0.1041666666, 0.24225, -1.464  &
      , 0.1041666666, 0.3489583334, -1.464  &
   close = yes
!
geometry attributes  &
   geometry_name = .test_analysis_1.example_stabilizer_02_B.tth33_2  &
   color = MedOrchid
!
geometry create curve polyline  &
   polyline_name = .test_analysis_1.example_stabilizer_02_B.tth41_2  &
   location = -0.1041666666, 0.24225, -1.281  &
      , -0.1041666666, 0.24225, -1.098  &
      , -0.1041666666, 0.3489583333, -1.098  &
      , -0.1041666666, 0.3489583334, -1.281  &
      , -0.1041666666, 0.24225, -1.281  &
   close = yes
!
geometry attributes  &
   geometry_name = .test_analysis_1.example_stabilizer_02_B.tth41_2  &
   color = MedOrchid
!
geometry create curve polyline  &
   polyline_name = .test_analysis_1.example_stabilizer_02_B.tth42_2  &
   location = -0.1041666666, 0.3489583334, -1.281  &
      , -0.1041666666, 0.3489583333, -1.098  &
      , 0.1041666666, 0.3489583333, -1.098  &
      , 0.1041666666, 0.3489583334, -1.281  &
      , -0.1041666666, 0.3489583334, -1.281  &
   close = yes
!
geometry attributes  &
   geometry_name = .test_analysis_1.example_stabilizer_02_B.tth42_2  &
   color = SILVER
!
geometry create curve polyline  &
   polyline_name = .test_analysis_1.example_stabilizer_02_B.tth43_2  &
   location = 0.1041666666, 0.3489583334, -1.281  &
      , 0.1041666666, 0.3489583333, -1.098  &
      , 0.1041666666, 0.24225, -1.098  &
      , 0.1041666666, 0.24225, -1.281  &
      , 0.1041666666, 0.3489583334, -1.281  &
   close = yes
!
geometry attributes  &
   geometry_name = .test_analysis_1.example_stabilizer_02_B.tth43_2  &
   color = MedOrchid
!
geometry create curve polyline  &
   polyline_name = .test_analysis_1.example_stabilizer_02_B.tth51_2  &
   location = -0.1041666666, 0.24225, -1.098  &
      , -0.1041666666, 0.24225, -0.915  &
      , -0.1041666666, 0.3489583333, -0.915  &
      , -0.1041666666, 0.3489583333, -1.098  &
      , -0.1041666666, 0.24225, -1.098  &
   close = yes
!
geometry attributes  &
   geometry_name = .test_analysis_1.example_stabilizer_02_B.tth51_2  &
   color = MedOrchid
!
geometry create curve polyline  &
   polyline_name = .test_analysis_1.example_stabilizer_02_B.tth52_2  &
   location = -0.1041666666, 0.3489583333, -1.098  &
      , -0.1041666666, 0.3489583333, -0.915  &
      , 0.1041666666, 0.3489583333, -0.915  &
      , 0.1041666666, 0.3489583333, -1.098  &
      , -0.1041666666, 0.3489583333, -1.098  &
   close = yes
!
geometry attributes  &
   geometry_name = .test_analysis_1.example_stabilizer_02_B.tth52_2  &
   color = SILVER
!
geometry create curve polyline  &
   polyline_name = .test_analysis_1.example_stabilizer_02_B.tth53_2  &
   location = 0.1041666666, 0.3489583333, -1.098  &
      , 0.1041666666, 0.3489583333, -0.915  &
      , 0.1041666666, 0.24225, -0.915  &
      , 0.1041666666, 0.24225, -1.098  &
      , 0.1041666666, 0.3489583333, -1.098  &
   close = yes
!
geometry attributes  &
   geometry_name = .test_analysis_1.example_stabilizer_02_B.tth53_2  &
   color = MedOrchid
!
geometry create curve polyline  &
   polyline_name = .test_analysis_1.example_stabilizer_02_B.tth61_2  &
   location = -0.1041666666, 0.24225, -0.915  &
      , -0.1041666666, 0.24225, -0.732  &
      , -0.1041666666, 0.3489583333, -0.732  &
      , -0.1041666666, 0.3489583333, -0.915  &
      , -0.1041666666, 0.24225, -0.915  &
   close = yes
!
geometry attributes  &
   geometry_name = .test_analysis_1.example_stabilizer_02_B.tth61_2  &
   color = MedOrchid
!
geometry create curve polyline  &
   polyline_name = .test_analysis_1.example_stabilizer_02_B.tth62_2  &
   location = -0.1041666666, 0.3489583333, -0.915  &
      , -0.1041666666, 0.3489583333, -0.732  &
      , 0.1041666666, 0.3489583333, -0.732  &
      , 0.1041666666, 0.3489583333, -0.915  &
      , -0.1041666666, 0.3489583333, -0.915  &
   close = yes
!
geometry attributes  &
   geometry_name = .test_analysis_1.example_stabilizer_02_B.tth62_2  &
   color = SILVER
!
geometry create curve polyline  &
   polyline_name = .test_analysis_1.example_stabilizer_02_B.tth63_2  &
   location = 0.1041666666, 0.3489583333, -0.915  &
      , 0.1041666666, 0.3489583333, -0.732  &
      , 0.1041666666, 0.24225, -0.732  &
      , 0.1041666666, 0.24225, -0.915  &
      , 0.1041666666, 0.3489583333, -0.915  &
   close = yes
!
geometry attributes  &
   geometry_name = .test_analysis_1.example_stabilizer_02_B.tth63_2  &
   color = MedOrchid
!
geometry create curve polyline  &
   polyline_name = .test_analysis_1.example_stabilizer_02_B.tth71_2  &
   location = -0.1041666666, 0.24225, -0.732  &
      , -0.1041666666, 0.24225, -0.549  &
      , -0.1041666666, 0.3489583333, -0.549  &
      , -0.1041666666, 0.3489583333, -0.732  &
      , -0.1041666666, 0.24225, -0.732  &
   close = yes
!
geometry attributes  &
   geometry_name = .test_analysis_1.example_stabilizer_02_B.tth71_2  &
   color = MedOrchid
!
geometry create curve polyline  &
   polyline_name = .test_analysis_1.example_stabilizer_02_B.tth72_2  &
   location = -0.1041666666, 0.3489583333, -0.732  &
      , -0.1041666666, 0.3489583333, -0.549  &
      , 0.1041666666, 0.3489583333, -0.549  &
      , 0.1041666666, 0.3489583333, -0.732  &
      , -0.1041666666, 0.3489583333, -0.732  &
   close = yes
!
geometry attributes  &
   geometry_name = .test_analysis_1.example_stabilizer_02_B.tth72_2  &
   color = SILVER
!
geometry create curve polyline  &
   polyline_name = .test_analysis_1.example_stabilizer_02_B.tth73_2  &
   location = 0.1041666666, 0.3489583333, -0.732  &
      , 0.1041666666, 0.3489583333, -0.549  &
      , 0.1041666666, 0.24225, -0.549  &
      , 0.1041666666, 0.24225, -0.732  &
      , 0.1041666666, 0.3489583333, -0.732  &
   close = yes
!
geometry attributes  &
   geometry_name = .test_analysis_1.example_stabilizer_02_B.tth73_2  &
   color = MedOrchid
!
geometry create curve polyline  &
   polyline_name = .test_analysis_1.example_stabilizer_02_B.tth81_2  &
   location = -0.1041666666, 0.24225, -0.549  &
      , -0.1041666666, 0.24225, -0.366  &
      , -0.1041666666, 0.3489583333, -0.366  &
      , -0.1041666666, 0.3489583333, -0.549  &
      , -0.1041666666, 0.24225, -0.549  &
   close = yes
!
geometry attributes  &
   geometry_name = .test_analysis_1.example_stabilizer_02_B.tth81_2  &
   color = MedOrchid
!
geometry create curve polyline  &
   polyline_name = .test_analysis_1.example_stabilizer_02_B.tth82_2  &
   location = -0.1041666666, 0.3489583333, -0.549  &
      , -0.1041666666, 0.3489583333, -0.366  &
      , 0.1041666666, 0.3489583333, -0.366  &
      , 0.1041666666, 0.3489583333, -0.549  &
      , -0.1041666666, 0.3489583333, -0.549  &
   close = yes
!
geometry attributes  &
   geometry_name = .test_analysis_1.example_stabilizer_02_B.tth82_2  &
   color = SILVER
!
geometry create curve polyline  &
   polyline_name = .test_analysis_1.example_stabilizer_02_B.tth83_2  &
   location = 0.1041666666, 0.3489583333, -0.549  &
      , 0.1041666666, 0.3489583333, -0.366  &
      , 0.1041666666, 0.24225, -0.366  &
      , 0.1041666666, 0.24225, -0.549  &
      , 0.1041666666, 0.3489583333, -0.549  &
   close = yes
!
geometry attributes  &
   geometry_name = .test_analysis_1.example_stabilizer_02_B.tth83_2  &
   color = MedOrchid
!
geometry create curve polyline  &
   polyline_name = .test_analysis_1.example_stabilizer_02_B.tth91_2  &
   location = -0.1041666666, 0.24225, -0.366  &
      , -0.1041666666, 0.24225, -0.183  &
      , -0.1041666666, 0.3489583333, -0.183  &
      , -0.1041666666, 0.3489583333, -0.366  &
      , -0.1041666666, 0.24225, -0.366  &
   close = yes
!
geometry attributes  &
   geometry_name = .test_analysis_1.example_stabilizer_02_B.tth91_2  &
   color = MedOrchid
!
geometry create curve polyline  &
   polyline_name = .test_analysis_1.example_stabilizer_02_B.tth92_2  &
   location = -0.1041666666, 0.3489583333, -0.366  &
      , -0.1041666666, 0.3489583333, -0.183  &
      , 0.1041666666, 0.3489583333, -0.183  &
      , 0.1041666666, 0.3489583333, -0.366  &
      , -0.1041666666, 0.3489583333, -0.366  &
   close = yes
!
geometry attributes  &
   geometry_name = .test_analysis_1.example_stabilizer_02_B.tth92_2  &
   color = SILVER
!
geometry create curve polyline  &
   polyline_name = .test_analysis_1.example_stabilizer_02_B.tth93_2  &
   location = 0.1041666666, 0.3489583333, -0.366  &
      , 0.1041666666, 0.3489583333, -0.183  &
      , 0.1041666666, 0.24225, -0.183  &
      , 0.1041666666, 0.24225, -0.366  &
      , 0.1041666666, 0.3489583333, -0.366  &
   close = yes
!
geometry attributes  &
   geometry_name = .test_analysis_1.example_stabilizer_02_B.tth93_2  &
   color = MedOrchid
!
geometry create curve polyline  &
   polyline_name = .test_analysis_1.example_stabilizer_02_B.tth11_3  &
   location = -0.24225, -0.1041666666, -1.83  &
      , -0.24225, -0.1041666666, -1.647  &
      , -0.3489583334, -0.1041666666, -1.647  &
      , -0.2771458333, -0.1041666666, -1.83  &
      , -0.24225, -0.1041666666, -1.83  &
   close = yes
!
geometry attributes  &
   geometry_name = .test_analysis_1.example_stabilizer_02_B.tth11_3  &
   color = MedOrchid
!
geometry create curve polyline  &
   polyline_name = .test_analysis_1.example_stabilizer_02_B.tth12_3  &
   location = -0.2771458333, -0.1041666666, -1.83  &
      , -0.3489583334, -0.1041666666, -1.647  &
      , -0.3489583334, 0.1041666667, -1.647  &
      , -0.2771458333, 0.1041666667, -1.83  &
      , -0.2771458333, -0.1041666666, -1.83  &
   close = yes
!
geometry attributes  &
   geometry_name = .test_analysis_1.example_stabilizer_02_B.tth12_3  &
   color = SILVER
!
geometry create curve polyline  &
   polyline_name = .test_analysis_1.example_stabilizer_02_B.tth13_3  &
   location = -0.2771458333, 0.1041666667, -1.83  &
      , -0.3489583334, 0.1041666667, -1.647  &
      , -0.24225, 0.1041666667, -1.647  &
      , -0.24225, 0.1041666667, -1.83  &
      , -0.2771458333, 0.1041666667, -1.83  &
   close = yes
!
geometry attributes  &
   geometry_name = .test_analysis_1.example_stabilizer_02_B.tth13_3  &
   color = MedOrchid
!
geometry create curve polyline  &
   polyline_name = .test_analysis_1.example_stabilizer_02_B.tth14_3  &
   location = -0.24225, -0.1041666666, -1.83  &
      , -0.2771458333, -0.1041666666, -1.83  &
      , -0.2771458333, 0.1041666667, -1.83  &
      , -0.24225, 0.1041666667, -1.83  &
      , -0.24225, -0.1041666666, -1.83  &
   close = yes
!
geometry attributes  &
   geometry_name = .test_analysis_1.example_stabilizer_02_B.tth14_3  &
   color = MedOrchid
!
geometry create curve polyline  &
   polyline_name = .test_analysis_1.example_stabilizer_02_B.tth101_3  &
   location = -0.24225, -0.1041666666, -0.183  &
      , -0.24225, -0.1041666666, 0.0  &
      , -0.2771458333, -0.1041666666, 0.0  &
      , -0.3489583333, -0.1041666666, -0.183  &
      , -0.24225, -0.1041666666, -0.183  &
   close = yes
!
geometry attributes  &
   geometry_name = .test_analysis_1.example_stabilizer_02_B.tth101_3  &
   color = MedOrchid
!
geometry create curve polyline  &
   polyline_name = .test_analysis_1.example_stabilizer_02_B.tth102_3  &
   location = -0.3489583333, -0.1041666666, -0.183  &
      , -0.2771458333, -0.1041666666, 0.0  &
      , -0.2771458333, 0.1041666667, 0.0  &
      , -0.3489583333, 0.1041666667, -0.183  &
      , -0.3489583333, -0.1041666666, -0.183  &
   close = yes
!
geometry attributes  &
   geometry_name = .test_analysis_1.example_stabilizer_02_B.tth102_3  &
   color = SILVER
!
geometry create curve polyline  &
   polyline_name = .test_analysis_1.example_stabilizer_02_B.tth103_3  &
   location = -0.3489583333, 0.1041666667, -0.183  &
      , -0.2771458333, 0.1041666667, 0.0  &
      , -0.24225, 0.1041666667, 0.0  &
      , -0.24225, 0.1041666667, -0.183  &
      , -0.3489583333, 0.1041666667, -0.183  &
   close = yes
!
geometry attributes  &
   geometry_name = .test_analysis_1.example_stabilizer_02_B.tth103_3  &
   color = MedOrchid
!
geometry create curve polyline  &
   polyline_name = .test_analysis_1.example_stabilizer_02_B.tth104_3  &
   location = -0.24225, -0.1041666666, 0.0  &
      , -0.2771458333, -0.1041666666, 0.0  &
      , -0.2771458333, 0.1041666667, 0.0  &
      , -0.24225, 0.1041666667, 0.0  &
      , -0.24225, -0.1041666666, 0.0  &
   close = yes
!
geometry attributes  &
   geometry_name = .test_analysis_1.example_stabilizer_02_B.tth104_3  &
   color = MedOrchid
!
geometry create curve polyline  &
   polyline_name = .test_analysis_1.example_stabilizer_02_B.tth21_3  &
   location = -0.24225, -0.1041666666, -1.647  &
      , -0.24225, -0.1041666666, -1.464  &
      , -0.3489583334, -0.1041666666, -1.464  &
      , -0.3489583334, -0.1041666666, -1.647  &
      , -0.24225, -0.1041666666, -1.647  &
   close = yes
!
geometry attributes  &
   geometry_name = .test_analysis_1.example_stabilizer_02_B.tth21_3  &
   color = MedOrchid
!
geometry create curve polyline  &
   polyline_name = .test_analysis_1.example_stabilizer_02_B.tth22_3  &
   location = -0.3489583334, -0.1041666666, -1.647  &
      , -0.3489583334, -0.1041666666, -1.464  &
      , -0.3489583334, 0.1041666667, -1.464  &
      , -0.3489583334, 0.1041666667, -1.647  &
      , -0.3489583334, -0.1041666666, -1.647  &
   close = yes
!
geometry attributes  &
   geometry_name = .test_analysis_1.example_stabilizer_02_B.tth22_3  &
   color = SILVER
!
geometry create curve polyline  &
   polyline_name = .test_analysis_1.example_stabilizer_02_B.tth23_3  &
   location = -0.3489583334, 0.1041666667, -1.647  &
      , -0.3489583334, 0.1041666667, -1.464  &
      , -0.24225, 0.1041666667, -1.464  &
      , -0.24225, 0.1041666667, -1.647  &
      , -0.3489583334, 0.1041666667, -1.647  &
   close = yes
!
geometry attributes  &
   geometry_name = .test_analysis_1.example_stabilizer_02_B.tth23_3  &
   color = MedOrchid
!
geometry create curve polyline  &
   polyline_name = .test_analysis_1.example_stabilizer_02_B.tth31_3  &
   location = -0.24225, -0.1041666666, -1.464  &
      , -0.24225, -0.1041666666, -1.281  &
      , -0.3489583334, -0.1041666666, -1.281  &
      , -0.3489583334, -0.1041666666, -1.464  &
      , -0.24225, -0.1041666666, -1.464  &
   close = yes
!
geometry attributes  &
   geometry_name = .test_analysis_1.example_stabilizer_02_B.tth31_3  &
   color = MedOrchid
!
geometry create curve polyline  &
   polyline_name = .test_analysis_1.example_stabilizer_02_B.tth32_3  &
   location = -0.3489583334, -0.1041666666, -1.464  &
      , -0.3489583334, -0.1041666666, -1.281  &
      , -0.3489583334, 0.1041666667, -1.281  &
      , -0.3489583334, 0.1041666667, -1.464  &
      , -0.3489583334, -0.1041666666, -1.464  &
   close = yes
!
geometry attributes  &
   geometry_name = .test_analysis_1.example_stabilizer_02_B.tth32_3  &
   color = SILVER
!
geometry create curve polyline  &
   polyline_name = .test_analysis_1.example_stabilizer_02_B.tth33_3  &
   location = -0.3489583334, 0.1041666667, -1.464  &
      , -0.3489583334, 0.1041666667, -1.281  &
      , -0.24225, 0.1041666667, -1.281  &
      , -0.24225, 0.1041666667, -1.464  &
      , -0.3489583334, 0.1041666667, -1.464  &
   close = yes
!
geometry attributes  &
   geometry_name = .test_analysis_1.example_stabilizer_02_B.tth33_3  &
   color = MedOrchid
!
geometry create curve polyline  &
   polyline_name = .test_analysis_1.example_stabilizer_02_B.tth41_3  &
   location = -0.24225, -0.1041666666, -1.281  &
      , -0.24225, -0.1041666666, -1.098  &
      , -0.3489583333, -0.1041666666, -1.098  &
      , -0.3489583334, -0.1041666666, -1.281  &
      , -0.24225, -0.1041666666, -1.281  &
   close = yes
!
geometry attributes  &
   geometry_name = .test_analysis_1.example_stabilizer_02_B.tth41_3  &
   color = MedOrchid
!
geometry create curve polyline  &
   polyline_name = .test_analysis_1.example_stabilizer_02_B.tth42_3  &
   location = -0.3489583334, -0.1041666666, -1.281  &
      , -0.3489583333, -0.1041666666, -1.098  &
      , -0.3489583333, 0.1041666667, -1.098  &
      , -0.3489583334, 0.1041666667, -1.281  &
      , -0.3489583334, -0.1041666666, -1.281  &
   close = yes
!
geometry attributes  &
   geometry_name = .test_analysis_1.example_stabilizer_02_B.tth42_3  &
   color = SILVER
!
geometry create curve polyline  &
   polyline_name = .test_analysis_1.example_stabilizer_02_B.tth43_3  &
   location = -0.3489583334, 0.1041666667, -1.281  &
      , -0.3489583333, 0.1041666667, -1.098  &
      , -0.24225, 0.1041666667, -1.098  &
      , -0.24225, 0.1041666667, -1.281  &
      , -0.3489583334, 0.1041666667, -1.281  &
   close = yes
!
geometry attributes  &
   geometry_name = .test_analysis_1.example_stabilizer_02_B.tth43_3  &
   color = MedOrchid
!
geometry create curve polyline  &
   polyline_name = .test_analysis_1.example_stabilizer_02_B.tth51_3  &
   location = -0.24225, -0.1041666666, -1.098  &
      , -0.24225, -0.1041666666, -0.915  &
      , -0.3489583333, -0.1041666666, -0.915  &
      , -0.3489583333, -0.1041666666, -1.098  &
      , -0.24225, -0.1041666666, -1.098  &
   close = yes
!
geometry attributes  &
   geometry_name = .test_analysis_1.example_stabilizer_02_B.tth51_3  &
   color = MedOrchid
!
geometry create curve polyline  &
   polyline_name = .test_analysis_1.example_stabilizer_02_B.tth52_3  &
   location = -0.3489583333, -0.1041666666, -1.098  &
      , -0.3489583333, -0.1041666666, -0.915  &
      , -0.3489583333, 0.1041666667, -0.915  &
      , -0.3489583333, 0.1041666667, -1.098  &
      , -0.3489583333, -0.1041666666, -1.098  &
   close = yes
!
geometry attributes  &
   geometry_name = .test_analysis_1.example_stabilizer_02_B.tth52_3  &
   color = SILVER
!
geometry create curve polyline  &
   polyline_name = .test_analysis_1.example_stabilizer_02_B.tth53_3  &
   location = -0.3489583333, 0.1041666667, -1.098  &
      , -0.3489583333, 0.1041666667, -0.915  &
      , -0.24225, 0.1041666667, -0.915  &
      , -0.24225, 0.1041666667, -1.098  &
      , -0.3489583333, 0.1041666667, -1.098  &
   close = yes
!
geometry attributes  &
   geometry_name = .test_analysis_1.example_stabilizer_02_B.tth53_3  &
   color = MedOrchid
!
geometry create curve polyline  &
   polyline_name = .test_analysis_1.example_stabilizer_02_B.tth61_3  &
   location = -0.24225, -0.1041666666, -0.915  &
      , -0.24225, -0.1041666666, -0.732  &
      , -0.3489583333, -0.1041666666, -0.732  &
      , -0.3489583333, -0.1041666666, -0.915  &
      , -0.24225, -0.1041666666, -0.915  &
   close = yes
!
geometry attributes  &
   geometry_name = .test_analysis_1.example_stabilizer_02_B.tth61_3  &
   color = MedOrchid
!
geometry create curve polyline  &
   polyline_name = .test_analysis_1.example_stabilizer_02_B.tth62_3  &
   location = -0.3489583333, -0.1041666666, -0.915  &
      , -0.3489583333, -0.1041666666, -0.732  &
      , -0.3489583333, 0.1041666667, -0.732  &
      , -0.3489583333, 0.1041666667, -0.915  &
      , -0.3489583333, -0.1041666666, -0.915  &
   close = yes
!
geometry attributes  &
   geometry_name = .test_analysis_1.example_stabilizer_02_B.tth62_3  &
   color = SILVER
!
geometry create curve polyline  &
   polyline_name = .test_analysis_1.example_stabilizer_02_B.tth63_3  &
   location = -0.3489583333, 0.1041666667, -0.915  &
      , -0.3489583333, 0.1041666667, -0.732  &
      , -0.24225, 0.1041666667, -0.732  &
      , -0.24225, 0.1041666667, -0.915  &
      , -0.3489583333, 0.1041666667, -0.915  &
   close = yes
!
geometry attributes  &
   geometry_name = .test_analysis_1.example_stabilizer_02_B.tth63_3  &
   color = MedOrchid
!
geometry create curve polyline  &
   polyline_name = .test_analysis_1.example_stabilizer_02_B.tth71_3  &
   location = -0.24225, -0.1041666666, -0.732  &
      , -0.24225, -0.1041666666, -0.549  &
      , -0.3489583333, -0.1041666666, -0.549  &
      , -0.3489583333, -0.1041666666, -0.732  &
      , -0.24225, -0.1041666666, -0.732  &
   close = yes
!
geometry attributes  &
   geometry_name = .test_analysis_1.example_stabilizer_02_B.tth71_3  &
   color = MedOrchid
!
geometry create curve polyline  &
   polyline_name = .test_analysis_1.example_stabilizer_02_B.tth72_3  &
   location = -0.3489583333, -0.1041666666, -0.732  &
      , -0.3489583333, -0.1041666666, -0.549  &
      , -0.3489583333, 0.1041666667, -0.549  &
      , -0.3489583333, 0.1041666667, -0.732  &
      , -0.3489583333, -0.1041666666, -0.732  &
   close = yes
!
geometry attributes  &
   geometry_name = .test_analysis_1.example_stabilizer_02_B.tth72_3  &
   color = SILVER
!
geometry create curve polyline  &
   polyline_name = .test_analysis_1.example_stabilizer_02_B.tth73_3  &
   location = -0.3489583333, 0.1041666667, -0.732  &
      , -0.3489583333, 0.1041666667, -0.549  &
      , -0.24225, 0.1041666667, -0.549  &
      , -0.24225, 0.1041666667, -0.732  &
      , -0.3489583333, 0.1041666667, -0.732  &
   close = yes
!
geometry attributes  &
   geometry_name = .test_analysis_1.example_stabilizer_02_B.tth73_3  &
   color = MedOrchid
!
geometry create curve polyline  &
   polyline_name = .test_analysis_1.example_stabilizer_02_B.tth81_3  &
   location = -0.24225, -0.1041666666, -0.549  &
      , -0.24225, -0.1041666666, -0.366  &
      , -0.3489583333, -0.1041666666, -0.366  &
      , -0.3489583333, -0.1041666666, -0.549  &
      , -0.24225, -0.1041666666, -0.549  &
   close = yes
!
geometry attributes  &
   geometry_name = .test_analysis_1.example_stabilizer_02_B.tth81_3  &
   color = MedOrchid
!
geometry create curve polyline  &
   polyline_name = .test_analysis_1.example_stabilizer_02_B.tth82_3  &
   location = -0.3489583333, -0.1041666666, -0.549  &
      , -0.3489583333, -0.1041666666, -0.366  &
      , -0.3489583333, 0.1041666667, -0.366  &
      , -0.3489583333, 0.1041666667, -0.549  &
      , -0.3489583333, -0.1041666666, -0.549  &
   close = yes
!
geometry attributes  &
   geometry_name = .test_analysis_1.example_stabilizer_02_B.tth82_3  &
   color = SILVER
!
geometry create curve polyline  &
   polyline_name = .test_analysis_1.example_stabilizer_02_B.tth83_3  &
   location = -0.3489583333, 0.1041666667, -0.549  &
      , -0.3489583333, 0.1041666667, -0.366  &
      , -0.24225, 0.1041666667, -0.366  &
      , -0.24225, 0.1041666667, -0.549  &
      , -0.3489583333, 0.1041666667, -0.549  &
   close = yes
!
geometry attributes  &
   geometry_name = .test_analysis_1.example_stabilizer_02_B.tth83_3  &
   color = MedOrchid
!
geometry create curve polyline  &
   polyline_name = .test_analysis_1.example_stabilizer_02_B.tth91_3  &
   location = -0.24225, -0.1041666666, -0.366  &
      , -0.24225, -0.1041666666, -0.183  &
      , -0.3489583333, -0.1041666666, -0.183  &
      , -0.3489583333, -0.1041666666, -0.366  &
      , -0.24225, -0.1041666666, -0.366  &
   close = yes
!
geometry attributes  &
   geometry_name = .test_analysis_1.example_stabilizer_02_B.tth91_3  &
   color = MedOrchid
!
geometry create curve polyline  &
   polyline_name = .test_analysis_1.example_stabilizer_02_B.tth92_3  &
   location = -0.3489583333, -0.1041666666, -0.366  &
      , -0.3489583333, -0.1041666666, -0.183  &
      , -0.3489583333, 0.1041666667, -0.183  &
      , -0.3489583333, 0.1041666667, -0.366  &
      , -0.3489583333, -0.1041666666, -0.366  &
   close = yes
!
geometry attributes  &
   geometry_name = .test_analysis_1.example_stabilizer_02_B.tth92_3  &
   color = SILVER
!
geometry create curve polyline  &
   polyline_name = .test_analysis_1.example_stabilizer_02_B.tth93_3  &
   location = -0.3489583333, 0.1041666667, -0.366  &
      , -0.3489583333, 0.1041666667, -0.183  &
      , -0.24225, 0.1041666667, -0.183  &
      , -0.24225, 0.1041666667, -0.366  &
      , -0.3489583333, 0.1041666667, -0.366  &
   close = yes
!
geometry attributes  &
   geometry_name = .test_analysis_1.example_stabilizer_02_B.tth93_3  &
   color = MedOrchid
!
geometry create curve polyline  &
   polyline_name = .test_analysis_1.example_stabilizer_02_B.tth11_4  &
   location = 0.1041666666, -0.24225, -1.83  &
      , 0.1041666666, -0.24225, -1.647  &
      , 0.1041666666, -0.3489583334, -1.647  &
      , 0.1041666666, -0.2771458333, -1.83  &
      , 0.1041666666, -0.24225, -1.83  &
   close = yes
!
geometry attributes  &
   geometry_name = .test_analysis_1.example_stabilizer_02_B.tth11_4  &
   color = MedOrchid
!
geometry create curve polyline  &
   polyline_name = .test_analysis_1.example_stabilizer_02_B.tth12_4  &
   location = 0.1041666666, -0.2771458333, -1.83  &
      , 0.1041666666, -0.3489583334, -1.647  &
      , -0.1041666667, -0.3489583334, -1.647  &
      , -0.1041666667, -0.2771458333, -1.83  &
      , 0.1041666666, -0.2771458333, -1.83  &
   close = yes
!
geometry attributes  &
   geometry_name = .test_analysis_1.example_stabilizer_02_B.tth12_4  &
   color = SILVER
!
geometry create curve polyline  &
   polyline_name = .test_analysis_1.example_stabilizer_02_B.tth13_4  &
   location = -0.1041666667, -0.2771458333, -1.83  &
      , -0.1041666667, -0.3489583334, -1.647  &
      , -0.1041666667, -0.24225, -1.647  &
      , -0.1041666667, -0.24225, -1.83  &
      , -0.1041666667, -0.2771458333, -1.83  &
   close = yes
!
geometry attributes  &
   geometry_name = .test_analysis_1.example_stabilizer_02_B.tth13_4  &
   color = MedOrchid
!
geometry create curve polyline  &
   polyline_name = .test_analysis_1.example_stabilizer_02_B.tth14_4  &
   location = 0.1041666666, -0.24225, -1.83  &
      , 0.1041666666, -0.2771458333, -1.83  &
      , -0.1041666667, -0.2771458333, -1.83  &
      , -0.1041666667, -0.24225, -1.83  &
      , 0.1041666666, -0.24225, -1.83  &
   close = yes
!
geometry attributes  &
   geometry_name = .test_analysis_1.example_stabilizer_02_B.tth14_4  &
   color = MedOrchid
!
geometry create curve polyline  &
   polyline_name = .test_analysis_1.example_stabilizer_02_B.tth101_4  &
   location = 0.1041666666, -0.24225, -0.183  &
      , 0.1041666666, -0.24225, 0.0  &
      , 0.1041666666, -0.2771458333, 0.0  &
      , 0.1041666666, -0.3489583333, -0.183  &
      , 0.1041666666, -0.24225, -0.183  &
   close = yes
!
geometry attributes  &
   geometry_name = .test_analysis_1.example_stabilizer_02_B.tth101_4  &
   color = MedOrchid
!
geometry create curve polyline  &
   polyline_name = .test_analysis_1.example_stabilizer_02_B.tth102_4  &
   location = 0.1041666666, -0.3489583333, -0.183  &
      , 0.1041666666, -0.2771458333, 0.0  &
      , -0.1041666667, -0.2771458333, 0.0  &
      , -0.1041666667, -0.3489583333, -0.183  &
      , 0.1041666666, -0.3489583333, -0.183  &
   close = yes
!
geometry attributes  &
   geometry_name = .test_analysis_1.example_stabilizer_02_B.tth102_4  &
   color = SILVER
!
geometry create curve polyline  &
   polyline_name = .test_analysis_1.example_stabilizer_02_B.tth103_4  &
   location = -0.1041666667, -0.3489583333, -0.183  &
      , -0.1041666667, -0.2771458333, 0.0  &
      , -0.1041666667, -0.24225, 0.0  &
      , -0.1041666667, -0.24225, -0.183  &
      , -0.1041666667, -0.3489583333, -0.183  &
   close = yes
!
geometry attributes  &
   geometry_name = .test_analysis_1.example_stabilizer_02_B.tth103_4  &
   color = MedOrchid
!
geometry create curve polyline  &
   polyline_name = .test_analysis_1.example_stabilizer_02_B.tth104_4  &
   location = 0.1041666666, -0.24225, 0.0  &
      , 0.1041666666, -0.2771458333, 0.0  &
      , -0.1041666667, -0.2771458333, 0.0  &
      , -0.1041666667, -0.24225, 0.0  &
      , 0.1041666666, -0.24225, 0.0  &
   close = yes
!
geometry attributes  &
   geometry_name = .test_analysis_1.example_stabilizer_02_B.tth104_4  &
   color = MedOrchid
!
geometry create curve polyline  &
   polyline_name = .test_analysis_1.example_stabilizer_02_B.tth21_4  &
   location = 0.1041666666, -0.24225, -1.647  &
      , 0.1041666666, -0.24225, -1.464  &
      , 0.1041666666, -0.3489583334, -1.464  &
      , 0.1041666666, -0.3489583334, -1.647  &
      , 0.1041666666, -0.24225, -1.647  &
   close = yes
!
geometry attributes  &
   geometry_name = .test_analysis_1.example_stabilizer_02_B.tth21_4  &
   color = MedOrchid
!
geometry create curve polyline  &
   polyline_name = .test_analysis_1.example_stabilizer_02_B.tth22_4  &
   location = 0.1041666666, -0.3489583334, -1.647  &
      , 0.1041666666, -0.3489583334, -1.464  &
      , -0.1041666667, -0.3489583334, -1.464  &
      , -0.1041666667, -0.3489583334, -1.647  &
      , 0.1041666666, -0.3489583334, -1.647  &
   close = yes
!
geometry attributes  &
   geometry_name = .test_analysis_1.example_stabilizer_02_B.tth22_4  &
   color = SILVER
!
geometry create curve polyline  &
   polyline_name = .test_analysis_1.example_stabilizer_02_B.tth23_4  &
   location = -0.1041666667, -0.3489583334, -1.647  &
      , -0.1041666667, -0.3489583334, -1.464  &
      , -0.1041666667, -0.24225, -1.464  &
      , -0.1041666667, -0.24225, -1.647  &
      , -0.1041666667, -0.3489583334, -1.647  &
   close = yes
!
geometry attributes  &
   geometry_name = .test_analysis_1.example_stabilizer_02_B.tth23_4  &
   color = MedOrchid
!
geometry create curve polyline  &
   polyline_name = .test_analysis_1.example_stabilizer_02_B.tth31_4  &
   location = 0.1041666666, -0.24225, -1.464  &
      , 0.1041666666, -0.24225, -1.281  &
      , 0.1041666666, -0.3489583334, -1.281  &
      , 0.1041666666, -0.3489583334, -1.464  &
      , 0.1041666666, -0.24225, -1.464  &
   close = yes
!
geometry attributes  &
   geometry_name = .test_analysis_1.example_stabilizer_02_B.tth31_4  &
   color = MedOrchid
!
geometry create curve polyline  &
   polyline_name = .test_analysis_1.example_stabilizer_02_B.tth32_4  &
   location = 0.1041666666, -0.3489583334, -1.464  &
      , 0.1041666666, -0.3489583334, -1.281  &
      , -0.1041666667, -0.3489583334, -1.281  &
      , -0.1041666667, -0.3489583334, -1.464  &
      , 0.1041666666, -0.3489583334, -1.464  &
   close = yes
!
geometry attributes  &
   geometry_name = .test_analysis_1.example_stabilizer_02_B.tth32_4  &
   color = SILVER
!
geometry create curve polyline  &
   polyline_name = .test_analysis_1.example_stabilizer_02_B.tth33_4  &
   location = -0.1041666667, -0.3489583334, -1.464  &
      , -0.1041666667, -0.3489583334, -1.281  &
      , -0.1041666667, -0.24225, -1.281  &
      , -0.1041666667, -0.24225, -1.464  &
      , -0.1041666667, -0.3489583334, -1.464  &
   close = yes
!
geometry attributes  &
   geometry_name = .test_analysis_1.example_stabilizer_02_B.tth33_4  &
   color = MedOrchid
!
geometry create curve polyline  &
   polyline_name = .test_analysis_1.example_stabilizer_02_B.tth41_4  &
   location = 0.1041666666, -0.24225, -1.281  &
      , 0.1041666666, -0.24225, -1.098  &
      , 0.1041666666, -0.3489583333, -1.098  &
      , 0.1041666666, -0.3489583334, -1.281  &
      , 0.1041666666, -0.24225, -1.281  &
   close = yes
!
geometry attributes  &
   geometry_name = .test_analysis_1.example_stabilizer_02_B.tth41_4  &
   color = MedOrchid
!
geometry create curve polyline  &
   polyline_name = .test_analysis_1.example_stabilizer_02_B.tth42_4  &
   location = 0.1041666666, -0.3489583334, -1.281  &
      , 0.1041666666, -0.3489583333, -1.098  &
      , -0.1041666667, -0.3489583333, -1.098  &
      , -0.1041666667, -0.3489583334, -1.281  &
      , 0.1041666666, -0.3489583334, -1.281  &
   close = yes
!
geometry attributes  &
   geometry_name = .test_analysis_1.example_stabilizer_02_B.tth42_4  &
   color = SILVER
!
geometry create curve polyline  &
   polyline_name = .test_analysis_1.example_stabilizer_02_B.tth43_4  &
   location = -0.1041666667, -0.3489583334, -1.281  &
      , -0.1041666667, -0.3489583333, -1.098  &
      , -0.1041666667, -0.24225, -1.098  &
      , -0.1041666667, -0.24225, -1.281  &
      , -0.1041666667, -0.3489583334, -1.281  &
   close = yes
!
geometry attributes  &
   geometry_name = .test_analysis_1.example_stabilizer_02_B.tth43_4  &
   color = MedOrchid
!
geometry create curve polyline  &
   polyline_name = .test_analysis_1.example_stabilizer_02_B.tth51_4  &
   location = 0.1041666666, -0.24225, -1.098  &
      , 0.1041666666, -0.24225, -0.915  &
      , 0.1041666666, -0.3489583333, -0.915  &
      , 0.1041666666, -0.3489583333, -1.098  &
      , 0.1041666666, -0.24225, -1.098  &
   close = yes
!
geometry attributes  &
   geometry_name = .test_analysis_1.example_stabilizer_02_B.tth51_4  &
   color = MedOrchid
!
geometry create curve polyline  &
   polyline_name = .test_analysis_1.example_stabilizer_02_B.tth52_4  &
   location = 0.1041666666, -0.3489583333, -1.098  &
      , 0.1041666666, -0.3489583333, -0.915  &
      , -0.1041666667, -0.3489583333, -0.915  &
      , -0.1041666667, -0.3489583333, -1.098  &
      , 0.1041666666, -0.3489583333, -1.098  &
   close = yes
!
geometry attributes  &
   geometry_name = .test_analysis_1.example_stabilizer_02_B.tth52_4  &
   color = SILVER
!
geometry create curve polyline  &
   polyline_name = .test_analysis_1.example_stabilizer_02_B.tth53_4  &
   location = -0.1041666667, -0.3489583333, -1.098  &
      , -0.1041666667, -0.3489583333, -0.915  &
      , -0.1041666667, -0.24225, -0.915  &
      , -0.1041666667, -0.24225, -1.098  &
      , -0.1041666667, -0.3489583333, -1.098  &
   close = yes
!
geometry attributes  &
   geometry_name = .test_analysis_1.example_stabilizer_02_B.tth53_4  &
   color = MedOrchid
!
geometry create curve polyline  &
   polyline_name = .test_analysis_1.example_stabilizer_02_B.tth61_4  &
   location = 0.1041666666, -0.24225, -0.915  &
      , 0.1041666666, -0.24225, -0.732  &
      , 0.1041666666, -0.3489583333, -0.732  &
      , 0.1041666666, -0.3489583333, -0.915  &
      , 0.1041666666, -0.24225, -0.915  &
   close = yes
!
geometry attributes  &
   geometry_name = .test_analysis_1.example_stabilizer_02_B.tth61_4  &
   color = MedOrchid
!
geometry create curve polyline  &
   polyline_name = .test_analysis_1.example_stabilizer_02_B.tth62_4  &
   location = 0.1041666666, -0.3489583333, -0.915  &
      , 0.1041666666, -0.3489583333, -0.732  &
      , -0.1041666667, -0.3489583333, -0.732  &
      , -0.1041666667, -0.3489583333, -0.915  &
      , 0.1041666666, -0.3489583333, -0.915  &
   close = yes
!
geometry attributes  &
   geometry_name = .test_analysis_1.example_stabilizer_02_B.tth62_4  &
   color = SILVER
!
geometry create curve polyline  &
   polyline_name = .test_analysis_1.example_stabilizer_02_B.tth63_4  &
   location = -0.1041666667, -0.3489583333, -0.915  &
      , -0.1041666667, -0.3489583333, -0.732  &
      , -0.1041666667, -0.24225, -0.732  &
      , -0.1041666667, -0.24225, -0.915  &
      , -0.1041666667, -0.3489583333, -0.915  &
   close = yes
!
geometry attributes  &
   geometry_name = .test_analysis_1.example_stabilizer_02_B.tth63_4  &
   color = MedOrchid
!
geometry create curve polyline  &
   polyline_name = .test_analysis_1.example_stabilizer_02_B.tth71_4  &
   location = 0.1041666666, -0.24225, -0.732  &
      , 0.1041666666, -0.24225, -0.549  &
      , 0.1041666666, -0.3489583333, -0.549  &
      , 0.1041666666, -0.3489583333, -0.732  &
      , 0.1041666666, -0.24225, -0.732  &
   close = yes
!
geometry attributes  &
   geometry_name = .test_analysis_1.example_stabilizer_02_B.tth71_4  &
   color = MedOrchid
!
geometry create curve polyline  &
   polyline_name = .test_analysis_1.example_stabilizer_02_B.tth72_4  &
   location = 0.1041666666, -0.3489583333, -0.732  &
      , 0.1041666666, -0.3489583333, -0.549  &
      , -0.1041666667, -0.3489583333, -0.549  &
      , -0.1041666667, -0.3489583333, -0.732  &
      , 0.1041666666, -0.3489583333, -0.732  &
   close = yes
!
geometry attributes  &
   geometry_name = .test_analysis_1.example_stabilizer_02_B.tth72_4  &
   color = SILVER
!
geometry create curve polyline  &
   polyline_name = .test_analysis_1.example_stabilizer_02_B.tth73_4  &
   location = -0.1041666667, -0.3489583333, -0.732  &
      , -0.1041666667, -0.3489583333, -0.549  &
      , -0.1041666667, -0.24225, -0.549  &
      , -0.1041666667, -0.24225, -0.732  &
      , -0.1041666667, -0.3489583333, -0.732  &
   close = yes
!
geometry attributes  &
   geometry_name = .test_analysis_1.example_stabilizer_02_B.tth73_4  &
   color = MedOrchid
!
geometry create curve polyline  &
   polyline_name = .test_analysis_1.example_stabilizer_02_B.tth81_4  &
   location = 0.1041666666, -0.24225, -0.549  &
      , 0.1041666666, -0.24225, -0.366  &
      , 0.1041666666, -0.3489583333, -0.366  &
      , 0.1041666666, -0.3489583333, -0.549  &
      , 0.1041666666, -0.24225, -0.549  &
   close = yes
!
geometry attributes  &
   geometry_name = .test_analysis_1.example_stabilizer_02_B.tth81_4  &
   color = MedOrchid
!
geometry create curve polyline  &
   polyline_name = .test_analysis_1.example_stabilizer_02_B.tth82_4  &
   location = 0.1041666666, -0.3489583333, -0.549  &
      , 0.1041666666, -0.3489583333, -0.366  &
      , -0.1041666667, -0.3489583333, -0.366  &
      , -0.1041666667, -0.3489583333, -0.549  &
      , 0.1041666666, -0.3489583333, -0.549  &
   close = yes
!
geometry attributes  &
   geometry_name = .test_analysis_1.example_stabilizer_02_B.tth82_4  &
   color = SILVER
!
geometry create curve polyline  &
   polyline_name = .test_analysis_1.example_stabilizer_02_B.tth83_4  &
   location = -0.1041666667, -0.3489583333, -0.549  &
      , -0.1041666667, -0.3489583333, -0.366  &
      , -0.1041666667, -0.24225, -0.366  &
      , -0.1041666667, -0.24225, -0.549  &
      , -0.1041666667, -0.3489583333, -0.549  &
   close = yes
!
geometry attributes  &
   geometry_name = .test_analysis_1.example_stabilizer_02_B.tth83_4  &
   color = MedOrchid
!
geometry create curve polyline  &
   polyline_name = .test_analysis_1.example_stabilizer_02_B.tth91_4  &
   location = 0.1041666666, -0.24225, -0.366  &
      , 0.1041666666, -0.24225, -0.183  &
      , 0.1041666666, -0.3489583333, -0.183  &
      , 0.1041666666, -0.3489583333, -0.366  &
      , 0.1041666666, -0.24225, -0.366  &
   close = yes
!
geometry attributes  &
   geometry_name = .test_analysis_1.example_stabilizer_02_B.tth91_4  &
   color = MedOrchid
!
geometry create curve polyline  &
   polyline_name = .test_analysis_1.example_stabilizer_02_B.tth92_4  &
   location = 0.1041666666, -0.3489583333, -0.366  &
      , 0.1041666666, -0.3489583333, -0.183  &
      , -0.1041666667, -0.3489583333, -0.183  &
      , -0.1041666667, -0.3489583333, -0.366  &
      , 0.1041666666, -0.3489583333, -0.366  &
   close = yes
!
geometry attributes  &
   geometry_name = .test_analysis_1.example_stabilizer_02_B.tth92_4  &
   color = SILVER
!
geometry create curve polyline  &
   polyline_name = .test_analysis_1.example_stabilizer_02_B.tth93_4  &
   location = -0.1041666667, -0.3489583333, -0.366  &
      , -0.1041666667, -0.3489583333, -0.183  &
      , -0.1041666667, -0.24225, -0.183  &
      , -0.1041666667, -0.24225, -0.366  &
      , -0.1041666667, -0.3489583333, -0.366  &
   close = yes
!
geometry attributes  &
   geometry_name = .test_analysis_1.example_stabilizer_02_B.tth93_4  &
   color = MedOrchid
!
!----------------------- example_stabilizer_02_sliderB ------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .test_analysis_1.ground
!
part create rigid_body name_and_position  &
   part_name = .test_analysis_1.example_stabilizer_02_sliderB  &
   adams_id = 9000301  &
   location = 707.1269084541, 0.0, 1502.0004494472  &
   orientation = 90.0d, 89.9972021726d, 270.0d
!
defaults coordinate_system  &
   default_coordinate_system = .test_analysis_1.example_stabilizer_02_sliderB
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .test_analysis_1.example_stabilizer_02_sliderB.cm  &
   adams_id = 9000301  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .test_analysis_1.example_stabilizer_02_sliderB.B1  &
   adams_id = 9006337  &
   location = 0.0, 0.0, 0.3  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .test_analysis_1.example_stabilizer_02_sliderB.B2  &
   adams_id = 9006338  &
   location = 0.0, 0.0, -0.3  &
   orientation = 0.0d, 0.0d, 0.0d
!
! ****** Floating Markers for current part ******
!
floating_marker create  &
   floating_marker_name = .test_analysis_1.example_stabilizer_02_sliderB.FMARKER_9000309  &
   adams_id = 9000309
!
part create rigid_body mass_properties  &
   part_name = .test_analysis_1.example_stabilizer_02_sliderB  &
   density = 0.1
!
! ****** Graphics for current part ******
!
geometry create shape cylinder  &
   cylinder_name = .test_analysis_1.example_stabilizer_02_sliderB.example_stabilizer_02_sliderBgraphic  &
   adams_id = 3219  &
   center_marker = .test_analysis_1.example_stabilizer_02_sliderB.B2  &
   angle_extent = 360.0  &
   length = 0.6  &
   radius = 7.0E-02  &
   side_count_for_body = 4  &
   segment_count_for_ends = 4
!
geometry attributes  &
   geometry_name = .test_analysis_1.example_stabilizer_02_sliderB.example_stabilizer_02_sliderBgraphic  &
   color = MidnightBlue2  &
   render = wireframe
!
geometry create curve circle  &
   circle_name = .test_analysis_1.example_stabilizer_02_sliderB.ghole  &
   adams_id = 3149  &
   center_marker = .test_analysis_1.example_stabilizer_02_sliderB.cm  &
   radius = 0.54175  &
   segment_count = 24
!
geometry attributes  &
   geometry_name = .test_analysis_1.example_stabilizer_02_sliderB.ghole  &
   color = BLUE  &
   render = wireframe
!
!----------------------------- Upper_DP_Group1_A ------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .test_analysis_1.ground
!
part create rigid_body name_and_position  &
   part_name = .test_analysis_1.Upper_DP_Group1_A  &
   adams_id = 9000400  &
   location = 704.6139370839, 0.0, 1502.000326728  &
   orientation = 90.0d, 89.9955181698d, 270.0d
!
defaults coordinate_system  &
   default_coordinate_system = .test_analysis_1.Upper_DP_Group1_A
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group1_A.end_A  &
   adams_id = 9000400  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group1_A.cm  &
   adams_id = 9006339  &
   location = 0.0, 0.0, -3.0117709993  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group1_A.gmark1  &
   adams_id = 9006340  &
   location = 0.0, 0.0, -1.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group1_A.end_beamA  &
   adams_id = 9006341  &
   location = 0.0, 0.0, -1.0  &
   orientation = 0.0d, 90.0d, 90.0d
!
part create rigid_body mass_properties  &
   part_name = .test_analysis_1.Upper_DP_Group1_A  &
   mass = 7.743482937  &
   center_of_mass_marker = .test_analysis_1.Upper_DP_Group1_A.cm  &
   ixx = 53.8655360846  &
   iyy = 53.8655360846  &
   izz = 0.3323288305  &
   ixy = 0.0  &
   izx = 0.0  &
   iyz = 0.0
!
! ****** Graphics for current part ******
!
geometry create shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group1_A.cyl1  &
   adams_id = 3220  &
   center_marker = .test_analysis_1.Upper_DP_Group1_A.end_A  &
   angle_extent = 360.0  &
   length = -1.0  &
   radius = 0.29165  &
   side_count_for_body = 16  &
   segment_count_for_ends = 16
!
geometry attributes  &
   geometry_name = .test_analysis_1.Upper_DP_Group1_A.cyl1  &
   color = LtGray
!
geometry create shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group1_A.cyl1a  &
   adams_id = 3221  &
   center_marker = .test_analysis_1.Upper_DP_Group1_A.end_A  &
   angle_extent = 6.0  &
   length = -1.0  &
   radius = 0.2945665  &
   side_count_for_body = 3  &
   segment_count_for_ends = 3
!
geometry attributes  &
   geometry_name = .test_analysis_1.Upper_DP_Group1_A.cyl1a  &
   color = RED
!
geometry create shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group1_A.cyl2  &
   adams_id = 3222  &
   center_marker = .test_analysis_1.Upper_DP_Group1_A.gmark1  &
   angle_extent = 360.0  &
   length = -6.75  &
   radius = 0.20835  &
   side_count_for_body = 16  &
   segment_count_for_ends = 16
!
geometry attributes  &
   geometry_name = .test_analysis_1.Upper_DP_Group1_A.cyl2  &
   color = Gray
!
geometry create shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group1_A.cyl2a  &
   adams_id = 3223  &
   center_marker = .test_analysis_1.Upper_DP_Group1_A.gmark1  &
   angle_extent = 6.0  &
   length = -6.75  &
   radius = 0.2104335  &
   side_count_for_body = 3  &
   segment_count_for_ends = 3
!
geometry attributes  &
   geometry_name = .test_analysis_1.Upper_DP_Group1_A.cyl2a  &
   color = RED
!
!----------------------------- Upper_DP_Group1_B ------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .test_analysis_1.ground
!
part create rigid_body name_and_position  &
   part_name = .test_analysis_1.Upper_DP_Group1_B  &
   adams_id = 9000500  &
   location = 696.8646169151, 0.0, 1501.9997205553  &
   orientation = 90.0d, 89.9930839743d, 270.0d
!
defaults coordinate_system  &
   default_coordinate_system = .test_analysis_1.Upper_DP_Group1_B
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group1_B.end_B  &
   adams_id = 9006342  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group1_B.cm  &
   adams_id = 9000500  &
   location = 0.0, 0.0, -7.75  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group1_B.end_beamB  &
   adams_id = 9006343  &
   location = 0.0, 0.0, -7.75  &
   orientation = 0.0d, 90.0d, 90.0d
!
part create rigid_body mass_properties  &
   part_name = .test_analysis_1.Upper_DP_Group1_B  &
   mass = 11.5258405181  &
   center_of_mass_marker = .test_analysis_1.Upper_DP_Group1_B.cm  &
   ixx = 294.0966081325  &
   iyy = 294.0966081325  &
   izz = 0.4102158729  &
   ixy = 0.0  &
   izx = 0.0  &
   iyz = 0.0
!
! ****** Graphics for current part ******
!
geometry create shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group1_B.cyl1  &
   adams_id = 3224  &
   center_marker = .test_analysis_1.Upper_DP_Group1_B.end_B  &
   angle_extent = 360.0  &
   length = -15.5  &
   radius = 0.20835  &
   side_count_for_body = 16  &
   segment_count_for_ends = 16
!
geometry attributes  &
   geometry_name = .test_analysis_1.Upper_DP_Group1_B.cyl1  &
   color = Gray
!
geometry create shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group1_B.cyl1a  &
   adams_id = 3225  &
   center_marker = .test_analysis_1.Upper_DP_Group1_B.end_B  &
   angle_extent = 6.0  &
   length = -15.5  &
   radius = 0.2104335  &
   side_count_for_body = 3  &
   segment_count_for_ends = 3
!
geometry attributes  &
   geometry_name = .test_analysis_1.Upper_DP_Group1_B.cyl1a  &
   color = RED
!
geometry create curve circle  &
   circle_name = .test_analysis_1.Upper_DP_Group1_B.rub1  &
   adams_id = 3150  &
   center_marker = .test_analysis_1.Upper_DP_Group1_B.cm  &
   radius = 0.25  &
   segment_count = 16
!
geometry attributes  &
   geometry_name = .test_analysis_1.Upper_DP_Group1_B.rub1  &
   color = Gray
!
!-------------------------- Upper_DP_Group1_sliderA ---------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .test_analysis_1.ground
!
part create rigid_body name_and_position  &
   part_name = .test_analysis_1.Upper_DP_Group1_sliderA  &
   adams_id = 9000401  &
   location = 704.6139370839, 0.0, 1502.000326728  &
   orientation = 90.0d, 89.9955181698d, 270.0d
!
defaults coordinate_system  &
   default_coordinate_system = .test_analysis_1.Upper_DP_Group1_sliderA
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group1_sliderA.cm  &
   adams_id = 9000401  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group1_sliderA.A1  &
   adams_id = 9006347  &
   location = 0.0, 0.0, 0.3  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group1_sliderA.A2  &
   adams_id = 9006348  &
   location = 0.0, 0.0, -0.3  &
   orientation = 0.0d, 0.0d, 0.0d
!
! ****** Floating Markers for current part ******
!
floating_marker create  &
   floating_marker_name = .test_analysis_1.Upper_DP_Group1_sliderA.FMARKER_9000607  &
   adams_id = 9000607
!
part create rigid_body mass_properties  &
   part_name = .test_analysis_1.Upper_DP_Group1_sliderA  &
   density = 0.1
!
! ****** Graphics for current part ******
!
geometry create shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group1_sliderA.Upper_DP_Group1_sliderAgraphic  &
   adams_id = 3230  &
   center_marker = .test_analysis_1.Upper_DP_Group1_sliderA.A2  &
   angle_extent = 360.0  &
   length = 0.6  &
   radius = 7.0E-02  &
   side_count_for_body = 4  &
   segment_count_for_ends = 4
!
geometry attributes  &
   geometry_name = .test_analysis_1.Upper_DP_Group1_sliderA.Upper_DP_Group1_sliderAgraphic  &
   color = MidnightBlue2  &
   render = wireframe
!
geometry create curve circle  &
   circle_name = .test_analysis_1.Upper_DP_Group1_sliderA.ghole  &
   adams_id = 3151  &
   center_marker = .test_analysis_1.Upper_DP_Group1_sliderA.cm  &
   radius = 0.54175  &
   segment_count = 24
!
geometry attributes  &
   geometry_name = .test_analysis_1.Upper_DP_Group1_sliderA.ghole  &
   color = BLUE  &
   render = wireframe
!
!----------------------------- Upper_DP_Group1_C ------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .test_analysis_1.ground
!
part create rigid_body name_and_position  &
   part_name = .test_analysis_1.Upper_DP_Group1_C  &
   adams_id = 9000600  &
   location = 673.6160808865, 0.0, 1501.9967509003  &
   orientation = 90.0d, 89.9918759604d, 270.0d
!
defaults coordinate_system  &
   default_coordinate_system = .test_analysis_1.Upper_DP_Group1_C
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group1_C.gmark2  &
   adams_id = 9006346  &
   location = 0.0, 0.0, 7.7492680529  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group1_C.end_C  &
   adams_id = 9000600  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group1_C.cm  &
   adams_id = 9006344  &
   location = 0.0, 0.0, 3.0112965519  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group1_C.end_beamC  &
   adams_id = 9006345  &
   location = 0.0, 0.0, 1.0  &
   orientation = 0.0d, 90.0d, 90.0d
!
part create rigid_body mass_properties  &
   part_name = .test_analysis_1.Upper_DP_Group1_C  &
   mass = 7.743482937  &
   center_of_mass_marker = .test_analysis_1.Upper_DP_Group1_C.cm  &
   ixx = 53.8555203645  &
   iyy = 53.8555203645  &
   izz = 0.3323288305  &
   ixy = 0.0  &
   izx = 0.0  &
   iyz = 0.0
!
! ****** Graphics for current part ******
!
geometry create shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group1_C.cyl1a  &
   adams_id = 3228  &
   center_marker = .test_analysis_1.Upper_DP_Group1_C.end_C  &
   angle_extent = 6.0  &
   length = 1.0  &
   radius = 0.2945665  &
   side_count_for_body = 3  &
   segment_count_for_ends = 3
!
geometry attributes  &
   geometry_name = .test_analysis_1.Upper_DP_Group1_C.cyl1a  &
   color = RED
!
geometry create shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group1_C.cyl1  &
   adams_id = 3229  &
   center_marker = .test_analysis_1.Upper_DP_Group1_C.end_C  &
   angle_extent = 360.0  &
   length = 1.0  &
   radius = 0.29165  &
   side_count_for_body = 16  &
   segment_count_for_ends = 16
!
geometry attributes  &
   geometry_name = .test_analysis_1.Upper_DP_Group1_C.cyl1  &
   color = LtGray
!
geometry create shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group1_C.cyl2  &
   adams_id = 3226  &
   center_marker = .test_analysis_1.Upper_DP_Group1_C.gmark2  &
   angle_extent = 360.0  &
   length = -6.75  &
   radius = 0.20835  &
   side_count_for_body = 16  &
   segment_count_for_ends = 16
!
geometry attributes  &
   geometry_name = .test_analysis_1.Upper_DP_Group1_C.cyl2  &
   color = Gray
!
geometry create shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group1_C.cyl2a  &
   adams_id = 3227  &
   center_marker = .test_analysis_1.Upper_DP_Group1_C.gmark2  &
   angle_extent = 6.0  &
   length = -6.75  &
   radius = 0.2104335  &
   side_count_for_body = 3  &
   segment_count_for_ends = 3
!
geometry attributes  &
   geometry_name = .test_analysis_1.Upper_DP_Group1_C.cyl2a  &
   color = RED
!
!-------------------------- Upper_DP_Group1_sliderB ---------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .test_analysis_1.ground
!
part create rigid_body name_and_position  &
   part_name = .test_analysis_1.Upper_DP_Group1_sliderB  &
   adams_id = 9000501  &
   location = 689.1146169716, 0.0, 1501.9987850728  &
   orientation = 90.0d, 89.9930839743d, 270.0d
!
defaults coordinate_system  &
   default_coordinate_system = .test_analysis_1.Upper_DP_Group1_sliderB
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group1_sliderB.cm  &
   adams_id = 9000501  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group1_sliderB.B1  &
   adams_id = 9006349  &
   location = 0.0, 0.0, 0.3  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group1_sliderB.B2  &
   adams_id = 9006350  &
   location = 0.0, 0.0, -0.3  &
   orientation = 0.0d, 0.0d, 0.0d
!
! ****** Floating Markers for current part ******
!
floating_marker create  &
   floating_marker_name = .test_analysis_1.Upper_DP_Group1_sliderB.FMARKER_9000608  &
   adams_id = 9000608
!
part create rigid_body mass_properties  &
   part_name = .test_analysis_1.Upper_DP_Group1_sliderB  &
   density = 0.1
!
! ****** Graphics for current part ******
!
geometry create shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group1_sliderB.Upper_DP_Group1_sliderBgraphic  &
   adams_id = 3231  &
   center_marker = .test_analysis_1.Upper_DP_Group1_sliderB.B2  &
   angle_extent = 360.0  &
   length = 0.6  &
   radius = 7.0E-02  &
   side_count_for_body = 4  &
   segment_count_for_ends = 4
!
geometry attributes  &
   geometry_name = .test_analysis_1.Upper_DP_Group1_sliderB.Upper_DP_Group1_sliderBgraphic  &
   color = MidnightBlue2  &
   render = wireframe
!
geometry create curve circle  &
   circle_name = .test_analysis_1.Upper_DP_Group1_sliderB.ghole  &
   adams_id = 3152  &
   center_marker = .test_analysis_1.Upper_DP_Group1_sliderB.cm  &
   radius = 0.54175  &
   segment_count = 24
!
geometry attributes  &
   geometry_name = .test_analysis_1.Upper_DP_Group1_sliderB.ghole  &
   color = BLUE  &
   render = wireframe
!
!----------------------------- Upper_DP_Group2_A ------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .test_analysis_1.ground
!
part create rigid_body name_and_position  &
   part_name = .test_analysis_1.Upper_DP_Group2_A  &
   adams_id = 9000700  &
   location = 673.6140755871, 0.0, 1501.9967506109  &
   orientation = 90.0d, 89.9917392276d, 270.0d
!
defaults coordinate_system  &
   default_coordinate_system = .test_analysis_1.Upper_DP_Group2_A
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group2_A.end_A  &
   adams_id = 9000700  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group2_A.cm  &
   adams_id = 9006351  &
   location = 0.0, 0.0, -3.0117709993  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group2_A.gmark1  &
   adams_id = 9006352  &
   location = 0.0, 0.0, -1.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group2_A.end_beamA  &
   adams_id = 9006353  &
   location = 0.0, 0.0, -1.0  &
   orientation = 0.0d, 90.0d, 90.0d
!
part create rigid_body mass_properties  &
   part_name = .test_analysis_1.Upper_DP_Group2_A  &
   mass = 7.743482937  &
   center_of_mass_marker = .test_analysis_1.Upper_DP_Group2_A.cm  &
   ixx = 53.8655360846  &
   iyy = 53.8655360846  &
   izz = 0.3323288305  &
   ixy = 0.0  &
   izx = 0.0  &
   iyz = 0.0
!
! ****** Graphics for current part ******
!
geometry create shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group2_A.cyl1  &
   adams_id = 3232  &
   center_marker = .test_analysis_1.Upper_DP_Group2_A.end_A  &
   angle_extent = 360.0  &
   length = -1.0  &
   radius = 0.29165  &
   side_count_for_body = 16  &
   segment_count_for_ends = 16
!
geometry attributes  &
   geometry_name = .test_analysis_1.Upper_DP_Group2_A.cyl1  &
   color = LtGray
!
geometry create shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group2_A.cyl1a  &
   adams_id = 3233  &
   center_marker = .test_analysis_1.Upper_DP_Group2_A.end_A  &
   angle_extent = 6.0  &
   length = -1.0  &
   radius = 0.2945665  &
   side_count_for_body = 3  &
   segment_count_for_ends = 3
!
geometry attributes  &
   geometry_name = .test_analysis_1.Upper_DP_Group2_A.cyl1a  &
   color = RED
!
geometry create shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group2_A.cyl2  &
   adams_id = 3234  &
   center_marker = .test_analysis_1.Upper_DP_Group2_A.gmark1  &
   angle_extent = 360.0  &
   length = -6.75  &
   radius = 0.20835  &
   side_count_for_body = 16  &
   segment_count_for_ends = 16
!
geometry attributes  &
   geometry_name = .test_analysis_1.Upper_DP_Group2_A.cyl2  &
   color = Gray
!
geometry create shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group2_A.cyl2a  &
   adams_id = 3235  &
   center_marker = .test_analysis_1.Upper_DP_Group2_A.gmark1  &
   angle_extent = 6.0  &
   length = -6.75  &
   radius = 0.2104335  &
   side_count_for_body = 3  &
   segment_count_for_ends = 3
!
geometry attributes  &
   geometry_name = .test_analysis_1.Upper_DP_Group2_A.cyl2a  &
   color = RED
!
!----------------------------- Upper_DP_Group2_B ------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .test_analysis_1.ground
!
part create rigid_body name_and_position  &
   part_name = .test_analysis_1.Upper_DP_Group2_B  &
   adams_id = 9000800  &
   location = 665.8648249903, 0.0, 1501.995633342  &
   orientation = 90.0d, 89.9924803495d, 270.0d
!
defaults coordinate_system  &
   default_coordinate_system = .test_analysis_1.Upper_DP_Group2_B
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group2_B.end_B  &
   adams_id = 9006354  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group2_B.cm  &
   adams_id = 9000800  &
   location = 0.0, 0.0, -7.75  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group2_B.end_beamB  &
   adams_id = 9006355  &
   location = 0.0, 0.0, -7.75  &
   orientation = 0.0d, 90.0d, 90.0d
!
part create rigid_body mass_properties  &
   part_name = .test_analysis_1.Upper_DP_Group2_B  &
   mass = 11.5258405181  &
   center_of_mass_marker = .test_analysis_1.Upper_DP_Group2_B.cm  &
   ixx = 294.0966081325  &
   iyy = 294.0966081325  &
   izz = 0.4102158729  &
   ixy = 0.0  &
   izx = 0.0  &
   iyz = 0.0
!
! ****** Graphics for current part ******
!
geometry create shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group2_B.cyl1  &
   adams_id = 3236  &
   center_marker = .test_analysis_1.Upper_DP_Group2_B.end_B  &
   angle_extent = 360.0  &
   length = -15.5  &
   radius = 0.20835  &
   side_count_for_body = 16  &
   segment_count_for_ends = 16
!
geometry attributes  &
   geometry_name = .test_analysis_1.Upper_DP_Group2_B.cyl1  &
   color = Gray
!
geometry create shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group2_B.cyl1a  &
   adams_id = 3237  &
   center_marker = .test_analysis_1.Upper_DP_Group2_B.end_B  &
   angle_extent = 6.0  &
   length = -15.5  &
   radius = 0.2104335  &
   side_count_for_body = 3  &
   segment_count_for_ends = 3
!
geometry attributes  &
   geometry_name = .test_analysis_1.Upper_DP_Group2_B.cyl1a  &
   color = RED
!
geometry create curve circle  &
   circle_name = .test_analysis_1.Upper_DP_Group2_B.rub1  &
   adams_id = 3153  &
   center_marker = .test_analysis_1.Upper_DP_Group2_B.cm  &
   radius = 0.25  &
   segment_count = 16
!
geometry attributes  &
   geometry_name = .test_analysis_1.Upper_DP_Group2_B.rub1  &
   color = Gray
!
!-------------------------- Upper_DP_Group2_sliderA ---------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .test_analysis_1.ground
!
part create rigid_body name_and_position  &
   part_name = .test_analysis_1.Upper_DP_Group2_sliderA  &
   adams_id = 9000701  &
   location = 673.6140755871, 0.0, 1501.9967506109  &
   orientation = 90.0d, 89.9917392276d, 270.0d
!
defaults coordinate_system  &
   default_coordinate_system = .test_analysis_1.Upper_DP_Group2_sliderA
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group2_sliderA.cm  &
   adams_id = 9000701  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group2_sliderA.A1  &
   adams_id = 9006359  &
   location = 0.0, 0.0, 0.3  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group2_sliderA.A2  &
   adams_id = 9006360  &
   location = 0.0, 0.0, -0.3  &
   orientation = 0.0d, 0.0d, 0.0d
!
! ****** Floating Markers for current part ******
!
floating_marker create  &
   floating_marker_name = .test_analysis_1.Upper_DP_Group2_sliderA.FMARKER_9000907  &
   adams_id = 9000907
!
part create rigid_body mass_properties  &
   part_name = .test_analysis_1.Upper_DP_Group2_sliderA  &
   density = 0.1
!
! ****** Graphics for current part ******
!
geometry create shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group2_sliderA.Upper_DP_Group2_sliderAgraphic  &
   adams_id = 3242  &
   center_marker = .test_analysis_1.Upper_DP_Group2_sliderA.A2  &
   angle_extent = 360.0  &
   length = 0.6  &
   radius = 7.0E-02  &
   side_count_for_body = 4  &
   segment_count_for_ends = 4
!
geometry attributes  &
   geometry_name = .test_analysis_1.Upper_DP_Group2_sliderA.Upper_DP_Group2_sliderAgraphic  &
   color = MidnightBlue2  &
   render = wireframe
!
geometry create curve circle  &
   circle_name = .test_analysis_1.Upper_DP_Group2_sliderA.ghole  &
   adams_id = 3154  &
   center_marker = .test_analysis_1.Upper_DP_Group2_sliderA.cm  &
   radius = 0.54175  &
   segment_count = 24
!
geometry attributes  &
   geometry_name = .test_analysis_1.Upper_DP_Group2_sliderA.ghole  &
   color = BLUE  &
   render = wireframe
!
!----------------------------- Upper_DP_Group2_C ------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .test_analysis_1.ground
!
part create rigid_body name_and_position  &
   part_name = .test_analysis_1.Upper_DP_Group2_C  &
   adams_id = 9000900  &
   location = 642.6164275354, 0.0, 1501.992834513  &
   orientation = 90.0d, 89.9943461856d, 270.0d
!
defaults coordinate_system  &
   default_coordinate_system = .test_analysis_1.Upper_DP_Group2_C
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group2_C.gmark2  &
   adams_id = 9006358  &
   location = 0.0, 0.0, 7.7491989053  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group2_C.end_C  &
   adams_id = 9000900  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group2_C.cm  &
   adams_id = 9006356  &
   location = 0.0, 0.0, 3.0112517305  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group2_C.end_beamC  &
   adams_id = 9006357  &
   location = 0.0, 0.0, 1.0  &
   orientation = 0.0d, 90.0d, 90.0d
!
part create rigid_body mass_properties  &
   part_name = .test_analysis_1.Upper_DP_Group2_C  &
   mass = 7.743482937  &
   center_of_mass_marker = .test_analysis_1.Upper_DP_Group2_C.cm  &
   ixx = 53.8545742697  &
   iyy = 53.8545742697  &
   izz = 0.3323288305  &
   ixy = 0.0  &
   izx = 0.0  &
   iyz = 0.0
!
! ****** Graphics for current part ******
!
geometry create shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group2_C.cyl1a  &
   adams_id = 3240  &
   center_marker = .test_analysis_1.Upper_DP_Group2_C.end_C  &
   angle_extent = 6.0  &
   length = 1.0  &
   radius = 0.2945665  &
   side_count_for_body = 3  &
   segment_count_for_ends = 3
!
geometry attributes  &
   geometry_name = .test_analysis_1.Upper_DP_Group2_C.cyl1a  &
   color = RED
!
geometry create shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group2_C.cyl1  &
   adams_id = 3241  &
   center_marker = .test_analysis_1.Upper_DP_Group2_C.end_C  &
   angle_extent = 360.0  &
   length = 1.0  &
   radius = 0.29165  &
   side_count_for_body = 16  &
   segment_count_for_ends = 16
!
geometry attributes  &
   geometry_name = .test_analysis_1.Upper_DP_Group2_C.cyl1  &
   color = LtGray
!
geometry create shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group2_C.cyl2  &
   adams_id = 3238  &
   center_marker = .test_analysis_1.Upper_DP_Group2_C.gmark2  &
   angle_extent = 360.0  &
   length = -6.75  &
   radius = 0.20835  &
   side_count_for_body = 16  &
   segment_count_for_ends = 16
!
geometry attributes  &
   geometry_name = .test_analysis_1.Upper_DP_Group2_C.cyl2  &
   color = Gray
!
geometry create shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group2_C.cyl2a  &
   adams_id = 3239  &
   center_marker = .test_analysis_1.Upper_DP_Group2_C.gmark2  &
   angle_extent = 6.0  &
   length = -6.75  &
   radius = 0.2104335  &
   side_count_for_body = 3  &
   segment_count_for_ends = 3
!
geometry attributes  &
   geometry_name = .test_analysis_1.Upper_DP_Group2_C.cyl2a  &
   color = RED
!
!-------------------------- Upper_DP_Group2_sliderB ---------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .test_analysis_1.ground
!
part create rigid_body name_and_position  &
   part_name = .test_analysis_1.Upper_DP_Group2_sliderB  &
   adams_id = 9000801  &
   location = 658.114825057, 0.0, 1501.9946162114  &
   orientation = 90.0d, 89.9924803495d, 270.0d
!
defaults coordinate_system  &
   default_coordinate_system = .test_analysis_1.Upper_DP_Group2_sliderB
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group2_sliderB.cm  &
   adams_id = 9000801  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group2_sliderB.B1  &
   adams_id = 9006361  &
   location = 0.0, 0.0, 0.3  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group2_sliderB.B2  &
   adams_id = 9006362  &
   location = 0.0, 0.0, -0.3  &
   orientation = 0.0d, 0.0d, 0.0d
!
! ****** Floating Markers for current part ******
!
floating_marker create  &
   floating_marker_name = .test_analysis_1.Upper_DP_Group2_sliderB.FMARKER_9000908  &
   adams_id = 9000908
!
part create rigid_body mass_properties  &
   part_name = .test_analysis_1.Upper_DP_Group2_sliderB  &
   density = 0.1
!
! ****** Graphics for current part ******
!
geometry create shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group2_sliderB.Upper_DP_Group2_sliderBgraphic  &
   adams_id = 3243  &
   center_marker = .test_analysis_1.Upper_DP_Group2_sliderB.B2  &
   angle_extent = 360.0  &
   length = 0.6  &
   radius = 7.0E-02  &
   side_count_for_body = 4  &
   segment_count_for_ends = 4
!
geometry attributes  &
   geometry_name = .test_analysis_1.Upper_DP_Group2_sliderB.Upper_DP_Group2_sliderBgraphic  &
   color = MidnightBlue2  &
   render = wireframe
!
geometry create curve circle  &
   circle_name = .test_analysis_1.Upper_DP_Group2_sliderB.ghole  &
   adams_id = 3155  &
   center_marker = .test_analysis_1.Upper_DP_Group2_sliderB.cm  &
   radius = 0.54175  &
   segment_count = 24
!
geometry attributes  &
   geometry_name = .test_analysis_1.Upper_DP_Group2_sliderB.ghole  &
   color = BLUE  &
   render = wireframe
!
!----------------------------- Upper_DP_Group3_A ------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .test_analysis_1.ground
!
part create rigid_body name_and_position  &
   part_name = .test_analysis_1.Upper_DP_Group3_A  &
   adams_id = 9001000  &
   location = 642.6142143753, 0.0, 1501.9928343323  &
   orientation = 90.0d, 89.9966119423d, 270.0d
!
defaults coordinate_system  &
   default_coordinate_system = .test_analysis_1.Upper_DP_Group3_A
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group3_A.end_A  &
   adams_id = 9001000  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group3_A.cm  &
   adams_id = 9006363  &
   location = 0.0, 0.0, -3.0117709993  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group3_A.gmark1  &
   adams_id = 9006364  &
   location = 0.0, 0.0, -1.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group3_A.end_beamA  &
   adams_id = 9006365  &
   location = 0.0, 0.0, -1.0  &
   orientation = 0.0d, 90.0d, 90.0d
!
part create rigid_body mass_properties  &
   part_name = .test_analysis_1.Upper_DP_Group3_A  &
   mass = 7.743482937  &
   center_of_mass_marker = .test_analysis_1.Upper_DP_Group3_A.cm  &
   ixx = 53.8655360846  &
   iyy = 53.8655360846  &
   izz = 0.3323288305  &
   ixy = 0.0  &
   izx = 0.0  &
   iyz = 0.0
!
! ****** Graphics for current part ******
!
geometry create shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group3_A.cyl1  &
   adams_id = 3244  &
   center_marker = .test_analysis_1.Upper_DP_Group3_A.end_A  &
   angle_extent = 360.0  &
   length = -1.0  &
   radius = 0.29165  &
   side_count_for_body = 16  &
   segment_count_for_ends = 16
!
geometry attributes  &
   geometry_name = .test_analysis_1.Upper_DP_Group3_A.cyl1  &
   color = LtGray
!
geometry create shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group3_A.cyl1a  &
   adams_id = 3245  &
   center_marker = .test_analysis_1.Upper_DP_Group3_A.end_A  &
   angle_extent = 6.0  &
   length = -1.0  &
   radius = 0.2945665  &
   side_count_for_body = 3  &
   segment_count_for_ends = 3
!
geometry attributes  &
   geometry_name = .test_analysis_1.Upper_DP_Group3_A.cyl1a  &
   color = RED
!
geometry create shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group3_A.cyl2  &
   adams_id = 3246  &
   center_marker = .test_analysis_1.Upper_DP_Group3_A.gmark1  &
   angle_extent = 360.0  &
   length = -6.75  &
   radius = 0.20835  &
   side_count_for_body = 16  &
   segment_count_for_ends = 16
!
geometry attributes  &
   geometry_name = .test_analysis_1.Upper_DP_Group3_A.cyl2  &
   color = Gray
!
geometry create shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group3_A.cyl2a  &
   adams_id = 3247  &
   center_marker = .test_analysis_1.Upper_DP_Group3_A.gmark1  &
   angle_extent = 6.0  &
   length = -6.75  &
   radius = 0.2104335  &
   side_count_for_body = 3  &
   segment_count_for_ends = 3
!
geometry attributes  &
   geometry_name = .test_analysis_1.Upper_DP_Group3_A.cyl2a  &
   color = RED
!
!----------------------------- Upper_DP_Group3_B ------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .test_analysis_1.ground
!
part create rigid_body name_and_position  &
   part_name = .test_analysis_1.Upper_DP_Group3_B  &
   adams_id = 9001100  &
   location = 634.8650324938, 0.0, 1501.9923761017  &
   orientation = 90.0d, 90.002482533d, 270.0d
!
defaults coordinate_system  &
   default_coordinate_system = .test_analysis_1.Upper_DP_Group3_B
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group3_B.end_B  &
   adams_id = 9006366  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group3_B.cm  &
   adams_id = 9001100  &
   location = 0.0, 0.0, -7.75  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group3_B.end_beamB  &
   adams_id = 9006367  &
   location = 0.0, 0.0, -7.75  &
   orientation = 0.0d, 90.0d, 90.0d
!
part create rigid_body mass_properties  &
   part_name = .test_analysis_1.Upper_DP_Group3_B  &
   mass = 11.5258405181  &
   center_of_mass_marker = .test_analysis_1.Upper_DP_Group3_B.cm  &
   ixx = 294.0966081325  &
   iyy = 294.0966081325  &
   izz = 0.4102158729  &
   ixy = 0.0  &
   izx = 0.0  &
   iyz = 0.0
!
! ****** Graphics for current part ******
!
geometry create shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group3_B.cyl1  &
   adams_id = 3248  &
   center_marker = .test_analysis_1.Upper_DP_Group3_B.end_B  &
   angle_extent = 360.0  &
   length = -15.5  &
   radius = 0.20835  &
   side_count_for_body = 16  &
   segment_count_for_ends = 16
!
geometry attributes  &
   geometry_name = .test_analysis_1.Upper_DP_Group3_B.cyl1  &
   color = Gray
!
geometry create shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group3_B.cyl1a  &
   adams_id = 3249  &
   center_marker = .test_analysis_1.Upper_DP_Group3_B.end_B  &
   angle_extent = 6.0  &
   length = -15.5  &
   radius = 0.2104335  &
   side_count_for_body = 3  &
   segment_count_for_ends = 3
!
geometry attributes  &
   geometry_name = .test_analysis_1.Upper_DP_Group3_B.cyl1a  &
   color = RED
!
geometry create curve circle  &
   circle_name = .test_analysis_1.Upper_DP_Group3_B.rub1  &
   adams_id = 3156  &
   center_marker = .test_analysis_1.Upper_DP_Group3_B.cm  &
   radius = 0.25  &
   segment_count = 16
!
geometry attributes  &
   geometry_name = .test_analysis_1.Upper_DP_Group3_B.rub1  &
   color = Gray
!
!-------------------------- Upper_DP_Group3_sliderA ---------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .test_analysis_1.ground
!
part create rigid_body name_and_position  &
   part_name = .test_analysis_1.Upper_DP_Group3_sliderA  &
   adams_id = 9001001  &
   location = 642.6142143753, 0.0, 1501.9928343323  &
   orientation = 90.0d, 89.9966119423d, 270.0d
!
defaults coordinate_system  &
   default_coordinate_system = .test_analysis_1.Upper_DP_Group3_sliderA
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group3_sliderA.cm  &
   adams_id = 9001001  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group3_sliderA.A1  &
   adams_id = 9006371  &
   location = 0.0, 0.0, 0.3  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group3_sliderA.A2  &
   adams_id = 9006372  &
   location = 0.0, 0.0, -0.3  &
   orientation = 0.0d, 0.0d, 0.0d
!
! ****** Floating Markers for current part ******
!
floating_marker create  &
   floating_marker_name = .test_analysis_1.Upper_DP_Group3_sliderA.FMARKER_9001207  &
   adams_id = 9001207
!
part create rigid_body mass_properties  &
   part_name = .test_analysis_1.Upper_DP_Group3_sliderA  &
   density = 0.1
!
! ****** Graphics for current part ******
!
geometry create shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group3_sliderA.Upper_DP_Group3_sliderAgraphic  &
   adams_id = 3254  &
   center_marker = .test_analysis_1.Upper_DP_Group3_sliderA.A2  &
   angle_extent = 360.0  &
   length = 0.6  &
   radius = 7.0E-02  &
   side_count_for_body = 4  &
   segment_count_for_ends = 4
!
geometry attributes  &
   geometry_name = .test_analysis_1.Upper_DP_Group3_sliderA.Upper_DP_Group3_sliderAgraphic  &
   color = MidnightBlue2  &
   render = wireframe
!
geometry create curve circle  &
   circle_name = .test_analysis_1.Upper_DP_Group3_sliderA.ghole  &
   adams_id = 3157  &
   center_marker = .test_analysis_1.Upper_DP_Group3_sliderA.cm  &
   radius = 0.54175  &
   segment_count = 24
!
geometry attributes  &
   geometry_name = .test_analysis_1.Upper_DP_Group3_sliderA.ghole  &
   color = BLUE  &
   render = wireframe
!
!----------------------------- Upper_DP_Group3_C ------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .test_analysis_1.ground
!
part create rigid_body name_and_position  &
   part_name = .test_analysis_1.Upper_DP_Group3_C  &
   adams_id = 9001200  &
   location = 611.6167677149, 0.0, 1501.9946957745  &
   orientation = 90.0d, 90.0121859247d, 270.0d
!
defaults coordinate_system  &
   default_coordinate_system = .test_analysis_1.Upper_DP_Group3_C
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group3_C.gmark2  &
   adams_id = 9006370  &
   location = 0.0, 0.0, 7.7491331241  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group3_C.end_C  &
   adams_id = 9001200  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group3_C.cm  &
   adams_id = 9006368  &
   location = 0.0, 0.0, 3.0112090912  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group3_C.end_beamC  &
   adams_id = 9006369  &
   location = 0.0, 0.0, 1.0  &
   orientation = 0.0d, 90.0d, 90.0d
!
part create rigid_body mass_properties  &
   part_name = .test_analysis_1.Upper_DP_Group3_C  &
   mass = 7.743482937  &
   center_of_mass_marker = .test_analysis_1.Upper_DP_Group3_C.cm  &
   ixx = 53.85367425  &
   iyy = 53.85367425  &
   izz = 0.3323288305  &
   ixy = 0.0  &
   izx = 0.0  &
   iyz = 0.0
!
! ****** Graphics for current part ******
!
geometry create shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group3_C.cyl1a  &
   adams_id = 3252  &
   center_marker = .test_analysis_1.Upper_DP_Group3_C.end_C  &
   angle_extent = 6.0  &
   length = 1.0  &
   radius = 0.2945665  &
   side_count_for_body = 3  &
   segment_count_for_ends = 3
!
geometry attributes  &
   geometry_name = .test_analysis_1.Upper_DP_Group3_C.cyl1a  &
   color = RED
!
geometry create shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group3_C.cyl1  &
   adams_id = 3253  &
   center_marker = .test_analysis_1.Upper_DP_Group3_C.end_C  &
   angle_extent = 360.0  &
   length = 1.0  &
   radius = 0.29165  &
   side_count_for_body = 16  &
   segment_count_for_ends = 16
!
geometry attributes  &
   geometry_name = .test_analysis_1.Upper_DP_Group3_C.cyl1  &
   color = LtGray
!
geometry create shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group3_C.cyl2  &
   adams_id = 3250  &
   center_marker = .test_analysis_1.Upper_DP_Group3_C.gmark2  &
   angle_extent = 360.0  &
   length = -6.75  &
   radius = 0.20835  &
   side_count_for_body = 16  &
   segment_count_for_ends = 16
!
geometry attributes  &
   geometry_name = .test_analysis_1.Upper_DP_Group3_C.cyl2  &
   color = Gray
!
geometry create shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group3_C.cyl2a  &
   adams_id = 3251  &
   center_marker = .test_analysis_1.Upper_DP_Group3_C.gmark2  &
   angle_extent = 6.0  &
   length = -6.75  &
   radius = 0.2104335  &
   side_count_for_body = 3  &
   segment_count_for_ends = 3
!
geometry attributes  &
   geometry_name = .test_analysis_1.Upper_DP_Group3_C.cyl2a  &
   color = RED
!
!-------------------------- Upper_DP_Group3_sliderB ---------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .test_analysis_1.ground
!
part create rigid_body name_and_position  &
   part_name = .test_analysis_1.Upper_DP_Group3_sliderB  &
   adams_id = 9001101  &
   location = 627.1150325011, 0.0, 1501.9927118966  &
   orientation = 90.0d, 90.002482533d, 270.0d
!
defaults coordinate_system  &
   default_coordinate_system = .test_analysis_1.Upper_DP_Group3_sliderB
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group3_sliderB.cm  &
   adams_id = 9001101  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group3_sliderB.B1  &
   adams_id = 9006373  &
   location = 0.0, 0.0, 0.3  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group3_sliderB.B2  &
   adams_id = 9006374  &
   location = 0.0, 0.0, -0.3  &
   orientation = 0.0d, 0.0d, 0.0d
!
! ****** Floating Markers for current part ******
!
floating_marker create  &
   floating_marker_name = .test_analysis_1.Upper_DP_Group3_sliderB.FMARKER_9001208  &
   adams_id = 9001208
!
part create rigid_body mass_properties  &
   part_name = .test_analysis_1.Upper_DP_Group3_sliderB  &
   density = 0.1
!
! ****** Graphics for current part ******
!
geometry create shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group3_sliderB.Upper_DP_Group3_sliderBgraphic  &
   adams_id = 3255  &
   center_marker = .test_analysis_1.Upper_DP_Group3_sliderB.B2  &
   angle_extent = 360.0  &
   length = 0.6  &
   radius = 7.0E-02  &
   side_count_for_body = 4  &
   segment_count_for_ends = 4
!
geometry attributes  &
   geometry_name = .test_analysis_1.Upper_DP_Group3_sliderB.Upper_DP_Group3_sliderBgraphic  &
   color = MidnightBlue2  &
   render = wireframe
!
geometry create curve circle  &
   circle_name = .test_analysis_1.Upper_DP_Group3_sliderB.ghole  &
   adams_id = 3158  &
   center_marker = .test_analysis_1.Upper_DP_Group3_sliderB.cm  &
   radius = 0.54175  &
   segment_count = 24
!
geometry attributes  &
   geometry_name = .test_analysis_1.Upper_DP_Group3_sliderB.ghole  &
   color = BLUE  &
   render = wireframe
!
!----------------------------- Upper_DP_Group4_A ------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .test_analysis_1.ground
!
part create rigid_body name_and_position  &
   part_name = .test_analysis_1.Upper_DP_Group4_A  &
   adams_id = 9001300  &
   location = 611.6143483216, 0.0, 1501.9946964828  &
   orientation = 90.0d, 90.0226392076d, 270.0d
!
defaults coordinate_system  &
   default_coordinate_system = .test_analysis_1.Upper_DP_Group4_A
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group4_A.end_A  &
   adams_id = 9001300  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group4_A.cm  &
   adams_id = 9006375  &
   location = 0.0, 0.0, -3.0117709993  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group4_A.gmark1  &
   adams_id = 9006376  &
   location = 0.0, 0.0, -1.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group4_A.end_beamA  &
   adams_id = 9006377  &
   location = 0.0, 0.0, -1.0  &
   orientation = 0.0d, 90.0d, 90.0d
!
part create rigid_body mass_properties  &
   part_name = .test_analysis_1.Upper_DP_Group4_A  &
   mass = 7.743482937  &
   center_of_mass_marker = .test_analysis_1.Upper_DP_Group4_A.cm  &
   ixx = 53.8655360846  &
   iyy = 53.8655360846  &
   izz = 0.3323288305  &
   ixy = 0.0  &
   izx = 0.0  &
   iyz = 0.0
!
! ****** Graphics for current part ******
!
geometry create shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group4_A.cyl1  &
   adams_id = 3256  &
   center_marker = .test_analysis_1.Upper_DP_Group4_A.end_A  &
   angle_extent = 360.0  &
   length = -1.0  &
   radius = 0.29165  &
   side_count_for_body = 16  &
   segment_count_for_ends = 16
!
geometry attributes  &
   geometry_name = .test_analysis_1.Upper_DP_Group4_A.cyl1  &
   color = LtGray
!
geometry create shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group4_A.cyl1a  &
   adams_id = 3257  &
   center_marker = .test_analysis_1.Upper_DP_Group4_A.end_A  &
   angle_extent = 6.0  &
   length = -1.0  &
   radius = 0.2945665  &
   side_count_for_body = 3  &
   segment_count_for_ends = 3
!
geometry attributes  &
   geometry_name = .test_analysis_1.Upper_DP_Group4_A.cyl1a  &
   color = RED
!
geometry create shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group4_A.cyl2  &
   adams_id = 3258  &
   center_marker = .test_analysis_1.Upper_DP_Group4_A.gmark1  &
   angle_extent = 360.0  &
   length = -6.75  &
   radius = 0.20835  &
   side_count_for_body = 16  &
   segment_count_for_ends = 16
!
geometry attributes  &
   geometry_name = .test_analysis_1.Upper_DP_Group4_A.cyl2  &
   color = Gray
!
geometry create shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group4_A.cyl2a  &
   adams_id = 3259  &
   center_marker = .test_analysis_1.Upper_DP_Group4_A.gmark1  &
   angle_extent = 6.0  &
   length = -6.75  &
   radius = 0.2104335  &
   side_count_for_body = 3  &
   segment_count_for_ends = 3
!
geometry attributes  &
   geometry_name = .test_analysis_1.Upper_DP_Group4_A.cyl2a  &
   color = RED
!
!----------------------------- Upper_DP_Group4_B ------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .test_analysis_1.ground
!
part create rigid_body name_and_position  &
   part_name = .test_analysis_1.Upper_DP_Group4_B  &
   adams_id = 9001400  &
   location = 603.8652303478, 0.0, 1501.9977583819  &
   orientation = 90.0d, 90.0446003877d, 270.0d
!
defaults coordinate_system  &
   default_coordinate_system = .test_analysis_1.Upper_DP_Group4_B
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group4_B.end_B  &
   adams_id = 9006378  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group4_B.cm  &
   adams_id = 9001400  &
   location = 0.0, 0.0, -7.75  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group4_B.end_beamB  &
   adams_id = 9006379  &
   location = 0.0, 0.0, -7.75  &
   orientation = 0.0d, 90.0d, 90.0d
!
part create rigid_body mass_properties  &
   part_name = .test_analysis_1.Upper_DP_Group4_B  &
   mass = 11.5258405181  &
   center_of_mass_marker = .test_analysis_1.Upper_DP_Group4_B.cm  &
   ixx = 294.0966081325  &
   iyy = 294.0966081325  &
   izz = 0.4102158729  &
   ixy = 0.0  &
   izx = 0.0  &
   iyz = 0.0
!
! ****** Graphics for current part ******
!
geometry create shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group4_B.cyl1  &
   adams_id = 3260  &
   center_marker = .test_analysis_1.Upper_DP_Group4_B.end_B  &
   angle_extent = 360.0  &
   length = -15.5  &
   radius = 0.20835  &
   side_count_for_body = 16  &
   segment_count_for_ends = 16
!
geometry attributes  &
   geometry_name = .test_analysis_1.Upper_DP_Group4_B.cyl1  &
   color = Gray
!
geometry create shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group4_B.cyl1a  &
   adams_id = 3261  &
   center_marker = .test_analysis_1.Upper_DP_Group4_B.end_B  &
   angle_extent = 6.0  &
   length = -15.5  &
   radius = 0.2104335  &
   side_count_for_body = 3  &
   segment_count_for_ends = 3
!
geometry attributes  &
   geometry_name = .test_analysis_1.Upper_DP_Group4_B.cyl1a  &
   color = RED
!
geometry create curve circle  &
   circle_name = .test_analysis_1.Upper_DP_Group4_B.rub1  &
   adams_id = 3159  &
   center_marker = .test_analysis_1.Upper_DP_Group4_B.cm  &
   radius = 0.25  &
   segment_count = 16
!
geometry attributes  &
   geometry_name = .test_analysis_1.Upper_DP_Group4_B.rub1  &
   color = Gray
!
!-------------------------- Upper_DP_Group4_sliderA ---------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .test_analysis_1.ground
!
part create rigid_body name_and_position  &
   part_name = .test_analysis_1.Upper_DP_Group4_sliderA  &
   adams_id = 9001301  &
   location = 611.6143483216, 0.0, 1501.9946964828  &
   orientation = 90.0d, 90.0226392076d, 270.0d
!
defaults coordinate_system  &
   default_coordinate_system = .test_analysis_1.Upper_DP_Group4_sliderA
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group4_sliderA.cm  &
   adams_id = 9001301  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group4_sliderA.A1  &
   adams_id = 9006383  &
   location = 0.0, 0.0, 0.3  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group4_sliderA.A2  &
   adams_id = 9006384  &
   location = 0.0, 0.0, -0.3  &
   orientation = 0.0d, 0.0d, 0.0d
!
! ****** Floating Markers for current part ******
!
floating_marker create  &
   floating_marker_name = .test_analysis_1.Upper_DP_Group4_sliderA.FMARKER_9001507  &
   adams_id = 9001507
!
part create rigid_body mass_properties  &
   part_name = .test_analysis_1.Upper_DP_Group4_sliderA  &
   density = 0.1
!
! ****** Graphics for current part ******
!
geometry create shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group4_sliderA.Upper_DP_Group4_sliderAgraphic  &
   adams_id = 3266  &
   center_marker = .test_analysis_1.Upper_DP_Group4_sliderA.A2  &
   angle_extent = 360.0  &
   length = 0.6  &
   radius = 7.0E-02  &
   side_count_for_body = 4  &
   segment_count_for_ends = 4
!
geometry attributes  &
   geometry_name = .test_analysis_1.Upper_DP_Group4_sliderA.Upper_DP_Group4_sliderAgraphic  &
   color = MidnightBlue2  &
   render = wireframe
!
geometry create curve circle  &
   circle_name = .test_analysis_1.Upper_DP_Group4_sliderA.ghole  &
   adams_id = 3160  &
   center_marker = .test_analysis_1.Upper_DP_Group4_sliderA.cm  &
   radius = 0.54175  &
   segment_count = 24
!
geometry attributes  &
   geometry_name = .test_analysis_1.Upper_DP_Group4_sliderA.ghole  &
   color = BLUE  &
   render = wireframe
!
!----------------------------- Upper_DP_Group4_C ------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .test_analysis_1.ground
!
part create rigid_body name_and_position  &
   part_name = .test_analysis_1.Upper_DP_Group4_C  &
   adams_id = 9001500  &
   location = 580.6170735162, 0.0, 1502.0180374265  &
   orientation = 90.0d, 90.0607347592d, 270.0d
!
defaults coordinate_system  &
   default_coordinate_system = .test_analysis_1.Upper_DP_Group4_C
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group4_C.gmark2  &
   adams_id = 9006382  &
   location = 0.0, 0.0, 7.7490848877  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group4_C.end_C  &
   adams_id = 9001500  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group4_C.cm  &
   adams_id = 9006380  &
   location = 0.0, 0.0, 3.0111778244  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group4_C.end_beamC  &
   adams_id = 9006381  &
   location = 0.0, 0.0, 1.0  &
   orientation = 0.0d, 90.0d, 90.0d
!
part create rigid_body mass_properties  &
   part_name = .test_analysis_1.Upper_DP_Group4_C  &
   mass = 7.743482937  &
   center_of_mass_marker = .test_analysis_1.Upper_DP_Group4_C.cm  &
   ixx = 53.8530142891  &
   iyy = 53.8530142891  &
   izz = 0.3323288305  &
   ixy = 0.0  &
   izx = 0.0  &
   iyz = 0.0
!
! ****** Graphics for current part ******
!
geometry create shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group4_C.cyl1a  &
   adams_id = 3264  &
   center_marker = .test_analysis_1.Upper_DP_Group4_C.end_C  &
   angle_extent = 6.0  &
   length = 1.0  &
   radius = 0.2945665  &
   side_count_for_body = 3  &
   segment_count_for_ends = 3
!
geometry attributes  &
   geometry_name = .test_analysis_1.Upper_DP_Group4_C.cyl1a  &
   color = RED
!
geometry create shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group4_C.cyl1  &
   adams_id = 3265  &
   center_marker = .test_analysis_1.Upper_DP_Group4_C.end_C  &
   angle_extent = 360.0  &
   length = 1.0  &
   radius = 0.29165  &
   side_count_for_body = 16  &
   segment_count_for_ends = 16
!
geometry attributes  &
   geometry_name = .test_analysis_1.Upper_DP_Group4_C.cyl1  &
   color = LtGray
!
geometry create shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group4_C.cyl2  &
   adams_id = 3262  &
   center_marker = .test_analysis_1.Upper_DP_Group4_C.gmark2  &
   angle_extent = 360.0  &
   length = -6.75  &
   radius = 0.20835  &
   side_count_for_body = 16  &
   segment_count_for_ends = 16
!
geometry attributes  &
   geometry_name = .test_analysis_1.Upper_DP_Group4_C.cyl2  &
   color = Gray
!
geometry create shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group4_C.cyl2a  &
   adams_id = 3263  &
   center_marker = .test_analysis_1.Upper_DP_Group4_C.gmark2  &
   angle_extent = 6.0  &
   length = -6.75  &
   radius = 0.2104335  &
   side_count_for_body = 3  &
   segment_count_for_ends = 3
!
geometry attributes  &
   geometry_name = .test_analysis_1.Upper_DP_Group4_C.cyl2a  &
   color = RED
!
!-------------------------- Upper_DP_Group4_sliderB ---------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .test_analysis_1.ground
!
part create rigid_body name_and_position  &
   part_name = .test_analysis_1.Upper_DP_Group4_sliderB  &
   adams_id = 9001401  &
   location = 596.1152326958, 0.0, 1502.0037911643  &
   orientation = 90.0d, 90.0446003877d, 270.0d
!
defaults coordinate_system  &
   default_coordinate_system = .test_analysis_1.Upper_DP_Group4_sliderB
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group4_sliderB.cm  &
   adams_id = 9001401  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group4_sliderB.B1  &
   adams_id = 9006385  &
   location = 0.0, 0.0, 0.3  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group4_sliderB.B2  &
   adams_id = 9006386  &
   location = 0.0, 0.0, -0.3  &
   orientation = 0.0d, 0.0d, 0.0d
!
! ****** Floating Markers for current part ******
!
floating_marker create  &
   floating_marker_name = .test_analysis_1.Upper_DP_Group4_sliderB.FMARKER_9001508  &
   adams_id = 9001508
!
part create rigid_body mass_properties  &
   part_name = .test_analysis_1.Upper_DP_Group4_sliderB  &
   density = 0.1
!
! ****** Graphics for current part ******
!
geometry create shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group4_sliderB.Upper_DP_Group4_sliderBgraphic  &
   adams_id = 3267  &
   center_marker = .test_analysis_1.Upper_DP_Group4_sliderB.B2  &
   angle_extent = 360.0  &
   length = 0.6  &
   radius = 7.0E-02  &
   side_count_for_body = 4  &
   segment_count_for_ends = 4
!
geometry attributes  &
   geometry_name = .test_analysis_1.Upper_DP_Group4_sliderB.Upper_DP_Group4_sliderBgraphic  &
   color = MidnightBlue2  &
   render = wireframe
!
geometry create curve circle  &
   circle_name = .test_analysis_1.Upper_DP_Group4_sliderB.ghole  &
   adams_id = 3161  &
   center_marker = .test_analysis_1.Upper_DP_Group4_sliderB.cm  &
   radius = 0.54175  &
   segment_count = 24
!
geometry attributes  &
   geometry_name = .test_analysis_1.Upper_DP_Group4_sliderB.ghole  &
   color = BLUE  &
   render = wireframe
!
!----------------------------- Upper_DP_Group5_A ------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .test_analysis_1.ground
!
part create rigid_body name_and_position  &
   part_name = .test_analysis_1.Upper_DP_Group5_A  &
   adams_id = 9001600  &
   location = 580.6144642679, 0.0, 1502.0180403264  &
   orientation = 90.0d, 90.0652837487d, 270.0d
!
defaults coordinate_system  &
   default_coordinate_system = .test_analysis_1.Upper_DP_Group5_A
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group5_A.end_A  &
   adams_id = 9001600  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group5_A.cm  &
   adams_id = 9006387  &
   location = 0.0, 0.0, -3.0117709993  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group5_A.gmark1  &
   adams_id = 9006388  &
   location = 0.0, 0.0, -1.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group5_A.end_beamA  &
   adams_id = 9006389  &
   location = 0.0, 0.0, -1.0  &
   orientation = 0.0d, 90.0d, 90.0d
!
part create rigid_body mass_properties  &
   part_name = .test_analysis_1.Upper_DP_Group5_A  &
   mass = 7.743482937  &
   center_of_mass_marker = .test_analysis_1.Upper_DP_Group5_A.cm  &
   ixx = 53.8655360846  &
   iyy = 53.8655360846  &
   izz = 0.3323288305  &
   ixy = 0.0  &
   izx = 0.0  &
   iyz = 0.0
!
! ****** Graphics for current part ******
!
geometry create shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group5_A.cyl1  &
   adams_id = 3268  &
   center_marker = .test_analysis_1.Upper_DP_Group5_A.end_A  &
   angle_extent = 360.0  &
   length = -1.0  &
   radius = 0.29165  &
   side_count_for_body = 16  &
   segment_count_for_ends = 16
!
geometry attributes  &
   geometry_name = .test_analysis_1.Upper_DP_Group5_A.cyl1  &
   color = LtGray
!
geometry create shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group5_A.cyl1a  &
   adams_id = 3269  &
   center_marker = .test_analysis_1.Upper_DP_Group5_A.end_A  &
   angle_extent = 6.0  &
   length = -1.0  &
   radius = 0.2945665  &
   side_count_for_body = 3  &
   segment_count_for_ends = 3
!
geometry attributes  &
   geometry_name = .test_analysis_1.Upper_DP_Group5_A.cyl1a  &
   color = RED
!
geometry create shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group5_A.cyl2  &
   adams_id = 3270  &
   center_marker = .test_analysis_1.Upper_DP_Group5_A.gmark1  &
   angle_extent = 360.0  &
   length = -6.75  &
   radius = 0.20835  &
   side_count_for_body = 16  &
   segment_count_for_ends = 16
!
geometry attributes  &
   geometry_name = .test_analysis_1.Upper_DP_Group5_A.cyl2  &
   color = Gray
!
geometry create shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group5_A.cyl2a  &
   adams_id = 3271  &
   center_marker = .test_analysis_1.Upper_DP_Group5_A.gmark1  &
   angle_extent = 6.0  &
   length = -6.75  &
   radius = 0.2104335  &
   side_count_for_body = 3  &
   segment_count_for_ends = 3
!
geometry attributes  &
   geometry_name = .test_analysis_1.Upper_DP_Group5_A.cyl2a  &
   color = RED
!
!----------------------------- Upper_DP_Group5_B ------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .test_analysis_1.ground
!
part create rigid_body name_and_position  &
   part_name = .test_analysis_1.Upper_DP_Group5_B  &
   adams_id = 9001700  &
   location = 572.8653945454, 0.0, 1502.0268697471  &
   orientation = 90.0d, 90.0645355491d, 270.0d
!
defaults coordinate_system  &
   default_coordinate_system = .test_analysis_1.Upper_DP_Group5_B
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group5_B.end_B  &
   adams_id = 9006390  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group5_B.cm  &
   adams_id = 9001700  &
   location = 0.0, 0.0, -7.75  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group5_B.end_beamB  &
   adams_id = 9006391  &
   location = 0.0, 0.0, -7.75  &
   orientation = 0.0d, 90.0d, 90.0d
!
part create rigid_body mass_properties  &
   part_name = .test_analysis_1.Upper_DP_Group5_B  &
   mass = 11.5258405181  &
   center_of_mass_marker = .test_analysis_1.Upper_DP_Group5_B.cm  &
   ixx = 294.0966081325  &
   iyy = 294.0966081325  &
   izz = 0.4102158729  &
   ixy = 0.0  &
   izx = 0.0  &
   iyz = 0.0
!
! ****** Graphics for current part ******
!
geometry create shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group5_B.cyl1  &
   adams_id = 3272  &
   center_marker = .test_analysis_1.Upper_DP_Group5_B.end_B  &
   angle_extent = 360.0  &
   length = -15.5  &
   radius = 0.20835  &
   side_count_for_body = 16  &
   segment_count_for_ends = 16
!
geometry attributes  &
   geometry_name = .test_analysis_1.Upper_DP_Group5_B.cyl1  &
   color = Gray
!
geometry create shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group5_B.cyl1a  &
   adams_id = 3273  &
   center_marker = .test_analysis_1.Upper_DP_Group5_B.end_B  &
   angle_extent = 6.0  &
   length = -15.5  &
   radius = 0.2104335  &
   side_count_for_body = 3  &
   segment_count_for_ends = 3
!
geometry attributes  &
   geometry_name = .test_analysis_1.Upper_DP_Group5_B.cyl1a  &
   color = RED
!
geometry create curve circle  &
   circle_name = .test_analysis_1.Upper_DP_Group5_B.rub1  &
   adams_id = 3162  &
   center_marker = .test_analysis_1.Upper_DP_Group5_B.cm  &
   radius = 0.25  &
   segment_count = 16
!
geometry attributes  &
   geometry_name = .test_analysis_1.Upper_DP_Group5_B.rub1  &
   color = Gray
!
!-------------------------- Upper_DP_Group5_sliderA ---------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .test_analysis_1.ground
!
part create rigid_body name_and_position  &
   part_name = .test_analysis_1.Upper_DP_Group5_sliderA  &
   adams_id = 9001601  &
   location = 580.6144642679, 0.0, 1502.0180403264  &
   orientation = 90.0d, 90.0652837487d, 270.0d
!
defaults coordinate_system  &
   default_coordinate_system = .test_analysis_1.Upper_DP_Group5_sliderA
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group5_sliderA.cm  &
   adams_id = 9001601  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group5_sliderA.A1  &
   adams_id = 9006395  &
   location = 0.0, 0.0, 0.3  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group5_sliderA.A2  &
   adams_id = 9006396  &
   location = 0.0, 0.0, -0.3  &
   orientation = 0.0d, 0.0d, 0.0d
!
! ****** Floating Markers for current part ******
!
floating_marker create  &
   floating_marker_name = .test_analysis_1.Upper_DP_Group5_sliderA.FMARKER_9001807  &
   adams_id = 9001807
!
part create rigid_body mass_properties  &
   part_name = .test_analysis_1.Upper_DP_Group5_sliderA  &
   density = 0.1
!
! ****** Graphics for current part ******
!
geometry create shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group5_sliderA.Upper_DP_Group5_sliderAgraphic  &
   adams_id = 3278  &
   center_marker = .test_analysis_1.Upper_DP_Group5_sliderA.A2  &
   angle_extent = 360.0  &
   length = 0.6  &
   radius = 7.0E-02  &
   side_count_for_body = 4  &
   segment_count_for_ends = 4
!
geometry attributes  &
   geometry_name = .test_analysis_1.Upper_DP_Group5_sliderA.Upper_DP_Group5_sliderAgraphic  &
   color = MidnightBlue2  &
   render = wireframe
!
geometry create curve circle  &
   circle_name = .test_analysis_1.Upper_DP_Group5_sliderA.ghole  &
   adams_id = 3163  &
   center_marker = .test_analysis_1.Upper_DP_Group5_sliderA.cm  &
   radius = 0.54175  &
   segment_count = 24
!
geometry attributes  &
   geometry_name = .test_analysis_1.Upper_DP_Group5_sliderA.ghole  &
   color = BLUE  &
   render = wireframe
!
!----------------------------- Upper_DP_Group5_C ------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .test_analysis_1.ground
!
part create rigid_body name_and_position  &
   part_name = .test_analysis_1.Upper_DP_Group5_C  &
   adams_id = 9001800  &
   location = 549.6173258983, 0.0, 1502.0518964374  &
   orientation = 90.0d, 90.0559662634d, 270.0d
!
defaults coordinate_system  &
   default_coordinate_system = .test_analysis_1.Upper_DP_Group5_C
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group5_C.gmark2  &
   adams_id = 9006394  &
   location = 0.0, 0.0, 7.749039994  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group5_C.end_C  &
   adams_id = 9001800  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group5_C.cm  &
   adams_id = 9006392  &
   location = 0.0, 0.0, 3.0111487244  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group5_C.end_beamC  &
   adams_id = 9006393  &
   location = 0.0, 0.0, 1.0  &
   orientation = 0.0d, 90.0d, 90.0d
!
part create rigid_body mass_properties  &
   part_name = .test_analysis_1.Upper_DP_Group5_C  &
   mass = 7.743482937  &
   center_of_mass_marker = .test_analysis_1.Upper_DP_Group5_C.cm  &
   ixx = 53.8524000697  &
   iyy = 53.8524000697  &
   izz = 0.3323288305  &
   ixy = 0.0  &
   izx = 0.0  &
   iyz = 0.0
!
! ****** Graphics for current part ******
!
geometry create shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group5_C.cyl1a  &
   adams_id = 3276  &
   center_marker = .test_analysis_1.Upper_DP_Group5_C.end_C  &
   angle_extent = 6.0  &
   length = 1.0  &
   radius = 0.2945665  &
   side_count_for_body = 3  &
   segment_count_for_ends = 3
!
geometry attributes  &
   geometry_name = .test_analysis_1.Upper_DP_Group5_C.cyl1a  &
   color = RED
!
geometry create shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group5_C.cyl1  &
   adams_id = 3277  &
   center_marker = .test_analysis_1.Upper_DP_Group5_C.end_C  &
   angle_extent = 360.0  &
   length = 1.0  &
   radius = 0.29165  &
   side_count_for_body = 16  &
   segment_count_for_ends = 16
!
geometry attributes  &
   geometry_name = .test_analysis_1.Upper_DP_Group5_C.cyl1  &
   color = LtGray
!
geometry create shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group5_C.cyl2  &
   adams_id = 3274  &
   center_marker = .test_analysis_1.Upper_DP_Group5_C.gmark2  &
   angle_extent = 360.0  &
   length = -6.75  &
   radius = 0.20835  &
   side_count_for_body = 16  &
   segment_count_for_ends = 16
!
geometry attributes  &
   geometry_name = .test_analysis_1.Upper_DP_Group5_C.cyl2  &
   color = Gray
!
geometry create shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group5_C.cyl2a  &
   adams_id = 3275  &
   center_marker = .test_analysis_1.Upper_DP_Group5_C.gmark2  &
   angle_extent = 6.0  &
   length = -6.75  &
   radius = 0.2104335  &
   side_count_for_body = 3  &
   segment_count_for_ends = 3
!
geometry attributes  &
   geometry_name = .test_analysis_1.Upper_DP_Group5_C.cyl2a  &
   color = RED
!
!-------------------------- Upper_DP_Group5_sliderB ---------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .test_analysis_1.ground
!
part create rigid_body name_and_position  &
   part_name = .test_analysis_1.Upper_DP_Group5_sliderB  &
   adams_id = 9001701  &
   location = 565.1153994615, 0.0, 1502.0355990183  &
   orientation = 90.0d, 90.0645355491d, 270.0d
!
defaults coordinate_system  &
   default_coordinate_system = .test_analysis_1.Upper_DP_Group5_sliderB
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group5_sliderB.cm  &
   adams_id = 9001701  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group5_sliderB.B1  &
   adams_id = 9006397  &
   location = 0.0, 0.0, 0.3  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group5_sliderB.B2  &
   adams_id = 9006398  &
   location = 0.0, 0.0, -0.3  &
   orientation = 0.0d, 0.0d, 0.0d
!
! ****** Floating Markers for current part ******
!
floating_marker create  &
   floating_marker_name = .test_analysis_1.Upper_DP_Group5_sliderB.FMARKER_9001808  &
   adams_id = 9001808
!
part create rigid_body mass_properties  &
   part_name = .test_analysis_1.Upper_DP_Group5_sliderB  &
   density = 0.1
!
! ****** Graphics for current part ******
!
geometry create shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group5_sliderB.Upper_DP_Group5_sliderBgraphic  &
   adams_id = 3279  &
   center_marker = .test_analysis_1.Upper_DP_Group5_sliderB.B2  &
   angle_extent = 360.0  &
   length = 0.6  &
   radius = 7.0E-02  &
   side_count_for_body = 4  &
   segment_count_for_ends = 4
!
geometry attributes  &
   geometry_name = .test_analysis_1.Upper_DP_Group5_sliderB.Upper_DP_Group5_sliderBgraphic  &
   color = MidnightBlue2  &
   render = wireframe
!
geometry create curve circle  &
   circle_name = .test_analysis_1.Upper_DP_Group5_sliderB.ghole  &
   adams_id = 3164  &
   center_marker = .test_analysis_1.Upper_DP_Group5_sliderB.cm  &
   radius = 0.54175  &
   segment_count = 24
!
geometry attributes  &
   geometry_name = .test_analysis_1.Upper_DP_Group5_sliderB.ghole  &
   color = BLUE  &
   render = wireframe
!
!----------------------------- Upper_DP_Group6_A ------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .test_analysis_1.ground
!
part create rigid_body name_and_position  &
   part_name = .test_analysis_1.Upper_DP_Group6_A  &
   adams_id = 9001900  &
   location = 549.6145714036, 0.0, 1502.0518988817  &
   orientation = 90.0d, 90.0438073896d, 270.0d
!
defaults coordinate_system  &
   default_coordinate_system = .test_analysis_1.Upper_DP_Group6_A
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group6_A.end_A  &
   adams_id = 9001900  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group6_A.cm  &
   adams_id = 9006399  &
   location = 0.0, 0.0, -3.0117709993  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group6_A.gmark1  &
   adams_id = 9006400  &
   location = 0.0, 0.0, -1.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group6_A.end_beamA  &
   adams_id = 9006401  &
   location = 0.0, 0.0, -1.0  &
   orientation = 0.0d, 90.0d, 90.0d
!
part create rigid_body mass_properties  &
   part_name = .test_analysis_1.Upper_DP_Group6_A  &
   mass = 7.743482937  &
   center_of_mass_marker = .test_analysis_1.Upper_DP_Group6_A.cm  &
   ixx = 53.8655360846  &
   iyy = 53.8655360846  &
   izz = 0.3323288305  &
   ixy = 0.0  &
   izx = 0.0  &
   iyz = 0.0
!
! ****** Graphics for current part ******
!
geometry create shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group6_A.cyl1  &
   adams_id = 3280  &
   center_marker = .test_analysis_1.Upper_DP_Group6_A.end_A  &
   angle_extent = 360.0  &
   length = -1.0  &
   radius = 0.29165  &
   side_count_for_body = 16  &
   segment_count_for_ends = 16
!
geometry attributes  &
   geometry_name = .test_analysis_1.Upper_DP_Group6_A.cyl1  &
   color = LtGray
!
geometry create shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group6_A.cyl1a  &
   adams_id = 3281  &
   center_marker = .test_analysis_1.Upper_DP_Group6_A.end_A  &
   angle_extent = 6.0  &
   length = -1.0  &
   radius = 0.2945665  &
   side_count_for_body = 3  &
   segment_count_for_ends = 3
!
geometry attributes  &
   geometry_name = .test_analysis_1.Upper_DP_Group6_A.cyl1a  &
   color = RED
!
geometry create shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group6_A.cyl2  &
   adams_id = 3282  &
   center_marker = .test_analysis_1.Upper_DP_Group6_A.gmark1  &
   angle_extent = 360.0  &
   length = -6.75  &
   radius = 0.20835  &
   side_count_for_body = 16  &
   segment_count_for_ends = 16
!
geometry attributes  &
   geometry_name = .test_analysis_1.Upper_DP_Group6_A.cyl2  &
   color = Gray
!
geometry create shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group6_A.cyl2a  &
   adams_id = 3283  &
   center_marker = .test_analysis_1.Upper_DP_Group6_A.gmark1  &
   angle_extent = 6.0  &
   length = -6.75  &
   radius = 0.2104335  &
   side_count_for_body = 3  &
   segment_count_for_ends = 3
!
geometry attributes  &
   geometry_name = .test_analysis_1.Upper_DP_Group6_A.cyl2a  &
   color = RED
!
!----------------------------- Upper_DP_Group6_B ------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .test_analysis_1.ground
!
part create rigid_body name_and_position  &
   part_name = .test_analysis_1.Upper_DP_Group6_B  &
   adams_id = 9002000  &
   location = 541.8655484014, 0.0, 1502.0578236556  &
   orientation = 90.0d, 90.0108627085d, 270.0d
!
defaults coordinate_system  &
   default_coordinate_system = .test_analysis_1.Upper_DP_Group6_B
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group6_B.end_B  &
   adams_id = 9006402  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group6_B.cm  &
   adams_id = 9002000  &
   location = 0.0, 0.0, -7.75  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group6_B.end_beamB  &
   adams_id = 9006403  &
   location = 0.0, 0.0, -7.75  &
   orientation = 0.0d, 90.0d, 90.0d
!
part create rigid_body mass_properties  &
   part_name = .test_analysis_1.Upper_DP_Group6_B  &
   mass = 11.5258405181  &
   center_of_mass_marker = .test_analysis_1.Upper_DP_Group6_B.cm  &
   ixx = 294.0966081325  &
   iyy = 294.0966081325  &
   izz = 0.4102158729  &
   ixy = 0.0  &
   izx = 0.0  &
   iyz = 0.0
!
! ****** Graphics for current part ******
!
geometry create shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group6_B.cyl1  &
   adams_id = 3284  &
   center_marker = .test_analysis_1.Upper_DP_Group6_B.end_B  &
   angle_extent = 360.0  &
   length = -15.5  &
   radius = 0.20835  &
   side_count_for_body = 16  &
   segment_count_for_ends = 16
!
geometry attributes  &
   geometry_name = .test_analysis_1.Upper_DP_Group6_B.cyl1  &
   color = Gray
!
geometry create shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group6_B.cyl1a  &
   adams_id = 3285  &
   center_marker = .test_analysis_1.Upper_DP_Group6_B.end_B  &
   angle_extent = 6.0  &
   length = -15.5  &
   radius = 0.2104335  &
   side_count_for_body = 3  &
   segment_count_for_ends = 3
!
geometry attributes  &
   geometry_name = .test_analysis_1.Upper_DP_Group6_B.cyl1a  &
   color = RED
!
geometry create curve circle  &
   circle_name = .test_analysis_1.Upper_DP_Group6_B.rub1  &
   adams_id = 3165  &
   center_marker = .test_analysis_1.Upper_DP_Group6_B.cm  &
   radius = 0.25  &
   segment_count = 16
!
geometry attributes  &
   geometry_name = .test_analysis_1.Upper_DP_Group6_B.rub1  &
   color = Gray
!
!-------------------------- Upper_DP_Group6_sliderA ---------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .test_analysis_1.ground
!
part create rigid_body name_and_position  &
   part_name = .test_analysis_1.Upper_DP_Group6_sliderA  &
   adams_id = 9001901  &
   location = 549.6145714036, 0.0, 1502.0518988817  &
   orientation = 90.0d, 90.0438073896d, 270.0d
!
defaults coordinate_system  &
   default_coordinate_system = .test_analysis_1.Upper_DP_Group6_sliderA
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group6_sliderA.cm  &
   adams_id = 9001901  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group6_sliderA.A1  &
   adams_id = 9006407  &
   location = 0.0, 0.0, 0.3  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group6_sliderA.A2  &
   adams_id = 9006408  &
   location = 0.0, 0.0, -0.3  &
   orientation = 0.0d, 0.0d, 0.0d
!
! ****** Floating Markers for current part ******
!
floating_marker create  &
   floating_marker_name = .test_analysis_1.Upper_DP_Group6_sliderA.FMARKER_9002107  &
   adams_id = 9002107
!
part create rigid_body mass_properties  &
   part_name = .test_analysis_1.Upper_DP_Group6_sliderA  &
   density = 0.1
!
! ****** Graphics for current part ******
!
geometry create shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group6_sliderA.Upper_DP_Group6_sliderAgraphic  &
   adams_id = 3290  &
   center_marker = .test_analysis_1.Upper_DP_Group6_sliderA.A2  &
   angle_extent = 360.0  &
   length = 0.6  &
   radius = 7.0E-02  &
   side_count_for_body = 4  &
   segment_count_for_ends = 4
!
geometry attributes  &
   geometry_name = .test_analysis_1.Upper_DP_Group6_sliderA.Upper_DP_Group6_sliderAgraphic  &
   color = MidnightBlue2  &
   render = wireframe
!
geometry create curve circle  &
   circle_name = .test_analysis_1.Upper_DP_Group6_sliderA.ghole  &
   adams_id = 3166  &
   center_marker = .test_analysis_1.Upper_DP_Group6_sliderA.cm  &
   radius = 0.54175  &
   segment_count = 24
!
geometry attributes  &
   geometry_name = .test_analysis_1.Upper_DP_Group6_sliderA.ghole  &
   color = BLUE  &
   render = wireframe
!
!----------------------------- Upper_DP_Group6_C ------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .test_analysis_1.ground
!
part create rigid_body name_and_position  &
   part_name = .test_analysis_1.Upper_DP_Group6_C  &
   adams_id = 9002100  &
   location = 518.6176075843, 0.0, 1502.0547525431  &
   orientation = 90.0d, 89.9555653649d, 270.0d
!
defaults coordinate_system  &
   default_coordinate_system = .test_analysis_1.Upper_DP_Group6_C
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group6_C.gmark2  &
   adams_id = 9006406  &
   location = 0.0, 0.0, 7.7489698343  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group6_C.end_C  &
   adams_id = 9002100  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group6_C.cm  &
   adams_id = 9006404  &
   location = 0.0, 0.0, 3.0111032469  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group6_C.end_beamC  &
   adams_id = 9006405  &
   location = 0.0, 0.0, 1.0  &
   orientation = 0.0d, 90.0d, 90.0d
!
part create rigid_body mass_properties  &
   part_name = .test_analysis_1.Upper_DP_Group6_C  &
   mass = 7.743482937  &
   center_of_mass_marker = .test_analysis_1.Upper_DP_Group6_C.cm  &
   ixx = 53.8514401839  &
   iyy = 53.8514401839  &
   izz = 0.3323288305  &
   ixy = 0.0  &
   izx = 0.0  &
   iyz = 0.0
!
! ****** Graphics for current part ******
!
geometry create shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group6_C.cyl1a  &
   adams_id = 3288  &
   center_marker = .test_analysis_1.Upper_DP_Group6_C.end_C  &
   angle_extent = 6.0  &
   length = 1.0  &
   radius = 0.2945665  &
   side_count_for_body = 3  &
   segment_count_for_ends = 3
!
geometry attributes  &
   geometry_name = .test_analysis_1.Upper_DP_Group6_C.cyl1a  &
   color = RED
!
geometry create shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group6_C.cyl1  &
   adams_id = 3289  &
   center_marker = .test_analysis_1.Upper_DP_Group6_C.end_C  &
   angle_extent = 360.0  &
   length = 1.0  &
   radius = 0.29165  &
   side_count_for_body = 16  &
   segment_count_for_ends = 16
!
geometry attributes  &
   geometry_name = .test_analysis_1.Upper_DP_Group6_C.cyl1  &
   color = LtGray
!
geometry create shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group6_C.cyl2  &
   adams_id = 3286  &
   center_marker = .test_analysis_1.Upper_DP_Group6_C.gmark2  &
   angle_extent = 360.0  &
   length = -6.75  &
   radius = 0.20835  &
   side_count_for_body = 16  &
   segment_count_for_ends = 16
!
geometry attributes  &
   geometry_name = .test_analysis_1.Upper_DP_Group6_C.cyl2  &
   color = Gray
!
geometry create shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group6_C.cyl2a  &
   adams_id = 3287  &
   center_marker = .test_analysis_1.Upper_DP_Group6_C.gmark2  &
   angle_extent = 6.0  &
   length = -6.75  &
   radius = 0.2104335  &
   side_count_for_body = 3  &
   segment_count_for_ends = 3
!
geometry attributes  &
   geometry_name = .test_analysis_1.Upper_DP_Group6_C.cyl2a  &
   color = RED
!
!-------------------------- Upper_DP_Group6_sliderB ---------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .test_analysis_1.ground
!
part create rigid_body name_and_position  &
   part_name = .test_analysis_1.Upper_DP_Group6_sliderB  &
   adams_id = 9002001  &
   location = 534.1155485407, 0.0, 1502.0592929783  &
   orientation = 90.0d, 90.0108627085d, 270.0d
!
defaults coordinate_system  &
   default_coordinate_system = .test_analysis_1.Upper_DP_Group6_sliderB
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group6_sliderB.cm  &
   adams_id = 9002001  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group6_sliderB.B1  &
   adams_id = 9006409  &
   location = 0.0, 0.0, 0.3  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group6_sliderB.B2  &
   adams_id = 9006410  &
   location = 0.0, 0.0, -0.3  &
   orientation = 0.0d, 0.0d, 0.0d
!
! ****** Floating Markers for current part ******
!
floating_marker create  &
   floating_marker_name = .test_analysis_1.Upper_DP_Group6_sliderB.FMARKER_9002108  &
   adams_id = 9002108
!
part create rigid_body mass_properties  &
   part_name = .test_analysis_1.Upper_DP_Group6_sliderB  &
   density = 0.1
!
! ****** Graphics for current part ******
!
geometry create shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group6_sliderB.Upper_DP_Group6_sliderBgraphic  &
   adams_id = 3291  &
   center_marker = .test_analysis_1.Upper_DP_Group6_sliderB.B2  &
   angle_extent = 360.0  &
   length = 0.6  &
   radius = 7.0E-02  &
   side_count_for_body = 4  &
   segment_count_for_ends = 4
!
geometry attributes  &
   geometry_name = .test_analysis_1.Upper_DP_Group6_sliderB.Upper_DP_Group6_sliderBgraphic  &
   color = MidnightBlue2  &
   render = wireframe
!
geometry create curve circle  &
   circle_name = .test_analysis_1.Upper_DP_Group6_sliderB.ghole  &
   adams_id = 3167  &
   center_marker = .test_analysis_1.Upper_DP_Group6_sliderB.cm  &
   radius = 0.54175  &
   segment_count = 24
!
geometry attributes  &
   geometry_name = .test_analysis_1.Upper_DP_Group6_sliderB.ghole  &
   color = BLUE  &
   render = wireframe
!
!----------------------------- Upper_DP_Group7_A ------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .test_analysis_1.ground
!
part create rigid_body name_and_position  &
   part_name = .test_analysis_1.Upper_DP_Group7_A  &
   adams_id = 9002200  &
   location = 518.6147045221, 0.0, 1502.0547489608  &
   orientation = 90.0d, 89.895654038d, 270.0d
!
defaults coordinate_system  &
   default_coordinate_system = .test_analysis_1.Upper_DP_Group7_A
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group7_A.end_A  &
   adams_id = 9002200  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group7_A.cm  &
   adams_id = 9006411  &
   location = 0.0, 0.0, -3.0117709993  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group7_A.gmark1  &
   adams_id = 9006412  &
   location = 0.0, 0.0, -1.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group7_A.end_beamA  &
   adams_id = 9006413  &
   location = 0.0, 0.0, -1.0  &
   orientation = 0.0d, 90.0d, 90.0d
!
part create rigid_body mass_properties  &
   part_name = .test_analysis_1.Upper_DP_Group7_A  &
   mass = 7.743482937  &
   center_of_mass_marker = .test_analysis_1.Upper_DP_Group7_A.cm  &
   ixx = 53.8655360846  &
   iyy = 53.8655360846  &
   izz = 0.3323288305  &
   ixy = 0.0  &
   izx = 0.0  &
   iyz = 0.0
!
! ****** Graphics for current part ******
!
geometry create shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group7_A.cyl1  &
   adams_id = 3292  &
   center_marker = .test_analysis_1.Upper_DP_Group7_A.end_A  &
   angle_extent = 360.0  &
   length = -1.0  &
   radius = 0.29165  &
   side_count_for_body = 16  &
   segment_count_for_ends = 16
!
geometry attributes  &
   geometry_name = .test_analysis_1.Upper_DP_Group7_A.cyl1  &
   color = LtGray
!
geometry create shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group7_A.cyl1a  &
   adams_id = 3293  &
   center_marker = .test_analysis_1.Upper_DP_Group7_A.end_A  &
   angle_extent = 6.0  &
   length = -1.0  &
   radius = 0.2945665  &
   side_count_for_body = 3  &
   segment_count_for_ends = 3
!
geometry attributes  &
   geometry_name = .test_analysis_1.Upper_DP_Group7_A.cyl1a  &
   color = RED
!
geometry create shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group7_A.cyl2  &
   adams_id = 3294  &
   center_marker = .test_analysis_1.Upper_DP_Group7_A.gmark1  &
   angle_extent = 360.0  &
   length = -6.75  &
   radius = 0.20835  &
   side_count_for_body = 16  &
   segment_count_for_ends = 16
!
geometry attributes  &
   geometry_name = .test_analysis_1.Upper_DP_Group7_A.cyl2  &
   color = Gray
!
geometry create shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group7_A.cyl2a  &
   adams_id = 3295  &
   center_marker = .test_analysis_1.Upper_DP_Group7_A.gmark1  &
   angle_extent = 6.0  &
   length = -6.75  &
   radius = 0.2104335  &
   side_count_for_body = 3  &
   segment_count_for_ends = 3
!
geometry attributes  &
   geometry_name = .test_analysis_1.Upper_DP_Group7_A.cyl2a  &
   color = RED
!
!----------------------------- Upper_DP_Group7_B ------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .test_analysis_1.ground
!
part create rigid_body name_and_position  &
   part_name = .test_analysis_1.Upper_DP_Group7_B  &
   adams_id = 9002300  &
   location = 510.865761983, 0.0, 1502.0406367214  &
   orientation = 90.0d, 89.7353367317d, 270.0d
!
defaults coordinate_system  &
   default_coordinate_system = .test_analysis_1.Upper_DP_Group7_B
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group7_B.end_B  &
   adams_id = 9006414  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group7_B.cm  &
   adams_id = 9002300  &
   location = 0.0, 0.0, -7.75  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group7_B.end_beamB  &
   adams_id = 9006415  &
   location = 0.0, 0.0, -7.75  &
   orientation = 0.0d, 90.0d, 90.0d
!
part create rigid_body mass_properties  &
   part_name = .test_analysis_1.Upper_DP_Group7_B  &
   mass = 11.5258405181  &
   center_of_mass_marker = .test_analysis_1.Upper_DP_Group7_B.cm  &
   ixx = 294.0966081325  &
   iyy = 294.0966081325  &
   izz = 0.4102158729  &
   ixy = 0.0  &
   izx = 0.0  &
   iyz = 0.0
!
! ****** Graphics for current part ******
!
geometry create shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group7_B.cyl1  &
   adams_id = 3296  &
   center_marker = .test_analysis_1.Upper_DP_Group7_B.end_B  &
   angle_extent = 360.0  &
   length = -15.5  &
   radius = 0.20835  &
   side_count_for_body = 16  &
   segment_count_for_ends = 16
!
geometry attributes  &
   geometry_name = .test_analysis_1.Upper_DP_Group7_B.cyl1  &
   color = Gray
!
geometry create shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group7_B.cyl1a  &
   adams_id = 3297  &
   center_marker = .test_analysis_1.Upper_DP_Group7_B.end_B  &
   angle_extent = 6.0  &
   length = -15.5  &
   radius = 0.2104335  &
   side_count_for_body = 3  &
   segment_count_for_ends = 3
!
geometry attributes  &
   geometry_name = .test_analysis_1.Upper_DP_Group7_B.cyl1a  &
   color = RED
!
geometry create curve circle  &
   circle_name = .test_analysis_1.Upper_DP_Group7_B.rub1  &
   adams_id = 3168  &
   center_marker = .test_analysis_1.Upper_DP_Group7_B.cm  &
   radius = 0.25  &
   segment_count = 16
!
geometry attributes  &
   geometry_name = .test_analysis_1.Upper_DP_Group7_B.rub1  &
   color = Gray
!
!-------------------------- Upper_DP_Group7_sliderA ---------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .test_analysis_1.ground
!
part create rigid_body name_and_position  &
   part_name = .test_analysis_1.Upper_DP_Group7_sliderA  &
   adams_id = 9002201  &
   location = 518.6147045221, 0.0, 1502.0547489608  &
   orientation = 90.0d, 89.895654038d, 270.0d
!
defaults coordinate_system  &
   default_coordinate_system = .test_analysis_1.Upper_DP_Group7_sliderA
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group7_sliderA.cm  &
   adams_id = 9002201  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group7_sliderA.A1  &
   adams_id = 9006419  &
   location = 0.0, 0.0, 0.3  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group7_sliderA.A2  &
   adams_id = 9006420  &
   location = 0.0, 0.0, -0.3  &
   orientation = 0.0d, 0.0d, 0.0d
!
! ****** Floating Markers for current part ******
!
floating_marker create  &
   floating_marker_name = .test_analysis_1.Upper_DP_Group7_sliderA.FMARKER_9002407  &
   adams_id = 9002407
!
part create rigid_body mass_properties  &
   part_name = .test_analysis_1.Upper_DP_Group7_sliderA  &
   density = 0.1
!
! ****** Graphics for current part ******
!
geometry create shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group7_sliderA.Upper_DP_Group7_sliderAgraphic  &
   adams_id = 3302  &
   center_marker = .test_analysis_1.Upper_DP_Group7_sliderA.A2  &
   angle_extent = 360.0  &
   length = 0.6  &
   radius = 7.0E-02  &
   side_count_for_body = 4  &
   segment_count_for_ends = 4
!
geometry attributes  &
   geometry_name = .test_analysis_1.Upper_DP_Group7_sliderA.Upper_DP_Group7_sliderAgraphic  &
   color = MidnightBlue2  &
   render = wireframe
!
geometry create curve circle  &
   circle_name = .test_analysis_1.Upper_DP_Group7_sliderA.ghole  &
   adams_id = 3169  &
   center_marker = .test_analysis_1.Upper_DP_Group7_sliderA.cm  &
   radius = 0.54175  &
   segment_count = 24
!
geometry attributes  &
   geometry_name = .test_analysis_1.Upper_DP_Group7_sliderA.ghole  &
   color = BLUE  &
   render = wireframe
!
!----------------------------- Upper_DP_Group7_C ------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .test_analysis_1.ground
!
part create rigid_body name_and_position  &
   part_name = .test_analysis_1.Upper_DP_Group7_C  &
   adams_id = 9002400  &
   location = 487.6189674376, 0.0, 1501.8485106149  &
   orientation = 90.0d, 89.1087415425d, 270.0d
!
defaults coordinate_system  &
   default_coordinate_system = .test_analysis_1.Upper_DP_Group7_C
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group7_C.gmark2  &
   adams_id = 9006418  &
   location = 0.0, 0.0, 7.7489321979  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group7_C.end_C  &
   adams_id = 9002400  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group7_C.cm  &
   adams_id = 9006416  &
   location = 0.0, 0.0, 3.011078851  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group7_C.end_beamC  &
   adams_id = 9006417  &
   location = 0.0, 0.0, 1.0  &
   orientation = 0.0d, 90.0d, 90.0d
!
part create rigid_body mass_properties  &
   part_name = .test_analysis_1.Upper_DP_Group7_C  &
   mass = 7.743482937  &
   center_of_mass_marker = .test_analysis_1.Upper_DP_Group7_C.cm  &
   ixx = 53.8509252701  &
   iyy = 53.8509252701  &
   izz = 0.3323288305  &
   ixy = 0.0  &
   izx = 0.0  &
   iyz = 0.0
!
! ****** Graphics for current part ******
!
geometry create shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group7_C.cyl1a  &
   adams_id = 3300  &
   center_marker = .test_analysis_1.Upper_DP_Group7_C.end_C  &
   angle_extent = 6.0  &
   length = 1.0  &
   radius = 0.2945665  &
   side_count_for_body = 3  &
   segment_count_for_ends = 3
!
geometry attributes  &
   geometry_name = .test_analysis_1.Upper_DP_Group7_C.cyl1a  &
   color = RED
!
geometry create shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group7_C.cyl1  &
   adams_id = 3301  &
   center_marker = .test_analysis_1.Upper_DP_Group7_C.end_C  &
   angle_extent = 360.0  &
   length = 1.0  &
   radius = 0.29165  &
   side_count_for_body = 16  &
   segment_count_for_ends = 16
!
geometry attributes  &
   geometry_name = .test_analysis_1.Upper_DP_Group7_C.cyl1  &
   color = LtGray
!
geometry create shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group7_C.cyl2  &
   adams_id = 3298  &
   center_marker = .test_analysis_1.Upper_DP_Group7_C.gmark2  &
   angle_extent = 360.0  &
   length = -6.75  &
   radius = 0.20835  &
   side_count_for_body = 16  &
   segment_count_for_ends = 16
!
geometry attributes  &
   geometry_name = .test_analysis_1.Upper_DP_Group7_C.cyl2  &
   color = Gray
!
geometry create shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group7_C.cyl2a  &
   adams_id = 3299  &
   center_marker = .test_analysis_1.Upper_DP_Group7_C.gmark2  &
   angle_extent = 6.0  &
   length = -6.75  &
   radius = 0.2104335  &
   side_count_for_body = 3  &
   segment_count_for_ends = 3
!
geometry attributes  &
   geometry_name = .test_analysis_1.Upper_DP_Group7_C.cyl2a  &
   color = RED
!
!-------------------------- Upper_DP_Group7_sliderB ---------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .test_analysis_1.ground
!
part create rigid_body name_and_position  &
   part_name = .test_analysis_1.Upper_DP_Group7_sliderB  &
   adams_id = 9002301  &
   location = 503.1158446654, 0.0, 1502.0048376965  &
   orientation = 90.0d, 89.7353367317d, 270.0d
!
defaults coordinate_system  &
   default_coordinate_system = .test_analysis_1.Upper_DP_Group7_sliderB
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group7_sliderB.cm  &
   adams_id = 9002301  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group7_sliderB.B1  &
   adams_id = 9006421  &
   location = 0.0, 0.0, 0.3  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group7_sliderB.B2  &
   adams_id = 9006422  &
   location = 0.0, 0.0, -0.3  &
   orientation = 0.0d, 0.0d, 0.0d
!
! ****** Floating Markers for current part ******
!
floating_marker create  &
   floating_marker_name = .test_analysis_1.Upper_DP_Group7_sliderB.FMARKER_9002408  &
   adams_id = 9002408
!
part create rigid_body mass_properties  &
   part_name = .test_analysis_1.Upper_DP_Group7_sliderB  &
   density = 0.1
!
! ****** Graphics for current part ******
!
geometry create shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group7_sliderB.Upper_DP_Group7_sliderBgraphic  &
   adams_id = 3303  &
   center_marker = .test_analysis_1.Upper_DP_Group7_sliderB.B2  &
   angle_extent = 360.0  &
   length = 0.6  &
   radius = 7.0E-02  &
   side_count_for_body = 4  &
   segment_count_for_ends = 4
!
geometry attributes  &
   geometry_name = .test_analysis_1.Upper_DP_Group7_sliderB.Upper_DP_Group7_sliderBgraphic  &
   color = MidnightBlue2  &
   render = wireframe
!
geometry create curve circle  &
   circle_name = .test_analysis_1.Upper_DP_Group7_sliderB.ghole  &
   adams_id = 3170  &
   center_marker = .test_analysis_1.Upper_DP_Group7_sliderB.cm  &
   radius = 0.54175  &
   segment_count = 24
!
geometry attributes  &
   geometry_name = .test_analysis_1.Upper_DP_Group7_sliderB.ghole  &
   color = BLUE  &
   render = wireframe
!
!----------------------------- Upper_DP_Group8_A ------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .test_analysis_1.ground
!
part create rigid_body name_and_position  &
   part_name = .test_analysis_1.Upper_DP_Group8_A  &
   adams_id = 9002500  &
   location = 487.6159071788, 0.0, 1501.848438584  &
   orientation = 90.0d, 88.1409677293d, 270.0d
!
defaults coordinate_system  &
   default_coordinate_system = .test_analysis_1.Upper_DP_Group8_A
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group8_A.end_A  &
   adams_id = 9002500  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group8_A.cm  &
   adams_id = 9006423  &
   location = 0.0, 0.0, -3.0117709993  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group8_A.gmark1  &
   adams_id = 9006424  &
   location = 0.0, 0.0, -1.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group8_A.end_beamA  &
   adams_id = 9006425  &
   location = 0.0, 0.0, -1.0  &
   orientation = 0.0d, 90.0d, 90.0d
!
part create rigid_body mass_properties  &
   part_name = .test_analysis_1.Upper_DP_Group8_A  &
   mass = 7.743482937  &
   center_of_mass_marker = .test_analysis_1.Upper_DP_Group8_A.cm  &
   ixx = 53.8655360846  &
   iyy = 53.8655360846  &
   izz = 0.3323288305  &
   ixy = 0.0  &
   izx = 0.0  &
   iyz = 0.0
!
! ****** Graphics for current part ******
!
geometry create shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group8_A.cyl1  &
   adams_id = 3304  &
   center_marker = .test_analysis_1.Upper_DP_Group8_A.end_A  &
   angle_extent = 360.0  &
   length = -1.0  &
   radius = 0.29165  &
   side_count_for_body = 16  &
   segment_count_for_ends = 16
!
geometry attributes  &
   geometry_name = .test_analysis_1.Upper_DP_Group8_A.cyl1  &
   color = LtGray
!
geometry create shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group8_A.cyl1a  &
   adams_id = 3305  &
   center_marker = .test_analysis_1.Upper_DP_Group8_A.end_A  &
   angle_extent = 6.0  &
   length = -1.0  &
   radius = 0.2945665  &
   side_count_for_body = 3  &
   segment_count_for_ends = 3
!
geometry attributes  &
   geometry_name = .test_analysis_1.Upper_DP_Group8_A.cyl1a  &
   color = RED
!
geometry create shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group8_A.cyl2  &
   adams_id = 3306  &
   center_marker = .test_analysis_1.Upper_DP_Group8_A.gmark1  &
   angle_extent = 360.0  &
   length = -6.75  &
   radius = 0.20835  &
   side_count_for_body = 16  &
   segment_count_for_ends = 16
!
geometry attributes  &
   geometry_name = .test_analysis_1.Upper_DP_Group8_A.cyl2  &
   color = Gray
!
geometry create shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group8_A.cyl2a  &
   adams_id = 3307  &
   center_marker = .test_analysis_1.Upper_DP_Group8_A.gmark1  &
   angle_extent = 6.0  &
   length = -6.75  &
   radius = 0.2104335  &
   side_count_for_body = 3  &
   segment_count_for_ends = 3
!
geometry attributes  &
   geometry_name = .test_analysis_1.Upper_DP_Group8_A.cyl2a  &
   color = RED
!
!----------------------------- Upper_DP_Group8_B ------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .test_analysis_1.ground
!
part create rigid_body name_and_position  &
   part_name = .test_analysis_1.Upper_DP_Group8_B  &
   adams_id = 9002600  &
   location = 479.8710278123, 0.0, 1501.5970581951  &
   orientation = 90.0d, 86.7910236906d, 270.0d
!
defaults coordinate_system  &
   default_coordinate_system = .test_analysis_1.Upper_DP_Group8_B
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group8_B.end_B  &
   adams_id = 9006426  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group8_B.cm  &
   adams_id = 9002600  &
   location = 0.0, 0.0, -7.75  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group8_B.end_beamB  &
   adams_id = 9006427  &
   location = 0.0, 0.0, -7.75  &
   orientation = 0.0d, 90.0d, 90.0d
!
part create rigid_body mass_properties  &
   part_name = .test_analysis_1.Upper_DP_Group8_B  &
   mass = 11.5258405181  &
   center_of_mass_marker = .test_analysis_1.Upper_DP_Group8_B.cm  &
   ixx = 294.0966081325  &
   iyy = 294.0966081325  &
   izz = 0.4102158729  &
   ixy = 0.0  &
   izx = 0.0  &
   iyz = 0.0
!
! ****** Graphics for current part ******
!
geometry create shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group8_B.cyl1  &
   adams_id = 3308  &
   center_marker = .test_analysis_1.Upper_DP_Group8_B.end_B  &
   angle_extent = 360.0  &
   length = -15.5  &
   radius = 0.20835  &
   side_count_for_body = 16  &
   segment_count_for_ends = 16
!
geometry attributes  &
   geometry_name = .test_analysis_1.Upper_DP_Group8_B.cyl1  &
   color = Gray
!
geometry create shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group8_B.cyl1a  &
   adams_id = 3309  &
   center_marker = .test_analysis_1.Upper_DP_Group8_B.end_B  &
   angle_extent = 6.0  &
   length = -15.5  &
   radius = 0.2104335  &
   side_count_for_body = 3  &
   segment_count_for_ends = 3
!
geometry attributes  &
   geometry_name = .test_analysis_1.Upper_DP_Group8_B.cyl1a  &
   color = RED
!
geometry create curve circle  &
   circle_name = .test_analysis_1.Upper_DP_Group8_B.rub1  &
   adams_id = 3171  &
   center_marker = .test_analysis_1.Upper_DP_Group8_B.cm  &
   radius = 0.25  &
   segment_count = 16
!
geometry attributes  &
   geometry_name = .test_analysis_1.Upper_DP_Group8_B.rub1  &
   color = Gray
!
!-------------------------- Upper_DP_Group8_sliderA ---------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .test_analysis_1.ground
!
part create rigid_body name_and_position  &
   part_name = .test_analysis_1.Upper_DP_Group8_sliderA  &
   adams_id = 9002501  &
   location = 487.6159071788, 0.0, 1501.848438584  &
   orientation = 90.0d, 88.1409677293d, 270.0d
!
defaults coordinate_system  &
   default_coordinate_system = .test_analysis_1.Upper_DP_Group8_sliderA
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group8_sliderA.cm  &
   adams_id = 9002501  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group8_sliderA.A1  &
   adams_id = 9006431  &
   location = 0.0, 0.0, 0.3  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group8_sliderA.A2  &
   adams_id = 9006432  &
   location = 0.0, 0.0, -0.3  &
   orientation = 0.0d, 0.0d, 0.0d
!
! ****** Floating Markers for current part ******
!
floating_marker create  &
   floating_marker_name = .test_analysis_1.Upper_DP_Group8_sliderA.FMARKER_9002707  &
   adams_id = 9002707
!
part create rigid_body mass_properties  &
   part_name = .test_analysis_1.Upper_DP_Group8_sliderA  &
   density = 0.1
!
! ****** Graphics for current part ******
!
geometry create shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group8_sliderA.Upper_DP_Group8_sliderAgraphic  &
   adams_id = 3314  &
   center_marker = .test_analysis_1.Upper_DP_Group8_sliderA.A2  &
   angle_extent = 360.0  &
   length = 0.6  &
   radius = 7.0E-02  &
   side_count_for_body = 4  &
   segment_count_for_ends = 4
!
geometry attributes  &
   geometry_name = .test_analysis_1.Upper_DP_Group8_sliderA.Upper_DP_Group8_sliderAgraphic  &
   color = MidnightBlue2  &
   render = wireframe
!
geometry create curve circle  &
   circle_name = .test_analysis_1.Upper_DP_Group8_sliderA.ghole  &
   adams_id = 3172  &
   center_marker = .test_analysis_1.Upper_DP_Group8_sliderA.cm  &
   radius = 0.54175  &
   segment_count = 24
!
geometry attributes  &
   geometry_name = .test_analysis_1.Upper_DP_Group8_sliderA.ghole  &
   color = BLUE  &
   render = wireframe
!
!----------------------------- Upper_DP_Group8_C ------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .test_analysis_1.ground
!
part create rigid_body name_and_position  &
   part_name = .test_analysis_1.Upper_DP_Group8_C  &
   adams_id = 9002700  &
   location = 456.6714616606, 0.0, 1500.1219365575  &
   orientation = 90.0d, 85.5033076005d, 270.0d
!
defaults coordinate_system  &
   default_coordinate_system = .test_analysis_1.Upper_DP_Group8_C
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group8_C.gmark2  &
   adams_id = 9006430  &
   location = 0.0, 0.0, 7.7490813413  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group8_C.end_C  &
   adams_id = 9002700  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group8_C.cm  &
   adams_id = 9006428  &
   location = 0.0, 0.0, 3.0111755256  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group8_C.end_beamC  &
   adams_id = 9006429  &
   location = 0.0, 0.0, 1.0  &
   orientation = 0.0d, 90.0d, 90.0d
!
part create rigid_body mass_properties  &
   part_name = .test_analysis_1.Upper_DP_Group8_C  &
   mass = 7.743482937  &
   center_of_mass_marker = .test_analysis_1.Upper_DP_Group8_C.cm  &
   ixx = 53.8529657678  &
   iyy = 53.8529657678  &
   izz = 0.3323288305  &
   ixy = 0.0  &
   izx = 0.0  &
   iyz = 0.0
!
! ****** Graphics for current part ******
!
geometry create shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group8_C.cyl1a  &
   adams_id = 3312  &
   center_marker = .test_analysis_1.Upper_DP_Group8_C.end_C  &
   angle_extent = 6.0  &
   length = 1.0  &
   radius = 0.2945665  &
   side_count_for_body = 3  &
   segment_count_for_ends = 3
!
geometry attributes  &
   geometry_name = .test_analysis_1.Upper_DP_Group8_C.cyl1a  &
   color = RED
!
geometry create shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group8_C.cyl1  &
   adams_id = 3313  &
   center_marker = .test_analysis_1.Upper_DP_Group8_C.end_C  &
   angle_extent = 360.0  &
   length = 1.0  &
   radius = 0.29165  &
   side_count_for_body = 16  &
   segment_count_for_ends = 16
!
geometry attributes  &
   geometry_name = .test_analysis_1.Upper_DP_Group8_C.cyl1  &
   color = LtGray
!
geometry create shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group8_C.cyl2  &
   adams_id = 3310  &
   center_marker = .test_analysis_1.Upper_DP_Group8_C.gmark2  &
   angle_extent = 360.0  &
   length = -6.75  &
   radius = 0.20835  &
   side_count_for_body = 16  &
   segment_count_for_ends = 16
!
geometry attributes  &
   geometry_name = .test_analysis_1.Upper_DP_Group8_C.cyl2  &
   color = Gray
!
geometry create shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group8_C.cyl2a  &
   adams_id = 3311  &
   center_marker = .test_analysis_1.Upper_DP_Group8_C.gmark2  &
   angle_extent = 6.0  &
   length = -6.75  &
   radius = 0.2104335  &
   side_count_for_body = 3  &
   segment_count_for_ends = 3
!
geometry attributes  &
   geometry_name = .test_analysis_1.Upper_DP_Group8_C.cyl2a  &
   color = RED
!
!-------------------------- Upper_DP_Group8_sliderB ---------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .test_analysis_1.ground
!
part create rigid_body name_and_position  &
   part_name = .test_analysis_1.Upper_DP_Group8_sliderB  &
   adams_id = 9002601  &
   location = 472.1331797613, 0.0, 1501.1632292672  &
   orientation = 90.0d, 86.7910236906d, 270.0d
!
defaults coordinate_system  &
   default_coordinate_system = .test_analysis_1.Upper_DP_Group8_sliderB
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group8_sliderB.cm  &
   adams_id = 9002601  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group8_sliderB.B1  &
   adams_id = 9006433  &
   location = 0.0, 0.0, 0.3  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group8_sliderB.B2  &
   adams_id = 9006434  &
   location = 0.0, 0.0, -0.3  &
   orientation = 0.0d, 0.0d, 0.0d
!
! ****** Floating Markers for current part ******
!
floating_marker create  &
   floating_marker_name = .test_analysis_1.Upper_DP_Group8_sliderB.FMARKER_9002708  &
   adams_id = 9002708
!
part create rigid_body mass_properties  &
   part_name = .test_analysis_1.Upper_DP_Group8_sliderB  &
   density = 0.1
!
! ****** Graphics for current part ******
!
geometry create shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group8_sliderB.Upper_DP_Group8_sliderBgraphic  &
   adams_id = 3315  &
   center_marker = .test_analysis_1.Upper_DP_Group8_sliderB.B2  &
   angle_extent = 360.0  &
   length = 0.6  &
   radius = 7.0E-02  &
   side_count_for_body = 4  &
   segment_count_for_ends = 4
!
geometry attributes  &
   geometry_name = .test_analysis_1.Upper_DP_Group8_sliderB.Upper_DP_Group8_sliderBgraphic  &
   color = MidnightBlue2  &
   render = wireframe
!
geometry create curve circle  &
   circle_name = .test_analysis_1.Upper_DP_Group8_sliderB.ghole  &
   adams_id = 3173  &
   center_marker = .test_analysis_1.Upper_DP_Group8_sliderB.cm  &
   radius = 0.54175  &
   segment_count = 24
!
geometry attributes  &
   geometry_name = .test_analysis_1.Upper_DP_Group8_sliderB.ghole  &
   color = BLUE  &
   render = wireframe
!
!----------------------------- Upper_DP_Group9_A ------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .test_analysis_1.ground
!
part create rigid_body name_and_position  &
   part_name = .test_analysis_1.Upper_DP_Group9_A  &
   adams_id = 9002800  &
   location = 456.6685829294, 0.0, 1500.1216862314  &
   orientation = 90.0d, 84.5583152872d, 270.0d
!
defaults coordinate_system  &
   default_coordinate_system = .test_analysis_1.Upper_DP_Group9_A
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group9_A.end_A  &
   adams_id = 9002800  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group9_A.cm  &
   adams_id = 9006435  &
   location = 0.0, 0.0, -3.0117709993  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group9_A.gmark1  &
   adams_id = 9006436  &
   location = 0.0, 0.0, -1.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group9_A.end_beamA  &
   adams_id = 9006437  &
   location = 0.0, 0.0, -1.0  &
   orientation = 0.0d, 90.0d, 90.0d
!
part create rigid_body mass_properties  &
   part_name = .test_analysis_1.Upper_DP_Group9_A  &
   mass = 7.743482937  &
   center_of_mass_marker = .test_analysis_1.Upper_DP_Group9_A.cm  &
   ixx = 53.8655360846  &
   iyy = 53.8655360846  &
   izz = 0.3323288305  &
   ixy = 0.0  &
   izx = 0.0  &
   iyz = 0.0
!
! ****** Graphics for current part ******
!
geometry create shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group9_A.cyl1  &
   adams_id = 3316  &
   center_marker = .test_analysis_1.Upper_DP_Group9_A.end_A  &
   angle_extent = 360.0  &
   length = -1.0  &
   radius = 0.29165  &
   side_count_for_body = 16  &
   segment_count_for_ends = 16
!
geometry attributes  &
   geometry_name = .test_analysis_1.Upper_DP_Group9_A.cyl1  &
   color = LtGray
!
geometry create shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group9_A.cyl1a  &
   adams_id = 3317  &
   center_marker = .test_analysis_1.Upper_DP_Group9_A.end_A  &
   angle_extent = 6.0  &
   length = -1.0  &
   radius = 0.2945665  &
   side_count_for_body = 3  &
   segment_count_for_ends = 3
!
geometry attributes  &
   geometry_name = .test_analysis_1.Upper_DP_Group9_A.cyl1a  &
   color = RED
!
geometry create shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group9_A.cyl2  &
   adams_id = 3318  &
   center_marker = .test_analysis_1.Upper_DP_Group9_A.gmark1  &
   angle_extent = 360.0  &
   length = -6.75  &
   radius = 0.20835  &
   side_count_for_body = 16  &
   segment_count_for_ends = 16
!
geometry attributes  &
   geometry_name = .test_analysis_1.Upper_DP_Group9_A.cyl2  &
   color = Gray
!
geometry create shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group9_A.cyl2a  &
   adams_id = 3319  &
   center_marker = .test_analysis_1.Upper_DP_Group9_A.gmark1  &
   angle_extent = 6.0  &
   length = -6.75  &
   radius = 0.2104335  &
   side_count_for_body = 3  &
   segment_count_for_ends = 3
!
geometry attributes  &
   geometry_name = .test_analysis_1.Upper_DP_Group9_A.cyl2a  &
   color = RED
!
!----------------------------- Upper_DP_Group9_B ------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .test_analysis_1.ground
!
part create rigid_body name_and_position  &
   part_name = .test_analysis_1.Upper_DP_Group9_B  &
   adams_id = 9002900  &
   location = 448.9543944328, 0.0, 1499.386817838  &
   orientation = 90.0d, 83.2412933292d, 270.0d
!
defaults coordinate_system  &
   default_coordinate_system = .test_analysis_1.Upper_DP_Group9_B
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group9_B.end_B  &
   adams_id = 9006438  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group9_B.cm  &
   adams_id = 9002900  &
   location = 0.0, 0.0, -7.75  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group9_B.end_beamB  &
   adams_id = 9006439  &
   location = 0.0, 0.0, -7.75  &
   orientation = 0.0d, 90.0d, 90.0d
!
part create rigid_body mass_properties  &
   part_name = .test_analysis_1.Upper_DP_Group9_B  &
   mass = 11.5258405181  &
   center_of_mass_marker = .test_analysis_1.Upper_DP_Group9_B.cm  &
   ixx = 294.0966081325  &
   iyy = 294.0966081325  &
   izz = 0.4102158729  &
   ixy = 0.0  &
   izx = 0.0  &
   iyz = 0.0
!
! ****** Graphics for current part ******
!
geometry create shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group9_B.cyl1  &
   adams_id = 3320  &
   center_marker = .test_analysis_1.Upper_DP_Group9_B.end_B  &
   angle_extent = 360.0  &
   length = -15.5  &
   radius = 0.20835  &
   side_count_for_body = 16  &
   segment_count_for_ends = 16
!
geometry attributes  &
   geometry_name = .test_analysis_1.Upper_DP_Group9_B.cyl1  &
   color = Gray
!
geometry create shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group9_B.cyl1a  &
   adams_id = 3321  &
   center_marker = .test_analysis_1.Upper_DP_Group9_B.end_B  &
   angle_extent = 6.0  &
   length = -15.5  &
   radius = 0.2104335  &
   side_count_for_body = 3  &
   segment_count_for_ends = 3
!
geometry attributes  &
   geometry_name = .test_analysis_1.Upper_DP_Group9_B.cyl1a  &
   color = RED
!
geometry create curve circle  &
   circle_name = .test_analysis_1.Upper_DP_Group9_B.rub1  &
   adams_id = 3174  &
   center_marker = .test_analysis_1.Upper_DP_Group9_B.cm  &
   radius = 0.25  &
   segment_count = 16
!
geometry attributes  &
   geometry_name = .test_analysis_1.Upper_DP_Group9_B.rub1  &
   color = Gray
!
!-------------------------- Upper_DP_Group9_sliderA ---------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .test_analysis_1.ground
!
part create rigid_body name_and_position  &
   part_name = .test_analysis_1.Upper_DP_Group9_sliderA  &
   adams_id = 9002801  &
   location = 456.6685829294, 0.0, 1500.1216862314  &
   orientation = 90.0d, 84.5583152872d, 270.0d
!
defaults coordinate_system  &
   default_coordinate_system = .test_analysis_1.Upper_DP_Group9_sliderA
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group9_sliderA.cm  &
   adams_id = 9002801  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group9_sliderA.A1  &
   adams_id = 9006443  &
   location = 0.0, 0.0, 0.3  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group9_sliderA.A2  &
   adams_id = 9006444  &
   location = 0.0, 0.0, -0.3  &
   orientation = 0.0d, 0.0d, 0.0d
!
! ****** Floating Markers for current part ******
!
floating_marker create  &
   floating_marker_name = .test_analysis_1.Upper_DP_Group9_sliderA.FMARKER_9003007  &
   adams_id = 9003007
!
part create rigid_body mass_properties  &
   part_name = .test_analysis_1.Upper_DP_Group9_sliderA  &
   density = 0.1
!
! ****** Graphics for current part ******
!
geometry create shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group9_sliderA.Upper_DP_Group9_sliderAgraphic  &
   adams_id = 3326  &
   center_marker = .test_analysis_1.Upper_DP_Group9_sliderA.A2  &
   angle_extent = 360.0  &
   length = 0.6  &
   radius = 7.0E-02  &
   side_count_for_body = 4  &
   segment_count_for_ends = 4
!
geometry attributes  &
   geometry_name = .test_analysis_1.Upper_DP_Group9_sliderA.Upper_DP_Group9_sliderAgraphic  &
   color = MidnightBlue2  &
   render = wireframe
!
geometry create curve circle  &
   circle_name = .test_analysis_1.Upper_DP_Group9_sliderA.ghole  &
   adams_id = 3175  &
   center_marker = .test_analysis_1.Upper_DP_Group9_sliderA.cm  &
   radius = 0.54175  &
   segment_count = 24
!
geometry attributes  &
   geometry_name = .test_analysis_1.Upper_DP_Group9_sliderA.ghole  &
   color = BLUE  &
   render = wireframe
!
!----------------------------- Upper_DP_Group9_C ------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .test_analysis_1.ground
!
part create rigid_body name_and_position  &
   part_name = .test_analysis_1.Upper_DP_Group9_C  &
   adams_id = 9003000  &
   location = 425.891101165, 0.0, 1496.4737901919  &
   orientation = 90.0d, 81.921361902d, 270.0d
!
defaults coordinate_system  &
   default_coordinate_system = .test_analysis_1.Upper_DP_Group9_C
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group9_C.gmark2  &
   adams_id = 9006442  &
   location = 0.0, 0.0, 7.7492119949  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group9_C.end_C  &
   adams_id = 9003000  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group9_C.cm  &
   adams_id = 9006440  &
   location = 0.0, 0.0, 3.0112602151  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group9_C.end_beamC  &
   adams_id = 9006441  &
   location = 0.0, 0.0, 1.0  &
   orientation = 0.0d, 90.0d, 90.0d
!
part create rigid_body mass_properties  &
   part_name = .test_analysis_1.Upper_DP_Group9_C  &
   mass = 7.743482937  &
   center_of_mass_marker = .test_analysis_1.Upper_DP_Group9_C.cm  &
   ixx = 53.8547533635  &
   iyy = 53.8547533635  &
   izz = 0.3323288305  &
   ixy = 0.0  &
   izx = 0.0  &
   iyz = 0.0
!
! ****** Graphics for current part ******
!
geometry create shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group9_C.cyl1a  &
   adams_id = 3324  &
   center_marker = .test_analysis_1.Upper_DP_Group9_C.end_C  &
   angle_extent = 6.0  &
   length = 1.0  &
   radius = 0.2945665  &
   side_count_for_body = 3  &
   segment_count_for_ends = 3
!
geometry attributes  &
   geometry_name = .test_analysis_1.Upper_DP_Group9_C.cyl1a  &
   color = RED
!
geometry create shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group9_C.cyl1  &
   adams_id = 3325  &
   center_marker = .test_analysis_1.Upper_DP_Group9_C.end_C  &
   angle_extent = 360.0  &
   length = 1.0  &
   radius = 0.29165  &
   side_count_for_body = 16  &
   segment_count_for_ends = 16
!
geometry attributes  &
   geometry_name = .test_analysis_1.Upper_DP_Group9_C.cyl1  &
   color = LtGray
!
geometry create shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group9_C.cyl2  &
   adams_id = 3322  &
   center_marker = .test_analysis_1.Upper_DP_Group9_C.gmark2  &
   angle_extent = 360.0  &
   length = -6.75  &
   radius = 0.20835  &
   side_count_for_body = 16  &
   segment_count_for_ends = 16
!
geometry attributes  &
   geometry_name = .test_analysis_1.Upper_DP_Group9_C.cyl2  &
   color = Gray
!
geometry create shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group9_C.cyl2a  &
   adams_id = 3323  &
   center_marker = .test_analysis_1.Upper_DP_Group9_C.gmark2  &
   angle_extent = 6.0  &
   length = -6.75  &
   radius = 0.2104335  &
   side_count_for_body = 3  &
   segment_count_for_ends = 3
!
geometry attributes  &
   geometry_name = .test_analysis_1.Upper_DP_Group9_C.cyl2a  &
   color = RED
!
!-------------------------- Upper_DP_Group9_sliderB ---------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .test_analysis_1.ground
!
part create rigid_body name_and_position  &
   part_name = .test_analysis_1.Upper_DP_Group9_sliderB  &
   adams_id = 9002901  &
   location = 441.2582524029, 0.0, 1498.4747334909  &
   orientation = 90.0d, 83.2412933292d, 270.0d
!
defaults coordinate_system  &
   default_coordinate_system = .test_analysis_1.Upper_DP_Group9_sliderB
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group9_sliderB.cm  &
   adams_id = 9002901  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group9_sliderB.B1  &
   adams_id = 9006445  &
   location = 0.0, 0.0, 0.3  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group9_sliderB.B2  &
   adams_id = 9006446  &
   location = 0.0, 0.0, -0.3  &
   orientation = 0.0d, 0.0d, 0.0d
!
! ****** Floating Markers for current part ******
!
floating_marker create  &
   floating_marker_name = .test_analysis_1.Upper_DP_Group9_sliderB.FMARKER_9003008  &
   adams_id = 9003008
!
part create rigid_body mass_properties  &
   part_name = .test_analysis_1.Upper_DP_Group9_sliderB  &
   density = 0.1
!
! ****** Graphics for current part ******
!
geometry create shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group9_sliderB.Upper_DP_Group9_sliderBgraphic  &
   adams_id = 3327  &
   center_marker = .test_analysis_1.Upper_DP_Group9_sliderB.B2  &
   angle_extent = 360.0  &
   length = 0.6  &
   radius = 7.0E-02  &
   side_count_for_body = 4  &
   segment_count_for_ends = 4
!
geometry attributes  &
   geometry_name = .test_analysis_1.Upper_DP_Group9_sliderB.Upper_DP_Group9_sliderBgraphic  &
   color = MidnightBlue2  &
   render = wireframe
!
geometry create curve circle  &
   circle_name = .test_analysis_1.Upper_DP_Group9_sliderB.ghole  &
   adams_id = 3176  &
   center_marker = .test_analysis_1.Upper_DP_Group9_sliderB.cm  &
   radius = 0.54175  &
   segment_count = 24
!
geometry attributes  &
   geometry_name = .test_analysis_1.Upper_DP_Group9_sliderB.ghole  &
   color = BLUE  &
   render = wireframe
!
!----------------------------- Upper_DP_Group10_A -----------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .test_analysis_1.ground
!
part create rigid_body name_and_position  &
   part_name = .test_analysis_1.Upper_DP_Group10_A  &
   adams_id = 9003100  &
   location = 425.8886424264, 0.0, 1496.473421646  &
   orientation = 90.0d, 81.0275312375d, 270.0d
!
defaults coordinate_system  &
   default_coordinate_system = .test_analysis_1.Upper_DP_Group10_A
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group10_A.end_A  &
   adams_id = 9003100  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group10_A.cm  &
   adams_id = 9006447  &
   location = 0.0, 0.0, -3.0117709993  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group10_A.gmark1  &
   adams_id = 9006448  &
   location = 0.0, 0.0, -1.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group10_A.end_beamA  &
   adams_id = 9006449  &
   location = 0.0, 0.0, -1.0  &
   orientation = 0.0d, 90.0d, 90.0d
!
part create rigid_body mass_properties  &
   part_name = .test_analysis_1.Upper_DP_Group10_A  &
   mass = 7.743482937  &
   center_of_mass_marker = .test_analysis_1.Upper_DP_Group10_A.cm  &
   ixx = 53.8655360846  &
   iyy = 53.8655360846  &
   izz = 0.3323288305  &
   ixy = 0.0  &
   izx = 0.0  &
   iyz = 0.0
!
! ****** Graphics for current part ******
!
geometry create shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group10_A.cyl1  &
   adams_id = 3328  &
   center_marker = .test_analysis_1.Upper_DP_Group10_A.end_A  &
   angle_extent = 360.0  &
   length = -1.0  &
   radius = 0.29165  &
   side_count_for_body = 16  &
   segment_count_for_ends = 16
!
geometry attributes  &
   geometry_name = .test_analysis_1.Upper_DP_Group10_A.cyl1  &
   color = LtGray
!
geometry create shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group10_A.cyl1a  &
   adams_id = 3329  &
   center_marker = .test_analysis_1.Upper_DP_Group10_A.end_A  &
   angle_extent = 6.0  &
   length = -1.0  &
   radius = 0.2945665  &
   side_count_for_body = 3  &
   segment_count_for_ends = 3
!
geometry attributes  &
   geometry_name = .test_analysis_1.Upper_DP_Group10_A.cyl1a  &
   color = RED
!
geometry create shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group10_A.cyl2  &
   adams_id = 3330  &
   center_marker = .test_analysis_1.Upper_DP_Group10_A.gmark1  &
   angle_extent = 360.0  &
   length = -6.75  &
   radius = 0.20835  &
   side_count_for_body = 16  &
   segment_count_for_ends = 16
!
geometry attributes  &
   geometry_name = .test_analysis_1.Upper_DP_Group10_A.cyl2  &
   color = Gray
!
geometry create shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group10_A.cyl2a  &
   adams_id = 3331  &
   center_marker = .test_analysis_1.Upper_DP_Group10_A.gmark1  &
   angle_extent = 6.0  &
   length = -6.75  &
   radius = 0.2104335  &
   side_count_for_body = 3  &
   segment_count_for_ends = 3
!
geometry attributes  &
   geometry_name = .test_analysis_1.Upper_DP_Group10_A.cyl2a  &
   color = RED
!
!----------------------------- Upper_DP_Group10_B -----------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .test_analysis_1.ground
!
part create rigid_body name_and_position  &
   part_name = .test_analysis_1.Upper_DP_Group10_B  &
   adams_id = 9003200  &
   location = 418.2342294772, 0.0, 1495.2648517417  &
   orientation = 90.0d, 79.6985670303d, 270.0d
!
defaults coordinate_system  &
   default_coordinate_system = .test_analysis_1.Upper_DP_Group10_B
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group10_B.end_B  &
   adams_id = 9006450  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group10_B.cm  &
   adams_id = 9003200  &
   location = 0.0, 0.0, -7.75  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group10_B.end_beamB  &
   adams_id = 9006451  &
   location = 0.0, 0.0, -7.75  &
   orientation = 0.0d, 90.0d, 90.0d
!
part create rigid_body mass_properties  &
   part_name = .test_analysis_1.Upper_DP_Group10_B  &
   mass = 11.5258405181  &
   center_of_mass_marker = .test_analysis_1.Upper_DP_Group10_B.cm  &
   ixx = 294.0966081325  &
   iyy = 294.0966081325  &
   izz = 0.4102158729  &
   ixy = 0.0  &
   izx = 0.0  &
   iyz = 0.0
!
! ****** Graphics for current part ******
!
geometry create shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group10_B.cyl1  &
   adams_id = 3332  &
   center_marker = .test_analysis_1.Upper_DP_Group10_B.end_B  &
   angle_extent = 360.0  &
   length = -15.5  &
   radius = 0.20835  &
   side_count_for_body = 16  &
   segment_count_for_ends = 16
!
geometry attributes  &
   geometry_name = .test_analysis_1.Upper_DP_Group10_B.cyl1  &
   color = Gray
!
geometry create shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group10_B.cyl1a  &
   adams_id = 3333  &
   center_marker = .test_analysis_1.Upper_DP_Group10_B.end_B  &
   angle_extent = 6.0  &
   length = -15.5  &
   radius = 0.2104335  &
   side_count_for_body = 3  &
   segment_count_for_ends = 3
!
geometry attributes  &
   geometry_name = .test_analysis_1.Upper_DP_Group10_B.cyl1a  &
   color = RED
!
geometry create curve circle  &
   circle_name = .test_analysis_1.Upper_DP_Group10_B.rub1  &
   adams_id = 3177  &
   center_marker = .test_analysis_1.Upper_DP_Group10_B.cm  &
   radius = 0.25  &
   segment_count = 16
!
geometry attributes  &
   geometry_name = .test_analysis_1.Upper_DP_Group10_B.rub1  &
   color = Gray
!
!-------------------------- Upper_DP_Group10_sliderA --------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .test_analysis_1.ground
!
part create rigid_body name_and_position  &
   part_name = .test_analysis_1.Upper_DP_Group10_sliderA  &
   adams_id = 9003101  &
   location = 425.8886424264, 0.0, 1496.473421646  &
   orientation = 90.0d, 81.0275312375d, 270.0d
!
defaults coordinate_system  &
   default_coordinate_system = .test_analysis_1.Upper_DP_Group10_sliderA
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group10_sliderA.cm  &
   adams_id = 9003101  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group10_sliderA.A1  &
   adams_id = 9006455  &
   location = 0.0, 0.0, 0.3  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group10_sliderA.A2  &
   adams_id = 9006456  &
   location = 0.0, 0.0, -0.3  &
   orientation = 0.0d, 0.0d, 0.0d
!
! ****** Floating Markers for current part ******
!
floating_marker create  &
   floating_marker_name = .test_analysis_1.Upper_DP_Group10_sliderA.FMARKER_9003307  &
   adams_id = 9003307
!
part create rigid_body mass_properties  &
   part_name = .test_analysis_1.Upper_DP_Group10_sliderA  &
   density = 0.1
!
! ****** Graphics for current part ******
!
geometry create shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group10_sliderA.Upper_DP_Group10_sliderAgraphic  &
   adams_id = 3338  &
   center_marker = .test_analysis_1.Upper_DP_Group10_sliderA.A2  &
   angle_extent = 360.0  &
   length = 0.6  &
   radius = 7.0E-02  &
   side_count_for_body = 4  &
   segment_count_for_ends = 4
!
geometry attributes  &
   geometry_name = .test_analysis_1.Upper_DP_Group10_sliderA.Upper_DP_Group10_sliderAgraphic  &
   color = MidnightBlue2  &
   render = wireframe
!
geometry create curve circle  &
   circle_name = .test_analysis_1.Upper_DP_Group10_sliderA.ghole  &
   adams_id = 3178  &
   center_marker = .test_analysis_1.Upper_DP_Group10_sliderA.cm  &
   radius = 0.54175  &
   segment_count = 24
!
geometry attributes  &
   geometry_name = .test_analysis_1.Upper_DP_Group10_sliderA.ghole  &
   color = BLUE  &
   render = wireframe
!
!----------------------------- Upper_DP_Group10_C -----------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .test_analysis_1.ground
!
part create rigid_body name_and_position  &
   part_name = .test_analysis_1.Upper_DP_Group10_C  &
   adams_id = 9003300  &
   location = 395.3946294469, 0.0, 1490.9329435055  &
   orientation = 90.0d, 78.3842549434d, 270.0d
!
defaults coordinate_system  &
   default_coordinate_system = .test_analysis_1.Upper_DP_Group10_C
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group10_C.gmark2  &
   adams_id = 9006454  &
   location = 0.0, 0.0, 7.7493463933  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group10_C.end_C  &
   adams_id = 9003300  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group10_C.cm  &
   adams_id = 9006452  &
   location = 0.0, 0.0, 3.0113473321  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group10_C.end_beamC  &
   adams_id = 9006453  &
   location = 0.0, 0.0, 1.0  &
   orientation = 0.0d, 90.0d, 90.0d
!
part create rigid_body mass_properties  &
   part_name = .test_analysis_1.Upper_DP_Group10_C  &
   mass = 7.743482937  &
   center_of_mass_marker = .test_analysis_1.Upper_DP_Group10_C.cm  &
   ixx = 53.8565922582  &
   iyy = 53.8565922582  &
   izz = 0.3323288305  &
   ixy = 0.0  &
   izx = 0.0  &
   iyz = 0.0
!
! ****** Graphics for current part ******
!
geometry create shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group10_C.cyl1a  &
   adams_id = 3336  &
   center_marker = .test_analysis_1.Upper_DP_Group10_C.end_C  &
   angle_extent = 6.0  &
   length = 1.0  &
   radius = 0.2945665  &
   side_count_for_body = 3  &
   segment_count_for_ends = 3
!
geometry attributes  &
   geometry_name = .test_analysis_1.Upper_DP_Group10_C.cyl1a  &
   color = RED
!
geometry create shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group10_C.cyl1  &
   adams_id = 3337  &
   center_marker = .test_analysis_1.Upper_DP_Group10_C.end_C  &
   angle_extent = 360.0  &
   length = 1.0  &
   radius = 0.29165  &
   side_count_for_body = 16  &
   segment_count_for_ends = 16
!
geometry attributes  &
   geometry_name = .test_analysis_1.Upper_DP_Group10_C.cyl1  &
   color = LtGray
!
geometry create shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group10_C.cyl2  &
   adams_id = 3334  &
   center_marker = .test_analysis_1.Upper_DP_Group10_C.gmark2  &
   angle_extent = 360.0  &
   length = -6.75  &
   radius = 0.20835  &
   side_count_for_body = 16  &
   segment_count_for_ends = 16
!
geometry attributes  &
   geometry_name = .test_analysis_1.Upper_DP_Group10_C.cyl2  &
   color = Gray
!
geometry create shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group10_C.cyl2a  &
   adams_id = 3335  &
   center_marker = .test_analysis_1.Upper_DP_Group10_C.gmark2  &
   angle_extent = 6.0  &
   length = -6.75  &
   radius = 0.2104335  &
   side_count_for_body = 3  &
   segment_count_for_ends = 3
!
geometry attributes  &
   geometry_name = .test_analysis_1.Upper_DP_Group10_C.cyl2a  &
   color = RED
!
!-------------------------- Upper_DP_Group10_sliderB --------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .test_analysis_1.ground
!
part create rigid_body name_and_position  &
   part_name = .test_analysis_1.Upper_DP_Group10_sliderB  &
   adams_id = 9003201  &
   location = 410.6091550924, 0.0, 1493.8789438707  &
   orientation = 90.0d, 79.6985670303d, 270.0d
!
defaults coordinate_system  &
   default_coordinate_system = .test_analysis_1.Upper_DP_Group10_sliderB
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group10_sliderB.cm  &
   adams_id = 9003201  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group10_sliderB.B1  &
   adams_id = 9006457  &
   location = 0.0, 0.0, 0.3  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group10_sliderB.B2  &
   adams_id = 9006458  &
   location = 0.0, 0.0, -0.3  &
   orientation = 0.0d, 0.0d, 0.0d
!
! ****** Floating Markers for current part ******
!
floating_marker create  &
   floating_marker_name = .test_analysis_1.Upper_DP_Group10_sliderB.FMARKER_9003308  &
   adams_id = 9003308
!
part create rigid_body mass_properties  &
   part_name = .test_analysis_1.Upper_DP_Group10_sliderB  &
   density = 0.1
!
! ****** Graphics for current part ******
!
geometry create shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group10_sliderB.Upper_DP_Group10_sliderBgraphic  &
   adams_id = 3339  &
   center_marker = .test_analysis_1.Upper_DP_Group10_sliderB.B2  &
   angle_extent = 360.0  &
   length = 0.6  &
   radius = 7.0E-02  &
   side_count_for_body = 4  &
   segment_count_for_ends = 4
!
geometry attributes  &
   geometry_name = .test_analysis_1.Upper_DP_Group10_sliderB.Upper_DP_Group10_sliderBgraphic  &
   color = MidnightBlue2  &
   render = wireframe
!
geometry create curve circle  &
   circle_name = .test_analysis_1.Upper_DP_Group10_sliderB.ghole  &
   adams_id = 3179  &
   center_marker = .test_analysis_1.Upper_DP_Group10_sliderB.cm  &
   radius = 0.54175  &
   segment_count = 24
!
geometry attributes  &
   geometry_name = .test_analysis_1.Upper_DP_Group10_sliderB.ghole  &
   color = BLUE  &
   render = wireframe
!
!----------------------------- Upper_DP_Group11_A -----------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .test_analysis_1.ground
!
part create rigid_body name_and_position  &
   part_name = .test_analysis_1.Upper_DP_Group11_A  &
   adams_id = 9003400  &
   location = 395.3925676379, 0.0, 1490.9325043459  &
   orientation = 90.0d, 77.5386733227d, 270.0d
!
defaults coordinate_system  &
   default_coordinate_system = .test_analysis_1.Upper_DP_Group11_A
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group11_A.end_A  &
   adams_id = 9003400  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group11_A.cm  &
   adams_id = 9006459  &
   location = 0.0, 0.0, -3.0117709993  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group11_A.gmark1  &
   adams_id = 9006460  &
   location = 0.0, 0.0, -1.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group11_A.end_beamA  &
   adams_id = 9006461  &
   location = 0.0, 0.0, -1.0  &
   orientation = 0.0d, 90.0d, 90.0d
!
part create rigid_body mass_properties  &
   part_name = .test_analysis_1.Upper_DP_Group11_A  &
   mass = 7.743482937  &
   center_of_mass_marker = .test_analysis_1.Upper_DP_Group11_A.cm  &
   ixx = 53.8655360846  &
   iyy = 53.8655360846  &
   izz = 0.3323288305  &
   ixy = 0.0  &
   izx = 0.0  &
   iyz = 0.0
!
! ****** Graphics for current part ******
!
geometry create shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group11_A.cyl1  &
   adams_id = 3340  &
   center_marker = .test_analysis_1.Upper_DP_Group11_A.end_A  &
   angle_extent = 360.0  &
   length = -1.0  &
   radius = 0.29165  &
   side_count_for_body = 16  &
   segment_count_for_ends = 16
!
geometry attributes  &
   geometry_name = .test_analysis_1.Upper_DP_Group11_A.cyl1  &
   color = LtGray
!
geometry create shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group11_A.cyl1a  &
   adams_id = 3341  &
   center_marker = .test_analysis_1.Upper_DP_Group11_A.end_A  &
   angle_extent = 6.0  &
   length = -1.0  &
   radius = 0.2945665  &
   side_count_for_body = 3  &
   segment_count_for_ends = 3
!
geometry attributes  &
   geometry_name = .test_analysis_1.Upper_DP_Group11_A.cyl1a  &
   color = RED
!
geometry create shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group11_A.cyl2  &
   adams_id = 3342  &
   center_marker = .test_analysis_1.Upper_DP_Group11_A.gmark1  &
   angle_extent = 360.0  &
   length = -6.75  &
   radius = 0.20835  &
   side_count_for_body = 16  &
   segment_count_for_ends = 16
!
geometry attributes  &
   geometry_name = .test_analysis_1.Upper_DP_Group11_A.cyl2  &
   color = Gray
!
geometry create shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group11_A.cyl2a  &
   adams_id = 3343  &
   center_marker = .test_analysis_1.Upper_DP_Group11_A.gmark1  &
   angle_extent = 6.0  &
   length = -6.75  &
   radius = 0.2104335  &
   side_count_for_body = 3  &
   segment_count_for_ends = 3
!
geometry attributes  &
   geometry_name = .test_analysis_1.Upper_DP_Group11_A.cyl2a  &
   color = RED
!
!----------------------------- Upper_DP_Group11_B -----------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .test_analysis_1.ground
!
part create rigid_body name_and_position  &
   part_name = .test_analysis_1.Upper_DP_Group11_B  &
   adams_id = 9003500  &
   location = 387.8257617939, 0.0, 1489.2603415167  &
   orientation = 90.0d, 76.1178979072d, 270.0d
!
defaults coordinate_system  &
   default_coordinate_system = .test_analysis_1.Upper_DP_Group11_B
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group11_B.end_B  &
   adams_id = 9006462  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group11_B.cm  &
   adams_id = 9003500  &
   location = 0.0, 0.0, -7.75  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group11_B.end_beamB  &
   adams_id = 9006463  &
   location = 0.0, 0.0, -7.75  &
   orientation = 0.0d, 90.0d, 90.0d
!
part create rigid_body mass_properties  &
   part_name = .test_analysis_1.Upper_DP_Group11_B  &
   mass = 11.5258405181  &
   center_of_mass_marker = .test_analysis_1.Upper_DP_Group11_B.cm  &
   ixx = 294.0966081325  &
   iyy = 294.0966081325  &
   izz = 0.4102158729  &
   ixy = 0.0  &
   izx = 0.0  &
   iyz = 0.0
!
! ****** Graphics for current part ******
!
geometry create shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group11_B.cyl1  &
   adams_id = 3344  &
   center_marker = .test_analysis_1.Upper_DP_Group11_B.end_B  &
   angle_extent = 360.0  &
   length = -15.5  &
   radius = 0.20835  &
   side_count_for_body = 16  &
   segment_count_for_ends = 16
!
geometry attributes  &
   geometry_name = .test_analysis_1.Upper_DP_Group11_B.cyl1  &
   color = Gray
!
geometry create shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group11_B.cyl1a  &
   adams_id = 3345  &
   center_marker = .test_analysis_1.Upper_DP_Group11_B.end_B  &
   angle_extent = 6.0  &
   length = -15.5  &
   radius = 0.2104335  &
   side_count_for_body = 3  &
   segment_count_for_ends = 3
!
geometry attributes  &
   geometry_name = .test_analysis_1.Upper_DP_Group11_B.cyl1a  &
   color = RED
!
geometry create curve circle  &
   circle_name = .test_analysis_1.Upper_DP_Group11_B.rub1  &
   adams_id = 3180  &
   center_marker = .test_analysis_1.Upper_DP_Group11_B.cm  &
   radius = 0.25  &
   segment_count = 16
!
geometry attributes  &
   geometry_name = .test_analysis_1.Upper_DP_Group11_B.rub1  &
   color = Gray
!
!-------------------------- Upper_DP_Group11_sliderA --------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .test_analysis_1.ground
!
part create rigid_body name_and_position  &
   part_name = .test_analysis_1.Upper_DP_Group11_sliderA  &
   adams_id = 9003401  &
   location = 395.3925676379, 0.0, 1490.9325043459  &
   orientation = 90.0d, 77.5386733227d, 270.0d
!
defaults coordinate_system  &
   default_coordinate_system = .test_analysis_1.Upper_DP_Group11_sliderA
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group11_sliderA.cm  &
   adams_id = 9003401  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group11_sliderA.A1  &
   adams_id = 9006467  &
   location = 0.0, 0.0, 0.3  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group11_sliderA.A2  &
   adams_id = 9006468  &
   location = 0.0, 0.0, -0.3  &
   orientation = 0.0d, 0.0d, 0.0d
!
! ****** Floating Markers for current part ******
!
floating_marker create  &
   floating_marker_name = .test_analysis_1.Upper_DP_Group11_sliderA.FMARKER_9003607  &
   adams_id = 9003607
!
part create rigid_body mass_properties  &
   part_name = .test_analysis_1.Upper_DP_Group11_sliderA  &
   density = 0.1
!
! ****** Graphics for current part ******
!
geometry create shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group11_sliderA.Upper_DP_Group11_sliderAgraphic  &
   adams_id = 3350  &
   center_marker = .test_analysis_1.Upper_DP_Group11_sliderA.A2  &
   angle_extent = 360.0  &
   length = 0.6  &
   radius = 7.0E-02  &
   side_count_for_body = 4  &
   segment_count_for_ends = 4
!
geometry attributes  &
   geometry_name = .test_analysis_1.Upper_DP_Group11_sliderA.Upper_DP_Group11_sliderAgraphic  &
   color = MidnightBlue2  &
   render = wireframe
!
geometry create curve circle  &
   circle_name = .test_analysis_1.Upper_DP_Group11_sliderA.ghole  &
   adams_id = 3181  &
   center_marker = .test_analysis_1.Upper_DP_Group11_sliderA.cm  &
   radius = 0.54175  &
   segment_count = 24
!
geometry attributes  &
   geometry_name = .test_analysis_1.Upper_DP_Group11_sliderA.ghole  &
   color = BLUE  &
   render = wireframe
!
!----------------------------- Upper_DP_Group11_C -----------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .test_analysis_1.ground
!
part create rigid_body name_and_position  &
   part_name = .test_analysis_1.Upper_DP_Group11_C  &
   adams_id = 9003600  &
   location = 365.3003781085, 0.0, 1483.5129055711  &
   orientation = 90.0d, 74.8227159993d, 270.0d
!
defaults coordinate_system  &
   default_coordinate_system = .test_analysis_1.Upper_DP_Group11_C
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group11_C.gmark2  &
   adams_id = 9006466  &
   location = 0.0, 0.0, 7.7494840264  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group11_C.end_C  &
   adams_id = 9003600  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group11_C.cm  &
   adams_id = 9006464  &
   location = 0.0, 0.0, 3.0114365457  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group11_C.end_beamC  &
   adams_id = 9006465  &
   location = 0.0, 0.0, 1.0  &
   orientation = 0.0d, 90.0d, 90.0d
!
part create rigid_body mass_properties  &
   part_name = .test_analysis_1.Upper_DP_Group11_C  &
   mass = 7.743482937  &
   center_of_mass_marker = .test_analysis_1.Upper_DP_Group11_C.cm  &
   ixx = 53.8584754775  &
   iyy = 53.8584754775  &
   izz = 0.3323288305  &
   ixy = 0.0  &
   izx = 0.0  &
   iyz = 0.0
!
! ****** Graphics for current part ******
!
geometry create shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group11_C.cyl1a  &
   adams_id = 3348  &
   center_marker = .test_analysis_1.Upper_DP_Group11_C.end_C  &
   angle_extent = 6.0  &
   length = 1.0  &
   radius = 0.2945665  &
   side_count_for_body = 3  &
   segment_count_for_ends = 3
!
geometry attributes  &
   geometry_name = .test_analysis_1.Upper_DP_Group11_C.cyl1a  &
   color = RED
!
geometry create shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group11_C.cyl1  &
   adams_id = 3349  &
   center_marker = .test_analysis_1.Upper_DP_Group11_C.end_C  &
   angle_extent = 360.0  &
   length = 1.0  &
   radius = 0.29165  &
   side_count_for_body = 16  &
   segment_count_for_ends = 16
!
geometry attributes  &
   geometry_name = .test_analysis_1.Upper_DP_Group11_C.cyl1  &
   color = LtGray
!
geometry create shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group11_C.cyl2  &
   adams_id = 3346  &
   center_marker = .test_analysis_1.Upper_DP_Group11_C.gmark2  &
   angle_extent = 360.0  &
   length = -6.75  &
   radius = 0.20835  &
   side_count_for_body = 16  &
   segment_count_for_ends = 16
!
geometry attributes  &
   geometry_name = .test_analysis_1.Upper_DP_Group11_C.cyl2  &
   color = Gray
!
geometry create shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group11_C.cyl2a  &
   adams_id = 3347  &
   center_marker = .test_analysis_1.Upper_DP_Group11_C.gmark2  &
   angle_extent = 6.0  &
   length = -6.75  &
   radius = 0.2104335  &
   side_count_for_body = 3  &
   segment_count_for_ends = 3
!
geometry attributes  &
   geometry_name = .test_analysis_1.Upper_DP_Group11_C.cyl2a  &
   color = RED
!
!-------------------------- Upper_DP_Group11_sliderB --------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .test_analysis_1.ground
!
part create rigid_body name_and_position  &
   part_name = .test_analysis_1.Upper_DP_Group11_sliderB  &
   adams_id = 9003501  &
   location = 380.3021278547, 0.0, 1487.4009243101  &
   orientation = 90.0d, 76.1178979072d, 270.0d
!
defaults coordinate_system  &
   default_coordinate_system = .test_analysis_1.Upper_DP_Group11_sliderB
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group11_sliderB.cm  &
   adams_id = 9003501  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group11_sliderB.B1  &
   adams_id = 9006469  &
   location = 0.0, 0.0, 0.3  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group11_sliderB.B2  &
   adams_id = 9006470  &
   location = 0.0, 0.0, -0.3  &
   orientation = 0.0d, 0.0d, 0.0d
!
! ****** Floating Markers for current part ******
!
floating_marker create  &
   floating_marker_name = .test_analysis_1.Upper_DP_Group11_sliderB.FMARKER_9003608  &
   adams_id = 9003608
!
part create rigid_body mass_properties  &
   part_name = .test_analysis_1.Upper_DP_Group11_sliderB  &
   density = 0.1
!
! ****** Graphics for current part ******
!
geometry create shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group11_sliderB.Upper_DP_Group11_sliderBgraphic  &
   adams_id = 3351  &
   center_marker = .test_analysis_1.Upper_DP_Group11_sliderB.B2  &
   angle_extent = 360.0  &
   length = 0.6  &
   radius = 7.0E-02  &
   side_count_for_body = 4  &
   segment_count_for_ends = 4
!
geometry attributes  &
   geometry_name = .test_analysis_1.Upper_DP_Group11_sliderB.Upper_DP_Group11_sliderBgraphic  &
   color = MidnightBlue2  &
   render = wireframe
!
geometry create curve circle  &
   circle_name = .test_analysis_1.Upper_DP_Group11_sliderB.ghole  &
   adams_id = 3182  &
   center_marker = .test_analysis_1.Upper_DP_Group11_sliderB.cm  &
   radius = 0.54175  &
   segment_count = 24
!
geometry attributes  &
   geometry_name = .test_analysis_1.Upper_DP_Group11_sliderB.ghole  &
   color = BLUE  &
   render = wireframe
!
!----------------------------- Upper_DP_Group12_A -----------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .test_analysis_1.ground
!
part create rigid_body name_and_position  &
   part_name = .test_analysis_1.Upper_DP_Group12_A  &
   adams_id = 9003700  &
   location = 365.2987175484, 0.0, 1483.5124417046  &
   orientation = 90.0d, 73.9298492835d, 270.0d
!
defaults coordinate_system  &
   default_coordinate_system = .test_analysis_1.Upper_DP_Group12_A
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group12_A.end_A  &
   adams_id = 9003700  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group12_A.cm  &
   adams_id = 9006471  &
   location = 0.0, 0.0, -3.0117709993  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group12_A.gmark1  &
   adams_id = 9006472  &
   location = 0.0, 0.0, -1.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group12_A.end_beamA  &
   adams_id = 9006473  &
   location = 0.0, 0.0, -1.0  &
   orientation = 0.0d, 90.0d, 90.0d
!
part create rigid_body mass_properties  &
   part_name = .test_analysis_1.Upper_DP_Group12_A  &
   mass = 7.743482937  &
   center_of_mass_marker = .test_analysis_1.Upper_DP_Group12_A.cm  &
   ixx = 53.8655360846  &
   iyy = 53.8655360846  &
   izz = 0.3323288305  &
   ixy = 0.0  &
   izx = 0.0  &
   iyz = 0.0
!
! ****** Graphics for current part ******
!
geometry create shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group12_A.cyl1  &
   adams_id = 3352  &
   center_marker = .test_analysis_1.Upper_DP_Group12_A.end_A  &
   angle_extent = 360.0  &
   length = -1.0  &
   radius = 0.29165  &
   side_count_for_body = 16  &
   segment_count_for_ends = 16
!
geometry attributes  &
   geometry_name = .test_analysis_1.Upper_DP_Group12_A.cyl1  &
   color = LtGray
!
geometry create shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group12_A.cyl1a  &
   adams_id = 3353  &
   center_marker = .test_analysis_1.Upper_DP_Group12_A.end_A  &
   angle_extent = 6.0  &
   length = -1.0  &
   radius = 0.2945665  &
   side_count_for_body = 3  &
   segment_count_for_ends = 3
!
geometry attributes  &
   geometry_name = .test_analysis_1.Upper_DP_Group12_A.cyl1a  &
   color = RED
!
geometry create shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group12_A.cyl2  &
   adams_id = 3354  &
   center_marker = .test_analysis_1.Upper_DP_Group12_A.gmark1  &
   angle_extent = 360.0  &
   length = -6.75  &
   radius = 0.20835  &
   side_count_for_body = 16  &
   segment_count_for_ends = 16
!
geometry attributes  &
   geometry_name = .test_analysis_1.Upper_DP_Group12_A.cyl2  &
   color = Gray
!
geometry create shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group12_A.cyl2a  &
   adams_id = 3355  &
   center_marker = .test_analysis_1.Upper_DP_Group12_A.gmark1  &
   angle_extent = 6.0  &
   length = -6.75  &
   radius = 0.2104335  &
   side_count_for_body = 3  &
   segment_count_for_ends = 3
!
geometry attributes  &
   geometry_name = .test_analysis_1.Upper_DP_Group12_A.cyl2a  &
   color = RED
!
!----------------------------- Upper_DP_Group12_B -----------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .test_analysis_1.ground
!
part create rigid_body name_and_position  &
   part_name = .test_analysis_1.Upper_DP_Group12_B  &
   adams_id = 9003800  &
   location = 357.8520709314, 0.0, 1481.3672796361  &
   orientation = 90.0d, 72.6038600745d, 270.0d
!
defaults coordinate_system  &
   default_coordinate_system = .test_analysis_1.Upper_DP_Group12_B
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group12_B.end_B  &
   adams_id = 9006474  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group12_B.cm  &
   adams_id = 9003800  &
   location = 0.0, 0.0, -7.75  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group12_B.end_beamB  &
   adams_id = 9006475  &
   location = 0.0, 0.0, -7.75  &
   orientation = 0.0d, 90.0d, 90.0d
!
part create rigid_body mass_properties  &
   part_name = .test_analysis_1.Upper_DP_Group12_B  &
   mass = 11.5258405181  &
   center_of_mass_marker = .test_analysis_1.Upper_DP_Group12_B.cm  &
   ixx = 294.0966081325  &
   iyy = 294.0966081325  &
   izz = 0.4102158729  &
   ixy = 0.0  &
   izx = 0.0  &
   iyz = 0.0
!
! ****** Graphics for current part ******
!
geometry create shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group12_B.cyl1  &
   adams_id = 3356  &
   center_marker = .test_analysis_1.Upper_DP_Group12_B.end_B  &
   angle_extent = 360.0  &
   length = -15.5  &
   radius = 0.20835  &
   side_count_for_body = 16  &
   segment_count_for_ends = 16
!
geometry attributes  &
   geometry_name = .test_analysis_1.Upper_DP_Group12_B.cyl1  &
   color = Gray
!
geometry create shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group12_B.cyl1a  &
   adams_id = 3357  &
   center_marker = .test_analysis_1.Upper_DP_Group12_B.end_B  &
   angle_extent = 6.0  &
   length = -15.5  &
   radius = 0.2104335  &
   side_count_for_body = 3  &
   segment_count_for_ends = 3
!
geometry attributes  &
   geometry_name = .test_analysis_1.Upper_DP_Group12_B.cyl1a  &
   color = RED
!
geometry create curve circle  &
   circle_name = .test_analysis_1.Upper_DP_Group12_B.rub1  &
   adams_id = 3183  &
   center_marker = .test_analysis_1.Upper_DP_Group12_B.cm  &
   radius = 0.25  &
   segment_count = 16
!
geometry attributes  &
   geometry_name = .test_analysis_1.Upper_DP_Group12_B.rub1  &
   color = Gray
!
!-------------------------- Upper_DP_Group12_sliderA --------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .test_analysis_1.ground
!
part create rigid_body name_and_position  &
   part_name = .test_analysis_1.Upper_DP_Group12_sliderA  &
   adams_id = 9003701  &
   location = 365.2987175484, 0.0, 1483.5124417046  &
   orientation = 90.0d, 73.9298492835d, 270.0d
!
defaults coordinate_system  &
   default_coordinate_system = .test_analysis_1.Upper_DP_Group12_sliderA
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group12_sliderA.cm  &
   adams_id = 9003701  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group12_sliderA.A1  &
   adams_id = 9006479  &
   location = 0.0, 0.0, 0.3  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group12_sliderA.A2  &
   adams_id = 9006480  &
   location = 0.0, 0.0, -0.3  &
   orientation = 0.0d, 0.0d, 0.0d
!
! ****** Floating Markers for current part ******
!
floating_marker create  &
   floating_marker_name = .test_analysis_1.Upper_DP_Group12_sliderA.FMARKER_9003907  &
   adams_id = 9003907
!
part create rigid_body mass_properties  &
   part_name = .test_analysis_1.Upper_DP_Group12_sliderA  &
   density = 0.1
!
! ****** Graphics for current part ******
!
geometry create shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group12_sliderA.Upper_DP_Group12_sliderAgraphic  &
   adams_id = 3362  &
   center_marker = .test_analysis_1.Upper_DP_Group12_sliderA.A2  &
   angle_extent = 360.0  &
   length = 0.6  &
   radius = 7.0E-02  &
   side_count_for_body = 4  &
   segment_count_for_ends = 4
!
geometry attributes  &
   geometry_name = .test_analysis_1.Upper_DP_Group12_sliderA.Upper_DP_Group12_sliderAgraphic  &
   color = MidnightBlue2  &
   render = wireframe
!
geometry create curve circle  &
   circle_name = .test_analysis_1.Upper_DP_Group12_sliderA.ghole  &
   adams_id = 3184  &
   center_marker = .test_analysis_1.Upper_DP_Group12_sliderA.cm  &
   radius = 0.54175  &
   segment_count = 24
!
geometry attributes  &
   geometry_name = .test_analysis_1.Upper_DP_Group12_sliderA.ghole  &
   color = BLUE  &
   render = wireframe
!
!----------------------------- Upper_DP_Group12_C -----------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .test_analysis_1.ground
!
part create rigid_body name_and_position  &
   part_name = .test_analysis_1.Upper_DP_Group12_C  &
   adams_id = 9003900  &
   location = 335.723544811, 0.0, 1474.2425597681  &
   orientation = 90.0d, 71.251272663d, 270.0d
!
defaults coordinate_system  &
   default_coordinate_system = .test_analysis_1.Upper_DP_Group12_C
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group12_C.gmark2  &
   adams_id = 9006478  &
   location = 0.0, 0.0, 7.7496239935  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group12_C.end_C  &
   adams_id = 9003900  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group12_C.cm  &
   adams_id = 9006476  &
   location = 0.0, 0.0, 3.0115272723  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group12_C.end_beamC  &
   adams_id = 9006477  &
   location = 0.0, 0.0, 1.0  &
   orientation = 0.0d, 90.0d, 90.0d
!
part create rigid_body mass_properties  &
   part_name = .test_analysis_1.Upper_DP_Group12_C  &
   mass = 7.743482937  &
   center_of_mass_marker = .test_analysis_1.Upper_DP_Group12_C.cm  &
   ixx = 53.8603907014  &
   iyy = 53.8603907014  &
   izz = 0.3323288305  &
   ixy = 0.0  &
   izx = 0.0  &
   iyz = 0.0
!
! ****** Graphics for current part ******
!
geometry create shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group12_C.cyl1a  &
   adams_id = 3360  &
   center_marker = .test_analysis_1.Upper_DP_Group12_C.end_C  &
   angle_extent = 6.0  &
   length = 1.0  &
   radius = 0.2945665  &
   side_count_for_body = 3  &
   segment_count_for_ends = 3
!
geometry attributes  &
   geometry_name = .test_analysis_1.Upper_DP_Group12_C.cyl1a  &
   color = RED
!
geometry create shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group12_C.cyl1  &
   adams_id = 3361  &
   center_marker = .test_analysis_1.Upper_DP_Group12_C.end_C  &
   angle_extent = 360.0  &
   length = 1.0  &
   radius = 0.29165  &
   side_count_for_body = 16  &
   segment_count_for_ends = 16
!
geometry attributes  &
   geometry_name = .test_analysis_1.Upper_DP_Group12_C.cyl1  &
   color = LtGray
!
geometry create shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group12_C.cyl2  &
   adams_id = 3358  &
   center_marker = .test_analysis_1.Upper_DP_Group12_C.gmark2  &
   angle_extent = 360.0  &
   length = -6.75  &
   radius = 0.20835  &
   side_count_for_body = 16  &
   segment_count_for_ends = 16
!
geometry attributes  &
   geometry_name = .test_analysis_1.Upper_DP_Group12_C.cyl2  &
   color = Gray
!
geometry create shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group12_C.cyl2a  &
   adams_id = 3359  &
   center_marker = .test_analysis_1.Upper_DP_Group12_C.gmark2  &
   angle_extent = 6.0  &
   length = -6.75  &
   radius = 0.2104335  &
   side_count_for_body = 3  &
   segment_count_for_ends = 3
!
geometry attributes  &
   geometry_name = .test_analysis_1.Upper_DP_Group12_C.cyl2a  &
   color = RED
!
!-------------------------- Upper_DP_Group12_sliderB --------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .test_analysis_1.ground
!
part create rigid_body name_and_position  &
   part_name = .test_analysis_1.Upper_DP_Group12_sliderB  &
   adams_id = 9003801  &
   location = 350.4565522654, 0.0, 1479.0502117344  &
   orientation = 90.0d, 72.6038600745d, 270.0d
!
defaults coordinate_system  &
   default_coordinate_system = .test_analysis_1.Upper_DP_Group12_sliderB
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group12_sliderB.cm  &
   adams_id = 9003801  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group12_sliderB.B1  &
   adams_id = 9006481  &
   location = 0.0, 0.0, 0.3  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group12_sliderB.B2  &
   adams_id = 9006482  &
   location = 0.0, 0.0, -0.3  &
   orientation = 0.0d, 0.0d, 0.0d
!
! ****** Floating Markers for current part ******
!
floating_marker create  &
   floating_marker_name = .test_analysis_1.Upper_DP_Group12_sliderB.FMARKER_9003908  &
   adams_id = 9003908
!
part create rigid_body mass_properties  &
   part_name = .test_analysis_1.Upper_DP_Group12_sliderB  &
   density = 0.1
!
! ****** Graphics for current part ******
!
geometry create shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group12_sliderB.Upper_DP_Group12_sliderBgraphic  &
   adams_id = 3363  &
   center_marker = .test_analysis_1.Upper_DP_Group12_sliderB.B2  &
   angle_extent = 360.0  &
   length = 0.6  &
   radius = 7.0E-02  &
   side_count_for_body = 4  &
   segment_count_for_ends = 4
!
geometry attributes  &
   geometry_name = .test_analysis_1.Upper_DP_Group12_sliderB.Upper_DP_Group12_sliderBgraphic  &
   color = MidnightBlue2  &
   render = wireframe
!
geometry create curve circle  &
   circle_name = .test_analysis_1.Upper_DP_Group12_sliderB.ghole  &
   adams_id = 3185  &
   center_marker = .test_analysis_1.Upper_DP_Group12_sliderB.cm  &
   radius = 0.54175  &
   segment_count = 24
!
geometry attributes  &
   geometry_name = .test_analysis_1.Upper_DP_Group12_sliderB.ghole  &
   color = BLUE  &
   render = wireframe
!
!----------------------------- Upper_DP_Group13_A -----------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .test_analysis_1.ground
!
part create rigid_body name_and_position  &
   part_name = .test_analysis_1.Upper_DP_Group13_A  &
   adams_id = 9004000  &
   location = 335.7222718733, 0.0, 1474.2421175649  &
   orientation = 90.0d, 70.4016421238d, 270.0d
!
defaults coordinate_system  &
   default_coordinate_system = .test_analysis_1.Upper_DP_Group13_A
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group13_A.end_A  &
   adams_id = 9004000  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group13_A.cm  &
   adams_id = 9006483  &
   location = 0.0, 0.0, -3.0117709993  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group13_A.gmark1  &
   adams_id = 9006484  &
   location = 0.0, 0.0, -1.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group13_A.end_beamA  &
   adams_id = 9006485  &
   location = 0.0, 0.0, -1.0  &
   orientation = 0.0d, 90.0d, 90.0d
!
part create rigid_body mass_properties  &
   part_name = .test_analysis_1.Upper_DP_Group13_A  &
   mass = 7.743482937  &
   center_of_mass_marker = .test_analysis_1.Upper_DP_Group13_A.cm  &
   ixx = 53.8655360846  &
   iyy = 53.8655360846  &
   izz = 0.3323288305  &
   ixy = 0.0  &
   izx = 0.0  &
   iyz = 0.0
!
! ****** Graphics for current part ******
!
geometry create shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group13_A.cyl1  &
   adams_id = 3364  &
   center_marker = .test_analysis_1.Upper_DP_Group13_A.end_A  &
   angle_extent = 360.0  &
   length = -1.0  &
   radius = 0.29165  &
   side_count_for_body = 16  &
   segment_count_for_ends = 16
!
geometry attributes  &
   geometry_name = .test_analysis_1.Upper_DP_Group13_A.cyl1  &
   color = LtGray
!
geometry create shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group13_A.cyl1a  &
   adams_id = 3365  &
   center_marker = .test_analysis_1.Upper_DP_Group13_A.end_A  &
   angle_extent = 6.0  &
   length = -1.0  &
   radius = 0.2945665  &
   side_count_for_body = 3  &
   segment_count_for_ends = 3
!
geometry attributes  &
   geometry_name = .test_analysis_1.Upper_DP_Group13_A.cyl1a  &
   color = RED
!
geometry create shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group13_A.cyl2  &
   adams_id = 3366  &
   center_marker = .test_analysis_1.Upper_DP_Group13_A.gmark1  &
   angle_extent = 360.0  &
   length = -6.75  &
   radius = 0.20835  &
   side_count_for_body = 16  &
   segment_count_for_ends = 16
!
geometry attributes  &
   geometry_name = .test_analysis_1.Upper_DP_Group13_A.cyl2  &
   color = Gray
!
geometry create shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group13_A.cyl2a  &
   adams_id = 3367  &
   center_marker = .test_analysis_1.Upper_DP_Group13_A.gmark1  &
   angle_extent = 6.0  &
   length = -6.75  &
   radius = 0.2104335  &
   side_count_for_body = 3  &
   segment_count_for_ends = 3
!
geometry attributes  &
   geometry_name = .test_analysis_1.Upper_DP_Group13_A.cyl2a  &
   color = RED
!
!----------------------------- Upper_DP_Group13_B -----------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .test_analysis_1.ground
!
part create rigid_body name_and_position  &
   part_name = .test_analysis_1.Upper_DP_Group13_B  &
   adams_id = 9004100  &
   location = 328.4216183118, 0.0, 1471.6427075367  &
   orientation = 90.0d, 69.0180785911d, 270.0d
!
defaults coordinate_system  &
   default_coordinate_system = .test_analysis_1.Upper_DP_Group13_B
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group13_B.end_B  &
   adams_id = 9006486  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group13_B.cm  &
   adams_id = 9004100  &
   location = 0.0, 0.0, -7.75  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group13_B.end_beamB  &
   adams_id = 9006487  &
   location = 0.0, 0.0, -7.75  &
   orientation = 0.0d, 90.0d, 90.0d
!
part create rigid_body mass_properties  &
   part_name = .test_analysis_1.Upper_DP_Group13_B  &
   mass = 11.5258405181  &
   center_of_mass_marker = .test_analysis_1.Upper_DP_Group13_B.cm  &
   ixx = 294.0966081325  &
   iyy = 294.0966081325  &
   izz = 0.4102158729  &
   ixy = 0.0  &
   izx = 0.0  &
   iyz = 0.0
!
! ****** Graphics for current part ******
!
geometry create shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group13_B.cyl1  &
   adams_id = 3368  &
   center_marker = .test_analysis_1.Upper_DP_Group13_B.end_B  &
   angle_extent = 360.0  &
   length = -15.5  &
   radius = 0.20835  &
   side_count_for_body = 16  &
   segment_count_for_ends = 16
!
geometry attributes  &
   geometry_name = .test_analysis_1.Upper_DP_Group13_B.cyl1  &
   color = Gray
!
geometry create shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group13_B.cyl1a  &
   adams_id = 3369  &
   center_marker = .test_analysis_1.Upper_DP_Group13_B.end_B  &
   angle_extent = 6.0  &
   length = -15.5  &
   radius = 0.2104335  &
   side_count_for_body = 3  &
   segment_count_for_ends = 3
!
geometry attributes  &
   geometry_name = .test_analysis_1.Upper_DP_Group13_B.cyl1a  &
   color = RED
!
geometry create curve circle  &
   circle_name = .test_analysis_1.Upper_DP_Group13_B.rub1  &
   adams_id = 3186  &
   center_marker = .test_analysis_1.Upper_DP_Group13_B.cm  &
   radius = 0.25  &
   segment_count = 16
!
geometry attributes  &
   geometry_name = .test_analysis_1.Upper_DP_Group13_B.rub1  &
   color = Gray
!
!-------------------------- Upper_DP_Group13_sliderA --------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .test_analysis_1.ground
!
part create rigid_body name_and_position  &
   part_name = .test_analysis_1.Upper_DP_Group13_sliderA  &
   adams_id = 9004001  &
   location = 335.7222718733, 0.0, 1474.2421175649  &
   orientation = 90.0d, 70.4016421238d, 270.0d
!
defaults coordinate_system  &
   default_coordinate_system = .test_analysis_1.Upper_DP_Group13_sliderA
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group13_sliderA.cm  &
   adams_id = 9004001  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group13_sliderA.A1  &
   adams_id = 9006491  &
   location = 0.0, 0.0, 0.3  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group13_sliderA.A2  &
   adams_id = 9006492  &
   location = 0.0, 0.0, -0.3  &
   orientation = 0.0d, 0.0d, 0.0d
!
! ****** Floating Markers for current part ******
!
floating_marker create  &
   floating_marker_name = .test_analysis_1.Upper_DP_Group13_sliderA.FMARKER_9004207  &
   adams_id = 9004207
!
part create rigid_body mass_properties  &
   part_name = .test_analysis_1.Upper_DP_Group13_sliderA  &
   density = 0.1
!
! ****** Graphics for current part ******
!
geometry create shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group13_sliderA.Upper_DP_Group13_sliderAgraphic  &
   adams_id = 3374  &
   center_marker = .test_analysis_1.Upper_DP_Group13_sliderA.A2  &
   angle_extent = 360.0  &
   length = 0.6  &
   radius = 7.0E-02  &
   side_count_for_body = 4  &
   segment_count_for_ends = 4
!
geometry attributes  &
   geometry_name = .test_analysis_1.Upper_DP_Group13_sliderA.Upper_DP_Group13_sliderAgraphic  &
   color = MidnightBlue2  &
   render = wireframe
!
geometry create curve circle  &
   circle_name = .test_analysis_1.Upper_DP_Group13_sliderA.ghole  &
   adams_id = 3187  &
   center_marker = .test_analysis_1.Upper_DP_Group13_sliderA.cm  &
   radius = 0.54175  &
   segment_count = 24
!
geometry attributes  &
   geometry_name = .test_analysis_1.Upper_DP_Group13_sliderA.ghole  &
   color = BLUE  &
   render = wireframe
!
!----------------------------- Upper_DP_Group13_C -----------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .test_analysis_1.ground
!
part create rigid_body name_and_position  &
   part_name = .test_analysis_1.Upper_DP_Group13_C  &
   adams_id = 9004200  &
   location = 306.7786190368, 0.0, 1463.155521467  &
   orientation = 90.0d, 67.7267446328d, 270.0d
!
defaults coordinate_system  &
   default_coordinate_system = .test_analysis_1.Upper_DP_Group13_C
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group13_C.gmark2  &
   adams_id = 9006490  &
   location = 0.0, 0.0, 7.7497214648  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group13_C.end_C  &
   adams_id = 9004200  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group13_C.cm  &
   adams_id = 9006488  &
   location = 0.0, 0.0, 3.011590453  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group13_C.end_beamC  &
   adams_id = 9006489  &
   location = 0.0, 0.0, 1.0  &
   orientation = 0.0d, 90.0d, 90.0d
!
part create rigid_body mass_properties  &
   part_name = .test_analysis_1.Upper_DP_Group13_C  &
   mass = 7.743482937  &
   center_of_mass_marker = .test_analysis_1.Upper_DP_Group13_C.cm  &
   ixx = 53.8617244793  &
   iyy = 53.8617244793  &
   izz = 0.3323288305  &
   ixy = 0.0  &
   izx = 0.0  &
   iyz = 0.0
!
! ****** Graphics for current part ******
!
geometry create shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group13_C.cyl1a  &
   adams_id = 3372  &
   center_marker = .test_analysis_1.Upper_DP_Group13_C.end_C  &
   angle_extent = 6.0  &
   length = 1.0  &
   radius = 0.2945665  &
   side_count_for_body = 3  &
   segment_count_for_ends = 3
!
geometry attributes  &
   geometry_name = .test_analysis_1.Upper_DP_Group13_C.cyl1a  &
   color = RED
!
geometry create shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group13_C.cyl1  &
   adams_id = 3373  &
   center_marker = .test_analysis_1.Upper_DP_Group13_C.end_C  &
   angle_extent = 360.0  &
   length = 1.0  &
   radius = 0.29165  &
   side_count_for_body = 16  &
   segment_count_for_ends = 16
!
geometry attributes  &
   geometry_name = .test_analysis_1.Upper_DP_Group13_C.cyl1  &
   color = LtGray
!
geometry create shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group13_C.cyl2  &
   adams_id = 3370  &
   center_marker = .test_analysis_1.Upper_DP_Group13_C.gmark2  &
   angle_extent = 360.0  &
   length = -6.75  &
   radius = 0.20835  &
   side_count_for_body = 16  &
   segment_count_for_ends = 16
!
geometry attributes  &
   geometry_name = .test_analysis_1.Upper_DP_Group13_C.cyl2  &
   color = Gray
!
geometry create shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group13_C.cyl2a  &
   adams_id = 3371  &
   center_marker = .test_analysis_1.Upper_DP_Group13_C.gmark2  &
   angle_extent = 6.0  &
   length = -6.75  &
   radius = 0.2104335  &
   side_count_for_body = 3  &
   segment_count_for_ends = 3
!
geometry attributes  &
   geometry_name = .test_analysis_1.Upper_DP_Group13_C.cyl2a  &
   color = RED
!
!-------------------------- Upper_DP_Group13_sliderB --------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .test_analysis_1.ground
!
part create rigid_body name_and_position  &
   part_name = .test_analysis_1.Upper_DP_Group13_sliderB  &
   adams_id = 9004101  &
   location = 321.1854940263, 0.0, 1468.8676390106  &
   orientation = 90.0d, 69.0180785911d, 270.0d
!
defaults coordinate_system  &
   default_coordinate_system = .test_analysis_1.Upper_DP_Group13_sliderB
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group13_sliderB.cm  &
   adams_id = 9004101  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group13_sliderB.B1  &
   adams_id = 9006493  &
   location = 0.0, 0.0, 0.3  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group13_sliderB.B2  &
   adams_id = 9006494  &
   location = 0.0, 0.0, -0.3  &
   orientation = 0.0d, 0.0d, 0.0d
!
! ****** Floating Markers for current part ******
!
floating_marker create  &
   floating_marker_name = .test_analysis_1.Upper_DP_Group13_sliderB.FMARKER_9004208  &
   adams_id = 9004208
!
part create rigid_body mass_properties  &
   part_name = .test_analysis_1.Upper_DP_Group13_sliderB  &
   density = 0.1
!
! ****** Graphics for current part ******
!
geometry create shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group13_sliderB.Upper_DP_Group13_sliderBgraphic  &
   adams_id = 3375  &
   center_marker = .test_analysis_1.Upper_DP_Group13_sliderB.B2  &
   angle_extent = 360.0  &
   length = 0.6  &
   radius = 7.0E-02  &
   side_count_for_body = 4  &
   segment_count_for_ends = 4
!
geometry attributes  &
   geometry_name = .test_analysis_1.Upper_DP_Group13_sliderB.Upper_DP_Group13_sliderBgraphic  &
   color = MidnightBlue2  &
   render = wireframe
!
geometry create curve circle  &
   circle_name = .test_analysis_1.Upper_DP_Group13_sliderB.ghole  &
   adams_id = 3188  &
   center_marker = .test_analysis_1.Upper_DP_Group13_sliderB.cm  &
   radius = 0.54175  &
   segment_count = 24
!
geometry attributes  &
   geometry_name = .test_analysis_1.Upper_DP_Group13_sliderB.ghole  &
   color = BLUE  &
   render = wireframe
!
!----------------------------- Upper_DP_Group14_A -----------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .test_analysis_1.ground
!
part create rigid_body name_and_position  &
   part_name = .test_analysis_1.Upper_DP_Group14_A  &
   adams_id = 9004300  &
   location = 306.777745422, 0.0, 1463.1551557519  &
   orientation = 90.0d, 66.8245631559d, 270.0d
!
defaults coordinate_system  &
   default_coordinate_system = .test_analysis_1.Upper_DP_Group14_A
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group14_A.end_A  &
   adams_id = 9004300  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group14_A.cm  &
   adams_id = 9006495  &
   location = 0.0, 0.0, -3.0117709993  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group14_A.gmark1  &
   adams_id = 9006496  &
   location = 0.0, 0.0, -1.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group14_A.end_beamA  &
   adams_id = 9006497  &
   location = 0.0, 0.0, -1.0  &
   orientation = 0.0d, 90.0d, 90.0d
!
part create rigid_body mass_properties  &
   part_name = .test_analysis_1.Upper_DP_Group14_A  &
   mass = 7.743482937  &
   center_of_mass_marker = .test_analysis_1.Upper_DP_Group14_A.cm  &
   ixx = 53.8655360846  &
   iyy = 53.8655360846  &
   izz = 0.3323288305  &
   ixy = 0.0  &
   izx = 0.0  &
   iyz = 0.0
!
! ****** Graphics for current part ******
!
geometry create shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group14_A.cyl1  &
   adams_id = 3376  &
   center_marker = .test_analysis_1.Upper_DP_Group14_A.end_A  &
   angle_extent = 360.0  &
   length = -1.0  &
   radius = 0.29165  &
   side_count_for_body = 16  &
   segment_count_for_ends = 16
!
geometry attributes  &
   geometry_name = .test_analysis_1.Upper_DP_Group14_A.cyl1  &
   color = LtGray
!
geometry create shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group14_A.cyl1a  &
   adams_id = 3377  &
   center_marker = .test_analysis_1.Upper_DP_Group14_A.end_A  &
   angle_extent = 6.0  &
   length = -1.0  &
   radius = 0.2945665  &
   side_count_for_body = 3  &
   segment_count_for_ends = 3
!
geometry attributes  &
   geometry_name = .test_analysis_1.Upper_DP_Group14_A.cyl1a  &
   color = RED
!
geometry create shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group14_A.cyl2  &
   adams_id = 3378  &
   center_marker = .test_analysis_1.Upper_DP_Group14_A.gmark1  &
   angle_extent = 360.0  &
   length = -6.75  &
   radius = 0.20835  &
   side_count_for_body = 16  &
   segment_count_for_ends = 16
!
geometry attributes  &
   geometry_name = .test_analysis_1.Upper_DP_Group14_A.cyl2  &
   color = Gray
!
geometry create shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group14_A.cyl2a  &
   adams_id = 3379  &
   center_marker = .test_analysis_1.Upper_DP_Group14_A.gmark1  &
   angle_extent = 6.0  &
   length = -6.75  &
   radius = 0.2104335  &
   side_count_for_body = 3  &
   segment_count_for_ends = 3
!
geometry attributes  &
   geometry_name = .test_analysis_1.Upper_DP_Group14_A.cyl2a  &
   color = RED
!
!----------------------------- Upper_DP_Group14_B -----------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .test_analysis_1.ground
!
part create rigid_body name_and_position  &
   part_name = .test_analysis_1.Upper_DP_Group14_B  &
   adams_id = 9004400  &
   location = 299.6533591836, 0.0, 1460.1052545935  &
   orientation = 90.0d, 65.4936012167d, 270.0d
!
defaults coordinate_system  &
   default_coordinate_system = .test_analysis_1.Upper_DP_Group14_B
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group14_B.end_B  &
   adams_id = 9006498  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group14_B.cm  &
   adams_id = 9004400  &
   location = 0.0, 0.0, -7.75  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group14_B.end_beamB  &
   adams_id = 9006499  &
   location = 0.0, 0.0, -7.75  &
   orientation = 0.0d, 90.0d, 90.0d
!
part create rigid_body mass_properties  &
   part_name = .test_analysis_1.Upper_DP_Group14_B  &
   mass = 11.5258405181  &
   center_of_mass_marker = .test_analysis_1.Upper_DP_Group14_B.cm  &
   ixx = 294.0966081325  &
   iyy = 294.0966081325  &
   izz = 0.4102158729  &
   ixy = 0.0  &
   izx = 0.0  &
   iyz = 0.0
!
! ****** Graphics for current part ******
!
geometry create shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group14_B.cyl1  &
   adams_id = 3380  &
   center_marker = .test_analysis_1.Upper_DP_Group14_B.end_B  &
   angle_extent = 360.0  &
   length = -15.5  &
   radius = 0.20835  &
   side_count_for_body = 16  &
   segment_count_for_ends = 16
!
geometry attributes  &
   geometry_name = .test_analysis_1.Upper_DP_Group14_B.cyl1  &
   color = Gray
!
geometry create shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group14_B.cyl1a  &
   adams_id = 3381  &
   center_marker = .test_analysis_1.Upper_DP_Group14_B.end_B  &
   angle_extent = 6.0  &
   length = -15.5  &
   radius = 0.2104335  &
   side_count_for_body = 3  &
   segment_count_for_ends = 3
!
geometry attributes  &
   geometry_name = .test_analysis_1.Upper_DP_Group14_B.cyl1a  &
   color = RED
!
geometry create curve circle  &
   circle_name = .test_analysis_1.Upper_DP_Group14_B.rub1  &
   adams_id = 3189  &
   center_marker = .test_analysis_1.Upper_DP_Group14_B.cm  &
   radius = 0.25  &
   segment_count = 16
!
geometry attributes  &
   geometry_name = .test_analysis_1.Upper_DP_Group14_B.rub1  &
   color = Gray
!
!-------------------------- Upper_DP_Group14_sliderA --------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .test_analysis_1.ground
!
part create rigid_body name_and_position  &
   part_name = .test_analysis_1.Upper_DP_Group14_sliderA  &
   adams_id = 9004301  &
   location = 306.777745422, 0.0, 1463.1551557519  &
   orientation = 90.0d, 66.8245631559d, 270.0d
!
defaults coordinate_system  &
   default_coordinate_system = .test_analysis_1.Upper_DP_Group14_sliderA
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group14_sliderA.cm  &
   adams_id = 9004301  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group14_sliderA.A1  &
   adams_id = 9006503  &
   location = 0.0, 0.0, 0.3  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group14_sliderA.A2  &
   adams_id = 9006504  &
   location = 0.0, 0.0, -0.3  &
   orientation = 0.0d, 0.0d, 0.0d
!
! ****** Floating Markers for current part ******
!
floating_marker create  &
   floating_marker_name = .test_analysis_1.Upper_DP_Group14_sliderA.FMARKER_9004507  &
   adams_id = 9004507
!
part create rigid_body mass_properties  &
   part_name = .test_analysis_1.Upper_DP_Group14_sliderA  &
   density = 0.1
!
! ****** Graphics for current part ******
!
geometry create shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group14_sliderA.Upper_DP_Group14_sliderAgraphic  &
   adams_id = 3386  &
   center_marker = .test_analysis_1.Upper_DP_Group14_sliderA.A2  &
   angle_extent = 360.0  &
   length = 0.6  &
   radius = 7.0E-02  &
   side_count_for_body = 4  &
   segment_count_for_ends = 4
!
geometry attributes  &
   geometry_name = .test_analysis_1.Upper_DP_Group14_sliderA.Upper_DP_Group14_sliderAgraphic  &
   color = MidnightBlue2  &
   render = wireframe
!
geometry create curve circle  &
   circle_name = .test_analysis_1.Upper_DP_Group14_sliderA.ghole  &
   adams_id = 3190  &
   center_marker = .test_analysis_1.Upper_DP_Group14_sliderA.cm  &
   radius = 0.54175  &
   segment_count = 24
!
geometry attributes  &
   geometry_name = .test_analysis_1.Upper_DP_Group14_sliderA.ghole  &
   color = BLUE  &
   render = wireframe
!
!----------------------------- Upper_DP_Group14_C -----------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .test_analysis_1.ground
!
part create rigid_body name_and_position  &
   part_name = .test_analysis_1.Upper_DP_Group14_C  &
   adams_id = 9004500  &
   location = 278.5736760614, 0.0, 1450.3017225689  &
   orientation = 90.0d, 64.1875836982d, 270.0d
!
defaults coordinate_system  &
   default_coordinate_system = .test_analysis_1.Upper_DP_Group14_C
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group14_C.gmark2  &
   adams_id = 9006502  &
   location = 0.0, 0.0, 7.7498025715  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group14_C.end_C  &
   adams_id = 9004500  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group14_C.cm  &
   adams_id = 9006500  &
   location = 0.0, 0.0, 3.0116430263  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group14_C.end_beamC  &
   adams_id = 9006501  &
   location = 0.0, 0.0, 1.0  &
   orientation = 0.0d, 90.0d, 90.0d
!
part create rigid_body mass_properties  &
   part_name = .test_analysis_1.Upper_DP_Group14_C  &
   mass = 7.743482937  &
   center_of_mass_marker = .test_analysis_1.Upper_DP_Group14_C.cm  &
   ixx = 53.8628343522  &
   iyy = 53.8628343522  &
   izz = 0.3323288305  &
   ixy = 0.0  &
   izx = 0.0  &
   iyz = 0.0
!
! ****** Graphics for current part ******
!
geometry create shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group14_C.cyl1a  &
   adams_id = 3384  &
   center_marker = .test_analysis_1.Upper_DP_Group14_C.end_C  &
   angle_extent = 6.0  &
   length = 1.0  &
   radius = 0.2945665  &
   side_count_for_body = 3  &
   segment_count_for_ends = 3
!
geometry attributes  &
   geometry_name = .test_analysis_1.Upper_DP_Group14_C.cyl1a  &
   color = RED
!
geometry create shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group14_C.cyl1  &
   adams_id = 3385  &
   center_marker = .test_analysis_1.Upper_DP_Group14_C.end_C  &
   angle_extent = 360.0  &
   length = 1.0  &
   radius = 0.29165  &
   side_count_for_body = 16  &
   segment_count_for_ends = 16
!
geometry attributes  &
   geometry_name = .test_analysis_1.Upper_DP_Group14_C.cyl1  &
   color = LtGray
!
geometry create shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group14_C.cyl2  &
   adams_id = 3382  &
   center_marker = .test_analysis_1.Upper_DP_Group14_C.gmark2  &
   angle_extent = 360.0  &
   length = -6.75  &
   radius = 0.20835  &
   side_count_for_body = 16  &
   segment_count_for_ends = 16
!
geometry attributes  &
   geometry_name = .test_analysis_1.Upper_DP_Group14_C.cyl2  &
   color = Gray
!
geometry create shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group14_C.cyl2a  &
   adams_id = 3383  &
   center_marker = .test_analysis_1.Upper_DP_Group14_C.gmark2  &
   angle_extent = 6.0  &
   length = -6.75  &
   radius = 0.2104335  &
   side_count_for_body = 3  &
   segment_count_for_ends = 3
!
geometry attributes  &
   geometry_name = .test_analysis_1.Upper_DP_Group14_C.cyl2a  &
   color = RED
!
!-------------------------- Upper_DP_Group14_sliderB --------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .test_analysis_1.ground
!
part create rigid_body name_and_position  &
   part_name = .test_analysis_1.Upper_DP_Group14_sliderB  &
   adams_id = 9004401  &
   location = 292.601518303, 0.0, 1456.8905943944  &
   orientation = 90.0d, 65.4936012167d, 270.0d
!
defaults coordinate_system  &
   default_coordinate_system = .test_analysis_1.Upper_DP_Group14_sliderB
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group14_sliderB.cm  &
   adams_id = 9004401  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group14_sliderB.B1  &
   adams_id = 9006505  &
   location = 0.0, 0.0, 0.3  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group14_sliderB.B2  &
   adams_id = 9006506  &
   location = 0.0, 0.0, -0.3  &
   orientation = 0.0d, 0.0d, 0.0d
!
! ****** Floating Markers for current part ******
!
floating_marker create  &
   floating_marker_name = .test_analysis_1.Upper_DP_Group14_sliderB.FMARKER_9004508  &
   adams_id = 9004508
!
part create rigid_body mass_properties  &
   part_name = .test_analysis_1.Upper_DP_Group14_sliderB  &
   density = 0.1
!
! ****** Graphics for current part ******
!
geometry create shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group14_sliderB.Upper_DP_Group14_sliderBgraphic  &
   adams_id = 3387  &
   center_marker = .test_analysis_1.Upper_DP_Group14_sliderB.B2  &
   angle_extent = 360.0  &
   length = 0.6  &
   radius = 7.0E-02  &
   side_count_for_body = 4  &
   segment_count_for_ends = 4
!
geometry attributes  &
   geometry_name = .test_analysis_1.Upper_DP_Group14_sliderB.Upper_DP_Group14_sliderBgraphic  &
   color = MidnightBlue2  &
   render = wireframe
!
geometry create curve circle  &
   circle_name = .test_analysis_1.Upper_DP_Group14_sliderB.ghole  &
   adams_id = 3191  &
   center_marker = .test_analysis_1.Upper_DP_Group14_sliderB.cm  &
   radius = 0.54175  &
   segment_count = 24
!
geometry attributes  &
   geometry_name = .test_analysis_1.Upper_DP_Group14_sliderB.ghole  &
   color = BLUE  &
   render = wireframe
!
!----------------------------- Upper_DP_Group15_A -----------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .test_analysis_1.ground
!
part create rigid_body name_and_position  &
   part_name = .test_analysis_1.Upper_DP_Group15_A  &
   adams_id = 9004600  &
   location = 278.573178953, 0.0, 1450.3014766847  &
   orientation = 90.0d, 63.2296293404d, 270.0d
!
defaults coordinate_system  &
   default_coordinate_system = .test_analysis_1.Upper_DP_Group15_A
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group15_A.end_A  &
   adams_id = 9004600  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group15_A.cm  &
   adams_id = 9006507  &
   location = 0.0, 0.0, -3.0117709993  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group15_A.gmark1  &
   adams_id = 9006508  &
   location = 0.0, 0.0, -1.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group15_A.end_beamA  &
   adams_id = 9006509  &
   location = 0.0, 0.0, -1.0  &
   orientation = 0.0d, 90.0d, 90.0d
!
part create rigid_body mass_properties  &
   part_name = .test_analysis_1.Upper_DP_Group15_A  &
   mass = 7.743482937  &
   center_of_mass_marker = .test_analysis_1.Upper_DP_Group15_A.cm  &
   ixx = 53.8655360846  &
   iyy = 53.8655360846  &
   izz = 0.3323288305  &
   ixy = 0.0  &
   izx = 0.0  &
   iyz = 0.0
!
! ****** Graphics for current part ******
!
geometry create shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group15_A.cyl1  &
   adams_id = 3388  &
   center_marker = .test_analysis_1.Upper_DP_Group15_A.end_A  &
   angle_extent = 360.0  &
   length = -1.0  &
   radius = 0.29165  &
   side_count_for_body = 16  &
   segment_count_for_ends = 16
!
geometry attributes  &
   geometry_name = .test_analysis_1.Upper_DP_Group15_A.cyl1  &
   color = LtGray
!
geometry create shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group15_A.cyl1a  &
   adams_id = 3389  &
   center_marker = .test_analysis_1.Upper_DP_Group15_A.end_A  &
   angle_extent = 6.0  &
   length = -1.0  &
   radius = 0.2945665  &
   side_count_for_body = 3  &
   segment_count_for_ends = 3
!
geometry attributes  &
   geometry_name = .test_analysis_1.Upper_DP_Group15_A.cyl1a  &
   color = RED
!
geometry create shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group15_A.cyl2  &
   adams_id = 3390  &
   center_marker = .test_analysis_1.Upper_DP_Group15_A.gmark1  &
   angle_extent = 360.0  &
   length = -6.75  &
   radius = 0.20835  &
   side_count_for_body = 16  &
   segment_count_for_ends = 16
!
geometry attributes  &
   geometry_name = .test_analysis_1.Upper_DP_Group15_A.cyl2  &
   color = Gray
!
geometry create shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group15_A.cyl2a  &
   adams_id = 3391  &
   center_marker = .test_analysis_1.Upper_DP_Group15_A.gmark1  &
   angle_extent = 6.0  &
   length = -6.75  &
   radius = 0.2104335  &
   side_count_for_body = 3  &
   segment_count_for_ends = 3
!
geometry attributes  &
   geometry_name = .test_analysis_1.Upper_DP_Group15_A.cyl2a  &
   color = RED
!
!----------------------------- Upper_DP_Group15_B -----------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .test_analysis_1.ground
!
part create rigid_body name_and_position  &
   part_name = .test_analysis_1.Upper_DP_Group15_B  &
   adams_id = 9004700  &
   location = 271.6539106776, 0.0, 1446.8107927747  &
   orientation = 90.0d, 61.9352386488d, 270.0d
!
defaults coordinate_system  &
   default_coordinate_system = .test_analysis_1.Upper_DP_Group15_B
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group15_B.end_B  &
   adams_id = 9006510  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group15_B.cm  &
   adams_id = 9004700  &
   location = 0.0, 0.0, -7.75  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group15_B.end_beamB  &
   adams_id = 9006511  &
   location = 0.0, 0.0, -7.75  &
   orientation = 0.0d, 90.0d, 90.0d
!
part create rigid_body mass_properties  &
   part_name = .test_analysis_1.Upper_DP_Group15_B  &
   mass = 11.5258405181  &
   center_of_mass_marker = .test_analysis_1.Upper_DP_Group15_B.cm  &
   ixx = 294.0966081325  &
   iyy = 294.0966081325  &
   izz = 0.4102158729  &
   ixy = 0.0  &
   izx = 0.0  &
   iyz = 0.0
!
! ****** Graphics for current part ******
!
geometry create shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group15_B.cyl1  &
   adams_id = 3392  &
   center_marker = .test_analysis_1.Upper_DP_Group15_B.end_B  &
   angle_extent = 360.0  &
   length = -15.5  &
   radius = 0.20835  &
   side_count_for_body = 16  &
   segment_count_for_ends = 16
!
geometry attributes  &
   geometry_name = .test_analysis_1.Upper_DP_Group15_B.cyl1  &
   color = Gray
!
geometry create shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group15_B.cyl1a  &
   adams_id = 3393  &
   center_marker = .test_analysis_1.Upper_DP_Group15_B.end_B  &
   angle_extent = 6.0  &
   length = -15.5  &
   radius = 0.2104335  &
   side_count_for_body = 3  &
   segment_count_for_ends = 3
!
geometry attributes  &
   geometry_name = .test_analysis_1.Upper_DP_Group15_B.cyl1a  &
   color = RED
!
geometry create curve circle  &
   circle_name = .test_analysis_1.Upper_DP_Group15_B.rub1  &
   adams_id = 3192  &
   center_marker = .test_analysis_1.Upper_DP_Group15_B.cm  &
   radius = 0.25  &
   segment_count = 16
!
geometry attributes  &
   geometry_name = .test_analysis_1.Upper_DP_Group15_B.rub1  &
   color = Gray
!
!-------------------------- Upper_DP_Group15_sliderA --------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .test_analysis_1.ground
!
part create rigid_body name_and_position  &
   part_name = .test_analysis_1.Upper_DP_Group15_sliderA  &
   adams_id = 9004601  &
   location = 278.573178953, 0.0, 1450.3014766847  &
   orientation = 90.0d, 63.2296293404d, 270.0d
!
defaults coordinate_system  &
   default_coordinate_system = .test_analysis_1.Upper_DP_Group15_sliderA
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group15_sliderA.cm  &
   adams_id = 9004601  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group15_sliderA.A1  &
   adams_id = 9006515  &
   location = 0.0, 0.0, 0.3  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group15_sliderA.A2  &
   adams_id = 9006516  &
   location = 0.0, 0.0, -0.3  &
   orientation = 0.0d, 0.0d, 0.0d
!
! ****** Floating Markers for current part ******
!
floating_marker create  &
   floating_marker_name = .test_analysis_1.Upper_DP_Group15_sliderA.FMARKER_9004807  &
   adams_id = 9004807
!
part create rigid_body mass_properties  &
   part_name = .test_analysis_1.Upper_DP_Group15_sliderA  &
   density = 0.1
!
! ****** Graphics for current part ******
!
geometry create shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group15_sliderA.Upper_DP_Group15_sliderAgraphic  &
   adams_id = 3398  &
   center_marker = .test_analysis_1.Upper_DP_Group15_sliderA.A2  &
   angle_extent = 360.0  &
   length = 0.6  &
   radius = 7.0E-02  &
   side_count_for_body = 4  &
   segment_count_for_ends = 4
!
geometry attributes  &
   geometry_name = .test_analysis_1.Upper_DP_Group15_sliderA.Upper_DP_Group15_sliderAgraphic  &
   color = MidnightBlue2  &
   render = wireframe
!
geometry create curve circle  &
   circle_name = .test_analysis_1.Upper_DP_Group15_sliderA.ghole  &
   adams_id = 3193  &
   center_marker = .test_analysis_1.Upper_DP_Group15_sliderA.cm  &
   radius = 0.54175  &
   segment_count = 24
!
geometry attributes  &
   geometry_name = .test_analysis_1.Upper_DP_Group15_sliderA.ghole  &
   color = BLUE  &
   render = wireframe
!
!----------------------------- Upper_DP_Group15_C -----------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .test_analysis_1.ground
!
part create rigid_body name_and_position  &
   part_name = .test_analysis_1.Upper_DP_Group15_C  &
   adams_id = 9004800  &
   location = 251.2248130898, 0.0, 1435.7147591163  &
   orientation = 90.0d, 60.6039345074d, 270.0d
!
defaults coordinate_system  &
   default_coordinate_system = .test_analysis_1.Upper_DP_Group15_C
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group15_C.gmark2  &
   adams_id = 9006514  &
   location = 0.0, 0.0, 7.7499800707  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group15_C.end_C  &
   adams_id = 9004800  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group15_C.cm  &
   adams_id = 9006512  &
   location = 0.0, 0.0, 3.0117580811  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group15_C.end_beamC  &
   adams_id = 9006513  &
   location = 0.0, 0.0, 1.0  &
   orientation = 0.0d, 90.0d, 90.0d
!
part create rigid_body mass_properties  &
   part_name = .test_analysis_1.Upper_DP_Group15_C  &
   mass = 7.743482937  &
   center_of_mass_marker = .test_analysis_1.Upper_DP_Group15_C.cm  &
   ixx = 53.8652633534  &
   iyy = 53.8652633534  &
   izz = 0.3323288305  &
   ixy = 0.0  &
   izx = 0.0  &
   iyz = 0.0
!
! ****** Graphics for current part ******
!
geometry create shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group15_C.cyl1a  &
   adams_id = 3396  &
   center_marker = .test_analysis_1.Upper_DP_Group15_C.end_C  &
   angle_extent = 6.0  &
   length = 1.0  &
   radius = 0.2945665  &
   side_count_for_body = 3  &
   segment_count_for_ends = 3
!
geometry attributes  &
   geometry_name = .test_analysis_1.Upper_DP_Group15_C.cyl1a  &
   color = RED
!
geometry create shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group15_C.cyl1  &
   adams_id = 3397  &
   center_marker = .test_analysis_1.Upper_DP_Group15_C.end_C  &
   angle_extent = 360.0  &
   length = 1.0  &
   radius = 0.29165  &
   side_count_for_body = 16  &
   segment_count_for_ends = 16
!
geometry attributes  &
   geometry_name = .test_analysis_1.Upper_DP_Group15_C.cyl1  &
   color = LtGray
!
geometry create shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group15_C.cyl2  &
   adams_id = 3394  &
   center_marker = .test_analysis_1.Upper_DP_Group15_C.gmark2  &
   angle_extent = 360.0  &
   length = -6.75  &
   radius = 0.20835  &
   side_count_for_body = 16  &
   segment_count_for_ends = 16
!
geometry attributes  &
   geometry_name = .test_analysis_1.Upper_DP_Group15_C.cyl2  &
   color = Gray
!
geometry create shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group15_C.cyl2a  &
   adams_id = 3395  &
   center_marker = .test_analysis_1.Upper_DP_Group15_C.gmark2  &
   angle_extent = 6.0  &
   length = -6.75  &
   radius = 0.2104335  &
   side_count_for_body = 3  &
   segment_count_for_ends = 3
!
geometry attributes  &
   geometry_name = .test_analysis_1.Upper_DP_Group15_C.cyl2a  &
   color = RED
!
!-------------------------- Upper_DP_Group15_sliderB --------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .test_analysis_1.ground
!
part create rigid_body name_and_position  &
   part_name = .test_analysis_1.Upper_DP_Group15_sliderB  &
   adams_id = 9004701  &
   location = 264.8151836876, 0.0, 1443.1646560307  &
   orientation = 90.0d, 61.9352386488d, 270.0d
!
defaults coordinate_system  &
   default_coordinate_system = .test_analysis_1.Upper_DP_Group15_sliderB
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group15_sliderB.cm  &
   adams_id = 9004701  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group15_sliderB.B1  &
   adams_id = 9006517  &
   location = 0.0, 0.0, 0.3  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group15_sliderB.B2  &
   adams_id = 9006518  &
   location = 0.0, 0.0, -0.3  &
   orientation = 0.0d, 0.0d, 0.0d
!
! ****** Floating Markers for current part ******
!
floating_marker create  &
   floating_marker_name = .test_analysis_1.Upper_DP_Group15_sliderB.FMARKER_9004808  &
   adams_id = 9004808
!
part create rigid_body mass_properties  &
   part_name = .test_analysis_1.Upper_DP_Group15_sliderB  &
   density = 0.1
!
! ****** Graphics for current part ******
!
geometry create shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group15_sliderB.Upper_DP_Group15_sliderBgraphic  &
   adams_id = 3399  &
   center_marker = .test_analysis_1.Upper_DP_Group15_sliderB.B2  &
   angle_extent = 360.0  &
   length = 0.6  &
   radius = 7.0E-02  &
   side_count_for_body = 4  &
   segment_count_for_ends = 4
!
geometry attributes  &
   geometry_name = .test_analysis_1.Upper_DP_Group15_sliderB.Upper_DP_Group15_sliderBgraphic  &
   color = MidnightBlue2  &
   render = wireframe
!
geometry create curve circle  &
   circle_name = .test_analysis_1.Upper_DP_Group15_sliderB.ghole  &
   adams_id = 3194  &
   center_marker = .test_analysis_1.Upper_DP_Group15_sliderB.cm  &
   radius = 0.54175  &
   segment_count = 24
!
geometry attributes  &
   geometry_name = .test_analysis_1.Upper_DP_Group15_sliderB.ghole  &
   color = BLUE  &
   render = wireframe
!
!----------------------------- Upper_DP_Group16_A -----------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .test_analysis_1.ground
!
part create rigid_body name_and_position  &
   part_name = .test_analysis_1.Upper_DP_Group16_A  &
   adams_id = 9004900  &
   location = 251.2246547626, 0.0, 1435.7146683126  &
   orientation = 90.0d, 59.7183884023d, 270.0d
!
defaults coordinate_system  &
   default_coordinate_system = .test_analysis_1.Upper_DP_Group16_A
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group16_A.end_A  &
   adams_id = 9004900  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group16_A.cm  &
   adams_id = 9006519  &
   location = 0.0, 0.0, -3.0117709993  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group16_A.gmark1  &
   adams_id = 9006520  &
   location = 0.0, 0.0, -1.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group16_A.end_beamA  &
   adams_id = 9006521  &
   location = 0.0, 0.0, -1.0  &
   orientation = 0.0d, 90.0d, 90.0d
!
part create rigid_body mass_properties  &
   part_name = .test_analysis_1.Upper_DP_Group16_A  &
   mass = 7.743482937  &
   center_of_mass_marker = .test_analysis_1.Upper_DP_Group16_A.cm  &
   ixx = 53.8655360846  &
   iyy = 53.8655360846  &
   izz = 0.3323288305  &
   ixy = 0.0  &
   izx = 0.0  &
   iyz = 0.0
!
! ****** Graphics for current part ******
!
geometry create shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group16_A.cyl1  &
   adams_id = 3400  &
   center_marker = .test_analysis_1.Upper_DP_Group16_A.end_A  &
   angle_extent = 360.0  &
   length = -1.0  &
   radius = 0.29165  &
   side_count_for_body = 16  &
   segment_count_for_ends = 16
!
geometry attributes  &
   geometry_name = .test_analysis_1.Upper_DP_Group16_A.cyl1  &
   color = LtGray
!
geometry create shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group16_A.cyl1a  &
   adams_id = 3401  &
   center_marker = .test_analysis_1.Upper_DP_Group16_A.end_A  &
   angle_extent = 6.0  &
   length = -1.0  &
   radius = 0.2945665  &
   side_count_for_body = 3  &
   segment_count_for_ends = 3
!
geometry attributes  &
   geometry_name = .test_analysis_1.Upper_DP_Group16_A.cyl1a  &
   color = RED
!
geometry create shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group16_A.cyl2  &
   adams_id = 3402  &
   center_marker = .test_analysis_1.Upper_DP_Group16_A.gmark1  &
   angle_extent = 360.0  &
   length = -6.75  &
   radius = 0.20835  &
   side_count_for_body = 16  &
   segment_count_for_ends = 16
!
geometry attributes  &
   geometry_name = .test_analysis_1.Upper_DP_Group16_A.cyl2  &
   color = Gray
!
geometry create shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group16_A.cyl2a  &
   adams_id = 3403  &
   center_marker = .test_analysis_1.Upper_DP_Group16_A.gmark1  &
   angle_extent = 6.0  &
   length = -6.75  &
   radius = 0.2104335  &
   side_count_for_body = 3  &
   segment_count_for_ends = 3
!
geometry attributes  &
   geometry_name = .test_analysis_1.Upper_DP_Group16_A.cyl2a  &
   color = RED
!
!----------------------------- Upper_DP_Group16_B -----------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .test_analysis_1.ground
!
part create rigid_body name_and_position  &
   part_name = .test_analysis_1.Upper_DP_Group16_B  &
   adams_id = 9005000  &
   location = 244.5320677657, 0.0, 1431.8067170435  &
   orientation = 90.0d, 58.3963135312d, 270.0d
!
defaults coordinate_system  &
   default_coordinate_system = .test_analysis_1.Upper_DP_Group16_B
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group16_B.end_B  &
   adams_id = 9006522  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group16_B.cm  &
   adams_id = 9005000  &
   location = 0.0, 0.0, -7.75  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group16_B.end_beamB  &
   adams_id = 9006523  &
   location = 0.0, 0.0, -7.75  &
   orientation = 0.0d, 90.0d, 90.0d
!
part create rigid_body mass_properties  &
   part_name = .test_analysis_1.Upper_DP_Group16_B  &
   mass = 11.5258405181  &
   center_of_mass_marker = .test_analysis_1.Upper_DP_Group16_B.cm  &
   ixx = 294.0966081325  &
   iyy = 294.0966081325  &
   izz = 0.4102158729  &
   ixy = 0.0  &
   izx = 0.0  &
   iyz = 0.0
!
! ****** Graphics for current part ******
!
geometry create shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group16_B.cyl1  &
   adams_id = 3404  &
   center_marker = .test_analysis_1.Upper_DP_Group16_B.end_B  &
   angle_extent = 360.0  &
   length = -15.5  &
   radius = 0.20835  &
   side_count_for_body = 16  &
   segment_count_for_ends = 16
!
geometry attributes  &
   geometry_name = .test_analysis_1.Upper_DP_Group16_B.cyl1  &
   color = Gray
!
geometry create shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group16_B.cyl1a  &
   adams_id = 3405  &
   center_marker = .test_analysis_1.Upper_DP_Group16_B.end_B  &
   angle_extent = 6.0  &
   length = -15.5  &
   radius = 0.2104335  &
   side_count_for_body = 3  &
   segment_count_for_ends = 3
!
geometry attributes  &
   geometry_name = .test_analysis_1.Upper_DP_Group16_B.cyl1a  &
   color = RED
!
geometry create curve circle  &
   circle_name = .test_analysis_1.Upper_DP_Group16_B.rub1  &
   adams_id = 3195  &
   center_marker = .test_analysis_1.Upper_DP_Group16_B.cm  &
   radius = 0.25  &
   segment_count = 16
!
geometry attributes  &
   geometry_name = .test_analysis_1.Upper_DP_Group16_B.rub1  &
   color = Gray
!
!-------------------------- Upper_DP_Group16_sliderA --------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .test_analysis_1.ground
!
part create rigid_body name_and_position  &
   part_name = .test_analysis_1.Upper_DP_Group16_sliderA  &
   adams_id = 9004901  &
   location = 251.2246547626, 0.0, 1435.7146683126  &
   orientation = 90.0d, 59.7183884023d, 270.0d
!
defaults coordinate_system  &
   default_coordinate_system = .test_analysis_1.Upper_DP_Group16_sliderA
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group16_sliderA.cm  &
   adams_id = 9004901  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group16_sliderA.A1  &
   adams_id = 9006527  &
   location = 0.0, 0.0, 0.3  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group16_sliderA.A2  &
   adams_id = 9006528  &
   location = 0.0, 0.0, -0.3  &
   orientation = 0.0d, 0.0d, 0.0d
!
! ****** Floating Markers for current part ******
!
floating_marker create  &
   floating_marker_name = .test_analysis_1.Upper_DP_Group16_sliderA.FMARKER_9005107  &
   adams_id = 9005107
!
part create rigid_body mass_properties  &
   part_name = .test_analysis_1.Upper_DP_Group16_sliderA  &
   density = 0.1
!
! ****** Graphics for current part ******
!
geometry create shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group16_sliderA.Upper_DP_Group16_sliderAgraphic  &
   adams_id = 3410  &
   center_marker = .test_analysis_1.Upper_DP_Group16_sliderA.A2  &
   angle_extent = 360.0  &
   length = 0.6  &
   radius = 7.0E-02  &
   side_count_for_body = 4  &
   segment_count_for_ends = 4
!
geometry attributes  &
   geometry_name = .test_analysis_1.Upper_DP_Group16_sliderA.Upper_DP_Group16_sliderAgraphic  &
   color = MidnightBlue2  &
   render = wireframe
!
geometry create curve circle  &
   circle_name = .test_analysis_1.Upper_DP_Group16_sliderA.ghole  &
   adams_id = 3196  &
   center_marker = .test_analysis_1.Upper_DP_Group16_sliderA.cm  &
   radius = 0.54175  &
   segment_count = 24
!
geometry attributes  &
   geometry_name = .test_analysis_1.Upper_DP_Group16_sliderA.ghole  &
   color = BLUE  &
   render = wireframe
!
!----------------------------- Upper_DP_Group16_C -----------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .test_analysis_1.ground
!
part create rigid_body name_and_position  &
   part_name = .test_analysis_1.Upper_DP_Group16_C  &
   adams_id = 9005100  &
   location = 224.8254472644, 0.0, 1419.472456896  &
   orientation = 90.0d, 57.0807383254d, 270.0d
!
defaults coordinate_system  &
   default_coordinate_system = .test_analysis_1.Upper_DP_Group16_C
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group16_C.gmark2  &
   adams_id = 9006526  &
   location = 0.0, 0.0, 7.750059695  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group16_C.end_C  &
   adams_id = 9005100  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group16_C.cm  &
   adams_id = 9006524  &
   location = 0.0, 0.0, 3.0118096935  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group16_C.end_beamC  &
   adams_id = 9006525  &
   location = 0.0, 0.0, 1.0  &
   orientation = 0.0d, 90.0d, 90.0d
!
part create rigid_body mass_properties  &
   part_name = .test_analysis_1.Upper_DP_Group16_C  &
   mass = 7.743482937  &
   center_of_mass_marker = .test_analysis_1.Upper_DP_Group16_C.cm  &
   ixx = 53.8663530144  &
   iyy = 53.8663530144  &
   izz = 0.3323288305  &
   ixy = 0.0  &
   izx = 0.0  &
   iyz = 0.0
!
! ****** Graphics for current part ******
!
geometry create shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group16_C.cyl1a  &
   adams_id = 3408  &
   center_marker = .test_analysis_1.Upper_DP_Group16_C.end_C  &
   angle_extent = 6.0  &
   length = 1.0  &
   radius = 0.2945665  &
   side_count_for_body = 3  &
   segment_count_for_ends = 3
!
geometry attributes  &
   geometry_name = .test_analysis_1.Upper_DP_Group16_C.cyl1a  &
   color = RED
!
geometry create shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group16_C.cyl1  &
   adams_id = 3409  &
   center_marker = .test_analysis_1.Upper_DP_Group16_C.end_C  &
   angle_extent = 360.0  &
   length = 1.0  &
   radius = 0.29165  &
   side_count_for_body = 16  &
   segment_count_for_ends = 16
!
geometry attributes  &
   geometry_name = .test_analysis_1.Upper_DP_Group16_C.cyl1  &
   color = LtGray
!
geometry create shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group16_C.cyl2  &
   adams_id = 3406  &
   center_marker = .test_analysis_1.Upper_DP_Group16_C.gmark2  &
   angle_extent = 360.0  &
   length = -6.75  &
   radius = 0.20835  &
   side_count_for_body = 16  &
   segment_count_for_ends = 16
!
geometry attributes  &
   geometry_name = .test_analysis_1.Upper_DP_Group16_C.cyl2  &
   color = Gray
!
geometry create shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group16_C.cyl2a  &
   adams_id = 3407  &
   center_marker = .test_analysis_1.Upper_DP_Group16_C.gmark2  &
   angle_extent = 6.0  &
   length = -6.75  &
   radius = 0.2104335  &
   side_count_for_body = 3  &
   segment_count_for_ends = 3
!
geometry attributes  &
   geometry_name = .test_analysis_1.Upper_DP_Group16_C.cyl2a  &
   color = RED
!
!-------------------------- Upper_DP_Group16_sliderB --------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .test_analysis_1.ground
!
part create rigid_body name_and_position  &
   part_name = .test_analysis_1.Upper_DP_Group16_sliderB  &
   adams_id = 9005001  &
   location = 237.9314453216, 0.0, 1427.7454015731  &
   orientation = 90.0d, 58.3963135312d, 270.0d
!
defaults coordinate_system  &
   default_coordinate_system = .test_analysis_1.Upper_DP_Group16_sliderB
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group16_sliderB.cm  &
   adams_id = 9005001  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group16_sliderB.B1  &
   adams_id = 9006529  &
   location = 0.0, 0.0, 0.3  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group16_sliderB.B2  &
   adams_id = 9006530  &
   location = 0.0, 0.0, -0.3  &
   orientation = 0.0d, 0.0d, 0.0d
!
! ****** Floating Markers for current part ******
!
floating_marker create  &
   floating_marker_name = .test_analysis_1.Upper_DP_Group16_sliderB.FMARKER_9005108  &
   adams_id = 9005108
!
part create rigid_body mass_properties  &
   part_name = .test_analysis_1.Upper_DP_Group16_sliderB  &
   density = 0.1
!
! ****** Graphics for current part ******
!
geometry create shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group16_sliderB.Upper_DP_Group16_sliderBgraphic  &
   adams_id = 3411  &
   center_marker = .test_analysis_1.Upper_DP_Group16_sliderB.B2  &
   angle_extent = 360.0  &
   length = 0.6  &
   radius = 7.0E-02  &
   side_count_for_body = 4  &
   segment_count_for_ends = 4
!
geometry attributes  &
   geometry_name = .test_analysis_1.Upper_DP_Group16_sliderB.Upper_DP_Group16_sliderBgraphic  &
   color = MidnightBlue2  &
   render = wireframe
!
geometry create curve circle  &
   circle_name = .test_analysis_1.Upper_DP_Group16_sliderB.ghole  &
   adams_id = 3197  &
   center_marker = .test_analysis_1.Upper_DP_Group16_sliderB.cm  &
   radius = 0.54175  &
   segment_count = 24
!
geometry attributes  &
   geometry_name = .test_analysis_1.Upper_DP_Group16_sliderB.ghole  &
   color = BLUE  &
   render = wireframe
!
!----------------------------- Upper_DP_Group17_A -----------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .test_analysis_1.ground
!
part create rigid_body name_and_position  &
   part_name = .test_analysis_1.Upper_DP_Group17_A  &
   adams_id = 9005200  &
   location = 224.8256262504, 0.0, 1419.4725749365  &
   orientation = 90.0d, 56.1577662194d, 270.0d
!
defaults coordinate_system  &
   default_coordinate_system = .test_analysis_1.Upper_DP_Group17_A
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group17_A.end_A  &
   adams_id = 9005200  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group17_A.cm  &
   adams_id = 9006531  &
   location = 0.0, 0.0, -3.0117709993  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group17_A.gmark1  &
   adams_id = 9006532  &
   location = 0.0, 0.0, -1.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group17_A.end_beamA  &
   adams_id = 9006533  &
   location = 0.0, 0.0, -1.0  &
   orientation = 0.0d, 90.0d, 90.0d
!
part create rigid_body mass_properties  &
   part_name = .test_analysis_1.Upper_DP_Group17_A  &
   mass = 7.743482937  &
   center_of_mass_marker = .test_analysis_1.Upper_DP_Group17_A.cm  &
   ixx = 53.8655360846  &
   iyy = 53.8655360846  &
   izz = 0.3323288305  &
   ixy = 0.0  &
   izx = 0.0  &
   iyz = 0.0
!
! ****** Graphics for current part ******
!
geometry create shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group17_A.cyl1  &
   adams_id = 3412  &
   center_marker = .test_analysis_1.Upper_DP_Group17_A.end_A  &
   angle_extent = 360.0  &
   length = -1.0  &
   radius = 0.29165  &
   side_count_for_body = 16  &
   segment_count_for_ends = 16
!
geometry attributes  &
   geometry_name = .test_analysis_1.Upper_DP_Group17_A.cyl1  &
   color = LtGray
!
geometry create shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group17_A.cyl1a  &
   adams_id = 3413  &
   center_marker = .test_analysis_1.Upper_DP_Group17_A.end_A  &
   angle_extent = 6.0  &
   length = -1.0  &
   radius = 0.2945665  &
   side_count_for_body = 3  &
   segment_count_for_ends = 3
!
geometry attributes  &
   geometry_name = .test_analysis_1.Upper_DP_Group17_A.cyl1a  &
   color = RED
!
geometry create shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group17_A.cyl2  &
   adams_id = 3414  &
   center_marker = .test_analysis_1.Upper_DP_Group17_A.gmark1  &
   angle_extent = 360.0  &
   length = -6.75  &
   radius = 0.20835  &
   side_count_for_body = 16  &
   segment_count_for_ends = 16
!
geometry attributes  &
   geometry_name = .test_analysis_1.Upper_DP_Group17_A.cyl2  &
   color = Gray
!
geometry create shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group17_A.cyl2a  &
   adams_id = 3415  &
   center_marker = .test_analysis_1.Upper_DP_Group17_A.gmark1  &
   angle_extent = 6.0  &
   length = -6.75  &
   radius = 0.2104335  &
   side_count_for_body = 3  &
   segment_count_for_ends = 3
!
geometry attributes  &
   geometry_name = .test_analysis_1.Upper_DP_Group17_A.cyl2a  &
   color = RED
!
!----------------------------- Upper_DP_Group17_B -----------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .test_analysis_1.ground
!
part create rigid_body name_and_position  &
   part_name = .test_analysis_1.Upper_DP_Group17_B  &
   adams_id = 9005300  &
   location = 218.3885305668, 0.0, 1415.1564402368  &
   orientation = 90.0d, 54.8197482834d, 270.0d
!
defaults coordinate_system  &
   default_coordinate_system = .test_analysis_1.Upper_DP_Group17_B
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group17_B.end_B  &
   adams_id = 9006534  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group17_B.cm  &
   adams_id = 9005300  &
   location = 0.0, 0.0, -7.75  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group17_B.end_beamB  &
   adams_id = 9006535  &
   location = 0.0, 0.0, -7.75  &
   orientation = 0.0d, 90.0d, 90.0d
!
part create rigid_body mass_properties  &
   part_name = .test_analysis_1.Upper_DP_Group17_B  &
   mass = 11.5258405181  &
   center_of_mass_marker = .test_analysis_1.Upper_DP_Group17_B.cm  &
   ixx = 294.0966081325  &
   iyy = 294.0966081325  &
   izz = 0.4102158729  &
   ixy = 0.0  &
   izx = 0.0  &
   iyz = 0.0
!
! ****** Graphics for current part ******
!
geometry create shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group17_B.cyl1  &
   adams_id = 3416  &
   center_marker = .test_analysis_1.Upper_DP_Group17_B.end_B  &
   angle_extent = 360.0  &
   length = -15.5  &
   radius = 0.20835  &
   side_count_for_body = 16  &
   segment_count_for_ends = 16
!
geometry attributes  &
   geometry_name = .test_analysis_1.Upper_DP_Group17_B.cyl1  &
   color = Gray
!
geometry create shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group17_B.cyl1a  &
   adams_id = 3417  &
   center_marker = .test_analysis_1.Upper_DP_Group17_B.end_B  &
   angle_extent = 6.0  &
   length = -15.5  &
   radius = 0.2104335  &
   side_count_for_body = 3  &
   segment_count_for_ends = 3
!
geometry attributes  &
   geometry_name = .test_analysis_1.Upper_DP_Group17_B.cyl1a  &
   color = RED
!
geometry create curve circle  &
   circle_name = .test_analysis_1.Upper_DP_Group17_B.rub1  &
   adams_id = 3198  &
   center_marker = .test_analysis_1.Upper_DP_Group17_B.cm  &
   radius = 0.25  &
   segment_count = 16
!
geometry attributes  &
   geometry_name = .test_analysis_1.Upper_DP_Group17_B.rub1  &
   color = Gray
!
!-------------------------- Upper_DP_Group17_sliderA --------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .test_analysis_1.ground
!
part create rigid_body name_and_position  &
   part_name = .test_analysis_1.Upper_DP_Group17_sliderA  &
   adams_id = 9005201  &
   location = 224.8256262504, 0.0, 1419.4725749365  &
   orientation = 90.0d, 56.1577662194d, 270.0d
!
defaults coordinate_system  &
   default_coordinate_system = .test_analysis_1.Upper_DP_Group17_sliderA
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group17_sliderA.cm  &
   adams_id = 9005201  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group17_sliderA.A1  &
   adams_id = 9006539  &
   location = 0.0, 0.0, 0.3  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group17_sliderA.A2  &
   adams_id = 9006540  &
   location = 0.0, 0.0, -0.3  &
   orientation = 0.0d, 0.0d, 0.0d
!
! ****** Floating Markers for current part ******
!
floating_marker create  &
   floating_marker_name = .test_analysis_1.Upper_DP_Group17_sliderA.FMARKER_9005407  &
   adams_id = 9005407
!
part create rigid_body mass_properties  &
   part_name = .test_analysis_1.Upper_DP_Group17_sliderA  &
   density = 0.1
!
! ****** Graphics for current part ******
!
geometry create shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group17_sliderA.Upper_DP_Group17_sliderAgraphic  &
   adams_id = 3422  &
   center_marker = .test_analysis_1.Upper_DP_Group17_sliderA.A2  &
   angle_extent = 360.0  &
   length = 0.6  &
   radius = 7.0E-02  &
   side_count_for_body = 4  &
   segment_count_for_ends = 4
!
geometry attributes  &
   geometry_name = .test_analysis_1.Upper_DP_Group17_sliderA.Upper_DP_Group17_sliderAgraphic  &
   color = MidnightBlue2  &
   render = wireframe
!
geometry create curve circle  &
   circle_name = .test_analysis_1.Upper_DP_Group17_sliderA.ghole  &
   adams_id = 3199  &
   center_marker = .test_analysis_1.Upper_DP_Group17_sliderA.cm  &
   radius = 0.54175  &
   segment_count = 24
!
geometry attributes  &
   geometry_name = .test_analysis_1.Upper_DP_Group17_sliderA.ghole  &
   color = BLUE  &
   render = wireframe
!
!----------------------------- Upper_DP_Group17_C -----------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .test_analysis_1.ground
!
part create rigid_body name_and_position  &
   part_name = .test_analysis_1.Upper_DP_Group17_C  &
   adams_id = 9005400  &
   location = 199.4877982186, 0.0, 1401.6191503539  &
   orientation = 90.0d, 53.5262911445d, 270.0d
!
defaults coordinate_system  &
   default_coordinate_system = .test_analysis_1.Upper_DP_Group17_C
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group17_C.gmark2  &
   adams_id = 9006538  &
   location = 0.0, 0.0, 7.7502353429  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group17_C.end_C  &
   adams_id = 9005400  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group17_C.cm  &
   adams_id = 9006536  &
   location = 0.0, 0.0, 3.0119235483  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group17_C.end_beamC  &
   adams_id = 9006537  &
   location = 0.0, 0.0, 1.0  &
   orientation = 0.0d, 90.0d, 90.0d
!
part create rigid_body mass_properties  &
   part_name = .test_analysis_1.Upper_DP_Group17_C  &
   mass = 7.743482937  &
   center_of_mass_marker = .test_analysis_1.Upper_DP_Group17_C.cm  &
   ixx = 53.868756841  &
   iyy = 53.868756841  &
   izz = 0.3323288305  &
   ixy = 0.0  &
   izx = 0.0  &
   iyz = 0.0
!
! ****** Graphics for current part ******
!
geometry create shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group17_C.cyl1a  &
   adams_id = 3420  &
   center_marker = .test_analysis_1.Upper_DP_Group17_C.end_C  &
   angle_extent = 6.0  &
   length = 1.0  &
   radius = 0.2945665  &
   side_count_for_body = 3  &
   segment_count_for_ends = 3
!
geometry attributes  &
   geometry_name = .test_analysis_1.Upper_DP_Group17_C.cyl1a  &
   color = RED
!
geometry create shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group17_C.cyl1  &
   adams_id = 3421  &
   center_marker = .test_analysis_1.Upper_DP_Group17_C.end_C  &
   angle_extent = 360.0  &
   length = 1.0  &
   radius = 0.29165  &
   side_count_for_body = 16  &
   segment_count_for_ends = 16
!
geometry attributes  &
   geometry_name = .test_analysis_1.Upper_DP_Group17_C.cyl1  &
   color = LtGray
!
geometry create shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group17_C.cyl2  &
   adams_id = 3418  &
   center_marker = .test_analysis_1.Upper_DP_Group17_C.gmark2  &
   angle_extent = 360.0  &
   length = -6.75  &
   radius = 0.20835  &
   side_count_for_body = 16  &
   segment_count_for_ends = 16
!
geometry attributes  &
   geometry_name = .test_analysis_1.Upper_DP_Group17_C.cyl2  &
   color = Gray
!
geometry create shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group17_C.cyl2a  &
   adams_id = 3419  &
   center_marker = .test_analysis_1.Upper_DP_Group17_C.gmark2  &
   angle_extent = 6.0  &
   length = -6.75  &
   radius = 0.2104335  &
   side_count_for_body = 3  &
   segment_count_for_ends = 3
!
geometry attributes  &
   geometry_name = .test_analysis_1.Upper_DP_Group17_C.cyl2a  &
   color = RED
!
!-------------------------- Upper_DP_Group17_sliderB --------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .test_analysis_1.ground
!
part create rigid_body name_and_position  &
   part_name = .test_analysis_1.Upper_DP_Group17_sliderB  &
   adams_id = 9005301  &
   location = 212.0541182078, 0.0, 1410.6912728194  &
   orientation = 90.0d, 54.8197482834d, 270.0d
!
defaults coordinate_system  &
   default_coordinate_system = .test_analysis_1.Upper_DP_Group17_sliderB
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group17_sliderB.cm  &
   adams_id = 9005301  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group17_sliderB.B1  &
   adams_id = 9006541  &
   location = 0.0, 0.0, 0.3  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group17_sliderB.B2  &
   adams_id = 9006542  &
   location = 0.0, 0.0, -0.3  &
   orientation = 0.0d, 0.0d, 0.0d
!
! ****** Floating Markers for current part ******
!
floating_marker create  &
   floating_marker_name = .test_analysis_1.Upper_DP_Group17_sliderB.FMARKER_9005408  &
   adams_id = 9005408
!
part create rigid_body mass_properties  &
   part_name = .test_analysis_1.Upper_DP_Group17_sliderB  &
   density = 0.1
!
! ****** Graphics for current part ******
!
geometry create shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group17_sliderB.Upper_DP_Group17_sliderBgraphic  &
   adams_id = 3423  &
   center_marker = .test_analysis_1.Upper_DP_Group17_sliderB.B2  &
   angle_extent = 360.0  &
   length = 0.6  &
   radius = 7.0E-02  &
   side_count_for_body = 4  &
   segment_count_for_ends = 4
!
geometry attributes  &
   geometry_name = .test_analysis_1.Upper_DP_Group17_sliderB.Upper_DP_Group17_sliderBgraphic  &
   color = MidnightBlue2  &
   render = wireframe
!
geometry create curve circle  &
   circle_name = .test_analysis_1.Upper_DP_Group17_sliderB.ghole  &
   adams_id = 3200  &
   center_marker = .test_analysis_1.Upper_DP_Group17_sliderB.cm  &
   radius = 0.54175  &
   segment_count = 24
!
geometry attributes  &
   geometry_name = .test_analysis_1.Upper_DP_Group17_sliderB.ghole  &
   color = BLUE  &
   render = wireframe
!
!----------------------------- Upper_DP_Group18_A -----------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .test_analysis_1.ground
!
part create rigid_body name_and_position  &
   part_name = .test_analysis_1.Upper_DP_Group18_A  &
   adams_id = 9005500  &
   location = 199.4882669537, 0.0, 1401.619502463  &
   orientation = 90.0d, 52.6181983845d, 270.0d
!
defaults coordinate_system  &
   default_coordinate_system = .test_analysis_1.Upper_DP_Group18_A
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group18_A.end_A  &
   adams_id = 9005500  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group18_A.cm  &
   adams_id = 9006543  &
   location = 0.0, 0.0, -3.0117709993  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group18_A.gmark1  &
   adams_id = 9006544  &
   location = 0.0, 0.0, -1.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group18_A.end_beamA  &
   adams_id = 9006545  &
   location = 0.0, 0.0, -1.0  &
   orientation = 0.0d, 90.0d, 90.0d
!
part create rigid_body mass_properties  &
   part_name = .test_analysis_1.Upper_DP_Group18_A  &
   mass = 7.743482937  &
   center_of_mass_marker = .test_analysis_1.Upper_DP_Group18_A.cm  &
   ixx = 53.8655360846  &
   iyy = 53.8655360846  &
   izz = 0.3323288305  &
   ixy = 0.0  &
   izx = 0.0  &
   iyz = 0.0
!
! ****** Graphics for current part ******
!
geometry create shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group18_A.cyl1  &
   adams_id = 3424  &
   center_marker = .test_analysis_1.Upper_DP_Group18_A.end_A  &
   angle_extent = 360.0  &
   length = -1.0  &
   radius = 0.29165  &
   side_count_for_body = 16  &
   segment_count_for_ends = 16
!
geometry attributes  &
   geometry_name = .test_analysis_1.Upper_DP_Group18_A.cyl1  &
   color = LtGray
!
geometry create shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group18_A.cyl1a  &
   adams_id = 3425  &
   center_marker = .test_analysis_1.Upper_DP_Group18_A.end_A  &
   angle_extent = 6.0  &
   length = -1.0  &
   radius = 0.2945665  &
   side_count_for_body = 3  &
   segment_count_for_ends = 3
!
geometry attributes  &
   geometry_name = .test_analysis_1.Upper_DP_Group18_A.cyl1a  &
   color = RED
!
geometry create shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group18_A.cyl2  &
   adams_id = 3426  &
   center_marker = .test_analysis_1.Upper_DP_Group18_A.gmark1  &
   angle_extent = 360.0  &
   length = -6.75  &
   radius = 0.20835  &
   side_count_for_body = 16  &
   segment_count_for_ends = 16
!
geometry attributes  &
   geometry_name = .test_analysis_1.Upper_DP_Group18_A.cyl2  &
   color = Gray
!
geometry create shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group18_A.cyl2a  &
   adams_id = 3427  &
   center_marker = .test_analysis_1.Upper_DP_Group18_A.gmark1  &
   angle_extent = 6.0  &
   length = -6.75  &
   radius = 0.2104335  &
   side_count_for_body = 3  &
   segment_count_for_ends = 3
!
geometry attributes  &
   geometry_name = .test_analysis_1.Upper_DP_Group18_A.cyl2a  &
   color = RED
!
!----------------------------- Upper_DP_Group18_B -----------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .test_analysis_1.ground
!
part create rigid_body name_and_position  &
   part_name = .test_analysis_1.Upper_DP_Group18_B  &
   adams_id = 9005600  &
   location = 193.3298471839, 0.0, 1396.914133718  &
   orientation = 90.0d, 51.2522171071d, 270.0d
!
defaults coordinate_system  &
   default_coordinate_system = .test_analysis_1.Upper_DP_Group18_B
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group18_B.end_B  &
   adams_id = 9006546  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group18_B.cm  &
   adams_id = 9005600  &
   location = 0.0, 0.0, -7.75  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group18_B.end_beamB  &
   adams_id = 9006547  &
   location = 0.0, 0.0, -7.75  &
   orientation = 0.0d, 90.0d, 90.0d
!
part create rigid_body mass_properties  &
   part_name = .test_analysis_1.Upper_DP_Group18_B  &
   mass = 11.5258405181  &
   center_of_mass_marker = .test_analysis_1.Upper_DP_Group18_B.cm  &
   ixx = 294.0966081325  &
   iyy = 294.0966081325  &
   izz = 0.4102158729  &
   ixy = 0.0  &
   izx = 0.0  &
   iyz = 0.0
!
! ****** Graphics for current part ******
!
geometry create shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group18_B.cyl1  &
   adams_id = 3428  &
   center_marker = .test_analysis_1.Upper_DP_Group18_B.end_B  &
   angle_extent = 360.0  &
   length = -15.5  &
   radius = 0.20835  &
   side_count_for_body = 16  &
   segment_count_for_ends = 16
!
geometry attributes  &
   geometry_name = .test_analysis_1.Upper_DP_Group18_B.cyl1  &
   color = Gray
!
geometry create shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group18_B.cyl1a  &
   adams_id = 3429  &
   center_marker = .test_analysis_1.Upper_DP_Group18_B.end_B  &
   angle_extent = 6.0  &
   length = -15.5  &
   radius = 0.2104335  &
   side_count_for_body = 3  &
   segment_count_for_ends = 3
!
geometry attributes  &
   geometry_name = .test_analysis_1.Upper_DP_Group18_B.cyl1a  &
   color = RED
!
geometry create curve circle  &
   circle_name = .test_analysis_1.Upper_DP_Group18_B.rub1  &
   adams_id = 3201  &
   center_marker = .test_analysis_1.Upper_DP_Group18_B.cm  &
   radius = 0.25  &
   segment_count = 16
!
geometry attributes  &
   geometry_name = .test_analysis_1.Upper_DP_Group18_B.rub1  &
   color = Gray
!
!-------------------------- Upper_DP_Group18_sliderA --------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .test_analysis_1.ground
!
part create rigid_body name_and_position  &
   part_name = .test_analysis_1.Upper_DP_Group18_sliderA  &
   adams_id = 9005501  &
   location = 199.4882669537, 0.0, 1401.619502463  &
   orientation = 90.0d, 52.6181983845d, 270.0d
!
defaults coordinate_system  &
   default_coordinate_system = .test_analysis_1.Upper_DP_Group18_sliderA
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group18_sliderA.cm  &
   adams_id = 9005501  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group18_sliderA.A1  &
   adams_id = 9006551  &
   location = 0.0, 0.0, 0.3  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group18_sliderA.A2  &
   adams_id = 9006552  &
   location = 0.0, 0.0, -0.3  &
   orientation = 0.0d, 0.0d, 0.0d
!
! ****** Floating Markers for current part ******
!
floating_marker create  &
   floating_marker_name = .test_analysis_1.Upper_DP_Group18_sliderA.FMARKER_9005707  &
   adams_id = 9005707
!
part create rigid_body mass_properties  &
   part_name = .test_analysis_1.Upper_DP_Group18_sliderA  &
   density = 0.1
!
! ****** Graphics for current part ******
!
geometry create shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group18_sliderA.Upper_DP_Group18_sliderAgraphic  &
   adams_id = 3434  &
   center_marker = .test_analysis_1.Upper_DP_Group18_sliderA.A2  &
   angle_extent = 360.0  &
   length = 0.6  &
   radius = 7.0E-02  &
   side_count_for_body = 4  &
   segment_count_for_ends = 4
!
geometry attributes  &
   geometry_name = .test_analysis_1.Upper_DP_Group18_sliderA.Upper_DP_Group18_sliderAgraphic  &
   color = MidnightBlue2  &
   render = wireframe
!
geometry create curve circle  &
   circle_name = .test_analysis_1.Upper_DP_Group18_sliderA.ghole  &
   adams_id = 3202  &
   center_marker = .test_analysis_1.Upper_DP_Group18_sliderA.cm  &
   radius = 0.54175  &
   segment_count = 24
!
geometry attributes  &
   geometry_name = .test_analysis_1.Upper_DP_Group18_sliderA.ghole  &
   color = BLUE  &
   render = wireframe
!
!----------------------------- Upper_DP_Group18_C -----------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .test_analysis_1.ground
!
part create rigid_body name_and_position  &
   part_name = .test_analysis_1.Upper_DP_Group18_C  &
   adams_id = 9005700  &
   location = 175.308912077, 0.0, 1382.2255296467  &
   orientation = 90.0d, 49.9466497537d, 270.0d
!
defaults coordinate_system  &
   default_coordinate_system = .test_analysis_1.Upper_DP_Group18_C
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group18_C.gmark2  &
   adams_id = 9006550  &
   location = 0.0, 0.0, 7.75035241  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group18_C.end_C  &
   adams_id = 9005700  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group18_C.cm  &
   adams_id = 9006548  &
   location = 0.0, 0.0, 3.011999431  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group18_C.end_beamC  &
   adams_id = 9006549  &
   location = 0.0, 0.0, 1.0  &
   orientation = 0.0d, 90.0d, 90.0d
!
part create rigid_body mass_properties  &
   part_name = .test_analysis_1.Upper_DP_Group18_C  &
   mass = 7.743482937  &
   center_of_mass_marker = .test_analysis_1.Upper_DP_Group18_C.cm  &
   ixx = 53.87035902  &
   iyy = 53.87035902  &
   izz = 0.3323288305  &
   ixy = 0.0  &
   izx = 0.0  &
   iyz = 0.0
!
! ****** Graphics for current part ******
!
geometry create shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group18_C.cyl1a  &
   adams_id = 3432  &
   center_marker = .test_analysis_1.Upper_DP_Group18_C.end_C  &
   angle_extent = 6.0  &
   length = 1.0  &
   radius = 0.2945665  &
   side_count_for_body = 3  &
   segment_count_for_ends = 3
!
geometry attributes  &
   geometry_name = .test_analysis_1.Upper_DP_Group18_C.cyl1a  &
   color = RED
!
geometry create shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group18_C.cyl1  &
   adams_id = 3433  &
   center_marker = .test_analysis_1.Upper_DP_Group18_C.end_C  &
   angle_extent = 360.0  &
   length = 1.0  &
   radius = 0.29165  &
   side_count_for_body = 16  &
   segment_count_for_ends = 16
!
geometry attributes  &
   geometry_name = .test_analysis_1.Upper_DP_Group18_C.cyl1  &
   color = LtGray
!
geometry create shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group18_C.cyl2  &
   adams_id = 3430  &
   center_marker = .test_analysis_1.Upper_DP_Group18_C.gmark2  &
   angle_extent = 360.0  &
   length = -6.75  &
   radius = 0.20835  &
   side_count_for_body = 16  &
   segment_count_for_ends = 16
!
geometry attributes  &
   geometry_name = .test_analysis_1.Upper_DP_Group18_C.cyl2  &
   color = Gray
!
geometry create shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group18_C.cyl2a  &
   adams_id = 3431  &
   center_marker = .test_analysis_1.Upper_DP_Group18_C.gmark2  &
   angle_extent = 6.0  &
   length = -6.75  &
   radius = 0.2104335  &
   side_count_for_body = 3  &
   segment_count_for_ends = 3
!
geometry attributes  &
   geometry_name = .test_analysis_1.Upper_DP_Group18_C.cyl2a  &
   color = RED
!
!-------------------------- Upper_DP_Group18_sliderB --------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .test_analysis_1.ground
!
part create rigid_body name_and_position  &
   part_name = .test_analysis_1.Upper_DP_Group18_sliderB  &
   adams_id = 9005601  &
   location = 187.2855547346, 0.0, 1392.0634606938  &
   orientation = 90.0d, 51.2522171071d, 270.0d
!
defaults coordinate_system  &
   default_coordinate_system = .test_analysis_1.Upper_DP_Group18_sliderB
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group18_sliderB.cm  &
   adams_id = 9005601  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group18_sliderB.B1  &
   adams_id = 9006553  &
   location = 0.0, 0.0, 0.3  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group18_sliderB.B2  &
   adams_id = 9006554  &
   location = 0.0, 0.0, -0.3  &
   orientation = 0.0d, 0.0d, 0.0d
!
! ****** Floating Markers for current part ******
!
floating_marker create  &
   floating_marker_name = .test_analysis_1.Upper_DP_Group18_sliderB.FMARKER_9005708  &
   adams_id = 9005708
!
part create rigid_body mass_properties  &
   part_name = .test_analysis_1.Upper_DP_Group18_sliderB  &
   density = 0.1
!
! ****** Graphics for current part ******
!
geometry create shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group18_sliderB.Upper_DP_Group18_sliderBgraphic  &
   adams_id = 3435  &
   center_marker = .test_analysis_1.Upper_DP_Group18_sliderB.B2  &
   angle_extent = 360.0  &
   length = 0.6  &
   radius = 7.0E-02  &
   side_count_for_body = 4  &
   segment_count_for_ends = 4
!
geometry attributes  &
   geometry_name = .test_analysis_1.Upper_DP_Group18_sliderB.Upper_DP_Group18_sliderBgraphic  &
   color = MidnightBlue2  &
   render = wireframe
!
geometry create curve circle  &
   circle_name = .test_analysis_1.Upper_DP_Group18_sliderB.ghole  &
   adams_id = 3203  &
   center_marker = .test_analysis_1.Upper_DP_Group18_sliderB.cm  &
   radius = 0.54175  &
   segment_count = 24
!
geometry attributes  &
   geometry_name = .test_analysis_1.Upper_DP_Group18_sliderB.ghole  &
   color = BLUE  &
   render = wireframe
!
!----------------------------- Upper_DP_Group19_A -----------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .test_analysis_1.ground
!
part create rigid_body name_and_position  &
   part_name = .test_analysis_1.Upper_DP_Group19_A  &
   adams_id = 9005800  &
   location = 175.3096546526, 0.0, 1382.2261636846  &
   orientation = 90.0d, 49.0793655664d, 270.0d
!
defaults coordinate_system  &
   default_coordinate_system = .test_analysis_1.Upper_DP_Group19_A
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group19_A.end_A  &
   adams_id = 9005800  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group19_A.cm  &
   adams_id = 9006555  &
   location = 0.0, 0.0, -3.0117709993  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group19_A.gmark1  &
   adams_id = 9006556  &
   location = 0.0, 0.0, -1.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group19_A.end_beamA  &
   adams_id = 9006557  &
   location = 0.0, 0.0, -1.0  &
   orientation = 0.0d, 90.0d, 90.0d
!
part create rigid_body mass_properties  &
   part_name = .test_analysis_1.Upper_DP_Group19_A  &
   mass = 7.743482937  &
   center_of_mass_marker = .test_analysis_1.Upper_DP_Group19_A.cm  &
   ixx = 53.8655360846  &
   iyy = 53.8655360846  &
   izz = 0.3323288305  &
   ixy = 0.0  &
   izx = 0.0  &
   iyz = 0.0
!
! ****** Graphics for current part ******
!
geometry create shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group19_A.cyl1  &
   adams_id = 3436  &
   center_marker = .test_analysis_1.Upper_DP_Group19_A.end_A  &
   angle_extent = 360.0  &
   length = -1.0  &
   radius = 0.29165  &
   side_count_for_body = 16  &
   segment_count_for_ends = 16
!
geometry attributes  &
   geometry_name = .test_analysis_1.Upper_DP_Group19_A.cyl1  &
   color = LtGray
!
geometry create shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group19_A.cyl1a  &
   adams_id = 3437  &
   center_marker = .test_analysis_1.Upper_DP_Group19_A.end_A  &
   angle_extent = 6.0  &
   length = -1.0  &
   radius = 0.2945665  &
   side_count_for_body = 3  &
   segment_count_for_ends = 3
!
geometry attributes  &
   geometry_name = .test_analysis_1.Upper_DP_Group19_A.cyl1a  &
   color = RED
!
geometry create shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group19_A.cyl2  &
   adams_id = 3438  &
   center_marker = .test_analysis_1.Upper_DP_Group19_A.gmark1  &
   angle_extent = 360.0  &
   length = -6.75  &
   radius = 0.20835  &
   side_count_for_body = 16  &
   segment_count_for_ends = 16
!
geometry attributes  &
   geometry_name = .test_analysis_1.Upper_DP_Group19_A.cyl2  &
   color = Gray
!
geometry create shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group19_A.cyl2a  &
   adams_id = 3439  &
   center_marker = .test_analysis_1.Upper_DP_Group19_A.gmark1  &
   angle_extent = 6.0  &
   length = -6.75  &
   radius = 0.2104335  &
   side_count_for_body = 3  &
   segment_count_for_ends = 3
!
geometry attributes  &
   geometry_name = .test_analysis_1.Upper_DP_Group19_A.cyl2a  &
   color = RED
!
!----------------------------- Upper_DP_Group19_B -----------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .test_analysis_1.ground
!
part create rigid_body name_and_position  &
   part_name = .test_analysis_1.Upper_DP_Group19_B  &
   adams_id = 9005900  &
   location = 169.4533116092, 0.0, 1377.1495473986  &
   orientation = 90.0d, 47.7450676758d, 270.0d
!
defaults coordinate_system  &
   default_coordinate_system = .test_analysis_1.Upper_DP_Group19_B
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group19_B.end_B  &
   adams_id = 9006558  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group19_B.cm  &
   adams_id = 9005900  &
   location = 0.0, 0.0, -7.75  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group19_B.end_beamB  &
   adams_id = 9006559  &
   location = 0.0, 0.0, -7.75  &
   orientation = 0.0d, 90.0d, 90.0d
!
part create rigid_body mass_properties  &
   part_name = .test_analysis_1.Upper_DP_Group19_B  &
   mass = 11.5258405181  &
   center_of_mass_marker = .test_analysis_1.Upper_DP_Group19_B.cm  &
   ixx = 294.0966081325  &
   iyy = 294.0966081325  &
   izz = 0.4102158729  &
   ixy = 0.0  &
   izx = 0.0  &
   iyz = 0.0
!
! ****** Graphics for current part ******
!
geometry create shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group19_B.cyl1  &
   adams_id = 3440  &
   center_marker = .test_analysis_1.Upper_DP_Group19_B.end_B  &
   angle_extent = 360.0  &
   length = -15.5  &
   radius = 0.20835  &
   side_count_for_body = 16  &
   segment_count_for_ends = 16
!
geometry attributes  &
   geometry_name = .test_analysis_1.Upper_DP_Group19_B.cyl1  &
   color = Gray
!
geometry create shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group19_B.cyl1a  &
   adams_id = 3441  &
   center_marker = .test_analysis_1.Upper_DP_Group19_B.end_B  &
   angle_extent = 6.0  &
   length = -15.5  &
   radius = 0.2104335  &
   side_count_for_body = 3  &
   segment_count_for_ends = 3
!
geometry attributes  &
   geometry_name = .test_analysis_1.Upper_DP_Group19_B.cyl1a  &
   color = RED
!
geometry create curve circle  &
   circle_name = .test_analysis_1.Upper_DP_Group19_B.rub1  &
   adams_id = 3204  &
   center_marker = .test_analysis_1.Upper_DP_Group19_B.cm  &
   radius = 0.25  &
   segment_count = 16
!
geometry attributes  &
   geometry_name = .test_analysis_1.Upper_DP_Group19_B.rub1  &
   color = Gray
!
!-------------------------- Upper_DP_Group19_sliderA --------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .test_analysis_1.ground
!
part create rigid_body name_and_position  &
   part_name = .test_analysis_1.Upper_DP_Group19_sliderA  &
   adams_id = 9005801  &
   location = 175.3096546526, 0.0, 1382.2261636846  &
   orientation = 90.0d, 49.0793655664d, 270.0d
!
defaults coordinate_system  &
   default_coordinate_system = .test_analysis_1.Upper_DP_Group19_sliderA
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group19_sliderA.cm  &
   adams_id = 9005801  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group19_sliderA.A1  &
   adams_id = 9006563  &
   location = 0.0, 0.0, 0.3  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group19_sliderA.A2  &
   adams_id = 9006564  &
   location = 0.0, 0.0, -0.3  &
   orientation = 0.0d, 0.0d, 0.0d
!
! ****** Floating Markers for current part ******
!
floating_marker create  &
   floating_marker_name = .test_analysis_1.Upper_DP_Group19_sliderA.FMARKER_9006007  &
   adams_id = 9006007
!
part create rigid_body mass_properties  &
   part_name = .test_analysis_1.Upper_DP_Group19_sliderA  &
   density = 0.1
!
! ****** Graphics for current part ******
!
geometry create shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group19_sliderA.Upper_DP_Group19_sliderAgraphic  &
   adams_id = 3446  &
   center_marker = .test_analysis_1.Upper_DP_Group19_sliderA.A2  &
   angle_extent = 360.0  &
   length = 0.6  &
   radius = 7.0E-02  &
   side_count_for_body = 4  &
   segment_count_for_ends = 4
!
geometry attributes  &
   geometry_name = .test_analysis_1.Upper_DP_Group19_sliderA.Upper_DP_Group19_sliderAgraphic  &
   color = MidnightBlue2  &
   render = wireframe
!
geometry create curve circle  &
   circle_name = .test_analysis_1.Upper_DP_Group19_sliderA.ghole  &
   adams_id = 3205  &
   center_marker = .test_analysis_1.Upper_DP_Group19_sliderA.cm  &
   radius = 0.54175  &
   segment_count = 24
!
geometry attributes  &
   geometry_name = .test_analysis_1.Upper_DP_Group19_sliderA.ghole  &
   color = BLUE  &
   render = wireframe
!
!----------------------------- Upper_DP_Group19_C -----------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .test_analysis_1.ground
!
part create rigid_body name_and_position  &
   part_name = .test_analysis_1.Upper_DP_Group19_C  &
   adams_id = 9006000  &
   location = 152.3702453622, 0.0, 1361.379890509  &
   orientation = 90.0d, 46.3780737658d, 270.0d
!
defaults coordinate_system  &
   default_coordinate_system = .test_analysis_1.Upper_DP_Group19_C
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group19_C.gmark2  &
   adams_id = 9006562  &
   location = 0.0, 0.0, 7.7504893215  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group19_C.end_C  &
   adams_id = 9006000  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group19_C.cm  &
   adams_id = 9006560  &
   location = 0.0, 0.0, 3.012088177  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group19_C.end_beamC  &
   adams_id = 9006561  &
   location = 0.0, 0.0, 1.0  &
   orientation = 0.0d, 90.0d, 90.0d
!
part create rigid_body mass_properties  &
   part_name = .test_analysis_1.Upper_DP_Group19_C  &
   mass = 7.743482937  &
   center_of_mass_marker = .test_analysis_1.Upper_DP_Group19_C.cm  &
   ixx = 53.8722328525  &
   iyy = 53.8722328525  &
   izz = 0.3323288305  &
   ixy = 0.0  &
   izx = 0.0  &
   iyz = 0.0
!
! ****** Graphics for current part ******
!
geometry create shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group19_C.cyl1a  &
   adams_id = 3444  &
   center_marker = .test_analysis_1.Upper_DP_Group19_C.end_C  &
   angle_extent = 6.0  &
   length = 1.0  &
   radius = 0.2945665  &
   side_count_for_body = 3  &
   segment_count_for_ends = 3
!
geometry attributes  &
   geometry_name = .test_analysis_1.Upper_DP_Group19_C.cyl1a  &
   color = RED
!
geometry create shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group19_C.cyl1  &
   adams_id = 3445  &
   center_marker = .test_analysis_1.Upper_DP_Group19_C.end_C  &
   angle_extent = 360.0  &
   length = 1.0  &
   radius = 0.29165  &
   side_count_for_body = 16  &
   segment_count_for_ends = 16
!
geometry attributes  &
   geometry_name = .test_analysis_1.Upper_DP_Group19_C.cyl1  &
   color = LtGray
!
geometry create shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group19_C.cyl2  &
   adams_id = 3442  &
   center_marker = .test_analysis_1.Upper_DP_Group19_C.gmark2  &
   angle_extent = 360.0  &
   length = -6.75  &
   radius = 0.20835  &
   side_count_for_body = 16  &
   segment_count_for_ends = 16
!
geometry attributes  &
   geometry_name = .test_analysis_1.Upper_DP_Group19_C.cyl2  &
   color = Gray
!
geometry create shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group19_C.cyl2a  &
   adams_id = 3443  &
   center_marker = .test_analysis_1.Upper_DP_Group19_C.gmark2  &
   angle_extent = 6.0  &
   length = -6.75  &
   radius = 0.2104335  &
   side_count_for_body = 3  &
   segment_count_for_ends = 3
!
geometry attributes  &
   geometry_name = .test_analysis_1.Upper_DP_Group19_C.cyl2a  &
   color = RED
!
!-------------------------- Upper_DP_Group19_sliderB --------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .test_analysis_1.ground
!
part create rigid_body name_and_position  &
   part_name = .test_analysis_1.Upper_DP_Group19_sliderB  &
   adams_id = 9005901  &
   location = 163.7170697194, 0.0, 1371.9382108156  &
   orientation = 90.0d, 47.7450676758d, 270.0d
!
defaults coordinate_system  &
   default_coordinate_system = .test_analysis_1.Upper_DP_Group19_sliderB
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group19_sliderB.cm  &
   adams_id = 9005901  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group19_sliderB.B1  &
   adams_id = 9006565  &
   location = 0.0, 0.0, 0.3  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group19_sliderB.B2  &
   adams_id = 9006566  &
   location = 0.0, 0.0, -0.3  &
   orientation = 0.0d, 0.0d, 0.0d
!
! ****** Floating Markers for current part ******
!
floating_marker create  &
   floating_marker_name = .test_analysis_1.Upper_DP_Group19_sliderB.FMARKER_9006008  &
   adams_id = 9006008
!
part create rigid_body mass_properties  &
   part_name = .test_analysis_1.Upper_DP_Group19_sliderB  &
   density = 0.1
!
! ****** Graphics for current part ******
!
geometry create shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group19_sliderB.Upper_DP_Group19_sliderBgraphic  &
   adams_id = 3447  &
   center_marker = .test_analysis_1.Upper_DP_Group19_sliderB.B2  &
   angle_extent = 360.0  &
   length = 0.6  &
   radius = 7.0E-02  &
   side_count_for_body = 4  &
   segment_count_for_ends = 4
!
geometry attributes  &
   geometry_name = .test_analysis_1.Upper_DP_Group19_sliderB.Upper_DP_Group19_sliderBgraphic  &
   color = MidnightBlue2  &
   render = wireframe
!
geometry create curve circle  &
   circle_name = .test_analysis_1.Upper_DP_Group19_sliderB.ghole  &
   adams_id = 3206  &
   center_marker = .test_analysis_1.Upper_DP_Group19_sliderB.cm  &
   radius = 0.54175  &
   segment_count = 24
!
geometry attributes  &
   geometry_name = .test_analysis_1.Upper_DP_Group19_sliderB.ghole  &
   color = BLUE  &
   render = wireframe
!
!----------------------------- Upper_DP_Group20_A -----------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .test_analysis_1.ground
!
part create rigid_body name_and_position  &
   part_name = .test_analysis_1.Upper_DP_Group20_A  &
   adams_id = 9006100  &
   location = 152.3712185039, 0.0, 1361.3808331761  &
   orientation = 90.0d, 45.4704446491d, 270.0d
!
defaults coordinate_system  &
   default_coordinate_system = .test_analysis_1.Upper_DP_Group20_A
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group20_A.end_A  &
   adams_id = 9006100  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group20_A.cm  &
   adams_id = 9006567  &
   location = 0.0, 0.0, -3.0117709993  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group20_A.gmark1  &
   adams_id = 9006568  &
   location = 0.0, 0.0, -1.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group20_A.end_beamA  &
   adams_id = 9006569  &
   location = 0.0, 0.0, -1.0  &
   orientation = 0.0d, 90.0d, 90.0d
!
part create rigid_body mass_properties  &
   part_name = .test_analysis_1.Upper_DP_Group20_A  &
   mass = 7.743482937  &
   center_of_mass_marker = .test_analysis_1.Upper_DP_Group20_A.cm  &
   ixx = 53.8655360846  &
   iyy = 53.8655360846  &
   izz = 0.3323288305  &
   ixy = 0.0  &
   izx = 0.0  &
   iyz = 0.0
!
! ****** Graphics for current part ******
!
geometry create shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group20_A.cyl1  &
   adams_id = 3448  &
   center_marker = .test_analysis_1.Upper_DP_Group20_A.end_A  &
   angle_extent = 360.0  &
   length = -1.0  &
   radius = 0.29165  &
   side_count_for_body = 16  &
   segment_count_for_ends = 16
!
geometry attributes  &
   geometry_name = .test_analysis_1.Upper_DP_Group20_A.cyl1  &
   color = LtGray
!
geometry create shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group20_A.cyl1a  &
   adams_id = 3449  &
   center_marker = .test_analysis_1.Upper_DP_Group20_A.end_A  &
   angle_extent = 6.0  &
   length = -1.0  &
   radius = 0.2945665  &
   side_count_for_body = 3  &
   segment_count_for_ends = 3
!
geometry attributes  &
   geometry_name = .test_analysis_1.Upper_DP_Group20_A.cyl1a  &
   color = RED
!
geometry create shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group20_A.cyl2  &
   adams_id = 3450  &
   center_marker = .test_analysis_1.Upper_DP_Group20_A.gmark1  &
   angle_extent = 360.0  &
   length = -6.75  &
   radius = 0.20835  &
   side_count_for_body = 16  &
   segment_count_for_ends = 16
!
geometry attributes  &
   geometry_name = .test_analysis_1.Upper_DP_Group20_A.cyl2  &
   color = Gray
!
geometry create shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group20_A.cyl2a  &
   adams_id = 3451  &
   center_marker = .test_analysis_1.Upper_DP_Group20_A.gmark1  &
   angle_extent = 6.0  &
   length = -6.75  &
   radius = 0.2104335  &
   side_count_for_body = 3  &
   segment_count_for_ends = 3
!
geometry attributes  &
   geometry_name = .test_analysis_1.Upper_DP_Group20_A.cyl2a  &
   color = RED
!
!----------------------------- Upper_DP_Group20_B -----------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .test_analysis_1.ground
!
part create rigid_body name_and_position  &
   part_name = .test_analysis_1.Upper_DP_Group20_B  &
   adams_id = 9006200  &
   location = 146.8459564643, 0.0, 1355.9455679447  &
   orientation = 90.0d, 44.2035584536d, 270.0d
!
defaults coordinate_system  &
   default_coordinate_system = .test_analysis_1.Upper_DP_Group20_B
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group20_B.end_B  &
   adams_id = 9006570  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group20_B.cm  &
   adams_id = 9006200  &
   location = 0.0, 0.0, -7.75  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group20_B.end_beamB  &
   adams_id = 9006571  &
   location = 0.0, 0.0, -7.75  &
   orientation = 0.0d, 90.0d, 90.0d
!
part create rigid_body mass_properties  &
   part_name = .test_analysis_1.Upper_DP_Group20_B  &
   mass = 11.5258405181  &
   center_of_mass_marker = .test_analysis_1.Upper_DP_Group20_B.cm  &
   ixx = 294.0966081325  &
   iyy = 294.0966081325  &
   izz = 0.4102158729  &
   ixy = 0.0  &
   izx = 0.0  &
   iyz = 0.0
!
! ****** Graphics for current part ******
!
geometry create shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group20_B.cyl1  &
   adams_id = 3452  &
   center_marker = .test_analysis_1.Upper_DP_Group20_B.end_B  &
   angle_extent = 360.0  &
   length = -15.5  &
   radius = 0.20835  &
   side_count_for_body = 16  &
   segment_count_for_ends = 16
!
geometry attributes  &
   geometry_name = .test_analysis_1.Upper_DP_Group20_B.cyl1  &
   color = Gray
!
geometry create shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group20_B.cyl1a  &
   adams_id = 3453  &
   center_marker = .test_analysis_1.Upper_DP_Group20_B.end_B  &
   angle_extent = 6.0  &
   length = -15.5  &
   radius = 0.2104335  &
   side_count_for_body = 3  &
   segment_count_for_ends = 3
!
geometry attributes  &
   geometry_name = .test_analysis_1.Upper_DP_Group20_B.cyl1a  &
   color = RED
!
geometry create curve circle  &
   circle_name = .test_analysis_1.Upper_DP_Group20_B.rub1  &
   adams_id = 3207  &
   center_marker = .test_analysis_1.Upper_DP_Group20_B.cm  &
   radius = 0.25  &
   segment_count = 16
!
geometry attributes  &
   geometry_name = .test_analysis_1.Upper_DP_Group20_B.rub1  &
   color = Gray
!
!-------------------------- Upper_DP_Group20_sliderA --------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .test_analysis_1.ground
!
part create rigid_body name_and_position  &
   part_name = .test_analysis_1.Upper_DP_Group20_sliderA  &
   adams_id = 9006101  &
   location = 152.3712185039, 0.0, 1361.3808331761  &
   orientation = 90.0d, 45.4704446491d, 270.0d
!
defaults coordinate_system  &
   default_coordinate_system = .test_analysis_1.Upper_DP_Group20_sliderA
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group20_sliderA.cm  &
   adams_id = 9006101  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group20_sliderA.A1  &
   adams_id = 9006575  &
   location = 0.0, 0.0, 0.3  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group20_sliderA.A2  &
   adams_id = 9006576  &
   location = 0.0, 0.0, -0.3  &
   orientation = 0.0d, 0.0d, 0.0d
!
! ****** Floating Markers for current part ******
!
floating_marker create  &
   floating_marker_name = .test_analysis_1.Upper_DP_Group20_sliderA.FMARKER_9006311  &
   adams_id = 9006311
!
part create rigid_body mass_properties  &
   part_name = .test_analysis_1.Upper_DP_Group20_sliderA  &
   density = 0.1
!
! ****** Graphics for current part ******
!
geometry create shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group20_sliderA.Upper_DP_Group20_sliderAgraphic  &
   adams_id = 3458  &
   center_marker = .test_analysis_1.Upper_DP_Group20_sliderA.A2  &
   angle_extent = 360.0  &
   length = 0.6  &
   radius = 7.0E-02  &
   side_count_for_body = 4  &
   segment_count_for_ends = 4
!
geometry attributes  &
   geometry_name = .test_analysis_1.Upper_DP_Group20_sliderA.Upper_DP_Group20_sliderAgraphic  &
   color = MidnightBlue2  &
   render = wireframe
!
geometry create curve circle  &
   circle_name = .test_analysis_1.Upper_DP_Group20_sliderA.ghole  &
   adams_id = 3208  &
   center_marker = .test_analysis_1.Upper_DP_Group20_sliderA.cm  &
   radius = 0.54175  &
   segment_count = 24
!
geometry attributes  &
   geometry_name = .test_analysis_1.Upper_DP_Group20_sliderA.ghole  &
   color = BLUE  &
   render = wireframe
!
!----------------------------- Upper_DP_Group20_C -----------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .test_analysis_1.ground
!
part create rigid_body name_and_position  &
   part_name = .test_analysis_1.Upper_DP_Group20_C  &
   adams_id = 9006300  &
   location = 130.768955542, 0.0, 1339.1510173281  &
   orientation = 90.0d, 42.8414097042d, 270.0d
!
defaults coordinate_system  &
   default_coordinate_system = .test_analysis_1.Upper_DP_Group20_C
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group20_C.gmark2  &
   adams_id = 9006574  &
   location = 0.0, 0.0, 7.7506311204  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group20_C.end_C  &
   adams_id = 9006300  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group20_C.cm  &
   adams_id = 9006572  &
   location = 0.0, 0.0, 3.0121800908  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group20_C.end_beamC  &
   adams_id = 9006573  &
   location = 0.0, 0.0, 1.0  &
   orientation = 0.0d, 90.0d, 90.0d
!
part create rigid_body mass_properties  &
   part_name = .test_analysis_1.Upper_DP_Group20_C  &
   mass = 7.743482937  &
   center_of_mass_marker = .test_analysis_1.Upper_DP_Group20_C.cm  &
   ixx = 53.8741736447  &
   iyy = 53.8741736447  &
   izz = 0.3323288305  &
   ixy = 0.0  &
   izx = 0.0  &
   iyz = 0.0
!
! ****** Graphics for current part ******
!
geometry create shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group20_C.cyl1a  &
   adams_id = 3456  &
   center_marker = .test_analysis_1.Upper_DP_Group20_C.end_C  &
   angle_extent = 6.0  &
   length = 1.0  &
   radius = 0.2945665  &
   side_count_for_body = 3  &
   segment_count_for_ends = 3
!
geometry attributes  &
   geometry_name = .test_analysis_1.Upper_DP_Group20_C.cyl1a  &
   color = RED
!
geometry create shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group20_C.cyl1  &
   adams_id = 3457  &
   center_marker = .test_analysis_1.Upper_DP_Group20_C.end_C  &
   angle_extent = 360.0  &
   length = 1.0  &
   radius = 0.29165  &
   side_count_for_body = 16  &
   segment_count_for_ends = 16
!
geometry attributes  &
   geometry_name = .test_analysis_1.Upper_DP_Group20_C.cyl1  &
   color = LtGray
!
geometry create shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group20_C.cyl2  &
   adams_id = 3454  &
   center_marker = .test_analysis_1.Upper_DP_Group20_C.gmark2  &
   angle_extent = 360.0  &
   length = -6.75  &
   radius = 0.20835  &
   side_count_for_body = 16  &
   segment_count_for_ends = 16
!
geometry attributes  &
   geometry_name = .test_analysis_1.Upper_DP_Group20_C.cyl2  &
   color = Gray
!
geometry create shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group20_C.cyl2a  &
   adams_id = 3455  &
   center_marker = .test_analysis_1.Upper_DP_Group20_C.gmark2  &
   angle_extent = 6.0  &
   length = -6.75  &
   radius = 0.2104335  &
   side_count_for_body = 3  &
   segment_count_for_ends = 3
!
geometry attributes  &
   geometry_name = .test_analysis_1.Upper_DP_Group20_C.cyl2a  &
   color = RED
!
!-------------------------- Upper_DP_Group20_sliderB --------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .test_analysis_1.ground
!
part create rigid_body name_and_position  &
   part_name = .test_analysis_1.Upper_DP_Group20_sliderB  &
   adams_id = 9006201  &
   location = 141.4425818591, 0.0, 1350.3898463107  &
   orientation = 90.0d, 44.2035584536d, 270.0d
!
defaults coordinate_system  &
   default_coordinate_system = .test_analysis_1.Upper_DP_Group20_sliderB
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group20_sliderB.cm  &
   adams_id = 9006201  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group20_sliderB.B1  &
   adams_id = 9006577  &
   location = 0.0, 0.0, 0.3  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group20_sliderB.B2  &
   adams_id = 9006578  &
   location = 0.0, 0.0, -0.3  &
   orientation = 0.0d, 0.0d, 0.0d
!
! ****** Floating Markers for current part ******
!
floating_marker create  &
   floating_marker_name = .test_analysis_1.Upper_DP_Group20_sliderB.FMARKER_9006312  &
   adams_id = 9006312
!
part create rigid_body mass_properties  &
   part_name = .test_analysis_1.Upper_DP_Group20_sliderB  &
   density = 0.1
!
! ****** Graphics for current part ******
!
geometry create shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group20_sliderB.Upper_DP_Group20_sliderBgraphic  &
   adams_id = 3459  &
   center_marker = .test_analysis_1.Upper_DP_Group20_sliderB.B2  &
   angle_extent = 360.0  &
   length = 0.6  &
   radius = 7.0E-02  &
   side_count_for_body = 4  &
   segment_count_for_ends = 4
!
geometry attributes  &
   geometry_name = .test_analysis_1.Upper_DP_Group20_sliderB.Upper_DP_Group20_sliderBgraphic  &
   color = MidnightBlue2  &
   render = wireframe
!
geometry create curve circle  &
   circle_name = .test_analysis_1.Upper_DP_Group20_sliderB.ghole  &
   adams_id = 3209  &
   center_marker = .test_analysis_1.Upper_DP_Group20_sliderB.cm  &
   radius = 0.54175  &
   segment_count = 24
!
geometry attributes  &
   geometry_name = .test_analysis_1.Upper_DP_Group20_sliderB.ghole  &
   color = BLUE  &
   render = wireframe
!
!-------------------------- Upper_DP_Group20_sliderC --------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .test_analysis_1.ground
!
part create rigid_body name_and_position  &
   part_name = .test_analysis_1.Upper_DP_Group20_sliderC  &
   adams_id = 9006301  &
   location = 130.768955542, 0.0, 1339.1510173281  &
   orientation = 90.0d, 42.8414097042d, 270.0d
!
defaults coordinate_system  &
   default_coordinate_system = .test_analysis_1.Upper_DP_Group20_sliderC
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group20_sliderC.cm  &
   adams_id = 9006301  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group20_sliderC.C1  &
   adams_id = 9006579  &
   location = 0.0, 0.0, 0.3  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .test_analysis_1.Upper_DP_Group20_sliderC.C2  &
   adams_id = 9006580  &
   location = 0.0, 0.0, -0.3  &
   orientation = 0.0d, 0.0d, 0.0d
!
! ****** Floating Markers for current part ******
!
floating_marker create  &
   floating_marker_name = .test_analysis_1.Upper_DP_Group20_sliderC.FMARKER_9006313  &
   adams_id = 9006313
!
part create rigid_body mass_properties  &
   part_name = .test_analysis_1.Upper_DP_Group20_sliderC  &
   density = 0.1
!
! ****** Graphics for current part ******
!
geometry create shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group20_sliderC.Upper_DP_Group20_sliderCgraphic  &
   adams_id = 3460  &
   center_marker = .test_analysis_1.Upper_DP_Group20_sliderC.C2  &
   angle_extent = 360.0  &
   length = 0.6  &
   radius = 7.0E-02  &
   side_count_for_body = 4  &
   segment_count_for_ends = 4
!
geometry attributes  &
   geometry_name = .test_analysis_1.Upper_DP_Group20_sliderC.Upper_DP_Group20_sliderCgraphic  &
   color = MidnightBlue2  &
   render = wireframe
!
geometry create curve circle  &
   circle_name = .test_analysis_1.Upper_DP_Group20_sliderC.ghole  &
   adams_id = 3210  &
   center_marker = .test_analysis_1.Upper_DP_Group20_sliderC.cm  &
   radius = 0.54175  &
   segment_count = 24
!
geometry attributes  &
   geometry_name = .test_analysis_1.Upper_DP_Group20_sliderC.ghole  &
   color = BLUE  &
   render = wireframe
!
!--------------------------------- Equations ----------------------------------!
!
!
part create equation differential_equation  &
   differential_equation_name = .test_analysis_1.integrated_ROP  &
   adams_id = 8001  &
   initial_condition = 2000.0  &
   function = ""  &
   implicit = off  &
   static_hold = on
!
part create equation differential_equation  &
   differential_equation_name = .test_analysis_1.integrated_BOHV  &
   adams_id = 8002  &
   initial_condition = 2000.0  &
   function = ""  &
   implicit = off  &
   static_hold = off
!
part create equation differential_equation  &
   differential_equation_name = .test_analysis_1.test_pdc_01_A_WZ_integral  &
   adams_id = 9000000  &
   initial_condition = 0.0  &
   function = ""  &
   implicit = off  &
   static_hold = on
!
part create equation differential_equation  &
   differential_equation_name = .test_analysis_1.example_stabilizer_02_A_WZ_integral  &
   adams_id = 9000200  &
   initial_condition = 0.0  &
   function = ""  &
   implicit = off  &
   static_hold = on
!
part create equation differential_equation  &
   differential_equation_name = .test_analysis_1.example_stabilizer_02_B_WZ_integral  &
   adams_id = 9000300  &
   initial_condition = 0.0  &
   function = ""  &
   implicit = off  &
   static_hold = on
!
part create equation differential_equation  &
   differential_equation_name = .test_analysis_1.TOS_WZ_integral  &
   adams_id = 7001  &
   initial_condition = 0.0  &
   function = ""  &
   implicit = off  &
   static_hold = on
!
part create equation differential_equation  &
   differential_equation_name = .test_analysis_1.TOS_VZ_integral  &
   adams_id = 9000301  &
   initial_condition = 0.0  &
   function = ""  &
   implicit = off  &
   static_hold = on
!
part create equation differential_equation  &
   differential_equation_name = .test_analysis_1.StringSpeedFilter  &
   adams_id = 9000302  &
   initial_condition = 0.0  &
   function = ""  &
   implicit = off  &
   static_hold = on
!
part create equation differential_equation  &
   differential_equation_name = .test_analysis_1.StringSpeedError  &
   adams_id = 9000303  &
   initial_condition = 0.0  &
   function = ""  &
   implicit = off  &
   static_hold = on
!
part create equation differential_equation  &
   differential_equation_name = .test_analysis_1.StringSpeedErrorRate  &
   adams_id = 9000304  &
   initial_condition = 0.0  &
   function = ""  &
   implicit = on  &
   static_hold = on
!
part create equation differential_equation  &
   differential_equation_name = .test_analysis_1.MotorSpeedFilter  &
   adams_id = 1101  &
   initial_condition = 0.0  &
   function = ""  &
   implicit = off  &
   static_hold = on
!
part create equation differential_equation  &
   differential_equation_name = .test_analysis_1.Intg_Motor_Speed  &
   adams_id = 1102  &
   initial_condition = 0.0  &
   function = ""  &
   implicit = off  &
   static_hold = on
!
part create equation differential_equation  &
   differential_equation_name = .test_analysis_1.BitForceFilter  &
   adams_id = 9000305  &
   initial_condition = 0.0  &
   function = ""  &
   implicit = off  &
   static_hold = on
!
part create equation differential_equation  &
   differential_equation_name = .test_analysis_1.BitTorqueFilter  &
   adams_id = 9000306  &
   initial_condition = 0.0  &
   function = ""  &
   implicit = off  &
   static_hold = on
!
part create equation differential_equation  &
   differential_equation_name = .test_analysis_1.BitForceError  &
   adams_id = 9000307  &
   initial_condition = 0.0  &
   function = ""  &
   implicit = off  &
   static_hold = on
!
part create equation differential_equation  &
   differential_equation_name = .test_analysis_1.HookLoadLatch  &
   adams_id = 101  &
   initial_condition = 8.8868573805E+04  &
   function = ""  &
   implicit = off  &
   static_hold = off
!
part create equation differential_equation  &
   differential_equation_name = .test_analysis_1.filtered_Surface_MSE  &
   adams_id = 9000308  &
   initial_condition = 0.0  &
   function = ""  &
   implicit = off  &
   static_hold = on
!
part create equation differential_equation  &
   differential_equation_name = .test_analysis_1.filtered_Bottom_MSE  &
   adams_id = 9000309  &
   initial_condition = 0.0  &
   function = ""  &
   implicit = off  &
   static_hold = on
!
part create equation general_state_equation  &
   general_state_equation_name = .test_analysis_1.dummy_DGSE  &
   adams_id = 990  &
   state_equation_count = 0  &
   output_equation_count = 1  &
   discrete_state_equation_count = 1  &
   u_input_array_name = .test_analysis_1.dummy_DGSE_U  &
   y_output_array_name = .test_analysis_1.dummy_DGSE_Y  &
   discrete_state_array_name = .test_analysis_1.dummy_DGSE_X  &
   discrete_ic_array_name = .test_analysis_1.dummy_DGSE_IC  &
   sample_period = "1.0"  &
   user_function = 0.0  &
   interface_routines = "adrill_solver::gse_deriv",  &
                        "adrill_solver::gse_output",  &
                        "adrill_solver::gse_update",  &
                        "adrill_solver::gse_samp"
!
part create equation linear_state_equation  &
   linear_state_equation_name = .test_analysis_1.Epipe1TorsionSystem  &
   adams_id = 1  &
   x_state_array_name = .test_analysis_1.Epipe1TorsionStates  &
   u_input_array_name = .test_analysis_1.Epipe1TorsionInputs  &
   y_output_array_name = .test_analysis_1.Epipe1TorsionOutput  &
   ic_array_name = .test_analysis_1.Epipe1TorsionICs  &
   a_state_matrix_name = .test_analysis_1.Epipe1TorsionAmat  &
   b_input_matrix_name = .test_analysis_1.Epipe1TorsionBmat  &
   c_output_matrix_name = .test_analysis_1.Epipe1TorsionCmat  &
   d_feedforward_matrix_name = .test_analysis_1.Epipe1TorsionDmat  &
   static_hold = on
!
part create equation linear_state_equation  &
   linear_state_equation_name = .test_analysis_1.Epipe1AxialSystem  &
   adams_id = 2  &
   x_state_array_name = .test_analysis_1.Epipe1AxialStates  &
   u_input_array_name = .test_analysis_1.Epipe1AxialInputs  &
   y_output_array_name = .test_analysis_1.Epipe1AxialOutput  &
   ic_array_name = .test_analysis_1.Epipe1AxialICs  &
   a_state_matrix_name = .test_analysis_1.Epipe1AxialAmat  &
   b_input_matrix_name = .test_analysis_1.Epipe1AxialBmat  &
   c_output_matrix_name = .test_analysis_1.Epipe1AxialCmat  &
   d_feedforward_matrix_name = .test_analysis_1.Epipe1AxialDmat  &
   static_hold = off
!
!---------------------------- Higher pair contacts ----------------------------!
!
!
constraint create higher_pair_contact point_curve  &
   point_curve_name = .test_analysis_1.PTCV_Hole_Bottom1  &
   adams_id = 9006303  &
   i_marker_name = .test_analysis_1.Hole_Bottom.A1  &
   j_floating_marker_name = .test_analysis_1.ground.FMARKER_3002291  &
   ref_marker_name = .test_analysis_1.ground.adrill_origin  &
   curve_name = .test_analysis_1.test_hole
!
constraint create higher_pair_contact point_curve  &
   point_curve_name = .test_analysis_1.PTCV_Hole_Bottom2  &
   adams_id = 9006304  &
   i_marker_name = .test_analysis_1.Hole_Bottom.A2  &
   j_floating_marker_name = .test_analysis_1.ground.FMARKER_3002292  &
   ref_marker_name = .test_analysis_1.ground.adrill_origin  &
   curve_name = .test_analysis_1.test_hole
!
constraint create higher_pair_contact point_curve  &
   point_curve_name = .test_analysis_1.PTCV_test_pdc_011  &
   adams_id = 9000001  &
   i_marker_name = .test_analysis_1.test_pdc_01_sliderA.A1  &
   j_floating_marker_name = .test_analysis_1.ground.FMARKER_9000101  &
   ref_marker_name = .test_analysis_1.ground.adrill_origin  &
   curve_name = .test_analysis_1.test_hole
!
constraint create higher_pair_contact point_curve  &
   point_curve_name = .test_analysis_1.PTCV_test_pdc_012  &
   adams_id = 9000002  &
   i_marker_name = .test_analysis_1.test_pdc_01_sliderA.A2  &
   j_floating_marker_name = .test_analysis_1.ground.FMARKER_9000102  &
   ref_marker_name = .test_analysis_1.ground.adrill_origin  &
   curve_name = .test_analysis_1.test_hole
!
constraint create higher_pair_contact point_curve  &
   point_curve_name = .test_analysis_1.PTCV_example_stabilizer_02_A1  &
   adams_id = 9000201  &
   i_marker_name = .test_analysis_1.example_stabilizer_02_sliderA.A1  &
   j_floating_marker_name = .test_analysis_1.ground.FMARKER_9000302  &
   ref_marker_name = .test_analysis_1.ground.adrill_origin  &
   curve_name = .test_analysis_1.test_hole
!
constraint create higher_pair_contact point_curve  &
   point_curve_name = .test_analysis_1.PTCV_example_stabilizer_02_A2  &
   adams_id = 9000202  &
   i_marker_name = .test_analysis_1.example_stabilizer_02_sliderA.A2  &
   j_floating_marker_name = .test_analysis_1.ground.FMARKER_9000303  &
   ref_marker_name = .test_analysis_1.ground.adrill_origin  &
   curve_name = .test_analysis_1.test_hole
!
constraint create higher_pair_contact point_curve  &
   point_curve_name = .test_analysis_1.PTCV_example_stabilizer_02_B1  &
   adams_id = 9000301  &
   i_marker_name = .test_analysis_1.example_stabilizer_02_sliderB.B1  &
   j_floating_marker_name = .test_analysis_1.ground.FMARKER_9000304  &
   ref_marker_name = .test_analysis_1.ground.adrill_origin  &
   curve_name = .test_analysis_1.test_hole
!
constraint create higher_pair_contact point_curve  &
   point_curve_name = .test_analysis_1.PTCV_example_stabilizer_02_B2  &
   adams_id = 9000302  &
   i_marker_name = .test_analysis_1.example_stabilizer_02_sliderB.B2  &
   j_floating_marker_name = .test_analysis_1.ground.FMARKER_9000305  &
   ref_marker_name = .test_analysis_1.ground.adrill_origin  &
   curve_name = .test_analysis_1.test_hole
!
constraint create higher_pair_contact point_curve  &
   point_curve_name = .test_analysis_1.PTCV_Upper_DP_Group1_A1  &
   adams_id = 9000401  &
   i_marker_name = .test_analysis_1.Upper_DP_Group1_sliderA.A1  &
   j_floating_marker_name = .test_analysis_1.ground.FMARKER_9000601  &
   ref_marker_name = .test_analysis_1.ground.adrill_origin  &
   curve_name = .test_analysis_1.test_hole
!
constraint create higher_pair_contact point_curve  &
   point_curve_name = .test_analysis_1.PTCV_Upper_DP_Group1_A2  &
   adams_id = 9000402  &
   i_marker_name = .test_analysis_1.Upper_DP_Group1_sliderA.A2  &
   j_floating_marker_name = .test_analysis_1.ground.FMARKER_9000602  &
   ref_marker_name = .test_analysis_1.ground.adrill_origin  &
   curve_name = .test_analysis_1.test_hole
!
constraint create higher_pair_contact point_curve  &
   point_curve_name = .test_analysis_1.PTCV_Upper_DP_Group1_B1  &
   adams_id = 9000501  &
   i_marker_name = .test_analysis_1.Upper_DP_Group1_sliderB.B1  &
   j_floating_marker_name = .test_analysis_1.ground.FMARKER_9000603  &
   ref_marker_name = .test_analysis_1.ground.adrill_origin  &
   curve_name = .test_analysis_1.test_hole
!
constraint create higher_pair_contact point_curve  &
   point_curve_name = .test_analysis_1.PTCV_Upper_DP_Group1_B2  &
   adams_id = 9000502  &
   i_marker_name = .test_analysis_1.Upper_DP_Group1_sliderB.B2  &
   j_floating_marker_name = .test_analysis_1.ground.FMARKER_9000604  &
   ref_marker_name = .test_analysis_1.ground.adrill_origin  &
   curve_name = .test_analysis_1.test_hole
!
constraint create higher_pair_contact point_curve  &
   point_curve_name = .test_analysis_1.PTCV_Upper_DP_Group2_A1  &
   adams_id = 9000701  &
   i_marker_name = .test_analysis_1.Upper_DP_Group2_sliderA.A1  &
   j_floating_marker_name = .test_analysis_1.ground.FMARKER_9000901  &
   ref_marker_name = .test_analysis_1.ground.adrill_origin  &
   curve_name = .test_analysis_1.test_hole
!
constraint create higher_pair_contact point_curve  &
   point_curve_name = .test_analysis_1.PTCV_Upper_DP_Group2_A2  &
   adams_id = 9000702  &
   i_marker_name = .test_analysis_1.Upper_DP_Group2_sliderA.A2  &
   j_floating_marker_name = .test_analysis_1.ground.FMARKER_9000902  &
   ref_marker_name = .test_analysis_1.ground.adrill_origin  &
   curve_name = .test_analysis_1.test_hole
!
constraint create higher_pair_contact point_curve  &
   point_curve_name = .test_analysis_1.PTCV_Upper_DP_Group2_B1  &
   adams_id = 9000801  &
   i_marker_name = .test_analysis_1.Upper_DP_Group2_sliderB.B1  &
   j_floating_marker_name = .test_analysis_1.ground.FMARKER_9000903  &
   ref_marker_name = .test_analysis_1.ground.adrill_origin  &
   curve_name = .test_analysis_1.test_hole
!
constraint create higher_pair_contact point_curve  &
   point_curve_name = .test_analysis_1.PTCV_Upper_DP_Group2_B2  &
   adams_id = 9000802  &
   i_marker_name = .test_analysis_1.Upper_DP_Group2_sliderB.B2  &
   j_floating_marker_name = .test_analysis_1.ground.FMARKER_9000904  &
   ref_marker_name = .test_analysis_1.ground.adrill_origin  &
   curve_name = .test_analysis_1.test_hole
!
constraint create higher_pair_contact point_curve  &
   point_curve_name = .test_analysis_1.PTCV_Upper_DP_Group3_A1  &
   adams_id = 9001001  &
   i_marker_name = .test_analysis_1.Upper_DP_Group3_sliderA.A1  &
   j_floating_marker_name = .test_analysis_1.ground.FMARKER_9001201  &
   ref_marker_name = .test_analysis_1.ground.adrill_origin  &
   curve_name = .test_analysis_1.test_hole
!
constraint create higher_pair_contact point_curve  &
   point_curve_name = .test_analysis_1.PTCV_Upper_DP_Group3_A2  &
   adams_id = 9001002  &
   i_marker_name = .test_analysis_1.Upper_DP_Group3_sliderA.A2  &
   j_floating_marker_name = .test_analysis_1.ground.FMARKER_9001202  &
   ref_marker_name = .test_analysis_1.ground.adrill_origin  &
   curve_name = .test_analysis_1.test_hole
!
constraint create higher_pair_contact point_curve  &
   point_curve_name = .test_analysis_1.PTCV_Upper_DP_Group3_B1  &
   adams_id = 9001101  &
   i_marker_name = .test_analysis_1.Upper_DP_Group3_sliderB.B1  &
   j_floating_marker_name = .test_analysis_1.ground.FMARKER_9001203  &
   ref_marker_name = .test_analysis_1.ground.adrill_origin  &
   curve_name = .test_analysis_1.test_hole
!
constraint create higher_pair_contact point_curve  &
   point_curve_name = .test_analysis_1.PTCV_Upper_DP_Group3_B2  &
   adams_id = 9001102  &
   i_marker_name = .test_analysis_1.Upper_DP_Group3_sliderB.B2  &
   j_floating_marker_name = .test_analysis_1.ground.FMARKER_9001204  &
   ref_marker_name = .test_analysis_1.ground.adrill_origin  &
   curve_name = .test_analysis_1.test_hole
!
constraint create higher_pair_contact point_curve  &
   point_curve_name = .test_analysis_1.PTCV_Upper_DP_Group4_A1  &
   adams_id = 9001301  &
   i_marker_name = .test_analysis_1.Upper_DP_Group4_sliderA.A1  &
   j_floating_marker_name = .test_analysis_1.ground.FMARKER_9001501  &
   ref_marker_name = .test_analysis_1.ground.adrill_origin  &
   curve_name = .test_analysis_1.test_hole
!
constraint create higher_pair_contact point_curve  &
   point_curve_name = .test_analysis_1.PTCV_Upper_DP_Group4_A2  &
   adams_id = 9001302  &
   i_marker_name = .test_analysis_1.Upper_DP_Group4_sliderA.A2  &
   j_floating_marker_name = .test_analysis_1.ground.FMARKER_9001502  &
   ref_marker_name = .test_analysis_1.ground.adrill_origin  &
   curve_name = .test_analysis_1.test_hole
!
constraint create higher_pair_contact point_curve  &
   point_curve_name = .test_analysis_1.PTCV_Upper_DP_Group4_B1  &
   adams_id = 9001401  &
   i_marker_name = .test_analysis_1.Upper_DP_Group4_sliderB.B1  &
   j_floating_marker_name = .test_analysis_1.ground.FMARKER_9001503  &
   ref_marker_name = .test_analysis_1.ground.adrill_origin  &
   curve_name = .test_analysis_1.test_hole
!
constraint create higher_pair_contact point_curve  &
   point_curve_name = .test_analysis_1.PTCV_Upper_DP_Group4_B2  &
   adams_id = 9001402  &
   i_marker_name = .test_analysis_1.Upper_DP_Group4_sliderB.B2  &
   j_floating_marker_name = .test_analysis_1.ground.FMARKER_9001504  &
   ref_marker_name = .test_analysis_1.ground.adrill_origin  &
   curve_name = .test_analysis_1.test_hole
!
constraint create higher_pair_contact point_curve  &
   point_curve_name = .test_analysis_1.PTCV_Upper_DP_Group5_A1  &
   adams_id = 9001601  &
   i_marker_name = .test_analysis_1.Upper_DP_Group5_sliderA.A1  &
   j_floating_marker_name = .test_analysis_1.ground.FMARKER_9001801  &
   ref_marker_name = .test_analysis_1.ground.adrill_origin  &
   curve_name = .test_analysis_1.test_hole
!
constraint create higher_pair_contact point_curve  &
   point_curve_name = .test_analysis_1.PTCV_Upper_DP_Group5_A2  &
   adams_id = 9001602  &
   i_marker_name = .test_analysis_1.Upper_DP_Group5_sliderA.A2  &
   j_floating_marker_name = .test_analysis_1.ground.FMARKER_9001802  &
   ref_marker_name = .test_analysis_1.ground.adrill_origin  &
   curve_name = .test_analysis_1.test_hole
!
constraint create higher_pair_contact point_curve  &
   point_curve_name = .test_analysis_1.PTCV_Upper_DP_Group5_B1  &
   adams_id = 9001701  &
   i_marker_name = .test_analysis_1.Upper_DP_Group5_sliderB.B1  &
   j_floating_marker_name = .test_analysis_1.ground.FMARKER_9001803  &
   ref_marker_name = .test_analysis_1.ground.adrill_origin  &
   curve_name = .test_analysis_1.test_hole
!
constraint create higher_pair_contact point_curve  &
   point_curve_name = .test_analysis_1.PTCV_Upper_DP_Group5_B2  &
   adams_id = 9001702  &
   i_marker_name = .test_analysis_1.Upper_DP_Group5_sliderB.B2  &
   j_floating_marker_name = .test_analysis_1.ground.FMARKER_9001804  &
   ref_marker_name = .test_analysis_1.ground.adrill_origin  &
   curve_name = .test_analysis_1.test_hole
!
constraint create higher_pair_contact point_curve  &
   point_curve_name = .test_analysis_1.PTCV_Upper_DP_Group6_A1  &
   adams_id = 9001901  &
   i_marker_name = .test_analysis_1.Upper_DP_Group6_sliderA.A1  &
   j_floating_marker_name = .test_analysis_1.ground.FMARKER_9002101  &
   ref_marker_name = .test_analysis_1.ground.adrill_origin  &
   curve_name = .test_analysis_1.test_hole
!
constraint create higher_pair_contact point_curve  &
   point_curve_name = .test_analysis_1.PTCV_Upper_DP_Group6_A2  &
   adams_id = 9001902  &
   i_marker_name = .test_analysis_1.Upper_DP_Group6_sliderA.A2  &
   j_floating_marker_name = .test_analysis_1.ground.FMARKER_9002102  &
   ref_marker_name = .test_analysis_1.ground.adrill_origin  &
   curve_name = .test_analysis_1.test_hole
!
constraint create higher_pair_contact point_curve  &
   point_curve_name = .test_analysis_1.PTCV_Upper_DP_Group6_B1  &
   adams_id = 9002001  &
   i_marker_name = .test_analysis_1.Upper_DP_Group6_sliderB.B1  &
   j_floating_marker_name = .test_analysis_1.ground.FMARKER_9002103  &
   ref_marker_name = .test_analysis_1.ground.adrill_origin  &
   curve_name = .test_analysis_1.test_hole
!
constraint create higher_pair_contact point_curve  &
   point_curve_name = .test_analysis_1.PTCV_Upper_DP_Group6_B2  &
   adams_id = 9002002  &
   i_marker_name = .test_analysis_1.Upper_DP_Group6_sliderB.B2  &
   j_floating_marker_name = .test_analysis_1.ground.FMARKER_9002104  &
   ref_marker_name = .test_analysis_1.ground.adrill_origin  &
   curve_name = .test_analysis_1.test_hole
!
constraint create higher_pair_contact point_curve  &
   point_curve_name = .test_analysis_1.PTCV_Upper_DP_Group7_A1  &
   adams_id = 9002201  &
   i_marker_name = .test_analysis_1.Upper_DP_Group7_sliderA.A1  &
   j_floating_marker_name = .test_analysis_1.ground.FMARKER_9002401  &
   ref_marker_name = .test_analysis_1.ground.adrill_origin  &
   curve_name = .test_analysis_1.test_hole
!
constraint create higher_pair_contact point_curve  &
   point_curve_name = .test_analysis_1.PTCV_Upper_DP_Group7_A2  &
   adams_id = 9002202  &
   i_marker_name = .test_analysis_1.Upper_DP_Group7_sliderA.A2  &
   j_floating_marker_name = .test_analysis_1.ground.FMARKER_9002402  &
   ref_marker_name = .test_analysis_1.ground.adrill_origin  &
   curve_name = .test_analysis_1.test_hole
!
constraint create higher_pair_contact point_curve  &
   point_curve_name = .test_analysis_1.PTCV_Upper_DP_Group7_B1  &
   adams_id = 9002301  &
   i_marker_name = .test_analysis_1.Upper_DP_Group7_sliderB.B1  &
   j_floating_marker_name = .test_analysis_1.ground.FMARKER_9002403  &
   ref_marker_name = .test_analysis_1.ground.adrill_origin  &
   curve_name = .test_analysis_1.test_hole
!
constraint create higher_pair_contact point_curve  &
   point_curve_name = .test_analysis_1.PTCV_Upper_DP_Group7_B2  &
   adams_id = 9002302  &
   i_marker_name = .test_analysis_1.Upper_DP_Group7_sliderB.B2  &
   j_floating_marker_name = .test_analysis_1.ground.FMARKER_9002404  &
   ref_marker_name = .test_analysis_1.ground.adrill_origin  &
   curve_name = .test_analysis_1.test_hole
!
constraint create higher_pair_contact point_curve  &
   point_curve_name = .test_analysis_1.PTCV_Upper_DP_Group8_A1  &
   adams_id = 9002501  &
   i_marker_name = .test_analysis_1.Upper_DP_Group8_sliderA.A1  &
   j_floating_marker_name = .test_analysis_1.ground.FMARKER_9002701  &
   ref_marker_name = .test_analysis_1.ground.adrill_origin  &
   curve_name = .test_analysis_1.test_hole
!
constraint create higher_pair_contact point_curve  &
   point_curve_name = .test_analysis_1.PTCV_Upper_DP_Group8_A2  &
   adams_id = 9002502  &
   i_marker_name = .test_analysis_1.Upper_DP_Group8_sliderA.A2  &
   j_floating_marker_name = .test_analysis_1.ground.FMARKER_9002702  &
   ref_marker_name = .test_analysis_1.ground.adrill_origin  &
   curve_name = .test_analysis_1.test_hole
!
constraint create higher_pair_contact point_curve  &
   point_curve_name = .test_analysis_1.PTCV_Upper_DP_Group8_B1  &
   adams_id = 9002601  &
   i_marker_name = .test_analysis_1.Upper_DP_Group8_sliderB.B1  &
   j_floating_marker_name = .test_analysis_1.ground.FMARKER_9002703  &
   ref_marker_name = .test_analysis_1.ground.adrill_origin  &
   curve_name = .test_analysis_1.test_hole
!
constraint create higher_pair_contact point_curve  &
   point_curve_name = .test_analysis_1.PTCV_Upper_DP_Group8_B2  &
   adams_id = 9002602  &
   i_marker_name = .test_analysis_1.Upper_DP_Group8_sliderB.B2  &
   j_floating_marker_name = .test_analysis_1.ground.FMARKER_9002704  &
   ref_marker_name = .test_analysis_1.ground.adrill_origin  &
   curve_name = .test_analysis_1.test_hole
!
constraint create higher_pair_contact point_curve  &
   point_curve_name = .test_analysis_1.PTCV_Upper_DP_Group9_A1  &
   adams_id = 9002801  &
   i_marker_name = .test_analysis_1.Upper_DP_Group9_sliderA.A1  &
   j_floating_marker_name = .test_analysis_1.ground.FMARKER_9003001  &
   ref_marker_name = .test_analysis_1.ground.adrill_origin  &
   curve_name = .test_analysis_1.test_hole
!
constraint create higher_pair_contact point_curve  &
   point_curve_name = .test_analysis_1.PTCV_Upper_DP_Group9_A2  &
   adams_id = 9002802  &
   i_marker_name = .test_analysis_1.Upper_DP_Group9_sliderA.A2  &
   j_floating_marker_name = .test_analysis_1.ground.FMARKER_9003002  &
   ref_marker_name = .test_analysis_1.ground.adrill_origin  &
   curve_name = .test_analysis_1.test_hole
!
constraint create higher_pair_contact point_curve  &
   point_curve_name = .test_analysis_1.PTCV_Upper_DP_Group9_B1  &
   adams_id = 9002901  &
   i_marker_name = .test_analysis_1.Upper_DP_Group9_sliderB.B1  &
   j_floating_marker_name = .test_analysis_1.ground.FMARKER_9003003  &
   ref_marker_name = .test_analysis_1.ground.adrill_origin  &
   curve_name = .test_analysis_1.test_hole
!
constraint create higher_pair_contact point_curve  &
   point_curve_name = .test_analysis_1.PTCV_Upper_DP_Group9_B2  &
   adams_id = 9002902  &
   i_marker_name = .test_analysis_1.Upper_DP_Group9_sliderB.B2  &
   j_floating_marker_name = .test_analysis_1.ground.FMARKER_9003004  &
   ref_marker_name = .test_analysis_1.ground.adrill_origin  &
   curve_name = .test_analysis_1.test_hole
!
constraint create higher_pair_contact point_curve  &
   point_curve_name = .test_analysis_1.PTCV_Upper_DP_Group10_A1  &
   adams_id = 9003101  &
   i_marker_name = .test_analysis_1.Upper_DP_Group10_sliderA.A1  &
   j_floating_marker_name = .test_analysis_1.ground.FMARKER_9003301  &
   ref_marker_name = .test_analysis_1.ground.adrill_origin  &
   curve_name = .test_analysis_1.test_hole
!
constraint create higher_pair_contact point_curve  &
   point_curve_name = .test_analysis_1.PTCV_Upper_DP_Group10_A2  &
   adams_id = 9003102  &
   i_marker_name = .test_analysis_1.Upper_DP_Group10_sliderA.A2  &
   j_floating_marker_name = .test_analysis_1.ground.FMARKER_9003302  &
   ref_marker_name = .test_analysis_1.ground.adrill_origin  &
   curve_name = .test_analysis_1.test_hole
!
constraint create higher_pair_contact point_curve  &
   point_curve_name = .test_analysis_1.PTCV_Upper_DP_Group10_B1  &
   adams_id = 9003201  &
   i_marker_name = .test_analysis_1.Upper_DP_Group10_sliderB.B1  &
   j_floating_marker_name = .test_analysis_1.ground.FMARKER_9003303  &
   ref_marker_name = .test_analysis_1.ground.adrill_origin  &
   curve_name = .test_analysis_1.test_hole
!
constraint create higher_pair_contact point_curve  &
   point_curve_name = .test_analysis_1.PTCV_Upper_DP_Group10_B2  &
   adams_id = 9003202  &
   i_marker_name = .test_analysis_1.Upper_DP_Group10_sliderB.B2  &
   j_floating_marker_name = .test_analysis_1.ground.FMARKER_9003304  &
   ref_marker_name = .test_analysis_1.ground.adrill_origin  &
   curve_name = .test_analysis_1.test_hole
!
constraint create higher_pair_contact point_curve  &
   point_curve_name = .test_analysis_1.PTCV_Upper_DP_Group11_A1  &
   adams_id = 9003401  &
   i_marker_name = .test_analysis_1.Upper_DP_Group11_sliderA.A1  &
   j_floating_marker_name = .test_analysis_1.ground.FMARKER_9003601  &
   ref_marker_name = .test_analysis_1.ground.adrill_origin  &
   curve_name = .test_analysis_1.test_hole
!
constraint create higher_pair_contact point_curve  &
   point_curve_name = .test_analysis_1.PTCV_Upper_DP_Group11_A2  &
   adams_id = 9003402  &
   i_marker_name = .test_analysis_1.Upper_DP_Group11_sliderA.A2  &
   j_floating_marker_name = .test_analysis_1.ground.FMARKER_9003602  &
   ref_marker_name = .test_analysis_1.ground.adrill_origin  &
   curve_name = .test_analysis_1.test_hole
!
constraint create higher_pair_contact point_curve  &
   point_curve_name = .test_analysis_1.PTCV_Upper_DP_Group11_B1  &
   adams_id = 9003501  &
   i_marker_name = .test_analysis_1.Upper_DP_Group11_sliderB.B1  &
   j_floating_marker_name = .test_analysis_1.ground.FMARKER_9003603  &
   ref_marker_name = .test_analysis_1.ground.adrill_origin  &
   curve_name = .test_analysis_1.test_hole
!
constraint create higher_pair_contact point_curve  &
   point_curve_name = .test_analysis_1.PTCV_Upper_DP_Group11_B2  &
   adams_id = 9003502  &
   i_marker_name = .test_analysis_1.Upper_DP_Group11_sliderB.B2  &
   j_floating_marker_name = .test_analysis_1.ground.FMARKER_9003604  &
   ref_marker_name = .test_analysis_1.ground.adrill_origin  &
   curve_name = .test_analysis_1.test_hole
!
constraint create higher_pair_contact point_curve  &
   point_curve_name = .test_analysis_1.PTCV_Upper_DP_Group12_A1  &
   adams_id = 9003701  &
   i_marker_name = .test_analysis_1.Upper_DP_Group12_sliderA.A1  &
   j_floating_marker_name = .test_analysis_1.ground.FMARKER_9003901  &
   ref_marker_name = .test_analysis_1.ground.adrill_origin  &
   curve_name = .test_analysis_1.test_hole
!
constraint create higher_pair_contact point_curve  &
   point_curve_name = .test_analysis_1.PTCV_Upper_DP_Group12_A2  &
   adams_id = 9003702  &
   i_marker_name = .test_analysis_1.Upper_DP_Group12_sliderA.A2  &
   j_floating_marker_name = .test_analysis_1.ground.FMARKER_9003902  &
   ref_marker_name = .test_analysis_1.ground.adrill_origin  &
   curve_name = .test_analysis_1.test_hole
!
constraint create higher_pair_contact point_curve  &
   point_curve_name = .test_analysis_1.PTCV_Upper_DP_Group12_B1  &
   adams_id = 9003801  &
   i_marker_name = .test_analysis_1.Upper_DP_Group12_sliderB.B1  &
   j_floating_marker_name = .test_analysis_1.ground.FMARKER_9003903  &
   ref_marker_name = .test_analysis_1.ground.adrill_origin  &
   curve_name = .test_analysis_1.test_hole
!
constraint create higher_pair_contact point_curve  &
   point_curve_name = .test_analysis_1.PTCV_Upper_DP_Group12_B2  &
   adams_id = 9003802  &
   i_marker_name = .test_analysis_1.Upper_DP_Group12_sliderB.B2  &
   j_floating_marker_name = .test_analysis_1.ground.FMARKER_9003904  &
   ref_marker_name = .test_analysis_1.ground.adrill_origin  &
   curve_name = .test_analysis_1.test_hole
!
constraint create higher_pair_contact point_curve  &
   point_curve_name = .test_analysis_1.PTCV_Upper_DP_Group13_A1  &
   adams_id = 9004001  &
   i_marker_name = .test_analysis_1.Upper_DP_Group13_sliderA.A1  &
   j_floating_marker_name = .test_analysis_1.ground.FMARKER_9004201  &
   ref_marker_name = .test_analysis_1.ground.adrill_origin  &
   curve_name = .test_analysis_1.test_hole
!
constraint create higher_pair_contact point_curve  &
   point_curve_name = .test_analysis_1.PTCV_Upper_DP_Group13_A2  &
   adams_id = 9004002  &
   i_marker_name = .test_analysis_1.Upper_DP_Group13_sliderA.A2  &
   j_floating_marker_name = .test_analysis_1.ground.FMARKER_9004202  &
   ref_marker_name = .test_analysis_1.ground.adrill_origin  &
   curve_name = .test_analysis_1.test_hole
!
constraint create higher_pair_contact point_curve  &
   point_curve_name = .test_analysis_1.PTCV_Upper_DP_Group13_B1  &
   adams_id = 9004101  &
   i_marker_name = .test_analysis_1.Upper_DP_Group13_sliderB.B1  &
   j_floating_marker_name = .test_analysis_1.ground.FMARKER_9004203  &
   ref_marker_name = .test_analysis_1.ground.adrill_origin  &
   curve_name = .test_analysis_1.test_hole
!
constraint create higher_pair_contact point_curve  &
   point_curve_name = .test_analysis_1.PTCV_Upper_DP_Group13_B2  &
   adams_id = 9004102  &
   i_marker_name = .test_analysis_1.Upper_DP_Group13_sliderB.B2  &
   j_floating_marker_name = .test_analysis_1.ground.FMARKER_9004204  &
   ref_marker_name = .test_analysis_1.ground.adrill_origin  &
   curve_name = .test_analysis_1.test_hole
!
constraint create higher_pair_contact point_curve  &
   point_curve_name = .test_analysis_1.PTCV_Upper_DP_Group14_A1  &
   adams_id = 9004301  &
   i_marker_name = .test_analysis_1.Upper_DP_Group14_sliderA.A1  &
   j_floating_marker_name = .test_analysis_1.ground.FMARKER_9004501  &
   ref_marker_name = .test_analysis_1.ground.adrill_origin  &
   curve_name = .test_analysis_1.test_hole
!
constraint create higher_pair_contact point_curve  &
   point_curve_name = .test_analysis_1.PTCV_Upper_DP_Group14_A2  &
   adams_id = 9004302  &
   i_marker_name = .test_analysis_1.Upper_DP_Group14_sliderA.A2  &
   j_floating_marker_name = .test_analysis_1.ground.FMARKER_9004502  &
   ref_marker_name = .test_analysis_1.ground.adrill_origin  &
   curve_name = .test_analysis_1.test_hole
!
constraint create higher_pair_contact point_curve  &
   point_curve_name = .test_analysis_1.PTCV_Upper_DP_Group14_B1  &
   adams_id = 9004401  &
   i_marker_name = .test_analysis_1.Upper_DP_Group14_sliderB.B1  &
   j_floating_marker_name = .test_analysis_1.ground.FMARKER_9004503  &
   ref_marker_name = .test_analysis_1.ground.adrill_origin  &
   curve_name = .test_analysis_1.test_hole
!
constraint create higher_pair_contact point_curve  &
   point_curve_name = .test_analysis_1.PTCV_Upper_DP_Group14_B2  &
   adams_id = 9004402  &
   i_marker_name = .test_analysis_1.Upper_DP_Group14_sliderB.B2  &
   j_floating_marker_name = .test_analysis_1.ground.FMARKER_9004504  &
   ref_marker_name = .test_analysis_1.ground.adrill_origin  &
   curve_name = .test_analysis_1.test_hole
!
constraint create higher_pair_contact point_curve  &
   point_curve_name = .test_analysis_1.PTCV_Upper_DP_Group15_A1  &
   adams_id = 9004601  &
   i_marker_name = .test_analysis_1.Upper_DP_Group15_sliderA.A1  &
   j_floating_marker_name = .test_analysis_1.ground.FMARKER_9004801  &
   ref_marker_name = .test_analysis_1.ground.adrill_origin  &
   curve_name = .test_analysis_1.test_hole
!
constraint create higher_pair_contact point_curve  &
   point_curve_name = .test_analysis_1.PTCV_Upper_DP_Group15_A2  &
   adams_id = 9004602  &
   i_marker_name = .test_analysis_1.Upper_DP_Group15_sliderA.A2  &
   j_floating_marker_name = .test_analysis_1.ground.FMARKER_9004802  &
   ref_marker_name = .test_analysis_1.ground.adrill_origin  &
   curve_name = .test_analysis_1.test_hole
!
constraint create higher_pair_contact point_curve  &
   point_curve_name = .test_analysis_1.PTCV_Upper_DP_Group15_B1  &
   adams_id = 9004701  &
   i_marker_name = .test_analysis_1.Upper_DP_Group15_sliderB.B1  &
   j_floating_marker_name = .test_analysis_1.ground.FMARKER_9004803  &
   ref_marker_name = .test_analysis_1.ground.adrill_origin  &
   curve_name = .test_analysis_1.test_hole
!
constraint create higher_pair_contact point_curve  &
   point_curve_name = .test_analysis_1.PTCV_Upper_DP_Group15_B2  &
   adams_id = 9004702  &
   i_marker_name = .test_analysis_1.Upper_DP_Group15_sliderB.B2  &
   j_floating_marker_name = .test_analysis_1.ground.FMARKER_9004804  &
   ref_marker_name = .test_analysis_1.ground.adrill_origin  &
   curve_name = .test_analysis_1.test_hole
!
constraint create higher_pair_contact point_curve  &
   point_curve_name = .test_analysis_1.PTCV_Upper_DP_Group16_A1  &
   adams_id = 9004901  &
   i_marker_name = .test_analysis_1.Upper_DP_Group16_sliderA.A1  &
   j_floating_marker_name = .test_analysis_1.ground.FMARKER_9005101  &
   ref_marker_name = .test_analysis_1.ground.adrill_origin  &
   curve_name = .test_analysis_1.test_hole
!
constraint create higher_pair_contact point_curve  &
   point_curve_name = .test_analysis_1.PTCV_Upper_DP_Group16_A2  &
   adams_id = 9004902  &
   i_marker_name = .test_analysis_1.Upper_DP_Group16_sliderA.A2  &
   j_floating_marker_name = .test_analysis_1.ground.FMARKER_9005102  &
   ref_marker_name = .test_analysis_1.ground.adrill_origin  &
   curve_name = .test_analysis_1.test_hole
!
constraint create higher_pair_contact point_curve  &
   point_curve_name = .test_analysis_1.PTCV_Upper_DP_Group16_B1  &
   adams_id = 9005001  &
   i_marker_name = .test_analysis_1.Upper_DP_Group16_sliderB.B1  &
   j_floating_marker_name = .test_analysis_1.ground.FMARKER_9005103  &
   ref_marker_name = .test_analysis_1.ground.adrill_origin  &
   curve_name = .test_analysis_1.test_hole
!
constraint create higher_pair_contact point_curve  &
   point_curve_name = .test_analysis_1.PTCV_Upper_DP_Group16_B2  &
   adams_id = 9005002  &
   i_marker_name = .test_analysis_1.Upper_DP_Group16_sliderB.B2  &
   j_floating_marker_name = .test_analysis_1.ground.FMARKER_9005104  &
   ref_marker_name = .test_analysis_1.ground.adrill_origin  &
   curve_name = .test_analysis_1.test_hole
!
constraint create higher_pair_contact point_curve  &
   point_curve_name = .test_analysis_1.PTCV_Upper_DP_Group17_A1  &
   adams_id = 9005201  &
   i_marker_name = .test_analysis_1.Upper_DP_Group17_sliderA.A1  &
   j_floating_marker_name = .test_analysis_1.ground.FMARKER_9005401  &
   ref_marker_name = .test_analysis_1.ground.adrill_origin  &
   curve_name = .test_analysis_1.test_hole
!
constraint create higher_pair_contact point_curve  &
   point_curve_name = .test_analysis_1.PTCV_Upper_DP_Group17_A2  &
   adams_id = 9005202  &
   i_marker_name = .test_analysis_1.Upper_DP_Group17_sliderA.A2  &
   j_floating_marker_name = .test_analysis_1.ground.FMARKER_9005402  &
   ref_marker_name = .test_analysis_1.ground.adrill_origin  &
   curve_name = .test_analysis_1.test_hole
!
constraint create higher_pair_contact point_curve  &
   point_curve_name = .test_analysis_1.PTCV_Upper_DP_Group17_B1  &
   adams_id = 9005301  &
   i_marker_name = .test_analysis_1.Upper_DP_Group17_sliderB.B1  &
   j_floating_marker_name = .test_analysis_1.ground.FMARKER_9005403  &
   ref_marker_name = .test_analysis_1.ground.adrill_origin  &
   curve_name = .test_analysis_1.test_hole
!
constraint create higher_pair_contact point_curve  &
   point_curve_name = .test_analysis_1.PTCV_Upper_DP_Group17_B2  &
   adams_id = 9005302  &
   i_marker_name = .test_analysis_1.Upper_DP_Group17_sliderB.B2  &
   j_floating_marker_name = .test_analysis_1.ground.FMARKER_9005404  &
   ref_marker_name = .test_analysis_1.ground.adrill_origin  &
   curve_name = .test_analysis_1.test_hole
!
constraint create higher_pair_contact point_curve  &
   point_curve_name = .test_analysis_1.PTCV_Upper_DP_Group18_A1  &
   adams_id = 9005501  &
   i_marker_name = .test_analysis_1.Upper_DP_Group18_sliderA.A1  &
   j_floating_marker_name = .test_analysis_1.ground.FMARKER_9005701  &
   ref_marker_name = .test_analysis_1.ground.adrill_origin  &
   curve_name = .test_analysis_1.test_hole
!
constraint create higher_pair_contact point_curve  &
   point_curve_name = .test_analysis_1.PTCV_Upper_DP_Group18_A2  &
   adams_id = 9005502  &
   i_marker_name = .test_analysis_1.Upper_DP_Group18_sliderA.A2  &
   j_floating_marker_name = .test_analysis_1.ground.FMARKER_9005702  &
   ref_marker_name = .test_analysis_1.ground.adrill_origin  &
   curve_name = .test_analysis_1.test_hole
!
constraint create higher_pair_contact point_curve  &
   point_curve_name = .test_analysis_1.PTCV_Upper_DP_Group18_B1  &
   adams_id = 9005601  &
   i_marker_name = .test_analysis_1.Upper_DP_Group18_sliderB.B1  &
   j_floating_marker_name = .test_analysis_1.ground.FMARKER_9005703  &
   ref_marker_name = .test_analysis_1.ground.adrill_origin  &
   curve_name = .test_analysis_1.test_hole
!
constraint create higher_pair_contact point_curve  &
   point_curve_name = .test_analysis_1.PTCV_Upper_DP_Group18_B2  &
   adams_id = 9005602  &
   i_marker_name = .test_analysis_1.Upper_DP_Group18_sliderB.B2  &
   j_floating_marker_name = .test_analysis_1.ground.FMARKER_9005704  &
   ref_marker_name = .test_analysis_1.ground.adrill_origin  &
   curve_name = .test_analysis_1.test_hole
!
constraint create higher_pair_contact point_curve  &
   point_curve_name = .test_analysis_1.PTCV_Upper_DP_Group19_A1  &
   adams_id = 9005801  &
   i_marker_name = .test_analysis_1.Upper_DP_Group19_sliderA.A1  &
   j_floating_marker_name = .test_analysis_1.ground.FMARKER_9006001  &
   ref_marker_name = .test_analysis_1.ground.adrill_origin  &
   curve_name = .test_analysis_1.test_hole
!
constraint create higher_pair_contact point_curve  &
   point_curve_name = .test_analysis_1.PTCV_Upper_DP_Group19_A2  &
   adams_id = 9005802  &
   i_marker_name = .test_analysis_1.Upper_DP_Group19_sliderA.A2  &
   j_floating_marker_name = .test_analysis_1.ground.FMARKER_9006002  &
   ref_marker_name = .test_analysis_1.ground.adrill_origin  &
   curve_name = .test_analysis_1.test_hole
!
constraint create higher_pair_contact point_curve  &
   point_curve_name = .test_analysis_1.PTCV_Upper_DP_Group19_B1  &
   adams_id = 9005901  &
   i_marker_name = .test_analysis_1.Upper_DP_Group19_sliderB.B1  &
   j_floating_marker_name = .test_analysis_1.ground.FMARKER_9006003  &
   ref_marker_name = .test_analysis_1.ground.adrill_origin  &
   curve_name = .test_analysis_1.test_hole
!
constraint create higher_pair_contact point_curve  &
   point_curve_name = .test_analysis_1.PTCV_Upper_DP_Group19_B2  &
   adams_id = 9005902  &
   i_marker_name = .test_analysis_1.Upper_DP_Group19_sliderB.B2  &
   j_floating_marker_name = .test_analysis_1.ground.FMARKER_9006004  &
   ref_marker_name = .test_analysis_1.ground.adrill_origin  &
   curve_name = .test_analysis_1.test_hole
!
constraint create higher_pair_contact point_curve  &
   point_curve_name = .test_analysis_1.PTCV_Upper_DP_Group20_A1  &
   adams_id = 9006101  &
   i_marker_name = .test_analysis_1.Upper_DP_Group20_sliderA.A1  &
   j_floating_marker_name = .test_analysis_1.ground.FMARKER_9006302  &
   ref_marker_name = .test_analysis_1.ground.adrill_origin  &
   curve_name = .test_analysis_1.test_hole
!
constraint create higher_pair_contact point_curve  &
   point_curve_name = .test_analysis_1.PTCV_Upper_DP_Group20_A2  &
   adams_id = 9006102  &
   i_marker_name = .test_analysis_1.Upper_DP_Group20_sliderA.A2  &
   j_floating_marker_name = .test_analysis_1.ground.FMARKER_9006303  &
   ref_marker_name = .test_analysis_1.ground.adrill_origin  &
   curve_name = .test_analysis_1.test_hole
!
constraint create higher_pair_contact point_curve  &
   point_curve_name = .test_analysis_1.PTCV_Upper_DP_Group20_B1  &
   adams_id = 9006201  &
   i_marker_name = .test_analysis_1.Upper_DP_Group20_sliderB.B1  &
   j_floating_marker_name = .test_analysis_1.ground.FMARKER_9006304  &
   ref_marker_name = .test_analysis_1.ground.adrill_origin  &
   curve_name = .test_analysis_1.test_hole
!
constraint create higher_pair_contact point_curve  &
   point_curve_name = .test_analysis_1.PTCV_Upper_DP_Group20_B2  &
   adams_id = 9006202  &
   i_marker_name = .test_analysis_1.Upper_DP_Group20_sliderB.B2  &
   j_floating_marker_name = .test_analysis_1.ground.FMARKER_9006305  &
   ref_marker_name = .test_analysis_1.ground.adrill_origin  &
   curve_name = .test_analysis_1.test_hole
!
constraint create higher_pair_contact point_curve  &
   point_curve_name = .test_analysis_1.PTCV_Upper_DP_Group20_C1  &
   adams_id = 9006301  &
   i_marker_name = .test_analysis_1.Upper_DP_Group20_sliderC.C1  &
   j_floating_marker_name = .test_analysis_1.ground.FMARKER_9006306  &
   ref_marker_name = .test_analysis_1.ground.adrill_origin  &
   curve_name = .test_analysis_1.test_hole
!
constraint create higher_pair_contact point_curve  &
   point_curve_name = .test_analysis_1.PTCV_Upper_DP_Group20_C2  &
   adams_id = 9006302  &
   i_marker_name = .test_analysis_1.Upper_DP_Group20_sliderC.C2  &
   j_floating_marker_name = .test_analysis_1.ground.FMARKER_9006307  &
   ref_marker_name = .test_analysis_1.ground.adrill_origin  &
   curve_name = .test_analysis_1.test_hole
!
!----------------------------------- Joints -----------------------------------!
!
!
constraint create joint fixed  &
   joint_name = .test_analysis_1.connector_2to1  &
   adams_id = 9000202  &
   i_marker_name = .test_analysis_1.test_pdc_01.end_B  &
   j_marker_name = .test_analysis_1.example_stabilizer_02_B.end_B1
!
constraint create joint fixed  &
   joint_name = .test_analysis_1.connector_3to2  &
   adams_id = 9000400  &
   i_marker_name = .test_analysis_1.example_stabilizer_02_B.end_B2  &
   j_marker_name = .test_analysis_1.Upper_DP_Group1_A.end_A
!
constraint create joint fixed  &
   joint_name = .test_analysis_1.internal3_2to1  &
   adams_id = 9000700  &
   i_marker_name = .test_analysis_1.Upper_DP_Group1_C.end_C  &
   j_marker_name = .test_analysis_1.Upper_DP_Group2_A.end_A
!
constraint create joint fixed  &
   joint_name = .test_analysis_1.internal3_3to2  &
   adams_id = 9001000  &
   i_marker_name = .test_analysis_1.Upper_DP_Group2_C.end_C  &
   j_marker_name = .test_analysis_1.Upper_DP_Group3_A.end_A
!
constraint create joint fixed  &
   joint_name = .test_analysis_1.internal3_4to3  &
   adams_id = 9001300  &
   i_marker_name = .test_analysis_1.Upper_DP_Group3_C.end_C  &
   j_marker_name = .test_analysis_1.Upper_DP_Group4_A.end_A
!
constraint create joint fixed  &
   joint_name = .test_analysis_1.internal3_5to4  &
   adams_id = 9001600  &
   i_marker_name = .test_analysis_1.Upper_DP_Group4_C.end_C  &
   j_marker_name = .test_analysis_1.Upper_DP_Group5_A.end_A
!
constraint create joint fixed  &
   joint_name = .test_analysis_1.internal3_6to5  &
   adams_id = 9001900  &
   i_marker_name = .test_analysis_1.Upper_DP_Group5_C.end_C  &
   j_marker_name = .test_analysis_1.Upper_DP_Group6_A.end_A
!
constraint create joint fixed  &
   joint_name = .test_analysis_1.internal3_7to6  &
   adams_id = 9002200  &
   i_marker_name = .test_analysis_1.Upper_DP_Group6_C.end_C  &
   j_marker_name = .test_analysis_1.Upper_DP_Group7_A.end_A
!
constraint create joint fixed  &
   joint_name = .test_analysis_1.internal3_8to7  &
   adams_id = 9002500  &
   i_marker_name = .test_analysis_1.Upper_DP_Group7_C.end_C  &
   j_marker_name = .test_analysis_1.Upper_DP_Group8_A.end_A
!
constraint create joint fixed  &
   joint_name = .test_analysis_1.internal3_9to8  &
   adams_id = 9002800  &
   i_marker_name = .test_analysis_1.Upper_DP_Group8_C.end_C  &
   j_marker_name = .test_analysis_1.Upper_DP_Group9_A.end_A
!
constraint create joint fixed  &
   joint_name = .test_analysis_1.internal3_10to9  &
   adams_id = 9003100  &
   i_marker_name = .test_analysis_1.Upper_DP_Group9_C.end_C  &
   j_marker_name = .test_analysis_1.Upper_DP_Group10_A.end_A
!
constraint create joint fixed  &
   joint_name = .test_analysis_1.internal3_11to10  &
   adams_id = 9003400  &
   i_marker_name = .test_analysis_1.Upper_DP_Group10_C.end_C  &
   j_marker_name = .test_analysis_1.Upper_DP_Group11_A.end_A
!
constraint create joint fixed  &
   joint_name = .test_analysis_1.internal3_12to11  &
   adams_id = 9003700  &
   i_marker_name = .test_analysis_1.Upper_DP_Group11_C.end_C  &
   j_marker_name = .test_analysis_1.Upper_DP_Group12_A.end_A
!
constraint create joint fixed  &
   joint_name = .test_analysis_1.internal3_13to12  &
   adams_id = 9004000  &
   i_marker_name = .test_analysis_1.Upper_DP_Group12_C.end_C  &
   j_marker_name = .test_analysis_1.Upper_DP_Group13_A.end_A
!
constraint create joint fixed  &
   joint_name = .test_analysis_1.internal3_14to13  &
   adams_id = 9004300  &
   i_marker_name = .test_analysis_1.Upper_DP_Group13_C.end_C  &
   j_marker_name = .test_analysis_1.Upper_DP_Group14_A.end_A
!
constraint create joint fixed  &
   joint_name = .test_analysis_1.internal3_15to14  &
   adams_id = 9004600  &
   i_marker_name = .test_analysis_1.Upper_DP_Group14_C.end_C  &
   j_marker_name = .test_analysis_1.Upper_DP_Group15_A.end_A
!
constraint create joint fixed  &
   joint_name = .test_analysis_1.internal3_16to15  &
   adams_id = 9004900  &
   i_marker_name = .test_analysis_1.Upper_DP_Group15_C.end_C  &
   j_marker_name = .test_analysis_1.Upper_DP_Group16_A.end_A
!
constraint create joint fixed  &
   joint_name = .test_analysis_1.internal3_17to16  &
   adams_id = 9005200  &
   i_marker_name = .test_analysis_1.Upper_DP_Group16_C.end_C  &
   j_marker_name = .test_analysis_1.Upper_DP_Group17_A.end_A
!
constraint create joint fixed  &
   joint_name = .test_analysis_1.internal3_18to17  &
   adams_id = 9005500  &
   i_marker_name = .test_analysis_1.Upper_DP_Group17_C.end_C  &
   j_marker_name = .test_analysis_1.Upper_DP_Group18_A.end_A
!
constraint create joint fixed  &
   joint_name = .test_analysis_1.internal3_19to18  &
   adams_id = 9005800  &
   i_marker_name = .test_analysis_1.Upper_DP_Group18_C.end_C  &
   j_marker_name = .test_analysis_1.Upper_DP_Group19_A.end_A
!
constraint create joint fixed  &
   joint_name = .test_analysis_1.internal3_20to19  &
   adams_id = 9006100  &
   i_marker_name = .test_analysis_1.Upper_DP_Group19_C.end_C  &
   j_marker_name = .test_analysis_1.Upper_DP_Group20_A.end_A
!
!----------------------------------- Forces -----------------------------------!
!
!
force create element_like beam  &
   beam_name = .test_analysis_1.BeamAB_Upper_DP_Group1  &
   adams_id = 1  &
   i_marker_name = .test_analysis_1.Upper_DP_Group1_A.end_beamA  &
   j_marker_name = .test_analysis_1.Upper_DP_Group1_B.end_beamB  &
   length = 14.4993201893  &
   area_of_cross_section = 4.9126655121E-02  &
   y_shear_area_ratio = 0.0  &
   z_shear_area_ratio = 0.0  &
   youngs_modulus = 4.32E+09  &
   shear_modulus = 1.6632E+09  &
   ixx = 1.7484654314E-03  &
   iyy = 8.7423271571E-04  &
   izz = 8.7423271571E-04  &
   damping_ratio = 1.0E-02  &
   formulation = string
!
force attributes  &
   force_name = .test_analysis_1.BeamAB_Upper_DP_Group1  &
   color = RED
!
force create element_like beam  &
   beam_name = .test_analysis_1.BeamBC_Upper_DP_Group1  &
   adams_id = 2  &
   i_marker_name = .test_analysis_1.Upper_DP_Group1_B.end_beamB  &
   j_marker_name = .test_analysis_1.Upper_DP_Group1_C.end_beamC  &
   length = 14.4985362186  &
   area_of_cross_section = 4.9126655121E-02  &
   y_shear_area_ratio = 0.0  &
   z_shear_area_ratio = 0.0  &
   youngs_modulus = 4.32E+09  &
   shear_modulus = 1.6632E+09  &
   ixx = 1.7484654314E-03  &
   iyy = 8.7423271571E-04  &
   izz = 8.7423271571E-04  &
   damping_ratio = 1.0E-02  &
   formulation = string
!
force attributes  &
   force_name = .test_analysis_1.BeamBC_Upper_DP_Group1  &
   color = RED
!
force create element_like beam  &
   beam_name = .test_analysis_1.BeamAB_Upper_DP_Group2  &
   adams_id = 3  &
   i_marker_name = .test_analysis_1.Upper_DP_Group2_A.end_beamA  &
   j_marker_name = .test_analysis_1.Upper_DP_Group2_B.end_beamB  &
   length = 14.499250677  &
   area_of_cross_section = 4.9126655121E-02  &
   y_shear_area_ratio = 0.0  &
   z_shear_area_ratio = 0.0  &
   youngs_modulus = 4.32E+09  &
   shear_modulus = 1.6632E+09  &
   ixx = 1.7484654314E-03  &
   iyy = 8.7423271571E-04  &
   izz = 8.7423271571E-04  &
   damping_ratio = 1.0E-02  &
   formulation = string
!
force attributes  &
   force_name = .test_analysis_1.BeamAB_Upper_DP_Group2  &
   color = RED
!
force create element_like beam  &
   beam_name = .test_analysis_1.BeamBC_Upper_DP_Group2  &
   adams_id = 4  &
   i_marker_name = .test_analysis_1.Upper_DP_Group2_B.end_beamB  &
   j_marker_name = .test_analysis_1.Upper_DP_Group2_C.end_beamC  &
   length = 14.4983976242  &
   area_of_cross_section = 4.9126655121E-02  &
   y_shear_area_ratio = 0.0  &
   z_shear_area_ratio = 0.0  &
   youngs_modulus = 4.32E+09  &
   shear_modulus = 1.6632E+09  &
   ixx = 1.7484654314E-03  &
   iyy = 8.7423271571E-04  &
   izz = 8.7423271571E-04  &
   damping_ratio = 1.0E-02  &
   formulation = string
!
force attributes  &
   force_name = .test_analysis_1.BeamBC_Upper_DP_Group2  &
   color = RED
!
force create element_like beam  &
   beam_name = .test_analysis_1.BeamAB_Upper_DP_Group3  &
   adams_id = 5  &
   i_marker_name = .test_analysis_1.Upper_DP_Group3_A.end_beamA  &
   j_marker_name = .test_analysis_1.Upper_DP_Group3_B.end_beamB  &
   length = 14.4991818761  &
   area_of_cross_section = 4.9126655121E-02  &
   y_shear_area_ratio = 0.0  &
   z_shear_area_ratio = 0.0  &
   youngs_modulus = 4.32E+09  &
   shear_modulus = 1.6632E+09  &
   ixx = 1.7484654314E-03  &
   iyy = 8.7423271571E-04  &
   izz = 8.7423271571E-04  &
   damping_ratio = 1.0E-02  &
   formulation = string
!
force attributes  &
   force_name = .test_analysis_1.BeamAB_Upper_DP_Group3  &
   color = RED
!
force create element_like beam  &
   beam_name = .test_analysis_1.BeamBC_Upper_DP_Group3  &
   adams_id = 6  &
   i_marker_name = .test_analysis_1.Upper_DP_Group3_B.end_beamB  &
   j_marker_name = .test_analysis_1.Upper_DP_Group3_C.end_beamC  &
   length = 14.498264917  &
   area_of_cross_section = 4.9126655121E-02  &
   y_shear_area_ratio = 0.0  &
   z_shear_area_ratio = 0.0  &
   youngs_modulus = 4.32E+09  &
   shear_modulus = 1.6632E+09  &
   ixx = 1.7484654314E-03  &
   iyy = 8.7423271571E-04  &
   izz = 8.7423271571E-04  &
   damping_ratio = 1.0E-02  &
   formulation = string
!
force attributes  &
   force_name = .test_analysis_1.BeamBC_Upper_DP_Group3  &
   color = RED
!
force create element_like beam  &
   beam_name = .test_analysis_1.BeamAB_Upper_DP_Group4  &
   adams_id = 7  &
   i_marker_name = .test_analysis_1.Upper_DP_Group4_A.end_beamA  &
   j_marker_name = .test_analysis_1.Upper_DP_Group4_B.end_beamB  &
   length = 14.4991183138  &
   area_of_cross_section = 4.9126655121E-02  &
   y_shear_area_ratio = 0.0  &
   z_shear_area_ratio = 0.0  &
   youngs_modulus = 4.32E+09  &
   shear_modulus = 1.6632E+09  &
   ixx = 1.7484654314E-03  &
   iyy = 8.7423271571E-04  &
   izz = 8.7423271571E-04  &
   damping_ratio = 1.0E-02  &
   formulation = string
!
force attributes  &
   force_name = .test_analysis_1.BeamAB_Upper_DP_Group4  &
   color = RED
!
force create element_like beam  &
   beam_name = .test_analysis_1.BeamBC_Upper_DP_Group4  &
   adams_id = 8  &
   i_marker_name = .test_analysis_1.Upper_DP_Group4_B.end_beamB  &
   j_marker_name = .test_analysis_1.Upper_DP_Group4_C.end_beamC  &
   length = 14.498165738  &
   area_of_cross_section = 4.9126655121E-02  &
   y_shear_area_ratio = 0.0  &
   z_shear_area_ratio = 0.0  &
   youngs_modulus = 4.32E+09  &
   shear_modulus = 1.6632E+09  &
   ixx = 1.7484654314E-03  &
   iyy = 8.7423271571E-04  &
   izz = 8.7423271571E-04  &
   damping_ratio = 1.0E-02  &
   formulation = string
!
force attributes  &
   force_name = .test_analysis_1.BeamBC_Upper_DP_Group4  &
   color = RED
!
force create element_like beam  &
   beam_name = .test_analysis_1.BeamAB_Upper_DP_Group5  &
   adams_id = 9  &
   i_marker_name = .test_analysis_1.Upper_DP_Group5_A.end_beamA  &
   j_marker_name = .test_analysis_1.Upper_DP_Group5_B.end_beamB  &
   length = 14.4990747524  &
   area_of_cross_section = 4.9126655121E-02  &
   y_shear_area_ratio = 0.0  &
   z_shear_area_ratio = 0.0  &
   youngs_modulus = 4.32E+09  &
   shear_modulus = 1.6632E+09  &
   ixx = 1.7484654314E-03  &
   iyy = 8.7423271571E-04  &
   izz = 8.7423271571E-04  &
   damping_ratio = 1.0E-02  &
   formulation = string
!
force attributes  &
   force_name = .test_analysis_1.BeamAB_Upper_DP_Group5  &
   color = RED
!
force create element_like beam  &
   beam_name = .test_analysis_1.BeamBC_Upper_DP_Group5  &
   adams_id = 10  &
   i_marker_name = .test_analysis_1.Upper_DP_Group5_B.end_beamB  &
   j_marker_name = .test_analysis_1.Upper_DP_Group5_C.end_beamC  &
   length = 14.4980821352  &
   area_of_cross_section = 4.9126655121E-02  &
   y_shear_area_ratio = 0.0  &
   z_shear_area_ratio = 0.0  &
   youngs_modulus = 4.32E+09  &
   shear_modulus = 1.6632E+09  &
   ixx = 1.7484654314E-03  &
   iyy = 8.7423271571E-04  &
   izz = 8.7423271571E-04  &
   damping_ratio = 1.0E-02  &
   formulation = string
!
force attributes  &
   force_name = .test_analysis_1.BeamBC_Upper_DP_Group5  &
   color = RED
!
force create element_like beam  &
   beam_name = .test_analysis_1.BeamAB_Upper_DP_Group6  &
   adams_id = 11  &
   i_marker_name = .test_analysis_1.Upper_DP_Group6_A.end_beamA  &
   j_marker_name = .test_analysis_1.Upper_DP_Group6_B.end_beamB  &
   length = 14.4990246709  &
   area_of_cross_section = 4.9126655121E-02  &
   y_shear_area_ratio = 0.0  &
   z_shear_area_ratio = 0.0  &
   youngs_modulus = 4.32E+09  &
   shear_modulus = 1.6632E+09  &
   ixx = 1.7484654314E-03  &
   iyy = 8.7423271571E-04  &
   izz = 8.7423271571E-04  &
   damping_ratio = 1.0E-02  &
   formulation = string
!
force attributes  &
   force_name = .test_analysis_1.BeamAB_Upper_DP_Group6  &
   color = RED
!
force create element_like beam  &
   beam_name = .test_analysis_1.BeamBC_Upper_DP_Group6  &
   adams_id = 12  &
   i_marker_name = .test_analysis_1.Upper_DP_Group6_B.end_beamB  &
   j_marker_name = .test_analysis_1.Upper_DP_Group6_C.end_beamC  &
   length = 14.4979417459  &
   area_of_cross_section = 4.9126655121E-02  &
   y_shear_area_ratio = 0.0  &
   z_shear_area_ratio = 0.0  &
   youngs_modulus = 4.32E+09  &
   shear_modulus = 1.6632E+09  &
   ixx = 1.7484654314E-03  &
   iyy = 8.7423271571E-04  &
   izz = 8.7423271571E-04  &
   damping_ratio = 1.0E-02  &
   formulation = string
!
force attributes  &
   force_name = .test_analysis_1.BeamBC_Upper_DP_Group6  &
   color = RED
!
force create element_like beam  &
   beam_name = .test_analysis_1.BeamAB_Upper_DP_Group7  &
   adams_id = 13  &
   i_marker_name = .test_analysis_1.Upper_DP_Group7_A.end_beamA  &
   j_marker_name = .test_analysis_1.Upper_DP_Group7_B.end_beamB  &
   length = 14.4989412679  &
   area_of_cross_section = 4.9126655121E-02  &
   y_shear_area_ratio = 0.0  &
   z_shear_area_ratio = 0.0  &
   youngs_modulus = 4.32E+09  &
   shear_modulus = 1.6632E+09  &
   ixx = 1.7484654314E-03  &
   iyy = 8.7423271571E-04  &
   izz = 8.7423271571E-04  &
   damping_ratio = 1.0E-02  &
   formulation = string
!
force attributes  &
   force_name = .test_analysis_1.BeamAB_Upper_DP_Group7  &
   color = RED
!
force create element_like beam  &
   beam_name = .test_analysis_1.BeamBC_Upper_DP_Group7  &
   adams_id = 14  &
   i_marker_name = .test_analysis_1.Upper_DP_Group7_B.end_beamB  &
   j_marker_name = .test_analysis_1.Upper_DP_Group7_C.end_beamC  &
   length = 14.4976816754  &
   area_of_cross_section = 4.9126655121E-02  &
   y_shear_area_ratio = 0.0  &
   z_shear_area_ratio = 0.0  &
   youngs_modulus = 4.32E+09  &
   shear_modulus = 1.6632E+09  &
   ixx = 1.7484654314E-03  &
   iyy = 8.7423271571E-04  &
   izz = 8.7423271571E-04  &
   damping_ratio = 1.0E-02  &
   formulation = string
!
force attributes  &
   force_name = .test_analysis_1.BeamBC_Upper_DP_Group7  &
   color = RED
!
force create element_like beam  &
   beam_name = .test_analysis_1.BeamAB_Upper_DP_Group8  &
   adams_id = 15  &
   i_marker_name = .test_analysis_1.Upper_DP_Group8_A.end_beamA  &
   j_marker_name = .test_analysis_1.Upper_DP_Group8_B.end_beamB  &
   length = 14.497956624  &
   area_of_cross_section = 4.9126655121E-02  &
   y_shear_area_ratio = 0.0  &
   z_shear_area_ratio = 0.0  &
   youngs_modulus = 4.32E+09  &
   shear_modulus = 1.6632E+09  &
   ixx = 1.7484654314E-03  &
   iyy = 8.7423271571E-04  &
   izz = 8.7423271571E-04  &
   damping_ratio = 1.0E-02  &
   formulation = string
!
force attributes  &
   force_name = .test_analysis_1.BeamAB_Upper_DP_Group8  &
   color = RED
!
force create element_like beam  &
   beam_name = .test_analysis_1.BeamBC_Upper_DP_Group8  &
   adams_id = 16  &
   i_marker_name = .test_analysis_1.Upper_DP_Group8_B.end_beamB  &
   j_marker_name = .test_analysis_1.Upper_DP_Group8_C.end_beamC  &
   length = 14.4968096365  &
   area_of_cross_section = 4.9126655121E-02  &
   y_shear_area_ratio = 0.0  &
   z_shear_area_ratio = 0.0  &
   youngs_modulus = 4.32E+09  &
   shear_modulus = 1.6632E+09  &
   ixx = 1.7484654314E-03  &
   iyy = 8.7423271571E-04  &
   izz = 8.7423271571E-04  &
   damping_ratio = 1.0E-02  &
   formulation = string
!
force attributes  &
   force_name = .test_analysis_1.BeamBC_Upper_DP_Group8  &
   color = RED
!
force create element_like beam  &
   beam_name = .test_analysis_1.BeamAB_Upper_DP_Group9  &
   adams_id = 17  &
   i_marker_name = .test_analysis_1.Upper_DP_Group9_A.end_beamA  &
   j_marker_name = .test_analysis_1.Upper_DP_Group9_B.end_beamB  &
   length = 14.4981588871  &
   area_of_cross_section = 4.9126655121E-02  &
   y_shear_area_ratio = 0.0  &
   z_shear_area_ratio = 0.0  &
   youngs_modulus = 4.32E+09  &
   shear_modulus = 1.6632E+09  &
   ixx = 1.7484654314E-03  &
   iyy = 8.7423271571E-04  &
   izz = 8.7423271571E-04  &
   damping_ratio = 1.0E-02  &
   formulation = string
!
force attributes  &
   force_name = .test_analysis_1.BeamAB_Upper_DP_Group9  &
   color = RED
!
force create element_like beam  &
   beam_name = .test_analysis_1.BeamBC_Upper_DP_Group9  &
   adams_id = 18  &
   i_marker_name = .test_analysis_1.Upper_DP_Group9_B.end_beamB  &
   j_marker_name = .test_analysis_1.Upper_DP_Group9_C.end_beamC  &
   length = 14.4969451506  &
   area_of_cross_section = 4.9126655121E-02  &
   y_shear_area_ratio = 0.0  &
   z_shear_area_ratio = 0.0  &
   youngs_modulus = 4.32E+09  &
   shear_modulus = 1.6632E+09  &
   ixx = 1.7484654314E-03  &
   iyy = 8.7423271571E-04  &
   izz = 8.7423271571E-04  &
   damping_ratio = 1.0E-02  &
   formulation = string
!
force attributes  &
   force_name = .test_analysis_1.BeamBC_Upper_DP_Group9  &
   color = RED
!
force create element_like beam  &
   beam_name = .test_analysis_1.BeamAB_Upper_DP_Group10  &
   adams_id = 19  &
   i_marker_name = .test_analysis_1.Upper_DP_Group10_A.end_beamA  &
   j_marker_name = .test_analysis_1.Upper_DP_Group10_B.end_beamB  &
   length = 14.4982668898  &
   area_of_cross_section = 4.9126655121E-02  &
   y_shear_area_ratio = 0.0  &
   z_shear_area_ratio = 0.0  &
   youngs_modulus = 4.32E+09  &
   shear_modulus = 1.6632E+09  &
   ixx = 1.7484654314E-03  &
   iyy = 8.7423271571E-04  &
   izz = 8.7423271571E-04  &
   damping_ratio = 1.0E-02  &
   formulation = string
!
force attributes  &
   force_name = .test_analysis_1.BeamAB_Upper_DP_Group10  &
   color = RED
!
force create element_like beam  &
   beam_name = .test_analysis_1.BeamBC_Upper_DP_Group10  &
   adams_id = 20  &
   i_marker_name = .test_analysis_1.Upper_DP_Group10_B.end_beamB  &
   j_marker_name = .test_analysis_1.Upper_DP_Group10_C.end_beamC  &
   length = 14.4971896764  &
   area_of_cross_section = 4.9126655121E-02  &
   y_shear_area_ratio = 0.0  &
   z_shear_area_ratio = 0.0  &
   youngs_modulus = 4.32E+09  &
   shear_modulus = 1.6632E+09  &
   ixx = 1.7484654314E-03  &
   iyy = 8.7423271571E-04  &
   izz = 8.7423271571E-04  &
   damping_ratio = 1.0E-02  &
   formulation = string
!
force attributes  &
   force_name = .test_analysis_1.BeamBC_Upper_DP_Group10  &
   color = RED
!
force create element_like beam  &
   beam_name = .test_analysis_1.BeamAB_Upper_DP_Group11  &
   adams_id = 21  &
   i_marker_name = .test_analysis_1.Upper_DP_Group11_A.end_beamA  &
   j_marker_name = .test_analysis_1.Upper_DP_Group11_B.end_beamB  &
   length = 14.4982572365  &
   area_of_cross_section = 4.9126655121E-02  &
   y_shear_area_ratio = 0.0  &
   z_shear_area_ratio = 0.0  &
   youngs_modulus = 4.32E+09  &
   shear_modulus = 1.6632E+09  &
   ixx = 1.7484654314E-03  &
   iyy = 8.7423271571E-04  &
   izz = 8.7423271571E-04  &
   damping_ratio = 1.0E-02  &
   formulation = string
!
force attributes  &
   force_name = .test_analysis_1.BeamAB_Upper_DP_Group11  &
   color = RED
!
force create element_like beam  &
   beam_name = .test_analysis_1.BeamBC_Upper_DP_Group11  &
   adams_id = 22  &
   i_marker_name = .test_analysis_1.Upper_DP_Group11_B.end_beamB  &
   j_marker_name = .test_analysis_1.Upper_DP_Group11_C.end_beamC  &
   length = 14.4974611247  &
   area_of_cross_section = 4.9126655121E-02  &
   y_shear_area_ratio = 0.0  &
   z_shear_area_ratio = 0.0  &
   youngs_modulus = 4.32E+09  &
   shear_modulus = 1.6632E+09  &
   ixx = 1.7484654314E-03  &
   iyy = 8.7423271571E-04  &
   izz = 8.7423271571E-04  &
   damping_ratio = 1.0E-02  &
   formulation = string
!
force attributes  &
   force_name = .test_analysis_1.BeamBC_Upper_DP_Group11  &
   color = RED
!
force create element_like beam  &
   beam_name = .test_analysis_1.BeamAB_Upper_DP_Group12  &
   adams_id = 23  &
   i_marker_name = .test_analysis_1.Upper_DP_Group12_A.end_beamA  &
   j_marker_name = .test_analysis_1.Upper_DP_Group12_B.end_beamB  &
   length = 14.4985026718  &
   area_of_cross_section = 4.9126655121E-02  &
   y_shear_area_ratio = 0.0  &
   z_shear_area_ratio = 0.0  &
   youngs_modulus = 4.32E+09  &
   shear_modulus = 1.6632E+09  &
   ixx = 1.7484654314E-03  &
   iyy = 8.7423271571E-04  &
   izz = 8.7423271571E-04  &
   damping_ratio = 1.0E-02  &
   formulation = string
!
force attributes  &
   force_name = .test_analysis_1.BeamAB_Upper_DP_Group12  &
   color = RED
!
force create element_like beam  &
   beam_name = .test_analysis_1.BeamBC_Upper_DP_Group12  &
   adams_id = 24  &
   i_marker_name = .test_analysis_1.Upper_DP_Group12_B.end_beamB  &
   j_marker_name = .test_analysis_1.Upper_DP_Group12_C.end_beamC  &
   length = 14.497655758  &
   area_of_cross_section = 4.9126655121E-02  &
   y_shear_area_ratio = 0.0  &
   z_shear_area_ratio = 0.0  &
   youngs_modulus = 4.32E+09  &
   shear_modulus = 1.6632E+09  &
   ixx = 1.7484654314E-03  &
   iyy = 8.7423271571E-04  &
   izz = 8.7423271571E-04  &
   damping_ratio = 1.0E-02  &
   formulation = string
!
force attributes  &
   force_name = .test_analysis_1.BeamBC_Upper_DP_Group12  &
   color = RED
!
force create element_like beam  &
   beam_name = .test_analysis_1.BeamAB_Upper_DP_Group13  &
   adams_id = 25  &
   i_marker_name = .test_analysis_1.Upper_DP_Group13_A.end_beamA  &
   j_marker_name = .test_analysis_1.Upper_DP_Group13_B.end_beamB  &
   length = 14.4985594546  &
   area_of_cross_section = 4.9126655121E-02  &
   y_shear_area_ratio = 0.0  &
   z_shear_area_ratio = 0.0  &
   youngs_modulus = 4.32E+09  &
   shear_modulus = 1.6632E+09  &
   ixx = 1.7484654314E-03  &
   iyy = 8.7423271571E-04  &
   izz = 8.7423271571E-04  &
   damping_ratio = 1.0E-02  &
   formulation = string
!
force attributes  &
   force_name = .test_analysis_1.BeamAB_Upper_DP_Group13  &
   color = RED
!
force create element_like beam  &
   beam_name = .test_analysis_1.BeamBC_Upper_DP_Group13  &
   adams_id = 26  &
   i_marker_name = .test_analysis_1.Upper_DP_Group13_B.end_beamB  &
   j_marker_name = .test_analysis_1.Upper_DP_Group13_C.end_beamC  &
   length = 14.498013985  &
   area_of_cross_section = 4.9126655121E-02  &
   y_shear_area_ratio = 0.0  &
   z_shear_area_ratio = 0.0  &
   youngs_modulus = 4.32E+09  &
   shear_modulus = 1.6632E+09  &
   ixx = 1.7484654314E-03  &
   iyy = 8.7423271571E-04  &
   izz = 8.7423271571E-04  &
   damping_ratio = 1.0E-02  &
   formulation = string
!
force attributes  &
   force_name = .test_analysis_1.BeamBC_Upper_DP_Group13  &
   color = RED
!
force create element_like beam  &
   beam_name = .test_analysis_1.BeamAB_Upper_DP_Group14  &
   adams_id = 27  &
   i_marker_name = .test_analysis_1.Upper_DP_Group14_A.end_beamA  &
   j_marker_name = .test_analysis_1.Upper_DP_Group14_B.end_beamB  &
   length = 14.4987863856  &
   area_of_cross_section = 4.9126655121E-02  &
   y_shear_area_ratio = 0.0  &
   z_shear_area_ratio = 0.0  &
   youngs_modulus = 4.32E+09  &
   shear_modulus = 1.6632E+09  &
   ixx = 1.7484654314E-03  &
   iyy = 8.7423271571E-04  &
   izz = 8.7423271571E-04  &
   damping_ratio = 1.0E-02  &
   formulation = string
!
force attributes  &
   force_name = .test_analysis_1.BeamAB_Upper_DP_Group14  &
   color = RED
!
force create element_like beam  &
   beam_name = .test_analysis_1.BeamBC_Upper_DP_Group14  &
   adams_id = 28  &
   i_marker_name = .test_analysis_1.Upper_DP_Group14_B.end_beamB  &
   j_marker_name = .test_analysis_1.Upper_DP_Group14_C.end_beamC  &
   length = 14.4982496348  &
   area_of_cross_section = 4.9126655121E-02  &
   y_shear_area_ratio = 0.0  &
   z_shear_area_ratio = 0.0  &
   youngs_modulus = 4.32E+09  &
   shear_modulus = 1.6632E+09  &
   ixx = 1.7484654314E-03  &
   iyy = 8.7423271571E-04  &
   izz = 8.7423271571E-04  &
   damping_ratio = 1.0E-02  &
   formulation = string
!
force attributes  &
   force_name = .test_analysis_1.BeamBC_Upper_DP_Group14  &
   color = RED
!
force create element_like beam  &
   beam_name = .test_analysis_1.BeamAB_Upper_DP_Group15  &
   adams_id = 29  &
   i_marker_name = .test_analysis_1.Upper_DP_Group15_A.end_beamA  &
   j_marker_name = .test_analysis_1.Upper_DP_Group15_B.end_beamB  &
   length = 14.4989921192  &
   area_of_cross_section = 4.9126655121E-02  &
   y_shear_area_ratio = 0.0  &
   z_shear_area_ratio = 0.0  &
   youngs_modulus = 4.32E+09  &
   shear_modulus = 1.6632E+09  &
   ixx = 1.7484654314E-03  &
   iyy = 8.7423271571E-04  &
   izz = 8.7423271571E-04  &
   damping_ratio = 1.0E-02  &
   formulation = string
!
force attributes  &
   force_name = .test_analysis_1.BeamAB_Upper_DP_Group15  &
   color = RED
!
force create element_like beam  &
   beam_name = .test_analysis_1.BeamBC_Upper_DP_Group15  &
   adams_id = 30  &
   i_marker_name = .test_analysis_1.Upper_DP_Group15_B.end_beamB  &
   j_marker_name = .test_analysis_1.Upper_DP_Group15_C.end_beamC  &
   length = 14.4984313074  &
   area_of_cross_section = 4.9126655121E-02  &
   y_shear_area_ratio = 0.0  &
   z_shear_area_ratio = 0.0  &
   youngs_modulus = 4.32E+09  &
   shear_modulus = 1.6632E+09  &
   ixx = 1.7484654314E-03  &
   iyy = 8.7423271571E-04  &
   izz = 8.7423271571E-04  &
   damping_ratio = 1.0E-02  &
   formulation = string
!
force attributes  &
   force_name = .test_analysis_1.BeamBC_Upper_DP_Group15  &
   color = RED
!
force create element_like beam  &
   beam_name = .test_analysis_1.BeamAB_Upper_DP_Group16  &
   adams_id = 31  &
   i_marker_name = .test_analysis_1.Upper_DP_Group16_A.end_beamA  &
   j_marker_name = .test_analysis_1.Upper_DP_Group16_B.end_beamB  &
   length = 14.4990591623  &
   area_of_cross_section = 4.9126655121E-02  &
   y_shear_area_ratio = 0.0  &
   z_shear_area_ratio = 0.0  &
   youngs_modulus = 4.32E+09  &
   shear_modulus = 1.6632E+09  &
   ixx = 1.7484654314E-03  &
   iyy = 8.7423271571E-04  &
   izz = 8.7423271571E-04  &
   damping_ratio = 1.0E-02  &
   formulation = string
!
force attributes  &
   force_name = .test_analysis_1.BeamAB_Upper_DP_Group16  &
   color = RED
!
force create element_like beam  &
   beam_name = .test_analysis_1.BeamBC_Upper_DP_Group16  &
   adams_id = 32  &
   i_marker_name = .test_analysis_1.Upper_DP_Group16_B.end_beamB  &
   j_marker_name = .test_analysis_1.Upper_DP_Group16_C.end_beamC  &
   length = 14.4987413112  &
   area_of_cross_section = 4.9126655121E-02  &
   y_shear_area_ratio = 0.0  &
   z_shear_area_ratio = 0.0  &
   youngs_modulus = 4.32E+09  &
   shear_modulus = 1.6632E+09  &
   ixx = 1.7484654314E-03  &
   iyy = 8.7423271571E-04  &
   izz = 8.7423271571E-04  &
   damping_ratio = 1.0E-02  &
   formulation = string
!
force attributes  &
   force_name = .test_analysis_1.BeamBC_Upper_DP_Group16  &
   color = RED
!
force create element_like beam  &
   beam_name = .test_analysis_1.BeamAB_Upper_DP_Group17  &
   adams_id = 33  &
   i_marker_name = .test_analysis_1.Upper_DP_Group17_A.end_beamA  &
   j_marker_name = .test_analysis_1.Upper_DP_Group17_B.end_beamB  &
   length = 14.4991916998  &
   area_of_cross_section = 4.9126655121E-02  &
   y_shear_area_ratio = 0.0  &
   z_shear_area_ratio = 0.0  &
   youngs_modulus = 4.32E+09  &
   shear_modulus = 1.6632E+09  &
   ixx = 1.7484654314E-03  &
   iyy = 8.7423271571E-04  &
   izz = 8.7423271571E-04  &
   damping_ratio = 1.0E-02  &
   formulation = string
!
force attributes  &
   force_name = .test_analysis_1.BeamAB_Upper_DP_Group17  &
   color = RED
!
force create element_like beam  &
   beam_name = .test_analysis_1.BeamBC_Upper_DP_Group17  &
   adams_id = 34  &
   i_marker_name = .test_analysis_1.Upper_DP_Group17_B.end_beamB  &
   j_marker_name = .test_analysis_1.Upper_DP_Group17_C.end_beamC  &
   length = 14.4989649591  &
   area_of_cross_section = 4.9126655121E-02  &
   y_shear_area_ratio = 0.0  &
   z_shear_area_ratio = 0.0  &
   youngs_modulus = 4.32E+09  &
   shear_modulus = 1.6632E+09  &
   ixx = 1.7484654314E-03  &
   iyy = 8.7423271571E-04  &
   izz = 8.7423271571E-04  &
   damping_ratio = 1.0E-02  &
   formulation = string
!
force attributes  &
   force_name = .test_analysis_1.BeamBC_Upper_DP_Group17  &
   color = RED
!
force create element_like beam  &
   beam_name = .test_analysis_1.BeamAB_Upper_DP_Group18  &
   adams_id = 35  &
   i_marker_name = .test_analysis_1.Upper_DP_Group18_A.end_beamA  &
   j_marker_name = .test_analysis_1.Upper_DP_Group18_B.end_beamB  &
   length = 14.4992410771  &
   area_of_cross_section = 4.9126655121E-02  &
   y_shear_area_ratio = 0.0  &
   z_shear_area_ratio = 0.0  &
   youngs_modulus = 4.32E+09  &
   shear_modulus = 1.6632E+09  &
   ixx = 1.7484654314E-03  &
   iyy = 8.7423271571E-04  &
   izz = 8.7423271571E-04  &
   damping_ratio = 1.0E-02  &
   formulation = string
!
force attributes  &
   force_name = .test_analysis_1.BeamAB_Upper_DP_Group18  &
   color = RED
!
force create element_like beam  &
   beam_name = .test_analysis_1.BeamBC_Upper_DP_Group18  &
   adams_id = 36  &
   i_marker_name = .test_analysis_1.Upper_DP_Group18_B.end_beamB  &
   j_marker_name = .test_analysis_1.Upper_DP_Group18_C.end_beamC  &
   length = 14.4992582761  &
   area_of_cross_section = 4.9126655121E-02  &
   y_shear_area_ratio = 0.0  &
   z_shear_area_ratio = 0.0  &
   youngs_modulus = 4.32E+09  &
   shear_modulus = 1.6632E+09  &
   ixx = 1.7484654314E-03  &
   iyy = 8.7423271571E-04  &
   izz = 8.7423271571E-04  &
   damping_ratio = 1.0E-02  &
   formulation = string
!
force attributes  &
   force_name = .test_analysis_1.BeamBC_Upper_DP_Group18  &
   color = RED
!
force create element_like beam  &
   beam_name = .test_analysis_1.BeamAB_Upper_DP_Group19  &
   adams_id = 37  &
   i_marker_name = .test_analysis_1.Upper_DP_Group19_A.end_beamA  &
   j_marker_name = .test_analysis_1.Upper_DP_Group19_B.end_beamB  &
   length = 14.499427276  &
   area_of_cross_section = 4.9126655121E-02  &
   y_shear_area_ratio = 0.0  &
   z_shear_area_ratio = 0.0  &
   youngs_modulus = 4.32E+09  &
   shear_modulus = 1.6632E+09  &
   ixx = 1.7484654314E-03  &
   iyy = 8.7423271571E-04  &
   izz = 8.7423271571E-04  &
   damping_ratio = 1.0E-02  &
   formulation = string
!
force attributes  &
   force_name = .test_analysis_1.BeamAB_Upper_DP_Group19  &
   color = RED
!
force create element_like beam  &
   beam_name = .test_analysis_1.BeamBC_Upper_DP_Group19  &
   adams_id = 38  &
   i_marker_name = .test_analysis_1.Upper_DP_Group19_B.end_beamB  &
   j_marker_name = .test_analysis_1.Upper_DP_Group19_C.end_beamC  &
   length = 14.4993841258  &
   area_of_cross_section = 4.9126655121E-02  &
   y_shear_area_ratio = 0.0  &
   z_shear_area_ratio = 0.0  &
   youngs_modulus = 4.32E+09  &
   shear_modulus = 1.6632E+09  &
   ixx = 1.7484654314E-03  &
   iyy = 8.7423271571E-04  &
   izz = 8.7423271571E-04  &
   damping_ratio = 1.0E-02  &
   formulation = string
!
force attributes  &
   force_name = .test_analysis_1.BeamBC_Upper_DP_Group19  &
   color = RED
!
force create element_like beam  &
   beam_name = .test_analysis_1.BeamAB_Upper_DP_Group20  &
   adams_id = 39  &
   i_marker_name = .test_analysis_1.Upper_DP_Group20_A.end_beamA  &
   j_marker_name = .test_analysis_1.Upper_DP_Group20_B.end_beamB  &
   length = 14.4996424529  &
   area_of_cross_section = 4.9126655121E-02  &
   y_shear_area_ratio = 0.0  &
   z_shear_area_ratio = 0.0  &
   youngs_modulus = 4.32E+09  &
   shear_modulus = 1.6632E+09  &
   ixx = 1.7484654314E-03  &
   iyy = 8.7423271571E-04  &
   izz = 8.7423271571E-04  &
   damping_ratio = 1.0E-02  &
   formulation = string
!
force attributes  &
   force_name = .test_analysis_1.BeamAB_Upper_DP_Group20  &
   color = RED
!
force create element_like beam  &
   beam_name = .test_analysis_1.BeamBC_Upper_DP_Group20  &
   adams_id = 40  &
   i_marker_name = .test_analysis_1.Upper_DP_Group20_B.end_beamB  &
   j_marker_name = .test_analysis_1.Upper_DP_Group20_C.end_beamC  &
   length = 14.4996747257  &
   area_of_cross_section = 4.9126655121E-02  &
   y_shear_area_ratio = 0.0  &
   z_shear_area_ratio = 0.0  &
   youngs_modulus = 4.32E+09  &
   shear_modulus = 1.6632E+09  &
   ixx = 1.7484654314E-03  &
   iyy = 8.7423271571E-04  &
   izz = 8.7423271571E-04  &
   damping_ratio = 1.0E-02  &
   formulation = string
!
force attributes  &
   force_name = .test_analysis_1.BeamBC_Upper_DP_Group20  &
   color = RED
!
force create element_like bushing  &
   bushing_name = .test_analysis_1.Upper_DP_Group20_TOSbushing  &
   adams_id = 1  &
   i_marker_name = .test_analysis_1.Upper_DP_Group20_C.end_C  &
   j_marker_name = .test_analysis_1.Upper_DP_Group20_sliderC.cm  &
   damping = 100.0, 100.0, 0.0  &
   stiffness = 0.0, 0.0, 0.0  &
   force_preload = 0.0, 0.0, 0.0  &
   tdamping = 100.0, 100.0, 0.0  &
   tstiffness = 0.0, 0.0, 0.0  &
   torque_preload = 0.0, 0.0, 0.0
!
force create direct general_force  &
   general_force_name = .test_analysis_1.Hole_Bottom_ROPcontrol  &
   adams_id = 9006301  &
   i_marker_name = .test_analysis_1.Hole_Bottom.gref1  &
   j_floating_marker_name = .test_analysis_1.ground.FMARKER_3002294  &
   ref_marker_name = .test_analysis_1.Hole_Bottom.cm  &
   x_force_function = ""  &
   y_force_function = ""  &
   z_force_function = ""  &
   x_torque_function = ""  &
   y_torque_function = ""  &
   z_torque_function = ""
!
force create direct general_force  &
   general_force_name = .test_analysis_1.test_pdc_01_contactA  &
   adams_id = 9000000  &
   i_marker_name = .test_analysis_1.test_pdc_01.LateralRef  &
   j_floating_marker_name = .test_analysis_1.Hole_Bottom.FMARKER_9000105  &
   ref_marker_name = .test_analysis_1.test_pdc_01_sliderA.cm  &
   user_function = 1.05, 5.0E-03, 1.0208, 0.3, 0.15, 1.25, 0.9, 0.999, 0.0,  &
                   1.0, 0.0, 1.0, 0.55, 1.05  &
   routine = "adrill_solver::BitForces"
!
force create direct general_force  &
   general_force_name = .test_analysis_1.example_stabilizer_02_contactA  &
   adams_id = 9000200  &
   i_marker_name = .test_analysis_1.example_stabilizer_02_B.barrelA1  &
   j_floating_marker_name = .test_analysis_1.ground.FMARKER_9000310  &
   ref_marker_name = .test_analysis_1.example_stabilizer_02_sliderA.cm  &
   user_function = 1.05, 5.0E-03, 0.6979166667, 75.0, 0.63859375, 1.2  &
   routine = "adrill_solver::StringForces"
!
force create direct general_force  &
   general_force_name = .test_analysis_1.example_stabilizer_02_contactB  &
   adams_id = 9000300  &
   i_marker_name = .test_analysis_1.example_stabilizer_02_B.barrelB1  &
   j_floating_marker_name = .test_analysis_1.ground.FMARKER_9000311  &
   ref_marker_name = .test_analysis_1.example_stabilizer_02_sliderB.cm  &
   user_function = 1.05, 5.0E-03, 0.6979166667, 75.0, 0.63859375, 1.2  &
   routine = "adrill_solver::StringForces"
!
force create direct general_force  &
   general_force_name = .test_analysis_1.Upper_DP_Group1_contactA  &
   adams_id = 9000400  &
   i_marker_name = .test_analysis_1.Upper_DP_Group1_A.end_A  &
   j_floating_marker_name = .test_analysis_1.ground.FMARKER_9000609  &
   ref_marker_name = .test_analysis_1.Upper_DP_Group1_sliderA.cm  &
   user_function = 1.05, 5.0E-03, 0.5833, 75.0, 10.3333333333, 1.2  &
   routine = "adrill_solver::StringForces"
!
force create direct general_force  &
   general_force_name = .test_analysis_1.Upper_DP_Group1_contactB  &
   adams_id = 9000500  &
   i_marker_name = .test_analysis_1.Upper_DP_Group1_B.cm  &
   j_floating_marker_name = .test_analysis_1.ground.FMARKER_9000610  &
   ref_marker_name = .test_analysis_1.Upper_DP_Group1_sliderB.cm  &
   user_function = 1.05, 5.0E-03, 0.5, 75.0, 5.1666666667, 1.2  &
   routine = "adrill_solver::StringForces"
!
force create direct general_force  &
   general_force_name = .test_analysis_1.Upper_DP_Group2_contactA  &
   adams_id = 9000700  &
   i_marker_name = .test_analysis_1.Upper_DP_Group2_A.end_A  &
   j_floating_marker_name = .test_analysis_1.ground.FMARKER_9000909  &
   ref_marker_name = .test_analysis_1.Upper_DP_Group2_sliderA.cm  &
   user_function = 1.05, 5.0E-03, 0.5833, 75.0, 10.3333333333, 1.2  &
   routine = "adrill_solver::StringForces"
!
force create direct general_force  &
   general_force_name = .test_analysis_1.Upper_DP_Group2_contactB  &
   adams_id = 9000800  &
   i_marker_name = .test_analysis_1.Upper_DP_Group2_B.cm  &
   j_floating_marker_name = .test_analysis_1.ground.FMARKER_9000910  &
   ref_marker_name = .test_analysis_1.Upper_DP_Group2_sliderB.cm  &
   user_function = 1.05, 5.0E-03, 0.5, 75.0, 5.1666666667, 1.2  &
   routine = "adrill_solver::StringForces"
!
force create direct general_force  &
   general_force_name = .test_analysis_1.Upper_DP_Group3_contactA  &
   adams_id = 9001000  &
   i_marker_name = .test_analysis_1.Upper_DP_Group3_A.end_A  &
   j_floating_marker_name = .test_analysis_1.ground.FMARKER_9001209  &
   ref_marker_name = .test_analysis_1.Upper_DP_Group3_sliderA.cm  &
   user_function = 1.05, 5.0E-03, 0.5833, 75.0, 10.3333333333, 1.2  &
   routine = "adrill_solver::StringForces"
!
force create direct general_force  &
   general_force_name = .test_analysis_1.Upper_DP_Group3_contactB  &
   adams_id = 9001100  &
   i_marker_name = .test_analysis_1.Upper_DP_Group3_B.cm  &
   j_floating_marker_name = .test_analysis_1.ground.FMARKER_9001210  &
   ref_marker_name = .test_analysis_1.Upper_DP_Group3_sliderB.cm  &
   user_function = 1.05, 5.0E-03, 0.5, 75.0, 5.1666666667, 1.2  &
   routine = "adrill_solver::StringForces"
!
force create direct general_force  &
   general_force_name = .test_analysis_1.Upper_DP_Group4_contactA  &
   adams_id = 9001300  &
   i_marker_name = .test_analysis_1.Upper_DP_Group4_A.end_A  &
   j_floating_marker_name = .test_analysis_1.ground.FMARKER_9001509  &
   ref_marker_name = .test_analysis_1.Upper_DP_Group4_sliderA.cm  &
   user_function = 1.05, 5.0E-03, 0.5833, 75.0, 10.3333333333, 1.2  &
   routine = "adrill_solver::StringForces"
!
force create direct general_force  &
   general_force_name = .test_analysis_1.Upper_DP_Group4_contactB  &
   adams_id = 9001400  &
   i_marker_name = .test_analysis_1.Upper_DP_Group4_B.cm  &
   j_floating_marker_name = .test_analysis_1.ground.FMARKER_9001510  &
   ref_marker_name = .test_analysis_1.Upper_DP_Group4_sliderB.cm  &
   user_function = 1.05, 5.0E-03, 0.5, 75.0, 5.1666666667, 1.2  &
   routine = "adrill_solver::StringForces"
!
force create direct general_force  &
   general_force_name = .test_analysis_1.Upper_DP_Group5_contactA  &
   adams_id = 9001600  &
   i_marker_name = .test_analysis_1.Upper_DP_Group5_A.end_A  &
   j_floating_marker_name = .test_analysis_1.ground.FMARKER_9001809  &
   ref_marker_name = .test_analysis_1.Upper_DP_Group5_sliderA.cm  &
   user_function = 1.05, 5.0E-03, 0.5833, 75.0, 10.3333333333, 1.2  &
   routine = "adrill_solver::StringForces"
!
force create direct general_force  &
   general_force_name = .test_analysis_1.Upper_DP_Group5_contactB  &
   adams_id = 9001700  &
   i_marker_name = .test_analysis_1.Upper_DP_Group5_B.cm  &
   j_floating_marker_name = .test_analysis_1.ground.FMARKER_9001810  &
   ref_marker_name = .test_analysis_1.Upper_DP_Group5_sliderB.cm  &
   user_function = 1.05, 5.0E-03, 0.5, 75.0, 5.1666666667, 1.2  &
   routine = "adrill_solver::StringForces"
!
force create direct general_force  &
   general_force_name = .test_analysis_1.Upper_DP_Group6_contactA  &
   adams_id = 9001900  &
   i_marker_name = .test_analysis_1.Upper_DP_Group6_A.end_A  &
   j_floating_marker_name = .test_analysis_1.ground.FMARKER_9002109  &
   ref_marker_name = .test_analysis_1.Upper_DP_Group6_sliderA.cm  &
   user_function = 1.05, 5.0E-03, 0.5833, 75.0, 10.3333333333, 1.2  &
   routine = "adrill_solver::StringForces"
!
force create direct general_force  &
   general_force_name = .test_analysis_1.Upper_DP_Group6_contactB  &
   adams_id = 9002000  &
   i_marker_name = .test_analysis_1.Upper_DP_Group6_B.cm  &
   j_floating_marker_name = .test_analysis_1.ground.FMARKER_9002110  &
   ref_marker_name = .test_analysis_1.Upper_DP_Group6_sliderB.cm  &
   user_function = 1.05, 5.0E-03, 0.5, 75.0, 5.1666666667, 1.2  &
   routine = "adrill_solver::StringForces"
!
force create direct general_force  &
   general_force_name = .test_analysis_1.Upper_DP_Group7_contactA  &
   adams_id = 9002200  &
   i_marker_name = .test_analysis_1.Upper_DP_Group7_A.end_A  &
   j_floating_marker_name = .test_analysis_1.ground.FMARKER_9002409  &
   ref_marker_name = .test_analysis_1.Upper_DP_Group7_sliderA.cm  &
   user_function = 1.05, 5.0E-03, 0.5833, 75.0, 10.3333333333, 1.2  &
   routine = "adrill_solver::StringForces"
!
force create direct general_force  &
   general_force_name = .test_analysis_1.Upper_DP_Group7_contactB  &
   adams_id = 9002300  &
   i_marker_name = .test_analysis_1.Upper_DP_Group7_B.cm  &
   j_floating_marker_name = .test_analysis_1.ground.FMARKER_9002410  &
   ref_marker_name = .test_analysis_1.Upper_DP_Group7_sliderB.cm  &
   user_function = 1.05, 5.0E-03, 0.5, 75.0, 5.1666666667, 1.2  &
   routine = "adrill_solver::StringForces"
!
force create direct general_force  &
   general_force_name = .test_analysis_1.Upper_DP_Group8_contactA  &
   adams_id = 9002500  &
   i_marker_name = .test_analysis_1.Upper_DP_Group8_A.end_A  &
   j_floating_marker_name = .test_analysis_1.ground.FMARKER_9002709  &
   ref_marker_name = .test_analysis_1.Upper_DP_Group8_sliderA.cm  &
   user_function = 1.05, 5.0E-03, 0.5833, 75.0, 10.3333333333, 1.2  &
   routine = "adrill_solver::StringForces"
!
force create direct general_force  &
   general_force_name = .test_analysis_1.Upper_DP_Group8_contactB  &
   adams_id = 9002600  &
   i_marker_name = .test_analysis_1.Upper_DP_Group8_B.cm  &
   j_floating_marker_name = .test_analysis_1.ground.FMARKER_9002710  &
   ref_marker_name = .test_analysis_1.Upper_DP_Group8_sliderB.cm  &
   user_function = 1.05, 5.0E-03, 0.5, 75.0, 5.1666666667, 1.2  &
   routine = "adrill_solver::StringForces"
!
force create direct general_force  &
   general_force_name = .test_analysis_1.Upper_DP_Group9_contactA  &
   adams_id = 9002800  &
   i_marker_name = .test_analysis_1.Upper_DP_Group9_A.end_A  &
   j_floating_marker_name = .test_analysis_1.ground.FMARKER_9003009  &
   ref_marker_name = .test_analysis_1.Upper_DP_Group9_sliderA.cm  &
   user_function = 1.05, 5.0E-03, 0.5833, 75.0, 10.3333333333, 1.2  &
   routine = "adrill_solver::StringForces"
!
force create direct general_force  &
   general_force_name = .test_analysis_1.Upper_DP_Group9_contactB  &
   adams_id = 9002900  &
   i_marker_name = .test_analysis_1.Upper_DP_Group9_B.cm  &
   j_floating_marker_name = .test_analysis_1.ground.FMARKER_9003010  &
   ref_marker_name = .test_analysis_1.Upper_DP_Group9_sliderB.cm  &
   user_function = 1.05, 5.0E-03, 0.5, 75.0, 5.1666666667, 1.2  &
   routine = "adrill_solver::StringForces"
!
force create direct general_force  &
   general_force_name = .test_analysis_1.Upper_DP_Group10_contactA  &
   adams_id = 9003100  &
   i_marker_name = .test_analysis_1.Upper_DP_Group10_A.end_A  &
   j_floating_marker_name = .test_analysis_1.ground.FMARKER_9003309  &
   ref_marker_name = .test_analysis_1.Upper_DP_Group10_sliderA.cm  &
   user_function = 1.05, 5.0E-03, 0.5833, 75.0, 10.3333333333, 1.2  &
   routine = "adrill_solver::StringForces"
!
force create direct general_force  &
   general_force_name = .test_analysis_1.Upper_DP_Group10_contactB  &
   adams_id = 9003200  &
   i_marker_name = .test_analysis_1.Upper_DP_Group10_B.cm  &
   j_floating_marker_name = .test_analysis_1.ground.FMARKER_9003310  &
   ref_marker_name = .test_analysis_1.Upper_DP_Group10_sliderB.cm  &
   user_function = 1.05, 5.0E-03, 0.5, 75.0, 5.1666666667, 1.2  &
   routine = "adrill_solver::StringForces"
!
force create direct general_force  &
   general_force_name = .test_analysis_1.Upper_DP_Group11_contactA  &
   adams_id = 9003400  &
   i_marker_name = .test_analysis_1.Upper_DP_Group11_A.end_A  &
   j_floating_marker_name = .test_analysis_1.ground.FMARKER_9003609  &
   ref_marker_name = .test_analysis_1.Upper_DP_Group11_sliderA.cm  &
   user_function = 1.05, 5.0E-03, 0.5833, 75.0, 10.3333333333, 1.2  &
   routine = "adrill_solver::StringForces"
!
force create direct general_force  &
   general_force_name = .test_analysis_1.Upper_DP_Group11_contactB  &
   adams_id = 9003500  &
   i_marker_name = .test_analysis_1.Upper_DP_Group11_B.cm  &
   j_floating_marker_name = .test_analysis_1.ground.FMARKER_9003610  &
   ref_marker_name = .test_analysis_1.Upper_DP_Group11_sliderB.cm  &
   user_function = 1.05, 5.0E-03, 0.5, 75.0, 5.1666666667, 1.2  &
   routine = "adrill_solver::StringForces"
!
force create direct general_force  &
   general_force_name = .test_analysis_1.Upper_DP_Group12_contactA  &
   adams_id = 9003700  &
   i_marker_name = .test_analysis_1.Upper_DP_Group12_A.end_A  &
   j_floating_marker_name = .test_analysis_1.ground.FMARKER_9003909  &
   ref_marker_name = .test_analysis_1.Upper_DP_Group12_sliderA.cm  &
   user_function = 1.05, 5.0E-03, 0.5833, 75.0, 10.3333333333, 1.2  &
   routine = "adrill_solver::StringForces"
!
force create direct general_force  &
   general_force_name = .test_analysis_1.Upper_DP_Group12_contactB  &
   adams_id = 9003800  &
   i_marker_name = .test_analysis_1.Upper_DP_Group12_B.cm  &
   j_floating_marker_name = .test_analysis_1.ground.FMARKER_9003910  &
   ref_marker_name = .test_analysis_1.Upper_DP_Group12_sliderB.cm  &
   user_function = 1.05, 5.0E-03, 0.5, 75.0, 5.1666666667, 1.2  &
   routine = "adrill_solver::StringForces"
!
force create direct general_force  &
   general_force_name = .test_analysis_1.Upper_DP_Group13_contactA  &
   adams_id = 9004000  &
   i_marker_name = .test_analysis_1.Upper_DP_Group13_A.end_A  &
   j_floating_marker_name = .test_analysis_1.ground.FMARKER_9004209  &
   ref_marker_name = .test_analysis_1.Upper_DP_Group13_sliderA.cm  &
   user_function = 1.05, 5.0E-03, 0.5833, 75.0, 10.3333333333, 1.2  &
   routine = "adrill_solver::StringForces"
!
force create direct general_force  &
   general_force_name = .test_analysis_1.Upper_DP_Group13_contactB  &
   adams_id = 9004100  &
   i_marker_name = .test_analysis_1.Upper_DP_Group13_B.cm  &
   j_floating_marker_name = .test_analysis_1.ground.FMARKER_9004210  &
   ref_marker_name = .test_analysis_1.Upper_DP_Group13_sliderB.cm  &
   user_function = 1.05, 5.0E-03, 0.5, 75.0, 5.1666666667, 1.2  &
   routine = "adrill_solver::StringForces"
!
force create direct general_force  &
   general_force_name = .test_analysis_1.Upper_DP_Group14_contactA  &
   adams_id = 9004300  &
   i_marker_name = .test_analysis_1.Upper_DP_Group14_A.end_A  &
   j_floating_marker_name = .test_analysis_1.ground.FMARKER_9004509  &
   ref_marker_name = .test_analysis_1.Upper_DP_Group14_sliderA.cm  &
   user_function = 1.05, 5.0E-03, 0.5833, 75.0, 10.3333333333, 1.2  &
   routine = "adrill_solver::StringForces"
!
force create direct general_force  &
   general_force_name = .test_analysis_1.Upper_DP_Group14_contactB  &
   adams_id = 9004400  &
   i_marker_name = .test_analysis_1.Upper_DP_Group14_B.cm  &
   j_floating_marker_name = .test_analysis_1.ground.FMARKER_9004510  &
   ref_marker_name = .test_analysis_1.Upper_DP_Group14_sliderB.cm  &
   user_function = 1.05, 5.0E-03, 0.5, 75.0, 5.1666666667, 1.2  &
   routine = "adrill_solver::StringForces"
!
force create direct general_force  &
   general_force_name = .test_analysis_1.Upper_DP_Group15_contactA  &
   adams_id = 9004600  &
   i_marker_name = .test_analysis_1.Upper_DP_Group15_A.end_A  &
   j_floating_marker_name = .test_analysis_1.ground.FMARKER_9004809  &
   ref_marker_name = .test_analysis_1.Upper_DP_Group15_sliderA.cm  &
   user_function = 1.05, 5.0E-03, 0.5833, 75.0, 10.3333333333, 1.2  &
   routine = "adrill_solver::StringForces"
!
force create direct general_force  &
   general_force_name = .test_analysis_1.Upper_DP_Group15_contactB  &
   adams_id = 9004700  &
   i_marker_name = .test_analysis_1.Upper_DP_Group15_B.cm  &
   j_floating_marker_name = .test_analysis_1.ground.FMARKER_9004810  &
   ref_marker_name = .test_analysis_1.Upper_DP_Group15_sliderB.cm  &
   user_function = 1.05, 5.0E-03, 0.5, 75.0, 5.1666666667, 1.2  &
   routine = "adrill_solver::StringForces"
!
force create direct general_force  &
   general_force_name = .test_analysis_1.Upper_DP_Group16_contactA  &
   adams_id = 9004900  &
   i_marker_name = .test_analysis_1.Upper_DP_Group16_A.end_A  &
   j_floating_marker_name = .test_analysis_1.ground.FMARKER_9005109  &
   ref_marker_name = .test_analysis_1.Upper_DP_Group16_sliderA.cm  &
   user_function = 1.05, 5.0E-03, 0.5833, 75.0, 10.3333333333, 1.2  &
   routine = "adrill_solver::StringForces"
!
force create direct general_force  &
   general_force_name = .test_analysis_1.Upper_DP_Group16_contactB  &
   adams_id = 9005000  &
   i_marker_name = .test_analysis_1.Upper_DP_Group16_B.cm  &
   j_floating_marker_name = .test_analysis_1.ground.FMARKER_9005110  &
   ref_marker_name = .test_analysis_1.Upper_DP_Group16_sliderB.cm  &
   user_function = 1.05, 5.0E-03, 0.5, 75.0, 5.1666666667, 1.2  &
   routine = "adrill_solver::StringForces"
!
force create direct general_force  &
   general_force_name = .test_analysis_1.Upper_DP_Group17_contactA  &
   adams_id = 9005200  &
   i_marker_name = .test_analysis_1.Upper_DP_Group17_A.end_A  &
   j_floating_marker_name = .test_analysis_1.ground.FMARKER_9005409  &
   ref_marker_name = .test_analysis_1.Upper_DP_Group17_sliderA.cm  &
   user_function = 1.05, 5.0E-03, 0.5833, 75.0, 10.3333333333, 1.2  &
   routine = "adrill_solver::StringForces"
!
force create direct general_force  &
   general_force_name = .test_analysis_1.Upper_DP_Group17_contactB  &
   adams_id = 9005300  &
   i_marker_name = .test_analysis_1.Upper_DP_Group17_B.cm  &
   j_floating_marker_name = .test_analysis_1.ground.FMARKER_9005410  &
   ref_marker_name = .test_analysis_1.Upper_DP_Group17_sliderB.cm  &
   user_function = 1.05, 5.0E-03, 0.5, 75.0, 5.1666666667, 1.2  &
   routine = "adrill_solver::StringForces"
!
force create direct general_force  &
   general_force_name = .test_analysis_1.Upper_DP_Group18_contactA  &
   adams_id = 9005500  &
   i_marker_name = .test_analysis_1.Upper_DP_Group18_A.end_A  &
   j_floating_marker_name = .test_analysis_1.ground.FMARKER_9005709  &
   ref_marker_name = .test_analysis_1.Upper_DP_Group18_sliderA.cm  &
   user_function = 1.05, 5.0E-03, 0.5833, 75.0, 10.3333333333, 1.2  &
   routine = "adrill_solver::StringForces"
!
force create direct general_force  &
   general_force_name = .test_analysis_1.Upper_DP_Group18_contactB  &
   adams_id = 9005600  &
   i_marker_name = .test_analysis_1.Upper_DP_Group18_B.cm  &
   j_floating_marker_name = .test_analysis_1.ground.FMARKER_9005710  &
   ref_marker_name = .test_analysis_1.Upper_DP_Group18_sliderB.cm  &
   user_function = 1.05, 5.0E-03, 0.5, 75.0, 5.1666666667, 1.2  &
   routine = "adrill_solver::StringForces"
!
force create direct general_force  &
   general_force_name = .test_analysis_1.Upper_DP_Group19_contactA  &
   adams_id = 9005800  &
   i_marker_name = .test_analysis_1.Upper_DP_Group19_A.end_A  &
   j_floating_marker_name = .test_analysis_1.ground.FMARKER_9006009  &
   ref_marker_name = .test_analysis_1.Upper_DP_Group19_sliderA.cm  &
   user_function = 1.05, 5.0E-03, 0.5833, 75.0, 10.3333333333, 1.2  &
   routine = "adrill_solver::StringForces"
!
force create direct general_force  &
   general_force_name = .test_analysis_1.Upper_DP_Group19_contactB  &
   adams_id = 9005900  &
   i_marker_name = .test_analysis_1.Upper_DP_Group19_B.cm  &
   j_floating_marker_name = .test_analysis_1.ground.FMARKER_9006010  &
   ref_marker_name = .test_analysis_1.Upper_DP_Group19_sliderB.cm  &
   user_function = 1.05, 5.0E-03, 0.5, 75.0, 5.1666666667, 1.2  &
   routine = "adrill_solver::StringForces"
!
force create direct general_force  &
   general_force_name = .test_analysis_1.Upper_DP_Group20_contactA  &
   adams_id = 9006100  &
   i_marker_name = .test_analysis_1.Upper_DP_Group20_A.end_A  &
   j_floating_marker_name = .test_analysis_1.ground.FMARKER_9006314  &
   ref_marker_name = .test_analysis_1.Upper_DP_Group20_sliderA.cm  &
   user_function = 1.05, 5.0E-03, 0.5833, 75.0, 10.3333333333, 1.2  &
   routine = "adrill_solver::StringForces"
!
force create direct general_force  &
   general_force_name = .test_analysis_1.Upper_DP_Group20_contactB  &
   adams_id = 9006200  &
   i_marker_name = .test_analysis_1.Upper_DP_Group20_B.cm  &
   j_floating_marker_name = .test_analysis_1.ground.FMARKER_9006315  &
   ref_marker_name = .test_analysis_1.Upper_DP_Group20_sliderB.cm  &
   user_function = 1.05, 5.0E-03, 0.5, 75.0, 5.1666666667, 1.2  &
   routine = "adrill_solver::StringForces"
!
force create direct general_force  &
   general_force_name = .test_analysis_1.Upper_DP_Group20_contactC  &
   adams_id = 9006300  &
   i_marker_name = .test_analysis_1.Upper_DP_Group20_C.end_C  &
   j_floating_marker_name = .test_analysis_1.ground.FMARKER_9006316  &
   ref_marker_name = .test_analysis_1.Upper_DP_Group20_sliderC.cm  &
   user_function = 1.05, 5.0E-03, 0.5833, 75.0, 5.1666666667, 1.2  &
   routine = "adrill_solver::StringForces"
!
force create direct general_force  &
   general_force_name = .test_analysis_1.Upper_DP_Group20_TOSdamper  &
   adams_id = 9006302  &
   i_marker_name = .test_analysis_1.Upper_DP_Group20_C.end_C  &
   j_floating_marker_name = .test_analysis_1.ground.FMARKER_9006320  &
   ref_marker_name = .test_analysis_1.Upper_DP_Group20_sliderC.cm  &
   x_force_function = ""  &
   y_force_function = ""  &
   z_force_function = ""  &
   x_torque_function = ""  &
   y_torque_function = ""  &
   z_torque_function = ""
!
force create direct single_component_force  &
   single_component_force_name = .test_analysis_1.topdrive  &
   adams_id = 1  &
   type_of_freedom = rotational  &
   i_marker_name = .test_analysis_1.Upper_DP_Group20_C.end_C  &
   j_marker_name = .test_analysis_1.Upper_DP_Group20_C.end_C  &
   action_only = on  &
   function = ""
!
force create direct force_vector  &
   force_vector_name = .test_analysis_1.test_pdc_01_sliderA_locator  &
   adams_id = 9000020  &
   i_marker_name = .test_analysis_1.test_pdc_01.LateralRef  &
   j_floating_marker_name =   &
                            .test_analysis_1.test_pdc_01_sliderA.FMARKER_9000104  &
   ref_marker_name = .test_analysis_1.test_pdc_01.LateralRef  &
   x_force_function = ""  &
   y_force_function = ""  &
   z_force_function = ""
!
force create direct force_vector  &
   force_vector_name = .test_analysis_1.example_stabilizer_02_sliderA_locator  &
   adams_id = 9000220  &
   i_marker_name = .test_analysis_1.example_stabilizer_02_B.barrelA1  &
   j_floating_marker_name =   &
                            .test_analysis_1.example_stabilizer_02_sliderA.FMARKER_9000308  &
   ref_marker_name = .test_analysis_1.example_stabilizer_02_B.barrelA1  &
   x_force_function = ""  &
   y_force_function = ""  &
   z_force_function = ""
!
force create direct force_vector  &
   force_vector_name = .test_analysis_1.example_stabilizer_02_sliderB_locator  &
   adams_id = 9000320  &
   i_marker_name = .test_analysis_1.example_stabilizer_02_B.barrelB1  &
   j_floating_marker_name =   &
                            .test_analysis_1.example_stabilizer_02_sliderB.FMARKER_9000309  &
   ref_marker_name = .test_analysis_1.example_stabilizer_02_B.barrelB1  &
   x_force_function = ""  &
   y_force_function = ""  &
   z_force_function = ""
!
force create direct force_vector  &
   force_vector_name = .test_analysis_1.Upper_DP_Group1_sliderA_locator  &
   adams_id = 9000420  &
   i_marker_name = .test_analysis_1.Upper_DP_Group1_A.end_A  &
   j_floating_marker_name =   &
                            .test_analysis_1.Upper_DP_Group1_sliderA.FMARKER_9000607  &
   ref_marker_name = .test_analysis_1.Upper_DP_Group1_A.end_A  &
   x_force_function = ""  &
   y_force_function = ""  &
   z_force_function = ""
!
force create direct force_vector  &
   force_vector_name = .test_analysis_1.Upper_DP_Group1_sliderB_locator  &
   adams_id = 9000520  &
   i_marker_name = .test_analysis_1.Upper_DP_Group1_B.cm  &
   j_floating_marker_name =   &
                            .test_analysis_1.Upper_DP_Group1_sliderB.FMARKER_9000608  &
   ref_marker_name = .test_analysis_1.Upper_DP_Group1_B.cm  &
   x_force_function = ""  &
   y_force_function = ""  &
   z_force_function = ""
!
force create direct force_vector  &
   force_vector_name = .test_analysis_1.Upper_DP_Group1_fluidmassA  &
   adams_id = 9000430  &
   i_marker_name = .test_analysis_1.Upper_DP_Group1_A.cm  &
   j_floating_marker_name = .test_analysis_1.ground.FMARKER_9000611  &
   ref_marker_name = .test_analysis_1.Upper_DP_Group1_A.cm  &
   x_force_function = ""  &
   y_force_function = ""  &
   z_force_function = ""
!
force create direct force_vector  &
   force_vector_name = .test_analysis_1.Upper_DP_Group1_fluidmassC  &
   adams_id = 9000630  &
   i_marker_name = .test_analysis_1.Upper_DP_Group1_C.cm  &
   j_floating_marker_name = .test_analysis_1.ground.FMARKER_9000612  &
   ref_marker_name = .test_analysis_1.Upper_DP_Group1_C.cm  &
   x_force_function = ""  &
   y_force_function = ""  &
   z_force_function = ""
!
force create direct force_vector  &
   force_vector_name = .test_analysis_1.Upper_DP_Group1_fluidmassB  &
   adams_id = 9000530  &
   i_marker_name = .test_analysis_1.Upper_DP_Group1_B.cm  &
   j_floating_marker_name = .test_analysis_1.ground.FMARKER_9000613  &
   ref_marker_name = .test_analysis_1.Upper_DP_Group1_B.cm  &
   x_force_function = ""  &
   y_force_function = ""  &
   z_force_function = ""
!
force create direct force_vector  &
   force_vector_name = .test_analysis_1.Upper_DP_Group2_sliderA_locator  &
   adams_id = 9000720  &
   i_marker_name = .test_analysis_1.Upper_DP_Group2_A.end_A  &
   j_floating_marker_name =   &
                            .test_analysis_1.Upper_DP_Group2_sliderA.FMARKER_9000907  &
   ref_marker_name = .test_analysis_1.Upper_DP_Group2_A.end_A  &
   x_force_function = ""  &
   y_force_function = ""  &
   z_force_function = ""
!
force create direct force_vector  &
   force_vector_name = .test_analysis_1.Upper_DP_Group2_sliderB_locator  &
   adams_id = 9000820  &
   i_marker_name = .test_analysis_1.Upper_DP_Group2_B.cm  &
   j_floating_marker_name =   &
                            .test_analysis_1.Upper_DP_Group2_sliderB.FMARKER_9000908  &
   ref_marker_name = .test_analysis_1.Upper_DP_Group2_B.cm  &
   x_force_function = ""  &
   y_force_function = ""  &
   z_force_function = ""
!
force create direct force_vector  &
   force_vector_name = .test_analysis_1.Upper_DP_Group2_fluidmassA  &
   adams_id = 9000730  &
   i_marker_name = .test_analysis_1.Upper_DP_Group2_A.cm  &
   j_floating_marker_name = .test_analysis_1.ground.FMARKER_9000911  &
   ref_marker_name = .test_analysis_1.Upper_DP_Group2_A.cm  &
   x_force_function = ""  &
   y_force_function = ""  &
   z_force_function = ""
!
force create direct force_vector  &
   force_vector_name = .test_analysis_1.Upper_DP_Group2_fluidmassC  &
   adams_id = 9000930  &
   i_marker_name = .test_analysis_1.Upper_DP_Group2_C.cm  &
   j_floating_marker_name = .test_analysis_1.ground.FMARKER_9000912  &
   ref_marker_name = .test_analysis_1.Upper_DP_Group2_C.cm  &
   x_force_function = ""  &
   y_force_function = ""  &
   z_force_function = ""
!
force create direct force_vector  &
   force_vector_name = .test_analysis_1.Upper_DP_Group2_fluidmassB  &
   adams_id = 9000830  &
   i_marker_name = .test_analysis_1.Upper_DP_Group2_B.cm  &
   j_floating_marker_name = .test_analysis_1.ground.FMARKER_9000913  &
   ref_marker_name = .test_analysis_1.Upper_DP_Group2_B.cm  &
   x_force_function = ""  &
   y_force_function = ""  &
   z_force_function = ""
!
force create direct force_vector  &
   force_vector_name = .test_analysis_1.Upper_DP_Group3_sliderA_locator  &
   adams_id = 9001020  &
   i_marker_name = .test_analysis_1.Upper_DP_Group3_A.end_A  &
   j_floating_marker_name =   &
                            .test_analysis_1.Upper_DP_Group3_sliderA.FMARKER_9001207  &
   ref_marker_name = .test_analysis_1.Upper_DP_Group3_A.end_A  &
   x_force_function = ""  &
   y_force_function = ""  &
   z_force_function = ""
!
force create direct force_vector  &
   force_vector_name = .test_analysis_1.Upper_DP_Group3_sliderB_locator  &
   adams_id = 9001120  &
   i_marker_name = .test_analysis_1.Upper_DP_Group3_B.cm  &
   j_floating_marker_name =   &
                            .test_analysis_1.Upper_DP_Group3_sliderB.FMARKER_9001208  &
   ref_marker_name = .test_analysis_1.Upper_DP_Group3_B.cm  &
   x_force_function = ""  &
   y_force_function = ""  &
   z_force_function = ""
!
force create direct force_vector  &
   force_vector_name = .test_analysis_1.Upper_DP_Group3_fluidmassA  &
   adams_id = 9001030  &
   i_marker_name = .test_analysis_1.Upper_DP_Group3_A.cm  &
   j_floating_marker_name = .test_analysis_1.ground.FMARKER_9001211  &
   ref_marker_name = .test_analysis_1.Upper_DP_Group3_A.cm  &
   x_force_function = ""  &
   y_force_function = ""  &
   z_force_function = ""
!
force create direct force_vector  &
   force_vector_name = .test_analysis_1.Upper_DP_Group3_fluidmassC  &
   adams_id = 9001230  &
   i_marker_name = .test_analysis_1.Upper_DP_Group3_C.cm  &
   j_floating_marker_name = .test_analysis_1.ground.FMARKER_9001212  &
   ref_marker_name = .test_analysis_1.Upper_DP_Group3_C.cm  &
   x_force_function = ""  &
   y_force_function = ""  &
   z_force_function = ""
!
force create direct force_vector  &
   force_vector_name = .test_analysis_1.Upper_DP_Group3_fluidmassB  &
   adams_id = 9001130  &
   i_marker_name = .test_analysis_1.Upper_DP_Group3_B.cm  &
   j_floating_marker_name = .test_analysis_1.ground.FMARKER_9001213  &
   ref_marker_name = .test_analysis_1.Upper_DP_Group3_B.cm  &
   x_force_function = ""  &
   y_force_function = ""  &
   z_force_function = ""
!
force create direct force_vector  &
   force_vector_name = .test_analysis_1.Upper_DP_Group4_sliderA_locator  &
   adams_id = 9001320  &
   i_marker_name = .test_analysis_1.Upper_DP_Group4_A.end_A  &
   j_floating_marker_name =   &
                            .test_analysis_1.Upper_DP_Group4_sliderA.FMARKER_9001507  &
   ref_marker_name = .test_analysis_1.Upper_DP_Group4_A.end_A  &
   x_force_function = ""  &
   y_force_function = ""  &
   z_force_function = ""
!
force create direct force_vector  &
   force_vector_name = .test_analysis_1.Upper_DP_Group4_sliderB_locator  &
   adams_id = 9001420  &
   i_marker_name = .test_analysis_1.Upper_DP_Group4_B.cm  &
   j_floating_marker_name =   &
                            .test_analysis_1.Upper_DP_Group4_sliderB.FMARKER_9001508  &
   ref_marker_name = .test_analysis_1.Upper_DP_Group4_B.cm  &
   x_force_function = ""  &
   y_force_function = ""  &
   z_force_function = ""
!
force create direct force_vector  &
   force_vector_name = .test_analysis_1.Upper_DP_Group4_fluidmassA  &
   adams_id = 9001330  &
   i_marker_name = .test_analysis_1.Upper_DP_Group4_A.cm  &
   j_floating_marker_name = .test_analysis_1.ground.FMARKER_9001511  &
   ref_marker_name = .test_analysis_1.Upper_DP_Group4_A.cm  &
   x_force_function = ""  &
   y_force_function = ""  &
   z_force_function = ""
!
force create direct force_vector  &
   force_vector_name = .test_analysis_1.Upper_DP_Group4_fluidmassC  &
   adams_id = 9001530  &
   i_marker_name = .test_analysis_1.Upper_DP_Group4_C.cm  &
   j_floating_marker_name = .test_analysis_1.ground.FMARKER_9001512  &
   ref_marker_name = .test_analysis_1.Upper_DP_Group4_C.cm  &
   x_force_function = ""  &
   y_force_function = ""  &
   z_force_function = ""
!
force create direct force_vector  &
   force_vector_name = .test_analysis_1.Upper_DP_Group4_fluidmassB  &
   adams_id = 9001430  &
   i_marker_name = .test_analysis_1.Upper_DP_Group4_B.cm  &
   j_floating_marker_name = .test_analysis_1.ground.FMARKER_9001513  &
   ref_marker_name = .test_analysis_1.Upper_DP_Group4_B.cm  &
   x_force_function = ""  &
   y_force_function = ""  &
   z_force_function = ""
!
force create direct force_vector  &
   force_vector_name = .test_analysis_1.Upper_DP_Group5_sliderA_locator  &
   adams_id = 9001620  &
   i_marker_name = .test_analysis_1.Upper_DP_Group5_A.end_A  &
   j_floating_marker_name =   &
                            .test_analysis_1.Upper_DP_Group5_sliderA.FMARKER_9001807  &
   ref_marker_name = .test_analysis_1.Upper_DP_Group5_A.end_A  &
   x_force_function = ""  &
   y_force_function = ""  &
   z_force_function = ""
!
force create direct force_vector  &
   force_vector_name = .test_analysis_1.Upper_DP_Group5_sliderB_locator  &
   adams_id = 9001720  &
   i_marker_name = .test_analysis_1.Upper_DP_Group5_B.cm  &
   j_floating_marker_name =   &
                            .test_analysis_1.Upper_DP_Group5_sliderB.FMARKER_9001808  &
   ref_marker_name = .test_analysis_1.Upper_DP_Group5_B.cm  &
   x_force_function = ""  &
   y_force_function = ""  &
   z_force_function = ""
!
force create direct force_vector  &
   force_vector_name = .test_analysis_1.Upper_DP_Group5_fluidmassA  &
   adams_id = 9001630  &
   i_marker_name = .test_analysis_1.Upper_DP_Group5_A.cm  &
   j_floating_marker_name = .test_analysis_1.ground.FMARKER_9001811  &
   ref_marker_name = .test_analysis_1.Upper_DP_Group5_A.cm  &
   x_force_function = ""  &
   y_force_function = ""  &
   z_force_function = ""
!
force create direct force_vector  &
   force_vector_name = .test_analysis_1.Upper_DP_Group5_fluidmassC  &
   adams_id = 9001830  &
   i_marker_name = .test_analysis_1.Upper_DP_Group5_C.cm  &
   j_floating_marker_name = .test_analysis_1.ground.FMARKER_9001812  &
   ref_marker_name = .test_analysis_1.Upper_DP_Group5_C.cm  &
   x_force_function = ""  &
   y_force_function = ""  &
   z_force_function = ""
!
force create direct force_vector  &
   force_vector_name = .test_analysis_1.Upper_DP_Group5_fluidmassB  &
   adams_id = 9001730  &
   i_marker_name = .test_analysis_1.Upper_DP_Group5_B.cm  &
   j_floating_marker_name = .test_analysis_1.ground.FMARKER_9001813  &
   ref_marker_name = .test_analysis_1.Upper_DP_Group5_B.cm  &
   x_force_function = ""  &
   y_force_function = ""  &
   z_force_function = ""
!
force create direct force_vector  &
   force_vector_name = .test_analysis_1.Upper_DP_Group6_sliderA_locator  &
   adams_id = 9001920  &
   i_marker_name = .test_analysis_1.Upper_DP_Group6_A.end_A  &
   j_floating_marker_name =   &
                            .test_analysis_1.Upper_DP_Group6_sliderA.FMARKER_9002107  &
   ref_marker_name = .test_analysis_1.Upper_DP_Group6_A.end_A  &
   x_force_function = ""  &
   y_force_function = ""  &
   z_force_function = ""
!
force create direct force_vector  &
   force_vector_name = .test_analysis_1.Upper_DP_Group6_sliderB_locator  &
   adams_id = 9002020  &
   i_marker_name = .test_analysis_1.Upper_DP_Group6_B.cm  &
   j_floating_marker_name =   &
                            .test_analysis_1.Upper_DP_Group6_sliderB.FMARKER_9002108  &
   ref_marker_name = .test_analysis_1.Upper_DP_Group6_B.cm  &
   x_force_function = ""  &
   y_force_function = ""  &
   z_force_function = ""
!
force create direct force_vector  &
   force_vector_name = .test_analysis_1.Upper_DP_Group6_fluidmassA  &
   adams_id = 9001930  &
   i_marker_name = .test_analysis_1.Upper_DP_Group6_A.cm  &
   j_floating_marker_name = .test_analysis_1.ground.FMARKER_9002111  &
   ref_marker_name = .test_analysis_1.Upper_DP_Group6_A.cm  &
   x_force_function = ""  &
   y_force_function = ""  &
   z_force_function = ""
!
force create direct force_vector  &
   force_vector_name = .test_analysis_1.Upper_DP_Group6_fluidmassC  &
   adams_id = 9002130  &
   i_marker_name = .test_analysis_1.Upper_DP_Group6_C.cm  &
   j_floating_marker_name = .test_analysis_1.ground.FMARKER_9002112  &
   ref_marker_name = .test_analysis_1.Upper_DP_Group6_C.cm  &
   x_force_function = ""  &
   y_force_function = ""  &
   z_force_function = ""
!
force create direct force_vector  &
   force_vector_name = .test_analysis_1.Upper_DP_Group6_fluidmassB  &
   adams_id = 9002030  &
   i_marker_name = .test_analysis_1.Upper_DP_Group6_B.cm  &
   j_floating_marker_name = .test_analysis_1.ground.FMARKER_9002113  &
   ref_marker_name = .test_analysis_1.Upper_DP_Group6_B.cm  &
   x_force_function = ""  &
   y_force_function = ""  &
   z_force_function = ""
!
force create direct force_vector  &
   force_vector_name = .test_analysis_1.Upper_DP_Group7_sliderA_locator  &
   adams_id = 9002220  &
   i_marker_name = .test_analysis_1.Upper_DP_Group7_A.end_A  &
   j_floating_marker_name =   &
                            .test_analysis_1.Upper_DP_Group7_sliderA.FMARKER_9002407  &
   ref_marker_name = .test_analysis_1.Upper_DP_Group7_A.end_A  &
   x_force_function = ""  &
   y_force_function = ""  &
   z_force_function = ""
!
force create direct force_vector  &
   force_vector_name = .test_analysis_1.Upper_DP_Group7_sliderB_locator  &
   adams_id = 9002320  &
   i_marker_name = .test_analysis_1.Upper_DP_Group7_B.cm  &
   j_floating_marker_name =   &
                            .test_analysis_1.Upper_DP_Group7_sliderB.FMARKER_9002408  &
   ref_marker_name = .test_analysis_1.Upper_DP_Group7_B.cm  &
   x_force_function = ""  &
   y_force_function = ""  &
   z_force_function = ""
!
force create direct force_vector  &
   force_vector_name = .test_analysis_1.Upper_DP_Group7_fluidmassA  &
   adams_id = 9002230  &
   i_marker_name = .test_analysis_1.Upper_DP_Group7_A.cm  &
   j_floating_marker_name = .test_analysis_1.ground.FMARKER_9002411  &
   ref_marker_name = .test_analysis_1.Upper_DP_Group7_A.cm  &
   x_force_function = ""  &
   y_force_function = ""  &
   z_force_function = ""
!
force create direct force_vector  &
   force_vector_name = .test_analysis_1.Upper_DP_Group7_fluidmassC  &
   adams_id = 9002430  &
   i_marker_name = .test_analysis_1.Upper_DP_Group7_C.cm  &
   j_floating_marker_name = .test_analysis_1.ground.FMARKER_9002412  &
   ref_marker_name = .test_analysis_1.Upper_DP_Group7_C.cm  &
   x_force_function = ""  &
   y_force_function = ""  &
   z_force_function = ""
!
force create direct force_vector  &
   force_vector_name = .test_analysis_1.Upper_DP_Group7_fluidmassB  &
   adams_id = 9002330  &
   i_marker_name = .test_analysis_1.Upper_DP_Group7_B.cm  &
   j_floating_marker_name = .test_analysis_1.ground.FMARKER_9002413  &
   ref_marker_name = .test_analysis_1.Upper_DP_Group7_B.cm  &
   x_force_function = ""  &
   y_force_function = ""  &
   z_force_function = ""
!
force create direct force_vector  &
   force_vector_name = .test_analysis_1.Upper_DP_Group8_sliderA_locator  &
   adams_id = 9002520  &
   i_marker_name = .test_analysis_1.Upper_DP_Group8_A.end_A  &
   j_floating_marker_name =   &
                            .test_analysis_1.Upper_DP_Group8_sliderA.FMARKER_9002707  &
   ref_marker_name = .test_analysis_1.Upper_DP_Group8_A.end_A  &
   x_force_function = ""  &
   y_force_function = ""  &
   z_force_function = ""
!
force create direct force_vector  &
   force_vector_name = .test_analysis_1.Upper_DP_Group8_sliderB_locator  &
   adams_id = 9002620  &
   i_marker_name = .test_analysis_1.Upper_DP_Group8_B.cm  &
   j_floating_marker_name =   &
                            .test_analysis_1.Upper_DP_Group8_sliderB.FMARKER_9002708  &
   ref_marker_name = .test_analysis_1.Upper_DP_Group8_B.cm  &
   x_force_function = ""  &
   y_force_function = ""  &
   z_force_function = ""
!
force create direct force_vector  &
   force_vector_name = .test_analysis_1.Upper_DP_Group8_fluidmassA  &
   adams_id = 9002530  &
   i_marker_name = .test_analysis_1.Upper_DP_Group8_A.cm  &
   j_floating_marker_name = .test_analysis_1.ground.FMARKER_9002711  &
   ref_marker_name = .test_analysis_1.Upper_DP_Group8_A.cm  &
   x_force_function = ""  &
   y_force_function = ""  &
   z_force_function = ""
!
force create direct force_vector  &
   force_vector_name = .test_analysis_1.Upper_DP_Group8_fluidmassC  &
   adams_id = 9002730  &
   i_marker_name = .test_analysis_1.Upper_DP_Group8_C.cm  &
   j_floating_marker_name = .test_analysis_1.ground.FMARKER_9002712  &
   ref_marker_name = .test_analysis_1.Upper_DP_Group8_C.cm  &
   x_force_function = ""  &
   y_force_function = ""  &
   z_force_function = ""
!
force create direct force_vector  &
   force_vector_name = .test_analysis_1.Upper_DP_Group8_fluidmassB  &
   adams_id = 9002630  &
   i_marker_name = .test_analysis_1.Upper_DP_Group8_B.cm  &
   j_floating_marker_name = .test_analysis_1.ground.FMARKER_9002713  &
   ref_marker_name = .test_analysis_1.Upper_DP_Group8_B.cm  &
   x_force_function = ""  &
   y_force_function = ""  &
   z_force_function = ""
!
force create direct force_vector  &
   force_vector_name = .test_analysis_1.Upper_DP_Group9_sliderA_locator  &
   adams_id = 9002820  &
   i_marker_name = .test_analysis_1.Upper_DP_Group9_A.end_A  &
   j_floating_marker_name =   &
                            .test_analysis_1.Upper_DP_Group9_sliderA.FMARKER_9003007  &
   ref_marker_name = .test_analysis_1.Upper_DP_Group9_A.end_A  &
   x_force_function = ""  &
   y_force_function = ""  &
   z_force_function = ""
!
force create direct force_vector  &
   force_vector_name = .test_analysis_1.Upper_DP_Group9_sliderB_locator  &
   adams_id = 9002920  &
   i_marker_name = .test_analysis_1.Upper_DP_Group9_B.cm  &
   j_floating_marker_name =   &
                            .test_analysis_1.Upper_DP_Group9_sliderB.FMARKER_9003008  &
   ref_marker_name = .test_analysis_1.Upper_DP_Group9_B.cm  &
   x_force_function = ""  &
   y_force_function = ""  &
   z_force_function = ""
!
force create direct force_vector  &
   force_vector_name = .test_analysis_1.Upper_DP_Group9_fluidmassA  &
   adams_id = 9002830  &
   i_marker_name = .test_analysis_1.Upper_DP_Group9_A.cm  &
   j_floating_marker_name = .test_analysis_1.ground.FMARKER_9003011  &
   ref_marker_name = .test_analysis_1.Upper_DP_Group9_A.cm  &
   x_force_function = ""  &
   y_force_function = ""  &
   z_force_function = ""
!
force create direct force_vector  &
   force_vector_name = .test_analysis_1.Upper_DP_Group9_fluidmassC  &
   adams_id = 9003030  &
   i_marker_name = .test_analysis_1.Upper_DP_Group9_C.cm  &
   j_floating_marker_name = .test_analysis_1.ground.FMARKER_9003012  &
   ref_marker_name = .test_analysis_1.Upper_DP_Group9_C.cm  &
   x_force_function = ""  &
   y_force_function = ""  &
   z_force_function = ""
!
force create direct force_vector  &
   force_vector_name = .test_analysis_1.Upper_DP_Group9_fluidmassB  &
   adams_id = 9002930  &
   i_marker_name = .test_analysis_1.Upper_DP_Group9_B.cm  &
   j_floating_marker_name = .test_analysis_1.ground.FMARKER_9003013  &
   ref_marker_name = .test_analysis_1.Upper_DP_Group9_B.cm  &
   x_force_function = ""  &
   y_force_function = ""  &
   z_force_function = ""
!
force create direct force_vector  &
   force_vector_name = .test_analysis_1.Upper_DP_Group10_sliderA_locator  &
   adams_id = 9003120  &
   i_marker_name = .test_analysis_1.Upper_DP_Group10_A.end_A  &
   j_floating_marker_name =   &
                            .test_analysis_1.Upper_DP_Group10_sliderA.FMARKER_9003307  &
   ref_marker_name = .test_analysis_1.Upper_DP_Group10_A.end_A  &
   x_force_function = ""  &
   y_force_function = ""  &
   z_force_function = ""
!
force create direct force_vector  &
   force_vector_name = .test_analysis_1.Upper_DP_Group10_sliderB_locator  &
   adams_id = 9003220  &
   i_marker_name = .test_analysis_1.Upper_DP_Group10_B.cm  &
   j_floating_marker_name =   &
                            .test_analysis_1.Upper_DP_Group10_sliderB.FMARKER_9003308  &
   ref_marker_name = .test_analysis_1.Upper_DP_Group10_B.cm  &
   x_force_function = ""  &
   y_force_function = ""  &
   z_force_function = ""
!
force create direct force_vector  &
   force_vector_name = .test_analysis_1.Upper_DP_Group10_fluidmassA  &
   adams_id = 9003130  &
   i_marker_name = .test_analysis_1.Upper_DP_Group10_A.cm  &
   j_floating_marker_name = .test_analysis_1.ground.FMARKER_9003311  &
   ref_marker_name = .test_analysis_1.Upper_DP_Group10_A.cm  &
   x_force_function = ""  &
   y_force_function = ""  &
   z_force_function = ""
!
force create direct force_vector  &
   force_vector_name = .test_analysis_1.Upper_DP_Group10_fluidmassC  &
   adams_id = 9003330  &
   i_marker_name = .test_analysis_1.Upper_DP_Group10_C.cm  &
   j_floating_marker_name = .test_analysis_1.ground.FMARKER_9003312  &
   ref_marker_name = .test_analysis_1.Upper_DP_Group10_C.cm  &
   x_force_function = ""  &
   y_force_function = ""  &
   z_force_function = ""
!
force create direct force_vector  &
   force_vector_name = .test_analysis_1.Upper_DP_Group10_fluidmassB  &
   adams_id = 9003230  &
   i_marker_name = .test_analysis_1.Upper_DP_Group10_B.cm  &
   j_floating_marker_name = .test_analysis_1.ground.FMARKER_9003313  &
   ref_marker_name = .test_analysis_1.Upper_DP_Group10_B.cm  &
   x_force_function = ""  &
   y_force_function = ""  &
   z_force_function = ""
!
force create direct force_vector  &
   force_vector_name = .test_analysis_1.Upper_DP_Group11_sliderA_locator  &
   adams_id = 9003420  &
   i_marker_name = .test_analysis_1.Upper_DP_Group11_A.end_A  &
   j_floating_marker_name =   &
                            .test_analysis_1.Upper_DP_Group11_sliderA.FMARKER_9003607  &
   ref_marker_name = .test_analysis_1.Upper_DP_Group11_A.end_A  &
   x_force_function = ""  &
   y_force_function = ""  &
   z_force_function = ""
!
force create direct force_vector  &
   force_vector_name = .test_analysis_1.Upper_DP_Group11_sliderB_locator  &
   adams_id = 9003520  &
   i_marker_name = .test_analysis_1.Upper_DP_Group11_B.cm  &
   j_floating_marker_name =   &
                            .test_analysis_1.Upper_DP_Group11_sliderB.FMARKER_9003608  &
   ref_marker_name = .test_analysis_1.Upper_DP_Group11_B.cm  &
   x_force_function = ""  &
   y_force_function = ""  &
   z_force_function = ""
!
force create direct force_vector  &
   force_vector_name = .test_analysis_1.Upper_DP_Group11_fluidmassA  &
   adams_id = 9003430  &
   i_marker_name = .test_analysis_1.Upper_DP_Group11_A.cm  &
   j_floating_marker_name = .test_analysis_1.ground.FMARKER_9003611  &
   ref_marker_name = .test_analysis_1.Upper_DP_Group11_A.cm  &
   x_force_function = ""  &
   y_force_function = ""  &
   z_force_function = ""
!
force create direct force_vector  &
   force_vector_name = .test_analysis_1.Upper_DP_Group11_fluidmassC  &
   adams_id = 9003630  &
   i_marker_name = .test_analysis_1.Upper_DP_Group11_C.cm  &
   j_floating_marker_name = .test_analysis_1.ground.FMARKER_9003612  &
   ref_marker_name = .test_analysis_1.Upper_DP_Group11_C.cm  &
   x_force_function = ""  &
   y_force_function = ""  &
   z_force_function = ""
!
force create direct force_vector  &
   force_vector_name = .test_analysis_1.Upper_DP_Group11_fluidmassB  &
   adams_id = 9003530  &
   i_marker_name = .test_analysis_1.Upper_DP_Group11_B.cm  &
   j_floating_marker_name = .test_analysis_1.ground.FMARKER_9003613  &
   ref_marker_name = .test_analysis_1.Upper_DP_Group11_B.cm  &
   x_force_function = ""  &
   y_force_function = ""  &
   z_force_function = ""
!
force create direct force_vector  &
   force_vector_name = .test_analysis_1.Upper_DP_Group12_sliderA_locator  &
   adams_id = 9003720  &
   i_marker_name = .test_analysis_1.Upper_DP_Group12_A.end_A  &
   j_floating_marker_name =   &
                            .test_analysis_1.Upper_DP_Group12_sliderA.FMARKER_9003907  &
   ref_marker_name = .test_analysis_1.Upper_DP_Group12_A.end_A  &
   x_force_function = ""  &
   y_force_function = ""  &
   z_force_function = ""
!
force create direct force_vector  &
   force_vector_name = .test_analysis_1.Upper_DP_Group12_sliderB_locator  &
   adams_id = 9003820  &
   i_marker_name = .test_analysis_1.Upper_DP_Group12_B.cm  &
   j_floating_marker_name =   &
                            .test_analysis_1.Upper_DP_Group12_sliderB.FMARKER_9003908  &
   ref_marker_name = .test_analysis_1.Upper_DP_Group12_B.cm  &
   x_force_function = ""  &
   y_force_function = ""  &
   z_force_function = ""
!
force create direct force_vector  &
   force_vector_name = .test_analysis_1.Upper_DP_Group12_fluidmassA  &
   adams_id = 9003730  &
   i_marker_name = .test_analysis_1.Upper_DP_Group12_A.cm  &
   j_floating_marker_name = .test_analysis_1.ground.FMARKER_9003911  &
   ref_marker_name = .test_analysis_1.Upper_DP_Group12_A.cm  &
   x_force_function = ""  &
   y_force_function = ""  &
   z_force_function = ""
!
force create direct force_vector  &
   force_vector_name = .test_analysis_1.Upper_DP_Group12_fluidmassC  &
   adams_id = 9003930  &
   i_marker_name = .test_analysis_1.Upper_DP_Group12_C.cm  &
   j_floating_marker_name = .test_analysis_1.ground.FMARKER_9003912  &
   ref_marker_name = .test_analysis_1.Upper_DP_Group12_C.cm  &
   x_force_function = ""  &
   y_force_function = ""  &
   z_force_function = ""
!
force create direct force_vector  &
   force_vector_name = .test_analysis_1.Upper_DP_Group12_fluidmassB  &
   adams_id = 9003830  &
   i_marker_name = .test_analysis_1.Upper_DP_Group12_B.cm  &
   j_floating_marker_name = .test_analysis_1.ground.FMARKER_9003913  &
   ref_marker_name = .test_analysis_1.Upper_DP_Group12_B.cm  &
   x_force_function = ""  &
   y_force_function = ""  &
   z_force_function = ""
!
force create direct force_vector  &
   force_vector_name = .test_analysis_1.Upper_DP_Group13_sliderA_locator  &
   adams_id = 9004020  &
   i_marker_name = .test_analysis_1.Upper_DP_Group13_A.end_A  &
   j_floating_marker_name =   &
                            .test_analysis_1.Upper_DP_Group13_sliderA.FMARKER_9004207  &
   ref_marker_name = .test_analysis_1.Upper_DP_Group13_A.end_A  &
   x_force_function = ""  &
   y_force_function = ""  &
   z_force_function = ""
!
force create direct force_vector  &
   force_vector_name = .test_analysis_1.Upper_DP_Group13_sliderB_locator  &
   adams_id = 9004120  &
   i_marker_name = .test_analysis_1.Upper_DP_Group13_B.cm  &
   j_floating_marker_name =   &
                            .test_analysis_1.Upper_DP_Group13_sliderB.FMARKER_9004208  &
   ref_marker_name = .test_analysis_1.Upper_DP_Group13_B.cm  &
   x_force_function = ""  &
   y_force_function = ""  &
   z_force_function = ""
!
force create direct force_vector  &
   force_vector_name = .test_analysis_1.Upper_DP_Group13_fluidmassA  &
   adams_id = 9004030  &
   i_marker_name = .test_analysis_1.Upper_DP_Group13_A.cm  &
   j_floating_marker_name = .test_analysis_1.ground.FMARKER_9004211  &
   ref_marker_name = .test_analysis_1.Upper_DP_Group13_A.cm  &
   x_force_function = ""  &
   y_force_function = ""  &
   z_force_function = ""
!
force create direct force_vector  &
   force_vector_name = .test_analysis_1.Upper_DP_Group13_fluidmassC  &
   adams_id = 9004230  &
   i_marker_name = .test_analysis_1.Upper_DP_Group13_C.cm  &
   j_floating_marker_name = .test_analysis_1.ground.FMARKER_9004212  &
   ref_marker_name = .test_analysis_1.Upper_DP_Group13_C.cm  &
   x_force_function = ""  &
   y_force_function = ""  &
   z_force_function = ""
!
force create direct force_vector  &
   force_vector_name = .test_analysis_1.Upper_DP_Group13_fluidmassB  &
   adams_id = 9004130  &
   i_marker_name = .test_analysis_1.Upper_DP_Group13_B.cm  &
   j_floating_marker_name = .test_analysis_1.ground.FMARKER_9004213  &
   ref_marker_name = .test_analysis_1.Upper_DP_Group13_B.cm  &
   x_force_function = ""  &
   y_force_function = ""  &
   z_force_function = ""
!
force create direct force_vector  &
   force_vector_name = .test_analysis_1.Upper_DP_Group14_sliderA_locator  &
   adams_id = 9004320  &
   i_marker_name = .test_analysis_1.Upper_DP_Group14_A.end_A  &
   j_floating_marker_name =   &
                            .test_analysis_1.Upper_DP_Group14_sliderA.FMARKER_9004507  &
   ref_marker_name = .test_analysis_1.Upper_DP_Group14_A.end_A  &
   x_force_function = ""  &
   y_force_function = ""  &
   z_force_function = ""
!
force create direct force_vector  &
   force_vector_name = .test_analysis_1.Upper_DP_Group14_sliderB_locator  &
   adams_id = 9004420  &
   i_marker_name = .test_analysis_1.Upper_DP_Group14_B.cm  &
   j_floating_marker_name =   &
                            .test_analysis_1.Upper_DP_Group14_sliderB.FMARKER_9004508  &
   ref_marker_name = .test_analysis_1.Upper_DP_Group14_B.cm  &
   x_force_function = ""  &
   y_force_function = ""  &
   z_force_function = ""
!
force create direct force_vector  &
   force_vector_name = .test_analysis_1.Upper_DP_Group14_fluidmassA  &
   adams_id = 9004330  &
   i_marker_name = .test_analysis_1.Upper_DP_Group14_A.cm  &
   j_floating_marker_name = .test_analysis_1.ground.FMARKER_9004511  &
   ref_marker_name = .test_analysis_1.Upper_DP_Group14_A.cm  &
   x_force_function = ""  &
   y_force_function = ""  &
   z_force_function = ""
!
force create direct force_vector  &
   force_vector_name = .test_analysis_1.Upper_DP_Group14_fluidmassC  &
   adams_id = 9004530  &
   i_marker_name = .test_analysis_1.Upper_DP_Group14_C.cm  &
   j_floating_marker_name = .test_analysis_1.ground.FMARKER_9004512  &
   ref_marker_name = .test_analysis_1.Upper_DP_Group14_C.cm  &
   x_force_function = ""  &
   y_force_function = ""  &
   z_force_function = ""
!
force create direct force_vector  &
   force_vector_name = .test_analysis_1.Upper_DP_Group14_fluidmassB  &
   adams_id = 9004430  &
   i_marker_name = .test_analysis_1.Upper_DP_Group14_B.cm  &
   j_floating_marker_name = .test_analysis_1.ground.FMARKER_9004513  &
   ref_marker_name = .test_analysis_1.Upper_DP_Group14_B.cm  &
   x_force_function = ""  &
   y_force_function = ""  &
   z_force_function = ""
!
force create direct force_vector  &
   force_vector_name = .test_analysis_1.Upper_DP_Group15_sliderA_locator  &
   adams_id = 9004620  &
   i_marker_name = .test_analysis_1.Upper_DP_Group15_A.end_A  &
   j_floating_marker_name =   &
                            .test_analysis_1.Upper_DP_Group15_sliderA.FMARKER_9004807  &
   ref_marker_name = .test_analysis_1.Upper_DP_Group15_A.end_A  &
   x_force_function = ""  &
   y_force_function = ""  &
   z_force_function = ""
!
force create direct force_vector  &
   force_vector_name = .test_analysis_1.Upper_DP_Group15_sliderB_locator  &
   adams_id = 9004720  &
   i_marker_name = .test_analysis_1.Upper_DP_Group15_B.cm  &
   j_floating_marker_name =   &
                            .test_analysis_1.Upper_DP_Group15_sliderB.FMARKER_9004808  &
   ref_marker_name = .test_analysis_1.Upper_DP_Group15_B.cm  &
   x_force_function = ""  &
   y_force_function = ""  &
   z_force_function = ""
!
force create direct force_vector  &
   force_vector_name = .test_analysis_1.Upper_DP_Group15_fluidmassA  &
   adams_id = 9004630  &
   i_marker_name = .test_analysis_1.Upper_DP_Group15_A.cm  &
   j_floating_marker_name = .test_analysis_1.ground.FMARKER_9004811  &
   ref_marker_name = .test_analysis_1.Upper_DP_Group15_A.cm  &
   x_force_function = ""  &
   y_force_function = ""  &
   z_force_function = ""
!
force create direct force_vector  &
   force_vector_name = .test_analysis_1.Upper_DP_Group15_fluidmassC  &
   adams_id = 9004830  &
   i_marker_name = .test_analysis_1.Upper_DP_Group15_C.cm  &
   j_floating_marker_name = .test_analysis_1.ground.FMARKER_9004812  &
   ref_marker_name = .test_analysis_1.Upper_DP_Group15_C.cm  &
   x_force_function = ""  &
   y_force_function = ""  &
   z_force_function = ""
!
force create direct force_vector  &
   force_vector_name = .test_analysis_1.Upper_DP_Group15_fluidmassB  &
   adams_id = 9004730  &
   i_marker_name = .test_analysis_1.Upper_DP_Group15_B.cm  &
   j_floating_marker_name = .test_analysis_1.ground.FMARKER_9004813  &
   ref_marker_name = .test_analysis_1.Upper_DP_Group15_B.cm  &
   x_force_function = ""  &
   y_force_function = ""  &
   z_force_function = ""
!
force create direct force_vector  &
   force_vector_name = .test_analysis_1.Upper_DP_Group16_sliderA_locator  &
   adams_id = 9004920  &
   i_marker_name = .test_analysis_1.Upper_DP_Group16_A.end_A  &
   j_floating_marker_name =   &
                            .test_analysis_1.Upper_DP_Group16_sliderA.FMARKER_9005107  &
   ref_marker_name = .test_analysis_1.Upper_DP_Group16_A.end_A  &
   x_force_function = ""  &
   y_force_function = ""  &
   z_force_function = ""
!
force create direct force_vector  &
   force_vector_name = .test_analysis_1.Upper_DP_Group16_sliderB_locator  &
   adams_id = 9005020  &
   i_marker_name = .test_analysis_1.Upper_DP_Group16_B.cm  &
   j_floating_marker_name =   &
                            .test_analysis_1.Upper_DP_Group16_sliderB.FMARKER_9005108  &
   ref_marker_name = .test_analysis_1.Upper_DP_Group16_B.cm  &
   x_force_function = ""  &
   y_force_function = ""  &
   z_force_function = ""
!
force create direct force_vector  &
   force_vector_name = .test_analysis_1.Upper_DP_Group16_fluidmassA  &
   adams_id = 9004930  &
   i_marker_name = .test_analysis_1.Upper_DP_Group16_A.cm  &
   j_floating_marker_name = .test_analysis_1.ground.FMARKER_9005111  &
   ref_marker_name = .test_analysis_1.Upper_DP_Group16_A.cm  &
   x_force_function = ""  &
   y_force_function = ""  &
   z_force_function = ""
!
force create direct force_vector  &
   force_vector_name = .test_analysis_1.Upper_DP_Group16_fluidmassC  &
   adams_id = 9005130  &
   i_marker_name = .test_analysis_1.Upper_DP_Group16_C.cm  &
   j_floating_marker_name = .test_analysis_1.ground.FMARKER_9005112  &
   ref_marker_name = .test_analysis_1.Upper_DP_Group16_C.cm  &
   x_force_function = ""  &
   y_force_function = ""  &
   z_force_function = ""
!
force create direct force_vector  &
   force_vector_name = .test_analysis_1.Upper_DP_Group16_fluidmassB  &
   adams_id = 9005030  &
   i_marker_name = .test_analysis_1.Upper_DP_Group16_B.cm  &
   j_floating_marker_name = .test_analysis_1.ground.FMARKER_9005113  &
   ref_marker_name = .test_analysis_1.Upper_DP_Group16_B.cm  &
   x_force_function = ""  &
   y_force_function = ""  &
   z_force_function = ""
!
force create direct force_vector  &
   force_vector_name = .test_analysis_1.Upper_DP_Group17_sliderA_locator  &
   adams_id = 9005220  &
   i_marker_name = .test_analysis_1.Upper_DP_Group17_A.end_A  &
   j_floating_marker_name =   &
                            .test_analysis_1.Upper_DP_Group17_sliderA.FMARKER_9005407  &
   ref_marker_name = .test_analysis_1.Upper_DP_Group17_A.end_A  &
   x_force_function = ""  &
   y_force_function = ""  &
   z_force_function = ""
!
force create direct force_vector  &
   force_vector_name = .test_analysis_1.Upper_DP_Group17_sliderB_locator  &
   adams_id = 9005320  &
   i_marker_name = .test_analysis_1.Upper_DP_Group17_B.cm  &
   j_floating_marker_name =   &
                            .test_analysis_1.Upper_DP_Group17_sliderB.FMARKER_9005408  &
   ref_marker_name = .test_analysis_1.Upper_DP_Group17_B.cm  &
   x_force_function = ""  &
   y_force_function = ""  &
   z_force_function = ""
!
force create direct force_vector  &
   force_vector_name = .test_analysis_1.Upper_DP_Group17_fluidmassA  &
   adams_id = 9005230  &
   i_marker_name = .test_analysis_1.Upper_DP_Group17_A.cm  &
   j_floating_marker_name = .test_analysis_1.ground.FMARKER_9005411  &
   ref_marker_name = .test_analysis_1.Upper_DP_Group17_A.cm  &
   x_force_function = ""  &
   y_force_function = ""  &
   z_force_function = ""
!
force create direct force_vector  &
   force_vector_name = .test_analysis_1.Upper_DP_Group17_fluidmassC  &
   adams_id = 9005430  &
   i_marker_name = .test_analysis_1.Upper_DP_Group17_C.cm  &
   j_floating_marker_name = .test_analysis_1.ground.FMARKER_9005412  &
   ref_marker_name = .test_analysis_1.Upper_DP_Group17_C.cm  &
   x_force_function = ""  &
   y_force_function = ""  &
   z_force_function = ""
!
force create direct force_vector  &
   force_vector_name = .test_analysis_1.Upper_DP_Group17_fluidmassB  &
   adams_id = 9005330  &
   i_marker_name = .test_analysis_1.Upper_DP_Group17_B.cm  &
   j_floating_marker_name = .test_analysis_1.ground.FMARKER_9005413  &
   ref_marker_name = .test_analysis_1.Upper_DP_Group17_B.cm  &
   x_force_function = ""  &
   y_force_function = ""  &
   z_force_function = ""
!
force create direct force_vector  &
   force_vector_name = .test_analysis_1.Upper_DP_Group18_sliderA_locator  &
   adams_id = 9005520  &
   i_marker_name = .test_analysis_1.Upper_DP_Group18_A.end_A  &
   j_floating_marker_name =   &
                            .test_analysis_1.Upper_DP_Group18_sliderA.FMARKER_9005707  &
   ref_marker_name = .test_analysis_1.Upper_DP_Group18_A.end_A  &
   x_force_function = ""  &
   y_force_function = ""  &
   z_force_function = ""
!
force create direct force_vector  &
   force_vector_name = .test_analysis_1.Upper_DP_Group18_sliderB_locator  &
   adams_id = 9005620  &
   i_marker_name = .test_analysis_1.Upper_DP_Group18_B.cm  &
   j_floating_marker_name =   &
                            .test_analysis_1.Upper_DP_Group18_sliderB.FMARKER_9005708  &
   ref_marker_name = .test_analysis_1.Upper_DP_Group18_B.cm  &
   x_force_function = ""  &
   y_force_function = ""  &
   z_force_function = ""
!
force create direct force_vector  &
   force_vector_name = .test_analysis_1.Upper_DP_Group18_fluidmassA  &
   adams_id = 9005530  &
   i_marker_name = .test_analysis_1.Upper_DP_Group18_A.cm  &
   j_floating_marker_name = .test_analysis_1.ground.FMARKER_9005711  &
   ref_marker_name = .test_analysis_1.Upper_DP_Group18_A.cm  &
   x_force_function = ""  &
   y_force_function = ""  &
   z_force_function = ""
!
force create direct force_vector  &
   force_vector_name = .test_analysis_1.Upper_DP_Group18_fluidmassC  &
   adams_id = 9005730  &
   i_marker_name = .test_analysis_1.Upper_DP_Group18_C.cm  &
   j_floating_marker_name = .test_analysis_1.ground.FMARKER_9005712  &
   ref_marker_name = .test_analysis_1.Upper_DP_Group18_C.cm  &
   x_force_function = ""  &
   y_force_function = ""  &
   z_force_function = ""
!
force create direct force_vector  &
   force_vector_name = .test_analysis_1.Upper_DP_Group18_fluidmassB  &
   adams_id = 9005630  &
   i_marker_name = .test_analysis_1.Upper_DP_Group18_B.cm  &
   j_floating_marker_name = .test_analysis_1.ground.FMARKER_9005713  &
   ref_marker_name = .test_analysis_1.Upper_DP_Group18_B.cm  &
   x_force_function = ""  &
   y_force_function = ""  &
   z_force_function = ""
!
force create direct force_vector  &
   force_vector_name = .test_analysis_1.Upper_DP_Group19_sliderA_locator  &
   adams_id = 9005820  &
   i_marker_name = .test_analysis_1.Upper_DP_Group19_A.end_A  &
   j_floating_marker_name =   &
                            .test_analysis_1.Upper_DP_Group19_sliderA.FMARKER_9006007  &
   ref_marker_name = .test_analysis_1.Upper_DP_Group19_A.end_A  &
   x_force_function = ""  &
   y_force_function = ""  &
   z_force_function = ""
!
force create direct force_vector  &
   force_vector_name = .test_analysis_1.Upper_DP_Group19_sliderB_locator  &
   adams_id = 9005920  &
   i_marker_name = .test_analysis_1.Upper_DP_Group19_B.cm  &
   j_floating_marker_name =   &
                            .test_analysis_1.Upper_DP_Group19_sliderB.FMARKER_9006008  &
   ref_marker_name = .test_analysis_1.Upper_DP_Group19_B.cm  &
   x_force_function = ""  &
   y_force_function = ""  &
   z_force_function = ""
!
force create direct force_vector  &
   force_vector_name = .test_analysis_1.Upper_DP_Group19_fluidmassA  &
   adams_id = 9005830  &
   i_marker_name = .test_analysis_1.Upper_DP_Group19_A.cm  &
   j_floating_marker_name = .test_analysis_1.ground.FMARKER_9006011  &
   ref_marker_name = .test_analysis_1.Upper_DP_Group19_A.cm  &
   x_force_function = ""  &
   y_force_function = ""  &
   z_force_function = ""
!
force create direct force_vector  &
   force_vector_name = .test_analysis_1.Upper_DP_Group19_fluidmassC  &
   adams_id = 9006030  &
   i_marker_name = .test_analysis_1.Upper_DP_Group19_C.cm  &
   j_floating_marker_name = .test_analysis_1.ground.FMARKER_9006012  &
   ref_marker_name = .test_analysis_1.Upper_DP_Group19_C.cm  &
   x_force_function = ""  &
   y_force_function = ""  &
   z_force_function = ""
!
force create direct force_vector  &
   force_vector_name = .test_analysis_1.Upper_DP_Group19_fluidmassB  &
   adams_id = 9005930  &
   i_marker_name = .test_analysis_1.Upper_DP_Group19_B.cm  &
   j_floating_marker_name = .test_analysis_1.ground.FMARKER_9006013  &
   ref_marker_name = .test_analysis_1.Upper_DP_Group19_B.cm  &
   x_force_function = ""  &
   y_force_function = ""  &
   z_force_function = ""
!
force create direct force_vector  &
   force_vector_name = .test_analysis_1.Upper_DP_Group20_sliderA_locator  &
   adams_id = 9006120  &
   i_marker_name = .test_analysis_1.Upper_DP_Group20_A.end_A  &
   j_floating_marker_name =   &
                            .test_analysis_1.Upper_DP_Group20_sliderA.FMARKER_9006311  &
   ref_marker_name = .test_analysis_1.Upper_DP_Group20_A.end_A  &
   x_force_function = ""  &
   y_force_function = ""  &
   z_force_function = ""
!
force create direct force_vector  &
   force_vector_name = .test_analysis_1.Upper_DP_Group20_sliderB_locator  &
   adams_id = 9006220  &
   i_marker_name = .test_analysis_1.Upper_DP_Group20_B.cm  &
   j_floating_marker_name =   &
                            .test_analysis_1.Upper_DP_Group20_sliderB.FMARKER_9006312  &
   ref_marker_name = .test_analysis_1.Upper_DP_Group20_B.cm  &
   x_force_function = ""  &
   y_force_function = ""  &
   z_force_function = ""
!
force create direct force_vector  &
   force_vector_name = .test_analysis_1.Upper_DP_Group20_sliderC_locator  &
   adams_id = 9006320  &
   i_marker_name = .test_analysis_1.Upper_DP_Group20_C.end_C  &
   j_floating_marker_name =   &
                            .test_analysis_1.Upper_DP_Group20_sliderC.FMARKER_9006313  &
   ref_marker_name = .test_analysis_1.Upper_DP_Group20_C.end_C  &
   x_force_function = ""  &
   y_force_function = ""  &
   z_force_function = ""
!
force create direct force_vector  &
   force_vector_name = .test_analysis_1.Upper_DP_Group20_fluidmassA  &
   adams_id = 9006130  &
   i_marker_name = .test_analysis_1.Upper_DP_Group20_A.cm  &
   j_floating_marker_name = .test_analysis_1.ground.FMARKER_9006317  &
   ref_marker_name = .test_analysis_1.Upper_DP_Group20_A.cm  &
   x_force_function = ""  &
   y_force_function = ""  &
   z_force_function = ""
!
force create direct force_vector  &
   force_vector_name = .test_analysis_1.Upper_DP_Group20_fluidmassC  &
   adams_id = 9006330  &
   i_marker_name = .test_analysis_1.Upper_DP_Group20_C.cm  &
   j_floating_marker_name = .test_analysis_1.ground.FMARKER_9006318  &
   ref_marker_name = .test_analysis_1.Upper_DP_Group20_C.cm  &
   x_force_function = ""  &
   y_force_function = ""  &
   z_force_function = ""
!
force create direct force_vector  &
   force_vector_name = .test_analysis_1.Upper_DP_Group20_fluidmassB  &
   adams_id = 9006230  &
   i_marker_name = .test_analysis_1.Upper_DP_Group20_B.cm  &
   j_floating_marker_name = .test_analysis_1.ground.FMARKER_9006319  &
   ref_marker_name = .test_analysis_1.Upper_DP_Group20_B.cm  &
   x_force_function = ""  &
   y_force_function = ""  &
   z_force_function = ""
!
force create direct force_vector  &
   force_vector_name = .test_analysis_1.TOSLoad  &
   adams_id = 9006331  &
   i_marker_name = .test_analysis_1.Upper_DP_Group20_C.end_C  &
   j_floating_marker_name = .test_analysis_1.ground.FMARKER_9006321  &
   ref_marker_name = .test_analysis_1.Upper_DP_Group20_sliderC.cm  &
   x_force_function = ""  &
   y_force_function = ""  &
   z_force_function = ""
!
force create direct torque_vector  &
   torque_vector_name = .test_analysis_1.Hole_Bottom_damper  &
   adams_id = 9006311  &
   i_marker_name = .test_analysis_1.Hole_Bottom.cm  &
   j_floating_marker_name = .test_analysis_1.ground.FMARKER_3002293  &
   ref_marker_name = .test_analysis_1.Hole_Bottom.cm  &
   x_torque_function = ""  &
   y_torque_function = ""  &
   z_torque_function = ""
!
force create direct torque_vector  &
   torque_vector_name = .test_analysis_1.test_pdc_01_sliderA_damper  &
   adams_id = 9000010  &
   i_marker_name = .test_analysis_1.test_pdc_01_sliderA.cm  &
   j_floating_marker_name = .test_analysis_1.ground.FMARKER_9000103  &
   ref_marker_name = .test_analysis_1.test_pdc_01_sliderA.cm  &
   x_torque_function = ""  &
   y_torque_function = ""  &
   z_torque_function = ""
!
force create direct torque_vector  &
   torque_vector_name = .test_analysis_1.example_stabilizer_02_sliderA_damper  &
   adams_id = 9000210  &
   i_marker_name = .test_analysis_1.example_stabilizer_02_sliderA.cm  &
   j_floating_marker_name = .test_analysis_1.ground.FMARKER_9000306  &
   ref_marker_name = .test_analysis_1.example_stabilizer_02_sliderA.cm  &
   x_torque_function = ""  &
   y_torque_function = ""  &
   z_torque_function = ""
!
force create direct torque_vector  &
   torque_vector_name = .test_analysis_1.example_stabilizer_02_sliderB_damper  &
   adams_id = 9000310  &
   i_marker_name = .test_analysis_1.example_stabilizer_02_sliderB.cm  &
   j_floating_marker_name = .test_analysis_1.ground.FMARKER_9000307  &
   ref_marker_name = .test_analysis_1.example_stabilizer_02_sliderB.cm  &
   x_torque_function = ""  &
   y_torque_function = ""  &
   z_torque_function = ""
!
force create direct torque_vector  &
   torque_vector_name = .test_analysis_1.Upper_DP_Group1_sliderA_damper  &
   adams_id = 9000410  &
   i_marker_name = .test_analysis_1.Upper_DP_Group1_sliderA.cm  &
   j_floating_marker_name = .test_analysis_1.ground.FMARKER_9000605  &
   ref_marker_name = .test_analysis_1.Upper_DP_Group1_sliderA.cm  &
   x_torque_function = ""  &
   y_torque_function = ""  &
   z_torque_function = ""
!
force create direct torque_vector  &
   torque_vector_name = .test_analysis_1.Upper_DP_Group1_sliderB_damper  &
   adams_id = 9000510  &
   i_marker_name = .test_analysis_1.Upper_DP_Group1_sliderB.cm  &
   j_floating_marker_name = .test_analysis_1.ground.FMARKER_9000606  &
   ref_marker_name = .test_analysis_1.Upper_DP_Group1_sliderB.cm  &
   x_torque_function = ""  &
   y_torque_function = ""  &
   z_torque_function = ""
!
force create direct torque_vector  &
   torque_vector_name = .test_analysis_1.Upper_DP_Group2_sliderA_damper  &
   adams_id = 9000710  &
   i_marker_name = .test_analysis_1.Upper_DP_Group2_sliderA.cm  &
   j_floating_marker_name = .test_analysis_1.ground.FMARKER_9000905  &
   ref_marker_name = .test_analysis_1.Upper_DP_Group2_sliderA.cm  &
   x_torque_function = ""  &
   y_torque_function = ""  &
   z_torque_function = ""
!
force create direct torque_vector  &
   torque_vector_name = .test_analysis_1.Upper_DP_Group2_sliderB_damper  &
   adams_id = 9000810  &
   i_marker_name = .test_analysis_1.Upper_DP_Group2_sliderB.cm  &
   j_floating_marker_name = .test_analysis_1.ground.FMARKER_9000906  &
   ref_marker_name = .test_analysis_1.Upper_DP_Group2_sliderB.cm  &
   x_torque_function = ""  &
   y_torque_function = ""  &
   z_torque_function = ""
!
force create direct torque_vector  &
   torque_vector_name = .test_analysis_1.Upper_DP_Group3_sliderA_damper  &
   adams_id = 9001010  &
   i_marker_name = .test_analysis_1.Upper_DP_Group3_sliderA.cm  &
   j_floating_marker_name = .test_analysis_1.ground.FMARKER_9001205  &
   ref_marker_name = .test_analysis_1.Upper_DP_Group3_sliderA.cm  &
   x_torque_function = ""  &
   y_torque_function = ""  &
   z_torque_function = ""
!
force create direct torque_vector  &
   torque_vector_name = .test_analysis_1.Upper_DP_Group3_sliderB_damper  &
   adams_id = 9001110  &
   i_marker_name = .test_analysis_1.Upper_DP_Group3_sliderB.cm  &
   j_floating_marker_name = .test_analysis_1.ground.FMARKER_9001206  &
   ref_marker_name = .test_analysis_1.Upper_DP_Group3_sliderB.cm  &
   x_torque_function = ""  &
   y_torque_function = ""  &
   z_torque_function = ""
!
force create direct torque_vector  &
   torque_vector_name = .test_analysis_1.Upper_DP_Group4_sliderA_damper  &
   adams_id = 9001310  &
   i_marker_name = .test_analysis_1.Upper_DP_Group4_sliderA.cm  &
   j_floating_marker_name = .test_analysis_1.ground.FMARKER_9001505  &
   ref_marker_name = .test_analysis_1.Upper_DP_Group4_sliderA.cm  &
   x_torque_function = ""  &
   y_torque_function = ""  &
   z_torque_function = ""
!
force create direct torque_vector  &
   torque_vector_name = .test_analysis_1.Upper_DP_Group4_sliderB_damper  &
   adams_id = 9001410  &
   i_marker_name = .test_analysis_1.Upper_DP_Group4_sliderB.cm  &
   j_floating_marker_name = .test_analysis_1.ground.FMARKER_9001506  &
   ref_marker_name = .test_analysis_1.Upper_DP_Group4_sliderB.cm  &
   x_torque_function = ""  &
   y_torque_function = ""  &
   z_torque_function = ""
!
force create direct torque_vector  &
   torque_vector_name = .test_analysis_1.Upper_DP_Group5_sliderA_damper  &
   adams_id = 9001610  &
   i_marker_name = .test_analysis_1.Upper_DP_Group5_sliderA.cm  &
   j_floating_marker_name = .test_analysis_1.ground.FMARKER_9001805  &
   ref_marker_name = .test_analysis_1.Upper_DP_Group5_sliderA.cm  &
   x_torque_function = ""  &
   y_torque_function = ""  &
   z_torque_function = ""
!
force create direct torque_vector  &
   torque_vector_name = .test_analysis_1.Upper_DP_Group5_sliderB_damper  &
   adams_id = 9001710  &
   i_marker_name = .test_analysis_1.Upper_DP_Group5_sliderB.cm  &
   j_floating_marker_name = .test_analysis_1.ground.FMARKER_9001806  &
   ref_marker_name = .test_analysis_1.Upper_DP_Group5_sliderB.cm  &
   x_torque_function = ""  &
   y_torque_function = ""  &
   z_torque_function = ""
!
force create direct torque_vector  &
   torque_vector_name = .test_analysis_1.Upper_DP_Group6_sliderA_damper  &
   adams_id = 9001910  &
   i_marker_name = .test_analysis_1.Upper_DP_Group6_sliderA.cm  &
   j_floating_marker_name = .test_analysis_1.ground.FMARKER_9002105  &
   ref_marker_name = .test_analysis_1.Upper_DP_Group6_sliderA.cm  &
   x_torque_function = ""  &
   y_torque_function = ""  &
   z_torque_function = ""
!
force create direct torque_vector  &
   torque_vector_name = .test_analysis_1.Upper_DP_Group6_sliderB_damper  &
   adams_id = 9002010  &
   i_marker_name = .test_analysis_1.Upper_DP_Group6_sliderB.cm  &
   j_floating_marker_name = .test_analysis_1.ground.FMARKER_9002106  &
   ref_marker_name = .test_analysis_1.Upper_DP_Group6_sliderB.cm  &
   x_torque_function = ""  &
   y_torque_function = ""  &
   z_torque_function = ""
!
force create direct torque_vector  &
   torque_vector_name = .test_analysis_1.Upper_DP_Group7_sliderA_damper  &
   adams_id = 9002210  &
   i_marker_name = .test_analysis_1.Upper_DP_Group7_sliderA.cm  &
   j_floating_marker_name = .test_analysis_1.ground.FMARKER_9002405  &
   ref_marker_name = .test_analysis_1.Upper_DP_Group7_sliderA.cm  &
   x_torque_function = ""  &
   y_torque_function = ""  &
   z_torque_function = ""
!
force create direct torque_vector  &
   torque_vector_name = .test_analysis_1.Upper_DP_Group7_sliderB_damper  &
   adams_id = 9002310  &
   i_marker_name = .test_analysis_1.Upper_DP_Group7_sliderB.cm  &
   j_floating_marker_name = .test_analysis_1.ground.FMARKER_9002406  &
   ref_marker_name = .test_analysis_1.Upper_DP_Group7_sliderB.cm  &
   x_torque_function = ""  &
   y_torque_function = ""  &
   z_torque_function = ""
!
force create direct torque_vector  &
   torque_vector_name = .test_analysis_1.Upper_DP_Group8_sliderA_damper  &
   adams_id = 9002510  &
   i_marker_name = .test_analysis_1.Upper_DP_Group8_sliderA.cm  &
   j_floating_marker_name = .test_analysis_1.ground.FMARKER_9002705  &
   ref_marker_name = .test_analysis_1.Upper_DP_Group8_sliderA.cm  &
   x_torque_function = ""  &
   y_torque_function = ""  &
   z_torque_function = ""
!
force create direct torque_vector  &
   torque_vector_name = .test_analysis_1.Upper_DP_Group8_sliderB_damper  &
   adams_id = 9002610  &
   i_marker_name = .test_analysis_1.Upper_DP_Group8_sliderB.cm  &
   j_floating_marker_name = .test_analysis_1.ground.FMARKER_9002706  &
   ref_marker_name = .test_analysis_1.Upper_DP_Group8_sliderB.cm  &
   x_torque_function = ""  &
   y_torque_function = ""  &
   z_torque_function = ""
!
force create direct torque_vector  &
   torque_vector_name = .test_analysis_1.Upper_DP_Group9_sliderA_damper  &
   adams_id = 9002810  &
   i_marker_name = .test_analysis_1.Upper_DP_Group9_sliderA.cm  &
   j_floating_marker_name = .test_analysis_1.ground.FMARKER_9003005  &
   ref_marker_name = .test_analysis_1.Upper_DP_Group9_sliderA.cm  &
   x_torque_function = ""  &
   y_torque_function = ""  &
   z_torque_function = ""
!
force create direct torque_vector  &
   torque_vector_name = .test_analysis_1.Upper_DP_Group9_sliderB_damper  &
   adams_id = 9002910  &
   i_marker_name = .test_analysis_1.Upper_DP_Group9_sliderB.cm  &
   j_floating_marker_name = .test_analysis_1.ground.FMARKER_9003006  &
   ref_marker_name = .test_analysis_1.Upper_DP_Group9_sliderB.cm  &
   x_torque_function = ""  &
   y_torque_function = ""  &
   z_torque_function = ""
!
force create direct torque_vector  &
   torque_vector_name = .test_analysis_1.Upper_DP_Group10_sliderA_damper  &
   adams_id = 9003110  &
   i_marker_name = .test_analysis_1.Upper_DP_Group10_sliderA.cm  &
   j_floating_marker_name = .test_analysis_1.ground.FMARKER_9003305  &
   ref_marker_name = .test_analysis_1.Upper_DP_Group10_sliderA.cm  &
   x_torque_function = ""  &
   y_torque_function = ""  &
   z_torque_function = ""
!
force create direct torque_vector  &
   torque_vector_name = .test_analysis_1.Upper_DP_Group10_sliderB_damper  &
   adams_id = 9003210  &
   i_marker_name = .test_analysis_1.Upper_DP_Group10_sliderB.cm  &
   j_floating_marker_name = .test_analysis_1.ground.FMARKER_9003306  &
   ref_marker_name = .test_analysis_1.Upper_DP_Group10_sliderB.cm  &
   x_torque_function = ""  &
   y_torque_function = ""  &
   z_torque_function = ""
!
force create direct torque_vector  &
   torque_vector_name = .test_analysis_1.Upper_DP_Group11_sliderA_damper  &
   adams_id = 9003410  &
   i_marker_name = .test_analysis_1.Upper_DP_Group11_sliderA.cm  &
   j_floating_marker_name = .test_analysis_1.ground.FMARKER_9003605  &
   ref_marker_name = .test_analysis_1.Upper_DP_Group11_sliderA.cm  &
   x_torque_function = ""  &
   y_torque_function = ""  &
   z_torque_function = ""
!
force create direct torque_vector  &
   torque_vector_name = .test_analysis_1.Upper_DP_Group11_sliderB_damper  &
   adams_id = 9003510  &
   i_marker_name = .test_analysis_1.Upper_DP_Group11_sliderB.cm  &
   j_floating_marker_name = .test_analysis_1.ground.FMARKER_9003606  &
   ref_marker_name = .test_analysis_1.Upper_DP_Group11_sliderB.cm  &
   x_torque_function = ""  &
   y_torque_function = ""  &
   z_torque_function = ""
!
force create direct torque_vector  &
   torque_vector_name = .test_analysis_1.Upper_DP_Group12_sliderA_damper  &
   adams_id = 9003710  &
   i_marker_name = .test_analysis_1.Upper_DP_Group12_sliderA.cm  &
   j_floating_marker_name = .test_analysis_1.ground.FMARKER_9003905  &
   ref_marker_name = .test_analysis_1.Upper_DP_Group12_sliderA.cm  &
   x_torque_function = ""  &
   y_torque_function = ""  &
   z_torque_function = ""
!
force create direct torque_vector  &
   torque_vector_name = .test_analysis_1.Upper_DP_Group12_sliderB_damper  &
   adams_id = 9003810  &
   i_marker_name = .test_analysis_1.Upper_DP_Group12_sliderB.cm  &
   j_floating_marker_name = .test_analysis_1.ground.FMARKER_9003906  &
   ref_marker_name = .test_analysis_1.Upper_DP_Group12_sliderB.cm  &
   x_torque_function = ""  &
   y_torque_function = ""  &
   z_torque_function = ""
!
force create direct torque_vector  &
   torque_vector_name = .test_analysis_1.Upper_DP_Group13_sliderA_damper  &
   adams_id = 9004010  &
   i_marker_name = .test_analysis_1.Upper_DP_Group13_sliderA.cm  &
   j_floating_marker_name = .test_analysis_1.ground.FMARKER_9004205  &
   ref_marker_name = .test_analysis_1.Upper_DP_Group13_sliderA.cm  &
   x_torque_function = ""  &
   y_torque_function = ""  &
   z_torque_function = ""
!
force create direct torque_vector  &
   torque_vector_name = .test_analysis_1.Upper_DP_Group13_sliderB_damper  &
   adams_id = 9004110  &
   i_marker_name = .test_analysis_1.Upper_DP_Group13_sliderB.cm  &
   j_floating_marker_name = .test_analysis_1.ground.FMARKER_9004206  &
   ref_marker_name = .test_analysis_1.Upper_DP_Group13_sliderB.cm  &
   x_torque_function = ""  &
   y_torque_function = ""  &
   z_torque_function = ""
!
force create direct torque_vector  &
   torque_vector_name = .test_analysis_1.Upper_DP_Group14_sliderA_damper  &
   adams_id = 9004310  &
   i_marker_name = .test_analysis_1.Upper_DP_Group14_sliderA.cm  &
   j_floating_marker_name = .test_analysis_1.ground.FMARKER_9004505  &
   ref_marker_name = .test_analysis_1.Upper_DP_Group14_sliderA.cm  &
   x_torque_function = ""  &
   y_torque_function = ""  &
   z_torque_function = ""
!
force create direct torque_vector  &
   torque_vector_name = .test_analysis_1.Upper_DP_Group14_sliderB_damper  &
   adams_id = 9004410  &
   i_marker_name = .test_analysis_1.Upper_DP_Group14_sliderB.cm  &
   j_floating_marker_name = .test_analysis_1.ground.FMARKER_9004506  &
   ref_marker_name = .test_analysis_1.Upper_DP_Group14_sliderB.cm  &
   x_torque_function = ""  &
   y_torque_function = ""  &
   z_torque_function = ""
!
force create direct torque_vector  &
   torque_vector_name = .test_analysis_1.Upper_DP_Group15_sliderA_damper  &
   adams_id = 9004610  &
   i_marker_name = .test_analysis_1.Upper_DP_Group15_sliderA.cm  &
   j_floating_marker_name = .test_analysis_1.ground.FMARKER_9004805  &
   ref_marker_name = .test_analysis_1.Upper_DP_Group15_sliderA.cm  &
   x_torque_function = ""  &
   y_torque_function = ""  &
   z_torque_function = ""
!
force create direct torque_vector  &
   torque_vector_name = .test_analysis_1.Upper_DP_Group15_sliderB_damper  &
   adams_id = 9004710  &
   i_marker_name = .test_analysis_1.Upper_DP_Group15_sliderB.cm  &
   j_floating_marker_name = .test_analysis_1.ground.FMARKER_9004806  &
   ref_marker_name = .test_analysis_1.Upper_DP_Group15_sliderB.cm  &
   x_torque_function = ""  &
   y_torque_function = ""  &
   z_torque_function = ""
!
force create direct torque_vector  &
   torque_vector_name = .test_analysis_1.Upper_DP_Group16_sliderA_damper  &
   adams_id = 9004910  &
   i_marker_name = .test_analysis_1.Upper_DP_Group16_sliderA.cm  &
   j_floating_marker_name = .test_analysis_1.ground.FMARKER_9005105  &
   ref_marker_name = .test_analysis_1.Upper_DP_Group16_sliderA.cm  &
   x_torque_function = ""  &
   y_torque_function = ""  &
   z_torque_function = ""
!
force create direct torque_vector  &
   torque_vector_name = .test_analysis_1.Upper_DP_Group16_sliderB_damper  &
   adams_id = 9005010  &
   i_marker_name = .test_analysis_1.Upper_DP_Group16_sliderB.cm  &
   j_floating_marker_name = .test_analysis_1.ground.FMARKER_9005106  &
   ref_marker_name = .test_analysis_1.Upper_DP_Group16_sliderB.cm  &
   x_torque_function = ""  &
   y_torque_function = ""  &
   z_torque_function = ""
!
force create direct torque_vector  &
   torque_vector_name = .test_analysis_1.Upper_DP_Group17_sliderA_damper  &
   adams_id = 9005210  &
   i_marker_name = .test_analysis_1.Upper_DP_Group17_sliderA.cm  &
   j_floating_marker_name = .test_analysis_1.ground.FMARKER_9005405  &
   ref_marker_name = .test_analysis_1.Upper_DP_Group17_sliderA.cm  &
   x_torque_function = ""  &
   y_torque_function = ""  &
   z_torque_function = ""
!
force create direct torque_vector  &
   torque_vector_name = .test_analysis_1.Upper_DP_Group17_sliderB_damper  &
   adams_id = 9005310  &
   i_marker_name = .test_analysis_1.Upper_DP_Group17_sliderB.cm  &
   j_floating_marker_name = .test_analysis_1.ground.FMARKER_9005406  &
   ref_marker_name = .test_analysis_1.Upper_DP_Group17_sliderB.cm  &
   x_torque_function = ""  &
   y_torque_function = ""  &
   z_torque_function = ""
!
force create direct torque_vector  &
   torque_vector_name = .test_analysis_1.Upper_DP_Group18_sliderA_damper  &
   adams_id = 9005510  &
   i_marker_name = .test_analysis_1.Upper_DP_Group18_sliderA.cm  &
   j_floating_marker_name = .test_analysis_1.ground.FMARKER_9005705  &
   ref_marker_name = .test_analysis_1.Upper_DP_Group18_sliderA.cm  &
   x_torque_function = ""  &
   y_torque_function = ""  &
   z_torque_function = ""
!
force create direct torque_vector  &
   torque_vector_name = .test_analysis_1.Upper_DP_Group18_sliderB_damper  &
   adams_id = 9005610  &
   i_marker_name = .test_analysis_1.Upper_DP_Group18_sliderB.cm  &
   j_floating_marker_name = .test_analysis_1.ground.FMARKER_9005706  &
   ref_marker_name = .test_analysis_1.Upper_DP_Group18_sliderB.cm  &
   x_torque_function = ""  &
   y_torque_function = ""  &
   z_torque_function = ""
!
force create direct torque_vector  &
   torque_vector_name = .test_analysis_1.Upper_DP_Group19_sliderA_damper  &
   adams_id = 9005810  &
   i_marker_name = .test_analysis_1.Upper_DP_Group19_sliderA.cm  &
   j_floating_marker_name = .test_analysis_1.ground.FMARKER_9006005  &
   ref_marker_name = .test_analysis_1.Upper_DP_Group19_sliderA.cm  &
   x_torque_function = ""  &
   y_torque_function = ""  &
   z_torque_function = ""
!
force create direct torque_vector  &
   torque_vector_name = .test_analysis_1.Upper_DP_Group19_sliderB_damper  &
   adams_id = 9005910  &
   i_marker_name = .test_analysis_1.Upper_DP_Group19_sliderB.cm  &
   j_floating_marker_name = .test_analysis_1.ground.FMARKER_9006006  &
   ref_marker_name = .test_analysis_1.Upper_DP_Group19_sliderB.cm  &
   x_torque_function = ""  &
   y_torque_function = ""  &
   z_torque_function = ""
!
force create direct torque_vector  &
   torque_vector_name = .test_analysis_1.Upper_DP_Group20_sliderA_damper  &
   adams_id = 9006110  &
   i_marker_name = .test_analysis_1.Upper_DP_Group20_sliderA.cm  &
   j_floating_marker_name = .test_analysis_1.ground.FMARKER_9006308  &
   ref_marker_name = .test_analysis_1.Upper_DP_Group20_sliderA.cm  &
   x_torque_function = ""  &
   y_torque_function = ""  &
   z_torque_function = ""
!
force create direct torque_vector  &
   torque_vector_name = .test_analysis_1.Upper_DP_Group20_sliderB_damper  &
   adams_id = 9006210  &
   i_marker_name = .test_analysis_1.Upper_DP_Group20_sliderB.cm  &
   j_floating_marker_name = .test_analysis_1.ground.FMARKER_9006309  &
   ref_marker_name = .test_analysis_1.Upper_DP_Group20_sliderB.cm  &
   x_torque_function = ""  &
   y_torque_function = ""  &
   z_torque_function = ""
!
force create direct torque_vector  &
   torque_vector_name = .test_analysis_1.Upper_DP_Group20_sliderC_damper  &
   adams_id = 9006310  &
   i_marker_name = .test_analysis_1.Upper_DP_Group20_sliderC.cm  &
   j_floating_marker_name = .test_analysis_1.ground.FMARKER_9006310  &
   ref_marker_name = .test_analysis_1.Upper_DP_Group20_sliderC.cm  &
   x_torque_function = ""  &
   y_torque_function = ""  &
   z_torque_function = ""
!
!---------------------------------- Requests ----------------------------------!
!
!
output_control create request  &
   request_name = .test_analysis_1.test_pdc_01_Motion  &
   adams_id = 1  &
   component_names = "Measured_Depth", "Radial_Displacement",  &
                     "Radial_Velocity", "Axial_Angular_Velocity",  &
                     "Orbiting_Angular_Velocity", "Bending_Moment",  &
                     "Twisting_Moment", "Axial_Load"  &
   component_labels = "(ft)", "(ft)", "(ft/sec)", "(RPM)", "(RPM)",  &
                      "(Kft-lbf)", "(Kft-lbf)", "(Klbf)"  &
   results_name = "test_pdc_01_Motion"  &
   user_function = -1.0, 9.000005E+06, 9.000001E+06, -0.1660421644  &
   routine = "adrill_solver::MotionOut"
!
output_control create request  &
   request_name = .test_analysis_1.test_pdc_01_Motion2  &
   adams_id = 2  &
   comment = "test_pdc_01 Motion Output"  &
   component_names = "Radial_Displacement_X", "Radial_Displacement_Y",  &
                     "Omega_Z"  &
   component_labels = "(ft)", "(ft)", "(RPM)"  &
   results_name = "test_pdc_01_Motion"  &
   f1 = ""  &
   f2 = ""  &
   f3 = ""
!
output_control create request  &
   request_name = .test_analysis_1.example_stabilizer_02_Motion  &
   adams_id = 3  &
   component_names = "Measured_Depth", "Radial_Displacement",  &
                     "Radial_Velocity", "Axial_Angular_Velocity",  &
                     "Orbiting_Angular_Velocity", "Bending_Moment",  &
                     "Twisting_Moment", "Axial_Load"  &
   component_labels = "(ft)", "(ft)", "(ft/sec)", "(RPM)", "(RPM)",  &
                      "(Kft-lbf)", "(Kft-lbf)", "(Klbf)"  &
   results_name = "example_stabilizer_02_Motion"  &
   user_function = 9.000202E+06, 9.0002E+06, 9.000201E+06, -1.4993688639  &
   routine = "adrill_solver::MotionOut"
!
output_control create request  &
   request_name = .test_analysis_1.example_stabilizer_02_Motion2  &
   adams_id = 4  &
   comment = "example_stabilizer_02 Motion Output"  &
   component_names = "Radial_Displacement_X", "Radial_Displacement_Y",  &
                     "Omega_Z"  &
   component_labels = "(ft)", "(ft)", "(RPM)"  &
   results_name = "example_stabilizer_02_Motion"  &
   f1 = ""  &
   f2 = ""  &
   f3 = ""
!
output_control create request  &
   request_name = .test_analysis_1.equivalent_pipe1_TorsionStates  &
   adams_id = 5  &
   comment = "equivalent_pipe1 Torsion States Output"  &
   component_names = "top_disp", "upr_mid_disp", "lwr_mid_disp",  &
                     "bottom_disp", "top_vel", "upr_mid_vel", "lwr_mid_vel",  &
                     "bottom_vel"  &
   component_labels = "(radians)", "(radians)", "(radians)", "(radians)",  &
                      "(rad/sec)", "(rad/sec)", "(rad/sec)", "(rad/sec)"  &
   results_name = "equivalent_pipe1_TorsionStates"  &
   f1 = ""  &
   f2 = ""  &
   f3 = ""  &
   f4 = ""  &
   f5 = ""  &
   f6 = ""  &
   f7 = ""  &
   f8 = ""
!
output_control create request  &
   request_name = .test_analysis_1.equivalent_pipe1_AxialStates  &
   adams_id = 6  &
   comment = "equivalent_pipe1 Axial States Output"  &
   component_names = "top_disp", "upr_mid_disp", "lwr_mid_disp",  &
                     "bottom_disp", "top_vel", "upr_mid_vel", "lwr_mid_vel",  &
                     "bottom_vel"  &
   component_labels = "(ft)", "(ft)", "(ft)", "(ft)", "(ft/sec)", "(ft/sec)",  &
                      "(ft/sec)", "(ft/sec)"  &
   results_name = "equivalent_pipe1_AxialStates"  &
   f1 = ""  &
   f2 = ""  &
   f3 = ""  &
   f4 = ""  &
   f5 = ""  &
   f6 = ""  &
   f7 = ""  &
   f8 = ""
!
output_control create request  &
   request_name = .test_analysis_1.top_drive  &
   adams_id = 7  &
   comment = "_:cmdRPM:surfRPM:TOSRPM:_:cmdTrq:true_Trq:_"  &
   component_names = "Command_RPM", "Surface_RPM", "Top_of_String_RPM",  &
                     "Command_Torque", "True_Torque"  &
   component_labels = "(RPM)", "(RPM)", "(RPM)", "(kft-lbf)", "(kft-lbf)"  &
   results_name = "top_drive_data"  &
   f1 = ""  &
   f2 = ""  &
   f3 = ""  &
   f4 = ""  &
   f5 = ""
!
output_control create request  &
   request_name = .test_analysis_1.ROP_controls  &
   adams_id = 8  &
   comment = "_:cmd_ROP:BOH_V:MD:_:cmd_WOB:true_WOB:HookLoad"  &
   component_names = "Command_ROP", "Bottom_of_Hole_Velocity",  &
                     "Measured_Depth", "Command_WOB", "True_WOB", "HookLoad"  &
   component_labels = "(ft/hr)", "(ft/hr)", "(ft)", "(klbf)", "(klbf)",  &
                      "(klbf)"  &
   results_name = "ROP_controls"  &
   f1 = ""  &
   f2 = ""  &
   f3 = ""  &
   f4 = ""  &
   f5 = ""  &
   f6 = ""
!
output_control create request  &
   request_name = .test_analysis_1.MSE_Motion  &
   adams_id = 9  &
   comment = "Surface:AtBit"  &
   component_names = "Instantaneous_Surface_MSE", "Instantaneous_Bottom_MSE",  &
                     "Filtered_Surface_MSE", "Filtered_Bottom_MSE"  &
   component_labels = "(psi)", "(psi)", "(psi)", "(psi)"  &
   results_name = "MSE"  &
   f1 = ""  &
   f2 = ""  &
   f3 = ""  &
   f4 = ""
!
!----------------------------- Simulation Scripts -----------------------------!
!
!
simulation script create  &
   sim_script_name = .test_analysis_1.test_analysis_1  &
   solver_commands =   &
                     "!
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
"
!
!---------------------------------- Accgrav -----------------------------------!
!
!
force create body gravitational  &
   gravity_field_name = Local_Gravity  &
   x_component_gravity = 0.0  &
   y_component_gravity = 0.0  &
   z_component_gravity = 27.2604183673
!
!----------------------------- Analysis settings ------------------------------!
!
!
executive_control set numerical_integration_parameters  &
   model_name = test_analysis_1  &
   integrator_type = hht  &
   error_tolerance = 1.0E-05  &
   pattern_for_jacobian = no  &
   hmax_time_step = 5.0E-03  &
   corrector = modified  &
   alpha = -0.25
!
executive_control set equilibrium_parameters  &
   model_name = test_analysis_1  &
   alimit = 1.0d  &
   error = 1.0  &
   imbalance = 1.0  &
   maxit = 500  &
   stability = 5.0  &
   tlimit = 0.5
!
output_control set output  &
   model_name = test_analysis_1  &
   reqsave = off  &
   grsave = off
!
output_control set results  &
   model_name = test_analysis_1  &
   velocities = off  &
   accelerations = off  &
   applied_forces = off  &
   reaction_forces = off  &
   data_structures = off  &
   system_elements = off  &
   linear = off  &
   floating_markers = off  &
   contact_incidents = off
!
executive_control set preferences  &
   model_name = test_analysis_1  &
   thread_count = 4
!
!---------------------------- Adams View Variables ----------------------------!
!
!
variable create  &
   variable_name = .test_analysis_1.OutputName  &
   string_value = "test_analysis_1"
!
variable create  &
   variable_name = .test_analysis_1.G_C  &
   real_value = 32.187
!
variable create  &
   variable_name = .test_analysis_1.Deviation  &
   real_value = 0.0
!
variable create  &
   variable_name = .test_analysis_1.SolverDLL  &
   string_value = "adrill_solver"
!
variable create  &
   variable_name = .test_analysis_1.EpipeFlag  &
   integer_value = 1
!
variable create  &
   variable_name = .test_analysis_1.POVflag  &
   integer_value = 1
!
variable create  &
   variable_name = .test_analysis_1.ContactMethod  &
   string_value = "Subroutine"
!
variable create  &
   variable_name = .test_analysis_1.HoleName  &
   string_value = "test_hole"
!
variable create  &
   variable_name = .test_analysis_1.Hole_ID  &
   real_value = 1.0835
!
variable create  &
   variable_name = .test_analysis_1.Hole_Data_File  &
   string_value = "test_hole.hol"
!
variable create  &
   variable_name = .test_analysis_1.CylDragCoeff  &
   real_value = 1.2
!
variable create  &
   variable_name = .test_analysis_1.HoleColor  &
   string_value = "LtGray"
!
variable create  &
   variable_name = .test_analysis_1.CosimFlag  &
   integer_value = 0
!
variable create  &
   variable_name = .test_analysis_1.EventFileOpen  &
   integer_value = 1
!
variable create  &
   variable_name = .test_analysis_1.DriveType  &
   string_value = "WITH_MOTOR"
!
variable create  &
   variable_name = .test_analysis_1.RotationSensor  &
   string_value = "TOS"
!
variable create  &
   variable_name = .test_analysis_1.bottom_depth  &
   real_value = 1372.01
!
variable create  &
   variable_name = .test_analysis_1.bottom_clearance  &
   real_value = 3.0
!
variable create  &
   variable_name = .test_analysis_1.initial_bitMD  &
   real_value = 2000.0
!
variable create  &
   variable_name = .test_analysis_1.InitialQ  &
   real_value = 0.0
!
variable create  &
   variable_name = .test_analysis_1.Command_RPM  &
   real_value = 60.0
!
variable create  &
   variable_name = .test_analysis_1.Top_Drive_Ramp  &
   real_value = 15.0
!
variable create  &
   variable_name = .test_analysis_1.Top_Drive_Start  &
   real_value = 15.0
!
variable create  &
   variable_name = .test_analysis_1.SettlingTime  &
   real_value = 0.0
!
variable create  &
   variable_name = .test_analysis_1.StaticFunnel  &
   string_value = "standard"
!
variable create  &
   variable_name = .test_analysis_1.MudDensity  &
   real_value = 75.0
!
variable create  &
   variable_name = .test_analysis_1.Impact_Penetration  &
   real_value = 5.0E-03
!
variable create  &
   variable_name = .test_analysis_1.Impact_Exponent  &
   real_value = 1.05
!
variable create  &
   variable_name = .test_analysis_1.MWD_Pulsing_Flag  &
   string_value = "On"
!
variable create  &
   variable_name = .test_analysis_1.PulserFlag  &
   integer_value = 1
!
variable create  &
   variable_name = .test_analysis_1.evtNperRevString  &
   string_value = "off"
!
variable create  &
   variable_name = .test_analysis_1.evtNperRevInt  &
   integer_value = 0
!
variable create  &
   variable_name = .test_analysis_1.evtNN  &
   integer_value = 1
!
variable create  &
   variable_name = .test_analysis_1.evtStart  &
   real_value = 0.0
!
variable create  &
   variable_name = .test_analysis_1.evtRamp  &
   real_value = 1.0
!
variable create  &
   variable_name = .test_analysis_1.evtS_threshold  &
   real_value = 0.55
!
variable create  &
   variable_name = .test_analysis_1.evtC_hi  &
   real_value = 1.05
!
variable create  &
   variable_name = .test_analysis_1.WeightOnBit  &
   real_value = 50.0
!
variable create  &
   variable_name = .test_analysis_1.WOB_Start  &
   real_value = 30.0
!
variable create  &
   variable_name = .test_analysis_1.WOB_Ramp  &
   real_value = 15.0
!
variable create  &
   variable_name = .test_analysis_1.ROP  &
   real_value = 100.0
!
variable create  &
   variable_name = .test_analysis_1.ROP_Start  &
   real_value = 30.0
!
variable create  &
   variable_name = .test_analysis_1.ROP_Ramp  &
   real_value = 15.0
!
variable create  &
   variable_name = .test_analysis_1.Drill_Motor_Type  &
   string_value = "3D"
!
variable create  &
   variable_name = .test_analysis_1.Motor_Start  &
   real_value = 0.0
!
variable create  &
   variable_name = .test_analysis_1.Motor_Ramp  &
   real_value = 1.0
!
variable create  &
   variable_name = .test_analysis_1.Motor_Measurement_Tool  &
   string_value = ""
!
variable create  &
   variable_name = .test_analysis_1.Motor_tau  &
   real_value = 5.0E-02
!
variable create  &
   variable_name = .test_analysis_1.Motor_Bend_Start  &
   real_value = 1.0
!
variable create  &
   variable_name = .test_analysis_1.Motor_Bend_Ramp  &
   real_value = 9.0
!
variable create  &
   variable_name = .test_analysis_1.Motor_FlowStart  &
   real_value = 0.0
!
variable create  &
   variable_name = .test_analysis_1.Motor_FlowRamp  &
   real_value = 15.0
!
variable create  &
   variable_name = .test_analysis_1.Motor_FlowRate  &
   real_value = 500.0
!
variable create  &
   variable_name = .test_analysis_1.BouyancyFac  &
   real_value = 0.8469387755
!
variable create  &
   variable_name = .test_analysis_1.ntools  &
   integer_value = 4
!
variable create  &
   variable_name = .test_analysis_1.string_list  &
   string_value = "pdc_bit", "stabilizer", "drillpipe",  &
                  "equivalent_upper_string"
!
variable create  &
   variable_name = .test_analysis_1.nameList  &
   string_value = "test_pdc_01", "example_stabilizer_02", "Upper_DP_Group",  &
                  "equivalent_pipe"
!
variable create  &
   variable_name = .test_analysis_1.compPropFile  &
   string_value = "test_pdc.pdc", "example_stabilizer.sta",  &
                  "test_drillpipe.pip", "test_eus.pip"
!
variable create  &
   variable_name = .test_analysis_1.measureList  &
   string_value = "yes", "yes", "no", "no"
!
variable create  &
   variable_name = .test_analysis_1.colorList  &
   string_value = "Default", "Default", "Default", "Default"
!
variable create  &
   variable_name = .test_analysis_1.jointList  &
   integer_value = 0, 20, 20
!
variable create  &
   variable_name = .test_analysis_1.Number_Of_Sections  &
   integer_value = 0
!
variable create  &
   variable_name = .test_analysis_1.nprops  &
   integer_value = 4
!
variable create  &
   variable_name = .test_analysis_1.TopDriveFileOpen  &
   integer_value = 1
!
variable create  &
   variable_name = .test_analysis_1.TDPropGain  &
   real_value = 1.0326E+04
!
variable create  &
   variable_name = .test_analysis_1.TDIntGain  &
   real_value = 3.4665E+04
!
variable create  &
   variable_name = .test_analysis_1.TDDerivGain  &
   real_value = 708.0
!
variable create  &
   variable_name = .test_analysis_1.TDFilterTau  &
   real_value = 2.0
!
variable create  &
   variable_name = .test_analysis_1.MaxQ  &
   real_value = 3.5E+04
!
variable create  &
   variable_name = .test_analysis_1.TopDriveFileClose  &
   integer_value = 1
!
variable create  &
   variable_name = .test_analysis_1.RSSExist  &
   integer_value = 0
!
variable create  &
   variable_name = .test_analysis_1.HoleFileName  &
   string_value = "test_hole.hol"
!
variable create  &
   variable_name = .test_analysis_1.StrHoleFile  &
   string_value = "test_hole.hol"
!
variable create  &
   variable_name = .test_analysis_1.HoleDataOpen  &
   integer_value = 0
!
variable create  &
   variable_name = .test_analysis_1.spline_nrows  &
   integer_value = 109
!
variable create  &
   variable_name = .test_analysis_1.iret  &
   integer_value = 0
!
variable create  &
   variable_name = .test_analysis_1.SplineError  &
   integer_value = 0
!
variable create  &
   variable_name = .test_analysis_1.HoleLength  &
   real_value = 2287.3973538343
!
variable create  &
   variable_name = .test_analysis_1.POV_X_offset  &
   real_value = 4.0
!
variable create  &
   variable_name = .test_analysis_1.POV_Y_offset  &
   real_value = 0.0
!
variable create  &
   variable_name = .test_analysis_1.ConstantDiameter  &
   integer_value = 1
!
variable create  &
   variable_name = .test_analysis_1.HoleID  &
   real_value = 1.0835
!
variable create  &
   variable_name = .test_analysis_1.Constant_ID  &
   real_value = 1.0835
!
variable create  &
   variable_name = .test_analysis_1.WallK  &
   real_value = 5.0E+05
!
variable create  &
   variable_name = .test_analysis_1.WallC  &
   real_value = 500.0
!
variable create  &
   variable_name = .test_analysis_1.ConstantWall  &
   integer_value = 1
!
variable create  &
   variable_name = .test_analysis_1.Wall_K  &
   real_value = 5.0E+05
!
variable create  &
   variable_name = .test_analysis_1.Wall_C  &
   real_value = 500.0
!
variable create  &
   variable_name = .test_analysis_1.ConstantWallFriction  &
   integer_value = 1
!
variable create  &
   variable_name = .test_analysis_1.Sta_Mu  &
   real_value = 0.9
!
variable create  &
   variable_name = .test_analysis_1.Stat_V  &
   real_value = 0.15
!
variable create  &
   variable_name = .test_analysis_1.Dyn_Mu  &
   real_value = 0.3
!
variable create  &
   variable_name = .test_analysis_1.Dyna_V  &
   real_value = 0.3
!
variable create  &
   variable_name = .test_analysis_1.sliderCMvarvec  &
   integer_value = 9000001, 9000201, 9000301, 9000401, 9000501, 9000701,  &
                   9000801, 9001001, 9001101, 9001301, 9001401, 9001601,  &
                   9001701, 9001901, 9002001, 9002201, 9002301, 9002501,  &
                   9002601, 9002801, 9002901, 9003101, 9003201, 9003401,  &
                   9003501, 9003701, 9003801, 9004001, 9004101, 9004301,  &
                   9004401, 9004601, 9004701, 9004901, 9005001, 9005201,  &
                   9005301, 9005501, 9005601, 9005801, 9005901, 9006101,  &
                   9006201, 9006301
!
variable create  &
   variable_name = .test_analysis_1.FixedJvarvec  &
   integer_value = 9000202, 9000400, 9000700, 9001000, 9001300, 9001600,  &
                   9001900, 9002200, 9002500, 9002800, 9003100, 9003400,  &
                   9003700, 9004000, 9004300, 9004600, 9004900, 9005200,  &
                   9005500, 9005800, 9006100
!
variable create  &
   variable_name = .test_analysis_1.BaseID  &
   integer_value = 9006400
!
variable create  &
   variable_name = .test_analysis_1.joint_Count  &
   integer_value = 3
!
variable create  &
   variable_name = .test_analysis_1.PropertyFileName  &
   string_value = "test_eus.pip"
!
variable create  &
   variable_name = .test_analysis_1.MeasureCheck  &
   string_value = "no"
!
variable create  &
   variable_name = .test_analysis_1.colorString  &
   string_value = "Default"
!
variable create  &
   variable_name = .test_analysis_1.nameString  &
   string_value = "equivalent_pipe"
!
variable create  &
   variable_name = .test_analysis_1.ReadBitfile  &
   integer_value = 1
!
variable create  &
   variable_name = .test_analysis_1.BitName  &
   string_value = "test_pdc_01"
!
variable create  &
   variable_name = .test_analysis_1.BitSqIn  &
   real_value = 117.8511151185
!
variable create  &
   variable_name = .test_analysis_1.total_length  &
   real_value = 620.0
!
variable create  &
   variable_name = .test_analysis_1.BitType  &
   string_value = "single_point"
!
variable create  &
   variable_name = .test_analysis_1.tool_top_marker  &
   object_value = (NONE)
!
variable create  &
   variable_name = .test_analysis_1.CloseBitfile  &
   integer_value = 1
!
variable create  &
   variable_name = .test_analysis_1.bottom_MD  &
   real_value = 1379.7582621128
!
variable create  &
   variable_name = .test_analysis_1.bottom_loc  &
   real_value = 136.0391631871, 0.0, 1344.8340793674
!
variable create  &
   variable_name = .test_analysis_1.offset_MD  &
   real_value = 1372.0075916572
!
variable create  &
   variable_name = .test_analysis_1.offset_loc  &
   real_value = 130.768955542, 0.0, 1339.1510173281
!
variable create  &
   variable_name = .test_analysis_1.string_top_marker  &
   object_value = (NONE)
!
variable create  &
   variable_name = .test_analysis_1.CloseTofile  &
   integer_value = 1
!
variable create  &
   variable_name = .test_analysis_1.ReadStafile  &
   integer_value = 1
!
variable create  &
   variable_name = .test_analysis_1.tool_bottom_marker  &
   object_value = (NONE)
!
variable create  &
   variable_name = .test_analysis_1.example_stabilizer_02_stabilizer_mass  &
   real_value = 22.4508185341
!
variable create  &
   variable_name = .test_analysis_1.CloseStafile  &
   integer_value = 1
!
variable create  &
   variable_name = .test_analysis_1.NoofJoints  &
   integer_value = 20
!
variable create  &
   variable_name = .test_analysis_1.ReadShtofile  &
   integer_value = 1
!
variable create  &
   variable_name = .test_analysis_1.npipes  &
   real_value = 20.0
!
variable create  &
   variable_name = .test_analysis_1.Pipe_Length  &
   real_value = 31.0
!
variable create  &
   variable_name = .test_analysis_1.last_pipe  &
   real_value = 3.0
!
variable create  &
   variable_name = .test_analysis_1.TrueMudDensity  &
   real_value = 2.331
!
variable create  &
   variable_name = .test_analysis_1.Upper_DP_Group1_drillpipe_mass  &
   units = "mass"  &
   real_value = 27.0128063921
!
variable create  &
   variable_name = .test_analysis_1.YoungsModulus  &
   units = "pressure"  &
   real_value = 4.32E+09
!
variable create  &
   variable_name = .test_analysis_1.ShearModulus  &
   units = "pressure"  &
   real_value = 1.6632E+09
!
variable create  &
   variable_name = .test_analysis_1.Upper_DP_Group2_drillpipe_mass  &
   units = "mass"  &
   real_value = 27.0128063921
!
variable create  &
   variable_name = .test_analysis_1.Upper_DP_Group3_drillpipe_mass  &
   units = "mass"  &
   real_value = 27.0128063921
!
variable create  &
   variable_name = .test_analysis_1.Upper_DP_Group4_drillpipe_mass  &
   units = "mass"  &
   real_value = 27.0128063921
!
variable create  &
   variable_name = .test_analysis_1.Upper_DP_Group5_drillpipe_mass  &
   units = "mass"  &
   real_value = 27.0128063921
!
variable create  &
   variable_name = .test_analysis_1.Upper_DP_Group6_drillpipe_mass  &
   units = "mass"  &
   real_value = 27.0128063921
!
variable create  &
   variable_name = .test_analysis_1.Upper_DP_Group7_drillpipe_mass  &
   units = "mass"  &
   real_value = 27.0128063921
!
variable create  &
   variable_name = .test_analysis_1.Upper_DP_Group8_drillpipe_mass  &
   units = "mass"  &
   real_value = 27.0128063921
!
variable create  &
   variable_name = .test_analysis_1.Upper_DP_Group9_drillpipe_mass  &
   units = "mass"  &
   real_value = 27.0128063921
!
variable create  &
   variable_name = .test_analysis_1.Upper_DP_Group10_drillpipe_mass  &
   units = "mass"  &
   real_value = 27.0128063921
!
variable create  &
   variable_name = .test_analysis_1.Upper_DP_Group11_drillpipe_mass  &
   units = "mass"  &
   real_value = 27.0128063921
!
variable create  &
   variable_name = .test_analysis_1.Upper_DP_Group12_drillpipe_mass  &
   units = "mass"  &
   real_value = 27.0128063921
!
variable create  &
   variable_name = .test_analysis_1.Upper_DP_Group13_drillpipe_mass  &
   units = "mass"  &
   real_value = 27.0128063921
!
variable create  &
   variable_name = .test_analysis_1.Upper_DP_Group14_drillpipe_mass  &
   units = "mass"  &
   real_value = 27.0128063921
!
variable create  &
   variable_name = .test_analysis_1.Upper_DP_Group15_drillpipe_mass  &
   units = "mass"  &
   real_value = 27.0128063921
!
variable create  &
   variable_name = .test_analysis_1.Upper_DP_Group16_drillpipe_mass  &
   units = "mass"  &
   real_value = 27.0128063921
!
variable create  &
   variable_name = .test_analysis_1.Upper_DP_Group17_drillpipe_mass  &
   units = "mass"  &
   real_value = 27.0128063921
!
variable create  &
   variable_name = .test_analysis_1.Upper_DP_Group18_drillpipe_mass  &
   units = "mass"  &
   real_value = 27.0128063921
!
variable create  &
   variable_name = .test_analysis_1.Upper_DP_Group19_drillpipe_mass  &
   units = "mass"  &
   real_value = 27.0128063921
!
variable create  &
   variable_name = .test_analysis_1.Upper_DP_Group20_drillpipe_mass  &
   units = "mass"  &
   real_value = 27.0128063921
!
variable create  &
   variable_name = .test_analysis_1.TOS_direction_marker  &
   object_value = (NONE)
!
variable create  &
   variable_name = .test_analysis_1.CloseFlexfile  &
   integer_value = 1
!
variable create  &
   variable_name = .test_analysis_1.ReadEqvlntPipefile  &
   integer_value = 1
!
variable create  &
   variable_name = .test_analysis_1.length_of_pipes  &
   real_value = 620.0
!
variable create  &
   variable_name = .test_analysis_1.EUSjointsVector  &
   integer_value = 20
!
variable create  &
   variable_name = .test_analysis_1.PipesThisSection  &
   integer_value = 20
!
variable create  &
   variable_name = .test_analysis_1.CVtilde  &
   real_value = 14.2440943049
!
variable create  &
   variable_name = .test_analysis_1.CloseEqvlntPipefile  &
   integer_value = 1
!
variable create  &
   variable_name = .test_analysis_1.AgitatorExist  &
   integer_value = 0
!
variable create  &
   variable_name = .test_analysis_1.bitFileName  &
   string_value = "test_pdc.pdc"
!
variable create  &
   variable_name = .test_analysis_1.BitSliderMarker  &
   string_value = "test_pdc_01_sliderA.cm"
!
variable create  &
   variable_name = .test_analysis_1.AllStringParts  &
   object_value = (NONE)
!
variable create  &
   variable_name = .test_analysis_1.AllSliderParts  &
   object_value = (NONE)
!
variable create  &
   variable_name = .test_analysis_1.partCMoffsets  &
   real_value = 0.0, 4.0651534179, 10.3218957897, 22.8094449803,  &
                35.2966846471, 41.3217574977, 53.8092371756, 66.2963830696,  &
                72.3216189583, 84.8090298386, 97.296085674, 103.3214851328,  &
                115.8088324963, 128.2958204363, 134.3213785051,  &
                146.8086822583, 159.2956156766, 165.3212898621,  &
                177.8085436441, 190.2953824537, 196.3211589411,  &
                208.8083318223, 221.2949745361, 227.3206707035,  &
                239.8070415685, 252.2928441494, 258.3184754697,  &
                270.8050396688, 283.2909016151, 289.3162358094,  &
                301.8029112197, 314.2889290782, 320.3139914879,  &
                332.8006829018, 345.2868779301, 351.3116267704,  &
                363.7985371537, 376.2848515417, 382.309331811,  &
                394.7963148291, 407.282907814, 413.3070296645,  &
                425.7942250967, 438.2810050401, 444.3047631887,  &
                456.7921545922, 469.2790079384, 475.3025396762,  &
                487.7900054819, 500.2771129956, 506.3002838969,  &
                518.7878865461, 531.2750979953, 537.2980171481,  &
                549.7856768566, 562.2731089472, 568.2957304181,  &
                580.7835676269, 593.2710535145, 599.2933688848,  &
                611.7814034474, 624.2690866859
!
variable create  &
   variable_name = .test_analysis_1.sliderCMoffsets  &
   real_value = -0.5131699811, 3.3331534178, 4.7971534178, 7.3101247911,  &
                22.8094449801, 38.3099864981, 53.8092371751, 69.3098479592,  &
                84.8090298339, 100.3097141405, 115.8088324346,  &
                131.3096074118, 146.8086821642, 162.3095187921,  &
                177.8085434188, 193.3093881034, 208.808328325, 224.309054849,  &
                239.806937288, 255.3065684793, 270.804656757, 286.3040167416,  &
                301.802211737, 317.3014388027, 332.7996138695,  &
                348.2987305473, 363.7971616484, 379.2960902635,  &
                394.7945717989, 410.2934648183, 425.7921790982,  &
                441.2909137921, 456.789837715, 472.288379371, 487.7873673898,  &
                503.2858238964, 518.784942728, 534.2832534468, 549.782418579,  &
                565.2806312251, 580.7799860397, 596.2779395313,  &
                611.7775166607, 627.2771158702
!
variable create  &
   variable_name = .test_analysis_1.TotalMass  &
   real_value = 3682.8318437345
!
variable create  &
   variable_name = .test_analysis_1.addmass  &
   real_value = 5.88E-04
!
variable create  &
   variable_name = .test_analysis_1.integrator_d  &
   string_value = "HHT"
!
!---------------------- Set Adams View Object Variables -----------------------!
!
!
variable modify  &
   variable_name = .test_analysis_1.tool_top_marker  &
   object_value = .test_analysis_1.Upper_DP_Group20_C.end_C
!
variable modify  &
   variable_name = .test_analysis_1.string_top_marker  &
   object_value = .test_analysis_1.Upper_DP_Group20_C.end_C
!
variable modify  &
   variable_name = .test_analysis_1.tool_bottom_marker  &
   object_value = .test_analysis_1.Upper_DP_Group20_A.end_A
!
variable modify  &
   variable_name = .test_analysis_1.TOS_direction_marker  &
   object_value = .test_analysis_1.Upper_DP_Group20_sliderC.cm
!
variable modify  &
   variable_name = .test_analysis_1.AllStringParts  &
   object_value = .test_analysis_1.test_pdc_01,  &
                  .test_analysis_1.example_stabilizer_02_B,  &
                  .test_analysis_1.Upper_DP_Group1_A,  &
                  .test_analysis_1.Upper_DP_Group1_B,  &
                  .test_analysis_1.Upper_DP_Group1_C,  &
                  .test_analysis_1.Upper_DP_Group2_A,  &
                  .test_analysis_1.Upper_DP_Group2_B,  &
                  .test_analysis_1.Upper_DP_Group2_C,  &
                  .test_analysis_1.Upper_DP_Group3_A,  &
                  .test_analysis_1.Upper_DP_Group3_B,  &
                  .test_analysis_1.Upper_DP_Group3_C,  &
                  .test_analysis_1.Upper_DP_Group4_A,  &
                  .test_analysis_1.Upper_DP_Group4_B,  &
                  .test_analysis_1.Upper_DP_Group4_C,  &
                  .test_analysis_1.Upper_DP_Group5_A,  &
                  .test_analysis_1.Upper_DP_Group5_B,  &
                  .test_analysis_1.Upper_DP_Group5_C,  &
                  .test_analysis_1.Upper_DP_Group6_A,  &
                  .test_analysis_1.Upper_DP_Group6_B,  &
                  .test_analysis_1.Upper_DP_Group6_C,  &
                  .test_analysis_1.Upper_DP_Group7_A,  &
                  .test_analysis_1.Upper_DP_Group7_B,  &
                  .test_analysis_1.Upper_DP_Group7_C,  &
                  .test_analysis_1.Upper_DP_Group8_A,  &
                  .test_analysis_1.Upper_DP_Group8_B,  &
                  .test_analysis_1.Upper_DP_Group8_C,  &
                  .test_analysis_1.Upper_DP_Group9_A,  &
                  .test_analysis_1.Upper_DP_Group9_B,  &
                  .test_analysis_1.Upper_DP_Group9_C,  &
                  .test_analysis_1.Upper_DP_Group10_A,  &
                  .test_analysis_1.Upper_DP_Group10_B,  &
                  .test_analysis_1.Upper_DP_Group10_C,  &
                  .test_analysis_1.Upper_DP_Group11_A,  &
                  .test_analysis_1.Upper_DP_Group11_B,  &
                  .test_analysis_1.Upper_DP_Group11_C,  &
                  .test_analysis_1.Upper_DP_Group12_A,  &
                  .test_analysis_1.Upper_DP_Group12_B,  &
                  .test_analysis_1.Upper_DP_Group12_C,  &
                  .test_analysis_1.Upper_DP_Group13_A,  &
                  .test_analysis_1.Upper_DP_Group13_B,  &
                  .test_analysis_1.Upper_DP_Group13_C,  &
                  .test_analysis_1.Upper_DP_Group14_A,  &
                  .test_analysis_1.Upper_DP_Group14_B,  &
                  .test_analysis_1.Upper_DP_Group14_C,  &
                  .test_analysis_1.Upper_DP_Group15_A,  &
                  .test_analysis_1.Upper_DP_Group15_B,  &
                  .test_analysis_1.Upper_DP_Group15_C,  &
                  .test_analysis_1.Upper_DP_Group16_A,  &
                  .test_analysis_1.Upper_DP_Group16_B,  &
                  .test_analysis_1.Upper_DP_Group16_C,  &
                  .test_analysis_1.Upper_DP_Group17_A,  &
                  .test_analysis_1.Upper_DP_Group17_B,  &
                  .test_analysis_1.Upper_DP_Group17_C,  &
                  .test_analysis_1.Upper_DP_Group18_A,  &
                  .test_analysis_1.Upper_DP_Group18_B,  &
                  .test_analysis_1.Upper_DP_Group18_C,  &
                  .test_analysis_1.Upper_DP_Group19_A,  &
                  .test_analysis_1.Upper_DP_Group19_B,  &
                  .test_analysis_1.Upper_DP_Group19_C,  &
                  .test_analysis_1.Upper_DP_Group20_A,  &
                  .test_analysis_1.Upper_DP_Group20_B,  &
                  .test_analysis_1.Upper_DP_Group20_C
!
variable modify  &
   variable_name = .test_analysis_1.AllSliderParts  &
   object_value = .test_analysis_1.test_pdc_01_sliderA,  &
                  .test_analysis_1.example_stabilizer_02_sliderA,  &
                  .test_analysis_1.example_stabilizer_02_sliderB,  &
                  .test_analysis_1.Upper_DP_Group1_sliderA,  &
                  .test_analysis_1.Upper_DP_Group1_sliderB,  &
                  .test_analysis_1.Upper_DP_Group2_sliderA,  &
                  .test_analysis_1.Upper_DP_Group2_sliderB,  &
                  .test_analysis_1.Upper_DP_Group3_sliderA,  &
                  .test_analysis_1.Upper_DP_Group3_sliderB,  &
                  .test_analysis_1.Upper_DP_Group4_sliderA,  &
                  .test_analysis_1.Upper_DP_Group4_sliderB,  &
                  .test_analysis_1.Upper_DP_Group5_sliderA,  &
                  .test_analysis_1.Upper_DP_Group5_sliderB,  &
                  .test_analysis_1.Upper_DP_Group6_sliderA,  &
                  .test_analysis_1.Upper_DP_Group6_sliderB,  &
                  .test_analysis_1.Upper_DP_Group7_sliderA,  &
                  .test_analysis_1.Upper_DP_Group7_sliderB,  &
                  .test_analysis_1.Upper_DP_Group8_sliderA,  &
                  .test_analysis_1.Upper_DP_Group8_sliderB,  &
                  .test_analysis_1.Upper_DP_Group9_sliderA,  &
                  .test_analysis_1.Upper_DP_Group9_sliderB,  &
                  .test_analysis_1.Upper_DP_Group10_sliderA,  &
                  .test_analysis_1.Upper_DP_Group10_sliderB,  &
                  .test_analysis_1.Upper_DP_Group11_sliderA,  &
                  .test_analysis_1.Upper_DP_Group11_sliderB,  &
                  .test_analysis_1.Upper_DP_Group12_sliderA,  &
                  .test_analysis_1.Upper_DP_Group12_sliderB,  &
                  .test_analysis_1.Upper_DP_Group13_sliderA,  &
                  .test_analysis_1.Upper_DP_Group13_sliderB,  &
                  .test_analysis_1.Upper_DP_Group14_sliderA,  &
                  .test_analysis_1.Upper_DP_Group14_sliderB,  &
                  .test_analysis_1.Upper_DP_Group15_sliderA,  &
                  .test_analysis_1.Upper_DP_Group15_sliderB,  &
                  .test_analysis_1.Upper_DP_Group16_sliderA,  &
                  .test_analysis_1.Upper_DP_Group16_sliderB,  &
                  .test_analysis_1.Upper_DP_Group17_sliderA,  &
                  .test_analysis_1.Upper_DP_Group17_sliderB,  &
                  .test_analysis_1.Upper_DP_Group18_sliderA,  &
                  .test_analysis_1.Upper_DP_Group18_sliderB,  &
                  .test_analysis_1.Upper_DP_Group19_sliderA,  &
                  .test_analysis_1.Upper_DP_Group19_sliderB,  &
                  .test_analysis_1.Upper_DP_Group20_sliderA,  &
                  .test_analysis_1.Upper_DP_Group20_sliderB,  &
                  .test_analysis_1.Upper_DP_Group20_sliderC
!
!---------------------------- Function definitions ----------------------------!
!
!
data_element modify variable  &
   variable_name = .test_analysis_1.Command_ROP  &
   function = "STEP(TIME,30.0,0,30.0+15.0,100.0/3600)"
!
data_element modify variable  &
   variable_name = .test_analysis_1.Bit_omega  &
   function = "WZ(.test_analysis_1.test_pdc_01.LateralRef,.test_analysis_1.test_pdc_01_sliderA.cm,.test_analysis_1.test_pdc_01_sliderA.cm)"
!
data_element modify variable  &
   variable_name = .test_analysis_1.drive_torque_command  &
   function = "VARVAL(.test_analysis_1.PropGain)*DIF1(.test_analysis_1.StringSpeedError)+VARVAL(.test_analysis_1.IntGain)*DIF(.test_analysis_1.StringSpeedError)+VARVAL(.test_analysis_1.DerivGain)*DIF1(.test_analysis_1.StringSpeedErrorRate)"
!
data_element modify variable  &
   variable_name = .test_analysis_1.TOS_AZ  &
   function = "DIF(.test_analysis_1.TOS_WZ_integral)"
!
data_element modify variable  &
   variable_name = .test_analysis_1.TOS_WZ  &
   function = "WZ(.test_analysis_1.Upper_DP_Group20_C.end_C, .test_analysis_1.ground.adrill_origin, .test_analysis_1.Upper_DP_Group20_C.end_C)"
!
data_element modify variable  &
   variable_name = .test_analysis_1.ePipe_topAZ  &
   function = "ARYVAL(.test_analysis_1.Epipe1TorsionStates,1)"
!
data_element modify variable  &
   variable_name = .test_analysis_1.ePipe_topWZ  &
   function = "ARYVAL(.test_analysis_1.Epipe1TorsionStates,5)"
!
data_element modify variable  &
   variable_name = .test_analysis_1.ePipe_topRPM  &
   function = "ARYVAL(.test_analysis_1.Epipe1TorsionStates,5)*30/PI"
!
data_element modify variable  &
   variable_name = .test_analysis_1.hookload_command  &
   function = "-DIF(.test_analysis_1.HookLoadLatch)+VARVAL(.test_analysis_1.Command_WOB)"
!
data_element modify variable  &
   variable_name = .test_analysis_1.TOS_Z  &
   function = "DIF(.test_analysis_1.TOS_VZ_integral)"
!
data_element modify variable  &
   variable_name = .test_analysis_1.TOS_VZ  &
   function = "VZ(.test_analysis_1.Upper_DP_Group20_C.end_C, .test_analysis_1.ground.adrill_origin, .test_analysis_1.Upper_DP_Group20_C.end_C)"
!
data_element modify variable  &
   variable_name = .test_analysis_1.g_hat  &
   function = "27.2604183673"
!
data_element modify variable  &
   variable_name = .test_analysis_1.Command_String_Speed  &
   function = "STEP(TIME,15.0,0.0,15.0+15.0,60.0*PI/30)"
!
data_element modify variable  &
   variable_name = .test_analysis_1.PropGain  &
   function = "-1.0326E+04"
!
data_element modify variable  &
   variable_name = .test_analysis_1.IntGain  &
   function = "-3.4665E+04"
!
data_element modify variable  &
   variable_name = .test_analysis_1.DerivGain  &
   function = "-708.0"
!
data_element modify variable  &
   variable_name = .test_analysis_1.motor_RPM  &
   function = "DIF(.test_analysis_1.MotorSpeedFilter)*30/PI"
!
data_element modify variable  &
   variable_name = .test_analysis_1.MWDFlowDeficit  &
   function = "1.0"
!
data_element modify variable  &
   variable_name = .test_analysis_1.motor_GPM  &
   function = "VARVAL(.test_analysis_1.MWDFlowDeficit) * (STEP(TIME,0.0,0.0,0.0+15.0,500.0))"
!
data_element modify variable  &
   variable_name = .test_analysis_1.Command_WOB  &
   function = "STEP(TIME,30.0,0,30.0+15.0,50.0)"
!
data_element modify variable  &
   variable_name = .test_analysis_1.BitMD  &
   function = "DIF(.test_analysis_1.integrated_ROP)"
!
data_element modify variable  &
   variable_name = .test_analysis_1.Surface_MSE  &
   function = "VARVAL(.test_analysis_1.Command_WOB)/117.8511151185",  &
              " +ARYVAL(.test_analysis_1.Epipe1TorsionStates,5)* ",  &
              "SFORCE(.test_analysis_1.topdrive,0,8,.test_analysis_1.TOS_direction_marker)/117.8511151185",  &
              "/ MAX(1E-2,ARYVAL(.test_analysis_1.Epipe1AxialStates,5))"
!
data_element modify variable  &
   variable_name = .test_analysis_1.Bottom_MSE  &
   function = "DIF(.test_analysis_1.BitForceFilter)/117.8511151185",  &
              " +VARVAL(.test_analysis_1.Bit_omega)*DIF(.test_analysis_1.BitTorqueFilter)/117.8511151185",  &
              "/ MAX(1E-2,DIF1(.test_analysis_1.integrated_BOHV))"
!
data_element modify variable  &
   variable_name = .test_analysis_1.dummy_DGSE_input  &
   function = "1"
!
part modify equation differential_equation  &
   differential_equation_name = .test_analysis_1.integrated_ROP  &
   function = "VARVAL(.test_analysis_1.Command_ROP)"
!
part modify equation differential_equation  &
   differential_equation_name = .test_analysis_1.integrated_BOHV  &
   function = "VZ(.test_analysis_1.Hole_Bottom.gref1,.test_analysis_1.ground.adrill_origin,.test_analysis_1.Hole_Bottom.gref1)"
!
part modify equation differential_equation  &
   differential_equation_name = .test_analysis_1.test_pdc_01_A_WZ_integral  &
   function = "WZ(.test_analysis_1.test_pdc_01.LateralRef,.test_analysis_1.test_pdc_01_sliderA.cm,.test_analysis_1.test_pdc_01_sliderA.cm)"
!
part modify equation differential_equation  &
   differential_equation_name = .test_analysis_1.example_stabilizer_02_A_WZ_integral  &
   function = "WZ(.test_analysis_1.example_stabilizer_02_B.barrelA1,.test_analysis_1.example_stabilizer_02_sliderA.cm,.test_analysis_1.example_stabilizer_02_sliderA.cm)"
!
part modify equation differential_equation  &
   differential_equation_name = .test_analysis_1.example_stabilizer_02_B_WZ_integral  &
   function = "WZ(.test_analysis_1.example_stabilizer_02_B.barrelB1,.test_analysis_1.example_stabilizer_02_sliderB.cm,.test_analysis_1.example_stabilizer_02_sliderB.cm)"
!
part modify equation differential_equation  &
   differential_equation_name = .test_analysis_1.TOS_WZ_integral  &
   function = "WZ(.test_analysis_1.Upper_DP_Group20_C.end_C, .test_analysis_1.ground.adrill_origin, .test_analysis_1.Upper_DP_Group20_C.end_C)"
!
part modify equation differential_equation  &
   differential_equation_name = .test_analysis_1.TOS_VZ_integral  &
   function = "VZ(.test_analysis_1.Upper_DP_Group20_C.end_C, .test_analysis_1.ground.adrill_origin, .test_analysis_1.Upper_DP_Group20_C.end_C)"
!
part modify equation differential_equation  &
   differential_equation_name = .test_analysis_1.StringSpeedFilter  &
   function = "1./2.0*(ARYVAL(.test_analysis_1.Epipe1TorsionStates,5)-DIF(.test_analysis_1.StringSpeedFilter))"
!
part modify equation differential_equation  &
   differential_equation_name = .test_analysis_1.StringSpeedError  &
   function = "(DIF(.test_analysis_1.StringSpeedFilter)-VARVAL(.test_analysis_1.Command_String_Speed)) "
!
part modify equation differential_equation  &
   differential_equation_name = .test_analysis_1.StringSpeedErrorRate  &
   function = "(DIF(.test_analysis_1.StringSpeedFilter)-DIF(.test_analysis_1.StringSpeedErrorRate)) "
!
part modify equation differential_equation  &
   differential_equation_name = .test_analysis_1.MotorSpeedFilter  &
   function = "0"
!
part modify equation differential_equation  &
   differential_equation_name = .test_analysis_1.Intg_Motor_Speed  &
   function = "DIF(.test_analysis_1.MotorSpeedFilter)"
!
part modify equation differential_equation  &
   differential_equation_name = .test_analysis_1.BitForceFilter  &
   function = "1./2.0 * (JOINT(.test_analysis_1.connector_2to1,0,4,.test_analysis_1.test_pdc_01.end_B) -DIF(.test_analysis_1.BitForceFilter))"
!
part modify equation differential_equation  &
   differential_equation_name = .test_analysis_1.BitTorqueFilter  &
   function = "1./2.0 * (JOINT(.test_analysis_1.connector_2to1,0,8,.test_analysis_1.test_pdc_01.end_B) -DIF(.test_analysis_1.BitTorqueFilter))"
!
part modify equation differential_equation  &
   differential_equation_name = .test_analysis_1.BitForceError  &
   function = "(DIF(.test_analysis_1.BitForceFilter)-VARVAL(.test_analysis_1.Command_WOB)) "
!
part modify equation differential_equation  &
   differential_equation_name = .test_analysis_1.HookLoadLatch  &
   function = "IF(MODE-5: 0,",  &
              "-DIF(.test_analysis_1.HookLoadLatch)-1E7*(DZ(.test_analysis_1.Upper_DP_Group20_C.end_C,.test_analysis_1.ground.adrill_origin,.test_analysis_1.ground.adrill_origin)-1339.1510173281),",  &
              "0 )"
!
part modify equation differential_equation  &
   differential_equation_name = .test_analysis_1.filtered_Surface_MSE  &
   function = "1.0/10.0*(VARVAL(.test_analysis_1.Surface_MSE)-DIF(.test_analysis_1.filtered_Surface_MSE))"
!
part modify equation differential_equation  &
   differential_equation_name = .test_analysis_1.filtered_Bottom_MSE  &
   function = "1.0/10.0*(VARVAL(.test_analysis_1.Bottom_MSE)-DIF(.test_analysis_1.filtered_Bottom_MSE))"
!
force modify direct single_component_force  &
   single_component_force_name = .test_analysis_1.topdrive  &
   function = "MIN(ARYVAL(.test_analysis_1.Epipe1TorsionOutput,1),3.5E+04)"
!
force modify direct force_vector  &
   force_vector_name = .test_analysis_1.test_pdc_01_sliderA_locator  &
   x_force_function = "0"  &
   y_force_function = "0"  &
   z_force_function = "-1E5*DZ(.test_analysis_1.test_pdc_01.LateralRef,.test_analysis_1.test_pdc_01_sliderA.cm,.test_analysis_1.test_pdc_01_sliderA.cm)",  &
              "-1E4*VZ(.test_analysis_1.test_pdc_01.LateralRef,.test_analysis_1.test_pdc_01_sliderA.cm,.test_analysis_1.test_pdc_01_sliderA.cm)"
!
force modify direct force_vector  &
   force_vector_name = .test_analysis_1.example_stabilizer_02_sliderA_locator  &
   x_force_function = "0"  &
   y_force_function = "0"  &
   z_force_function = "-1E5*DZ(.test_analysis_1.example_stabilizer_02_B.barrelA1,.test_analysis_1.example_stabilizer_02_sliderA.cm,.test_analysis_1.example_stabilizer_02_sliderA.cm)",  &
              "-1E4*VZ(.test_analysis_1.example_stabilizer_02_B.barrelA1,.test_analysis_1.example_stabilizer_02_sliderA.cm,.test_analysis_1.example_stabilizer_02_sliderA.cm)"
!
force modify direct force_vector  &
   force_vector_name = .test_analysis_1.example_stabilizer_02_sliderB_locator  &
   x_force_function = "0"  &
   y_force_function = "0"  &
   z_force_function = "-1E5*DZ(.test_analysis_1.example_stabilizer_02_B.barrelB1,.test_analysis_1.example_stabilizer_02_sliderB.cm,.test_analysis_1.example_stabilizer_02_sliderB.cm)",  &
              "-1E4*VZ(.test_analysis_1.example_stabilizer_02_B.barrelB1,.test_analysis_1.example_stabilizer_02_sliderB.cm,.test_analysis_1.example_stabilizer_02_sliderB.cm)"
!
force modify direct force_vector  &
   force_vector_name = .test_analysis_1.Upper_DP_Group1_sliderA_locator  &
   x_force_function = "0"  &
   y_force_function = "0"  &
   z_force_function = "-1E5*DZ(.test_analysis_1.Upper_DP_Group1_A.end_A,.test_analysis_1.Upper_DP_Group1_sliderA.cm,.test_analysis_1.Upper_DP_Group1_sliderA.cm)",  &
              "-1E4*VZ(.test_analysis_1.Upper_DP_Group1_A.end_A,.test_analysis_1.Upper_DP_Group1_sliderA.cm,.test_analysis_1.Upper_DP_Group1_sliderA.cm)"
!
force modify direct force_vector  &
   force_vector_name = .test_analysis_1.Upper_DP_Group1_sliderB_locator  &
   x_force_function = "0"  &
   y_force_function = "0"  &
   z_force_function = "-1E5*DZ(.test_analysis_1.Upper_DP_Group1_B.cm,.test_analysis_1.Upper_DP_Group1_sliderB.cm,.test_analysis_1.Upper_DP_Group1_sliderB.cm)",  &
              "-1E4*VZ(.test_analysis_1.Upper_DP_Group1_B.cm,.test_analysis_1.Upper_DP_Group1_sliderB.cm,.test_analysis_1.Upper_DP_Group1_sliderB.cm)"
!
force modify direct force_vector  &
   force_vector_name = .test_analysis_1.Upper_DP_Group1_fluidmassA  &
   x_force_function = "-1.5761751812*ACCX(.test_analysis_1.Upper_DP_Group1_A.cm,0,.test_analysis_1.Upper_DP_Group1_A.cm)"  &
   y_force_function = "-1.5761751812*ACCY(.test_analysis_1.Upper_DP_Group1_A.cm,0,.test_analysis_1.Upper_DP_Group1_A.cm)"  &
   z_force_function = "0"
!
force modify direct force_vector  &
   force_vector_name = .test_analysis_1.Upper_DP_Group1_fluidmassC  &
   x_force_function = "-1.5761751812*ACCX(.test_analysis_1.Upper_DP_Group1_C.cm,0,.test_analysis_1.Upper_DP_Group1_C.cm)"  &
   y_force_function = "-1.5761751812*ACCY(.test_analysis_1.Upper_DP_Group1_C.cm,0,.test_analysis_1.Upper_DP_Group1_C.cm)"  &
   z_force_function = "0"
!
force modify direct force_vector  &
   force_vector_name = .test_analysis_1.Upper_DP_Group1_fluidmassB  &
   x_force_function = "-3.1523503623*ACCX(.test_analysis_1.Upper_DP_Group1_B.cm,0,.test_analysis_1.Upper_DP_Group1_B.cm)"  &
   y_force_function = "-3.1523503623*ACCY(.test_analysis_1.Upper_DP_Group1_B.cm,0,.test_analysis_1.Upper_DP_Group1_B.cm)"  &
   z_force_function = "0"
!
force modify direct force_vector  &
   force_vector_name = .test_analysis_1.Upper_DP_Group2_sliderA_locator  &
   x_force_function = "0"  &
   y_force_function = "0"  &
   z_force_function = "-1E5*DZ(.test_analysis_1.Upper_DP_Group2_A.end_A,.test_analysis_1.Upper_DP_Group2_sliderA.cm,.test_analysis_1.Upper_DP_Group2_sliderA.cm)",  &
              "-1E4*VZ(.test_analysis_1.Upper_DP_Group2_A.end_A,.test_analysis_1.Upper_DP_Group2_sliderA.cm,.test_analysis_1.Upper_DP_Group2_sliderA.cm)"
!
force modify direct force_vector  &
   force_vector_name = .test_analysis_1.Upper_DP_Group2_sliderB_locator  &
   x_force_function = "0"  &
   y_force_function = "0"  &
   z_force_function = "-1E5*DZ(.test_analysis_1.Upper_DP_Group2_B.cm,.test_analysis_1.Upper_DP_Group2_sliderB.cm,.test_analysis_1.Upper_DP_Group2_sliderB.cm)",  &
              "-1E4*VZ(.test_analysis_1.Upper_DP_Group2_B.cm,.test_analysis_1.Upper_DP_Group2_sliderB.cm,.test_analysis_1.Upper_DP_Group2_sliderB.cm)"
!
force modify direct force_vector  &
   force_vector_name = .test_analysis_1.Upper_DP_Group2_fluidmassA  &
   x_force_function = "-1.5761751812*ACCX(.test_analysis_1.Upper_DP_Group2_A.cm,0,.test_analysis_1.Upper_DP_Group2_A.cm)"  &
   y_force_function = "-1.5761751812*ACCY(.test_analysis_1.Upper_DP_Group2_A.cm,0,.test_analysis_1.Upper_DP_Group2_A.cm)"  &
   z_force_function = "0"
!
force modify direct force_vector  &
   force_vector_name = .test_analysis_1.Upper_DP_Group2_fluidmassC  &
   x_force_function = "-1.5761751812*ACCX(.test_analysis_1.Upper_DP_Group2_C.cm,0,.test_analysis_1.Upper_DP_Group2_C.cm)"  &
   y_force_function = "-1.5761751812*ACCY(.test_analysis_1.Upper_DP_Group2_C.cm,0,.test_analysis_1.Upper_DP_Group2_C.cm)"  &
   z_force_function = "0"
!
force modify direct force_vector  &
   force_vector_name = .test_analysis_1.Upper_DP_Group2_fluidmassB  &
   x_force_function = "-3.1523503623*ACCX(.test_analysis_1.Upper_DP_Group2_B.cm,0,.test_analysis_1.Upper_DP_Group2_B.cm)"  &
   y_force_function = "-3.1523503623*ACCY(.test_analysis_1.Upper_DP_Group2_B.cm,0,.test_analysis_1.Upper_DP_Group2_B.cm)"  &
   z_force_function = "0"
!
force modify direct force_vector  &
   force_vector_name = .test_analysis_1.Upper_DP_Group3_sliderA_locator  &
   x_force_function = "0"  &
   y_force_function = "0"  &
   z_force_function = "-1E5*DZ(.test_analysis_1.Upper_DP_Group3_A.end_A,.test_analysis_1.Upper_DP_Group3_sliderA.cm,.test_analysis_1.Upper_DP_Group3_sliderA.cm)",  &
              "-1E4*VZ(.test_analysis_1.Upper_DP_Group3_A.end_A,.test_analysis_1.Upper_DP_Group3_sliderA.cm,.test_analysis_1.Upper_DP_Group3_sliderA.cm)"
!
force modify direct force_vector  &
   force_vector_name = .test_analysis_1.Upper_DP_Group3_sliderB_locator  &
   x_force_function = "0"  &
   y_force_function = "0"  &
   z_force_function = "-1E5*DZ(.test_analysis_1.Upper_DP_Group3_B.cm,.test_analysis_1.Upper_DP_Group3_sliderB.cm,.test_analysis_1.Upper_DP_Group3_sliderB.cm)",  &
              "-1E4*VZ(.test_analysis_1.Upper_DP_Group3_B.cm,.test_analysis_1.Upper_DP_Group3_sliderB.cm,.test_analysis_1.Upper_DP_Group3_sliderB.cm)"
!
force modify direct force_vector  &
   force_vector_name = .test_analysis_1.Upper_DP_Group3_fluidmassA  &
   x_force_function = "-1.5761751812*ACCX(.test_analysis_1.Upper_DP_Group3_A.cm,0,.test_analysis_1.Upper_DP_Group3_A.cm)"  &
   y_force_function = "-1.5761751812*ACCY(.test_analysis_1.Upper_DP_Group3_A.cm,0,.test_analysis_1.Upper_DP_Group3_A.cm)"  &
   z_force_function = "0"
!
force modify direct force_vector  &
   force_vector_name = .test_analysis_1.Upper_DP_Group3_fluidmassC  &
   x_force_function = "-1.5761751812*ACCX(.test_analysis_1.Upper_DP_Group3_C.cm,0,.test_analysis_1.Upper_DP_Group3_C.cm)"  &
   y_force_function = "-1.5761751812*ACCY(.test_analysis_1.Upper_DP_Group3_C.cm,0,.test_analysis_1.Upper_DP_Group3_C.cm)"  &
   z_force_function = "0"
!
force modify direct force_vector  &
   force_vector_name = .test_analysis_1.Upper_DP_Group3_fluidmassB  &
   x_force_function = "-3.1523503623*ACCX(.test_analysis_1.Upper_DP_Group3_B.cm,0,.test_analysis_1.Upper_DP_Group3_B.cm)"  &
   y_force_function = "-3.1523503623*ACCY(.test_analysis_1.Upper_DP_Group3_B.cm,0,.test_analysis_1.Upper_DP_Group3_B.cm)"  &
   z_force_function = "0"
!
force modify direct force_vector  &
   force_vector_name = .test_analysis_1.Upper_DP_Group4_sliderA_locator  &
   x_force_function = "0"  &
   y_force_function = "0"  &
   z_force_function = "-1E5*DZ(.test_analysis_1.Upper_DP_Group4_A.end_A,.test_analysis_1.Upper_DP_Group4_sliderA.cm,.test_analysis_1.Upper_DP_Group4_sliderA.cm)",  &
              "-1E4*VZ(.test_analysis_1.Upper_DP_Group4_A.end_A,.test_analysis_1.Upper_DP_Group4_sliderA.cm,.test_analysis_1.Upper_DP_Group4_sliderA.cm)"
!
force modify direct force_vector  &
   force_vector_name = .test_analysis_1.Upper_DP_Group4_sliderB_locator  &
   x_force_function = "0"  &
   y_force_function = "0"  &
   z_force_function = "-1E5*DZ(.test_analysis_1.Upper_DP_Group4_B.cm,.test_analysis_1.Upper_DP_Group4_sliderB.cm,.test_analysis_1.Upper_DP_Group4_sliderB.cm)",  &
              "-1E4*VZ(.test_analysis_1.Upper_DP_Group4_B.cm,.test_analysis_1.Upper_DP_Group4_sliderB.cm,.test_analysis_1.Upper_DP_Group4_sliderB.cm)"
!
force modify direct force_vector  &
   force_vector_name = .test_analysis_1.Upper_DP_Group4_fluidmassA  &
   x_force_function = "-1.5761751812*ACCX(.test_analysis_1.Upper_DP_Group4_A.cm,0,.test_analysis_1.Upper_DP_Group4_A.cm)"  &
   y_force_function = "-1.5761751812*ACCY(.test_analysis_1.Upper_DP_Group4_A.cm,0,.test_analysis_1.Upper_DP_Group4_A.cm)"  &
   z_force_function = "0"
!
force modify direct force_vector  &
   force_vector_name = .test_analysis_1.Upper_DP_Group4_fluidmassC  &
   x_force_function = "-1.5761751812*ACCX(.test_analysis_1.Upper_DP_Group4_C.cm,0,.test_analysis_1.Upper_DP_Group4_C.cm)"  &
   y_force_function = "-1.5761751812*ACCY(.test_analysis_1.Upper_DP_Group4_C.cm,0,.test_analysis_1.Upper_DP_Group4_C.cm)"  &
   z_force_function = "0"
!
force modify direct force_vector  &
   force_vector_name = .test_analysis_1.Upper_DP_Group4_fluidmassB  &
   x_force_function = "-3.1523503623*ACCX(.test_analysis_1.Upper_DP_Group4_B.cm,0,.test_analysis_1.Upper_DP_Group4_B.cm)"  &
   y_force_function = "-3.1523503623*ACCY(.test_analysis_1.Upper_DP_Group4_B.cm,0,.test_analysis_1.Upper_DP_Group4_B.cm)"  &
   z_force_function = "0"
!
force modify direct force_vector  &
   force_vector_name = .test_analysis_1.Upper_DP_Group5_sliderA_locator  &
   x_force_function = "0"  &
   y_force_function = "0"  &
   z_force_function = "-1E5*DZ(.test_analysis_1.Upper_DP_Group5_A.end_A,.test_analysis_1.Upper_DP_Group5_sliderA.cm,.test_analysis_1.Upper_DP_Group5_sliderA.cm)",  &
              "-1E4*VZ(.test_analysis_1.Upper_DP_Group5_A.end_A,.test_analysis_1.Upper_DP_Group5_sliderA.cm,.test_analysis_1.Upper_DP_Group5_sliderA.cm)"
!
force modify direct force_vector  &
   force_vector_name = .test_analysis_1.Upper_DP_Group5_sliderB_locator  &
   x_force_function = "0"  &
   y_force_function = "0"  &
   z_force_function = "-1E5*DZ(.test_analysis_1.Upper_DP_Group5_B.cm,.test_analysis_1.Upper_DP_Group5_sliderB.cm,.test_analysis_1.Upper_DP_Group5_sliderB.cm)",  &
              "-1E4*VZ(.test_analysis_1.Upper_DP_Group5_B.cm,.test_analysis_1.Upper_DP_Group5_sliderB.cm,.test_analysis_1.Upper_DP_Group5_sliderB.cm)"
!
force modify direct force_vector  &
   force_vector_name = .test_analysis_1.Upper_DP_Group5_fluidmassA  &
   x_force_function = "-1.5761751812*ACCX(.test_analysis_1.Upper_DP_Group5_A.cm,0,.test_analysis_1.Upper_DP_Group5_A.cm)"  &
   y_force_function = "-1.5761751812*ACCY(.test_analysis_1.Upper_DP_Group5_A.cm,0,.test_analysis_1.Upper_DP_Group5_A.cm)"  &
   z_force_function = "0"
!
force modify direct force_vector  &
   force_vector_name = .test_analysis_1.Upper_DP_Group5_fluidmassC  &
   x_force_function = "-1.5761751812*ACCX(.test_analysis_1.Upper_DP_Group5_C.cm,0,.test_analysis_1.Upper_DP_Group5_C.cm)"  &
   y_force_function = "-1.5761751812*ACCY(.test_analysis_1.Upper_DP_Group5_C.cm,0,.test_analysis_1.Upper_DP_Group5_C.cm)"  &
   z_force_function = "0"
!
force modify direct force_vector  &
   force_vector_name = .test_analysis_1.Upper_DP_Group5_fluidmassB  &
   x_force_function = "-3.1523503623*ACCX(.test_analysis_1.Upper_DP_Group5_B.cm,0,.test_analysis_1.Upper_DP_Group5_B.cm)"  &
   y_force_function = "-3.1523503623*ACCY(.test_analysis_1.Upper_DP_Group5_B.cm,0,.test_analysis_1.Upper_DP_Group5_B.cm)"  &
   z_force_function = "0"
!
force modify direct force_vector  &
   force_vector_name = .test_analysis_1.Upper_DP_Group6_sliderA_locator  &
   x_force_function = "0"  &
   y_force_function = "0"  &
   z_force_function = "-1E5*DZ(.test_analysis_1.Upper_DP_Group6_A.end_A,.test_analysis_1.Upper_DP_Group6_sliderA.cm,.test_analysis_1.Upper_DP_Group6_sliderA.cm)",  &
              "-1E4*VZ(.test_analysis_1.Upper_DP_Group6_A.end_A,.test_analysis_1.Upper_DP_Group6_sliderA.cm,.test_analysis_1.Upper_DP_Group6_sliderA.cm)"
!
force modify direct force_vector  &
   force_vector_name = .test_analysis_1.Upper_DP_Group6_sliderB_locator  &
   x_force_function = "0"  &
   y_force_function = "0"  &
   z_force_function = "-1E5*DZ(.test_analysis_1.Upper_DP_Group6_B.cm,.test_analysis_1.Upper_DP_Group6_sliderB.cm,.test_analysis_1.Upper_DP_Group6_sliderB.cm)",  &
              "-1E4*VZ(.test_analysis_1.Upper_DP_Group6_B.cm,.test_analysis_1.Upper_DP_Group6_sliderB.cm,.test_analysis_1.Upper_DP_Group6_sliderB.cm)"
!
force modify direct force_vector  &
   force_vector_name = .test_analysis_1.Upper_DP_Group6_fluidmassA  &
   x_force_function = "-1.5761751812*ACCX(.test_analysis_1.Upper_DP_Group6_A.cm,0,.test_analysis_1.Upper_DP_Group6_A.cm)"  &
   y_force_function = "-1.5761751812*ACCY(.test_analysis_1.Upper_DP_Group6_A.cm,0,.test_analysis_1.Upper_DP_Group6_A.cm)"  &
   z_force_function = "0"
!
force modify direct force_vector  &
   force_vector_name = .test_analysis_1.Upper_DP_Group6_fluidmassC  &
   x_force_function = "-1.5761751812*ACCX(.test_analysis_1.Upper_DP_Group6_C.cm,0,.test_analysis_1.Upper_DP_Group6_C.cm)"  &
   y_force_function = "-1.5761751812*ACCY(.test_analysis_1.Upper_DP_Group6_C.cm,0,.test_analysis_1.Upper_DP_Group6_C.cm)"  &
   z_force_function = "0"
!
force modify direct force_vector  &
   force_vector_name = .test_analysis_1.Upper_DP_Group6_fluidmassB  &
   x_force_function = "-3.1523503623*ACCX(.test_analysis_1.Upper_DP_Group6_B.cm,0,.test_analysis_1.Upper_DP_Group6_B.cm)"  &
   y_force_function = "-3.1523503623*ACCY(.test_analysis_1.Upper_DP_Group6_B.cm,0,.test_analysis_1.Upper_DP_Group6_B.cm)"  &
   z_force_function = "0"
!
force modify direct force_vector  &
   force_vector_name = .test_analysis_1.Upper_DP_Group7_sliderA_locator  &
   x_force_function = "0"  &
   y_force_function = "0"  &
   z_force_function = "-1E5*DZ(.test_analysis_1.Upper_DP_Group7_A.end_A,.test_analysis_1.Upper_DP_Group7_sliderA.cm,.test_analysis_1.Upper_DP_Group7_sliderA.cm)",  &
              "-1E4*VZ(.test_analysis_1.Upper_DP_Group7_A.end_A,.test_analysis_1.Upper_DP_Group7_sliderA.cm,.test_analysis_1.Upper_DP_Group7_sliderA.cm)"
!
force modify direct force_vector  &
   force_vector_name = .test_analysis_1.Upper_DP_Group7_sliderB_locator  &
   x_force_function = "0"  &
   y_force_function = "0"  &
   z_force_function = "-1E5*DZ(.test_analysis_1.Upper_DP_Group7_B.cm,.test_analysis_1.Upper_DP_Group7_sliderB.cm,.test_analysis_1.Upper_DP_Group7_sliderB.cm)",  &
              "-1E4*VZ(.test_analysis_1.Upper_DP_Group7_B.cm,.test_analysis_1.Upper_DP_Group7_sliderB.cm,.test_analysis_1.Upper_DP_Group7_sliderB.cm)"
!
force modify direct force_vector  &
   force_vector_name = .test_analysis_1.Upper_DP_Group7_fluidmassA  &
   x_force_function = "-1.5761751812*ACCX(.test_analysis_1.Upper_DP_Group7_A.cm,0,.test_analysis_1.Upper_DP_Group7_A.cm)"  &
   y_force_function = "-1.5761751812*ACCY(.test_analysis_1.Upper_DP_Group7_A.cm,0,.test_analysis_1.Upper_DP_Group7_A.cm)"  &
   z_force_function = "0"
!
force modify direct force_vector  &
   force_vector_name = .test_analysis_1.Upper_DP_Group7_fluidmassC  &
   x_force_function = "-1.5761751812*ACCX(.test_analysis_1.Upper_DP_Group7_C.cm,0,.test_analysis_1.Upper_DP_Group7_C.cm)"  &
   y_force_function = "-1.5761751812*ACCY(.test_analysis_1.Upper_DP_Group7_C.cm,0,.test_analysis_1.Upper_DP_Group7_C.cm)"  &
   z_force_function = "0"
!
force modify direct force_vector  &
   force_vector_name = .test_analysis_1.Upper_DP_Group7_fluidmassB  &
   x_force_function = "-3.1523503623*ACCX(.test_analysis_1.Upper_DP_Group7_B.cm,0,.test_analysis_1.Upper_DP_Group7_B.cm)"  &
   y_force_function = "-3.1523503623*ACCY(.test_analysis_1.Upper_DP_Group7_B.cm,0,.test_analysis_1.Upper_DP_Group7_B.cm)"  &
   z_force_function = "0"
!
force modify direct force_vector  &
   force_vector_name = .test_analysis_1.Upper_DP_Group8_sliderA_locator  &
   x_force_function = "0"  &
   y_force_function = "0"  &
   z_force_function = "-1E5*DZ(.test_analysis_1.Upper_DP_Group8_A.end_A,.test_analysis_1.Upper_DP_Group8_sliderA.cm,.test_analysis_1.Upper_DP_Group8_sliderA.cm)",  &
              "-1E4*VZ(.test_analysis_1.Upper_DP_Group8_A.end_A,.test_analysis_1.Upper_DP_Group8_sliderA.cm,.test_analysis_1.Upper_DP_Group8_sliderA.cm)"
!
force modify direct force_vector  &
   force_vector_name = .test_analysis_1.Upper_DP_Group8_sliderB_locator  &
   x_force_function = "0"  &
   y_force_function = "0"  &
   z_force_function = "-1E5*DZ(.test_analysis_1.Upper_DP_Group8_B.cm,.test_analysis_1.Upper_DP_Group8_sliderB.cm,.test_analysis_1.Upper_DP_Group8_sliderB.cm)",  &
              "-1E4*VZ(.test_analysis_1.Upper_DP_Group8_B.cm,.test_analysis_1.Upper_DP_Group8_sliderB.cm,.test_analysis_1.Upper_DP_Group8_sliderB.cm)"
!
force modify direct force_vector  &
   force_vector_name = .test_analysis_1.Upper_DP_Group8_fluidmassA  &
   x_force_function = "-1.5761751812*ACCX(.test_analysis_1.Upper_DP_Group8_A.cm,0,.test_analysis_1.Upper_DP_Group8_A.cm)"  &
   y_force_function = "-1.5761751812*ACCY(.test_analysis_1.Upper_DP_Group8_A.cm,0,.test_analysis_1.Upper_DP_Group8_A.cm)"  &
   z_force_function = "0"
!
force modify direct force_vector  &
   force_vector_name = .test_analysis_1.Upper_DP_Group8_fluidmassC  &
   x_force_function = "-1.5761751812*ACCX(.test_analysis_1.Upper_DP_Group8_C.cm,0,.test_analysis_1.Upper_DP_Group8_C.cm)"  &
   y_force_function = "-1.5761751812*ACCY(.test_analysis_1.Upper_DP_Group8_C.cm,0,.test_analysis_1.Upper_DP_Group8_C.cm)"  &
   z_force_function = "0"
!
force modify direct force_vector  &
   force_vector_name = .test_analysis_1.Upper_DP_Group8_fluidmassB  &
   x_force_function = "-3.1523503623*ACCX(.test_analysis_1.Upper_DP_Group8_B.cm,0,.test_analysis_1.Upper_DP_Group8_B.cm)"  &
   y_force_function = "-3.1523503623*ACCY(.test_analysis_1.Upper_DP_Group8_B.cm,0,.test_analysis_1.Upper_DP_Group8_B.cm)"  &
   z_force_function = "0"
!
force modify direct force_vector  &
   force_vector_name = .test_analysis_1.Upper_DP_Group9_sliderA_locator  &
   x_force_function = "0"  &
   y_force_function = "0"  &
   z_force_function = "-1E5*DZ(.test_analysis_1.Upper_DP_Group9_A.end_A,.test_analysis_1.Upper_DP_Group9_sliderA.cm,.test_analysis_1.Upper_DP_Group9_sliderA.cm)",  &
              "-1E4*VZ(.test_analysis_1.Upper_DP_Group9_A.end_A,.test_analysis_1.Upper_DP_Group9_sliderA.cm,.test_analysis_1.Upper_DP_Group9_sliderA.cm)"
!
force modify direct force_vector  &
   force_vector_name = .test_analysis_1.Upper_DP_Group9_sliderB_locator  &
   x_force_function = "0"  &
   y_force_function = "0"  &
   z_force_function = "-1E5*DZ(.test_analysis_1.Upper_DP_Group9_B.cm,.test_analysis_1.Upper_DP_Group9_sliderB.cm,.test_analysis_1.Upper_DP_Group9_sliderB.cm)",  &
              "-1E4*VZ(.test_analysis_1.Upper_DP_Group9_B.cm,.test_analysis_1.Upper_DP_Group9_sliderB.cm,.test_analysis_1.Upper_DP_Group9_sliderB.cm)"
!
force modify direct force_vector  &
   force_vector_name = .test_analysis_1.Upper_DP_Group9_fluidmassA  &
   x_force_function = "-1.5761751812*ACCX(.test_analysis_1.Upper_DP_Group9_A.cm,0,.test_analysis_1.Upper_DP_Group9_A.cm)"  &
   y_force_function = "-1.5761751812*ACCY(.test_analysis_1.Upper_DP_Group9_A.cm,0,.test_analysis_1.Upper_DP_Group9_A.cm)"  &
   z_force_function = "0"
!
force modify direct force_vector  &
   force_vector_name = .test_analysis_1.Upper_DP_Group9_fluidmassC  &
   x_force_function = "-1.5761751812*ACCX(.test_analysis_1.Upper_DP_Group9_C.cm,0,.test_analysis_1.Upper_DP_Group9_C.cm)"  &
   y_force_function = "-1.5761751812*ACCY(.test_analysis_1.Upper_DP_Group9_C.cm,0,.test_analysis_1.Upper_DP_Group9_C.cm)"  &
   z_force_function = "0"
!
force modify direct force_vector  &
   force_vector_name = .test_analysis_1.Upper_DP_Group9_fluidmassB  &
   x_force_function = "-3.1523503623*ACCX(.test_analysis_1.Upper_DP_Group9_B.cm,0,.test_analysis_1.Upper_DP_Group9_B.cm)"  &
   y_force_function = "-3.1523503623*ACCY(.test_analysis_1.Upper_DP_Group9_B.cm,0,.test_analysis_1.Upper_DP_Group9_B.cm)"  &
   z_force_function = "0"
!
force modify direct force_vector  &
   force_vector_name = .test_analysis_1.Upper_DP_Group10_sliderA_locator  &
   x_force_function = "0"  &
   y_force_function = "0"  &
   z_force_function = "-1E5*DZ(.test_analysis_1.Upper_DP_Group10_A.end_A,.test_analysis_1.Upper_DP_Group10_sliderA.cm,.test_analysis_1.Upper_DP_Group10_sliderA.cm)",  &
              "-1E4*VZ(.test_analysis_1.Upper_DP_Group10_A.end_A,.test_analysis_1.Upper_DP_Group10_sliderA.cm,.test_analysis_1.Upper_DP_Group10_sliderA.cm)"
!
force modify direct force_vector  &
   force_vector_name = .test_analysis_1.Upper_DP_Group10_sliderB_locator  &
   x_force_function = "0"  &
   y_force_function = "0"  &
   z_force_function = "-1E5*DZ(.test_analysis_1.Upper_DP_Group10_B.cm,.test_analysis_1.Upper_DP_Group10_sliderB.cm,.test_analysis_1.Upper_DP_Group10_sliderB.cm)",  &
              "-1E4*VZ(.test_analysis_1.Upper_DP_Group10_B.cm,.test_analysis_1.Upper_DP_Group10_sliderB.cm,.test_analysis_1.Upper_DP_Group10_sliderB.cm)"
!
force modify direct force_vector  &
   force_vector_name = .test_analysis_1.Upper_DP_Group10_fluidmassA  &
   x_force_function = "-1.5761751812*ACCX(.test_analysis_1.Upper_DP_Group10_A.cm,0,.test_analysis_1.Upper_DP_Group10_A.cm)"  &
   y_force_function = "-1.5761751812*ACCY(.test_analysis_1.Upper_DP_Group10_A.cm,0,.test_analysis_1.Upper_DP_Group10_A.cm)"  &
   z_force_function = "0"
!
force modify direct force_vector  &
   force_vector_name = .test_analysis_1.Upper_DP_Group10_fluidmassC  &
   x_force_function = "-1.5761751812*ACCX(.test_analysis_1.Upper_DP_Group10_C.cm,0,.test_analysis_1.Upper_DP_Group10_C.cm)"  &
   y_force_function = "-1.5761751812*ACCY(.test_analysis_1.Upper_DP_Group10_C.cm,0,.test_analysis_1.Upper_DP_Group10_C.cm)"  &
   z_force_function = "0"
!
force modify direct force_vector  &
   force_vector_name = .test_analysis_1.Upper_DP_Group10_fluidmassB  &
   x_force_function = "-3.1523503623*ACCX(.test_analysis_1.Upper_DP_Group10_B.cm,0,.test_analysis_1.Upper_DP_Group10_B.cm)"  &
   y_force_function = "-3.1523503623*ACCY(.test_analysis_1.Upper_DP_Group10_B.cm,0,.test_analysis_1.Upper_DP_Group10_B.cm)"  &
   z_force_function = "0"
!
force modify direct force_vector  &
   force_vector_name = .test_analysis_1.Upper_DP_Group11_sliderA_locator  &
   x_force_function = "0"  &
   y_force_function = "0"  &
   z_force_function = "-1E5*DZ(.test_analysis_1.Upper_DP_Group11_A.end_A,.test_analysis_1.Upper_DP_Group11_sliderA.cm,.test_analysis_1.Upper_DP_Group11_sliderA.cm)",  &
              "-1E4*VZ(.test_analysis_1.Upper_DP_Group11_A.end_A,.test_analysis_1.Upper_DP_Group11_sliderA.cm,.test_analysis_1.Upper_DP_Group11_sliderA.cm)"
!
force modify direct force_vector  &
   force_vector_name = .test_analysis_1.Upper_DP_Group11_sliderB_locator  &
   x_force_function = "0"  &
   y_force_function = "0"  &
   z_force_function = "-1E5*DZ(.test_analysis_1.Upper_DP_Group11_B.cm,.test_analysis_1.Upper_DP_Group11_sliderB.cm,.test_analysis_1.Upper_DP_Group11_sliderB.cm)",  &
              "-1E4*VZ(.test_analysis_1.Upper_DP_Group11_B.cm,.test_analysis_1.Upper_DP_Group11_sliderB.cm,.test_analysis_1.Upper_DP_Group11_sliderB.cm)"
!
force modify direct force_vector  &
   force_vector_name = .test_analysis_1.Upper_DP_Group11_fluidmassA  &
   x_force_function = "-1.5761751812*ACCX(.test_analysis_1.Upper_DP_Group11_A.cm,0,.test_analysis_1.Upper_DP_Group11_A.cm)"  &
   y_force_function = "-1.5761751812*ACCY(.test_analysis_1.Upper_DP_Group11_A.cm,0,.test_analysis_1.Upper_DP_Group11_A.cm)"  &
   z_force_function = "0"
!
force modify direct force_vector  &
   force_vector_name = .test_analysis_1.Upper_DP_Group11_fluidmassC  &
   x_force_function = "-1.5761751812*ACCX(.test_analysis_1.Upper_DP_Group11_C.cm,0,.test_analysis_1.Upper_DP_Group11_C.cm)"  &
   y_force_function = "-1.5761751812*ACCY(.test_analysis_1.Upper_DP_Group11_C.cm,0,.test_analysis_1.Upper_DP_Group11_C.cm)"  &
   z_force_function = "0"
!
force modify direct force_vector  &
   force_vector_name = .test_analysis_1.Upper_DP_Group11_fluidmassB  &
   x_force_function = "-3.1523503623*ACCX(.test_analysis_1.Upper_DP_Group11_B.cm,0,.test_analysis_1.Upper_DP_Group11_B.cm)"  &
   y_force_function = "-3.1523503623*ACCY(.test_analysis_1.Upper_DP_Group11_B.cm,0,.test_analysis_1.Upper_DP_Group11_B.cm)"  &
   z_force_function = "0"
!
force modify direct force_vector  &
   force_vector_name = .test_analysis_1.Upper_DP_Group12_sliderA_locator  &
   x_force_function = "0"  &
   y_force_function = "0"  &
   z_force_function = "-1E5*DZ(.test_analysis_1.Upper_DP_Group12_A.end_A,.test_analysis_1.Upper_DP_Group12_sliderA.cm,.test_analysis_1.Upper_DP_Group12_sliderA.cm)",  &
              "-1E4*VZ(.test_analysis_1.Upper_DP_Group12_A.end_A,.test_analysis_1.Upper_DP_Group12_sliderA.cm,.test_analysis_1.Upper_DP_Group12_sliderA.cm)"
!
force modify direct force_vector  &
   force_vector_name = .test_analysis_1.Upper_DP_Group12_sliderB_locator  &
   x_force_function = "0"  &
   y_force_function = "0"  &
   z_force_function = "-1E5*DZ(.test_analysis_1.Upper_DP_Group12_B.cm,.test_analysis_1.Upper_DP_Group12_sliderB.cm,.test_analysis_1.Upper_DP_Group12_sliderB.cm)",  &
              "-1E4*VZ(.test_analysis_1.Upper_DP_Group12_B.cm,.test_analysis_1.Upper_DP_Group12_sliderB.cm,.test_analysis_1.Upper_DP_Group12_sliderB.cm)"
!
force modify direct force_vector  &
   force_vector_name = .test_analysis_1.Upper_DP_Group12_fluidmassA  &
   x_force_function = "-1.5761751812*ACCX(.test_analysis_1.Upper_DP_Group12_A.cm,0,.test_analysis_1.Upper_DP_Group12_A.cm)"  &
   y_force_function = "-1.5761751812*ACCY(.test_analysis_1.Upper_DP_Group12_A.cm,0,.test_analysis_1.Upper_DP_Group12_A.cm)"  &
   z_force_function = "0"
!
force modify direct force_vector  &
   force_vector_name = .test_analysis_1.Upper_DP_Group12_fluidmassC  &
   x_force_function = "-1.5761751812*ACCX(.test_analysis_1.Upper_DP_Group12_C.cm,0,.test_analysis_1.Upper_DP_Group12_C.cm)"  &
   y_force_function = "-1.5761751812*ACCY(.test_analysis_1.Upper_DP_Group12_C.cm,0,.test_analysis_1.Upper_DP_Group12_C.cm)"  &
   z_force_function = "0"
!
force modify direct force_vector  &
   force_vector_name = .test_analysis_1.Upper_DP_Group12_fluidmassB  &
   x_force_function = "-3.1523503623*ACCX(.test_analysis_1.Upper_DP_Group12_B.cm,0,.test_analysis_1.Upper_DP_Group12_B.cm)"  &
   y_force_function = "-3.1523503623*ACCY(.test_analysis_1.Upper_DP_Group12_B.cm,0,.test_analysis_1.Upper_DP_Group12_B.cm)"  &
   z_force_function = "0"
!
force modify direct force_vector  &
   force_vector_name = .test_analysis_1.Upper_DP_Group13_sliderA_locator  &
   x_force_function = "0"  &
   y_force_function = "0"  &
   z_force_function = "-1E5*DZ(.test_analysis_1.Upper_DP_Group13_A.end_A,.test_analysis_1.Upper_DP_Group13_sliderA.cm,.test_analysis_1.Upper_DP_Group13_sliderA.cm)",  &
              "-1E4*VZ(.test_analysis_1.Upper_DP_Group13_A.end_A,.test_analysis_1.Upper_DP_Group13_sliderA.cm,.test_analysis_1.Upper_DP_Group13_sliderA.cm)"
!
force modify direct force_vector  &
   force_vector_name = .test_analysis_1.Upper_DP_Group13_sliderB_locator  &
   x_force_function = "0"  &
   y_force_function = "0"  &
   z_force_function = "-1E5*DZ(.test_analysis_1.Upper_DP_Group13_B.cm,.test_analysis_1.Upper_DP_Group13_sliderB.cm,.test_analysis_1.Upper_DP_Group13_sliderB.cm)",  &
              "-1E4*VZ(.test_analysis_1.Upper_DP_Group13_B.cm,.test_analysis_1.Upper_DP_Group13_sliderB.cm,.test_analysis_1.Upper_DP_Group13_sliderB.cm)"
!
force modify direct force_vector  &
   force_vector_name = .test_analysis_1.Upper_DP_Group13_fluidmassA  &
   x_force_function = "-1.5761751812*ACCX(.test_analysis_1.Upper_DP_Group13_A.cm,0,.test_analysis_1.Upper_DP_Group13_A.cm)"  &
   y_force_function = "-1.5761751812*ACCY(.test_analysis_1.Upper_DP_Group13_A.cm,0,.test_analysis_1.Upper_DP_Group13_A.cm)"  &
   z_force_function = "0"
!
force modify direct force_vector  &
   force_vector_name = .test_analysis_1.Upper_DP_Group13_fluidmassC  &
   x_force_function = "-1.5761751812*ACCX(.test_analysis_1.Upper_DP_Group13_C.cm,0,.test_analysis_1.Upper_DP_Group13_C.cm)"  &
   y_force_function = "-1.5761751812*ACCY(.test_analysis_1.Upper_DP_Group13_C.cm,0,.test_analysis_1.Upper_DP_Group13_C.cm)"  &
   z_force_function = "0"
!
force modify direct force_vector  &
   force_vector_name = .test_analysis_1.Upper_DP_Group13_fluidmassB  &
   x_force_function = "-3.1523503623*ACCX(.test_analysis_1.Upper_DP_Group13_B.cm,0,.test_analysis_1.Upper_DP_Group13_B.cm)"  &
   y_force_function = "-3.1523503623*ACCY(.test_analysis_1.Upper_DP_Group13_B.cm,0,.test_analysis_1.Upper_DP_Group13_B.cm)"  &
   z_force_function = "0"
!
force modify direct force_vector  &
   force_vector_name = .test_analysis_1.Upper_DP_Group14_sliderA_locator  &
   x_force_function = "0"  &
   y_force_function = "0"  &
   z_force_function = "-1E5*DZ(.test_analysis_1.Upper_DP_Group14_A.end_A,.test_analysis_1.Upper_DP_Group14_sliderA.cm,.test_analysis_1.Upper_DP_Group14_sliderA.cm)",  &
              "-1E4*VZ(.test_analysis_1.Upper_DP_Group14_A.end_A,.test_analysis_1.Upper_DP_Group14_sliderA.cm,.test_analysis_1.Upper_DP_Group14_sliderA.cm)"
!
force modify direct force_vector  &
   force_vector_name = .test_analysis_1.Upper_DP_Group14_sliderB_locator  &
   x_force_function = "0"  &
   y_force_function = "0"  &
   z_force_function = "-1E5*DZ(.test_analysis_1.Upper_DP_Group14_B.cm,.test_analysis_1.Upper_DP_Group14_sliderB.cm,.test_analysis_1.Upper_DP_Group14_sliderB.cm)",  &
              "-1E4*VZ(.test_analysis_1.Upper_DP_Group14_B.cm,.test_analysis_1.Upper_DP_Group14_sliderB.cm,.test_analysis_1.Upper_DP_Group14_sliderB.cm)"
!
force modify direct force_vector  &
   force_vector_name = .test_analysis_1.Upper_DP_Group14_fluidmassA  &
   x_force_function = "-1.5761751812*ACCX(.test_analysis_1.Upper_DP_Group14_A.cm,0,.test_analysis_1.Upper_DP_Group14_A.cm)"  &
   y_force_function = "-1.5761751812*ACCY(.test_analysis_1.Upper_DP_Group14_A.cm,0,.test_analysis_1.Upper_DP_Group14_A.cm)"  &
   z_force_function = "0"
!
force modify direct force_vector  &
   force_vector_name = .test_analysis_1.Upper_DP_Group14_fluidmassC  &
   x_force_function = "-1.5761751812*ACCX(.test_analysis_1.Upper_DP_Group14_C.cm,0,.test_analysis_1.Upper_DP_Group14_C.cm)"  &
   y_force_function = "-1.5761751812*ACCY(.test_analysis_1.Upper_DP_Group14_C.cm,0,.test_analysis_1.Upper_DP_Group14_C.cm)"  &
   z_force_function = "0"
!
force modify direct force_vector  &
   force_vector_name = .test_analysis_1.Upper_DP_Group14_fluidmassB  &
   x_force_function = "-3.1523503623*ACCX(.test_analysis_1.Upper_DP_Group14_B.cm,0,.test_analysis_1.Upper_DP_Group14_B.cm)"  &
   y_force_function = "-3.1523503623*ACCY(.test_analysis_1.Upper_DP_Group14_B.cm,0,.test_analysis_1.Upper_DP_Group14_B.cm)"  &
   z_force_function = "0"
!
force modify direct force_vector  &
   force_vector_name = .test_analysis_1.Upper_DP_Group15_sliderA_locator  &
   x_force_function = "0"  &
   y_force_function = "0"  &
   z_force_function = "-1E5*DZ(.test_analysis_1.Upper_DP_Group15_A.end_A,.test_analysis_1.Upper_DP_Group15_sliderA.cm,.test_analysis_1.Upper_DP_Group15_sliderA.cm)",  &
              "-1E4*VZ(.test_analysis_1.Upper_DP_Group15_A.end_A,.test_analysis_1.Upper_DP_Group15_sliderA.cm,.test_analysis_1.Upper_DP_Group15_sliderA.cm)"
!
force modify direct force_vector  &
   force_vector_name = .test_analysis_1.Upper_DP_Group15_sliderB_locator  &
   x_force_function = "0"  &
   y_force_function = "0"  &
   z_force_function = "-1E5*DZ(.test_analysis_1.Upper_DP_Group15_B.cm,.test_analysis_1.Upper_DP_Group15_sliderB.cm,.test_analysis_1.Upper_DP_Group15_sliderB.cm)",  &
              "-1E4*VZ(.test_analysis_1.Upper_DP_Group15_B.cm,.test_analysis_1.Upper_DP_Group15_sliderB.cm,.test_analysis_1.Upper_DP_Group15_sliderB.cm)"
!
force modify direct force_vector  &
   force_vector_name = .test_analysis_1.Upper_DP_Group15_fluidmassA  &
   x_force_function = "-1.5761751812*ACCX(.test_analysis_1.Upper_DP_Group15_A.cm,0,.test_analysis_1.Upper_DP_Group15_A.cm)"  &
   y_force_function = "-1.5761751812*ACCY(.test_analysis_1.Upper_DP_Group15_A.cm,0,.test_analysis_1.Upper_DP_Group15_A.cm)"  &
   z_force_function = "0"
!
force modify direct force_vector  &
   force_vector_name = .test_analysis_1.Upper_DP_Group15_fluidmassC  &
   x_force_function = "-1.5761751812*ACCX(.test_analysis_1.Upper_DP_Group15_C.cm,0,.test_analysis_1.Upper_DP_Group15_C.cm)"  &
   y_force_function = "-1.5761751812*ACCY(.test_analysis_1.Upper_DP_Group15_C.cm,0,.test_analysis_1.Upper_DP_Group15_C.cm)"  &
   z_force_function = "0"
!
force modify direct force_vector  &
   force_vector_name = .test_analysis_1.Upper_DP_Group15_fluidmassB  &
   x_force_function = "-3.1523503623*ACCX(.test_analysis_1.Upper_DP_Group15_B.cm,0,.test_analysis_1.Upper_DP_Group15_B.cm)"  &
   y_force_function = "-3.1523503623*ACCY(.test_analysis_1.Upper_DP_Group15_B.cm,0,.test_analysis_1.Upper_DP_Group15_B.cm)"  &
   z_force_function = "0"
!
force modify direct force_vector  &
   force_vector_name = .test_analysis_1.Upper_DP_Group16_sliderA_locator  &
   x_force_function = "0"  &
   y_force_function = "0"  &
   z_force_function = "-1E5*DZ(.test_analysis_1.Upper_DP_Group16_A.end_A,.test_analysis_1.Upper_DP_Group16_sliderA.cm,.test_analysis_1.Upper_DP_Group16_sliderA.cm)",  &
              "-1E4*VZ(.test_analysis_1.Upper_DP_Group16_A.end_A,.test_analysis_1.Upper_DP_Group16_sliderA.cm,.test_analysis_1.Upper_DP_Group16_sliderA.cm)"
!
force modify direct force_vector  &
   force_vector_name = .test_analysis_1.Upper_DP_Group16_sliderB_locator  &
   x_force_function = "0"  &
   y_force_function = "0"  &
   z_force_function = "-1E5*DZ(.test_analysis_1.Upper_DP_Group16_B.cm,.test_analysis_1.Upper_DP_Group16_sliderB.cm,.test_analysis_1.Upper_DP_Group16_sliderB.cm)",  &
              "-1E4*VZ(.test_analysis_1.Upper_DP_Group16_B.cm,.test_analysis_1.Upper_DP_Group16_sliderB.cm,.test_analysis_1.Upper_DP_Group16_sliderB.cm)"
!
force modify direct force_vector  &
   force_vector_name = .test_analysis_1.Upper_DP_Group16_fluidmassA  &
   x_force_function = "-1.5761751812*ACCX(.test_analysis_1.Upper_DP_Group16_A.cm,0,.test_analysis_1.Upper_DP_Group16_A.cm)"  &
   y_force_function = "-1.5761751812*ACCY(.test_analysis_1.Upper_DP_Group16_A.cm,0,.test_analysis_1.Upper_DP_Group16_A.cm)"  &
   z_force_function = "0"
!
force modify direct force_vector  &
   force_vector_name = .test_analysis_1.Upper_DP_Group16_fluidmassC  &
   x_force_function = "-1.5761751812*ACCX(.test_analysis_1.Upper_DP_Group16_C.cm,0,.test_analysis_1.Upper_DP_Group16_C.cm)"  &
   y_force_function = "-1.5761751812*ACCY(.test_analysis_1.Upper_DP_Group16_C.cm,0,.test_analysis_1.Upper_DP_Group16_C.cm)"  &
   z_force_function = "0"
!
force modify direct force_vector  &
   force_vector_name = .test_analysis_1.Upper_DP_Group16_fluidmassB  &
   x_force_function = "-3.1523503623*ACCX(.test_analysis_1.Upper_DP_Group16_B.cm,0,.test_analysis_1.Upper_DP_Group16_B.cm)"  &
   y_force_function = "-3.1523503623*ACCY(.test_analysis_1.Upper_DP_Group16_B.cm,0,.test_analysis_1.Upper_DP_Group16_B.cm)"  &
   z_force_function = "0"
!
force modify direct force_vector  &
   force_vector_name = .test_analysis_1.Upper_DP_Group17_sliderA_locator  &
   x_force_function = "0"  &
   y_force_function = "0"  &
   z_force_function = "-1E5*DZ(.test_analysis_1.Upper_DP_Group17_A.end_A,.test_analysis_1.Upper_DP_Group17_sliderA.cm,.test_analysis_1.Upper_DP_Group17_sliderA.cm)",  &
              "-1E4*VZ(.test_analysis_1.Upper_DP_Group17_A.end_A,.test_analysis_1.Upper_DP_Group17_sliderA.cm,.test_analysis_1.Upper_DP_Group17_sliderA.cm)"
!
force modify direct force_vector  &
   force_vector_name = .test_analysis_1.Upper_DP_Group17_sliderB_locator  &
   x_force_function = "0"  &
   y_force_function = "0"  &
   z_force_function = "-1E5*DZ(.test_analysis_1.Upper_DP_Group17_B.cm,.test_analysis_1.Upper_DP_Group17_sliderB.cm,.test_analysis_1.Upper_DP_Group17_sliderB.cm)",  &
              "-1E4*VZ(.test_analysis_1.Upper_DP_Group17_B.cm,.test_analysis_1.Upper_DP_Group17_sliderB.cm,.test_analysis_1.Upper_DP_Group17_sliderB.cm)"
!
force modify direct force_vector  &
   force_vector_name = .test_analysis_1.Upper_DP_Group17_fluidmassA  &
   x_force_function = "-1.5761751812*ACCX(.test_analysis_1.Upper_DP_Group17_A.cm,0,.test_analysis_1.Upper_DP_Group17_A.cm)"  &
   y_force_function = "-1.5761751812*ACCY(.test_analysis_1.Upper_DP_Group17_A.cm,0,.test_analysis_1.Upper_DP_Group17_A.cm)"  &
   z_force_function = "0"
!
force modify direct force_vector  &
   force_vector_name = .test_analysis_1.Upper_DP_Group17_fluidmassC  &
   x_force_function = "-1.5761751812*ACCX(.test_analysis_1.Upper_DP_Group17_C.cm,0,.test_analysis_1.Upper_DP_Group17_C.cm)"  &
   y_force_function = "-1.5761751812*ACCY(.test_analysis_1.Upper_DP_Group17_C.cm,0,.test_analysis_1.Upper_DP_Group17_C.cm)"  &
   z_force_function = "0"
!
force modify direct force_vector  &
   force_vector_name = .test_analysis_1.Upper_DP_Group17_fluidmassB  &
   x_force_function = "-3.1523503623*ACCX(.test_analysis_1.Upper_DP_Group17_B.cm,0,.test_analysis_1.Upper_DP_Group17_B.cm)"  &
   y_force_function = "-3.1523503623*ACCY(.test_analysis_1.Upper_DP_Group17_B.cm,0,.test_analysis_1.Upper_DP_Group17_B.cm)"  &
   z_force_function = "0"
!
force modify direct force_vector  &
   force_vector_name = .test_analysis_1.Upper_DP_Group18_sliderA_locator  &
   x_force_function = "0"  &
   y_force_function = "0"  &
   z_force_function = "-1E5*DZ(.test_analysis_1.Upper_DP_Group18_A.end_A,.test_analysis_1.Upper_DP_Group18_sliderA.cm,.test_analysis_1.Upper_DP_Group18_sliderA.cm)",  &
              "-1E4*VZ(.test_analysis_1.Upper_DP_Group18_A.end_A,.test_analysis_1.Upper_DP_Group18_sliderA.cm,.test_analysis_1.Upper_DP_Group18_sliderA.cm)"
!
force modify direct force_vector  &
   force_vector_name = .test_analysis_1.Upper_DP_Group18_sliderB_locator  &
   x_force_function = "0"  &
   y_force_function = "0"  &
   z_force_function = "-1E5*DZ(.test_analysis_1.Upper_DP_Group18_B.cm,.test_analysis_1.Upper_DP_Group18_sliderB.cm,.test_analysis_1.Upper_DP_Group18_sliderB.cm)",  &
              "-1E4*VZ(.test_analysis_1.Upper_DP_Group18_B.cm,.test_analysis_1.Upper_DP_Group18_sliderB.cm,.test_analysis_1.Upper_DP_Group18_sliderB.cm)"
!
force modify direct force_vector  &
   force_vector_name = .test_analysis_1.Upper_DP_Group18_fluidmassA  &
   x_force_function = "-1.5761751812*ACCX(.test_analysis_1.Upper_DP_Group18_A.cm,0,.test_analysis_1.Upper_DP_Group18_A.cm)"  &
   y_force_function = "-1.5761751812*ACCY(.test_analysis_1.Upper_DP_Group18_A.cm,0,.test_analysis_1.Upper_DP_Group18_A.cm)"  &
   z_force_function = "0"
!
force modify direct force_vector  &
   force_vector_name = .test_analysis_1.Upper_DP_Group18_fluidmassC  &
   x_force_function = "-1.5761751812*ACCX(.test_analysis_1.Upper_DP_Group18_C.cm,0,.test_analysis_1.Upper_DP_Group18_C.cm)"  &
   y_force_function = "-1.5761751812*ACCY(.test_analysis_1.Upper_DP_Group18_C.cm,0,.test_analysis_1.Upper_DP_Group18_C.cm)"  &
   z_force_function = "0"
!
force modify direct force_vector  &
   force_vector_name = .test_analysis_1.Upper_DP_Group18_fluidmassB  &
   x_force_function = "-3.1523503623*ACCX(.test_analysis_1.Upper_DP_Group18_B.cm,0,.test_analysis_1.Upper_DP_Group18_B.cm)"  &
   y_force_function = "-3.1523503623*ACCY(.test_analysis_1.Upper_DP_Group18_B.cm,0,.test_analysis_1.Upper_DP_Group18_B.cm)"  &
   z_force_function = "0"
!
force modify direct force_vector  &
   force_vector_name = .test_analysis_1.Upper_DP_Group19_sliderA_locator  &
   x_force_function = "0"  &
   y_force_function = "0"  &
   z_force_function = "-1E5*DZ(.test_analysis_1.Upper_DP_Group19_A.end_A,.test_analysis_1.Upper_DP_Group19_sliderA.cm,.test_analysis_1.Upper_DP_Group19_sliderA.cm)",  &
              "-1E4*VZ(.test_analysis_1.Upper_DP_Group19_A.end_A,.test_analysis_1.Upper_DP_Group19_sliderA.cm,.test_analysis_1.Upper_DP_Group19_sliderA.cm)"
!
force modify direct force_vector  &
   force_vector_name = .test_analysis_1.Upper_DP_Group19_sliderB_locator  &
   x_force_function = "0"  &
   y_force_function = "0"  &
   z_force_function = "-1E5*DZ(.test_analysis_1.Upper_DP_Group19_B.cm,.test_analysis_1.Upper_DP_Group19_sliderB.cm,.test_analysis_1.Upper_DP_Group19_sliderB.cm)",  &
              "-1E4*VZ(.test_analysis_1.Upper_DP_Group19_B.cm,.test_analysis_1.Upper_DP_Group19_sliderB.cm,.test_analysis_1.Upper_DP_Group19_sliderB.cm)"
!
force modify direct force_vector  &
   force_vector_name = .test_analysis_1.Upper_DP_Group19_fluidmassA  &
   x_force_function = "-1.5761751812*ACCX(.test_analysis_1.Upper_DP_Group19_A.cm,0,.test_analysis_1.Upper_DP_Group19_A.cm)"  &
   y_force_function = "-1.5761751812*ACCY(.test_analysis_1.Upper_DP_Group19_A.cm,0,.test_analysis_1.Upper_DP_Group19_A.cm)"  &
   z_force_function = "0"
!
force modify direct force_vector  &
   force_vector_name = .test_analysis_1.Upper_DP_Group19_fluidmassC  &
   x_force_function = "-1.5761751812*ACCX(.test_analysis_1.Upper_DP_Group19_C.cm,0,.test_analysis_1.Upper_DP_Group19_C.cm)"  &
   y_force_function = "-1.5761751812*ACCY(.test_analysis_1.Upper_DP_Group19_C.cm,0,.test_analysis_1.Upper_DP_Group19_C.cm)"  &
   z_force_function = "0"
!
force modify direct force_vector  &
   force_vector_name = .test_analysis_1.Upper_DP_Group19_fluidmassB  &
   x_force_function = "-3.1523503623*ACCX(.test_analysis_1.Upper_DP_Group19_B.cm,0,.test_analysis_1.Upper_DP_Group19_B.cm)"  &
   y_force_function = "-3.1523503623*ACCY(.test_analysis_1.Upper_DP_Group19_B.cm,0,.test_analysis_1.Upper_DP_Group19_B.cm)"  &
   z_force_function = "0"
!
force modify direct force_vector  &
   force_vector_name = .test_analysis_1.Upper_DP_Group20_sliderA_locator  &
   x_force_function = "0"  &
   y_force_function = "0"  &
   z_force_function = "-1E5*DZ(.test_analysis_1.Upper_DP_Group20_A.end_A,.test_analysis_1.Upper_DP_Group20_sliderA.cm,.test_analysis_1.Upper_DP_Group20_sliderA.cm)",  &
              "-1E4*VZ(.test_analysis_1.Upper_DP_Group20_A.end_A,.test_analysis_1.Upper_DP_Group20_sliderA.cm,.test_analysis_1.Upper_DP_Group20_sliderA.cm)"
!
force modify direct force_vector  &
   force_vector_name = .test_analysis_1.Upper_DP_Group20_sliderB_locator  &
   x_force_function = "0"  &
   y_force_function = "0"  &
   z_force_function = "-1E5*DZ(.test_analysis_1.Upper_DP_Group20_B.cm,.test_analysis_1.Upper_DP_Group20_sliderB.cm,.test_analysis_1.Upper_DP_Group20_sliderB.cm)",  &
              "-1E4*VZ(.test_analysis_1.Upper_DP_Group20_B.cm,.test_analysis_1.Upper_DP_Group20_sliderB.cm,.test_analysis_1.Upper_DP_Group20_sliderB.cm)"
!
force modify direct force_vector  &
   force_vector_name = .test_analysis_1.Upper_DP_Group20_sliderC_locator  &
   x_force_function = "0"  &
   y_force_function = "0"  &
   z_force_function = "-1E5*DZ(.test_analysis_1.Upper_DP_Group20_C.end_C,.test_analysis_1.Upper_DP_Group20_sliderC.cm,.test_analysis_1.Upper_DP_Group20_sliderC.cm)",  &
              "-1E4*VZ(.test_analysis_1.Upper_DP_Group20_C.end_C,.test_analysis_1.Upper_DP_Group20_sliderC.cm,.test_analysis_1.Upper_DP_Group20_sliderC.cm)"
!
force modify direct force_vector  &
   force_vector_name = .test_analysis_1.Upper_DP_Group20_fluidmassA  &
   x_force_function = "-1.5761751812*ACCX(.test_analysis_1.Upper_DP_Group20_A.cm,0,.test_analysis_1.Upper_DP_Group20_A.cm)"  &
   y_force_function = "-1.5761751812*ACCY(.test_analysis_1.Upper_DP_Group20_A.cm,0,.test_analysis_1.Upper_DP_Group20_A.cm)"  &
   z_force_function = "0"
!
force modify direct force_vector  &
   force_vector_name = .test_analysis_1.Upper_DP_Group20_fluidmassC  &
   x_force_function = "-1.5761751812*ACCX(.test_analysis_1.Upper_DP_Group20_C.cm,0,.test_analysis_1.Upper_DP_Group20_C.cm)"  &
   y_force_function = "-1.5761751812*ACCY(.test_analysis_1.Upper_DP_Group20_C.cm,0,.test_analysis_1.Upper_DP_Group20_C.cm)"  &
   z_force_function = "0"
!
force modify direct force_vector  &
   force_vector_name = .test_analysis_1.Upper_DP_Group20_fluidmassB  &
   x_force_function = "-3.1523503623*ACCX(.test_analysis_1.Upper_DP_Group20_B.cm,0,.test_analysis_1.Upper_DP_Group20_B.cm)"  &
   y_force_function = "-3.1523503623*ACCY(.test_analysis_1.Upper_DP_Group20_B.cm,0,.test_analysis_1.Upper_DP_Group20_B.cm)"  &
   z_force_function = "0"
!
force modify direct force_vector  &
   force_vector_name = .test_analysis_1.TOSLoad  &
   x_force_function = "0"  &
   y_force_function = "0"  &
   z_force_function = "ARYVAL(.test_analysis_1.Epipe1AxialOutput,1)"
!
force modify direct torque_vector  &
   torque_vector_name = .test_analysis_1.Hole_Bottom_damper  &
   x_torque_function = "0"  &
   y_torque_function = "0"  &
   z_torque_function = "-1E6*WZ(.test_analysis_1.Hole_Bottom.cm,.test_analysis_1.ground.adrill_origin,.test_analysis_1.Hole_Bottom.cm)"
!
force modify direct torque_vector  &
   torque_vector_name = .test_analysis_1.test_pdc_01_sliderA_damper  &
   x_torque_function = "0"  &
   y_torque_function = "0"  &
   z_torque_function = "-10*WZ(.test_analysis_1.test_pdc_01_sliderA.cm,.test_analysis_1.ground.adrill_origin,.test_analysis_1.test_pdc_01_sliderA.cm)"
!
force modify direct torque_vector  &
   torque_vector_name = .test_analysis_1.example_stabilizer_02_sliderA_damper  &
   x_torque_function = "0"  &
   y_torque_function = "0"  &
   z_torque_function = "-10*WZ(.test_analysis_1.example_stabilizer_02_sliderA.cm,.test_analysis_1.ground.adrill_origin,.test_analysis_1.example_stabilizer_02_sliderA.cm)"
!
force modify direct torque_vector  &
   torque_vector_name = .test_analysis_1.example_stabilizer_02_sliderB_damper  &
   x_torque_function = "0"  &
   y_torque_function = "0"  &
   z_torque_function = "-10*WZ(.test_analysis_1.example_stabilizer_02_sliderB.cm,.test_analysis_1.ground.adrill_origin,.test_analysis_1.example_stabilizer_02_sliderB.cm)"
!
force modify direct torque_vector  &
   torque_vector_name = .test_analysis_1.Upper_DP_Group1_sliderA_damper  &
   x_torque_function = "0"  &
   y_torque_function = "0"  &
   z_torque_function = "-10*WZ(.test_analysis_1.Upper_DP_Group1_sliderA.cm,.test_analysis_1.ground.adrill_origin,.test_analysis_1.Upper_DP_Group1_sliderA.cm)"
!
force modify direct torque_vector  &
   torque_vector_name = .test_analysis_1.Upper_DP_Group1_sliderB_damper  &
   x_torque_function = "0"  &
   y_torque_function = "0"  &
   z_torque_function = "-10*WZ(.test_analysis_1.Upper_DP_Group1_sliderB.cm,.test_analysis_1.ground.adrill_origin,.test_analysis_1.Upper_DP_Group1_sliderB.cm)"
!
force modify direct torque_vector  &
   torque_vector_name = .test_analysis_1.Upper_DP_Group2_sliderA_damper  &
   x_torque_function = "0"  &
   y_torque_function = "0"  &
   z_torque_function = "-10*WZ(.test_analysis_1.Upper_DP_Group2_sliderA.cm,.test_analysis_1.ground.adrill_origin,.test_analysis_1.Upper_DP_Group2_sliderA.cm)"
!
force modify direct torque_vector  &
   torque_vector_name = .test_analysis_1.Upper_DP_Group2_sliderB_damper  &
   x_torque_function = "0"  &
   y_torque_function = "0"  &
   z_torque_function = "-10*WZ(.test_analysis_1.Upper_DP_Group2_sliderB.cm,.test_analysis_1.ground.adrill_origin,.test_analysis_1.Upper_DP_Group2_sliderB.cm)"
!
force modify direct torque_vector  &
   torque_vector_name = .test_analysis_1.Upper_DP_Group3_sliderA_damper  &
   x_torque_function = "0"  &
   y_torque_function = "0"  &
   z_torque_function = "-10*WZ(.test_analysis_1.Upper_DP_Group3_sliderA.cm,.test_analysis_1.ground.adrill_origin,.test_analysis_1.Upper_DP_Group3_sliderA.cm)"
!
force modify direct torque_vector  &
   torque_vector_name = .test_analysis_1.Upper_DP_Group3_sliderB_damper  &
   x_torque_function = "0"  &
   y_torque_function = "0"  &
   z_torque_function = "-10*WZ(.test_analysis_1.Upper_DP_Group3_sliderB.cm,.test_analysis_1.ground.adrill_origin,.test_analysis_1.Upper_DP_Group3_sliderB.cm)"
!
force modify direct torque_vector  &
   torque_vector_name = .test_analysis_1.Upper_DP_Group4_sliderA_damper  &
   x_torque_function = "0"  &
   y_torque_function = "0"  &
   z_torque_function = "-10*WZ(.test_analysis_1.Upper_DP_Group4_sliderA.cm,.test_analysis_1.ground.adrill_origin,.test_analysis_1.Upper_DP_Group4_sliderA.cm)"
!
force modify direct torque_vector  &
   torque_vector_name = .test_analysis_1.Upper_DP_Group4_sliderB_damper  &
   x_torque_function = "0"  &
   y_torque_function = "0"  &
   z_torque_function = "-10*WZ(.test_analysis_1.Upper_DP_Group4_sliderB.cm,.test_analysis_1.ground.adrill_origin,.test_analysis_1.Upper_DP_Group4_sliderB.cm)"
!
force modify direct torque_vector  &
   torque_vector_name = .test_analysis_1.Upper_DP_Group5_sliderA_damper  &
   x_torque_function = "0"  &
   y_torque_function = "0"  &
   z_torque_function = "-10*WZ(.test_analysis_1.Upper_DP_Group5_sliderA.cm,.test_analysis_1.ground.adrill_origin,.test_analysis_1.Upper_DP_Group5_sliderA.cm)"
!
force modify direct torque_vector  &
   torque_vector_name = .test_analysis_1.Upper_DP_Group5_sliderB_damper  &
   x_torque_function = "0"  &
   y_torque_function = "0"  &
   z_torque_function = "-10*WZ(.test_analysis_1.Upper_DP_Group5_sliderB.cm,.test_analysis_1.ground.adrill_origin,.test_analysis_1.Upper_DP_Group5_sliderB.cm)"
!
force modify direct torque_vector  &
   torque_vector_name = .test_analysis_1.Upper_DP_Group6_sliderA_damper  &
   x_torque_function = "0"  &
   y_torque_function = "0"  &
   z_torque_function = "-10*WZ(.test_analysis_1.Upper_DP_Group6_sliderA.cm,.test_analysis_1.ground.adrill_origin,.test_analysis_1.Upper_DP_Group6_sliderA.cm)"
!
force modify direct torque_vector  &
   torque_vector_name = .test_analysis_1.Upper_DP_Group6_sliderB_damper  &
   x_torque_function = "0"  &
   y_torque_function = "0"  &
   z_torque_function = "-10*WZ(.test_analysis_1.Upper_DP_Group6_sliderB.cm,.test_analysis_1.ground.adrill_origin,.test_analysis_1.Upper_DP_Group6_sliderB.cm)"
!
force modify direct torque_vector  &
   torque_vector_name = .test_analysis_1.Upper_DP_Group7_sliderA_damper  &
   x_torque_function = "0"  &
   y_torque_function = "0"  &
   z_torque_function = "-10*WZ(.test_analysis_1.Upper_DP_Group7_sliderA.cm,.test_analysis_1.ground.adrill_origin,.test_analysis_1.Upper_DP_Group7_sliderA.cm)"
!
force modify direct torque_vector  &
   torque_vector_name = .test_analysis_1.Upper_DP_Group7_sliderB_damper  &
   x_torque_function = "0"  &
   y_torque_function = "0"  &
   z_torque_function = "-10*WZ(.test_analysis_1.Upper_DP_Group7_sliderB.cm,.test_analysis_1.ground.adrill_origin,.test_analysis_1.Upper_DP_Group7_sliderB.cm)"
!
force modify direct torque_vector  &
   torque_vector_name = .test_analysis_1.Upper_DP_Group8_sliderA_damper  &
   x_torque_function = "0"  &
   y_torque_function = "0"  &
   z_torque_function = "-10*WZ(.test_analysis_1.Upper_DP_Group8_sliderA.cm,.test_analysis_1.ground.adrill_origin,.test_analysis_1.Upper_DP_Group8_sliderA.cm)"
!
force modify direct torque_vector  &
   torque_vector_name = .test_analysis_1.Upper_DP_Group8_sliderB_damper  &
   x_torque_function = "0"  &
   y_torque_function = "0"  &
   z_torque_function = "-10*WZ(.test_analysis_1.Upper_DP_Group8_sliderB.cm,.test_analysis_1.ground.adrill_origin,.test_analysis_1.Upper_DP_Group8_sliderB.cm)"
!
force modify direct torque_vector  &
   torque_vector_name = .test_analysis_1.Upper_DP_Group9_sliderA_damper  &
   x_torque_function = "0"  &
   y_torque_function = "0"  &
   z_torque_function = "-10*WZ(.test_analysis_1.Upper_DP_Group9_sliderA.cm,.test_analysis_1.ground.adrill_origin,.test_analysis_1.Upper_DP_Group9_sliderA.cm)"
!
force modify direct torque_vector  &
   torque_vector_name = .test_analysis_1.Upper_DP_Group9_sliderB_damper  &
   x_torque_function = "0"  &
   y_torque_function = "0"  &
   z_torque_function = "-10*WZ(.test_analysis_1.Upper_DP_Group9_sliderB.cm,.test_analysis_1.ground.adrill_origin,.test_analysis_1.Upper_DP_Group9_sliderB.cm)"
!
force modify direct torque_vector  &
   torque_vector_name = .test_analysis_1.Upper_DP_Group10_sliderA_damper  &
   x_torque_function = "0"  &
   y_torque_function = "0"  &
   z_torque_function = "-10*WZ(.test_analysis_1.Upper_DP_Group10_sliderA.cm,.test_analysis_1.ground.adrill_origin,.test_analysis_1.Upper_DP_Group10_sliderA.cm)"
!
force modify direct torque_vector  &
   torque_vector_name = .test_analysis_1.Upper_DP_Group10_sliderB_damper  &
   x_torque_function = "0"  &
   y_torque_function = "0"  &
   z_torque_function = "-10*WZ(.test_analysis_1.Upper_DP_Group10_sliderB.cm,.test_analysis_1.ground.adrill_origin,.test_analysis_1.Upper_DP_Group10_sliderB.cm)"
!
force modify direct torque_vector  &
   torque_vector_name = .test_analysis_1.Upper_DP_Group11_sliderA_damper  &
   x_torque_function = "0"  &
   y_torque_function = "0"  &
   z_torque_function = "-10*WZ(.test_analysis_1.Upper_DP_Group11_sliderA.cm,.test_analysis_1.ground.adrill_origin,.test_analysis_1.Upper_DP_Group11_sliderA.cm)"
!
force modify direct torque_vector  &
   torque_vector_name = .test_analysis_1.Upper_DP_Group11_sliderB_damper  &
   x_torque_function = "0"  &
   y_torque_function = "0"  &
   z_torque_function = "-10*WZ(.test_analysis_1.Upper_DP_Group11_sliderB.cm,.test_analysis_1.ground.adrill_origin,.test_analysis_1.Upper_DP_Group11_sliderB.cm)"
!
force modify direct torque_vector  &
   torque_vector_name = .test_analysis_1.Upper_DP_Group12_sliderA_damper  &
   x_torque_function = "0"  &
   y_torque_function = "0"  &
   z_torque_function = "-10*WZ(.test_analysis_1.Upper_DP_Group12_sliderA.cm,.test_analysis_1.ground.adrill_origin,.test_analysis_1.Upper_DP_Group12_sliderA.cm)"
!
force modify direct torque_vector  &
   torque_vector_name = .test_analysis_1.Upper_DP_Group12_sliderB_damper  &
   x_torque_function = "0"  &
   y_torque_function = "0"  &
   z_torque_function = "-10*WZ(.test_analysis_1.Upper_DP_Group12_sliderB.cm,.test_analysis_1.ground.adrill_origin,.test_analysis_1.Upper_DP_Group12_sliderB.cm)"
!
force modify direct torque_vector  &
   torque_vector_name = .test_analysis_1.Upper_DP_Group13_sliderA_damper  &
   x_torque_function = "0"  &
   y_torque_function = "0"  &
   z_torque_function = "-10*WZ(.test_analysis_1.Upper_DP_Group13_sliderA.cm,.test_analysis_1.ground.adrill_origin,.test_analysis_1.Upper_DP_Group13_sliderA.cm)"
!
force modify direct torque_vector  &
   torque_vector_name = .test_analysis_1.Upper_DP_Group13_sliderB_damper  &
   x_torque_function = "0"  &
   y_torque_function = "0"  &
   z_torque_function = "-10*WZ(.test_analysis_1.Upper_DP_Group13_sliderB.cm,.test_analysis_1.ground.adrill_origin,.test_analysis_1.Upper_DP_Group13_sliderB.cm)"
!
force modify direct torque_vector  &
   torque_vector_name = .test_analysis_1.Upper_DP_Group14_sliderA_damper  &
   x_torque_function = "0"  &
   y_torque_function = "0"  &
   z_torque_function = "-10*WZ(.test_analysis_1.Upper_DP_Group14_sliderA.cm,.test_analysis_1.ground.adrill_origin,.test_analysis_1.Upper_DP_Group14_sliderA.cm)"
!
force modify direct torque_vector  &
   torque_vector_name = .test_analysis_1.Upper_DP_Group14_sliderB_damper  &
   x_torque_function = "0"  &
   y_torque_function = "0"  &
   z_torque_function = "-10*WZ(.test_analysis_1.Upper_DP_Group14_sliderB.cm,.test_analysis_1.ground.adrill_origin,.test_analysis_1.Upper_DP_Group14_sliderB.cm)"
!
force modify direct torque_vector  &
   torque_vector_name = .test_analysis_1.Upper_DP_Group15_sliderA_damper  &
   x_torque_function = "0"  &
   y_torque_function = "0"  &
   z_torque_function = "-10*WZ(.test_analysis_1.Upper_DP_Group15_sliderA.cm,.test_analysis_1.ground.adrill_origin,.test_analysis_1.Upper_DP_Group15_sliderA.cm)"
!
force modify direct torque_vector  &
   torque_vector_name = .test_analysis_1.Upper_DP_Group15_sliderB_damper  &
   x_torque_function = "0"  &
   y_torque_function = "0"  &
   z_torque_function = "-10*WZ(.test_analysis_1.Upper_DP_Group15_sliderB.cm,.test_analysis_1.ground.adrill_origin,.test_analysis_1.Upper_DP_Group15_sliderB.cm)"
!
force modify direct torque_vector  &
   torque_vector_name = .test_analysis_1.Upper_DP_Group16_sliderA_damper  &
   x_torque_function = "0"  &
   y_torque_function = "0"  &
   z_torque_function = "-10*WZ(.test_analysis_1.Upper_DP_Group16_sliderA.cm,.test_analysis_1.ground.adrill_origin,.test_analysis_1.Upper_DP_Group16_sliderA.cm)"
!
force modify direct torque_vector  &
   torque_vector_name = .test_analysis_1.Upper_DP_Group16_sliderB_damper  &
   x_torque_function = "0"  &
   y_torque_function = "0"  &
   z_torque_function = "-10*WZ(.test_analysis_1.Upper_DP_Group16_sliderB.cm,.test_analysis_1.ground.adrill_origin,.test_analysis_1.Upper_DP_Group16_sliderB.cm)"
!
force modify direct torque_vector  &
   torque_vector_name = .test_analysis_1.Upper_DP_Group17_sliderA_damper  &
   x_torque_function = "0"  &
   y_torque_function = "0"  &
   z_torque_function = "-10*WZ(.test_analysis_1.Upper_DP_Group17_sliderA.cm,.test_analysis_1.ground.adrill_origin,.test_analysis_1.Upper_DP_Group17_sliderA.cm)"
!
force modify direct torque_vector  &
   torque_vector_name = .test_analysis_1.Upper_DP_Group17_sliderB_damper  &
   x_torque_function = "0"  &
   y_torque_function = "0"  &
   z_torque_function = "-10*WZ(.test_analysis_1.Upper_DP_Group17_sliderB.cm,.test_analysis_1.ground.adrill_origin,.test_analysis_1.Upper_DP_Group17_sliderB.cm)"
!
force modify direct torque_vector  &
   torque_vector_name = .test_analysis_1.Upper_DP_Group18_sliderA_damper  &
   x_torque_function = "0"  &
   y_torque_function = "0"  &
   z_torque_function = "-10*WZ(.test_analysis_1.Upper_DP_Group18_sliderA.cm,.test_analysis_1.ground.adrill_origin,.test_analysis_1.Upper_DP_Group18_sliderA.cm)"
!
force modify direct torque_vector  &
   torque_vector_name = .test_analysis_1.Upper_DP_Group18_sliderB_damper  &
   x_torque_function = "0"  &
   y_torque_function = "0"  &
   z_torque_function = "-10*WZ(.test_analysis_1.Upper_DP_Group18_sliderB.cm,.test_analysis_1.ground.adrill_origin,.test_analysis_1.Upper_DP_Group18_sliderB.cm)"
!
force modify direct torque_vector  &
   torque_vector_name = .test_analysis_1.Upper_DP_Group19_sliderA_damper  &
   x_torque_function = "0"  &
   y_torque_function = "0"  &
   z_torque_function = "-10*WZ(.test_analysis_1.Upper_DP_Group19_sliderA.cm,.test_analysis_1.ground.adrill_origin,.test_analysis_1.Upper_DP_Group19_sliderA.cm)"
!
force modify direct torque_vector  &
   torque_vector_name = .test_analysis_1.Upper_DP_Group19_sliderB_damper  &
   x_torque_function = "0"  &
   y_torque_function = "0"  &
   z_torque_function = "-10*WZ(.test_analysis_1.Upper_DP_Group19_sliderB.cm,.test_analysis_1.ground.adrill_origin,.test_analysis_1.Upper_DP_Group19_sliderB.cm)"
!
force modify direct torque_vector  &
   torque_vector_name = .test_analysis_1.Upper_DP_Group20_sliderA_damper  &
   x_torque_function = "0"  &
   y_torque_function = "0"  &
   z_torque_function = "-10*WZ(.test_analysis_1.Upper_DP_Group20_sliderA.cm,.test_analysis_1.ground.adrill_origin,.test_analysis_1.Upper_DP_Group20_sliderA.cm)"
!
force modify direct torque_vector  &
   torque_vector_name = .test_analysis_1.Upper_DP_Group20_sliderB_damper  &
   x_torque_function = "0"  &
   y_torque_function = "0"  &
   z_torque_function = "-10*WZ(.test_analysis_1.Upper_DP_Group20_sliderB.cm,.test_analysis_1.ground.adrill_origin,.test_analysis_1.Upper_DP_Group20_sliderB.cm)"
!
force modify direct torque_vector  &
   torque_vector_name = .test_analysis_1.Upper_DP_Group20_sliderC_damper  &
   x_torque_function = "0"  &
   y_torque_function = "0"  &
   z_torque_function = "-10*WZ(.test_analysis_1.Upper_DP_Group20_sliderC.cm,.test_analysis_1.ground.adrill_origin,.test_analysis_1.Upper_DP_Group20_sliderC.cm)"
!
force modify direct general_force  &
   general_force_name = .test_analysis_1.Hole_Bottom_ROPcontrol  &
   x_force_function = "0"  &
   y_force_function = "0"  &
   z_force_function = "-2E7*(DIF(.test_analysis_1.integrated_BOHV)-DIF(.test_analysis_1.integrated_ROP))",  &
              "-2E5*(DIF1(.test_analysis_1.integrated_BOHV)-DIF1(.test_analysis_1.integrated_ROP))"  &
   x_torque_function = "0"  &
   y_torque_function = "0"  &
   z_torque_function = "0"
!
force modify direct general_force  &
   general_force_name = .test_analysis_1.Upper_DP_Group20_TOSdamper  &
   x_force_function = "-100*VX(.test_analysis_1.Upper_DP_Group20_C.end_C,.test_analysis_1.Upper_DP_Group20_sliderC.cm,.test_analysis_1.Upper_DP_Group20_sliderC.cm)"  &
   y_force_function = "-100*VY(.test_analysis_1.Upper_DP_Group20_C.end_C,.test_analysis_1.Upper_DP_Group20_sliderC.cm,.test_analysis_1.Upper_DP_Group20_sliderC.cm)"  &
   z_force_function = "0"  &
   x_torque_function = "-100*WX(.test_analysis_1.Upper_DP_Group20_C.end_C,.test_analysis_1.Upper_DP_Group20_sliderC.cm,.test_analysis_1.Upper_DP_Group20_sliderC.cm)"  &
   y_torque_function = "-100*WY(.test_analysis_1.Upper_DP_Group20_C.end_C,.test_analysis_1.Upper_DP_Group20_sliderC.cm,.test_analysis_1.Upper_DP_Group20_sliderC.cm)"  &
   z_torque_function = "0"
!
output_control modify request  &
   request_name = .test_analysis_1.test_pdc_01_Motion2  &
   f1 = "DX(.test_analysis_1.test_pdc_01.LateralRef,.test_analysis_1.test_pdc_01_sliderA.cm,.test_analysis_1.test_pdc_01_sliderA.cm)"  &
   f2 = "DY(.test_analysis_1.test_pdc_01.LateralRef,.test_analysis_1.test_pdc_01_sliderA.cm,.test_analysis_1.test_pdc_01_sliderA.cm)"  &
   f3 = "WZ(.test_analysis_1.test_pdc_01.LateralRef,.test_analysis_1.test_pdc_01_sliderA.cm,.test_analysis_1.test_pdc_01_sliderA.cm)*30/PI"
!
output_control modify request  &
   request_name = .test_analysis_1.example_stabilizer_02_Motion2  &
   f1 = "DX(.test_analysis_1.example_stabilizer_02_B.barrelA1,.test_analysis_1.example_stabilizer_02_sliderA.cm,.test_analysis_1.example_stabilizer_02_sliderA.cm)"  &
   f2 = "DY(.test_analysis_1.example_stabilizer_02_B.barrelA1,.test_analysis_1.example_stabilizer_02_sliderA.cm,.test_analysis_1.example_stabilizer_02_sliderA.cm)"  &
   f3 = "WZ(.test_analysis_1.example_stabilizer_02_B.barrelA1,.test_analysis_1.example_stabilizer_02_sliderA.cm,.test_analysis_1.example_stabilizer_02_sliderA.cm)*30/PI"
!
output_control modify request  &
   request_name = .test_analysis_1.equivalent_pipe1_TorsionStates  &
   f1 = "ARYVAL(.test_analysis_1.Epipe1TorsionStates,1)"  &
   f2 = "ARYVAL(.test_analysis_1.Epipe1TorsionStates,2)"  &
   f3 = "ARYVAL(.test_analysis_1.Epipe1TorsionStates,3)"  &
   f4 = "ARYVAL(.test_analysis_1.Epipe1TorsionStates,4)"  &
   f5 = "ARYVAL(.test_analysis_1.Epipe1TorsionStates,5)"  &
   f6 = "ARYVAL(.test_analysis_1.Epipe1TorsionStates,6)"  &
   f7 = "ARYVAL(.test_analysis_1.Epipe1TorsionStates,7)"  &
   f8 = "ARYVAL(.test_analysis_1.Epipe1TorsionStates,8)"
!
output_control modify request  &
   request_name = .test_analysis_1.equivalent_pipe1_AxialStates  &
   f1 = "ARYVAL(.test_analysis_1.Epipe1AxialStates,1)"  &
   f2 = "ARYVAL(.test_analysis_1.Epipe1AxialStates,2)"  &
   f3 = "ARYVAL(.test_analysis_1.Epipe1AxialStates,3)"  &
   f4 = "ARYVAL(.test_analysis_1.Epipe1AxialStates,4)"  &
   f5 = "ARYVAL(.test_analysis_1.Epipe1AxialStates,5)"  &
   f6 = "ARYVAL(.test_analysis_1.Epipe1AxialStates,6)"  &
   f7 = "ARYVAL(.test_analysis_1.Epipe1AxialStates,7)"  &
   f8 = "ARYVAL(.test_analysis_1.Epipe1AxialStates,8)"
!
output_control modify request  &
   request_name = .test_analysis_1.top_drive  &
   f1 = "VARVAL(.test_analysis_1.Command_String_Speed)*30/PI"  &
   f2 = "ARYVAL(.test_analysis_1.Epipe1TorsionStates,5)*30/PI"  &
   f3 = "ARYVAL(.test_analysis_1.Epipe1TorsionStates,8)*30/PI"  &
   f4 = "VARVAL(.test_analysis_1.drive_torque_command)/1000"  &
   f5 = "SFORCE(.test_analysis_1.topdrive,0,8,.test_analysis_1.TOS_direction_marker)/1000"
!
output_control modify request  &
   request_name = .test_analysis_1.ROP_controls  &
   f1 = "DIF1(.test_analysis_1.integrated_ROP)*3600"  &
   f2 = "DIF1(.test_analysis_1.integrated_BOHV)*3600"  &
   f3 = "DIF(.test_analysis_1.integrated_BOHV) "  &
   f4 = "VARVAL(.test_analysis_1.Command_WOB)/1000"  &
   f5 = "JOINT(.test_analysis_1.connector_2to1,0,4,.test_analysis_1.test_pdc_01.end_B)/1000"  &
   f6 = "-VARVAL(.test_analysis_1.hookload_command)/1000"
!
output_control modify request  &
   request_name = .test_analysis_1.MSE_Motion  &
   f1 = "VARVAL(.test_analysis_1.Surface_MSE)"  &
   f2 = "VARVAL(.test_analysis_1.Bottom_MSE)"  &
   f3 = "DIF(.test_analysis_1.filtered_Surface_MSE)"  &
   f4 = "DIF(.test_analysis_1.filtered_Bottom_MSE)"
!
!--------------------------- Expression definitions ---------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = ground
!
geometry modify curve circle  &
   circle_name = .test_analysis_1.ground.bottom_graphic  &
   radius = (1.0835 / 2)
!
variable modify  &
   variable_name = .test_analysis_1.Motor_Start  &
   real_value = ({0.0}[1])
!
variable modify  &
   variable_name = .test_analysis_1.Motor_Ramp  &
   real_value = ({1.0}[1])
!
force modify body gravitational  &
   gravity_field_name = Local_Gravity  &
   y_component_gravity = (.test_analysis_1.G_C * .test_analysis_1.BouyancyFac * SIN(.test_analysis_1.Deviation))  &
   z_component_gravity = (.test_analysis_1.G_C * .test_analysis_1.BouyancyFac * COS(.test_analysis_1.Deviation))
!
data_element modify spline  &
   spline_name = .test_analysis_1.HoleIDspl  &
   y =   &
      (.test_analysis_1.HoleID),  &
      (.test_analysis_1.HoleID),  &
      (.test_analysis_1.HoleID),  &
      (.test_analysis_1.HoleID),  &
      (.test_analysis_1.HoleID),  &
      (.test_analysis_1.HoleID)
!
data_element modify spline  &
   spline_name = .test_analysis_1.WallKspl  &
   y =   &
      (.test_analysis_1.WallK),  &
      (.test_analysis_1.WallK),  &
      (.test_analysis_1.WallK),  &
      (.test_analysis_1.WallK),  &
      (.test_analysis_1.WallK),  &
      (.test_analysis_1.WallK)
!
data_element modify spline  &
   spline_name = .test_analysis_1.WallCspl  &
   y =   &
      (.test_analysis_1.WallC),  &
      (.test_analysis_1.WallC),  &
      (.test_analysis_1.WallC),  &
      (.test_analysis_1.WallC),  &
      (.test_analysis_1.WallC),  &
      (.test_analysis_1.WallC)
!
data_element modify spline  &
   spline_name = .test_analysis_1.Static_Muspl  &
   y =   &
      (.test_analysis_1.Sta_Mu),  &
      (.test_analysis_1.Sta_Mu),  &
      (.test_analysis_1.Sta_Mu),  &
      (.test_analysis_1.Sta_Mu),  &
      (.test_analysis_1.Sta_Mu),  &
      (.test_analysis_1.Sta_Mu)
!
data_element modify spline  &
   spline_name = .test_analysis_1.Static_Vspl  &
   y =   &
      (.test_analysis_1.Stat_V),  &
      (.test_analysis_1.Stat_V),  &
      (.test_analysis_1.Stat_V),  &
      (.test_analysis_1.Stat_V),  &
      (.test_analysis_1.Stat_V),  &
      (.test_analysis_1.Stat_V)
!
data_element modify spline  &
   spline_name = .test_analysis_1.Dynamic_Muspl  &
   y =   &
      (.test_analysis_1.Dyn_Mu),  &
      (.test_analysis_1.Dyn_Mu),  &
      (.test_analysis_1.Dyn_Mu),  &
      (.test_analysis_1.Dyn_Mu),  &
      (.test_analysis_1.Dyn_Mu),  &
      (.test_analysis_1.Dyn_Mu)
!
data_element modify spline  &
   spline_name = .test_analysis_1.Dynamic_Vspl  &
   y =   &
      (.test_analysis_1.Dyna_V),  &
      (.test_analysis_1.Dyna_V),  &
      (.test_analysis_1.Dyna_V),  &
      (.test_analysis_1.Dyna_V),  &
      (.test_analysis_1.Dyna_V),  &
      (.test_analysis_1.Dyna_V)
!
marker modify  &
   marker_name = .test_analysis_1.Hole_Bottom.cm  &
   location =   &
      0.0,  &
      0.0,  &
      (3.0 + 0.5)  &
   relative_to = .test_analysis_1.Hole_Bottom
!
defaults coordinate_system  &
   default_coordinate_system = .test_analysis_1.ground
!
geometry modify curve circle  &
   circle_name = .test_analysis_1.Hole_Bottom.gbottom  &
   center_marker = (.test_analysis_1.Hole_Bottom.gref1)
!
part modify rigid_body mass_properties  &
   part_name = .test_analysis_1.Hole_Bottom  &
   mass = (100000 / 32.2)
!
part modify equation differential_equation  &
   differential_equation_name = .test_analysis_1.integrated_ROP  &
   initial_condition = (.test_analysis_1.initial_bitMD)
!
part modify equation differential_equation  &
   differential_equation_name = .test_analysis_1.integrated_BOHV  &
   initial_condition = (.test_analysis_1.initial_bitMD)
!
variable modify  &
   variable_name = .test_analysis_1.joint_Count  &
   integer_value = (2 + 1)
!
geometry modify shape frustum  &
   frustum_name = .test_analysis_1.test_pdc_01.frust1  &
   center_marker = ("test_pdc_01" // ".LateralRef")  &
   angle_extent = (360D)  &
   length = (0.16667 * 0.95)  &
   top_radius = (0.6875 / 4)  &
   bottom_radius = (0.6875 / 2)
!
geometry modify shape cylinder  &
   cylinder_name = .test_analysis_1.test_pdc_01.cyl1  &
   center_marker = ("test_pdc_01" // ".LateralRef")  &
   length = (-1.5 + 0.4167 + 0.16667)  &
   radius = (0.6875 / 2)
!
marker modify  &
   marker_name = .test_analysis_1.test_pdc_01.gref2  &
   location =   &
      0.0,  &
      0.0,  &
      (-1.5 + 0.4167)  &
   relative_to = .test_analysis_1.test_pdc_01
!
defaults coordinate_system  &
   default_coordinate_system = .test_analysis_1.ground
!
geometry modify shape cylinder  &
   cylinder_name = .test_analysis_1.test_pdc_01.cyl2  &
   center_marker = ("test_pdc_01" // ".gref2")  &
   radius = (0.6875 / 2)
!
part modify rigid_body mass_properties  &
   part_name = .test_analysis_1.test_pdc_01  &
   mass = (0.9766283803 * 14.8561761445)  &
   ixx = (0.198866869 * 14.8561761445)  &
   iyy = (0.198866869 * 14.8561761445)  &
   izz = (0.1111430178 * 14.8561761445)
!
geometry modify shape cylinder  &
   cylinder_name = .test_analysis_1.test_pdc_01_sliderA.test_pdc_01_sliderAgraphic  &
   center_marker = ("test_pdc_01" // "_sliderA.A2")
!
geometry modify curve circle  &
   circle_name = .test_analysis_1.test_pdc_01_sliderA.ghole  &
   center_marker = ("test_pdc_01" // "_sliderA.cm")
!
constraint modify higher_pair_contact point_curve  &
   point_curve_name = .test_analysis_1.PTCV_test_pdc_011  &
   i_marker_name = ("test_pdc_01" // "_sliderA.A1")
!
constraint modify higher_pair_contact point_curve  &
   point_curve_name = .test_analysis_1.PTCV_test_pdc_012  &
   i_marker_name = ("test_pdc_01" // "_sliderA.A2")
!
force modify direct torque_vector  &
   torque_vector_name = .test_analysis_1.test_pdc_01_sliderA_damper  &
   i_marker_name = ("test_pdc_01" // "_sliderA.cm")  &
   ref_marker_name = ("test_pdc_01" // "_sliderA.cm")
!
force modify direct force_vector  &
   force_vector_name = .test_analysis_1.test_pdc_01_sliderA_locator  &
   i_marker_name = ("test_pdc_01" // ".LateralRef")  &
   ref_marker_name = ("test_pdc_01" // ".LateralRef")
!
force modify direct general_force  &
   general_force_name = .test_analysis_1.test_pdc_01_contactA  &
   i_marker_name = ("test_pdc_01" // ".LateralRef")  &
   ref_marker_name = ("test_pdc_01" // "_sliderA.cm")  &
   user_function =   &
      (.test_analysis_1.Impact_Exponent),  &
      (.test_analysis_1.Impact_Penetration),  &
      1.0208,  &
      0.3,  &
      0.15,  &
      1.25,  &
      0.9,  &
      0.999,  &
      0.0,  &
      1.0,  &
      0.0,  &
      1.0,  &
      0.55,  &
      1.05  &
   routine = "adrill_solver::BitForces"
!
marker modify  &
   marker_name = .test_analysis_1.example_stabilizer_02_B.barrelA1  &
   location =   &
      0.0,  &
      0.0,  &
      (-1.83 / 10)  &
   relative_to = .test_analysis_1.example_stabilizer_02_B
!
defaults coordinate_system  &
   default_coordinate_system = .test_analysis_1.ground
!
marker modify  &
   marker_name = .test_analysis_1.example_stabilizer_02_B.barrelB1  &
   location =   &
      0.0,  &
      0.0,  &
      (-9 * 1.83 / 10)  &
   relative_to = .test_analysis_1.example_stabilizer_02_B
!
defaults coordinate_system  &
   default_coordinate_system = .test_analysis_1.ground
!
geometry modify shape cylinder  &
   cylinder_name = .test_analysis_1.example_stabilizer_02_B.cyl2  &
   center_marker = ("example_stabilizer_02" // "_B.barrelA")  &
   radius = (0.5383333333 / 2)
!
geometry modify shape cylinder  &
   cylinder_name = .test_analysis_1.example_stabilizer_02_B.cyl1  &
   radius = (0.5383333333 / 2)
!
geometry modify shape cylinder  &
   cylinder_name = .test_analysis_1.example_stabilizer_02_B.cyl11  &
   radius = (0.5383333333 / 2)
!
geometry modify shape cylinder  &
   cylinder_name = .test_analysis_1.example_stabilizer_02_sliderA.example_stabilizer_02_sliderAgraphic  &
   center_marker = ("example_stabilizer_02" // "_sliderA.A2")
!
geometry modify curve circle  &
   circle_name = .test_analysis_1.example_stabilizer_02_sliderA.ghole  &
   center_marker = ("example_stabilizer_02" // "_sliderA.cm")
!
geometry modify shape cylinder  &
   cylinder_name = .test_analysis_1.example_stabilizer_02_sliderB.example_stabilizer_02_sliderBgraphic  &
   center_marker = ("example_stabilizer_02" // "_sliderB.B2")
!
geometry modify curve circle  &
   circle_name = .test_analysis_1.example_stabilizer_02_sliderB.ghole  &
   center_marker = ("example_stabilizer_02" // "_sliderB.cm")
!
constraint modify higher_pair_contact point_curve  &
   point_curve_name = .test_analysis_1.PTCV_example_stabilizer_02_A1  &
   i_marker_name = ("example_stabilizer_02" // "_sliderA.A1")
!
constraint modify higher_pair_contact point_curve  &
   point_curve_name = .test_analysis_1.PTCV_example_stabilizer_02_A2  &
   i_marker_name = ("example_stabilizer_02" // "_sliderA.A2")
!
constraint modify higher_pair_contact point_curve  &
   point_curve_name = .test_analysis_1.PTCV_example_stabilizer_02_B1  &
   i_marker_name = ("example_stabilizer_02" // "_sliderB.B1")
!
constraint modify higher_pair_contact point_curve  &
   point_curve_name = .test_analysis_1.PTCV_example_stabilizer_02_B2  &
   i_marker_name = ("example_stabilizer_02" // "_sliderB.B2")
!
force modify direct torque_vector  &
   torque_vector_name = .test_analysis_1.example_stabilizer_02_sliderA_damper  &
   i_marker_name = ("example_stabilizer_02" // "_sliderA.cm")  &
   ref_marker_name = ("example_stabilizer_02" // "_sliderA.cm")
!
force modify direct torque_vector  &
   torque_vector_name = .test_analysis_1.example_stabilizer_02_sliderB_damper  &
   i_marker_name = ("example_stabilizer_02" // "_sliderB.cm")  &
   ref_marker_name = ("example_stabilizer_02" // "_sliderB.cm")
!
force modify direct force_vector  &
   force_vector_name = .test_analysis_1.example_stabilizer_02_sliderA_locator  &
   i_marker_name = ("example_stabilizer_02" // "_B.barrelA1")  &
   ref_marker_name = ("example_stabilizer_02" // "_B.barrelA1")
!
force modify direct force_vector  &
   force_vector_name = .test_analysis_1.example_stabilizer_02_sliderB_locator  &
   i_marker_name = ("example_stabilizer_02" // "_B.barrelB1")  &
   ref_marker_name = ("example_stabilizer_02" // "_B.barrelB1")
!
force modify direct general_force  &
   general_force_name = .test_analysis_1.example_stabilizer_02_contactA  &
   i_marker_name = ("example_stabilizer_02" // "_B.barrelA1")  &
   ref_marker_name = ("example_stabilizer_02" // "_sliderA.cm")  &
   user_function =   &
      (.test_analysis_1.Impact_Exponent),  &
      (.test_analysis_1.Impact_Penetration),  &
      0.6979166667,  &
      75.0,  &
      (1.83 * 0.6979166667 / 2),  &
      1.2  &
   routine = "adrill_solver::StringForces"
!
force modify direct general_force  &
   general_force_name = .test_analysis_1.example_stabilizer_02_contactB  &
   i_marker_name = ("example_stabilizer_02" // "_B.barrelB1")  &
   ref_marker_name = ("example_stabilizer_02" // "_sliderB.cm")  &
   user_function =   &
      (.test_analysis_1.Impact_Exponent),  &
      (.test_analysis_1.Impact_Penetration),  &
      0.6979166667,  &
      75.0,  &
      (1.83 * 0.6979166667 / 2),  &
      1.2  &
   routine = "adrill_solver::StringForces"
!
variable modify  &
   variable_name = .test_analysis_1.last_pipe  &
   real_value = (4 - 1)
!
variable modify  &
   variable_name = .test_analysis_1.TrueMudDensity  &
   real_value = (75.0 * 3.108E-02)
!
geometry modify shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group1_A.cyl1  &
   radius = (0.5833 / 2)
!
geometry modify shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group1_A.cyl1a  &
   radius = (0.5833 / 2 * 1.01)
!
geometry modify shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group1_A.cyl2  &
   length = (-31.0 / 4 + 1.0)  &
   radius = (0.4167 / 2)
!
geometry modify shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group1_A.cyl2a  &
   length = (-31.0 / 4 + 1.0)  &
   radius = (0.4167 / 2 * 1.01)
!
marker modify  &
   marker_name = .test_analysis_1.Upper_DP_Group1_B.cm  &
   location =   &
      0.0,  &
      0.0,  &
      (-31.0 / 4)  &
   relative_to = .test_analysis_1.Upper_DP_Group1_B
!
defaults coordinate_system  &
   default_coordinate_system = .test_analysis_1.ground
!
marker modify  &
   marker_name = .test_analysis_1.Upper_DP_Group1_B.end_beamB  &
   location =   &
      0.0,  &
      0.0,  &
      (-31.0 / 4)  &
   relative_to = .test_analysis_1.Upper_DP_Group1_B
!
defaults coordinate_system  &
   default_coordinate_system = .test_analysis_1.ground
!
geometry modify shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group1_B.cyl1  &
   center_marker = ("Upper_DP_Group" // 1 // "_B.end_B")  &
   length = (-31.0 / 2)  &
   radius = (0.4167 / 2)
!
geometry modify shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group1_B.cyl1a  &
   center_marker = ("Upper_DP_Group" // 1 // "_B.end_B")  &
   length = (-31.0 / 2)  &
   radius = (0.4167 / 2 * 1.01)
!
geometry modify curve circle  &
   circle_name = .test_analysis_1.Upper_DP_Group1_B.rub1  &
   center_marker = ("Upper_DP_Group" // 1 // "_B.cm")  &
   radius = (0.5 / 2)
!
part modify rigid_body mass_properties  &
   part_name = .test_analysis_1.Upper_DP_Group1_B  &
   center_of_mass_marker = ("Upper_DP_Group" // 1 // "_B.cm")
!
geometry modify shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group1_C.cyl1a  &
   radius = (0.5833 / 2 * 1.01)
!
geometry modify shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group1_C.cyl1  &
   radius = (0.5833 / 2)
!
geometry modify shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group1_C.cyl2  &
   length = (-(31.0 / 4 - 1.0))  &
   radius = (0.4167 / 2)
!
geometry modify shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group1_C.cyl2a  &
   length = (-(31.0 / 4 - 1.0))  &
   radius = (0.4167 / 2 * 1.01)
!
geometry modify shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group1_sliderA.Upper_DP_Group1_sliderAgraphic  &
   center_marker = ("Upper_DP_Group" // 1 // "_sliderA.A2")
!
geometry modify curve circle  &
   circle_name = .test_analysis_1.Upper_DP_Group1_sliderA.ghole  &
   center_marker = ("Upper_DP_Group" // 1 // "_sliderA.cm")
!
geometry modify shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group1_sliderB.Upper_DP_Group1_sliderBgraphic  &
   center_marker = ("Upper_DP_Group" // 1 // "_sliderB.B2")
!
geometry modify curve circle  &
   circle_name = .test_analysis_1.Upper_DP_Group1_sliderB.ghole  &
   center_marker = ("Upper_DP_Group" // 1 // "_sliderB.cm")
!
constraint modify higher_pair_contact point_curve  &
   point_curve_name = .test_analysis_1.PTCV_Upper_DP_Group1_A1  &
   i_marker_name = ("Upper_DP_Group" // 1 // "_sliderA.A1")
!
constraint modify higher_pair_contact point_curve  &
   point_curve_name = .test_analysis_1.PTCV_Upper_DP_Group1_A2  &
   i_marker_name = ("Upper_DP_Group" // 1 // "_sliderA.A2")
!
constraint modify higher_pair_contact point_curve  &
   point_curve_name = .test_analysis_1.PTCV_Upper_DP_Group1_B1  &
   i_marker_name = ("Upper_DP_Group" // 1 // "_sliderB.B1")
!
constraint modify higher_pair_contact point_curve  &
   point_curve_name = .test_analysis_1.PTCV_Upper_DP_Group1_B2  &
   i_marker_name = ("Upper_DP_Group" // 1 // "_sliderB.B2")
!
force modify direct torque_vector  &
   torque_vector_name = .test_analysis_1.Upper_DP_Group1_sliderA_damper  &
   i_marker_name = ("Upper_DP_Group" // 1 // "_sliderA.cm")  &
   ref_marker_name = ("Upper_DP_Group" // 1 // "_sliderA.cm")
!
force modify direct torque_vector  &
   torque_vector_name = .test_analysis_1.Upper_DP_Group1_sliderB_damper  &
   i_marker_name = ("Upper_DP_Group" // 1 // "_sliderB.cm")  &
   ref_marker_name = ("Upper_DP_Group" // 1 // "_sliderB.cm")
!
force modify direct force_vector  &
   force_vector_name = .test_analysis_1.Upper_DP_Group1_sliderA_locator  &
   i_marker_name = ("Upper_DP_Group" // 1 // "_A.end_A")  &
   ref_marker_name = ("Upper_DP_Group" // 1 // "_A.end_A")
!
force modify direct force_vector  &
   force_vector_name = .test_analysis_1.Upper_DP_Group1_sliderB_locator  &
   i_marker_name = ("Upper_DP_Group" // 1 // "_B.cm")  &
   ref_marker_name = ("Upper_DP_Group" // 1 // "_B.cm")
!
variable modify  &
   variable_name = .test_analysis_1.ShearModulus  &
   real_value = (0.385 * .test_analysis_1.YoungsModulus)
!
force modify element_like beam  &
   beam_name = .test_analysis_1.BeamAB_Upper_DP_Group1  &
   area_of_cross_section = ((0.4167**2 - 0.3333**2) * PI / 4)  &
   youngs_modulus = (.test_analysis_1.YoungsModulus)  &
   shear_modulus = (.test_analysis_1.ShearModulus)  &
   ixx = ((0.4167**4 - 0.3333**4) * PI / 32)  &
   iyy = ((0.4167**4 - 0.3333**4) * PI / 64)  &
   izz = ((0.4167**4 - 0.3333**4) * PI / 64)
!
force modify element_like beam  &
   beam_name = .test_analysis_1.BeamBC_Upper_DP_Group1  &
   area_of_cross_section = ((0.4167**2 - 0.3333**2) * PI / 4)  &
   youngs_modulus = (.test_analysis_1.YoungsModulus)  &
   shear_modulus = (.test_analysis_1.ShearModulus)  &
   ixx = ((0.4167**4 - 0.3333**4) * PI / 32)  &
   iyy = ((0.4167**4 - 0.3333**4) * PI / 64)  &
   izz = ((0.4167**4 - 0.3333**4) * PI / 64)
!
force modify direct general_force  &
   general_force_name = .test_analysis_1.Upper_DP_Group1_contactA  &
   i_marker_name = ("Upper_DP_Group" // 1 // "_A.end_A")  &
   ref_marker_name = ("Upper_DP_Group" // 1 // "_sliderA.cm")  &
   user_function =   &
      (.test_analysis_1.Impact_Exponent),  &
      (.test_analysis_1.Impact_Penetration),  &
      0.5833,  &
      75.0,  &
      (31.0 * 0.5 * 2 / 3),  &
      1.2  &
   routine = "adrill_solver::StringForces"
!
force modify direct general_force  &
   general_force_name = .test_analysis_1.Upper_DP_Group1_contactB  &
   i_marker_name = ("Upper_DP_Group" // 1 // "_B.cm")  &
   ref_marker_name = ("Upper_DP_Group" // 1 // "_sliderB.cm")  &
   user_function =   &
      (.test_analysis_1.Impact_Exponent),  &
      (.test_analysis_1.Impact_Penetration),  &
      0.5,  &
      75.0,  &
      (31.0 * 0.5 / 3),  &
      1.2  &
   routine = "adrill_solver::StringForces"
!
force modify direct force_vector  &
   force_vector_name = .test_analysis_1.Upper_DP_Group1_fluidmassA  &
   i_marker_name = ("Upper_DP_Group" // 1 // "_A.cm")  &
   ref_marker_name = ("Upper_DP_Group" // 1 // "_A.cm")
!
force modify direct force_vector  &
   force_vector_name = .test_analysis_1.Upper_DP_Group1_fluidmassC  &
   i_marker_name = ("Upper_DP_Group" // 1 // "_C.cm")  &
   ref_marker_name = ("Upper_DP_Group" // 1 // "_C.cm")
!
force modify direct force_vector  &
   force_vector_name = .test_analysis_1.Upper_DP_Group1_fluidmassB  &
   i_marker_name = ("Upper_DP_Group" // 1 // "_B.cm")  &
   ref_marker_name = ("Upper_DP_Group" // 1 // "_B.cm")
!
geometry modify shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group2_A.cyl1  &
   radius = (0.5833 / 2)
!
geometry modify shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group2_A.cyl1a  &
   radius = (0.5833 / 2 * 1.01)
!
geometry modify shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group2_A.cyl2  &
   length = (-31.0 / 4 + 1.0)  &
   radius = (0.4167 / 2)
!
geometry modify shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group2_A.cyl2a  &
   length = (-31.0 / 4 + 1.0)  &
   radius = (0.4167 / 2 * 1.01)
!
marker modify  &
   marker_name = .test_analysis_1.Upper_DP_Group2_B.cm  &
   location =   &
      0.0,  &
      0.0,  &
      (-31.0 / 4)  &
   relative_to = .test_analysis_1.Upper_DP_Group2_B
!
defaults coordinate_system  &
   default_coordinate_system = .test_analysis_1.ground
!
marker modify  &
   marker_name = .test_analysis_1.Upper_DP_Group2_B.end_beamB  &
   location =   &
      0.0,  &
      0.0,  &
      (-31.0 / 4)  &
   relative_to = .test_analysis_1.Upper_DP_Group2_B
!
defaults coordinate_system  &
   default_coordinate_system = .test_analysis_1.ground
!
geometry modify shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group2_B.cyl1  &
   center_marker = ("Upper_DP_Group" // 2 // "_B.end_B")  &
   length = (-31.0 / 2)  &
   radius = (0.4167 / 2)
!
geometry modify shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group2_B.cyl1a  &
   center_marker = ("Upper_DP_Group" // 2 // "_B.end_B")  &
   length = (-31.0 / 2)  &
   radius = (0.4167 / 2 * 1.01)
!
geometry modify curve circle  &
   circle_name = .test_analysis_1.Upper_DP_Group2_B.rub1  &
   center_marker = ("Upper_DP_Group" // 2 // "_B.cm")  &
   radius = (0.5 / 2)
!
part modify rigid_body mass_properties  &
   part_name = .test_analysis_1.Upper_DP_Group2_B  &
   center_of_mass_marker = ("Upper_DP_Group" // 2 // "_B.cm")
!
geometry modify shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group2_C.cyl1a  &
   radius = (0.5833 / 2 * 1.01)
!
geometry modify shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group2_C.cyl1  &
   radius = (0.5833 / 2)
!
geometry modify shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group2_C.cyl2  &
   length = (-(31.0 / 4 - 1.0))  &
   radius = (0.4167 / 2)
!
geometry modify shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group2_C.cyl2a  &
   length = (-(31.0 / 4 - 1.0))  &
   radius = (0.4167 / 2 * 1.01)
!
geometry modify shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group2_sliderA.Upper_DP_Group2_sliderAgraphic  &
   center_marker = ("Upper_DP_Group" // 2 // "_sliderA.A2")
!
geometry modify curve circle  &
   circle_name = .test_analysis_1.Upper_DP_Group2_sliderA.ghole  &
   center_marker = ("Upper_DP_Group" // 2 // "_sliderA.cm")
!
geometry modify shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group2_sliderB.Upper_DP_Group2_sliderBgraphic  &
   center_marker = ("Upper_DP_Group" // 2 // "_sliderB.B2")
!
geometry modify curve circle  &
   circle_name = .test_analysis_1.Upper_DP_Group2_sliderB.ghole  &
   center_marker = ("Upper_DP_Group" // 2 // "_sliderB.cm")
!
constraint modify higher_pair_contact point_curve  &
   point_curve_name = .test_analysis_1.PTCV_Upper_DP_Group2_A1  &
   i_marker_name = ("Upper_DP_Group" // 2 // "_sliderA.A1")
!
constraint modify higher_pair_contact point_curve  &
   point_curve_name = .test_analysis_1.PTCV_Upper_DP_Group2_A2  &
   i_marker_name = ("Upper_DP_Group" // 2 // "_sliderA.A2")
!
constraint modify higher_pair_contact point_curve  &
   point_curve_name = .test_analysis_1.PTCV_Upper_DP_Group2_B1  &
   i_marker_name = ("Upper_DP_Group" // 2 // "_sliderB.B1")
!
constraint modify higher_pair_contact point_curve  &
   point_curve_name = .test_analysis_1.PTCV_Upper_DP_Group2_B2  &
   i_marker_name = ("Upper_DP_Group" // 2 // "_sliderB.B2")
!
force modify direct torque_vector  &
   torque_vector_name = .test_analysis_1.Upper_DP_Group2_sliderA_damper  &
   i_marker_name = ("Upper_DP_Group" // 2 // "_sliderA.cm")  &
   ref_marker_name = ("Upper_DP_Group" // 2 // "_sliderA.cm")
!
force modify direct torque_vector  &
   torque_vector_name = .test_analysis_1.Upper_DP_Group2_sliderB_damper  &
   i_marker_name = ("Upper_DP_Group" // 2 // "_sliderB.cm")  &
   ref_marker_name = ("Upper_DP_Group" // 2 // "_sliderB.cm")
!
force modify direct force_vector  &
   force_vector_name = .test_analysis_1.Upper_DP_Group2_sliderA_locator  &
   i_marker_name = ("Upper_DP_Group" // 2 // "_A.end_A")  &
   ref_marker_name = ("Upper_DP_Group" // 2 // "_A.end_A")
!
force modify direct force_vector  &
   force_vector_name = .test_analysis_1.Upper_DP_Group2_sliderB_locator  &
   i_marker_name = ("Upper_DP_Group" // 2 // "_B.cm")  &
   ref_marker_name = ("Upper_DP_Group" // 2 // "_B.cm")
!
force modify element_like beam  &
   beam_name = .test_analysis_1.BeamAB_Upper_DP_Group2  &
   area_of_cross_section = ((0.4167**2 - 0.3333**2) * PI / 4)  &
   youngs_modulus = (.test_analysis_1.YoungsModulus)  &
   shear_modulus = (.test_analysis_1.ShearModulus)  &
   ixx = ((0.4167**4 - 0.3333**4) * PI / 32)  &
   iyy = ((0.4167**4 - 0.3333**4) * PI / 64)  &
   izz = ((0.4167**4 - 0.3333**4) * PI / 64)
!
force modify element_like beam  &
   beam_name = .test_analysis_1.BeamBC_Upper_DP_Group2  &
   area_of_cross_section = ((0.4167**2 - 0.3333**2) * PI / 4)  &
   youngs_modulus = (.test_analysis_1.YoungsModulus)  &
   shear_modulus = (.test_analysis_1.ShearModulus)  &
   ixx = ((0.4167**4 - 0.3333**4) * PI / 32)  &
   iyy = ((0.4167**4 - 0.3333**4) * PI / 64)  &
   izz = ((0.4167**4 - 0.3333**4) * PI / 64)
!
force modify direct general_force  &
   general_force_name = .test_analysis_1.Upper_DP_Group2_contactA  &
   i_marker_name = ("Upper_DP_Group" // 2 // "_A.end_A")  &
   ref_marker_name = ("Upper_DP_Group" // 2 // "_sliderA.cm")  &
   user_function =   &
      (.test_analysis_1.Impact_Exponent),  &
      (.test_analysis_1.Impact_Penetration),  &
      0.5833,  &
      75.0,  &
      (31.0 * 0.5 * 2 / 3),  &
      1.2  &
   routine = "adrill_solver::StringForces"
!
force modify direct general_force  &
   general_force_name = .test_analysis_1.Upper_DP_Group2_contactB  &
   i_marker_name = ("Upper_DP_Group" // 2 // "_B.cm")  &
   ref_marker_name = ("Upper_DP_Group" // 2 // "_sliderB.cm")  &
   user_function =   &
      (.test_analysis_1.Impact_Exponent),  &
      (.test_analysis_1.Impact_Penetration),  &
      0.5,  &
      75.0,  &
      (31.0 * 0.5 / 3),  &
      1.2  &
   routine = "adrill_solver::StringForces"
!
force modify direct force_vector  &
   force_vector_name = .test_analysis_1.Upper_DP_Group2_fluidmassA  &
   i_marker_name = ("Upper_DP_Group" // 2 // "_A.cm")  &
   ref_marker_name = ("Upper_DP_Group" // 2 // "_A.cm")
!
force modify direct force_vector  &
   force_vector_name = .test_analysis_1.Upper_DP_Group2_fluidmassC  &
   i_marker_name = ("Upper_DP_Group" // 2 // "_C.cm")  &
   ref_marker_name = ("Upper_DP_Group" // 2 // "_C.cm")
!
force modify direct force_vector  &
   force_vector_name = .test_analysis_1.Upper_DP_Group2_fluidmassB  &
   i_marker_name = ("Upper_DP_Group" // 2 // "_B.cm")  &
   ref_marker_name = ("Upper_DP_Group" // 2 // "_B.cm")
!
geometry modify shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group3_A.cyl1  &
   radius = (0.5833 / 2)
!
geometry modify shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group3_A.cyl1a  &
   radius = (0.5833 / 2 * 1.01)
!
geometry modify shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group3_A.cyl2  &
   length = (-31.0 / 4 + 1.0)  &
   radius = (0.4167 / 2)
!
geometry modify shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group3_A.cyl2a  &
   length = (-31.0 / 4 + 1.0)  &
   radius = (0.4167 / 2 * 1.01)
!
marker modify  &
   marker_name = .test_analysis_1.Upper_DP_Group3_B.cm  &
   location =   &
      0.0,  &
      0.0,  &
      (-31.0 / 4)  &
   relative_to = .test_analysis_1.Upper_DP_Group3_B
!
defaults coordinate_system  &
   default_coordinate_system = .test_analysis_1.ground
!
marker modify  &
   marker_name = .test_analysis_1.Upper_DP_Group3_B.end_beamB  &
   location =   &
      0.0,  &
      0.0,  &
      (-31.0 / 4)  &
   relative_to = .test_analysis_1.Upper_DP_Group3_B
!
defaults coordinate_system  &
   default_coordinate_system = .test_analysis_1.ground
!
geometry modify shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group3_B.cyl1  &
   center_marker = ("Upper_DP_Group" // 3 // "_B.end_B")  &
   length = (-31.0 / 2)  &
   radius = (0.4167 / 2)
!
geometry modify shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group3_B.cyl1a  &
   center_marker = ("Upper_DP_Group" // 3 // "_B.end_B")  &
   length = (-31.0 / 2)  &
   radius = (0.4167 / 2 * 1.01)
!
geometry modify curve circle  &
   circle_name = .test_analysis_1.Upper_DP_Group3_B.rub1  &
   center_marker = ("Upper_DP_Group" // 3 // "_B.cm")  &
   radius = (0.5 / 2)
!
part modify rigid_body mass_properties  &
   part_name = .test_analysis_1.Upper_DP_Group3_B  &
   center_of_mass_marker = ("Upper_DP_Group" // 3 // "_B.cm")
!
geometry modify shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group3_C.cyl1a  &
   radius = (0.5833 / 2 * 1.01)
!
geometry modify shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group3_C.cyl1  &
   radius = (0.5833 / 2)
!
geometry modify shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group3_C.cyl2  &
   length = (-(31.0 / 4 - 1.0))  &
   radius = (0.4167 / 2)
!
geometry modify shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group3_C.cyl2a  &
   length = (-(31.0 / 4 - 1.0))  &
   radius = (0.4167 / 2 * 1.01)
!
geometry modify shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group3_sliderA.Upper_DP_Group3_sliderAgraphic  &
   center_marker = ("Upper_DP_Group" // 3 // "_sliderA.A2")
!
geometry modify curve circle  &
   circle_name = .test_analysis_1.Upper_DP_Group3_sliderA.ghole  &
   center_marker = ("Upper_DP_Group" // 3 // "_sliderA.cm")
!
geometry modify shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group3_sliderB.Upper_DP_Group3_sliderBgraphic  &
   center_marker = ("Upper_DP_Group" // 3 // "_sliderB.B2")
!
geometry modify curve circle  &
   circle_name = .test_analysis_1.Upper_DP_Group3_sliderB.ghole  &
   center_marker = ("Upper_DP_Group" // 3 // "_sliderB.cm")
!
constraint modify higher_pair_contact point_curve  &
   point_curve_name = .test_analysis_1.PTCV_Upper_DP_Group3_A1  &
   i_marker_name = ("Upper_DP_Group" // 3 // "_sliderA.A1")
!
constraint modify higher_pair_contact point_curve  &
   point_curve_name = .test_analysis_1.PTCV_Upper_DP_Group3_A2  &
   i_marker_name = ("Upper_DP_Group" // 3 // "_sliderA.A2")
!
constraint modify higher_pair_contact point_curve  &
   point_curve_name = .test_analysis_1.PTCV_Upper_DP_Group3_B1  &
   i_marker_name = ("Upper_DP_Group" // 3 // "_sliderB.B1")
!
constraint modify higher_pair_contact point_curve  &
   point_curve_name = .test_analysis_1.PTCV_Upper_DP_Group3_B2  &
   i_marker_name = ("Upper_DP_Group" // 3 // "_sliderB.B2")
!
force modify direct torque_vector  &
   torque_vector_name = .test_analysis_1.Upper_DP_Group3_sliderA_damper  &
   i_marker_name = ("Upper_DP_Group" // 3 // "_sliderA.cm")  &
   ref_marker_name = ("Upper_DP_Group" // 3 // "_sliderA.cm")
!
force modify direct torque_vector  &
   torque_vector_name = .test_analysis_1.Upper_DP_Group3_sliderB_damper  &
   i_marker_name = ("Upper_DP_Group" // 3 // "_sliderB.cm")  &
   ref_marker_name = ("Upper_DP_Group" // 3 // "_sliderB.cm")
!
force modify direct force_vector  &
   force_vector_name = .test_analysis_1.Upper_DP_Group3_sliderA_locator  &
   i_marker_name = ("Upper_DP_Group" // 3 // "_A.end_A")  &
   ref_marker_name = ("Upper_DP_Group" // 3 // "_A.end_A")
!
force modify direct force_vector  &
   force_vector_name = .test_analysis_1.Upper_DP_Group3_sliderB_locator  &
   i_marker_name = ("Upper_DP_Group" // 3 // "_B.cm")  &
   ref_marker_name = ("Upper_DP_Group" // 3 // "_B.cm")
!
force modify element_like beam  &
   beam_name = .test_analysis_1.BeamAB_Upper_DP_Group3  &
   area_of_cross_section = ((0.4167**2 - 0.3333**2) * PI / 4)  &
   youngs_modulus = (.test_analysis_1.YoungsModulus)  &
   shear_modulus = (.test_analysis_1.ShearModulus)  &
   ixx = ((0.4167**4 - 0.3333**4) * PI / 32)  &
   iyy = ((0.4167**4 - 0.3333**4) * PI / 64)  &
   izz = ((0.4167**4 - 0.3333**4) * PI / 64)
!
force modify element_like beam  &
   beam_name = .test_analysis_1.BeamBC_Upper_DP_Group3  &
   area_of_cross_section = ((0.4167**2 - 0.3333**2) * PI / 4)  &
   youngs_modulus = (.test_analysis_1.YoungsModulus)  &
   shear_modulus = (.test_analysis_1.ShearModulus)  &
   ixx = ((0.4167**4 - 0.3333**4) * PI / 32)  &
   iyy = ((0.4167**4 - 0.3333**4) * PI / 64)  &
   izz = ((0.4167**4 - 0.3333**4) * PI / 64)
!
force modify direct general_force  &
   general_force_name = .test_analysis_1.Upper_DP_Group3_contactA  &
   i_marker_name = ("Upper_DP_Group" // 3 // "_A.end_A")  &
   ref_marker_name = ("Upper_DP_Group" // 3 // "_sliderA.cm")  &
   user_function =   &
      (.test_analysis_1.Impact_Exponent),  &
      (.test_analysis_1.Impact_Penetration),  &
      0.5833,  &
      75.0,  &
      (31.0 * 0.5 * 2 / 3),  &
      1.2  &
   routine = "adrill_solver::StringForces"
!
force modify direct general_force  &
   general_force_name = .test_analysis_1.Upper_DP_Group3_contactB  &
   i_marker_name = ("Upper_DP_Group" // 3 // "_B.cm")  &
   ref_marker_name = ("Upper_DP_Group" // 3 // "_sliderB.cm")  &
   user_function =   &
      (.test_analysis_1.Impact_Exponent),  &
      (.test_analysis_1.Impact_Penetration),  &
      0.5,  &
      75.0,  &
      (31.0 * 0.5 / 3),  &
      1.2  &
   routine = "adrill_solver::StringForces"
!
force modify direct force_vector  &
   force_vector_name = .test_analysis_1.Upper_DP_Group3_fluidmassA  &
   i_marker_name = ("Upper_DP_Group" // 3 // "_A.cm")  &
   ref_marker_name = ("Upper_DP_Group" // 3 // "_A.cm")
!
force modify direct force_vector  &
   force_vector_name = .test_analysis_1.Upper_DP_Group3_fluidmassC  &
   i_marker_name = ("Upper_DP_Group" // 3 // "_C.cm")  &
   ref_marker_name = ("Upper_DP_Group" // 3 // "_C.cm")
!
force modify direct force_vector  &
   force_vector_name = .test_analysis_1.Upper_DP_Group3_fluidmassB  &
   i_marker_name = ("Upper_DP_Group" // 3 // "_B.cm")  &
   ref_marker_name = ("Upper_DP_Group" // 3 // "_B.cm")
!
geometry modify shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group4_A.cyl1  &
   radius = (0.5833 / 2)
!
geometry modify shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group4_A.cyl1a  &
   radius = (0.5833 / 2 * 1.01)
!
geometry modify shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group4_A.cyl2  &
   length = (-31.0 / 4 + 1.0)  &
   radius = (0.4167 / 2)
!
geometry modify shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group4_A.cyl2a  &
   length = (-31.0 / 4 + 1.0)  &
   radius = (0.4167 / 2 * 1.01)
!
marker modify  &
   marker_name = .test_analysis_1.Upper_DP_Group4_B.cm  &
   location =   &
      0.0,  &
      0.0,  &
      (-31.0 / 4)  &
   relative_to = .test_analysis_1.Upper_DP_Group4_B
!
defaults coordinate_system  &
   default_coordinate_system = .test_analysis_1.ground
!
marker modify  &
   marker_name = .test_analysis_1.Upper_DP_Group4_B.end_beamB  &
   location =   &
      0.0,  &
      0.0,  &
      (-31.0 / 4)  &
   relative_to = .test_analysis_1.Upper_DP_Group4_B
!
defaults coordinate_system  &
   default_coordinate_system = .test_analysis_1.ground
!
geometry modify shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group4_B.cyl1  &
   center_marker = ("Upper_DP_Group" // 4 // "_B.end_B")  &
   length = (-31.0 / 2)  &
   radius = (0.4167 / 2)
!
geometry modify shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group4_B.cyl1a  &
   center_marker = ("Upper_DP_Group" // 4 // "_B.end_B")  &
   length = (-31.0 / 2)  &
   radius = (0.4167 / 2 * 1.01)
!
geometry modify curve circle  &
   circle_name = .test_analysis_1.Upper_DP_Group4_B.rub1  &
   center_marker = ("Upper_DP_Group" // 4 // "_B.cm")  &
   radius = (0.5 / 2)
!
part modify rigid_body mass_properties  &
   part_name = .test_analysis_1.Upper_DP_Group4_B  &
   center_of_mass_marker = ("Upper_DP_Group" // 4 // "_B.cm")
!
geometry modify shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group4_C.cyl1a  &
   radius = (0.5833 / 2 * 1.01)
!
geometry modify shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group4_C.cyl1  &
   radius = (0.5833 / 2)
!
geometry modify shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group4_C.cyl2  &
   length = (-(31.0 / 4 - 1.0))  &
   radius = (0.4167 / 2)
!
geometry modify shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group4_C.cyl2a  &
   length = (-(31.0 / 4 - 1.0))  &
   radius = (0.4167 / 2 * 1.01)
!
geometry modify shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group4_sliderA.Upper_DP_Group4_sliderAgraphic  &
   center_marker = ("Upper_DP_Group" // 4 // "_sliderA.A2")
!
geometry modify curve circle  &
   circle_name = .test_analysis_1.Upper_DP_Group4_sliderA.ghole  &
   center_marker = ("Upper_DP_Group" // 4 // "_sliderA.cm")
!
geometry modify shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group4_sliderB.Upper_DP_Group4_sliderBgraphic  &
   center_marker = ("Upper_DP_Group" // 4 // "_sliderB.B2")
!
geometry modify curve circle  &
   circle_name = .test_analysis_1.Upper_DP_Group4_sliderB.ghole  &
   center_marker = ("Upper_DP_Group" // 4 // "_sliderB.cm")
!
constraint modify higher_pair_contact point_curve  &
   point_curve_name = .test_analysis_1.PTCV_Upper_DP_Group4_A1  &
   i_marker_name = ("Upper_DP_Group" // 4 // "_sliderA.A1")
!
constraint modify higher_pair_contact point_curve  &
   point_curve_name = .test_analysis_1.PTCV_Upper_DP_Group4_A2  &
   i_marker_name = ("Upper_DP_Group" // 4 // "_sliderA.A2")
!
constraint modify higher_pair_contact point_curve  &
   point_curve_name = .test_analysis_1.PTCV_Upper_DP_Group4_B1  &
   i_marker_name = ("Upper_DP_Group" // 4 // "_sliderB.B1")
!
constraint modify higher_pair_contact point_curve  &
   point_curve_name = .test_analysis_1.PTCV_Upper_DP_Group4_B2  &
   i_marker_name = ("Upper_DP_Group" // 4 // "_sliderB.B2")
!
force modify direct torque_vector  &
   torque_vector_name = .test_analysis_1.Upper_DP_Group4_sliderA_damper  &
   i_marker_name = ("Upper_DP_Group" // 4 // "_sliderA.cm")  &
   ref_marker_name = ("Upper_DP_Group" // 4 // "_sliderA.cm")
!
force modify direct torque_vector  &
   torque_vector_name = .test_analysis_1.Upper_DP_Group4_sliderB_damper  &
   i_marker_name = ("Upper_DP_Group" // 4 // "_sliderB.cm")  &
   ref_marker_name = ("Upper_DP_Group" // 4 // "_sliderB.cm")
!
force modify direct force_vector  &
   force_vector_name = .test_analysis_1.Upper_DP_Group4_sliderA_locator  &
   i_marker_name = ("Upper_DP_Group" // 4 // "_A.end_A")  &
   ref_marker_name = ("Upper_DP_Group" // 4 // "_A.end_A")
!
force modify direct force_vector  &
   force_vector_name = .test_analysis_1.Upper_DP_Group4_sliderB_locator  &
   i_marker_name = ("Upper_DP_Group" // 4 // "_B.cm")  &
   ref_marker_name = ("Upper_DP_Group" // 4 // "_B.cm")
!
force modify element_like beam  &
   beam_name = .test_analysis_1.BeamAB_Upper_DP_Group4  &
   area_of_cross_section = ((0.4167**2 - 0.3333**2) * PI / 4)  &
   youngs_modulus = (.test_analysis_1.YoungsModulus)  &
   shear_modulus = (.test_analysis_1.ShearModulus)  &
   ixx = ((0.4167**4 - 0.3333**4) * PI / 32)  &
   iyy = ((0.4167**4 - 0.3333**4) * PI / 64)  &
   izz = ((0.4167**4 - 0.3333**4) * PI / 64)
!
force modify element_like beam  &
   beam_name = .test_analysis_1.BeamBC_Upper_DP_Group4  &
   area_of_cross_section = ((0.4167**2 - 0.3333**2) * PI / 4)  &
   youngs_modulus = (.test_analysis_1.YoungsModulus)  &
   shear_modulus = (.test_analysis_1.ShearModulus)  &
   ixx = ((0.4167**4 - 0.3333**4) * PI / 32)  &
   iyy = ((0.4167**4 - 0.3333**4) * PI / 64)  &
   izz = ((0.4167**4 - 0.3333**4) * PI / 64)
!
force modify direct general_force  &
   general_force_name = .test_analysis_1.Upper_DP_Group4_contactA  &
   i_marker_name = ("Upper_DP_Group" // 4 // "_A.end_A")  &
   ref_marker_name = ("Upper_DP_Group" // 4 // "_sliderA.cm")  &
   user_function =   &
      (.test_analysis_1.Impact_Exponent),  &
      (.test_analysis_1.Impact_Penetration),  &
      0.5833,  &
      75.0,  &
      (31.0 * 0.5 * 2 / 3),  &
      1.2  &
   routine = "adrill_solver::StringForces"
!
force modify direct general_force  &
   general_force_name = .test_analysis_1.Upper_DP_Group4_contactB  &
   i_marker_name = ("Upper_DP_Group" // 4 // "_B.cm")  &
   ref_marker_name = ("Upper_DP_Group" // 4 // "_sliderB.cm")  &
   user_function =   &
      (.test_analysis_1.Impact_Exponent),  &
      (.test_analysis_1.Impact_Penetration),  &
      0.5,  &
      75.0,  &
      (31.0 * 0.5 / 3),  &
      1.2  &
   routine = "adrill_solver::StringForces"
!
force modify direct force_vector  &
   force_vector_name = .test_analysis_1.Upper_DP_Group4_fluidmassA  &
   i_marker_name = ("Upper_DP_Group" // 4 // "_A.cm")  &
   ref_marker_name = ("Upper_DP_Group" // 4 // "_A.cm")
!
force modify direct force_vector  &
   force_vector_name = .test_analysis_1.Upper_DP_Group4_fluidmassC  &
   i_marker_name = ("Upper_DP_Group" // 4 // "_C.cm")  &
   ref_marker_name = ("Upper_DP_Group" // 4 // "_C.cm")
!
force modify direct force_vector  &
   force_vector_name = .test_analysis_1.Upper_DP_Group4_fluidmassB  &
   i_marker_name = ("Upper_DP_Group" // 4 // "_B.cm")  &
   ref_marker_name = ("Upper_DP_Group" // 4 // "_B.cm")
!
geometry modify shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group5_A.cyl1  &
   radius = (0.5833 / 2)
!
geometry modify shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group5_A.cyl1a  &
   radius = (0.5833 / 2 * 1.01)
!
geometry modify shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group5_A.cyl2  &
   length = (-31.0 / 4 + 1.0)  &
   radius = (0.4167 / 2)
!
geometry modify shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group5_A.cyl2a  &
   length = (-31.0 / 4 + 1.0)  &
   radius = (0.4167 / 2 * 1.01)
!
marker modify  &
   marker_name = .test_analysis_1.Upper_DP_Group5_B.cm  &
   location =   &
      0.0,  &
      0.0,  &
      (-31.0 / 4)  &
   relative_to = .test_analysis_1.Upper_DP_Group5_B
!
defaults coordinate_system  &
   default_coordinate_system = .test_analysis_1.ground
!
marker modify  &
   marker_name = .test_analysis_1.Upper_DP_Group5_B.end_beamB  &
   location =   &
      0.0,  &
      0.0,  &
      (-31.0 / 4)  &
   relative_to = .test_analysis_1.Upper_DP_Group5_B
!
defaults coordinate_system  &
   default_coordinate_system = .test_analysis_1.ground
!
geometry modify shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group5_B.cyl1  &
   center_marker = ("Upper_DP_Group" // 5 // "_B.end_B")  &
   length = (-31.0 / 2)  &
   radius = (0.4167 / 2)
!
geometry modify shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group5_B.cyl1a  &
   center_marker = ("Upper_DP_Group" // 5 // "_B.end_B")  &
   length = (-31.0 / 2)  &
   radius = (0.4167 / 2 * 1.01)
!
geometry modify curve circle  &
   circle_name = .test_analysis_1.Upper_DP_Group5_B.rub1  &
   center_marker = ("Upper_DP_Group" // 5 // "_B.cm")  &
   radius = (0.5 / 2)
!
part modify rigid_body mass_properties  &
   part_name = .test_analysis_1.Upper_DP_Group5_B  &
   center_of_mass_marker = ("Upper_DP_Group" // 5 // "_B.cm")
!
geometry modify shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group5_C.cyl1a  &
   radius = (0.5833 / 2 * 1.01)
!
geometry modify shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group5_C.cyl1  &
   radius = (0.5833 / 2)
!
geometry modify shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group5_C.cyl2  &
   length = (-(31.0 / 4 - 1.0))  &
   radius = (0.4167 / 2)
!
geometry modify shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group5_C.cyl2a  &
   length = (-(31.0 / 4 - 1.0))  &
   radius = (0.4167 / 2 * 1.01)
!
geometry modify shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group5_sliderA.Upper_DP_Group5_sliderAgraphic  &
   center_marker = ("Upper_DP_Group" // 5 // "_sliderA.A2")
!
geometry modify curve circle  &
   circle_name = .test_analysis_1.Upper_DP_Group5_sliderA.ghole  &
   center_marker = ("Upper_DP_Group" // 5 // "_sliderA.cm")
!
geometry modify shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group5_sliderB.Upper_DP_Group5_sliderBgraphic  &
   center_marker = ("Upper_DP_Group" // 5 // "_sliderB.B2")
!
geometry modify curve circle  &
   circle_name = .test_analysis_1.Upper_DP_Group5_sliderB.ghole  &
   center_marker = ("Upper_DP_Group" // 5 // "_sliderB.cm")
!
constraint modify higher_pair_contact point_curve  &
   point_curve_name = .test_analysis_1.PTCV_Upper_DP_Group5_A1  &
   i_marker_name = ("Upper_DP_Group" // 5 // "_sliderA.A1")
!
constraint modify higher_pair_contact point_curve  &
   point_curve_name = .test_analysis_1.PTCV_Upper_DP_Group5_A2  &
   i_marker_name = ("Upper_DP_Group" // 5 // "_sliderA.A2")
!
constraint modify higher_pair_contact point_curve  &
   point_curve_name = .test_analysis_1.PTCV_Upper_DP_Group5_B1  &
   i_marker_name = ("Upper_DP_Group" // 5 // "_sliderB.B1")
!
constraint modify higher_pair_contact point_curve  &
   point_curve_name = .test_analysis_1.PTCV_Upper_DP_Group5_B2  &
   i_marker_name = ("Upper_DP_Group" // 5 // "_sliderB.B2")
!
force modify direct torque_vector  &
   torque_vector_name = .test_analysis_1.Upper_DP_Group5_sliderA_damper  &
   i_marker_name = ("Upper_DP_Group" // 5 // "_sliderA.cm")  &
   ref_marker_name = ("Upper_DP_Group" // 5 // "_sliderA.cm")
!
force modify direct torque_vector  &
   torque_vector_name = .test_analysis_1.Upper_DP_Group5_sliderB_damper  &
   i_marker_name = ("Upper_DP_Group" // 5 // "_sliderB.cm")  &
   ref_marker_name = ("Upper_DP_Group" // 5 // "_sliderB.cm")
!
force modify direct force_vector  &
   force_vector_name = .test_analysis_1.Upper_DP_Group5_sliderA_locator  &
   i_marker_name = ("Upper_DP_Group" // 5 // "_A.end_A")  &
   ref_marker_name = ("Upper_DP_Group" // 5 // "_A.end_A")
!
force modify direct force_vector  &
   force_vector_name = .test_analysis_1.Upper_DP_Group5_sliderB_locator  &
   i_marker_name = ("Upper_DP_Group" // 5 // "_B.cm")  &
   ref_marker_name = ("Upper_DP_Group" // 5 // "_B.cm")
!
force modify element_like beam  &
   beam_name = .test_analysis_1.BeamAB_Upper_DP_Group5  &
   area_of_cross_section = ((0.4167**2 - 0.3333**2) * PI / 4)  &
   youngs_modulus = (.test_analysis_1.YoungsModulus)  &
   shear_modulus = (.test_analysis_1.ShearModulus)  &
   ixx = ((0.4167**4 - 0.3333**4) * PI / 32)  &
   iyy = ((0.4167**4 - 0.3333**4) * PI / 64)  &
   izz = ((0.4167**4 - 0.3333**4) * PI / 64)
!
force modify element_like beam  &
   beam_name = .test_analysis_1.BeamBC_Upper_DP_Group5  &
   area_of_cross_section = ((0.4167**2 - 0.3333**2) * PI / 4)  &
   youngs_modulus = (.test_analysis_1.YoungsModulus)  &
   shear_modulus = (.test_analysis_1.ShearModulus)  &
   ixx = ((0.4167**4 - 0.3333**4) * PI / 32)  &
   iyy = ((0.4167**4 - 0.3333**4) * PI / 64)  &
   izz = ((0.4167**4 - 0.3333**4) * PI / 64)
!
force modify direct general_force  &
   general_force_name = .test_analysis_1.Upper_DP_Group5_contactA  &
   i_marker_name = ("Upper_DP_Group" // 5 // "_A.end_A")  &
   ref_marker_name = ("Upper_DP_Group" // 5 // "_sliderA.cm")  &
   user_function =   &
      (.test_analysis_1.Impact_Exponent),  &
      (.test_analysis_1.Impact_Penetration),  &
      0.5833,  &
      75.0,  &
      (31.0 * 0.5 * 2 / 3),  &
      1.2  &
   routine = "adrill_solver::StringForces"
!
force modify direct general_force  &
   general_force_name = .test_analysis_1.Upper_DP_Group5_contactB  &
   i_marker_name = ("Upper_DP_Group" // 5 // "_B.cm")  &
   ref_marker_name = ("Upper_DP_Group" // 5 // "_sliderB.cm")  &
   user_function =   &
      (.test_analysis_1.Impact_Exponent),  &
      (.test_analysis_1.Impact_Penetration),  &
      0.5,  &
      75.0,  &
      (31.0 * 0.5 / 3),  &
      1.2  &
   routine = "adrill_solver::StringForces"
!
force modify direct force_vector  &
   force_vector_name = .test_analysis_1.Upper_DP_Group5_fluidmassA  &
   i_marker_name = ("Upper_DP_Group" // 5 // "_A.cm")  &
   ref_marker_name = ("Upper_DP_Group" // 5 // "_A.cm")
!
force modify direct force_vector  &
   force_vector_name = .test_analysis_1.Upper_DP_Group5_fluidmassC  &
   i_marker_name = ("Upper_DP_Group" // 5 // "_C.cm")  &
   ref_marker_name = ("Upper_DP_Group" // 5 // "_C.cm")
!
force modify direct force_vector  &
   force_vector_name = .test_analysis_1.Upper_DP_Group5_fluidmassB  &
   i_marker_name = ("Upper_DP_Group" // 5 // "_B.cm")  &
   ref_marker_name = ("Upper_DP_Group" // 5 // "_B.cm")
!
geometry modify shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group6_A.cyl1  &
   radius = (0.5833 / 2)
!
geometry modify shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group6_A.cyl1a  &
   radius = (0.5833 / 2 * 1.01)
!
geometry modify shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group6_A.cyl2  &
   length = (-31.0 / 4 + 1.0)  &
   radius = (0.4167 / 2)
!
geometry modify shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group6_A.cyl2a  &
   length = (-31.0 / 4 + 1.0)  &
   radius = (0.4167 / 2 * 1.01)
!
marker modify  &
   marker_name = .test_analysis_1.Upper_DP_Group6_B.cm  &
   location =   &
      0.0,  &
      0.0,  &
      (-31.0 / 4)  &
   relative_to = .test_analysis_1.Upper_DP_Group6_B
!
defaults coordinate_system  &
   default_coordinate_system = .test_analysis_1.ground
!
marker modify  &
   marker_name = .test_analysis_1.Upper_DP_Group6_B.end_beamB  &
   location =   &
      0.0,  &
      0.0,  &
      (-31.0 / 4)  &
   relative_to = .test_analysis_1.Upper_DP_Group6_B
!
defaults coordinate_system  &
   default_coordinate_system = .test_analysis_1.ground
!
geometry modify shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group6_B.cyl1  &
   center_marker = ("Upper_DP_Group" // 6 // "_B.end_B")  &
   length = (-31.0 / 2)  &
   radius = (0.4167 / 2)
!
geometry modify shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group6_B.cyl1a  &
   center_marker = ("Upper_DP_Group" // 6 // "_B.end_B")  &
   length = (-31.0 / 2)  &
   radius = (0.4167 / 2 * 1.01)
!
geometry modify curve circle  &
   circle_name = .test_analysis_1.Upper_DP_Group6_B.rub1  &
   center_marker = ("Upper_DP_Group" // 6 // "_B.cm")  &
   radius = (0.5 / 2)
!
part modify rigid_body mass_properties  &
   part_name = .test_analysis_1.Upper_DP_Group6_B  &
   center_of_mass_marker = ("Upper_DP_Group" // 6 // "_B.cm")
!
geometry modify shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group6_C.cyl1a  &
   radius = (0.5833 / 2 * 1.01)
!
geometry modify shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group6_C.cyl1  &
   radius = (0.5833 / 2)
!
geometry modify shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group6_C.cyl2  &
   length = (-(31.0 / 4 - 1.0))  &
   radius = (0.4167 / 2)
!
geometry modify shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group6_C.cyl2a  &
   length = (-(31.0 / 4 - 1.0))  &
   radius = (0.4167 / 2 * 1.01)
!
geometry modify shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group6_sliderA.Upper_DP_Group6_sliderAgraphic  &
   center_marker = ("Upper_DP_Group" // 6 // "_sliderA.A2")
!
geometry modify curve circle  &
   circle_name = .test_analysis_1.Upper_DP_Group6_sliderA.ghole  &
   center_marker = ("Upper_DP_Group" // 6 // "_sliderA.cm")
!
geometry modify shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group6_sliderB.Upper_DP_Group6_sliderBgraphic  &
   center_marker = ("Upper_DP_Group" // 6 // "_sliderB.B2")
!
geometry modify curve circle  &
   circle_name = .test_analysis_1.Upper_DP_Group6_sliderB.ghole  &
   center_marker = ("Upper_DP_Group" // 6 // "_sliderB.cm")
!
constraint modify higher_pair_contact point_curve  &
   point_curve_name = .test_analysis_1.PTCV_Upper_DP_Group6_A1  &
   i_marker_name = ("Upper_DP_Group" // 6 // "_sliderA.A1")
!
constraint modify higher_pair_contact point_curve  &
   point_curve_name = .test_analysis_1.PTCV_Upper_DP_Group6_A2  &
   i_marker_name = ("Upper_DP_Group" // 6 // "_sliderA.A2")
!
constraint modify higher_pair_contact point_curve  &
   point_curve_name = .test_analysis_1.PTCV_Upper_DP_Group6_B1  &
   i_marker_name = ("Upper_DP_Group" // 6 // "_sliderB.B1")
!
constraint modify higher_pair_contact point_curve  &
   point_curve_name = .test_analysis_1.PTCV_Upper_DP_Group6_B2  &
   i_marker_name = ("Upper_DP_Group" // 6 // "_sliderB.B2")
!
force modify direct torque_vector  &
   torque_vector_name = .test_analysis_1.Upper_DP_Group6_sliderA_damper  &
   i_marker_name = ("Upper_DP_Group" // 6 // "_sliderA.cm")  &
   ref_marker_name = ("Upper_DP_Group" // 6 // "_sliderA.cm")
!
force modify direct torque_vector  &
   torque_vector_name = .test_analysis_1.Upper_DP_Group6_sliderB_damper  &
   i_marker_name = ("Upper_DP_Group" // 6 // "_sliderB.cm")  &
   ref_marker_name = ("Upper_DP_Group" // 6 // "_sliderB.cm")
!
force modify direct force_vector  &
   force_vector_name = .test_analysis_1.Upper_DP_Group6_sliderA_locator  &
   i_marker_name = ("Upper_DP_Group" // 6 // "_A.end_A")  &
   ref_marker_name = ("Upper_DP_Group" // 6 // "_A.end_A")
!
force modify direct force_vector  &
   force_vector_name = .test_analysis_1.Upper_DP_Group6_sliderB_locator  &
   i_marker_name = ("Upper_DP_Group" // 6 // "_B.cm")  &
   ref_marker_name = ("Upper_DP_Group" // 6 // "_B.cm")
!
force modify element_like beam  &
   beam_name = .test_analysis_1.BeamAB_Upper_DP_Group6  &
   area_of_cross_section = ((0.4167**2 - 0.3333**2) * PI / 4)  &
   youngs_modulus = (.test_analysis_1.YoungsModulus)  &
   shear_modulus = (.test_analysis_1.ShearModulus)  &
   ixx = ((0.4167**4 - 0.3333**4) * PI / 32)  &
   iyy = ((0.4167**4 - 0.3333**4) * PI / 64)  &
   izz = ((0.4167**4 - 0.3333**4) * PI / 64)
!
force modify element_like beam  &
   beam_name = .test_analysis_1.BeamBC_Upper_DP_Group6  &
   area_of_cross_section = ((0.4167**2 - 0.3333**2) * PI / 4)  &
   youngs_modulus = (.test_analysis_1.YoungsModulus)  &
   shear_modulus = (.test_analysis_1.ShearModulus)  &
   ixx = ((0.4167**4 - 0.3333**4) * PI / 32)  &
   iyy = ((0.4167**4 - 0.3333**4) * PI / 64)  &
   izz = ((0.4167**4 - 0.3333**4) * PI / 64)
!
force modify direct general_force  &
   general_force_name = .test_analysis_1.Upper_DP_Group6_contactA  &
   i_marker_name = ("Upper_DP_Group" // 6 // "_A.end_A")  &
   ref_marker_name = ("Upper_DP_Group" // 6 // "_sliderA.cm")  &
   user_function =   &
      (.test_analysis_1.Impact_Exponent),  &
      (.test_analysis_1.Impact_Penetration),  &
      0.5833,  &
      75.0,  &
      (31.0 * 0.5 * 2 / 3),  &
      1.2  &
   routine = "adrill_solver::StringForces"
!
force modify direct general_force  &
   general_force_name = .test_analysis_1.Upper_DP_Group6_contactB  &
   i_marker_name = ("Upper_DP_Group" // 6 // "_B.cm")  &
   ref_marker_name = ("Upper_DP_Group" // 6 // "_sliderB.cm")  &
   user_function =   &
      (.test_analysis_1.Impact_Exponent),  &
      (.test_analysis_1.Impact_Penetration),  &
      0.5,  &
      75.0,  &
      (31.0 * 0.5 / 3),  &
      1.2  &
   routine = "adrill_solver::StringForces"
!
force modify direct force_vector  &
   force_vector_name = .test_analysis_1.Upper_DP_Group6_fluidmassA  &
   i_marker_name = ("Upper_DP_Group" // 6 // "_A.cm")  &
   ref_marker_name = ("Upper_DP_Group" // 6 // "_A.cm")
!
force modify direct force_vector  &
   force_vector_name = .test_analysis_1.Upper_DP_Group6_fluidmassC  &
   i_marker_name = ("Upper_DP_Group" // 6 // "_C.cm")  &
   ref_marker_name = ("Upper_DP_Group" // 6 // "_C.cm")
!
force modify direct force_vector  &
   force_vector_name = .test_analysis_1.Upper_DP_Group6_fluidmassB  &
   i_marker_name = ("Upper_DP_Group" // 6 // "_B.cm")  &
   ref_marker_name = ("Upper_DP_Group" // 6 // "_B.cm")
!
geometry modify shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group7_A.cyl1  &
   radius = (0.5833 / 2)
!
geometry modify shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group7_A.cyl1a  &
   radius = (0.5833 / 2 * 1.01)
!
geometry modify shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group7_A.cyl2  &
   length = (-31.0 / 4 + 1.0)  &
   radius = (0.4167 / 2)
!
geometry modify shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group7_A.cyl2a  &
   length = (-31.0 / 4 + 1.0)  &
   radius = (0.4167 / 2 * 1.01)
!
marker modify  &
   marker_name = .test_analysis_1.Upper_DP_Group7_B.cm  &
   location =   &
      0.0,  &
      0.0,  &
      (-31.0 / 4)  &
   relative_to = .test_analysis_1.Upper_DP_Group7_B
!
defaults coordinate_system  &
   default_coordinate_system = .test_analysis_1.ground
!
marker modify  &
   marker_name = .test_analysis_1.Upper_DP_Group7_B.end_beamB  &
   location =   &
      0.0,  &
      0.0,  &
      (-31.0 / 4)  &
   relative_to = .test_analysis_1.Upper_DP_Group7_B
!
defaults coordinate_system  &
   default_coordinate_system = .test_analysis_1.ground
!
geometry modify shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group7_B.cyl1  &
   center_marker = ("Upper_DP_Group" // 7 // "_B.end_B")  &
   length = (-31.0 / 2)  &
   radius = (0.4167 / 2)
!
geometry modify shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group7_B.cyl1a  &
   center_marker = ("Upper_DP_Group" // 7 // "_B.end_B")  &
   length = (-31.0 / 2)  &
   radius = (0.4167 / 2 * 1.01)
!
geometry modify curve circle  &
   circle_name = .test_analysis_1.Upper_DP_Group7_B.rub1  &
   center_marker = ("Upper_DP_Group" // 7 // "_B.cm")  &
   radius = (0.5 / 2)
!
part modify rigid_body mass_properties  &
   part_name = .test_analysis_1.Upper_DP_Group7_B  &
   center_of_mass_marker = ("Upper_DP_Group" // 7 // "_B.cm")
!
geometry modify shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group7_C.cyl1a  &
   radius = (0.5833 / 2 * 1.01)
!
geometry modify shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group7_C.cyl1  &
   radius = (0.5833 / 2)
!
geometry modify shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group7_C.cyl2  &
   length = (-(31.0 / 4 - 1.0))  &
   radius = (0.4167 / 2)
!
geometry modify shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group7_C.cyl2a  &
   length = (-(31.0 / 4 - 1.0))  &
   radius = (0.4167 / 2 * 1.01)
!
geometry modify shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group7_sliderA.Upper_DP_Group7_sliderAgraphic  &
   center_marker = ("Upper_DP_Group" // 7 // "_sliderA.A2")
!
geometry modify curve circle  &
   circle_name = .test_analysis_1.Upper_DP_Group7_sliderA.ghole  &
   center_marker = ("Upper_DP_Group" // 7 // "_sliderA.cm")
!
geometry modify shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group7_sliderB.Upper_DP_Group7_sliderBgraphic  &
   center_marker = ("Upper_DP_Group" // 7 // "_sliderB.B2")
!
geometry modify curve circle  &
   circle_name = .test_analysis_1.Upper_DP_Group7_sliderB.ghole  &
   center_marker = ("Upper_DP_Group" // 7 // "_sliderB.cm")
!
constraint modify higher_pair_contact point_curve  &
   point_curve_name = .test_analysis_1.PTCV_Upper_DP_Group7_A1  &
   i_marker_name = ("Upper_DP_Group" // 7 // "_sliderA.A1")
!
constraint modify higher_pair_contact point_curve  &
   point_curve_name = .test_analysis_1.PTCV_Upper_DP_Group7_A2  &
   i_marker_name = ("Upper_DP_Group" // 7 // "_sliderA.A2")
!
constraint modify higher_pair_contact point_curve  &
   point_curve_name = .test_analysis_1.PTCV_Upper_DP_Group7_B1  &
   i_marker_name = ("Upper_DP_Group" // 7 // "_sliderB.B1")
!
constraint modify higher_pair_contact point_curve  &
   point_curve_name = .test_analysis_1.PTCV_Upper_DP_Group7_B2  &
   i_marker_name = ("Upper_DP_Group" // 7 // "_sliderB.B2")
!
force modify direct torque_vector  &
   torque_vector_name = .test_analysis_1.Upper_DP_Group7_sliderA_damper  &
   i_marker_name = ("Upper_DP_Group" // 7 // "_sliderA.cm")  &
   ref_marker_name = ("Upper_DP_Group" // 7 // "_sliderA.cm")
!
force modify direct torque_vector  &
   torque_vector_name = .test_analysis_1.Upper_DP_Group7_sliderB_damper  &
   i_marker_name = ("Upper_DP_Group" // 7 // "_sliderB.cm")  &
   ref_marker_name = ("Upper_DP_Group" // 7 // "_sliderB.cm")
!
force modify direct force_vector  &
   force_vector_name = .test_analysis_1.Upper_DP_Group7_sliderA_locator  &
   i_marker_name = ("Upper_DP_Group" // 7 // "_A.end_A")  &
   ref_marker_name = ("Upper_DP_Group" // 7 // "_A.end_A")
!
force modify direct force_vector  &
   force_vector_name = .test_analysis_1.Upper_DP_Group7_sliderB_locator  &
   i_marker_name = ("Upper_DP_Group" // 7 // "_B.cm")  &
   ref_marker_name = ("Upper_DP_Group" // 7 // "_B.cm")
!
force modify element_like beam  &
   beam_name = .test_analysis_1.BeamAB_Upper_DP_Group7  &
   area_of_cross_section = ((0.4167**2 - 0.3333**2) * PI / 4)  &
   youngs_modulus = (.test_analysis_1.YoungsModulus)  &
   shear_modulus = (.test_analysis_1.ShearModulus)  &
   ixx = ((0.4167**4 - 0.3333**4) * PI / 32)  &
   iyy = ((0.4167**4 - 0.3333**4) * PI / 64)  &
   izz = ((0.4167**4 - 0.3333**4) * PI / 64)
!
force modify element_like beam  &
   beam_name = .test_analysis_1.BeamBC_Upper_DP_Group7  &
   area_of_cross_section = ((0.4167**2 - 0.3333**2) * PI / 4)  &
   youngs_modulus = (.test_analysis_1.YoungsModulus)  &
   shear_modulus = (.test_analysis_1.ShearModulus)  &
   ixx = ((0.4167**4 - 0.3333**4) * PI / 32)  &
   iyy = ((0.4167**4 - 0.3333**4) * PI / 64)  &
   izz = ((0.4167**4 - 0.3333**4) * PI / 64)
!
force modify direct general_force  &
   general_force_name = .test_analysis_1.Upper_DP_Group7_contactA  &
   i_marker_name = ("Upper_DP_Group" // 7 // "_A.end_A")  &
   ref_marker_name = ("Upper_DP_Group" // 7 // "_sliderA.cm")  &
   user_function =   &
      (.test_analysis_1.Impact_Exponent),  &
      (.test_analysis_1.Impact_Penetration),  &
      0.5833,  &
      75.0,  &
      (31.0 * 0.5 * 2 / 3),  &
      1.2  &
   routine = "adrill_solver::StringForces"
!
force modify direct general_force  &
   general_force_name = .test_analysis_1.Upper_DP_Group7_contactB  &
   i_marker_name = ("Upper_DP_Group" // 7 // "_B.cm")  &
   ref_marker_name = ("Upper_DP_Group" // 7 // "_sliderB.cm")  &
   user_function =   &
      (.test_analysis_1.Impact_Exponent),  &
      (.test_analysis_1.Impact_Penetration),  &
      0.5,  &
      75.0,  &
      (31.0 * 0.5 / 3),  &
      1.2  &
   routine = "adrill_solver::StringForces"
!
force modify direct force_vector  &
   force_vector_name = .test_analysis_1.Upper_DP_Group7_fluidmassA  &
   i_marker_name = ("Upper_DP_Group" // 7 // "_A.cm")  &
   ref_marker_name = ("Upper_DP_Group" // 7 // "_A.cm")
!
force modify direct force_vector  &
   force_vector_name = .test_analysis_1.Upper_DP_Group7_fluidmassC  &
   i_marker_name = ("Upper_DP_Group" // 7 // "_C.cm")  &
   ref_marker_name = ("Upper_DP_Group" // 7 // "_C.cm")
!
force modify direct force_vector  &
   force_vector_name = .test_analysis_1.Upper_DP_Group7_fluidmassB  &
   i_marker_name = ("Upper_DP_Group" // 7 // "_B.cm")  &
   ref_marker_name = ("Upper_DP_Group" // 7 // "_B.cm")
!
geometry modify shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group8_A.cyl1  &
   radius = (0.5833 / 2)
!
geometry modify shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group8_A.cyl1a  &
   radius = (0.5833 / 2 * 1.01)
!
geometry modify shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group8_A.cyl2  &
   length = (-31.0 / 4 + 1.0)  &
   radius = (0.4167 / 2)
!
geometry modify shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group8_A.cyl2a  &
   length = (-31.0 / 4 + 1.0)  &
   radius = (0.4167 / 2 * 1.01)
!
marker modify  &
   marker_name = .test_analysis_1.Upper_DP_Group8_B.cm  &
   location =   &
      0.0,  &
      0.0,  &
      (-31.0 / 4)  &
   relative_to = .test_analysis_1.Upper_DP_Group8_B
!
defaults coordinate_system  &
   default_coordinate_system = .test_analysis_1.ground
!
marker modify  &
   marker_name = .test_analysis_1.Upper_DP_Group8_B.end_beamB  &
   location =   &
      0.0,  &
      0.0,  &
      (-31.0 / 4)  &
   relative_to = .test_analysis_1.Upper_DP_Group8_B
!
defaults coordinate_system  &
   default_coordinate_system = .test_analysis_1.ground
!
geometry modify shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group8_B.cyl1  &
   center_marker = ("Upper_DP_Group" // 8 // "_B.end_B")  &
   length = (-31.0 / 2)  &
   radius = (0.4167 / 2)
!
geometry modify shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group8_B.cyl1a  &
   center_marker = ("Upper_DP_Group" // 8 // "_B.end_B")  &
   length = (-31.0 / 2)  &
   radius = (0.4167 / 2 * 1.01)
!
geometry modify curve circle  &
   circle_name = .test_analysis_1.Upper_DP_Group8_B.rub1  &
   center_marker = ("Upper_DP_Group" // 8 // "_B.cm")  &
   radius = (0.5 / 2)
!
part modify rigid_body mass_properties  &
   part_name = .test_analysis_1.Upper_DP_Group8_B  &
   center_of_mass_marker = ("Upper_DP_Group" // 8 // "_B.cm")
!
geometry modify shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group8_C.cyl1a  &
   radius = (0.5833 / 2 * 1.01)
!
geometry modify shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group8_C.cyl1  &
   radius = (0.5833 / 2)
!
geometry modify shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group8_C.cyl2  &
   length = (-(31.0 / 4 - 1.0))  &
   radius = (0.4167 / 2)
!
geometry modify shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group8_C.cyl2a  &
   length = (-(31.0 / 4 - 1.0))  &
   radius = (0.4167 / 2 * 1.01)
!
geometry modify shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group8_sliderA.Upper_DP_Group8_sliderAgraphic  &
   center_marker = ("Upper_DP_Group" // 8 // "_sliderA.A2")
!
geometry modify curve circle  &
   circle_name = .test_analysis_1.Upper_DP_Group8_sliderA.ghole  &
   center_marker = ("Upper_DP_Group" // 8 // "_sliderA.cm")
!
geometry modify shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group8_sliderB.Upper_DP_Group8_sliderBgraphic  &
   center_marker = ("Upper_DP_Group" // 8 // "_sliderB.B2")
!
geometry modify curve circle  &
   circle_name = .test_analysis_1.Upper_DP_Group8_sliderB.ghole  &
   center_marker = ("Upper_DP_Group" // 8 // "_sliderB.cm")
!
constraint modify higher_pair_contact point_curve  &
   point_curve_name = .test_analysis_1.PTCV_Upper_DP_Group8_A1  &
   i_marker_name = ("Upper_DP_Group" // 8 // "_sliderA.A1")
!
constraint modify higher_pair_contact point_curve  &
   point_curve_name = .test_analysis_1.PTCV_Upper_DP_Group8_A2  &
   i_marker_name = ("Upper_DP_Group" // 8 // "_sliderA.A2")
!
constraint modify higher_pair_contact point_curve  &
   point_curve_name = .test_analysis_1.PTCV_Upper_DP_Group8_B1  &
   i_marker_name = ("Upper_DP_Group" // 8 // "_sliderB.B1")
!
constraint modify higher_pair_contact point_curve  &
   point_curve_name = .test_analysis_1.PTCV_Upper_DP_Group8_B2  &
   i_marker_name = ("Upper_DP_Group" // 8 // "_sliderB.B2")
!
force modify direct torque_vector  &
   torque_vector_name = .test_analysis_1.Upper_DP_Group8_sliderA_damper  &
   i_marker_name = ("Upper_DP_Group" // 8 // "_sliderA.cm")  &
   ref_marker_name = ("Upper_DP_Group" // 8 // "_sliderA.cm")
!
force modify direct torque_vector  &
   torque_vector_name = .test_analysis_1.Upper_DP_Group8_sliderB_damper  &
   i_marker_name = ("Upper_DP_Group" // 8 // "_sliderB.cm")  &
   ref_marker_name = ("Upper_DP_Group" // 8 // "_sliderB.cm")
!
force modify direct force_vector  &
   force_vector_name = .test_analysis_1.Upper_DP_Group8_sliderA_locator  &
   i_marker_name = ("Upper_DP_Group" // 8 // "_A.end_A")  &
   ref_marker_name = ("Upper_DP_Group" // 8 // "_A.end_A")
!
force modify direct force_vector  &
   force_vector_name = .test_analysis_1.Upper_DP_Group8_sliderB_locator  &
   i_marker_name = ("Upper_DP_Group" // 8 // "_B.cm")  &
   ref_marker_name = ("Upper_DP_Group" // 8 // "_B.cm")
!
force modify element_like beam  &
   beam_name = .test_analysis_1.BeamAB_Upper_DP_Group8  &
   area_of_cross_section = ((0.4167**2 - 0.3333**2) * PI / 4)  &
   youngs_modulus = (.test_analysis_1.YoungsModulus)  &
   shear_modulus = (.test_analysis_1.ShearModulus)  &
   ixx = ((0.4167**4 - 0.3333**4) * PI / 32)  &
   iyy = ((0.4167**4 - 0.3333**4) * PI / 64)  &
   izz = ((0.4167**4 - 0.3333**4) * PI / 64)
!
force modify element_like beam  &
   beam_name = .test_analysis_1.BeamBC_Upper_DP_Group8  &
   area_of_cross_section = ((0.4167**2 - 0.3333**2) * PI / 4)  &
   youngs_modulus = (.test_analysis_1.YoungsModulus)  &
   shear_modulus = (.test_analysis_1.ShearModulus)  &
   ixx = ((0.4167**4 - 0.3333**4) * PI / 32)  &
   iyy = ((0.4167**4 - 0.3333**4) * PI / 64)  &
   izz = ((0.4167**4 - 0.3333**4) * PI / 64)
!
force modify direct general_force  &
   general_force_name = .test_analysis_1.Upper_DP_Group8_contactA  &
   i_marker_name = ("Upper_DP_Group" // 8 // "_A.end_A")  &
   ref_marker_name = ("Upper_DP_Group" // 8 // "_sliderA.cm")  &
   user_function =   &
      (.test_analysis_1.Impact_Exponent),  &
      (.test_analysis_1.Impact_Penetration),  &
      0.5833,  &
      75.0,  &
      (31.0 * 0.5 * 2 / 3),  &
      1.2  &
   routine = "adrill_solver::StringForces"
!
force modify direct general_force  &
   general_force_name = .test_analysis_1.Upper_DP_Group8_contactB  &
   i_marker_name = ("Upper_DP_Group" // 8 // "_B.cm")  &
   ref_marker_name = ("Upper_DP_Group" // 8 // "_sliderB.cm")  &
   user_function =   &
      (.test_analysis_1.Impact_Exponent),  &
      (.test_analysis_1.Impact_Penetration),  &
      0.5,  &
      75.0,  &
      (31.0 * 0.5 / 3),  &
      1.2  &
   routine = "adrill_solver::StringForces"
!
force modify direct force_vector  &
   force_vector_name = .test_analysis_1.Upper_DP_Group8_fluidmassA  &
   i_marker_name = ("Upper_DP_Group" // 8 // "_A.cm")  &
   ref_marker_name = ("Upper_DP_Group" // 8 // "_A.cm")
!
force modify direct force_vector  &
   force_vector_name = .test_analysis_1.Upper_DP_Group8_fluidmassC  &
   i_marker_name = ("Upper_DP_Group" // 8 // "_C.cm")  &
   ref_marker_name = ("Upper_DP_Group" // 8 // "_C.cm")
!
force modify direct force_vector  &
   force_vector_name = .test_analysis_1.Upper_DP_Group8_fluidmassB  &
   i_marker_name = ("Upper_DP_Group" // 8 // "_B.cm")  &
   ref_marker_name = ("Upper_DP_Group" // 8 // "_B.cm")
!
geometry modify shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group9_A.cyl1  &
   radius = (0.5833 / 2)
!
geometry modify shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group9_A.cyl1a  &
   radius = (0.5833 / 2 * 1.01)
!
geometry modify shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group9_A.cyl2  &
   length = (-31.0 / 4 + 1.0)  &
   radius = (0.4167 / 2)
!
geometry modify shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group9_A.cyl2a  &
   length = (-31.0 / 4 + 1.0)  &
   radius = (0.4167 / 2 * 1.01)
!
marker modify  &
   marker_name = .test_analysis_1.Upper_DP_Group9_B.cm  &
   location =   &
      0.0,  &
      0.0,  &
      (-31.0 / 4)  &
   relative_to = .test_analysis_1.Upper_DP_Group9_B
!
defaults coordinate_system  &
   default_coordinate_system = .test_analysis_1.ground
!
marker modify  &
   marker_name = .test_analysis_1.Upper_DP_Group9_B.end_beamB  &
   location =   &
      0.0,  &
      0.0,  &
      (-31.0 / 4)  &
   relative_to = .test_analysis_1.Upper_DP_Group9_B
!
defaults coordinate_system  &
   default_coordinate_system = .test_analysis_1.ground
!
geometry modify shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group9_B.cyl1  &
   center_marker = ("Upper_DP_Group" // 9 // "_B.end_B")  &
   length = (-31.0 / 2)  &
   radius = (0.4167 / 2)
!
geometry modify shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group9_B.cyl1a  &
   center_marker = ("Upper_DP_Group" // 9 // "_B.end_B")  &
   length = (-31.0 / 2)  &
   radius = (0.4167 / 2 * 1.01)
!
geometry modify curve circle  &
   circle_name = .test_analysis_1.Upper_DP_Group9_B.rub1  &
   center_marker = ("Upper_DP_Group" // 9 // "_B.cm")  &
   radius = (0.5 / 2)
!
part modify rigid_body mass_properties  &
   part_name = .test_analysis_1.Upper_DP_Group9_B  &
   center_of_mass_marker = ("Upper_DP_Group" // 9 // "_B.cm")
!
geometry modify shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group9_C.cyl1a  &
   radius = (0.5833 / 2 * 1.01)
!
geometry modify shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group9_C.cyl1  &
   radius = (0.5833 / 2)
!
geometry modify shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group9_C.cyl2  &
   length = (-(31.0 / 4 - 1.0))  &
   radius = (0.4167 / 2)
!
geometry modify shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group9_C.cyl2a  &
   length = (-(31.0 / 4 - 1.0))  &
   radius = (0.4167 / 2 * 1.01)
!
geometry modify shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group9_sliderA.Upper_DP_Group9_sliderAgraphic  &
   center_marker = ("Upper_DP_Group" // 9 // "_sliderA.A2")
!
geometry modify curve circle  &
   circle_name = .test_analysis_1.Upper_DP_Group9_sliderA.ghole  &
   center_marker = ("Upper_DP_Group" // 9 // "_sliderA.cm")
!
geometry modify shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group9_sliderB.Upper_DP_Group9_sliderBgraphic  &
   center_marker = ("Upper_DP_Group" // 9 // "_sliderB.B2")
!
geometry modify curve circle  &
   circle_name = .test_analysis_1.Upper_DP_Group9_sliderB.ghole  &
   center_marker = ("Upper_DP_Group" // 9 // "_sliderB.cm")
!
constraint modify higher_pair_contact point_curve  &
   point_curve_name = .test_analysis_1.PTCV_Upper_DP_Group9_A1  &
   i_marker_name = ("Upper_DP_Group" // 9 // "_sliderA.A1")
!
constraint modify higher_pair_contact point_curve  &
   point_curve_name = .test_analysis_1.PTCV_Upper_DP_Group9_A2  &
   i_marker_name = ("Upper_DP_Group" // 9 // "_sliderA.A2")
!
constraint modify higher_pair_contact point_curve  &
   point_curve_name = .test_analysis_1.PTCV_Upper_DP_Group9_B1  &
   i_marker_name = ("Upper_DP_Group" // 9 // "_sliderB.B1")
!
constraint modify higher_pair_contact point_curve  &
   point_curve_name = .test_analysis_1.PTCV_Upper_DP_Group9_B2  &
   i_marker_name = ("Upper_DP_Group" // 9 // "_sliderB.B2")
!
force modify direct torque_vector  &
   torque_vector_name = .test_analysis_1.Upper_DP_Group9_sliderA_damper  &
   i_marker_name = ("Upper_DP_Group" // 9 // "_sliderA.cm")  &
   ref_marker_name = ("Upper_DP_Group" // 9 // "_sliderA.cm")
!
force modify direct torque_vector  &
   torque_vector_name = .test_analysis_1.Upper_DP_Group9_sliderB_damper  &
   i_marker_name = ("Upper_DP_Group" // 9 // "_sliderB.cm")  &
   ref_marker_name = ("Upper_DP_Group" // 9 // "_sliderB.cm")
!
force modify direct force_vector  &
   force_vector_name = .test_analysis_1.Upper_DP_Group9_sliderA_locator  &
   i_marker_name = ("Upper_DP_Group" // 9 // "_A.end_A")  &
   ref_marker_name = ("Upper_DP_Group" // 9 // "_A.end_A")
!
force modify direct force_vector  &
   force_vector_name = .test_analysis_1.Upper_DP_Group9_sliderB_locator  &
   i_marker_name = ("Upper_DP_Group" // 9 // "_B.cm")  &
   ref_marker_name = ("Upper_DP_Group" // 9 // "_B.cm")
!
force modify element_like beam  &
   beam_name = .test_analysis_1.BeamAB_Upper_DP_Group9  &
   area_of_cross_section = ((0.4167**2 - 0.3333**2) * PI / 4)  &
   youngs_modulus = (.test_analysis_1.YoungsModulus)  &
   shear_modulus = (.test_analysis_1.ShearModulus)  &
   ixx = ((0.4167**4 - 0.3333**4) * PI / 32)  &
   iyy = ((0.4167**4 - 0.3333**4) * PI / 64)  &
   izz = ((0.4167**4 - 0.3333**4) * PI / 64)
!
force modify element_like beam  &
   beam_name = .test_analysis_1.BeamBC_Upper_DP_Group9  &
   area_of_cross_section = ((0.4167**2 - 0.3333**2) * PI / 4)  &
   youngs_modulus = (.test_analysis_1.YoungsModulus)  &
   shear_modulus = (.test_analysis_1.ShearModulus)  &
   ixx = ((0.4167**4 - 0.3333**4) * PI / 32)  &
   iyy = ((0.4167**4 - 0.3333**4) * PI / 64)  &
   izz = ((0.4167**4 - 0.3333**4) * PI / 64)
!
force modify direct general_force  &
   general_force_name = .test_analysis_1.Upper_DP_Group9_contactA  &
   i_marker_name = ("Upper_DP_Group" // 9 // "_A.end_A")  &
   ref_marker_name = ("Upper_DP_Group" // 9 // "_sliderA.cm")  &
   user_function =   &
      (.test_analysis_1.Impact_Exponent),  &
      (.test_analysis_1.Impact_Penetration),  &
      0.5833,  &
      75.0,  &
      (31.0 * 0.5 * 2 / 3),  &
      1.2  &
   routine = "adrill_solver::StringForces"
!
force modify direct general_force  &
   general_force_name = .test_analysis_1.Upper_DP_Group9_contactB  &
   i_marker_name = ("Upper_DP_Group" // 9 // "_B.cm")  &
   ref_marker_name = ("Upper_DP_Group" // 9 // "_sliderB.cm")  &
   user_function =   &
      (.test_analysis_1.Impact_Exponent),  &
      (.test_analysis_1.Impact_Penetration),  &
      0.5,  &
      75.0,  &
      (31.0 * 0.5 / 3),  &
      1.2  &
   routine = "adrill_solver::StringForces"
!
force modify direct force_vector  &
   force_vector_name = .test_analysis_1.Upper_DP_Group9_fluidmassA  &
   i_marker_name = ("Upper_DP_Group" // 9 // "_A.cm")  &
   ref_marker_name = ("Upper_DP_Group" // 9 // "_A.cm")
!
force modify direct force_vector  &
   force_vector_name = .test_analysis_1.Upper_DP_Group9_fluidmassC  &
   i_marker_name = ("Upper_DP_Group" // 9 // "_C.cm")  &
   ref_marker_name = ("Upper_DP_Group" // 9 // "_C.cm")
!
force modify direct force_vector  &
   force_vector_name = .test_analysis_1.Upper_DP_Group9_fluidmassB  &
   i_marker_name = ("Upper_DP_Group" // 9 // "_B.cm")  &
   ref_marker_name = ("Upper_DP_Group" // 9 // "_B.cm")
!
geometry modify shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group10_A.cyl1  &
   radius = (0.5833 / 2)
!
geometry modify shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group10_A.cyl1a  &
   radius = (0.5833 / 2 * 1.01)
!
geometry modify shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group10_A.cyl2  &
   length = (-31.0 / 4 + 1.0)  &
   radius = (0.4167 / 2)
!
geometry modify shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group10_A.cyl2a  &
   length = (-31.0 / 4 + 1.0)  &
   radius = (0.4167 / 2 * 1.01)
!
marker modify  &
   marker_name = .test_analysis_1.Upper_DP_Group10_B.cm  &
   location =   &
      0.0,  &
      0.0,  &
      (-31.0 / 4)  &
   relative_to = .test_analysis_1.Upper_DP_Group10_B
!
defaults coordinate_system  &
   default_coordinate_system = .test_analysis_1.ground
!
marker modify  &
   marker_name = .test_analysis_1.Upper_DP_Group10_B.end_beamB  &
   location =   &
      0.0,  &
      0.0,  &
      (-31.0 / 4)  &
   relative_to = .test_analysis_1.Upper_DP_Group10_B
!
defaults coordinate_system  &
   default_coordinate_system = .test_analysis_1.ground
!
geometry modify shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group10_B.cyl1  &
   center_marker = ("Upper_DP_Group" // 10 // "_B.end_B")  &
   length = (-31.0 / 2)  &
   radius = (0.4167 / 2)
!
geometry modify shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group10_B.cyl1a  &
   center_marker = ("Upper_DP_Group" // 10 // "_B.end_B")  &
   length = (-31.0 / 2)  &
   radius = (0.4167 / 2 * 1.01)
!
geometry modify curve circle  &
   circle_name = .test_analysis_1.Upper_DP_Group10_B.rub1  &
   center_marker = ("Upper_DP_Group" // 10 // "_B.cm")  &
   radius = (0.5 / 2)
!
part modify rigid_body mass_properties  &
   part_name = .test_analysis_1.Upper_DP_Group10_B  &
   center_of_mass_marker = ("Upper_DP_Group" // 10 // "_B.cm")
!
geometry modify shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group10_C.cyl1a  &
   radius = (0.5833 / 2 * 1.01)
!
geometry modify shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group10_C.cyl1  &
   radius = (0.5833 / 2)
!
geometry modify shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group10_C.cyl2  &
   length = (-(31.0 / 4 - 1.0))  &
   radius = (0.4167 / 2)
!
geometry modify shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group10_C.cyl2a  &
   length = (-(31.0 / 4 - 1.0))  &
   radius = (0.4167 / 2 * 1.01)
!
geometry modify shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group10_sliderA.Upper_DP_Group10_sliderAgraphic  &
   center_marker = ("Upper_DP_Group" // 10 // "_sliderA.A2")
!
geometry modify curve circle  &
   circle_name = .test_analysis_1.Upper_DP_Group10_sliderA.ghole  &
   center_marker = ("Upper_DP_Group" // 10 // "_sliderA.cm")
!
geometry modify shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group10_sliderB.Upper_DP_Group10_sliderBgraphic  &
   center_marker = ("Upper_DP_Group" // 10 // "_sliderB.B2")
!
geometry modify curve circle  &
   circle_name = .test_analysis_1.Upper_DP_Group10_sliderB.ghole  &
   center_marker = ("Upper_DP_Group" // 10 // "_sliderB.cm")
!
constraint modify higher_pair_contact point_curve  &
   point_curve_name = .test_analysis_1.PTCV_Upper_DP_Group10_A1  &
   i_marker_name = ("Upper_DP_Group" // 10 // "_sliderA.A1")
!
constraint modify higher_pair_contact point_curve  &
   point_curve_name = .test_analysis_1.PTCV_Upper_DP_Group10_A2  &
   i_marker_name = ("Upper_DP_Group" // 10 // "_sliderA.A2")
!
constraint modify higher_pair_contact point_curve  &
   point_curve_name = .test_analysis_1.PTCV_Upper_DP_Group10_B1  &
   i_marker_name = ("Upper_DP_Group" // 10 // "_sliderB.B1")
!
constraint modify higher_pair_contact point_curve  &
   point_curve_name = .test_analysis_1.PTCV_Upper_DP_Group10_B2  &
   i_marker_name = ("Upper_DP_Group" // 10 // "_sliderB.B2")
!
force modify direct torque_vector  &
   torque_vector_name = .test_analysis_1.Upper_DP_Group10_sliderA_damper  &
   i_marker_name = ("Upper_DP_Group" // 10 // "_sliderA.cm")  &
   ref_marker_name = ("Upper_DP_Group" // 10 // "_sliderA.cm")
!
force modify direct torque_vector  &
   torque_vector_name = .test_analysis_1.Upper_DP_Group10_sliderB_damper  &
   i_marker_name = ("Upper_DP_Group" // 10 // "_sliderB.cm")  &
   ref_marker_name = ("Upper_DP_Group" // 10 // "_sliderB.cm")
!
force modify direct force_vector  &
   force_vector_name = .test_analysis_1.Upper_DP_Group10_sliderA_locator  &
   i_marker_name = ("Upper_DP_Group" // 10 // "_A.end_A")  &
   ref_marker_name = ("Upper_DP_Group" // 10 // "_A.end_A")
!
force modify direct force_vector  &
   force_vector_name = .test_analysis_1.Upper_DP_Group10_sliderB_locator  &
   i_marker_name = ("Upper_DP_Group" // 10 // "_B.cm")  &
   ref_marker_name = ("Upper_DP_Group" // 10 // "_B.cm")
!
force modify element_like beam  &
   beam_name = .test_analysis_1.BeamAB_Upper_DP_Group10  &
   area_of_cross_section = ((0.4167**2 - 0.3333**2) * PI / 4)  &
   youngs_modulus = (.test_analysis_1.YoungsModulus)  &
   shear_modulus = (.test_analysis_1.ShearModulus)  &
   ixx = ((0.4167**4 - 0.3333**4) * PI / 32)  &
   iyy = ((0.4167**4 - 0.3333**4) * PI / 64)  &
   izz = ((0.4167**4 - 0.3333**4) * PI / 64)
!
force modify element_like beam  &
   beam_name = .test_analysis_1.BeamBC_Upper_DP_Group10  &
   area_of_cross_section = ((0.4167**2 - 0.3333**2) * PI / 4)  &
   youngs_modulus = (.test_analysis_1.YoungsModulus)  &
   shear_modulus = (.test_analysis_1.ShearModulus)  &
   ixx = ((0.4167**4 - 0.3333**4) * PI / 32)  &
   iyy = ((0.4167**4 - 0.3333**4) * PI / 64)  &
   izz = ((0.4167**4 - 0.3333**4) * PI / 64)
!
force modify direct general_force  &
   general_force_name = .test_analysis_1.Upper_DP_Group10_contactA  &
   i_marker_name = ("Upper_DP_Group" // 10 // "_A.end_A")  &
   ref_marker_name = ("Upper_DP_Group" // 10 // "_sliderA.cm")  &
   user_function =   &
      (.test_analysis_1.Impact_Exponent),  &
      (.test_analysis_1.Impact_Penetration),  &
      0.5833,  &
      75.0,  &
      (31.0 * 0.5 * 2 / 3),  &
      1.2  &
   routine = "adrill_solver::StringForces"
!
force modify direct general_force  &
   general_force_name = .test_analysis_1.Upper_DP_Group10_contactB  &
   i_marker_name = ("Upper_DP_Group" // 10 // "_B.cm")  &
   ref_marker_name = ("Upper_DP_Group" // 10 // "_sliderB.cm")  &
   user_function =   &
      (.test_analysis_1.Impact_Exponent),  &
      (.test_analysis_1.Impact_Penetration),  &
      0.5,  &
      75.0,  &
      (31.0 * 0.5 / 3),  &
      1.2  &
   routine = "adrill_solver::StringForces"
!
force modify direct force_vector  &
   force_vector_name = .test_analysis_1.Upper_DP_Group10_fluidmassA  &
   i_marker_name = ("Upper_DP_Group" // 10 // "_A.cm")  &
   ref_marker_name = ("Upper_DP_Group" // 10 // "_A.cm")
!
force modify direct force_vector  &
   force_vector_name = .test_analysis_1.Upper_DP_Group10_fluidmassC  &
   i_marker_name = ("Upper_DP_Group" // 10 // "_C.cm")  &
   ref_marker_name = ("Upper_DP_Group" // 10 // "_C.cm")
!
force modify direct force_vector  &
   force_vector_name = .test_analysis_1.Upper_DP_Group10_fluidmassB  &
   i_marker_name = ("Upper_DP_Group" // 10 // "_B.cm")  &
   ref_marker_name = ("Upper_DP_Group" // 10 // "_B.cm")
!
geometry modify shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group11_A.cyl1  &
   radius = (0.5833 / 2)
!
geometry modify shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group11_A.cyl1a  &
   radius = (0.5833 / 2 * 1.01)
!
geometry modify shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group11_A.cyl2  &
   length = (-31.0 / 4 + 1.0)  &
   radius = (0.4167 / 2)
!
geometry modify shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group11_A.cyl2a  &
   length = (-31.0 / 4 + 1.0)  &
   radius = (0.4167 / 2 * 1.01)
!
marker modify  &
   marker_name = .test_analysis_1.Upper_DP_Group11_B.cm  &
   location =   &
      0.0,  &
      0.0,  &
      (-31.0 / 4)  &
   relative_to = .test_analysis_1.Upper_DP_Group11_B
!
defaults coordinate_system  &
   default_coordinate_system = .test_analysis_1.ground
!
marker modify  &
   marker_name = .test_analysis_1.Upper_DP_Group11_B.end_beamB  &
   location =   &
      0.0,  &
      0.0,  &
      (-31.0 / 4)  &
   relative_to = .test_analysis_1.Upper_DP_Group11_B
!
defaults coordinate_system  &
   default_coordinate_system = .test_analysis_1.ground
!
geometry modify shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group11_B.cyl1  &
   center_marker = ("Upper_DP_Group" // 11 // "_B.end_B")  &
   length = (-31.0 / 2)  &
   radius = (0.4167 / 2)
!
geometry modify shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group11_B.cyl1a  &
   center_marker = ("Upper_DP_Group" // 11 // "_B.end_B")  &
   length = (-31.0 / 2)  &
   radius = (0.4167 / 2 * 1.01)
!
geometry modify curve circle  &
   circle_name = .test_analysis_1.Upper_DP_Group11_B.rub1  &
   center_marker = ("Upper_DP_Group" // 11 // "_B.cm")  &
   radius = (0.5 / 2)
!
part modify rigid_body mass_properties  &
   part_name = .test_analysis_1.Upper_DP_Group11_B  &
   center_of_mass_marker = ("Upper_DP_Group" // 11 // "_B.cm")
!
geometry modify shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group11_C.cyl1a  &
   radius = (0.5833 / 2 * 1.01)
!
geometry modify shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group11_C.cyl1  &
   radius = (0.5833 / 2)
!
geometry modify shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group11_C.cyl2  &
   length = (-(31.0 / 4 - 1.0))  &
   radius = (0.4167 / 2)
!
geometry modify shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group11_C.cyl2a  &
   length = (-(31.0 / 4 - 1.0))  &
   radius = (0.4167 / 2 * 1.01)
!
geometry modify shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group11_sliderA.Upper_DP_Group11_sliderAgraphic  &
   center_marker = ("Upper_DP_Group" // 11 // "_sliderA.A2")
!
geometry modify curve circle  &
   circle_name = .test_analysis_1.Upper_DP_Group11_sliderA.ghole  &
   center_marker = ("Upper_DP_Group" // 11 // "_sliderA.cm")
!
geometry modify shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group11_sliderB.Upper_DP_Group11_sliderBgraphic  &
   center_marker = ("Upper_DP_Group" // 11 // "_sliderB.B2")
!
geometry modify curve circle  &
   circle_name = .test_analysis_1.Upper_DP_Group11_sliderB.ghole  &
   center_marker = ("Upper_DP_Group" // 11 // "_sliderB.cm")
!
constraint modify higher_pair_contact point_curve  &
   point_curve_name = .test_analysis_1.PTCV_Upper_DP_Group11_A1  &
   i_marker_name = ("Upper_DP_Group" // 11 // "_sliderA.A1")
!
constraint modify higher_pair_contact point_curve  &
   point_curve_name = .test_analysis_1.PTCV_Upper_DP_Group11_A2  &
   i_marker_name = ("Upper_DP_Group" // 11 // "_sliderA.A2")
!
constraint modify higher_pair_contact point_curve  &
   point_curve_name = .test_analysis_1.PTCV_Upper_DP_Group11_B1  &
   i_marker_name = ("Upper_DP_Group" // 11 // "_sliderB.B1")
!
constraint modify higher_pair_contact point_curve  &
   point_curve_name = .test_analysis_1.PTCV_Upper_DP_Group11_B2  &
   i_marker_name = ("Upper_DP_Group" // 11 // "_sliderB.B2")
!
force modify direct torque_vector  &
   torque_vector_name = .test_analysis_1.Upper_DP_Group11_sliderA_damper  &
   i_marker_name = ("Upper_DP_Group" // 11 // "_sliderA.cm")  &
   ref_marker_name = ("Upper_DP_Group" // 11 // "_sliderA.cm")
!
force modify direct torque_vector  &
   torque_vector_name = .test_analysis_1.Upper_DP_Group11_sliderB_damper  &
   i_marker_name = ("Upper_DP_Group" // 11 // "_sliderB.cm")  &
   ref_marker_name = ("Upper_DP_Group" // 11 // "_sliderB.cm")
!
force modify direct force_vector  &
   force_vector_name = .test_analysis_1.Upper_DP_Group11_sliderA_locator  &
   i_marker_name = ("Upper_DP_Group" // 11 // "_A.end_A")  &
   ref_marker_name = ("Upper_DP_Group" // 11 // "_A.end_A")
!
force modify direct force_vector  &
   force_vector_name = .test_analysis_1.Upper_DP_Group11_sliderB_locator  &
   i_marker_name = ("Upper_DP_Group" // 11 // "_B.cm")  &
   ref_marker_name = ("Upper_DP_Group" // 11 // "_B.cm")
!
force modify element_like beam  &
   beam_name = .test_analysis_1.BeamAB_Upper_DP_Group11  &
   area_of_cross_section = ((0.4167**2 - 0.3333**2) * PI / 4)  &
   youngs_modulus = (.test_analysis_1.YoungsModulus)  &
   shear_modulus = (.test_analysis_1.ShearModulus)  &
   ixx = ((0.4167**4 - 0.3333**4) * PI / 32)  &
   iyy = ((0.4167**4 - 0.3333**4) * PI / 64)  &
   izz = ((0.4167**4 - 0.3333**4) * PI / 64)
!
force modify element_like beam  &
   beam_name = .test_analysis_1.BeamBC_Upper_DP_Group11  &
   area_of_cross_section = ((0.4167**2 - 0.3333**2) * PI / 4)  &
   youngs_modulus = (.test_analysis_1.YoungsModulus)  &
   shear_modulus = (.test_analysis_1.ShearModulus)  &
   ixx = ((0.4167**4 - 0.3333**4) * PI / 32)  &
   iyy = ((0.4167**4 - 0.3333**4) * PI / 64)  &
   izz = ((0.4167**4 - 0.3333**4) * PI / 64)
!
force modify direct general_force  &
   general_force_name = .test_analysis_1.Upper_DP_Group11_contactA  &
   i_marker_name = ("Upper_DP_Group" // 11 // "_A.end_A")  &
   ref_marker_name = ("Upper_DP_Group" // 11 // "_sliderA.cm")  &
   user_function =   &
      (.test_analysis_1.Impact_Exponent),  &
      (.test_analysis_1.Impact_Penetration),  &
      0.5833,  &
      75.0,  &
      (31.0 * 0.5 * 2 / 3),  &
      1.2  &
   routine = "adrill_solver::StringForces"
!
force modify direct general_force  &
   general_force_name = .test_analysis_1.Upper_DP_Group11_contactB  &
   i_marker_name = ("Upper_DP_Group" // 11 // "_B.cm")  &
   ref_marker_name = ("Upper_DP_Group" // 11 // "_sliderB.cm")  &
   user_function =   &
      (.test_analysis_1.Impact_Exponent),  &
      (.test_analysis_1.Impact_Penetration),  &
      0.5,  &
      75.0,  &
      (31.0 * 0.5 / 3),  &
      1.2  &
   routine = "adrill_solver::StringForces"
!
force modify direct force_vector  &
   force_vector_name = .test_analysis_1.Upper_DP_Group11_fluidmassA  &
   i_marker_name = ("Upper_DP_Group" // 11 // "_A.cm")  &
   ref_marker_name = ("Upper_DP_Group" // 11 // "_A.cm")
!
force modify direct force_vector  &
   force_vector_name = .test_analysis_1.Upper_DP_Group11_fluidmassC  &
   i_marker_name = ("Upper_DP_Group" // 11 // "_C.cm")  &
   ref_marker_name = ("Upper_DP_Group" // 11 // "_C.cm")
!
force modify direct force_vector  &
   force_vector_name = .test_analysis_1.Upper_DP_Group11_fluidmassB  &
   i_marker_name = ("Upper_DP_Group" // 11 // "_B.cm")  &
   ref_marker_name = ("Upper_DP_Group" // 11 // "_B.cm")
!
geometry modify shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group12_A.cyl1  &
   radius = (0.5833 / 2)
!
geometry modify shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group12_A.cyl1a  &
   radius = (0.5833 / 2 * 1.01)
!
geometry modify shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group12_A.cyl2  &
   length = (-31.0 / 4 + 1.0)  &
   radius = (0.4167 / 2)
!
geometry modify shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group12_A.cyl2a  &
   length = (-31.0 / 4 + 1.0)  &
   radius = (0.4167 / 2 * 1.01)
!
marker modify  &
   marker_name = .test_analysis_1.Upper_DP_Group12_B.cm  &
   location =   &
      0.0,  &
      0.0,  &
      (-31.0 / 4)  &
   relative_to = .test_analysis_1.Upper_DP_Group12_B
!
defaults coordinate_system  &
   default_coordinate_system = .test_analysis_1.ground
!
marker modify  &
   marker_name = .test_analysis_1.Upper_DP_Group12_B.end_beamB  &
   location =   &
      0.0,  &
      0.0,  &
      (-31.0 / 4)  &
   relative_to = .test_analysis_1.Upper_DP_Group12_B
!
defaults coordinate_system  &
   default_coordinate_system = .test_analysis_1.ground
!
geometry modify shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group12_B.cyl1  &
   center_marker = ("Upper_DP_Group" // 12 // "_B.end_B")  &
   length = (-31.0 / 2)  &
   radius = (0.4167 / 2)
!
geometry modify shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group12_B.cyl1a  &
   center_marker = ("Upper_DP_Group" // 12 // "_B.end_B")  &
   length = (-31.0 / 2)  &
   radius = (0.4167 / 2 * 1.01)
!
geometry modify curve circle  &
   circle_name = .test_analysis_1.Upper_DP_Group12_B.rub1  &
   center_marker = ("Upper_DP_Group" // 12 // "_B.cm")  &
   radius = (0.5 / 2)
!
part modify rigid_body mass_properties  &
   part_name = .test_analysis_1.Upper_DP_Group12_B  &
   center_of_mass_marker = ("Upper_DP_Group" // 12 // "_B.cm")
!
geometry modify shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group12_C.cyl1a  &
   radius = (0.5833 / 2 * 1.01)
!
geometry modify shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group12_C.cyl1  &
   radius = (0.5833 / 2)
!
geometry modify shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group12_C.cyl2  &
   length = (-(31.0 / 4 - 1.0))  &
   radius = (0.4167 / 2)
!
geometry modify shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group12_C.cyl2a  &
   length = (-(31.0 / 4 - 1.0))  &
   radius = (0.4167 / 2 * 1.01)
!
geometry modify shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group12_sliderA.Upper_DP_Group12_sliderAgraphic  &
   center_marker = ("Upper_DP_Group" // 12 // "_sliderA.A2")
!
geometry modify curve circle  &
   circle_name = .test_analysis_1.Upper_DP_Group12_sliderA.ghole  &
   center_marker = ("Upper_DP_Group" // 12 // "_sliderA.cm")
!
geometry modify shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group12_sliderB.Upper_DP_Group12_sliderBgraphic  &
   center_marker = ("Upper_DP_Group" // 12 // "_sliderB.B2")
!
geometry modify curve circle  &
   circle_name = .test_analysis_1.Upper_DP_Group12_sliderB.ghole  &
   center_marker = ("Upper_DP_Group" // 12 // "_sliderB.cm")
!
constraint modify higher_pair_contact point_curve  &
   point_curve_name = .test_analysis_1.PTCV_Upper_DP_Group12_A1  &
   i_marker_name = ("Upper_DP_Group" // 12 // "_sliderA.A1")
!
constraint modify higher_pair_contact point_curve  &
   point_curve_name = .test_analysis_1.PTCV_Upper_DP_Group12_A2  &
   i_marker_name = ("Upper_DP_Group" // 12 // "_sliderA.A2")
!
constraint modify higher_pair_contact point_curve  &
   point_curve_name = .test_analysis_1.PTCV_Upper_DP_Group12_B1  &
   i_marker_name = ("Upper_DP_Group" // 12 // "_sliderB.B1")
!
constraint modify higher_pair_contact point_curve  &
   point_curve_name = .test_analysis_1.PTCV_Upper_DP_Group12_B2  &
   i_marker_name = ("Upper_DP_Group" // 12 // "_sliderB.B2")
!
force modify direct torque_vector  &
   torque_vector_name = .test_analysis_1.Upper_DP_Group12_sliderA_damper  &
   i_marker_name = ("Upper_DP_Group" // 12 // "_sliderA.cm")  &
   ref_marker_name = ("Upper_DP_Group" // 12 // "_sliderA.cm")
!
force modify direct torque_vector  &
   torque_vector_name = .test_analysis_1.Upper_DP_Group12_sliderB_damper  &
   i_marker_name = ("Upper_DP_Group" // 12 // "_sliderB.cm")  &
   ref_marker_name = ("Upper_DP_Group" // 12 // "_sliderB.cm")
!
force modify direct force_vector  &
   force_vector_name = .test_analysis_1.Upper_DP_Group12_sliderA_locator  &
   i_marker_name = ("Upper_DP_Group" // 12 // "_A.end_A")  &
   ref_marker_name = ("Upper_DP_Group" // 12 // "_A.end_A")
!
force modify direct force_vector  &
   force_vector_name = .test_analysis_1.Upper_DP_Group12_sliderB_locator  &
   i_marker_name = ("Upper_DP_Group" // 12 // "_B.cm")  &
   ref_marker_name = ("Upper_DP_Group" // 12 // "_B.cm")
!
force modify element_like beam  &
   beam_name = .test_analysis_1.BeamAB_Upper_DP_Group12  &
   area_of_cross_section = ((0.4167**2 - 0.3333**2) * PI / 4)  &
   youngs_modulus = (.test_analysis_1.YoungsModulus)  &
   shear_modulus = (.test_analysis_1.ShearModulus)  &
   ixx = ((0.4167**4 - 0.3333**4) * PI / 32)  &
   iyy = ((0.4167**4 - 0.3333**4) * PI / 64)  &
   izz = ((0.4167**4 - 0.3333**4) * PI / 64)
!
force modify element_like beam  &
   beam_name = .test_analysis_1.BeamBC_Upper_DP_Group12  &
   area_of_cross_section = ((0.4167**2 - 0.3333**2) * PI / 4)  &
   youngs_modulus = (.test_analysis_1.YoungsModulus)  &
   shear_modulus = (.test_analysis_1.ShearModulus)  &
   ixx = ((0.4167**4 - 0.3333**4) * PI / 32)  &
   iyy = ((0.4167**4 - 0.3333**4) * PI / 64)  &
   izz = ((0.4167**4 - 0.3333**4) * PI / 64)
!
force modify direct general_force  &
   general_force_name = .test_analysis_1.Upper_DP_Group12_contactA  &
   i_marker_name = ("Upper_DP_Group" // 12 // "_A.end_A")  &
   ref_marker_name = ("Upper_DP_Group" // 12 // "_sliderA.cm")  &
   user_function =   &
      (.test_analysis_1.Impact_Exponent),  &
      (.test_analysis_1.Impact_Penetration),  &
      0.5833,  &
      75.0,  &
      (31.0 * 0.5 * 2 / 3),  &
      1.2  &
   routine = "adrill_solver::StringForces"
!
force modify direct general_force  &
   general_force_name = .test_analysis_1.Upper_DP_Group12_contactB  &
   i_marker_name = ("Upper_DP_Group" // 12 // "_B.cm")  &
   ref_marker_name = ("Upper_DP_Group" // 12 // "_sliderB.cm")  &
   user_function =   &
      (.test_analysis_1.Impact_Exponent),  &
      (.test_analysis_1.Impact_Penetration),  &
      0.5,  &
      75.0,  &
      (31.0 * 0.5 / 3),  &
      1.2  &
   routine = "adrill_solver::StringForces"
!
force modify direct force_vector  &
   force_vector_name = .test_analysis_1.Upper_DP_Group12_fluidmassA  &
   i_marker_name = ("Upper_DP_Group" // 12 // "_A.cm")  &
   ref_marker_name = ("Upper_DP_Group" // 12 // "_A.cm")
!
force modify direct force_vector  &
   force_vector_name = .test_analysis_1.Upper_DP_Group12_fluidmassC  &
   i_marker_name = ("Upper_DP_Group" // 12 // "_C.cm")  &
   ref_marker_name = ("Upper_DP_Group" // 12 // "_C.cm")
!
force modify direct force_vector  &
   force_vector_name = .test_analysis_1.Upper_DP_Group12_fluidmassB  &
   i_marker_name = ("Upper_DP_Group" // 12 // "_B.cm")  &
   ref_marker_name = ("Upper_DP_Group" // 12 // "_B.cm")
!
geometry modify shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group13_A.cyl1  &
   radius = (0.5833 / 2)
!
geometry modify shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group13_A.cyl1a  &
   radius = (0.5833 / 2 * 1.01)
!
geometry modify shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group13_A.cyl2  &
   length = (-31.0 / 4 + 1.0)  &
   radius = (0.4167 / 2)
!
geometry modify shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group13_A.cyl2a  &
   length = (-31.0 / 4 + 1.0)  &
   radius = (0.4167 / 2 * 1.01)
!
marker modify  &
   marker_name = .test_analysis_1.Upper_DP_Group13_B.cm  &
   location =   &
      0.0,  &
      0.0,  &
      (-31.0 / 4)  &
   relative_to = .test_analysis_1.Upper_DP_Group13_B
!
defaults coordinate_system  &
   default_coordinate_system = .test_analysis_1.ground
!
marker modify  &
   marker_name = .test_analysis_1.Upper_DP_Group13_B.end_beamB  &
   location =   &
      0.0,  &
      0.0,  &
      (-31.0 / 4)  &
   relative_to = .test_analysis_1.Upper_DP_Group13_B
!
defaults coordinate_system  &
   default_coordinate_system = .test_analysis_1.ground
!
geometry modify shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group13_B.cyl1  &
   center_marker = ("Upper_DP_Group" // 13 // "_B.end_B")  &
   length = (-31.0 / 2)  &
   radius = (0.4167 / 2)
!
geometry modify shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group13_B.cyl1a  &
   center_marker = ("Upper_DP_Group" // 13 // "_B.end_B")  &
   length = (-31.0 / 2)  &
   radius = (0.4167 / 2 * 1.01)
!
geometry modify curve circle  &
   circle_name = .test_analysis_1.Upper_DP_Group13_B.rub1  &
   center_marker = ("Upper_DP_Group" // 13 // "_B.cm")  &
   radius = (0.5 / 2)
!
part modify rigid_body mass_properties  &
   part_name = .test_analysis_1.Upper_DP_Group13_B  &
   center_of_mass_marker = ("Upper_DP_Group" // 13 // "_B.cm")
!
geometry modify shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group13_C.cyl1a  &
   radius = (0.5833 / 2 * 1.01)
!
geometry modify shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group13_C.cyl1  &
   radius = (0.5833 / 2)
!
geometry modify shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group13_C.cyl2  &
   length = (-(31.0 / 4 - 1.0))  &
   radius = (0.4167 / 2)
!
geometry modify shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group13_C.cyl2a  &
   length = (-(31.0 / 4 - 1.0))  &
   radius = (0.4167 / 2 * 1.01)
!
geometry modify shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group13_sliderA.Upper_DP_Group13_sliderAgraphic  &
   center_marker = ("Upper_DP_Group" // 13 // "_sliderA.A2")
!
geometry modify curve circle  &
   circle_name = .test_analysis_1.Upper_DP_Group13_sliderA.ghole  &
   center_marker = ("Upper_DP_Group" // 13 // "_sliderA.cm")
!
geometry modify shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group13_sliderB.Upper_DP_Group13_sliderBgraphic  &
   center_marker = ("Upper_DP_Group" // 13 // "_sliderB.B2")
!
geometry modify curve circle  &
   circle_name = .test_analysis_1.Upper_DP_Group13_sliderB.ghole  &
   center_marker = ("Upper_DP_Group" // 13 // "_sliderB.cm")
!
constraint modify higher_pair_contact point_curve  &
   point_curve_name = .test_analysis_1.PTCV_Upper_DP_Group13_A1  &
   i_marker_name = ("Upper_DP_Group" // 13 // "_sliderA.A1")
!
constraint modify higher_pair_contact point_curve  &
   point_curve_name = .test_analysis_1.PTCV_Upper_DP_Group13_A2  &
   i_marker_name = ("Upper_DP_Group" // 13 // "_sliderA.A2")
!
constraint modify higher_pair_contact point_curve  &
   point_curve_name = .test_analysis_1.PTCV_Upper_DP_Group13_B1  &
   i_marker_name = ("Upper_DP_Group" // 13 // "_sliderB.B1")
!
constraint modify higher_pair_contact point_curve  &
   point_curve_name = .test_analysis_1.PTCV_Upper_DP_Group13_B2  &
   i_marker_name = ("Upper_DP_Group" // 13 // "_sliderB.B2")
!
force modify direct torque_vector  &
   torque_vector_name = .test_analysis_1.Upper_DP_Group13_sliderA_damper  &
   i_marker_name = ("Upper_DP_Group" // 13 // "_sliderA.cm")  &
   ref_marker_name = ("Upper_DP_Group" // 13 // "_sliderA.cm")
!
force modify direct torque_vector  &
   torque_vector_name = .test_analysis_1.Upper_DP_Group13_sliderB_damper  &
   i_marker_name = ("Upper_DP_Group" // 13 // "_sliderB.cm")  &
   ref_marker_name = ("Upper_DP_Group" // 13 // "_sliderB.cm")
!
force modify direct force_vector  &
   force_vector_name = .test_analysis_1.Upper_DP_Group13_sliderA_locator  &
   i_marker_name = ("Upper_DP_Group" // 13 // "_A.end_A")  &
   ref_marker_name = ("Upper_DP_Group" // 13 // "_A.end_A")
!
force modify direct force_vector  &
   force_vector_name = .test_analysis_1.Upper_DP_Group13_sliderB_locator  &
   i_marker_name = ("Upper_DP_Group" // 13 // "_B.cm")  &
   ref_marker_name = ("Upper_DP_Group" // 13 // "_B.cm")
!
force modify element_like beam  &
   beam_name = .test_analysis_1.BeamAB_Upper_DP_Group13  &
   area_of_cross_section = ((0.4167**2 - 0.3333**2) * PI / 4)  &
   youngs_modulus = (.test_analysis_1.YoungsModulus)  &
   shear_modulus = (.test_analysis_1.ShearModulus)  &
   ixx = ((0.4167**4 - 0.3333**4) * PI / 32)  &
   iyy = ((0.4167**4 - 0.3333**4) * PI / 64)  &
   izz = ((0.4167**4 - 0.3333**4) * PI / 64)
!
force modify element_like beam  &
   beam_name = .test_analysis_1.BeamBC_Upper_DP_Group13  &
   area_of_cross_section = ((0.4167**2 - 0.3333**2) * PI / 4)  &
   youngs_modulus = (.test_analysis_1.YoungsModulus)  &
   shear_modulus = (.test_analysis_1.ShearModulus)  &
   ixx = ((0.4167**4 - 0.3333**4) * PI / 32)  &
   iyy = ((0.4167**4 - 0.3333**4) * PI / 64)  &
   izz = ((0.4167**4 - 0.3333**4) * PI / 64)
!
force modify direct general_force  &
   general_force_name = .test_analysis_1.Upper_DP_Group13_contactA  &
   i_marker_name = ("Upper_DP_Group" // 13 // "_A.end_A")  &
   ref_marker_name = ("Upper_DP_Group" // 13 // "_sliderA.cm")  &
   user_function =   &
      (.test_analysis_1.Impact_Exponent),  &
      (.test_analysis_1.Impact_Penetration),  &
      0.5833,  &
      75.0,  &
      (31.0 * 0.5 * 2 / 3),  &
      1.2  &
   routine = "adrill_solver::StringForces"
!
force modify direct general_force  &
   general_force_name = .test_analysis_1.Upper_DP_Group13_contactB  &
   i_marker_name = ("Upper_DP_Group" // 13 // "_B.cm")  &
   ref_marker_name = ("Upper_DP_Group" // 13 // "_sliderB.cm")  &
   user_function =   &
      (.test_analysis_1.Impact_Exponent),  &
      (.test_analysis_1.Impact_Penetration),  &
      0.5,  &
      75.0,  &
      (31.0 * 0.5 / 3),  &
      1.2  &
   routine = "adrill_solver::StringForces"
!
force modify direct force_vector  &
   force_vector_name = .test_analysis_1.Upper_DP_Group13_fluidmassA  &
   i_marker_name = ("Upper_DP_Group" // 13 // "_A.cm")  &
   ref_marker_name = ("Upper_DP_Group" // 13 // "_A.cm")
!
force modify direct force_vector  &
   force_vector_name = .test_analysis_1.Upper_DP_Group13_fluidmassC  &
   i_marker_name = ("Upper_DP_Group" // 13 // "_C.cm")  &
   ref_marker_name = ("Upper_DP_Group" // 13 // "_C.cm")
!
force modify direct force_vector  &
   force_vector_name = .test_analysis_1.Upper_DP_Group13_fluidmassB  &
   i_marker_name = ("Upper_DP_Group" // 13 // "_B.cm")  &
   ref_marker_name = ("Upper_DP_Group" // 13 // "_B.cm")
!
geometry modify shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group14_A.cyl1  &
   radius = (0.5833 / 2)
!
geometry modify shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group14_A.cyl1a  &
   radius = (0.5833 / 2 * 1.01)
!
geometry modify shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group14_A.cyl2  &
   length = (-31.0 / 4 + 1.0)  &
   radius = (0.4167 / 2)
!
geometry modify shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group14_A.cyl2a  &
   length = (-31.0 / 4 + 1.0)  &
   radius = (0.4167 / 2 * 1.01)
!
marker modify  &
   marker_name = .test_analysis_1.Upper_DP_Group14_B.cm  &
   location =   &
      0.0,  &
      0.0,  &
      (-31.0 / 4)  &
   relative_to = .test_analysis_1.Upper_DP_Group14_B
!
defaults coordinate_system  &
   default_coordinate_system = .test_analysis_1.ground
!
marker modify  &
   marker_name = .test_analysis_1.Upper_DP_Group14_B.end_beamB  &
   location =   &
      0.0,  &
      0.0,  &
      (-31.0 / 4)  &
   relative_to = .test_analysis_1.Upper_DP_Group14_B
!
defaults coordinate_system  &
   default_coordinate_system = .test_analysis_1.ground
!
geometry modify shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group14_B.cyl1  &
   center_marker = ("Upper_DP_Group" // 14 // "_B.end_B")  &
   length = (-31.0 / 2)  &
   radius = (0.4167 / 2)
!
geometry modify shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group14_B.cyl1a  &
   center_marker = ("Upper_DP_Group" // 14 // "_B.end_B")  &
   length = (-31.0 / 2)  &
   radius = (0.4167 / 2 * 1.01)
!
geometry modify curve circle  &
   circle_name = .test_analysis_1.Upper_DP_Group14_B.rub1  &
   center_marker = ("Upper_DP_Group" // 14 // "_B.cm")  &
   radius = (0.5 / 2)
!
part modify rigid_body mass_properties  &
   part_name = .test_analysis_1.Upper_DP_Group14_B  &
   center_of_mass_marker = ("Upper_DP_Group" // 14 // "_B.cm")
!
geometry modify shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group14_C.cyl1a  &
   radius = (0.5833 / 2 * 1.01)
!
geometry modify shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group14_C.cyl1  &
   radius = (0.5833 / 2)
!
geometry modify shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group14_C.cyl2  &
   length = (-(31.0 / 4 - 1.0))  &
   radius = (0.4167 / 2)
!
geometry modify shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group14_C.cyl2a  &
   length = (-(31.0 / 4 - 1.0))  &
   radius = (0.4167 / 2 * 1.01)
!
geometry modify shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group14_sliderA.Upper_DP_Group14_sliderAgraphic  &
   center_marker = ("Upper_DP_Group" // 14 // "_sliderA.A2")
!
geometry modify curve circle  &
   circle_name = .test_analysis_1.Upper_DP_Group14_sliderA.ghole  &
   center_marker = ("Upper_DP_Group" // 14 // "_sliderA.cm")
!
geometry modify shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group14_sliderB.Upper_DP_Group14_sliderBgraphic  &
   center_marker = ("Upper_DP_Group" // 14 // "_sliderB.B2")
!
geometry modify curve circle  &
   circle_name = .test_analysis_1.Upper_DP_Group14_sliderB.ghole  &
   center_marker = ("Upper_DP_Group" // 14 // "_sliderB.cm")
!
constraint modify higher_pair_contact point_curve  &
   point_curve_name = .test_analysis_1.PTCV_Upper_DP_Group14_A1  &
   i_marker_name = ("Upper_DP_Group" // 14 // "_sliderA.A1")
!
constraint modify higher_pair_contact point_curve  &
   point_curve_name = .test_analysis_1.PTCV_Upper_DP_Group14_A2  &
   i_marker_name = ("Upper_DP_Group" // 14 // "_sliderA.A2")
!
constraint modify higher_pair_contact point_curve  &
   point_curve_name = .test_analysis_1.PTCV_Upper_DP_Group14_B1  &
   i_marker_name = ("Upper_DP_Group" // 14 // "_sliderB.B1")
!
constraint modify higher_pair_contact point_curve  &
   point_curve_name = .test_analysis_1.PTCV_Upper_DP_Group14_B2  &
   i_marker_name = ("Upper_DP_Group" // 14 // "_sliderB.B2")
!
force modify direct torque_vector  &
   torque_vector_name = .test_analysis_1.Upper_DP_Group14_sliderA_damper  &
   i_marker_name = ("Upper_DP_Group" // 14 // "_sliderA.cm")  &
   ref_marker_name = ("Upper_DP_Group" // 14 // "_sliderA.cm")
!
force modify direct torque_vector  &
   torque_vector_name = .test_analysis_1.Upper_DP_Group14_sliderB_damper  &
   i_marker_name = ("Upper_DP_Group" // 14 // "_sliderB.cm")  &
   ref_marker_name = ("Upper_DP_Group" // 14 // "_sliderB.cm")
!
force modify direct force_vector  &
   force_vector_name = .test_analysis_1.Upper_DP_Group14_sliderA_locator  &
   i_marker_name = ("Upper_DP_Group" // 14 // "_A.end_A")  &
   ref_marker_name = ("Upper_DP_Group" // 14 // "_A.end_A")
!
force modify direct force_vector  &
   force_vector_name = .test_analysis_1.Upper_DP_Group14_sliderB_locator  &
   i_marker_name = ("Upper_DP_Group" // 14 // "_B.cm")  &
   ref_marker_name = ("Upper_DP_Group" // 14 // "_B.cm")
!
force modify element_like beam  &
   beam_name = .test_analysis_1.BeamAB_Upper_DP_Group14  &
   area_of_cross_section = ((0.4167**2 - 0.3333**2) * PI / 4)  &
   youngs_modulus = (.test_analysis_1.YoungsModulus)  &
   shear_modulus = (.test_analysis_1.ShearModulus)  &
   ixx = ((0.4167**4 - 0.3333**4) * PI / 32)  &
   iyy = ((0.4167**4 - 0.3333**4) * PI / 64)  &
   izz = ((0.4167**4 - 0.3333**4) * PI / 64)
!
force modify element_like beam  &
   beam_name = .test_analysis_1.BeamBC_Upper_DP_Group14  &
   area_of_cross_section = ((0.4167**2 - 0.3333**2) * PI / 4)  &
   youngs_modulus = (.test_analysis_1.YoungsModulus)  &
   shear_modulus = (.test_analysis_1.ShearModulus)  &
   ixx = ((0.4167**4 - 0.3333**4) * PI / 32)  &
   iyy = ((0.4167**4 - 0.3333**4) * PI / 64)  &
   izz = ((0.4167**4 - 0.3333**4) * PI / 64)
!
force modify direct general_force  &
   general_force_name = .test_analysis_1.Upper_DP_Group14_contactA  &
   i_marker_name = ("Upper_DP_Group" // 14 // "_A.end_A")  &
   ref_marker_name = ("Upper_DP_Group" // 14 // "_sliderA.cm")  &
   user_function =   &
      (.test_analysis_1.Impact_Exponent),  &
      (.test_analysis_1.Impact_Penetration),  &
      0.5833,  &
      75.0,  &
      (31.0 * 0.5 * 2 / 3),  &
      1.2  &
   routine = "adrill_solver::StringForces"
!
force modify direct general_force  &
   general_force_name = .test_analysis_1.Upper_DP_Group14_contactB  &
   i_marker_name = ("Upper_DP_Group" // 14 // "_B.cm")  &
   ref_marker_name = ("Upper_DP_Group" // 14 // "_sliderB.cm")  &
   user_function =   &
      (.test_analysis_1.Impact_Exponent),  &
      (.test_analysis_1.Impact_Penetration),  &
      0.5,  &
      75.0,  &
      (31.0 * 0.5 / 3),  &
      1.2  &
   routine = "adrill_solver::StringForces"
!
force modify direct force_vector  &
   force_vector_name = .test_analysis_1.Upper_DP_Group14_fluidmassA  &
   i_marker_name = ("Upper_DP_Group" // 14 // "_A.cm")  &
   ref_marker_name = ("Upper_DP_Group" // 14 // "_A.cm")
!
force modify direct force_vector  &
   force_vector_name = .test_analysis_1.Upper_DP_Group14_fluidmassC  &
   i_marker_name = ("Upper_DP_Group" // 14 // "_C.cm")  &
   ref_marker_name = ("Upper_DP_Group" // 14 // "_C.cm")
!
force modify direct force_vector  &
   force_vector_name = .test_analysis_1.Upper_DP_Group14_fluidmassB  &
   i_marker_name = ("Upper_DP_Group" // 14 // "_B.cm")  &
   ref_marker_name = ("Upper_DP_Group" // 14 // "_B.cm")
!
geometry modify shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group15_A.cyl1  &
   radius = (0.5833 / 2)
!
geometry modify shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group15_A.cyl1a  &
   radius = (0.5833 / 2 * 1.01)
!
geometry modify shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group15_A.cyl2  &
   length = (-31.0 / 4 + 1.0)  &
   radius = (0.4167 / 2)
!
geometry modify shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group15_A.cyl2a  &
   length = (-31.0 / 4 + 1.0)  &
   radius = (0.4167 / 2 * 1.01)
!
marker modify  &
   marker_name = .test_analysis_1.Upper_DP_Group15_B.cm  &
   location =   &
      0.0,  &
      0.0,  &
      (-31.0 / 4)  &
   relative_to = .test_analysis_1.Upper_DP_Group15_B
!
defaults coordinate_system  &
   default_coordinate_system = .test_analysis_1.ground
!
marker modify  &
   marker_name = .test_analysis_1.Upper_DP_Group15_B.end_beamB  &
   location =   &
      0.0,  &
      0.0,  &
      (-31.0 / 4)  &
   relative_to = .test_analysis_1.Upper_DP_Group15_B
!
defaults coordinate_system  &
   default_coordinate_system = .test_analysis_1.ground
!
geometry modify shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group15_B.cyl1  &
   center_marker = ("Upper_DP_Group" // 15 // "_B.end_B")  &
   length = (-31.0 / 2)  &
   radius = (0.4167 / 2)
!
geometry modify shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group15_B.cyl1a  &
   center_marker = ("Upper_DP_Group" // 15 // "_B.end_B")  &
   length = (-31.0 / 2)  &
   radius = (0.4167 / 2 * 1.01)
!
geometry modify curve circle  &
   circle_name = .test_analysis_1.Upper_DP_Group15_B.rub1  &
   center_marker = ("Upper_DP_Group" // 15 // "_B.cm")  &
   radius = (0.5 / 2)
!
part modify rigid_body mass_properties  &
   part_name = .test_analysis_1.Upper_DP_Group15_B  &
   center_of_mass_marker = ("Upper_DP_Group" // 15 // "_B.cm")
!
geometry modify shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group15_C.cyl1a  &
   radius = (0.5833 / 2 * 1.01)
!
geometry modify shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group15_C.cyl1  &
   radius = (0.5833 / 2)
!
geometry modify shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group15_C.cyl2  &
   length = (-(31.0 / 4 - 1.0))  &
   radius = (0.4167 / 2)
!
geometry modify shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group15_C.cyl2a  &
   length = (-(31.0 / 4 - 1.0))  &
   radius = (0.4167 / 2 * 1.01)
!
geometry modify shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group15_sliderA.Upper_DP_Group15_sliderAgraphic  &
   center_marker = ("Upper_DP_Group" // 15 // "_sliderA.A2")
!
geometry modify curve circle  &
   circle_name = .test_analysis_1.Upper_DP_Group15_sliderA.ghole  &
   center_marker = ("Upper_DP_Group" // 15 // "_sliderA.cm")
!
geometry modify shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group15_sliderB.Upper_DP_Group15_sliderBgraphic  &
   center_marker = ("Upper_DP_Group" // 15 // "_sliderB.B2")
!
geometry modify curve circle  &
   circle_name = .test_analysis_1.Upper_DP_Group15_sliderB.ghole  &
   center_marker = ("Upper_DP_Group" // 15 // "_sliderB.cm")
!
constraint modify higher_pair_contact point_curve  &
   point_curve_name = .test_analysis_1.PTCV_Upper_DP_Group15_A1  &
   i_marker_name = ("Upper_DP_Group" // 15 // "_sliderA.A1")
!
constraint modify higher_pair_contact point_curve  &
   point_curve_name = .test_analysis_1.PTCV_Upper_DP_Group15_A2  &
   i_marker_name = ("Upper_DP_Group" // 15 // "_sliderA.A2")
!
constraint modify higher_pair_contact point_curve  &
   point_curve_name = .test_analysis_1.PTCV_Upper_DP_Group15_B1  &
   i_marker_name = ("Upper_DP_Group" // 15 // "_sliderB.B1")
!
constraint modify higher_pair_contact point_curve  &
   point_curve_name = .test_analysis_1.PTCV_Upper_DP_Group15_B2  &
   i_marker_name = ("Upper_DP_Group" // 15 // "_sliderB.B2")
!
force modify direct torque_vector  &
   torque_vector_name = .test_analysis_1.Upper_DP_Group15_sliderA_damper  &
   i_marker_name = ("Upper_DP_Group" // 15 // "_sliderA.cm")  &
   ref_marker_name = ("Upper_DP_Group" // 15 // "_sliderA.cm")
!
force modify direct torque_vector  &
   torque_vector_name = .test_analysis_1.Upper_DP_Group15_sliderB_damper  &
   i_marker_name = ("Upper_DP_Group" // 15 // "_sliderB.cm")  &
   ref_marker_name = ("Upper_DP_Group" // 15 // "_sliderB.cm")
!
force modify direct force_vector  &
   force_vector_name = .test_analysis_1.Upper_DP_Group15_sliderA_locator  &
   i_marker_name = ("Upper_DP_Group" // 15 // "_A.end_A")  &
   ref_marker_name = ("Upper_DP_Group" // 15 // "_A.end_A")
!
force modify direct force_vector  &
   force_vector_name = .test_analysis_1.Upper_DP_Group15_sliderB_locator  &
   i_marker_name = ("Upper_DP_Group" // 15 // "_B.cm")  &
   ref_marker_name = ("Upper_DP_Group" // 15 // "_B.cm")
!
force modify element_like beam  &
   beam_name = .test_analysis_1.BeamAB_Upper_DP_Group15  &
   area_of_cross_section = ((0.4167**2 - 0.3333**2) * PI / 4)  &
   youngs_modulus = (.test_analysis_1.YoungsModulus)  &
   shear_modulus = (.test_analysis_1.ShearModulus)  &
   ixx = ((0.4167**4 - 0.3333**4) * PI / 32)  &
   iyy = ((0.4167**4 - 0.3333**4) * PI / 64)  &
   izz = ((0.4167**4 - 0.3333**4) * PI / 64)
!
force modify element_like beam  &
   beam_name = .test_analysis_1.BeamBC_Upper_DP_Group15  &
   area_of_cross_section = ((0.4167**2 - 0.3333**2) * PI / 4)  &
   youngs_modulus = (.test_analysis_1.YoungsModulus)  &
   shear_modulus = (.test_analysis_1.ShearModulus)  &
   ixx = ((0.4167**4 - 0.3333**4) * PI / 32)  &
   iyy = ((0.4167**4 - 0.3333**4) * PI / 64)  &
   izz = ((0.4167**4 - 0.3333**4) * PI / 64)
!
force modify direct general_force  &
   general_force_name = .test_analysis_1.Upper_DP_Group15_contactA  &
   i_marker_name = ("Upper_DP_Group" // 15 // "_A.end_A")  &
   ref_marker_name = ("Upper_DP_Group" // 15 // "_sliderA.cm")  &
   user_function =   &
      (.test_analysis_1.Impact_Exponent),  &
      (.test_analysis_1.Impact_Penetration),  &
      0.5833,  &
      75.0,  &
      (31.0 * 0.5 * 2 / 3),  &
      1.2  &
   routine = "adrill_solver::StringForces"
!
force modify direct general_force  &
   general_force_name = .test_analysis_1.Upper_DP_Group15_contactB  &
   i_marker_name = ("Upper_DP_Group" // 15 // "_B.cm")  &
   ref_marker_name = ("Upper_DP_Group" // 15 // "_sliderB.cm")  &
   user_function =   &
      (.test_analysis_1.Impact_Exponent),  &
      (.test_analysis_1.Impact_Penetration),  &
      0.5,  &
      75.0,  &
      (31.0 * 0.5 / 3),  &
      1.2  &
   routine = "adrill_solver::StringForces"
!
force modify direct force_vector  &
   force_vector_name = .test_analysis_1.Upper_DP_Group15_fluidmassA  &
   i_marker_name = ("Upper_DP_Group" // 15 // "_A.cm")  &
   ref_marker_name = ("Upper_DP_Group" // 15 // "_A.cm")
!
force modify direct force_vector  &
   force_vector_name = .test_analysis_1.Upper_DP_Group15_fluidmassC  &
   i_marker_name = ("Upper_DP_Group" // 15 // "_C.cm")  &
   ref_marker_name = ("Upper_DP_Group" // 15 // "_C.cm")
!
force modify direct force_vector  &
   force_vector_name = .test_analysis_1.Upper_DP_Group15_fluidmassB  &
   i_marker_name = ("Upper_DP_Group" // 15 // "_B.cm")  &
   ref_marker_name = ("Upper_DP_Group" // 15 // "_B.cm")
!
geometry modify shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group16_A.cyl1  &
   radius = (0.5833 / 2)
!
geometry modify shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group16_A.cyl1a  &
   radius = (0.5833 / 2 * 1.01)
!
geometry modify shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group16_A.cyl2  &
   length = (-31.0 / 4 + 1.0)  &
   radius = (0.4167 / 2)
!
geometry modify shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group16_A.cyl2a  &
   length = (-31.0 / 4 + 1.0)  &
   radius = (0.4167 / 2 * 1.01)
!
marker modify  &
   marker_name = .test_analysis_1.Upper_DP_Group16_B.cm  &
   location =   &
      0.0,  &
      0.0,  &
      (-31.0 / 4)  &
   relative_to = .test_analysis_1.Upper_DP_Group16_B
!
defaults coordinate_system  &
   default_coordinate_system = .test_analysis_1.ground
!
marker modify  &
   marker_name = .test_analysis_1.Upper_DP_Group16_B.end_beamB  &
   location =   &
      0.0,  &
      0.0,  &
      (-31.0 / 4)  &
   relative_to = .test_analysis_1.Upper_DP_Group16_B
!
defaults coordinate_system  &
   default_coordinate_system = .test_analysis_1.ground
!
geometry modify shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group16_B.cyl1  &
   center_marker = ("Upper_DP_Group" // 16 // "_B.end_B")  &
   length = (-31.0 / 2)  &
   radius = (0.4167 / 2)
!
geometry modify shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group16_B.cyl1a  &
   center_marker = ("Upper_DP_Group" // 16 // "_B.end_B")  &
   length = (-31.0 / 2)  &
   radius = (0.4167 / 2 * 1.01)
!
geometry modify curve circle  &
   circle_name = .test_analysis_1.Upper_DP_Group16_B.rub1  &
   center_marker = ("Upper_DP_Group" // 16 // "_B.cm")  &
   radius = (0.5 / 2)
!
part modify rigid_body mass_properties  &
   part_name = .test_analysis_1.Upper_DP_Group16_B  &
   center_of_mass_marker = ("Upper_DP_Group" // 16 // "_B.cm")
!
geometry modify shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group16_C.cyl1a  &
   radius = (0.5833 / 2 * 1.01)
!
geometry modify shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group16_C.cyl1  &
   radius = (0.5833 / 2)
!
geometry modify shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group16_C.cyl2  &
   length = (-(31.0 / 4 - 1.0))  &
   radius = (0.4167 / 2)
!
geometry modify shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group16_C.cyl2a  &
   length = (-(31.0 / 4 - 1.0))  &
   radius = (0.4167 / 2 * 1.01)
!
geometry modify shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group16_sliderA.Upper_DP_Group16_sliderAgraphic  &
   center_marker = ("Upper_DP_Group" // 16 // "_sliderA.A2")
!
geometry modify curve circle  &
   circle_name = .test_analysis_1.Upper_DP_Group16_sliderA.ghole  &
   center_marker = ("Upper_DP_Group" // 16 // "_sliderA.cm")
!
geometry modify shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group16_sliderB.Upper_DP_Group16_sliderBgraphic  &
   center_marker = ("Upper_DP_Group" // 16 // "_sliderB.B2")
!
geometry modify curve circle  &
   circle_name = .test_analysis_1.Upper_DP_Group16_sliderB.ghole  &
   center_marker = ("Upper_DP_Group" // 16 // "_sliderB.cm")
!
constraint modify higher_pair_contact point_curve  &
   point_curve_name = .test_analysis_1.PTCV_Upper_DP_Group16_A1  &
   i_marker_name = ("Upper_DP_Group" // 16 // "_sliderA.A1")
!
constraint modify higher_pair_contact point_curve  &
   point_curve_name = .test_analysis_1.PTCV_Upper_DP_Group16_A2  &
   i_marker_name = ("Upper_DP_Group" // 16 // "_sliderA.A2")
!
constraint modify higher_pair_contact point_curve  &
   point_curve_name = .test_analysis_1.PTCV_Upper_DP_Group16_B1  &
   i_marker_name = ("Upper_DP_Group" // 16 // "_sliderB.B1")
!
constraint modify higher_pair_contact point_curve  &
   point_curve_name = .test_analysis_1.PTCV_Upper_DP_Group16_B2  &
   i_marker_name = ("Upper_DP_Group" // 16 // "_sliderB.B2")
!
force modify direct torque_vector  &
   torque_vector_name = .test_analysis_1.Upper_DP_Group16_sliderA_damper  &
   i_marker_name = ("Upper_DP_Group" // 16 // "_sliderA.cm")  &
   ref_marker_name = ("Upper_DP_Group" // 16 // "_sliderA.cm")
!
force modify direct torque_vector  &
   torque_vector_name = .test_analysis_1.Upper_DP_Group16_sliderB_damper  &
   i_marker_name = ("Upper_DP_Group" // 16 // "_sliderB.cm")  &
   ref_marker_name = ("Upper_DP_Group" // 16 // "_sliderB.cm")
!
force modify direct force_vector  &
   force_vector_name = .test_analysis_1.Upper_DP_Group16_sliderA_locator  &
   i_marker_name = ("Upper_DP_Group" // 16 // "_A.end_A")  &
   ref_marker_name = ("Upper_DP_Group" // 16 // "_A.end_A")
!
force modify direct force_vector  &
   force_vector_name = .test_analysis_1.Upper_DP_Group16_sliderB_locator  &
   i_marker_name = ("Upper_DP_Group" // 16 // "_B.cm")  &
   ref_marker_name = ("Upper_DP_Group" // 16 // "_B.cm")
!
force modify element_like beam  &
   beam_name = .test_analysis_1.BeamAB_Upper_DP_Group16  &
   area_of_cross_section = ((0.4167**2 - 0.3333**2) * PI / 4)  &
   youngs_modulus = (.test_analysis_1.YoungsModulus)  &
   shear_modulus = (.test_analysis_1.ShearModulus)  &
   ixx = ((0.4167**4 - 0.3333**4) * PI / 32)  &
   iyy = ((0.4167**4 - 0.3333**4) * PI / 64)  &
   izz = ((0.4167**4 - 0.3333**4) * PI / 64)
!
force modify element_like beam  &
   beam_name = .test_analysis_1.BeamBC_Upper_DP_Group16  &
   area_of_cross_section = ((0.4167**2 - 0.3333**2) * PI / 4)  &
   youngs_modulus = (.test_analysis_1.YoungsModulus)  &
   shear_modulus = (.test_analysis_1.ShearModulus)  &
   ixx = ((0.4167**4 - 0.3333**4) * PI / 32)  &
   iyy = ((0.4167**4 - 0.3333**4) * PI / 64)  &
   izz = ((0.4167**4 - 0.3333**4) * PI / 64)
!
force modify direct general_force  &
   general_force_name = .test_analysis_1.Upper_DP_Group16_contactA  &
   i_marker_name = ("Upper_DP_Group" // 16 // "_A.end_A")  &
   ref_marker_name = ("Upper_DP_Group" // 16 // "_sliderA.cm")  &
   user_function =   &
      (.test_analysis_1.Impact_Exponent),  &
      (.test_analysis_1.Impact_Penetration),  &
      0.5833,  &
      75.0,  &
      (31.0 * 0.5 * 2 / 3),  &
      1.2  &
   routine = "adrill_solver::StringForces"
!
force modify direct general_force  &
   general_force_name = .test_analysis_1.Upper_DP_Group16_contactB  &
   i_marker_name = ("Upper_DP_Group" // 16 // "_B.cm")  &
   ref_marker_name = ("Upper_DP_Group" // 16 // "_sliderB.cm")  &
   user_function =   &
      (.test_analysis_1.Impact_Exponent),  &
      (.test_analysis_1.Impact_Penetration),  &
      0.5,  &
      75.0,  &
      (31.0 * 0.5 / 3),  &
      1.2  &
   routine = "adrill_solver::StringForces"
!
force modify direct force_vector  &
   force_vector_name = .test_analysis_1.Upper_DP_Group16_fluidmassA  &
   i_marker_name = ("Upper_DP_Group" // 16 // "_A.cm")  &
   ref_marker_name = ("Upper_DP_Group" // 16 // "_A.cm")
!
force modify direct force_vector  &
   force_vector_name = .test_analysis_1.Upper_DP_Group16_fluidmassC  &
   i_marker_name = ("Upper_DP_Group" // 16 // "_C.cm")  &
   ref_marker_name = ("Upper_DP_Group" // 16 // "_C.cm")
!
force modify direct force_vector  &
   force_vector_name = .test_analysis_1.Upper_DP_Group16_fluidmassB  &
   i_marker_name = ("Upper_DP_Group" // 16 // "_B.cm")  &
   ref_marker_name = ("Upper_DP_Group" // 16 // "_B.cm")
!
geometry modify shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group17_A.cyl1  &
   radius = (0.5833 / 2)
!
geometry modify shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group17_A.cyl1a  &
   radius = (0.5833 / 2 * 1.01)
!
geometry modify shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group17_A.cyl2  &
   length = (-31.0 / 4 + 1.0)  &
   radius = (0.4167 / 2)
!
geometry modify shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group17_A.cyl2a  &
   length = (-31.0 / 4 + 1.0)  &
   radius = (0.4167 / 2 * 1.01)
!
marker modify  &
   marker_name = .test_analysis_1.Upper_DP_Group17_B.cm  &
   location =   &
      0.0,  &
      0.0,  &
      (-31.0 / 4)  &
   relative_to = .test_analysis_1.Upper_DP_Group17_B
!
defaults coordinate_system  &
   default_coordinate_system = .test_analysis_1.ground
!
marker modify  &
   marker_name = .test_analysis_1.Upper_DP_Group17_B.end_beamB  &
   location =   &
      0.0,  &
      0.0,  &
      (-31.0 / 4)  &
   relative_to = .test_analysis_1.Upper_DP_Group17_B
!
defaults coordinate_system  &
   default_coordinate_system = .test_analysis_1.ground
!
geometry modify shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group17_B.cyl1  &
   center_marker = ("Upper_DP_Group" // 17 // "_B.end_B")  &
   length = (-31.0 / 2)  &
   radius = (0.4167 / 2)
!
geometry modify shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group17_B.cyl1a  &
   center_marker = ("Upper_DP_Group" // 17 // "_B.end_B")  &
   length = (-31.0 / 2)  &
   radius = (0.4167 / 2 * 1.01)
!
geometry modify curve circle  &
   circle_name = .test_analysis_1.Upper_DP_Group17_B.rub1  &
   center_marker = ("Upper_DP_Group" // 17 // "_B.cm")  &
   radius = (0.5 / 2)
!
part modify rigid_body mass_properties  &
   part_name = .test_analysis_1.Upper_DP_Group17_B  &
   center_of_mass_marker = ("Upper_DP_Group" // 17 // "_B.cm")
!
geometry modify shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group17_C.cyl1a  &
   radius = (0.5833 / 2 * 1.01)
!
geometry modify shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group17_C.cyl1  &
   radius = (0.5833 / 2)
!
geometry modify shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group17_C.cyl2  &
   length = (-(31.0 / 4 - 1.0))  &
   radius = (0.4167 / 2)
!
geometry modify shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group17_C.cyl2a  &
   length = (-(31.0 / 4 - 1.0))  &
   radius = (0.4167 / 2 * 1.01)
!
geometry modify shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group17_sliderA.Upper_DP_Group17_sliderAgraphic  &
   center_marker = ("Upper_DP_Group" // 17 // "_sliderA.A2")
!
geometry modify curve circle  &
   circle_name = .test_analysis_1.Upper_DP_Group17_sliderA.ghole  &
   center_marker = ("Upper_DP_Group" // 17 // "_sliderA.cm")
!
geometry modify shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group17_sliderB.Upper_DP_Group17_sliderBgraphic  &
   center_marker = ("Upper_DP_Group" // 17 // "_sliderB.B2")
!
geometry modify curve circle  &
   circle_name = .test_analysis_1.Upper_DP_Group17_sliderB.ghole  &
   center_marker = ("Upper_DP_Group" // 17 // "_sliderB.cm")
!
constraint modify higher_pair_contact point_curve  &
   point_curve_name = .test_analysis_1.PTCV_Upper_DP_Group17_A1  &
   i_marker_name = ("Upper_DP_Group" // 17 // "_sliderA.A1")
!
constraint modify higher_pair_contact point_curve  &
   point_curve_name = .test_analysis_1.PTCV_Upper_DP_Group17_A2  &
   i_marker_name = ("Upper_DP_Group" // 17 // "_sliderA.A2")
!
constraint modify higher_pair_contact point_curve  &
   point_curve_name = .test_analysis_1.PTCV_Upper_DP_Group17_B1  &
   i_marker_name = ("Upper_DP_Group" // 17 // "_sliderB.B1")
!
constraint modify higher_pair_contact point_curve  &
   point_curve_name = .test_analysis_1.PTCV_Upper_DP_Group17_B2  &
   i_marker_name = ("Upper_DP_Group" // 17 // "_sliderB.B2")
!
force modify direct torque_vector  &
   torque_vector_name = .test_analysis_1.Upper_DP_Group17_sliderA_damper  &
   i_marker_name = ("Upper_DP_Group" // 17 // "_sliderA.cm")  &
   ref_marker_name = ("Upper_DP_Group" // 17 // "_sliderA.cm")
!
force modify direct torque_vector  &
   torque_vector_name = .test_analysis_1.Upper_DP_Group17_sliderB_damper  &
   i_marker_name = ("Upper_DP_Group" // 17 // "_sliderB.cm")  &
   ref_marker_name = ("Upper_DP_Group" // 17 // "_sliderB.cm")
!
force modify direct force_vector  &
   force_vector_name = .test_analysis_1.Upper_DP_Group17_sliderA_locator  &
   i_marker_name = ("Upper_DP_Group" // 17 // "_A.end_A")  &
   ref_marker_name = ("Upper_DP_Group" // 17 // "_A.end_A")
!
force modify direct force_vector  &
   force_vector_name = .test_analysis_1.Upper_DP_Group17_sliderB_locator  &
   i_marker_name = ("Upper_DP_Group" // 17 // "_B.cm")  &
   ref_marker_name = ("Upper_DP_Group" // 17 // "_B.cm")
!
force modify element_like beam  &
   beam_name = .test_analysis_1.BeamAB_Upper_DP_Group17  &
   area_of_cross_section = ((0.4167**2 - 0.3333**2) * PI / 4)  &
   youngs_modulus = (.test_analysis_1.YoungsModulus)  &
   shear_modulus = (.test_analysis_1.ShearModulus)  &
   ixx = ((0.4167**4 - 0.3333**4) * PI / 32)  &
   iyy = ((0.4167**4 - 0.3333**4) * PI / 64)  &
   izz = ((0.4167**4 - 0.3333**4) * PI / 64)
!
force modify element_like beam  &
   beam_name = .test_analysis_1.BeamBC_Upper_DP_Group17  &
   area_of_cross_section = ((0.4167**2 - 0.3333**2) * PI / 4)  &
   youngs_modulus = (.test_analysis_1.YoungsModulus)  &
   shear_modulus = (.test_analysis_1.ShearModulus)  &
   ixx = ((0.4167**4 - 0.3333**4) * PI / 32)  &
   iyy = ((0.4167**4 - 0.3333**4) * PI / 64)  &
   izz = ((0.4167**4 - 0.3333**4) * PI / 64)
!
force modify direct general_force  &
   general_force_name = .test_analysis_1.Upper_DP_Group17_contactA  &
   i_marker_name = ("Upper_DP_Group" // 17 // "_A.end_A")  &
   ref_marker_name = ("Upper_DP_Group" // 17 // "_sliderA.cm")  &
   user_function =   &
      (.test_analysis_1.Impact_Exponent),  &
      (.test_analysis_1.Impact_Penetration),  &
      0.5833,  &
      75.0,  &
      (31.0 * 0.5 * 2 / 3),  &
      1.2  &
   routine = "adrill_solver::StringForces"
!
force modify direct general_force  &
   general_force_name = .test_analysis_1.Upper_DP_Group17_contactB  &
   i_marker_name = ("Upper_DP_Group" // 17 // "_B.cm")  &
   ref_marker_name = ("Upper_DP_Group" // 17 // "_sliderB.cm")  &
   user_function =   &
      (.test_analysis_1.Impact_Exponent),  &
      (.test_analysis_1.Impact_Penetration),  &
      0.5,  &
      75.0,  &
      (31.0 * 0.5 / 3),  &
      1.2  &
   routine = "adrill_solver::StringForces"
!
force modify direct force_vector  &
   force_vector_name = .test_analysis_1.Upper_DP_Group17_fluidmassA  &
   i_marker_name = ("Upper_DP_Group" // 17 // "_A.cm")  &
   ref_marker_name = ("Upper_DP_Group" // 17 // "_A.cm")
!
force modify direct force_vector  &
   force_vector_name = .test_analysis_1.Upper_DP_Group17_fluidmassC  &
   i_marker_name = ("Upper_DP_Group" // 17 // "_C.cm")  &
   ref_marker_name = ("Upper_DP_Group" // 17 // "_C.cm")
!
force modify direct force_vector  &
   force_vector_name = .test_analysis_1.Upper_DP_Group17_fluidmassB  &
   i_marker_name = ("Upper_DP_Group" // 17 // "_B.cm")  &
   ref_marker_name = ("Upper_DP_Group" // 17 // "_B.cm")
!
geometry modify shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group18_A.cyl1  &
   radius = (0.5833 / 2)
!
geometry modify shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group18_A.cyl1a  &
   radius = (0.5833 / 2 * 1.01)
!
geometry modify shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group18_A.cyl2  &
   length = (-31.0 / 4 + 1.0)  &
   radius = (0.4167 / 2)
!
geometry modify shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group18_A.cyl2a  &
   length = (-31.0 / 4 + 1.0)  &
   radius = (0.4167 / 2 * 1.01)
!
marker modify  &
   marker_name = .test_analysis_1.Upper_DP_Group18_B.cm  &
   location =   &
      0.0,  &
      0.0,  &
      (-31.0 / 4)  &
   relative_to = .test_analysis_1.Upper_DP_Group18_B
!
defaults coordinate_system  &
   default_coordinate_system = .test_analysis_1.ground
!
marker modify  &
   marker_name = .test_analysis_1.Upper_DP_Group18_B.end_beamB  &
   location =   &
      0.0,  &
      0.0,  &
      (-31.0 / 4)  &
   relative_to = .test_analysis_1.Upper_DP_Group18_B
!
defaults coordinate_system  &
   default_coordinate_system = .test_analysis_1.ground
!
geometry modify shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group18_B.cyl1  &
   center_marker = ("Upper_DP_Group" // 18 // "_B.end_B")  &
   length = (-31.0 / 2)  &
   radius = (0.4167 / 2)
!
geometry modify shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group18_B.cyl1a  &
   center_marker = ("Upper_DP_Group" // 18 // "_B.end_B")  &
   length = (-31.0 / 2)  &
   radius = (0.4167 / 2 * 1.01)
!
geometry modify curve circle  &
   circle_name = .test_analysis_1.Upper_DP_Group18_B.rub1  &
   center_marker = ("Upper_DP_Group" // 18 // "_B.cm")  &
   radius = (0.5 / 2)
!
part modify rigid_body mass_properties  &
   part_name = .test_analysis_1.Upper_DP_Group18_B  &
   center_of_mass_marker = ("Upper_DP_Group" // 18 // "_B.cm")
!
geometry modify shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group18_C.cyl1a  &
   radius = (0.5833 / 2 * 1.01)
!
geometry modify shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group18_C.cyl1  &
   radius = (0.5833 / 2)
!
geometry modify shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group18_C.cyl2  &
   length = (-(31.0 / 4 - 1.0))  &
   radius = (0.4167 / 2)
!
geometry modify shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group18_C.cyl2a  &
   length = (-(31.0 / 4 - 1.0))  &
   radius = (0.4167 / 2 * 1.01)
!
geometry modify shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group18_sliderA.Upper_DP_Group18_sliderAgraphic  &
   center_marker = ("Upper_DP_Group" // 18 // "_sliderA.A2")
!
geometry modify curve circle  &
   circle_name = .test_analysis_1.Upper_DP_Group18_sliderA.ghole  &
   center_marker = ("Upper_DP_Group" // 18 // "_sliderA.cm")
!
geometry modify shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group18_sliderB.Upper_DP_Group18_sliderBgraphic  &
   center_marker = ("Upper_DP_Group" // 18 // "_sliderB.B2")
!
geometry modify curve circle  &
   circle_name = .test_analysis_1.Upper_DP_Group18_sliderB.ghole  &
   center_marker = ("Upper_DP_Group" // 18 // "_sliderB.cm")
!
constraint modify higher_pair_contact point_curve  &
   point_curve_name = .test_analysis_1.PTCV_Upper_DP_Group18_A1  &
   i_marker_name = ("Upper_DP_Group" // 18 // "_sliderA.A1")
!
constraint modify higher_pair_contact point_curve  &
   point_curve_name = .test_analysis_1.PTCV_Upper_DP_Group18_A2  &
   i_marker_name = ("Upper_DP_Group" // 18 // "_sliderA.A2")
!
constraint modify higher_pair_contact point_curve  &
   point_curve_name = .test_analysis_1.PTCV_Upper_DP_Group18_B1  &
   i_marker_name = ("Upper_DP_Group" // 18 // "_sliderB.B1")
!
constraint modify higher_pair_contact point_curve  &
   point_curve_name = .test_analysis_1.PTCV_Upper_DP_Group18_B2  &
   i_marker_name = ("Upper_DP_Group" // 18 // "_sliderB.B2")
!
force modify direct torque_vector  &
   torque_vector_name = .test_analysis_1.Upper_DP_Group18_sliderA_damper  &
   i_marker_name = ("Upper_DP_Group" // 18 // "_sliderA.cm")  &
   ref_marker_name = ("Upper_DP_Group" // 18 // "_sliderA.cm")
!
force modify direct torque_vector  &
   torque_vector_name = .test_analysis_1.Upper_DP_Group18_sliderB_damper  &
   i_marker_name = ("Upper_DP_Group" // 18 // "_sliderB.cm")  &
   ref_marker_name = ("Upper_DP_Group" // 18 // "_sliderB.cm")
!
force modify direct force_vector  &
   force_vector_name = .test_analysis_1.Upper_DP_Group18_sliderA_locator  &
   i_marker_name = ("Upper_DP_Group" // 18 // "_A.end_A")  &
   ref_marker_name = ("Upper_DP_Group" // 18 // "_A.end_A")
!
force modify direct force_vector  &
   force_vector_name = .test_analysis_1.Upper_DP_Group18_sliderB_locator  &
   i_marker_name = ("Upper_DP_Group" // 18 // "_B.cm")  &
   ref_marker_name = ("Upper_DP_Group" // 18 // "_B.cm")
!
force modify element_like beam  &
   beam_name = .test_analysis_1.BeamAB_Upper_DP_Group18  &
   area_of_cross_section = ((0.4167**2 - 0.3333**2) * PI / 4)  &
   youngs_modulus = (.test_analysis_1.YoungsModulus)  &
   shear_modulus = (.test_analysis_1.ShearModulus)  &
   ixx = ((0.4167**4 - 0.3333**4) * PI / 32)  &
   iyy = ((0.4167**4 - 0.3333**4) * PI / 64)  &
   izz = ((0.4167**4 - 0.3333**4) * PI / 64)
!
force modify element_like beam  &
   beam_name = .test_analysis_1.BeamBC_Upper_DP_Group18  &
   area_of_cross_section = ((0.4167**2 - 0.3333**2) * PI / 4)  &
   youngs_modulus = (.test_analysis_1.YoungsModulus)  &
   shear_modulus = (.test_analysis_1.ShearModulus)  &
   ixx = ((0.4167**4 - 0.3333**4) * PI / 32)  &
   iyy = ((0.4167**4 - 0.3333**4) * PI / 64)  &
   izz = ((0.4167**4 - 0.3333**4) * PI / 64)
!
force modify direct general_force  &
   general_force_name = .test_analysis_1.Upper_DP_Group18_contactA  &
   i_marker_name = ("Upper_DP_Group" // 18 // "_A.end_A")  &
   ref_marker_name = ("Upper_DP_Group" // 18 // "_sliderA.cm")  &
   user_function =   &
      (.test_analysis_1.Impact_Exponent),  &
      (.test_analysis_1.Impact_Penetration),  &
      0.5833,  &
      75.0,  &
      (31.0 * 0.5 * 2 / 3),  &
      1.2  &
   routine = "adrill_solver::StringForces"
!
force modify direct general_force  &
   general_force_name = .test_analysis_1.Upper_DP_Group18_contactB  &
   i_marker_name = ("Upper_DP_Group" // 18 // "_B.cm")  &
   ref_marker_name = ("Upper_DP_Group" // 18 // "_sliderB.cm")  &
   user_function =   &
      (.test_analysis_1.Impact_Exponent),  &
      (.test_analysis_1.Impact_Penetration),  &
      0.5,  &
      75.0,  &
      (31.0 * 0.5 / 3),  &
      1.2  &
   routine = "adrill_solver::StringForces"
!
force modify direct force_vector  &
   force_vector_name = .test_analysis_1.Upper_DP_Group18_fluidmassA  &
   i_marker_name = ("Upper_DP_Group" // 18 // "_A.cm")  &
   ref_marker_name = ("Upper_DP_Group" // 18 // "_A.cm")
!
force modify direct force_vector  &
   force_vector_name = .test_analysis_1.Upper_DP_Group18_fluidmassC  &
   i_marker_name = ("Upper_DP_Group" // 18 // "_C.cm")  &
   ref_marker_name = ("Upper_DP_Group" // 18 // "_C.cm")
!
force modify direct force_vector  &
   force_vector_name = .test_analysis_1.Upper_DP_Group18_fluidmassB  &
   i_marker_name = ("Upper_DP_Group" // 18 // "_B.cm")  &
   ref_marker_name = ("Upper_DP_Group" // 18 // "_B.cm")
!
geometry modify shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group19_A.cyl1  &
   radius = (0.5833 / 2)
!
geometry modify shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group19_A.cyl1a  &
   radius = (0.5833 / 2 * 1.01)
!
geometry modify shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group19_A.cyl2  &
   length = (-31.0 / 4 + 1.0)  &
   radius = (0.4167 / 2)
!
geometry modify shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group19_A.cyl2a  &
   length = (-31.0 / 4 + 1.0)  &
   radius = (0.4167 / 2 * 1.01)
!
marker modify  &
   marker_name = .test_analysis_1.Upper_DP_Group19_B.cm  &
   location =   &
      0.0,  &
      0.0,  &
      (-31.0 / 4)  &
   relative_to = .test_analysis_1.Upper_DP_Group19_B
!
defaults coordinate_system  &
   default_coordinate_system = .test_analysis_1.ground
!
marker modify  &
   marker_name = .test_analysis_1.Upper_DP_Group19_B.end_beamB  &
   location =   &
      0.0,  &
      0.0,  &
      (-31.0 / 4)  &
   relative_to = .test_analysis_1.Upper_DP_Group19_B
!
defaults coordinate_system  &
   default_coordinate_system = .test_analysis_1.ground
!
geometry modify shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group19_B.cyl1  &
   center_marker = ("Upper_DP_Group" // 19 // "_B.end_B")  &
   length = (-31.0 / 2)  &
   radius = (0.4167 / 2)
!
geometry modify shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group19_B.cyl1a  &
   center_marker = ("Upper_DP_Group" // 19 // "_B.end_B")  &
   length = (-31.0 / 2)  &
   radius = (0.4167 / 2 * 1.01)
!
geometry modify curve circle  &
   circle_name = .test_analysis_1.Upper_DP_Group19_B.rub1  &
   center_marker = ("Upper_DP_Group" // 19 // "_B.cm")  &
   radius = (0.5 / 2)
!
part modify rigid_body mass_properties  &
   part_name = .test_analysis_1.Upper_DP_Group19_B  &
   center_of_mass_marker = ("Upper_DP_Group" // 19 // "_B.cm")
!
geometry modify shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group19_C.cyl1a  &
   radius = (0.5833 / 2 * 1.01)
!
geometry modify shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group19_C.cyl1  &
   radius = (0.5833 / 2)
!
geometry modify shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group19_C.cyl2  &
   length = (-(31.0 / 4 - 1.0))  &
   radius = (0.4167 / 2)
!
geometry modify shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group19_C.cyl2a  &
   length = (-(31.0 / 4 - 1.0))  &
   radius = (0.4167 / 2 * 1.01)
!
geometry modify shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group19_sliderA.Upper_DP_Group19_sliderAgraphic  &
   center_marker = ("Upper_DP_Group" // 19 // "_sliderA.A2")
!
geometry modify curve circle  &
   circle_name = .test_analysis_1.Upper_DP_Group19_sliderA.ghole  &
   center_marker = ("Upper_DP_Group" // 19 // "_sliderA.cm")
!
geometry modify shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group19_sliderB.Upper_DP_Group19_sliderBgraphic  &
   center_marker = ("Upper_DP_Group" // 19 // "_sliderB.B2")
!
geometry modify curve circle  &
   circle_name = .test_analysis_1.Upper_DP_Group19_sliderB.ghole  &
   center_marker = ("Upper_DP_Group" // 19 // "_sliderB.cm")
!
constraint modify higher_pair_contact point_curve  &
   point_curve_name = .test_analysis_1.PTCV_Upper_DP_Group19_A1  &
   i_marker_name = ("Upper_DP_Group" // 19 // "_sliderA.A1")
!
constraint modify higher_pair_contact point_curve  &
   point_curve_name = .test_analysis_1.PTCV_Upper_DP_Group19_A2  &
   i_marker_name = ("Upper_DP_Group" // 19 // "_sliderA.A2")
!
constraint modify higher_pair_contact point_curve  &
   point_curve_name = .test_analysis_1.PTCV_Upper_DP_Group19_B1  &
   i_marker_name = ("Upper_DP_Group" // 19 // "_sliderB.B1")
!
constraint modify higher_pair_contact point_curve  &
   point_curve_name = .test_analysis_1.PTCV_Upper_DP_Group19_B2  &
   i_marker_name = ("Upper_DP_Group" // 19 // "_sliderB.B2")
!
force modify direct torque_vector  &
   torque_vector_name = .test_analysis_1.Upper_DP_Group19_sliderA_damper  &
   i_marker_name = ("Upper_DP_Group" // 19 // "_sliderA.cm")  &
   ref_marker_name = ("Upper_DP_Group" // 19 // "_sliderA.cm")
!
force modify direct torque_vector  &
   torque_vector_name = .test_analysis_1.Upper_DP_Group19_sliderB_damper  &
   i_marker_name = ("Upper_DP_Group" // 19 // "_sliderB.cm")  &
   ref_marker_name = ("Upper_DP_Group" // 19 // "_sliderB.cm")
!
force modify direct force_vector  &
   force_vector_name = .test_analysis_1.Upper_DP_Group19_sliderA_locator  &
   i_marker_name = ("Upper_DP_Group" // 19 // "_A.end_A")  &
   ref_marker_name = ("Upper_DP_Group" // 19 // "_A.end_A")
!
force modify direct force_vector  &
   force_vector_name = .test_analysis_1.Upper_DP_Group19_sliderB_locator  &
   i_marker_name = ("Upper_DP_Group" // 19 // "_B.cm")  &
   ref_marker_name = ("Upper_DP_Group" // 19 // "_B.cm")
!
force modify element_like beam  &
   beam_name = .test_analysis_1.BeamAB_Upper_DP_Group19  &
   area_of_cross_section = ((0.4167**2 - 0.3333**2) * PI / 4)  &
   youngs_modulus = (.test_analysis_1.YoungsModulus)  &
   shear_modulus = (.test_analysis_1.ShearModulus)  &
   ixx = ((0.4167**4 - 0.3333**4) * PI / 32)  &
   iyy = ((0.4167**4 - 0.3333**4) * PI / 64)  &
   izz = ((0.4167**4 - 0.3333**4) * PI / 64)
!
force modify element_like beam  &
   beam_name = .test_analysis_1.BeamBC_Upper_DP_Group19  &
   area_of_cross_section = ((0.4167**2 - 0.3333**2) * PI / 4)  &
   youngs_modulus = (.test_analysis_1.YoungsModulus)  &
   shear_modulus = (.test_analysis_1.ShearModulus)  &
   ixx = ((0.4167**4 - 0.3333**4) * PI / 32)  &
   iyy = ((0.4167**4 - 0.3333**4) * PI / 64)  &
   izz = ((0.4167**4 - 0.3333**4) * PI / 64)
!
force modify direct general_force  &
   general_force_name = .test_analysis_1.Upper_DP_Group19_contactA  &
   i_marker_name = ("Upper_DP_Group" // 19 // "_A.end_A")  &
   ref_marker_name = ("Upper_DP_Group" // 19 // "_sliderA.cm")  &
   user_function =   &
      (.test_analysis_1.Impact_Exponent),  &
      (.test_analysis_1.Impact_Penetration),  &
      0.5833,  &
      75.0,  &
      (31.0 * 0.5 * 2 / 3),  &
      1.2  &
   routine = "adrill_solver::StringForces"
!
force modify direct general_force  &
   general_force_name = .test_analysis_1.Upper_DP_Group19_contactB  &
   i_marker_name = ("Upper_DP_Group" // 19 // "_B.cm")  &
   ref_marker_name = ("Upper_DP_Group" // 19 // "_sliderB.cm")  &
   user_function =   &
      (.test_analysis_1.Impact_Exponent),  &
      (.test_analysis_1.Impact_Penetration),  &
      0.5,  &
      75.0,  &
      (31.0 * 0.5 / 3),  &
      1.2  &
   routine = "adrill_solver::StringForces"
!
force modify direct force_vector  &
   force_vector_name = .test_analysis_1.Upper_DP_Group19_fluidmassA  &
   i_marker_name = ("Upper_DP_Group" // 19 // "_A.cm")  &
   ref_marker_name = ("Upper_DP_Group" // 19 // "_A.cm")
!
force modify direct force_vector  &
   force_vector_name = .test_analysis_1.Upper_DP_Group19_fluidmassC  &
   i_marker_name = ("Upper_DP_Group" // 19 // "_C.cm")  &
   ref_marker_name = ("Upper_DP_Group" // 19 // "_C.cm")
!
force modify direct force_vector  &
   force_vector_name = .test_analysis_1.Upper_DP_Group19_fluidmassB  &
   i_marker_name = ("Upper_DP_Group" // 19 // "_B.cm")  &
   ref_marker_name = ("Upper_DP_Group" // 19 // "_B.cm")
!
geometry modify shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group20_A.cyl1  &
   radius = (0.5833 / 2)
!
geometry modify shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group20_A.cyl1a  &
   radius = (0.5833 / 2 * 1.01)
!
geometry modify shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group20_A.cyl2  &
   length = (-31.0 / 4 + 1.0)  &
   radius = (0.4167 / 2)
!
geometry modify shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group20_A.cyl2a  &
   length = (-31.0 / 4 + 1.0)  &
   radius = (0.4167 / 2 * 1.01)
!
marker modify  &
   marker_name = .test_analysis_1.Upper_DP_Group20_B.cm  &
   location =   &
      0.0,  &
      0.0,  &
      (-31.0 / 4)  &
   relative_to = .test_analysis_1.Upper_DP_Group20_B
!
defaults coordinate_system  &
   default_coordinate_system = .test_analysis_1.ground
!
marker modify  &
   marker_name = .test_analysis_1.Upper_DP_Group20_B.end_beamB  &
   location =   &
      0.0,  &
      0.0,  &
      (-31.0 / 4)  &
   relative_to = .test_analysis_1.Upper_DP_Group20_B
!
defaults coordinate_system  &
   default_coordinate_system = .test_analysis_1.ground
!
geometry modify shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group20_B.cyl1  &
   center_marker = ("Upper_DP_Group" // 20 // "_B.end_B")  &
   length = (-31.0 / 2)  &
   radius = (0.4167 / 2)
!
geometry modify shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group20_B.cyl1a  &
   center_marker = ("Upper_DP_Group" // 20 // "_B.end_B")  &
   length = (-31.0 / 2)  &
   radius = (0.4167 / 2 * 1.01)
!
geometry modify curve circle  &
   circle_name = .test_analysis_1.Upper_DP_Group20_B.rub1  &
   center_marker = ("Upper_DP_Group" // 20 // "_B.cm")  &
   radius = (0.5 / 2)
!
part modify rigid_body mass_properties  &
   part_name = .test_analysis_1.Upper_DP_Group20_B  &
   center_of_mass_marker = ("Upper_DP_Group" // 20 // "_B.cm")
!
geometry modify shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group20_C.cyl1a  &
   radius = (0.5833 / 2 * 1.01)
!
geometry modify shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group20_C.cyl1  &
   radius = (0.5833 / 2)
!
geometry modify shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group20_C.cyl2  &
   length = (-(31.0 / 4 - 1.0))  &
   radius = (0.4167 / 2)
!
geometry modify shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group20_C.cyl2a  &
   length = (-(31.0 / 4 - 1.0))  &
   radius = (0.4167 / 2 * 1.01)
!
geometry modify shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group20_sliderA.Upper_DP_Group20_sliderAgraphic  &
   center_marker = ("Upper_DP_Group" // 20 // "_sliderA.A2")
!
geometry modify curve circle  &
   circle_name = .test_analysis_1.Upper_DP_Group20_sliderA.ghole  &
   center_marker = ("Upper_DP_Group" // 20 // "_sliderA.cm")
!
geometry modify shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group20_sliderB.Upper_DP_Group20_sliderBgraphic  &
   center_marker = ("Upper_DP_Group" // 20 // "_sliderB.B2")
!
geometry modify curve circle  &
   circle_name = .test_analysis_1.Upper_DP_Group20_sliderB.ghole  &
   center_marker = ("Upper_DP_Group" // 20 // "_sliderB.cm")
!
geometry modify shape cylinder  &
   cylinder_name = .test_analysis_1.Upper_DP_Group20_sliderC.Upper_DP_Group20_sliderCgraphic  &
   center_marker = ("Upper_DP_Group" // 20 // "_sliderC.C2")
!
geometry modify curve circle  &
   circle_name = .test_analysis_1.Upper_DP_Group20_sliderC.ghole  &
   center_marker = ("Upper_DP_Group" // 20 // "_sliderC.cm")
!
constraint modify higher_pair_contact point_curve  &
   point_curve_name = .test_analysis_1.PTCV_Upper_DP_Group20_A1  &
   i_marker_name = ("Upper_DP_Group" // 20 // "_sliderA.A1")
!
constraint modify higher_pair_contact point_curve  &
   point_curve_name = .test_analysis_1.PTCV_Upper_DP_Group20_A2  &
   i_marker_name = ("Upper_DP_Group" // 20 // "_sliderA.A2")
!
constraint modify higher_pair_contact point_curve  &
   point_curve_name = .test_analysis_1.PTCV_Upper_DP_Group20_B1  &
   i_marker_name = ("Upper_DP_Group" // 20 // "_sliderB.B1")
!
constraint modify higher_pair_contact point_curve  &
   point_curve_name = .test_analysis_1.PTCV_Upper_DP_Group20_B2  &
   i_marker_name = ("Upper_DP_Group" // 20 // "_sliderB.B2")
!
constraint modify higher_pair_contact point_curve  &
   point_curve_name = .test_analysis_1.PTCV_Upper_DP_Group20_C1  &
   i_marker_name = ("Upper_DP_Group" // 20 // "_sliderC.C1")
!
constraint modify higher_pair_contact point_curve  &
   point_curve_name = .test_analysis_1.PTCV_Upper_DP_Group20_C2  &
   i_marker_name = ("Upper_DP_Group" // 20 // "_sliderC.C2")
!
force modify direct torque_vector  &
   torque_vector_name = .test_analysis_1.Upper_DP_Group20_sliderA_damper  &
   i_marker_name = ("Upper_DP_Group" // 20 // "_sliderA.cm")  &
   ref_marker_name = ("Upper_DP_Group" // 20 // "_sliderA.cm")
!
force modify direct torque_vector  &
   torque_vector_name = .test_analysis_1.Upper_DP_Group20_sliderB_damper  &
   i_marker_name = ("Upper_DP_Group" // 20 // "_sliderB.cm")  &
   ref_marker_name = ("Upper_DP_Group" // 20 // "_sliderB.cm")
!
force modify direct torque_vector  &
   torque_vector_name = .test_analysis_1.Upper_DP_Group20_sliderC_damper  &
   i_marker_name = ("Upper_DP_Group" // 20 // "_sliderC.cm")  &
   ref_marker_name = ("Upper_DP_Group" // 20 // "_sliderC.cm")
!
force modify direct force_vector  &
   force_vector_name = .test_analysis_1.Upper_DP_Group20_sliderA_locator  &
   i_marker_name = ("Upper_DP_Group" // 20 // "_A.end_A")  &
   ref_marker_name = ("Upper_DP_Group" // 20 // "_A.end_A")
!
force modify direct force_vector  &
   force_vector_name = .test_analysis_1.Upper_DP_Group20_sliderB_locator  &
   i_marker_name = ("Upper_DP_Group" // 20 // "_B.cm")  &
   ref_marker_name = ("Upper_DP_Group" // 20 // "_B.cm")
!
force modify direct force_vector  &
   force_vector_name = .test_analysis_1.Upper_DP_Group20_sliderC_locator  &
   i_marker_name = ("Upper_DP_Group" // 20 // "_C.end_C")  &
   ref_marker_name = ("Upper_DP_Group" // 20 // "_C.end_C")
!
force modify element_like beam  &
   beam_name = .test_analysis_1.BeamAB_Upper_DP_Group20  &
   area_of_cross_section = ((0.4167**2 - 0.3333**2) * PI / 4)  &
   youngs_modulus = (.test_analysis_1.YoungsModulus)  &
   shear_modulus = (.test_analysis_1.ShearModulus)  &
   ixx = ((0.4167**4 - 0.3333**4) * PI / 32)  &
   iyy = ((0.4167**4 - 0.3333**4) * PI / 64)  &
   izz = ((0.4167**4 - 0.3333**4) * PI / 64)
!
force modify element_like beam  &
   beam_name = .test_analysis_1.BeamBC_Upper_DP_Group20  &
   area_of_cross_section = ((0.4167**2 - 0.3333**2) * PI / 4)  &
   youngs_modulus = (.test_analysis_1.YoungsModulus)  &
   shear_modulus = (.test_analysis_1.ShearModulus)  &
   ixx = ((0.4167**4 - 0.3333**4) * PI / 32)  &
   iyy = ((0.4167**4 - 0.3333**4) * PI / 64)  &
   izz = ((0.4167**4 - 0.3333**4) * PI / 64)
!
force modify direct general_force  &
   general_force_name = .test_analysis_1.Upper_DP_Group20_contactA  &
   i_marker_name = ("Upper_DP_Group" // 20 // "_A.end_A")  &
   ref_marker_name = ("Upper_DP_Group" // 20 // "_sliderA.cm")  &
   user_function =   &
      (.test_analysis_1.Impact_Exponent),  &
      (.test_analysis_1.Impact_Penetration),  &
      0.5833,  &
      75.0,  &
      (31.0 * 0.5 * 2 / 3),  &
      1.2  &
   routine = "adrill_solver::StringForces"
!
force modify direct general_force  &
   general_force_name = .test_analysis_1.Upper_DP_Group20_contactB  &
   i_marker_name = ("Upper_DP_Group" // 20 // "_B.cm")  &
   ref_marker_name = ("Upper_DP_Group" // 20 // "_sliderB.cm")  &
   user_function =   &
      (.test_analysis_1.Impact_Exponent),  &
      (.test_analysis_1.Impact_Penetration),  &
      0.5,  &
      75.0,  &
      (31.0 * 0.5 / 3),  &
      1.2  &
   routine = "adrill_solver::StringForces"
!
variable modify  &
   variable_name = .test_analysis_1.TOS_direction_marker  &
   object_value = ("Upper_DP_Group" // 20 // "_sliderC.cm")
!
force modify direct general_force  &
   general_force_name = .test_analysis_1.Upper_DP_Group20_contactC  &
   i_marker_name = ("Upper_DP_Group" // 20 // "_C.end_C")  &
   ref_marker_name = ("Upper_DP_Group" // 20 // "_sliderC.cm")  &
   user_function =   &
      (.test_analysis_1.Impact_Exponent),  &
      (.test_analysis_1.Impact_Penetration),  &
      0.5833,  &
      75.0,  &
      (31.0 * 0.5 / 3),  &
      1.2  &
   routine = "adrill_solver::StringForces"
!
force modify direct force_vector  &
   force_vector_name = .test_analysis_1.Upper_DP_Group20_fluidmassA  &
   i_marker_name = ("Upper_DP_Group" // 20 // "_A.cm")  &
   ref_marker_name = ("Upper_DP_Group" // 20 // "_A.cm")
!
force modify direct force_vector  &
   force_vector_name = .test_analysis_1.Upper_DP_Group20_fluidmassC  &
   i_marker_name = ("Upper_DP_Group" // 20 // "_C.cm")  &
   ref_marker_name = ("Upper_DP_Group" // 20 // "_C.cm")
!
force modify direct force_vector  &
   force_vector_name = .test_analysis_1.Upper_DP_Group20_fluidmassB  &
   i_marker_name = ("Upper_DP_Group" // 20 // "_B.cm")  &
   ref_marker_name = ("Upper_DP_Group" // 20 // "_B.cm")
!
force modify element_like bushing  &
   bushing_name = .test_analysis_1.Upper_DP_Group20_TOSbushing  &
   i_marker_name = ("Upper_DP_Group" // 20 // "_C.end_C")  &
   j_marker_name = ("Upper_DP_Group" // 20 // "_sliderC.cm")
!
force modify direct general_force  &
   general_force_name = .test_analysis_1.Upper_DP_Group20_TOSdamper  &
   i_marker_name = ("Upper_DP_Group" // 20 // "_C.end_C")  &
   ref_marker_name = ("Upper_DP_Group" // 20 // "_sliderC.cm")
!
variable modify  &
   variable_name = .test_analysis_1.CVtilde  &
   real_value = (6000.0 / 4 / 105.3068006915)
!
data_element modify array ic_array  &
   array_name = .test_analysis_1.Holedata  &
   numbers =   &
      (.test_analysis_1.HoleCoords.ID),  &
      1.0,  &
      (.test_analysis_1.ground.adrill_origin.ID),  &
      9002.0,  &
      (.test_analysis_1.Hole_Bottom.cm.ID),  &
      (.test_analysis_1.BitMD.ID),  &
      (STOO(.test_analysis_1.BitName // ".end").adams_ID),  &
      (STOO(.test_analysis_1.BitSliderMarker).adams_ID),  &
      (STOO(.test_analysis_1.BitName // ".LateralRef").adams_ID),  &
      (.test_analysis_1.HoleIDspl.adams_ID),  &
      (.test_analysis_1.WallKspl.adams_ID),  &
      (.test_analysis_1.WallCspl.adams_ID),  &
      (.test_analysis_1.Static_Muspl.adams_ID),  &
      (.test_analysis_1.Static_Vspl.adams_ID),  &
      (.test_analysis_1.Dynamic_Muspl.adams_ID),  &
      (.test_analysis_1.Dynamic_Vspl.adams_ID),  &
      9003.0
!
model display  &
   model_name = test_analysis_1
