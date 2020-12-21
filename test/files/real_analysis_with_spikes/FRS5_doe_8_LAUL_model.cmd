!
!-------------------------- Default Units for Model ---------------------------!
!
!
defaults units  &
   length = mm  &
   angle = deg  &
   force = newton  &
   mass = kg  &
   time = sec
!
defaults units  &
   coordinate_system_type = cartesian  &
   orientation_type = body313
!
!--------------------------- Model Specific Colors ----------------------------!
!
!
if condition = (! db_exists(".colors.COLOR_R051G153B051"))
!
color create  &
   color_name = .colors.COLOR_R051G153B051  &
   red_component = 0.2  &
   blue_component = 0.2  &
   green_component = 0.6
!
else 
!
color modify  &
   color_name = .colors.COLOR_R051G153B051  &
   red_component = 0.2  &
   blue_component = 0.2  &
   green_component = 0.6
!
end 
!
if condition = (! db_exists(".colors.COLOR_R051G153B102"))
!
color create  &
   color_name = .colors.COLOR_R051G153B102  &
   red_component = 0.2  &
   blue_component = 0.4  &
   green_component = 0.6
!
else 
!
color modify  &
   color_name = .colors.COLOR_R051G153B102  &
   red_component = 0.2  &
   blue_component = 0.4  &
   green_component = 0.6
!
end 
!
if condition = (! db_exists(".colors.COLOR_R255G102B000"))
!
color create  &
   color_name = .colors.COLOR_R255G102B000  &
   red_component = 1.0  &
   blue_component = 0.0  &
   green_component = 0.4
!
else 
!
color modify  &
   color_name = .colors.COLOR_R255G102B000  &
   red_component = 1.0  &
   blue_component = 0.0  &
   green_component = 0.4
!
end 
!
if condition = (! db_exists(".colors.COLOR_R102G000B153"))
!
color create  &
   color_name = .colors.COLOR_R102G000B153  &
   red_component = 0.4  &
   blue_component = 0.6  &
   green_component = 0.0
!
else 
!
color modify  &
   color_name = .colors.COLOR_R102G000B153  &
   red_component = 0.4  &
   blue_component = 0.6  &
   green_component = 0.0
!
end 
!
if condition = (! db_exists(".colors.COLOR_R255G000B255"))
!
color create  &
   color_name = .colors.COLOR_R255G000B255  &
   red_component = 1.0  &
   blue_component = 1.0  &
   green_component = 0.0
!
else 
!
color modify  &
   color_name = .colors.COLOR_R255G000B255  &
   red_component = 1.0  &
   blue_component = 1.0  &
   green_component = 0.0
!
end 
!
if condition = (! db_exists(".colors.COLOR_R153G000B000"))
!
color create  &
   color_name = .colors.COLOR_R153G000B000  &
   red_component = 0.6  &
   blue_component = 0.0  &
   green_component = 0.0
!
else 
!
color modify  &
   color_name = .colors.COLOR_R153G000B000  &
   red_component = 0.6  &
   blue_component = 0.0  &
   green_component = 0.0
!
end 
!
if condition = (! db_exists(".colors.COLOR_R068G137B035"))
!
color create  &
   color_name = .colors.COLOR_R068G137B035  &
   red_component = 0.2699931334  &
   blue_component = 0.1399862669  &
   green_component = 0.5399862669
!
else 
!
color modify  &
   color_name = .colors.COLOR_R068G137B035  &
   red_component = 0.2699931334  &
   blue_component = 0.1399862669  &
   green_component = 0.5399862669
!
end 
!
if condition = (! db_exists(".colors.COLOR_R114G012B132"))
!
color create  &
   color_name = .colors.COLOR_R114G012B132  &
   red_component = 0.4499885557  &
   blue_component = 0.5199969482  &
   green_component = 4.9988555734E-02
!
else 
!
color modify  &
   color_name = .colors.COLOR_R114G012B132  &
   red_component = 0.4499885557  &
   blue_component = 0.5199969482  &
   green_component = 4.9988555734E-02
!
end 
!
if condition = (! db_exists(".colors.COLOR_R191G191B191"))
!
color create  &
   color_name = .colors.COLOR_R191G191B191  &
   red_component = 0.7529411765  &
   blue_component = 0.7529411765  &
   green_component = 0.7529411765
!
else 
!
color modify  &
   color_name = .colors.COLOR_R191G191B191  &
   red_component = 0.7529411765  &
   blue_component = 0.7529411765  &
   green_component = 0.7529411765
!
end 
!
if condition = (! db_exists(".colors.COLOR_R107G107B255"))
!
color create  &
   color_name = .colors.COLOR_R107G107B255  &
   red_component = 0.4196078431  &
   blue_component = 1.0  &
   green_component = 0.4196078431
!
else 
!
color modify  &
   color_name = .colors.COLOR_R107G107B255  &
   red_component = 0.4196078431  &
   blue_component = 1.0  &
   green_component = 0.4196078431
!
end 
!
if condition = (! db_exists(".colors.COLOR_R255G127B000"))
!
color create  &
   color_name = .colors.COLOR_R255G127B000  &
   red_component = 1.0  &
   blue_component = 0.0  &
   green_component = 0.4999923705
!
else 
!
color modify  &
   color_name = .colors.COLOR_R255G127B000  &
   red_component = 1.0  &
   blue_component = 0.0  &
   green_component = 0.4999923705
!
end 
!
if condition = (! db_exists(".colors.COLOR_R137G063B063"))
!
color create  &
   color_name = .colors.COLOR_R137G063B063  &
   red_component = 0.5399862669  &
   blue_component = 0.2499885557  &
   green_component = 0.2499885557
!
else 
!
color modify  &
   color_name = .colors.COLOR_R137G063B063  &
   red_component = 0.5399862669  &
   blue_component = 0.2499885557  &
   green_component = 0.2499885557
!
end 
!
if condition = (! db_exists(".colors.COLOR_R255G101B101"))
!
color create  &
   color_name = .colors.COLOR_R255G101B101  &
   red_component = 1.0  &
   blue_component = 0.3997863737  &
   green_component = 0.3997863737
!
else 
!
color modify  &
   color_name = .colors.COLOR_R255G101B101  &
   red_component = 1.0  &
   blue_component = 0.3997863737  &
   green_component = 0.3997863737
!
end 
!
if condition = (! db_exists(".colors.COLOR_R051G170B119"))
!
color create  &
   color_name = .colors.COLOR_R051G170B119  &
   red_component = 0.2  &
   blue_component = 0.47  &
   green_component = 0.67
!
else 
!
color modify  &
   color_name = .colors.COLOR_R051G170B119  &
   red_component = 0.2  &
   blue_component = 0.47  &
   green_component = 0.67
!
end 
!
if condition = (! db_exists(".colors.COLOR_R000G204B102"))
!
color create  &
   color_name = .colors.COLOR_R000G204B102  &
   red_component = 0.0  &
   blue_component = 0.4  &
   green_component = 0.8
!
else 
!
color modify  &
   color_name = .colors.COLOR_R000G204B102  &
   red_component = 0.0  &
   blue_component = 0.4  &
   green_component = 0.8
!
end 
!
!------------------------ Default Attributes for Model ------------------------!
!
!
defaults attributes  &
   inheritance = bottom_up  &
   icon_visibility = off  &
   grid_visibility = off  &
   size_of_icons = 10.0  &
   spacing_for_grid = 1000.0
!
!------------------------------ Adams View Model ------------------------------!
!
!
model create  &
   model_name = FRS5_doe_8_LAUL
!
model attributes  &
   model_name = .FRS5_doe_8_LAUL  &
   size_of_icons = 7.0
!
view erase
!
!-------------------------------- Data storage --------------------------------!
!
!
data_element create variable  &
   variable_name = .FRS5_doe_8_LAUL.upper_surface  &
   adams_id = 2  &
   initial_condition = 21.0  &
   function = ""
!
data_element create variable  &
   variable_name = .FRS5_doe_8_LAUL.lower_surface  &
   adams_id = 1  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .FRS5_doe_8_LAUL.KU1fwd  &
   adams_id = 3  &
   function = ""
!
data_element create variable  &
   variable_name = .FRS5_doe_8_LAUL.KU2fwd  &
   adams_id = 4  &
   function = ""
!
data_element create variable  &
   variable_name = .FRS5_doe_8_LAUL.KU3fwd  &
   adams_id = 5  &
   function = ""
!
data_element create variable  &
   variable_name = .FRS5_doe_8_LAUL.KU4fwd  &
   adams_id = 6  &
   function = ""
!
data_element create variable  &
   variable_name = .FRS5_doe_8_LAUL.KU4aft  &
   adams_id = 7  &
   function = ""
!
data_element create variable  &
   variable_name = .FRS5_doe_8_LAUL.KU3aft  &
   adams_id = 8  &
   function = ""
!
data_element create variable  &
   variable_name = .FRS5_doe_8_LAUL.KU2aft  &
   adams_id = 9  &
   function = ""
!
data_element create variable  &
   variable_name = .FRS5_doe_8_LAUL.KU1aft  &
   adams_id = 10  &
   function = ""
!
data_element create variable  &
   variable_name = .FRS5_doe_8_LAUL.KU1trail  &
   adams_id = 11  &
   function = ""
!
data_element create variable  &
   variable_name = .FRS5_doe_8_LAUL.KU2trail  &
   adams_id = 12  &
   function = ""
!
data_element create variable  &
   variable_name = .FRS5_doe_8_LAUL.KU3trail  &
   adams_id = 13  &
   function = ""
!
data_element create variable  &
   variable_name = .FRS5_doe_8_LAUL.KU4trail  &
   adams_id = 14  &
   function = ""
!
data_element create variable  &
   variable_name = .FRS5_doe_8_LAUL.KU5aft  &
   adams_id = 15  &
   function = ""
!
data_element create variable  &
   variable_name = .FRS5_doe_8_LAUL.KU5fwd  &
   adams_id = 16  &
   function = ""
!
data_element create variable  &
   variable_name = .FRS5_doe_8_LAUL.TimeSinceUprStop  &
   adams_id = 1000  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .FRS5_doe_8_LAUL.LoadingRotation  &
   adams_id = 1001  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .FRS5_doe_8_LAUL.SpinUp  &
   adams_id = 1002  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .FRS5_doe_8_LAUL.UprSwitch  &
   adams_id = 2000  &
   initial_condition = 1.0  &
   function = ""
!
data_element create variable  &
   variable_name = .FRS5_doe_8_LAUL.LwrSwitch  &
   adams_id = 2001  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .FRS5_doe_8_LAUL.KL2fwd  &
   adams_id = 1003  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .FRS5_doe_8_LAUL.KL3fwd  &
   adams_id = 1004  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .FRS5_doe_8_LAUL.KL4fwd  &
   adams_id = 1005  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .FRS5_doe_8_LAUL.KL5fwd  &
   adams_id = 1006  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .FRS5_doe_8_LAUL.KL2aft  &
   adams_id = 1007  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .FRS5_doe_8_LAUL.KL3aft  &
   adams_id = 1008  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .FRS5_doe_8_LAUL.KL4aft  &
   adams_id = 1009  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .FRS5_doe_8_LAUL.KL5aft  &
   adams_id = 1010  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .FRS5_doe_8_LAUL.KL3trail  &
   adams_id = 1011  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .FRS5_doe_8_LAUL.KL4trail  &
   adams_id = 1012  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .FRS5_doe_8_LAUL.KL5trail  &
   adams_id = 1013  &
   initial_condition = 0.0  &
   function = ""
!
data_element create matrix full  &
   matrix_name = .FRS5_doe_8_LAUL.straight_line  &
   adams_id = 1  &
   input_order = by_row  &
   row_count = 5  &
   column_count = 3  &
   values =  &
      -300.0, 0.0, 0.0,  &
      0.0, 0.0, 0.0,  &
      300.0, 0.0, 0.0,  &
      600.0, 0.0, 0.0,  &
      900.0, 0.0, 0.0  &
   units = "length"
!
data_element create matrix full  &
   matrix_name = .FRS5_doe_8_LAUL.lower_straight  &
   adams_id = 4  &
   input_order = by_row  &
   row_count = 5  &
   column_count = 3  &
   values =  &
      400.0, 0.0, 0.0,  &
      200.0, 0.0, 0.0,  &
      0.0, 0.0, 0.0,  &
      -200.0, 0.0, 0.0,  &
      -400.0, 0.0, 0.0
!
data_element create curve  &
   curve_name = .FRS5_doe_8_LAUL.rail_curve  &
   adams_id = 1  &
   closed = no  &
   tension = 5.0E-02  &
   matrix_name = .FRS5_doe_8_LAUL.straight_line  &
   fit_type = curve_points  &
   interpolation_order = 2
!
data_element create curve  &
   curve_name = .FRS5_doe_8_LAUL.lower_rail_curve  &
   adams_id = 2  &
   closed = no  &
   tension = 5.0E-02  &
   matrix_name = .FRS5_doe_8_LAUL.lower_straight  &
   fit_type = curve_points  &
   interpolation_order = 4
!
!--------------------------------- Materials ----------------------------------!
!
!
material create  &
   material_name = .FRS5_doe_8_LAUL.steel  &
   adams_id = 5  &
   density = 7.801E-06  &
   youngs_modulus = 2.07E+05  &
   poissons_ratio = 0.29
!
material create  &
   material_name = .FRS5_doe_8_LAUL.aluminum  &
   adams_id = 3  &
   density = 2.74E-06  &
   youngs_modulus = 7.1705E+04  &
   poissons_ratio = 0.33
!
material create  &
   material_name = .FRS5_doe_8_LAUL.brass  &
   adams_id = 2  &
   density = 8.545E-06  &
   youngs_modulus = 1.06E+05  &
   poissons_ratio = 0.324
!
material create  &
   material_name = .FRS5_doe_8_LAUL.steel_2  &
   adams_id = 4  &
   density = 7.801E-06  &
   youngs_modulus = 2.07E+05  &
   poissons_ratio = 0.29
!
material create  &
   material_name = .FRS5_doe_8_LAUL.cast_iron  &
   adams_id = 6  &
   density = 7.08E-06  &
   youngs_modulus = 1.0E+05  &
   poissons_ratio = 0.211  &
   comments = "ASTM 35 Cast Iron"
!
material create  &
   material_name = .FRS5_doe_8_LAUL.steel_3  &
   adams_id = 1  &
   density = 7.801E-06  &
   youngs_modulus = 2.07E+05  &
   poissons_ratio = 0.29
!
material create  &
   material_name = .FRS5_doe_8_LAUL.wood  &
   adams_id = 7  &
   density = 4.38E-07  &
   youngs_modulus = 1.1E+04  &
   poissons_ratio = 0.33  &
   comments = "Douglas Fir"
!
material create  &
   material_name = .FRS5_doe_8_LAUL.steel_4  &
   adams_id = 8  &
   density = 7.801E-06  &
   youngs_modulus = 2.07E+05  &
   poissons_ratio = 0.29
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
   default_coordinate_system = .FRS5_doe_8_LAUL.ground
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.ground.refmark  &
   adams_id = 242  &
   location = 155.5, 236.37, 177.725  &
   orientation = 0.0d, 90.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.ground.refmark  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.ground.end1mark  &
   adams_id = 244  &
   location = 155.5, 236.37, 177.725  &
   orientation = 0.0d, 90.0d, 120.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.ground.end1mark  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.ground.end3mark  &
   adams_id = 245  &
   location = 155.5, 236.37, 177.725  &
   orientation = 0.0d, 90.0d, 120.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.ground.end3mark  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.ground.uscenter  &
   adams_id = 246  &
   location = 85.977568136, 236.37, 148.145  &
   orientation = 0.0d, 90.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.ground.uscenter  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.ground.lscenter  &
   adams_id = 247  &
   location = 127.98, 236.37, 75.3919330411  &
   orientation = 0.0d, 90.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.ground.lscenter  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.ground.sp1  &
   adams_id = 520  &
   location = 103.3613972081, 147.12, 228.029536929  &
   orientation = 0.0d, 90.0d, 30.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.ground.sp1  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.ground.MARKER_1640  &
   adams_id = 1640  &
   location = -0.115, 388.63, -83.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.ground.MARKER_1640  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.ground.B1CM  &
   adams_id = 1699  &
   location = 51.08, 228.67, 161.11  &
   orientation = 0.0d, 90.0d, 311.52d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.ground.B1CM  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.ground.B2CM  &
   adams_id = 1700  &
   location = 92.69, 228.67, 194.8  &
   orientation = 0.0d, 90.0d, 302.33d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.ground.B2CM  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.ground.B3CM  &
   adams_id = 1701  &
   location = 138.41, 228.67, 221.31  &
   orientation = 0.0d, 90.0d, 300.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.ground.B3CM  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.ground.B4CM  &
   adams_id = 1702  &
   location = 184.18, 228.67, 247.74  &
   orientation = 0.0d, 90.0d, 300.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.ground.B4CM  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.ground.L1CM  &
   adams_id = 1703  &
   location = 54.87, 201.67, 186.15  &
   orientation = 21.95d, 84.87d, 296.93d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.ground.L1CM  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.ground.L2CM  &
   adams_id = 1704  &
   location = 100.63, 201.67, 212.58  &
   orientation = 21.95d, 84.87d, 296.93d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.ground.L2CM  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.ground.L3CM  &
   adams_id = 1705  &
   location = 146.42, 201.67, 239.02  &
   orientation = 21.95d, 84.87d, 296.93d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.ground.L3CM  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.ground.L4CM  &
   adams_id = 1706  &
   location = 192.19, 201.67, 265.43  &
   orientation = 21.95d, 84.87d, 296.93d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.ground.L4CM  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.ground.P1CM  &
   adams_id = 1707  &
   location = 50.97, 87.98, 161.05  &
   orientation = 179.96d, 90.0d, 138.48d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.ground.P1CM  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.ground.P2CM  &
   adams_id = 1708  &
   location = 92.55, 87.98, 194.42  &
   orientation = 179.94d, 90.0d, 147.67d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.ground.P2CM  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.ground.P3CM  &
   adams_id = 1709  &
   location = 138.54, 87.98, 220.79  &
   orientation = 5.0E-02d, 90.0d, 299.95d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.ground.P3CM  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.ground.P4CM  &
   adams_id = 1710  &
   location = 184.29, 87.98, 247.21  &
   orientation = 180.04d, 90.0d, 150.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.ground.P4CM  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.ground.refmark_2  &
   adams_id = 2120  &
   location = 155.5, 236.37, 177.725  &
   orientation = 0.0d, 90.0d, 120.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.ground.refmark_2  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.ground.origin  &
   adams_id = 2121  &
   location = 155.5, 236.37, 177.725  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.ground.origin  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.ground.MARKER_2  &
   adams_id = 2122  &
   location = 151.4168548834, 236.37, 153.2554793961  &
   orientation = 180.0d, 90.0d, 8.2997626846d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.ground.MARKER_2  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.ground.MARKER_4  &
   adams_id = 2123  &
   location = 152.4222136925, 236.37, 153.10881766  &
   orientation = 180.0d, 90.0d, 8.2997626846d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.ground.MARKER_4  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.ground.end1mark_2  &
   adams_id = 2124  &
   location = 155.5, 236.37, 177.725  &
   orientation = 0.0d, 90.0d, 120.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.ground.end1mark_2  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.ground.end2mark  &
   adams_id = 2125  &
   location = 56.6290023534, 236.37, 112.9745913189  &
   orientation = 0.0d, 90.0d, 120.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.ground.end2mark  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.ground.end3mark_2  &
   adams_id = 2126  &
   location = 155.5, 236.37, 177.725  &
   orientation = 0.0d, 90.0d, 120.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.ground.end3mark_2  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.ground.end4mark  &
   adams_id = 2127  &
   location = 85.7290023534, 236.37, 62.5719128186  &
   orientation = 0.0d, 90.0d, 120.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.ground.end4mark  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.ground.uscenter_2  &
   adams_id = 2128  &
   location = 85.977568136, 236.37, 148.145  &
   orientation = 0.0d, 90.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.ground.uscenter_2  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.ground.lscenter_2  &
   adams_id = 2129  &
   location = 127.98, 236.37, 75.3919330411  &
   orientation = 0.0d, 90.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.ground.lscenter_2  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.ground.feed_pocket_ref  &
   location = 42.25, 213.75, 73.25  &
   orientation = 0.0d, 90.0d, 0.0d
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.ground.feed_boundary_ref  &
   location = -1.8178E-02, 213.75, 50.0086  &
   orientation = 0.0d, 90.0d, 0.0d
!
! ****** Floating Markers for current part ******
!
floating_marker create  &
   floating_marker_name = .FRS5_doe_8_LAUL.ground.FMARKER_759  &
   adams_id = 759
!
floating_marker create  &
   floating_marker_name = .FRS5_doe_8_LAUL.ground.FMARKER_1296  &
   adams_id = 1296
!
floating_marker create  &
   floating_marker_name = .FRS5_doe_8_LAUL.ground.FMARKER_1299  &
   adams_id = 1299
!
floating_marker create  &
   floating_marker_name = .FRS5_doe_8_LAUL.ground.FMARKER_1302  &
   adams_id = 1302
!
floating_marker create  &
   floating_marker_name = .FRS5_doe_8_LAUL.ground.FMARKER_2456  &
   adams_id = 2456
!
floating_marker create  &
   floating_marker_name = .FRS5_doe_8_LAUL.ground.FMARKER_3770  &
   adams_id = 3770
!
floating_marker create  &
   floating_marker_name = .FRS5_doe_8_LAUL.ground.FMARKER_3771  &
   adams_id = 3771
!
floating_marker create  &
   floating_marker_name = .FRS5_doe_8_LAUL.ground.FMARKER_3772  &
   adams_id = 3772
!
floating_marker create  &
   floating_marker_name = .FRS5_doe_8_LAUL.ground.FMARKER_3773  &
   adams_id = 3773
!
floating_marker create  &
   floating_marker_name = .FRS5_doe_8_LAUL.ground.FMARKER_4067  &
   adams_id = 4067
!
floating_marker create  &
   floating_marker_name = .FRS5_doe_8_LAUL.ground.FMARKER_4068  &
   adams_id = 4068
!
floating_marker create  &
   floating_marker_name = .FRS5_doe_8_LAUL.ground.FMARKER_4069  &
   adams_id = 4069
!
floating_marker create  &
   floating_marker_name = .FRS5_doe_8_LAUL.ground.FMARKER_4070  &
   adams_id = 4070
!
floating_marker create  &
   floating_marker_name = .FRS5_doe_8_LAUL.ground.FMARKER_4071  &
   adams_id = 4071
!
floating_marker create  &
   floating_marker_name = .FRS5_doe_8_LAUL.ground.FMARKER_4072  &
   adams_id = 4072
!
floating_marker create  &
   floating_marker_name = .FRS5_doe_8_LAUL.ground.FMARKER_4073  &
   adams_id = 4073
!
floating_marker create  &
   floating_marker_name = .FRS5_doe_8_LAUL.ground.FMARKER_4074  &
   adams_id = 4074
!
floating_marker create  &
   floating_marker_name = .FRS5_doe_8_LAUL.ground.FMARKER_4075  &
   adams_id = 4075
!
floating_marker create  &
   floating_marker_name = .FRS5_doe_8_LAUL.ground.FMARKER_4076  &
   adams_id = 4076
!
! ****** Points for current part ******
!
point create  &
   point_name = .FRS5_doe_8_LAUL.ground.end1  &
   location = 155.5, 236.37, 177.725
!
point attributes  &
   point_name = .FRS5_doe_8_LAUL.ground.end1  &
   color = GREEN
!
point create  &
   point_name = .FRS5_doe_8_LAUL.ground.end2  &
   location = 57.3708306433, 236.37, 105.5717070304
!
point attributes  &
   point_name = .FRS5_doe_8_LAUL.ground.end2  &
   color = GREEN
!
point create  &
   point_name = .FRS5_doe_8_LAUL.ground.end3  &
   location = 155.5, 236.37, 177.725
!
point attributes  &
   point_name = .FRS5_doe_8_LAUL.ground.end3  &
   color = GREEN
!
point create  &
   point_name = .FRS5_doe_8_LAUL.ground.end4  &
   location = 79.5595840038, 236.37, 65.8296588534
!
point attributes  &
   point_name = .FRS5_doe_8_LAUL.ground.end4  &
   color = GREEN
!
point create  &
   point_name = .FRS5_doe_8_LAUL.ground.end1_2  &
   location = 155.5, 236.37, 177.725
!
point attributes  &
   point_name = .FRS5_doe_8_LAUL.ground.end1_2  &
   color = GREEN
!
point create  &
   point_name = .FRS5_doe_8_LAUL.ground.end2_2  &
   location = 56.6290023534, 236.37, 112.9745913189
!
point attributes  &
   point_name = .FRS5_doe_8_LAUL.ground.end2_2  &
   color = GREEN
!
point create  &
   point_name = .FRS5_doe_8_LAUL.ground.end3_2  &
   location = 155.5, 236.37, 177.725
!
point attributes  &
   point_name = .FRS5_doe_8_LAUL.ground.end3_2  &
   color = GREEN
!
point create  &
   point_name = .FRS5_doe_8_LAUL.ground.end4_2  &
   location = 85.7290023534, 236.37, 62.5719128186
!
point attributes  &
   point_name = .FRS5_doe_8_LAUL.ground.end4_2  &
   color = GREEN
!
! ****** Graphics for current part ******
!
geometry create shape cylinder  &
   cylinder_name = .FRS5_doe_8_LAUL.ground.feed_pocket  &
   center_marker = .FRS5_doe_8_LAUL.ground.feed_pocket_ref  &
   angle_extent = 360.0  &
   length = 10.0  &
   radius = 23.0  &
   side_count_for_body = 20  &
   segment_count_for_ends = 20
!
geometry attributes  &
   geometry_name = .FRS5_doe_8_LAUL.ground.feed_pocket  &
   render = wireframe
!
geometry create shape cylinder  &
   cylinder_name = .FRS5_doe_8_LAUL.ground.feed_boundary  &
   center_marker = .FRS5_doe_8_LAUL.ground.feed_boundary_ref  &
   angle_extent = 360.0  &
   length = 10.0  &
   radius = 56.0  &
   side_count_for_body = 20  &
   segment_count_for_ends = 20
!
geometry attributes  &
   geometry_name = .FRS5_doe_8_LAUL.ground.feed_boundary  &
   render = wireframe
!
part attributes  &
   part_name = .FRS5_doe_8_LAUL.ground  &
   visibility = on  &
   size_of_icons = 3.5
!
!-------------------------------- fwd_housing ---------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .FRS5_doe_8_LAUL.ground
!
part create rigid_body name_and_position  &
   part_name = .FRS5_doe_8_LAUL.fwd_housing  &
   adams_id = 9  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .FRS5_doe_8_LAUL.fwd_housing
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.fwd_housing.PSMAR12  &
   adams_id = 84  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.fwd_housing.PSMAR12  &
   color = GREEN  &
   visibility = off  &
   size_of_icons = 7.0
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.fwd_housing.PSMAR11  &
   adams_id = 83  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.fwd_housing.PSMAR11  &
   color = GREEN  &
   visibility = off  &
   size_of_icons = 7.0
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.fwd_housing.PSMAR13  &
   adams_id = 85  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.fwd_housing.PSMAR13  &
   color = GREEN  &
   visibility = off  &
   size_of_icons = 7.0
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.fwd_housing.PSMAR  &
   adams_id = 71  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.fwd_housing.PSMAR  &
   color = GREEN  &
   visibility = off  &
   size_of_icons = 7.0
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.fwd_housing.PSMAR7  &
   adams_id = 79  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.fwd_housing.PSMAR7  &
   color = GREEN  &
   visibility = off  &
   size_of_icons = 7.0
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.fwd_housing.PSMAR10  &
   adams_id = 82  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.fwd_housing.PSMAR10  &
   color = GREEN  &
   visibility = off  &
   size_of_icons = 7.0
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.fwd_housing.PSMAR3  &
   adams_id = 75  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.fwd_housing.PSMAR3  &
   color = GREEN  &
   visibility = off  &
   size_of_icons = 7.0
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.fwd_housing.PSMAR6  &
   adams_id = 78  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.fwd_housing.PSMAR6  &
   color = GREEN  &
   visibility = off  &
   size_of_icons = 7.0
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.fwd_housing.PSMAR4  &
   adams_id = 76  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.fwd_housing.PSMAR4  &
   color = GREEN  &
   visibility = off  &
   size_of_icons = 7.0
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.fwd_housing.PSMAR9  &
   adams_id = 81  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.fwd_housing.PSMAR9  &
   color = GREEN  &
   visibility = off  &
   size_of_icons = 7.0
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.fwd_housing.PSMAR5  &
   adams_id = 77  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.fwd_housing.PSMAR5  &
   color = GREEN  &
   visibility = off  &
   size_of_icons = 7.0
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.fwd_housing.PSMAR8  &
   adams_id = 80  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.fwd_housing.PSMAR8  &
   color = GREEN  &
   visibility = off  &
   size_of_icons = 7.0
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.fwd_housing.PSMAR2  &
   adams_id = 74  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.fwd_housing.PSMAR2  &
   color = GREEN  &
   visibility = off  &
   size_of_icons = 7.0
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.fwd_housing.PSMAR1  &
   adams_id = 73  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.fwd_housing.PSMAR1  &
   color = GREEN  &
   visibility = off  &
   size_of_icons = 7.0
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.fwd_housing.PSMAR14  &
   adams_id = 86  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.fwd_housing.PSMAR14  &
   color = GREEN  &
   visibility = off  &
   size_of_icons = 7.0
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.fwd_housing.MARKER_32  &
   adams_id = 32  &
   location = 24.5424368049, 119.32, 184.5441148651  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.fwd_housing.MARKER_32  &
   color = GREEN  &
   size_of_icons = 7.0
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.fwd_housing.MARKER_34  &
   adams_id = 34  &
   location = 184.1034739803, 132.7055351868, 49.2725087136  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.fwd_housing.MARKER_34  &
   color = GREEN  &
   size_of_icons = 7.0
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.fwd_housing.MARKER_38  &
   adams_id = 38  &
   location = 106.979192501, 98.46, 111.7594655882  &
   orientation = 180.0d, 90.0d, 180.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.fwd_housing.MARKER_38  &
   color = GREEN  &
   size_of_icons = 7.0
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.fwd_housing.MARKER_68  &
   adams_id = 68  &
   location = 76.7093627736, 129.27, 93.9235645076  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.fwd_housing.MARKER_68  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.fwd_housing.cm  &
   adams_id = 72  &
   location = 73.1475477388, 67.9802029215, 101.7532747851  &
   orientation = 78.3163373883d, 94.7094421799d, 18.2242798872d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.fwd_housing.cm  &
   color = GREEN  &
   size_of_icons = 7.0
!
part create rigid_body mass_properties  &
   part_name = .FRS5_doe_8_LAUL.fwd_housing  &
   density = 2.713E-06
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .FRS5_doe_8_LAUL.fwd_housing  &
   color = RED  &
   visibility = on  &
   transparency = 70  &
   size_of_icons = 3.5
!
!-------------------------------- rear_housing --------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .FRS5_doe_8_LAUL.ground
!
part create rigid_body name_and_position  &
   part_name = .FRS5_doe_8_LAUL.rear_housing  &
   adams_id = 31  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .FRS5_doe_8_LAUL.rear_housing
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.rear_housing.MARKER_2  &
   adams_id = 2  &
   location = 110.2925471582, 382.2199999999, 113.6775000001  &
   orientation = 270.0d, 120.0000000115d, 239.6710643147d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.rear_housing.MARKER_2  &
   color = GREEN  &
   size_of_icons = 7.0
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.rear_housing.PSMAR4  &
   adams_id = 100  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.rear_housing.PSMAR4  &
   color = GREEN  &
   visibility = off  &
   size_of_icons = 7.0
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.rear_housing.PSMAR  &
   adams_id = 95  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.rear_housing.PSMAR  &
   color = GREEN  &
   visibility = off  &
   size_of_icons = 7.0
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.rear_housing.MARKER_10  &
   adams_id = 10  &
   location = 0.0, 510.57, 49.995  &
   orientation = 0.0d, 90.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.rear_housing.MARKER_10  &
   color = GREEN  &
   size_of_icons = 7.0
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.rear_housing.MARKER_18  &
   adams_id = 18  &
   location = -41.505757188, 536.6513112434, 113.6942282198  &
   orientation = 3.2125375665d, 90.6098737673d, 259.2619867403d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.rear_housing.MARKER_18  &
   color = GREEN  &
   size_of_icons = 7.0
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.rear_housing.MARKER_20  &
   adams_id = 20  &
   location = -34.8501181295, 529.04, 112.43  &
   orientation = 0.0d, 90.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.rear_housing.MARKER_20  &
   color = GREEN  &
   size_of_icons = 7.0
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.rear_housing.MARKER_24  &
   adams_id = 24  &
   location = 77.1298818705, 477.59, 77.4681249996  &
   orientation = 180.0d, 180.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.rear_housing.MARKER_24  &
   color = GREEN  &
   size_of_icons = 7.0
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.rear_housing.PSMAR3  &
   adams_id = 99  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.rear_housing.PSMAR3  &
   color = GREEN  &
   visibility = off  &
   size_of_icons = 7.0
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.rear_housing.MARKER_36  &
   adams_id = 36  &
   location = 130.3626859022, 436.27, 125.265  &
   orientation = 180.0d, 90.0d, 180.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.rear_housing.MARKER_36  &
   color = GREEN  &
   size_of_icons = 7.0
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.rear_housing.MARKER_66  &
   adams_id = 66  &
   location = 64.5411953872, 337.72, 127.1528898862  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.rear_housing.MARKER_66  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.rear_housing.MARKER_212  &
   adams_id = 212  &
   location = 25.6298818705, 487.54, 130.0600000001  &
   orientation = 0.0d, 90.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.rear_housing.MARKER_212  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.rear_housing.cm  &
   adams_id = 96  &
   location = 42.5118689229, 484.9038218465, 77.8704273061  &
   orientation = 222.3776593341d, 114.04494902d, 93.3094389882d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.rear_housing.cm  &
   color = GREEN  &
   size_of_icons = 7.0
!
part create rigid_body mass_properties  &
   part_name = .FRS5_doe_8_LAUL.rear_housing  &
   density = 2.685E-06
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .FRS5_doe_8_LAUL.rear_housing  &
   color = COLOR_R051G153B102  &
   visibility = on  &
   transparency = 70  &
   size_of_icons = 3.5
!
!--------------------------------- lower_rail ---------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .FRS5_doe_8_LAUL.ground
!
part create rigid_body name_and_position  &
   part_name = .FRS5_doe_8_LAUL.lower_rail  &
   adams_id = 87  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .FRS5_doe_8_LAUL.lower_rail
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.lower_rail.MARKER_33  &
   adams_id = 33  &
   location = 184.1034739803, 132.7055351868, 49.2725087136  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.lower_rail.MARKER_33  &
   color = GREEN  &
   size_of_icons = 7.0
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.lower_rail.PSMAR  &
   adams_id = 141  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.lower_rail.PSMAR  &
   color = GREEN  &
   visibility = off  &
   size_of_icons = 7.0
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.lower_rail.cm  &
   adams_id = 142  &
   location = 184.1034739803, 132.7055351868, 49.2725087136  &
   orientation = 89.2868135726d, 19.8241960776d, 279.1129965315d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.lower_rail.cm  &
   color = GREEN  &
   size_of_icons = 7.0
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.lower_rail.start_pos1  &
   adams_id = 3759  &
   location = 187.2255445608, 147.12, 61.2706296743  &
   orientation = 0.0d, 90.0d, 250.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.lower_rail.start_pos1  &
   color = GREEN
!
! ****** Floating Markers for current part ******
!
floating_marker create  &
   floating_marker_name = .FRS5_doe_8_LAUL.lower_rail.FMARKER_3761  &
   adams_id = 3761
!
floating_marker create  &
   floating_marker_name = .FRS5_doe_8_LAUL.lower_rail.FMARKER_3763  &
   adams_id = 3763
!
floating_marker create  &
   floating_marker_name = .FRS5_doe_8_LAUL.lower_rail.FMARKER_3765  &
   adams_id = 3765
!
floating_marker create  &
   floating_marker_name = .FRS5_doe_8_LAUL.lower_rail.FMARKER_3767  &
   adams_id = 3767
!
part create rigid_body mass_properties  &
   part_name = .FRS5_doe_8_LAUL.lower_rail  &
   density = 7.833E-06
!
! ****** Graphics for current part ******
!
geometry create curve polyline  &
   polyline_name = .FRS5_doe_8_LAUL.lower_rail.strip_line1  &
   location = 118.8215158957, 147.12, -126.6678944829  &
      , 272.7305803922, 147.12, 296.1937848708  &
   close = no
!
geometry attributes  &
   geometry_name = .FRS5_doe_8_LAUL.lower_rail.strip_line1  &
   color = YELLOW
!
part attributes  &
   part_name = .FRS5_doe_8_LAUL.lower_rail  &
   color = GREEN  &
   visibility = on  &
   size_of_icons = 3.5
!
!--------------------------------- positioner ---------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .FRS5_doe_8_LAUL.ground
!
part create rigid_body name_and_position  &
   part_name = .FRS5_doe_8_LAUL.positioner  &
   adams_id = 95  &
   location = 175.7672961626, 0.0, 64.9452951828  &
   orientation = 270.0d, 117.0d, 90.0d
!
defaults coordinate_system  &
   default_coordinate_system = .FRS5_doe_8_LAUL.positioner
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.positioner.upper_shackle_point  &
   adams_id = 238  &
   location = 80.4924455166, 236.3732895093, 83.5765234209  &
   orientation = 0.0d, 90.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.positioner.upper_shackle_point  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.positioner.lower_shackle_point  &
   adams_id = 241  &
   location = 61.7602452844, 236.2667104907, 82.5948104055  &
   orientation = 0.0d, 90.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.positioner.lower_shackle_point  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.positioner.cm  &
   adams_id = 160  &
   location = 71.4446923257, 236.4238182753, 89.8516810492  &
   orientation = 94.5682668014d, 17.1886819565d, 265.03669578d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.positioner.cm  &
   color = GREEN  &
   size_of_icons = 7.0
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.positioner.c1  &
   adams_id = 785  &
   location = 78.5492079551, 248.4658516452, 95.6429950747  &
   orientation = 0.0d, 90.0d, 3.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.positioner.c1  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.positioner.c4  &
   adams_id = 788  &
   location = 80.4924455166, 248.4732895093, 83.5765234209  &
   orientation = 0.0d, 90.0d, 3.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.positioner.c4  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.positioner.c3  &
   adams_id = 1968  &
   location = 61.7602452844, 248.3667104907, 82.5948104055  &
   orientation = 0.0d, 90.0d, 3.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.positioner.c3  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.positioner.pref2  &
   adams_id = 4323  &
   location = 72.9045026964, 248.42, 101.9191533591  &
   orientation = 90.0d, 148.7000000001d, 270.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.positioner.pref2  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.positioner.c2  &
   adams_id = 4345  &
   location = 66.0172728305, 248.3945497516, 94.9862241847  &
   orientation = 0.0d, 90.0d, 3.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.positioner.c2  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.positioner.c5  &
   adams_id = 4346  &
   location = 74.854518681, 248.4494800307, 111.0859476162  &
   orientation = 0.0d, 90.0d, 3.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.positioner.c5  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.positioner.psmar5  &
   location = 45.2507385822, 224.42, -32.6403886796  &
   orientation = 270.0d, 3.0d, 90.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.positioner.psmar5  &
   color = GREEN  &
   visibility = off
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.positioner.psmar6  &
   location = 45.2507385822, 224.42, -32.6403886796  &
   orientation = 270.0d, 3.0d, 90.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.positioner.psmar6  &
   color = GREEN  &
   visibility = off
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.positioner.sym_ref  &
   adams_id = 4347  &
   location = 71.1263454005, 248.42, 83.0856669132  &
   orientation = 0.325094566d, 89.9829626077d, 272.9999516653d
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.positioner.sym_rot  &
   adams_id = 4348  &
   location = 71.1263454005, 248.42, 83.0856669132  &
   orientation = 0.325094566d, 89.9829626077d, 262.4155911775d
!
part create rigid_body mass_properties  &
   part_name = .FRS5_doe_8_LAUL.positioner  &
   density = 7.917E-06
!
! ****** Graphics for current part ******
!
geometry create shape cylinder  &
   cylinder_name = .FRS5_doe_8_LAUL.positioner.c1g  &
   adams_id = 993  &
   center_marker = .FRS5_doe_8_LAUL.positioner.c1  &
   angle_extent = 360.0  &
   length = 24.0  &
   radius = 3.6734623457  &
   side_count_for_body = 30  &
   segment_count_for_ends = 30
!
geometry attributes  &
   geometry_name = .FRS5_doe_8_LAUL.positioner.c1g  &
   color = RED
!
geometry create shape cylinder  &
   cylinder_name = .FRS5_doe_8_LAUL.positioner.c3g  &
   adams_id = 995  &
   center_marker = .FRS5_doe_8_LAUL.positioner.c3  &
   angle_extent = 360.0  &
   length = 24.0  &
   radius = 6.35  &
   side_count_for_body = 30  &
   segment_count_for_ends = 30
!
geometry attributes  &
   geometry_name = .FRS5_doe_8_LAUL.positioner.c3g  &
   color = RED
!
geometry create shape cylinder  &
   cylinder_name = .FRS5_doe_8_LAUL.positioner.c4g  &
   adams_id = 996  &
   center_marker = .FRS5_doe_8_LAUL.positioner.c4  &
   angle_extent = 360.0  &
   length = 24.0  &
   radius = 6.35  &
   side_count_for_body = 30  &
   segment_count_for_ends = 30
!
geometry attributes  &
   geometry_name = .FRS5_doe_8_LAUL.positioner.c4g  &
   color = RED
!
geometry create shape cylinder  &
   cylinder_name = .FRS5_doe_8_LAUL.positioner.c2g  &
   adams_id = 3486  &
   center_marker = .FRS5_doe_8_LAUL.positioner.c2  &
   angle_extent = 360.0  &
   length = 24.0  &
   radius = 3.6734623457  &
   side_count_for_body = 30  &
   segment_count_for_ends = 30
!
geometry attributes  &
   geometry_name = .FRS5_doe_8_LAUL.positioner.c2g  &
   color = RED
!
geometry create shape cylinder  &
   cylinder_name = .FRS5_doe_8_LAUL.positioner.c5g  &
   adams_id = 3689  &
   center_marker = .FRS5_doe_8_LAUL.positioner.c5  &
   angle_extent = 360.0  &
   length = 24.0  &
   radius = 3.5719710753  &
   side_count_for_body = 30  &
   segment_count_for_ends = 30
!
geometry attributes  &
   geometry_name = .FRS5_doe_8_LAUL.positioner.c5g  &
   color = RED
!
part attributes  &
   part_name = .FRS5_doe_8_LAUL.positioner  &
   color = MAIZE  &
   visibility = on  &
   size_of_icons = 3.5
!
!----------------------------- positioner_spring ------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .FRS5_doe_8_LAUL.ground
!
part create rigid_body name_and_position  &
   part_name = .FRS5_doe_8_LAUL.positioner_spring  &
   adams_id = 97  &
   location = -6.1077866529, 0.0, 5.5351370053  &
   orientation = 90.0d, 2.0d, 270.0d
!
defaults coordinate_system  &
   default_coordinate_system = .FRS5_doe_8_LAUL.positioner_spring
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.positioner_spring.fix1b  &
   adams_id = 2359  &
   location = 152.2733161786, 236.37, 153.1278858573  &
   orientation = 270.0d, 2.0d, 90.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.positioner_spring.fix1b  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.positioner_spring.fix2b  &
   adams_id = 2360  &
   location = 153.2831809711, 236.37, 153.01639998  &
   orientation = 270.0d, 2.0d, 90.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.positioner_spring.fix2b  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.positioner_spring.MARKER_215  &
   adams_id = 215  &
   location = 155.5, 236.37, 177.725  &
   orientation = 0.0d, 90.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.positioner_spring.MARKER_215  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.positioner_spring.MARKER_233  &
   adams_id = 233  &
   location = 91.3288392469, 224.37, 100.2476801553  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.positioner_spring.MARKER_233  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.positioner_spring.cm  &
   adams_id = 167  &
   location = 154.6392671704, 238.1598392289, 171.1721227065  &
   orientation = 133.8195863758d, 10.3175898388d, 226.6468886268d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.positioner_spring.cm  &
   color = GREEN  &
   size_of_icons = 7.0
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.positioner_spring.MARKER_2  &
   adams_id = 248  &
   location = 152.2402689093, 236.37, 153.2596604535  &
   orientation = 180.0d, 90.0d, 6.4095861804d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.positioner_spring.MARKER_2  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.positioner_spring.MARKER_4  &
   adams_id = 249  &
   location = 153.2499181528, 236.37, 153.1462390919  &
   orientation = 180.0d, 90.0d, 6.4095861804d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.positioner_spring.MARKER_4  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.positioner_spring.PSMAR486  &
   adams_id = 488  &
   location = -1.5263713852, 0.0, 1.3471546945  &
   orientation = 90.0d, 0.4939474384d, 270.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.positioner_spring.PSMAR486  &
   color = GREEN  &
   visibility = off
!
part create rigid_body mass_properties  &
   part_name = .FRS5_doe_8_LAUL.positioner_spring  &
   density = 7.917E-06
!
! ****** Points for current part ******
!
point create  &
   point_name = .FRS5_doe_8_LAUL.positioner_spring.cntrpt_2  &
   location = 155.5, 238.87, 177.725
!
point attributes  &
   point_name = .FRS5_doe_8_LAUL.positioner_spring.cntrpt_2  &
   color = GREEN
!
point create  &
   point_name = .FRS5_doe_8_LAUL.positioner_spring.cntrpt_3  &
   location = 150.1642611449, 236.37, 132.0964272889
!
point attributes  &
   point_name = .FRS5_doe_8_LAUL.positioner_spring.cntrpt_3  &
   color = GREEN
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .FRS5_doe_8_LAUL.positioner_spring  &
   color = COLOR_R051G153B102  &
   visibility = on  &
   size_of_icons = 3.5
!
!--------------------------------- upper_rail ---------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .FRS5_doe_8_LAUL.ground
!
part create rigid_body name_and_position  &
   part_name = .FRS5_doe_8_LAUL.upper_rail  &
   adams_id = 115  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .FRS5_doe_8_LAUL.upper_rail
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.upper_rail.MARKER_31  &
   adams_id = 31  &
   location = 24.5424368049, 119.32, 184.5441148651  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.upper_rail.MARKER_31  &
   color = GREEN  &
   size_of_icons = 7.0
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.upper_rail.rail_bot_ref  &
   adams_id = 514  &
   location = -59.3084295109, 151.62, 129.7819416648  &
   orientation = 180.0d, 90.0d, 150.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.upper_rail.rail_bot_ref  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.upper_rail.rail_top_ref  &
   adams_id = 517  &
   location = -61.1834295109, 147.12, 133.029536929  &
   orientation = 0.0d, 90.0d, 30.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.upper_rail.rail_top_ref  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.upper_rail.PSMAR  &
   adams_id = 178  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.upper_rail.PSMAR  &
   color = GREEN  &
   visibility = off  &
   size_of_icons = 7.0
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.upper_rail.cm  &
   adams_id = 179  &
   location = 22.8797107279, 132.7619754638, 182.9595239033  &
   orientation = 269.8381191614d, 119.8954391219d, 97.7459703327d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.upper_rail.cm  &
   color = GREEN  &
   size_of_icons = 7.0
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.upper_rail.start_position  &
   adams_id = 519  &
   location = 103.3613972081, 147.12, 228.029536929  &
   orientation = 0.0d, 90.0d, 30.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.upper_rail.start_position  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.upper_rail.MARKER_2458  &
   adams_id = 2458  &
   location = -61.1834295109, 147.12, 133.029536929  &
   orientation = 0.0d, 90.0d, 30.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.upper_rail.MARKER_2458  &
   color = GREEN
!
! ****** Floating Markers for current part ******
!
floating_marker create  &
   floating_marker_name = .FRS5_doe_8_LAUL.upper_rail.FMARKER_744  &
   adams_id = 744
!
floating_marker create  &
   floating_marker_name = .FRS5_doe_8_LAUL.upper_rail.FMARKER_745  &
   adams_id = 745
!
floating_marker create  &
   floating_marker_name = .FRS5_doe_8_LAUL.upper_rail.FMARKER_746  &
   adams_id = 746
!
floating_marker create  &
   floating_marker_name = .FRS5_doe_8_LAUL.upper_rail.FMARKER_747  &
   adams_id = 747
!
floating_marker create  &
   floating_marker_name = .FRS5_doe_8_LAUL.upper_rail.FMARKER_2457  &
   adams_id = 2457
!
part create rigid_body mass_properties  &
   part_name = .FRS5_doe_8_LAUL.upper_rail  &
   density = 7.833E-06
!
! ****** Graphics for current part ******
!
geometry create curve polyline  &
   polyline_name = .FRS5_doe_8_LAUL.upper_rail.top_forward  &
   location = -212.7378751732, 147.12, 45.529536929  &
      , -61.1834295109, 147.12, 133.029536929  &
      , 90.3710161514, 147.12, 220.529536929  &
      , 241.9254618137, 147.12, 308.029536929  &
      , 393.4799074759, 147.12, 395.529536929  &
   close = no
!
geometry attributes  &
   geometry_name = .FRS5_doe_8_LAUL.upper_rail.top_forward  &
   color = YELLOW
!
part attributes  &
   part_name = .FRS5_doe_8_LAUL.upper_rail  &
   color = COLOR_R255G000B255  &
   visibility = on  &
   size_of_icons = 3.5
!
!--------------------------------- lower_dogs ---------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .FRS5_doe_8_LAUL.ground
!
part create rigid_body name_and_position  &
   part_name = .FRS5_doe_8_LAUL.lower_dogs  &
   adams_id = 131  &
   location = 0.0, 10.7250115872, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .FRS5_doe_8_LAUL.lower_dogs
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.lower_dogs.PSMAR  &
   adams_id = 186  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.lower_dogs.PSMAR  &
   color = GREEN  &
   visibility = off  &
   size_of_icons = 7.0
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.lower_dogs.PSMAR1  &
   adams_id = 188  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.lower_dogs.PSMAR1  &
   color = GREEN  &
   visibility = off  &
   size_of_icons = 7.0
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.lower_dogs.PSMAR2  &
   adams_id = 189  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.lower_dogs.PSMAR2  &
   color = GREEN  &
   visibility = off  &
   size_of_icons = 7.0
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.lower_dogs.MARKER_47  &
   adams_id = 47  &
   location = 127.98, 372.11, 75.3919330411  &
   orientation = 0.0d, 90.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.lower_dogs.MARKER_47  &
   color = GREEN  &
   size_of_icons = 7.0
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.lower_dogs.slot_center  &
   adams_id = 57  &
   location = 127.98, 377.145, 75.3919330411  &
   orientation = 0.0d, 90.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.lower_dogs.slot_center  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.lower_dogs.cm  &
   adams_id = 187  &
   location = 127.9800000459, 375.3979103082, 75.3919330886  &
   orientation = 269.9999998402d, 152.0635879532d, 179.9999998872d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.lower_dogs.cm  &
   color = GREEN  &
   size_of_icons = 7.0
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.lower_dogs.dog_start  &
   adams_id = 3866  &
   location = 127.98, 352.38, 75.3919330411  &
   orientation = 0.0d, 90.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.lower_dogs.dog_start  &
   color = GREEN
!
part create rigid_body mass_properties  &
   part_name = .FRS5_doe_8_LAUL.lower_dogs  &
   density = 7.833E-06
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .FRS5_doe_8_LAUL.lower_dogs  &
   color = YELLOW  &
   visibility = on  &
   size_of_icons = 3.5
!
!--------------------------------- upper_dogs ---------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .FRS5_doe_8_LAUL.ground
!
part create rigid_body name_and_position  &
   part_name = .FRS5_doe_8_LAUL.upper_dogs  &
   adams_id = 136  &
   location = 0.0, -10.7150115843, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .FRS5_doe_8_LAUL.upper_dogs
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.upper_dogs.PSMAR  &
   adams_id = 190  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.upper_dogs.PSMAR  &
   color = GREEN  &
   visibility = off  &
   size_of_icons = 7.0
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.upper_dogs.MARKER_45  &
   adams_id = 45  &
   location = 85.98, 381.75, 148.1380669589  &
   orientation = 0.0d, 90.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.upper_dogs.MARKER_45  &
   color = GREEN  &
   size_of_icons = 7.0
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.upper_dogs.PSMAR2  &
   adams_id = 193  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.upper_dogs.PSMAR2  &
   color = GREEN  &
   visibility = off  &
   size_of_icons = 7.0
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.upper_dogs.PSMAR1  &
   adams_id = 192  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.upper_dogs.PSMAR1  &
   color = GREEN  &
   visibility = off  &
   size_of_icons = 7.0
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.upper_dogs.slot_center  &
   adams_id = 56  &
   location = 85.98, 387.285, 148.1380669589  &
   orientation = 0.0d, 90.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.upper_dogs.slot_center  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.upper_dogs.dog_start  &
   adams_id = 498  &
   location = 85.98, 362.52, 148.1380669589  &
   orientation = 0.0d, 90.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.upper_dogs.dog_start  &
   color = GREEN  &
   size_of_icons = 6.0
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.upper_dogs.cm  &
   adams_id = 191  &
   location = 85.98, 385.5516158885, 148.1380669589  &
   orientation = 90.0d, 92.7830897459d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.upper_dogs.cm  &
   color = GREEN  &
   size_of_icons = 7.0
!
part create rigid_body mass_properties  &
   part_name = .FRS5_doe_8_LAUL.upper_dogs  &
   density = 7.833E-06
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .FRS5_doe_8_LAUL.upper_dogs  &
   color = CYAN  &
   visibility = on  &
   size_of_icons = 3.5
!
!----------------------------- feed_selector_arm ------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .FRS5_doe_8_LAUL.ground
!
part create rigid_body name_and_position  &
   part_name = .FRS5_doe_8_LAUL.feed_selector_arm  &
   adams_id = 142  &
   location = 0.0, -16.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .FRS5_doe_8_LAUL.feed_selector_arm
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.feed_selector_arm.MARKER_35  &
   adams_id = 35  &
   location = 130.3626859022, 436.27, 125.265  &
   orientation = 180.0d, 90.0d, 180.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.feed_selector_arm.MARKER_35  &
   color = GREEN  &
   size_of_icons = 7.0
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.feed_selector_arm.PSMAR1  &
   adams_id = 196  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.feed_selector_arm.PSMAR1  &
   color = GREEN  &
   visibility = off  &
   size_of_icons = 7.0
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.feed_selector_arm.PSMAR  &
   adams_id = 194  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.feed_selector_arm.PSMAR  &
   color = GREEN  &
   visibility = off  &
   size_of_icons = 7.0
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.feed_selector_arm.step_ref_mark  &
   adams_id = 54  &
   location = 145.6315923627, 380.03, 130.8184782343  &
   orientation = 0.0d, 90.0d, 29.9999999998d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.feed_selector_arm.step_ref_mark  &
   color = GREEN  &
   size_of_icons = 7.0
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.feed_selector_arm.cm  &
   adams_id = 195  &
   location = 140.3268776203, 402.177924063, 130.9659205859  &
   orientation = 14.9563953956d, 82.0252591783d, 313.4564845939d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.feed_selector_arm.cm  &
   color = GREEN  &
   size_of_icons = 7.0
!
! ****** Floating Markers for current part ******
!
floating_marker create  &
   floating_marker_name = .FRS5_doe_8_LAUL.feed_selector_arm.FMARKER_55  &
   adams_id = 55
!
part create rigid_body mass_properties  &
   part_name = .FRS5_doe_8_LAUL.feed_selector_arm  &
   density = 7.833E-06
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .FRS5_doe_8_LAUL.feed_selector_arm  &
   color = COLOR_R051G153B102  &
   visibility = on  &
   size_of_icons = 3.5
!
!------------------------------ selector_spider -------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .FRS5_doe_8_LAUL.ground
!
part create rigid_body name_and_position  &
   part_name = .FRS5_doe_8_LAUL.selector_spider  &
   adams_id = 143  &
   location = 55.0852145857, 29.4969458935, -95.4103903641  &
   orientation = 4.2864001158d, 14.7526301666d, 4.2864001158d
!
defaults coordinate_system  &
   default_coordinate_system = .FRS5_doe_8_LAUL.selector_spider
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.selector_spider.MARKER_1  &
   adams_id = 1  &
   location = 110.292547158, 382.22, 113.6775  &
   orientation = 270.0d, 120.0000000115d, 239.6710643147d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.selector_spider.MARKER_1  &
   color = GREEN  &
   size_of_icons = 7.0
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.selector_spider.PSMAR  &
   adams_id = 199  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.selector_spider.PSMAR  &
   color = GREEN  &
   visibility = off  &
   size_of_icons = 7.0
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.selector_spider.PSMAR5  &
   adams_id = 205  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.selector_spider.PSMAR5  &
   color = GREEN  &
   visibility = off  &
   size_of_icons = 7.0
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.selector_spider.PSMAR1  &
   adams_id = 201  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.selector_spider.PSMAR1  &
   color = GREEN  &
   visibility = off  &
   size_of_icons = 7.0
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.selector_spider.PSMAR6  &
   adams_id = 206  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.selector_spider.PSMAR6  &
   color = GREEN  &
   visibility = off  &
   size_of_icons = 7.0
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.selector_spider.PSMAR3  &
   adams_id = 203  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.selector_spider.PSMAR3  &
   color = GREEN  &
   visibility = off  &
   size_of_icons = 7.0
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.selector_spider.PSMAR7  &
   adams_id = 207  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.selector_spider.PSMAR7  &
   color = GREEN  &
   visibility = off  &
   size_of_icons = 7.0
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.selector_spider.PSMAR4  &
   adams_id = 204  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.selector_spider.PSMAR4  &
   color = GREEN  &
   visibility = off  &
   size_of_icons = 7.0
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.selector_spider.PSMAR2  &
   adams_id = 202  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.selector_spider.PSMAR2  &
   color = GREEN  &
   visibility = off  &
   size_of_icons = 7.0
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.selector_spider.PSMAR8  &
   adams_id = 208  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.selector_spider.PSMAR8  &
   color = GREEN  &
   visibility = off  &
   size_of_icons = 7.0
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.selector_spider.PSMAR9  &
   adams_id = 209  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.selector_spider.PSMAR9  &
   color = GREEN  &
   visibility = off  &
   size_of_icons = 7.0
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.selector_spider.pin_center  &
   adams_id = 53  &
   location = 143.9009276587, 363.4286985961, 136.324144048  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.selector_spider.pin_center  &
   color = GREEN  &
   size_of_icons = 7.0
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.selector_spider.upper_rollers_center  &
   adams_id = 58  &
   location = 87.928890975, 387.8367576229, 144.1624887719  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.selector_spider.upper_rollers_center  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.selector_spider.lower_rollers_center  &
   adams_id = 210  &
   location = 125.5114937828, 376.6032423771, 79.0675112281  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.selector_spider.lower_rollers_center  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.selector_spider.cm  &
   adams_id = 200  &
   location = 111.6754047663, 380.68673755, 114.7408302634  &
   orientation = 85.360959907d, 59.4842832066d, 353.8383897905d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.selector_spider.cm  &
   color = GREEN  &
   size_of_icons = 7.0
!
part create rigid_body mass_properties  &
   part_name = .FRS5_doe_8_LAUL.selector_spider  &
   density = 7.833E-06
!
! ****** Points for current part ******
!
point create  &
   point_name = .FRS5_doe_8_LAUL.selector_spider.cntrpt_1  &
   location = 110.292547158, 382.22, 113.6775
!
point attributes  &
   point_name = .FRS5_doe_8_LAUL.selector_spider.cntrpt_1  &
   color = GREEN  &
   size_of_icons = 7.0
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .FRS5_doe_8_LAUL.selector_spider  &
   color = COLOR_R255G102B000  &
   visibility = on  &
   size_of_icons = 3.5
!
!------------------------------ linkU1line1dummy ------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .FRS5_doe_8_LAUL.ground
!
part create rigid_body name_and_position  &
   part_name = .FRS5_doe_8_LAUL.linkU1line1dummy  &
   adams_id = 170  &
   location = 99.0312701892, 147.12, 225.529536929  &
   orientation = 0.1550011344d, 90.2684675477d, 30.0003631408d
!
defaults coordinate_system  &
   default_coordinate_system = .FRS5_doe_8_LAUL.linkU1line1dummy
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU1line1dummy.cm  &
   adams_id = 705  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkU1line1dummy.cm  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU1line1dummy.MARKER  &
   adams_id = 743  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkU1line1dummy.MARKER  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU1line1dummy.MARKER_2  &
   adams_id = 1146  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkU1line1dummy.MARKER_2  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU1line1dummy.MARKER_3  &
   adams_id = 1239  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkU1line1dummy.MARKER_3  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU1line1dummy.MARKER_4  &
   adams_id = 1277  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkU1line1dummy.MARKER_4  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU1line1dummy.MARKER_5  &
   adams_id = 1341  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkU1line1dummy.MARKER_5  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU1line1dummy.MARKER_6  &
   adams_id = 1342  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkU1line1dummy.MARKER_6  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU1line1dummy.MARKER_7  &
   adams_id = 1389  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkU1line1dummy.MARKER_7  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU1line1dummy.MARKER_8  &
   adams_id = 1441  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkU1line1dummy.MARKER_8  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU1line1dummy.MARKER_9  &
   adams_id = 1481  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkU1line1dummy.MARKER_9  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU1line1dummy.MARKER_10  &
   adams_id = 1513  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkU1line1dummy.MARKER_10  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU1line1dummy.MARKER_11  &
   adams_id = 1631  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkU1line1dummy.MARKER_11  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU1line1dummy.MARKER_12  &
   adams_id = 1734  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkU1line1dummy.MARKER_12  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU1line1dummy.MARKER_13  &
   adams_id = 1808  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkU1line1dummy.MARKER_13  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU1line1dummy.MARKER_14  &
   adams_id = 1956  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkU1line1dummy.MARKER_14  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU1line1dummy.MARKER_15  &
   adams_id = 2077  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkU1line1dummy.MARKER_15  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU1line1dummy.MARKER_16  &
   adams_id = 2112  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkU1line1dummy.MARKER_16  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU1line1dummy.MARKER_17  &
   adams_id = 2361  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkU1line1dummy.MARKER_17  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU1line1dummy.MARKER_18  &
   adams_id = 2526  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkU1line1dummy.MARKER_18  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU1line1dummy.MARKER_19  &
   adams_id = 3442  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkU1line1dummy.MARKER_19  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU1line1dummy.MARKER_20  &
   adams_id = 3906  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkU1line1dummy.MARKER_20  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU1line1dummy.MARKER_21  &
   adams_id = 4030  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkU1line1dummy.MARKER_21  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU1line1dummy.MARKER_22  &
   adams_id = 4191  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkU1line1dummy.MARKER_22  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU1line1dummy.MARKER_23  &
   adams_id = 4326  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkU1line1dummy.MARKER_23  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU1line1dummy.MARKER_24  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkU1line1dummy.MARKER_24  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU1line1dummy.MARKER_25  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU1line1dummy.MARKER_26  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
part create rigid_body mass_properties  &
   part_name = .FRS5_doe_8_LAUL.linkU1line1dummy  &
   material_type = .FRS5_doe_8_LAUL.wood
!
! ****** Graphics for current part ******
!
geometry create shape ellipsoid  &
   ellipsoid_name = .FRS5_doe_8_LAUL.linkU1line1dummy.sph  &
   adams_id = 983  &
   center_marker = .FRS5_doe_8_LAUL.linkU1line1dummy.cm  &
   x_scale_factor = 1.0  &
   y_scale_factor = 1.0  &
   z_scale_factor = 1.0
!
geometry attributes  &
   geometry_name = .FRS5_doe_8_LAUL.linkU1line1dummy.sph  &
   color = RED
!
part attributes  &
   part_name = .FRS5_doe_8_LAUL.linkU1line1dummy  &
   visibility = on  &
   size_of_icons = 1.5
!
!------------------------------ linkU2line1dummy ------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .FRS5_doe_8_LAUL.ground
!
part create rigid_body name_and_position  &
   part_name = .FRS5_doe_8_LAUL.linkU2line1dummy  &
   adams_id = 171  &
   location = 144.7833922711, 147.12, 251.944536929  &
   orientation = 0.1550011344d, 90.2684675477d, 30.0003631408d
!
defaults coordinate_system  &
   default_coordinate_system = .FRS5_doe_8_LAUL.linkU2line1dummy
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU2line1dummy.cm  &
   adams_id = 706  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkU2line1dummy.cm  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU2line1dummy.MARKER  &
   adams_id = 707  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkU2line1dummy.MARKER  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU2line1dummy.MARKER_2  &
   adams_id = 1147  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkU2line1dummy.MARKER_2  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU2line1dummy.MARKER_3  &
   adams_id = 1240  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkU2line1dummy.MARKER_3  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU2line1dummy.MARKER_4  &
   adams_id = 1278  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkU2line1dummy.MARKER_4  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU2line1dummy.MARKER_5  &
   adams_id = 1343  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkU2line1dummy.MARKER_5  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU2line1dummy.MARKER_6  &
   adams_id = 1344  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkU2line1dummy.MARKER_6  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU2line1dummy.MARKER_7  &
   adams_id = 1390  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkU2line1dummy.MARKER_7  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU2line1dummy.MARKER_8  &
   adams_id = 1442  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkU2line1dummy.MARKER_8  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU2line1dummy.MARKER_9  &
   adams_id = 1482  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkU2line1dummy.MARKER_9  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU2line1dummy.MARKER_10  &
   adams_id = 1514  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkU2line1dummy.MARKER_10  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU2line1dummy.MARKER_11  &
   adams_id = 1632  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkU2line1dummy.MARKER_11  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU2line1dummy.MARKER_12  &
   adams_id = 1735  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkU2line1dummy.MARKER_12  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU2line1dummy.MARKER_13  &
   adams_id = 1809  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkU2line1dummy.MARKER_13  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU2line1dummy.MARKER_14  &
   adams_id = 1957  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkU2line1dummy.MARKER_14  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU2line1dummy.MARKER_15  &
   adams_id = 2078  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkU2line1dummy.MARKER_15  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU2line1dummy.MARKER_16  &
   adams_id = 2113  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkU2line1dummy.MARKER_16  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU2line1dummy.MARKER_17  &
   adams_id = 2362  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkU2line1dummy.MARKER_17  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU2line1dummy.MARKER_18  &
   adams_id = 2527  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkU2line1dummy.MARKER_18  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU2line1dummy.MARKER_19  &
   adams_id = 3443  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkU2line1dummy.MARKER_19  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU2line1dummy.MARKER_20  &
   adams_id = 3907  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkU2line1dummy.MARKER_20  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU2line1dummy.MARKER_21  &
   adams_id = 4031  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkU2line1dummy.MARKER_21  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU2line1dummy.MARKER_22  &
   adams_id = 4192  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkU2line1dummy.MARKER_22  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU2line1dummy.MARKER_23  &
   adams_id = 4327  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkU2line1dummy.MARKER_23  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU2line1dummy.MARKER_24  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkU2line1dummy.MARKER_24  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU2line1dummy.MARKER_25  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU2line1dummy.MARKER_26  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
part create rigid_body mass_properties  &
   part_name = .FRS5_doe_8_LAUL.linkU2line1dummy  &
   material_type = .FRS5_doe_8_LAUL.wood
!
! ****** Graphics for current part ******
!
geometry create shape ellipsoid  &
   ellipsoid_name = .FRS5_doe_8_LAUL.linkU2line1dummy.sph  &
   adams_id = 984  &
   center_marker = .FRS5_doe_8_LAUL.linkU2line1dummy.cm  &
   x_scale_factor = 1.0  &
   y_scale_factor = 1.0  &
   z_scale_factor = 1.0
!
geometry attributes  &
   geometry_name = .FRS5_doe_8_LAUL.linkU2line1dummy.sph  &
   color = RED
!
part attributes  &
   part_name = .FRS5_doe_8_LAUL.linkU2line1dummy  &
   visibility = on  &
   size_of_icons = 1.5
!
!------------------------------ linkU3line1dummy ------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .FRS5_doe_8_LAUL.ground
!
part create rigid_body name_and_position  &
   part_name = .FRS5_doe_8_LAUL.linkU3line1dummy  &
   adams_id = 172  &
   location = 190.5355143531, 147.12, 278.359536929  &
   orientation = 0.1550011344d, 90.2684675477d, 30.0003631408d
!
defaults coordinate_system  &
   default_coordinate_system = .FRS5_doe_8_LAUL.linkU3line1dummy
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU3line1dummy.cm  &
   adams_id = 708  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkU3line1dummy.cm  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU3line1dummy.MARKER  &
   adams_id = 709  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkU3line1dummy.MARKER  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU3line1dummy.MARKER_2  &
   adams_id = 1148  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkU3line1dummy.MARKER_2  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU3line1dummy.MARKER_3  &
   adams_id = 1241  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkU3line1dummy.MARKER_3  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU3line1dummy.MARKER_4  &
   adams_id = 1279  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkU3line1dummy.MARKER_4  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU3line1dummy.MARKER_5  &
   adams_id = 1345  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkU3line1dummy.MARKER_5  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU3line1dummy.MARKER_6  &
   adams_id = 1346  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkU3line1dummy.MARKER_6  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU3line1dummy.MARKER_7  &
   adams_id = 1391  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkU3line1dummy.MARKER_7  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU3line1dummy.MARKER_8  &
   adams_id = 1443  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkU3line1dummy.MARKER_8  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU3line1dummy.MARKER_9  &
   adams_id = 1483  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkU3line1dummy.MARKER_9  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU3line1dummy.MARKER_10  &
   adams_id = 1515  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkU3line1dummy.MARKER_10  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU3line1dummy.MARKER_11  &
   adams_id = 1633  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkU3line1dummy.MARKER_11  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU3line1dummy.MARKER_12  &
   adams_id = 1736  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkU3line1dummy.MARKER_12  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU3line1dummy.MARKER_13  &
   adams_id = 1810  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkU3line1dummy.MARKER_13  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU3line1dummy.MARKER_14  &
   adams_id = 1958  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkU3line1dummy.MARKER_14  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU3line1dummy.MARKER_15  &
   adams_id = 2079  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkU3line1dummy.MARKER_15  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU3line1dummy.MARKER_16  &
   adams_id = 2114  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkU3line1dummy.MARKER_16  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU3line1dummy.MARKER_17  &
   adams_id = 2363  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkU3line1dummy.MARKER_17  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU3line1dummy.MARKER_18  &
   adams_id = 2528  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkU3line1dummy.MARKER_18  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU3line1dummy.MARKER_19  &
   adams_id = 3444  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkU3line1dummy.MARKER_19  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU3line1dummy.MARKER_20  &
   adams_id = 3908  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkU3line1dummy.MARKER_20  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU3line1dummy.MARKER_21  &
   adams_id = 4032  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkU3line1dummy.MARKER_21  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU3line1dummy.MARKER_22  &
   adams_id = 4193  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkU3line1dummy.MARKER_22  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU3line1dummy.MARKER_23  &
   adams_id = 4328  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkU3line1dummy.MARKER_23  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU3line1dummy.MARKER_24  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkU3line1dummy.MARKER_24  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU3line1dummy.MARKER_25  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU3line1dummy.MARKER_26  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
part create rigid_body mass_properties  &
   part_name = .FRS5_doe_8_LAUL.linkU3line1dummy  &
   material_type = .FRS5_doe_8_LAUL.wood
!
! ****** Graphics for current part ******
!
geometry create shape ellipsoid  &
   ellipsoid_name = .FRS5_doe_8_LAUL.linkU3line1dummy.sph  &
   adams_id = 985  &
   center_marker = .FRS5_doe_8_LAUL.linkU3line1dummy.cm  &
   x_scale_factor = 1.0  &
   y_scale_factor = 1.0  &
   z_scale_factor = 1.0
!
geometry attributes  &
   geometry_name = .FRS5_doe_8_LAUL.linkU3line1dummy.sph  &
   color = RED
!
part attributes  &
   part_name = .FRS5_doe_8_LAUL.linkU3line1dummy  &
   visibility = on  &
   size_of_icons = 1.5
!
!------------------------------ linkU4line1dummy ------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .FRS5_doe_8_LAUL.ground
!
part create rigid_body name_and_position  &
   part_name = .FRS5_doe_8_LAUL.linkU4line1dummy  &
   adams_id = 173  &
   location = 236.287636435, 147.12, 304.774536929  &
   orientation = 0.1550011344d, 90.2684675477d, 30.0003631408d
!
defaults coordinate_system  &
   default_coordinate_system = .FRS5_doe_8_LAUL.linkU4line1dummy
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU4line1dummy.cm  &
   adams_id = 710  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkU4line1dummy.cm  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU4line1dummy.MARKER  &
   adams_id = 711  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkU4line1dummy.MARKER  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU4line1dummy.MARKER_2  &
   adams_id = 1149  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkU4line1dummy.MARKER_2  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU4line1dummy.MARKER_3  &
   adams_id = 1242  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkU4line1dummy.MARKER_3  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU4line1dummy.MARKER_4  &
   adams_id = 1280  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkU4line1dummy.MARKER_4  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU4line1dummy.MARKER_5  &
   adams_id = 1347  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkU4line1dummy.MARKER_5  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU4line1dummy.MARKER_6  &
   adams_id = 1348  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkU4line1dummy.MARKER_6  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU4line1dummy.MARKER_7  &
   adams_id = 1392  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkU4line1dummy.MARKER_7  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU4line1dummy.MARKER_8  &
   adams_id = 1444  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkU4line1dummy.MARKER_8  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU4line1dummy.MARKER_9  &
   adams_id = 1484  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkU4line1dummy.MARKER_9  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU4line1dummy.MARKER_10  &
   adams_id = 1516  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkU4line1dummy.MARKER_10  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU4line1dummy.MARKER_11  &
   adams_id = 1634  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkU4line1dummy.MARKER_11  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU4line1dummy.MARKER_12  &
   adams_id = 1737  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkU4line1dummy.MARKER_12  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU4line1dummy.MARKER_13  &
   adams_id = 1811  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkU4line1dummy.MARKER_13  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU4line1dummy.MARKER_14  &
   adams_id = 1959  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkU4line1dummy.MARKER_14  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU4line1dummy.MARKER_15  &
   adams_id = 2080  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkU4line1dummy.MARKER_15  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU4line1dummy.MARKER_16  &
   adams_id = 2115  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkU4line1dummy.MARKER_16  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU4line1dummy.MARKER_17  &
   adams_id = 2364  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkU4line1dummy.MARKER_17  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU4line1dummy.MARKER_18  &
   adams_id = 2529  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkU4line1dummy.MARKER_18  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU4line1dummy.MARKER_19  &
   adams_id = 3445  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkU4line1dummy.MARKER_19  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU4line1dummy.MARKER_20  &
   adams_id = 3909  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkU4line1dummy.MARKER_20  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU4line1dummy.MARKER_21  &
   adams_id = 4033  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkU4line1dummy.MARKER_21  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU4line1dummy.MARKER_22  &
   adams_id = 4194  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkU4line1dummy.MARKER_22  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU4line1dummy.MARKER_23  &
   adams_id = 4329  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkU4line1dummy.MARKER_23  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU4line1dummy.MARKER_24  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkU4line1dummy.MARKER_24  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU4line1dummy.MARKER_25  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU4line1dummy.MARKER_26  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
part create rigid_body mass_properties  &
   part_name = .FRS5_doe_8_LAUL.linkU4line1dummy  &
   material_type = .FRS5_doe_8_LAUL.wood
!
! ****** Graphics for current part ******
!
geometry create shape ellipsoid  &
   ellipsoid_name = .FRS5_doe_8_LAUL.linkU4line1dummy.sph  &
   adams_id = 986  &
   center_marker = .FRS5_doe_8_LAUL.linkU4line1dummy.cm  &
   x_scale_factor = 1.0  &
   y_scale_factor = 1.0  &
   z_scale_factor = 1.0
!
geometry attributes  &
   geometry_name = .FRS5_doe_8_LAUL.linkU4line1dummy.sph  &
   color = RED
!
part attributes  &
   part_name = .FRS5_doe_8_LAUL.linkU4line1dummy  &
   visibility = on  &
   size_of_icons = 1.5
!
!------------------------------ linkU4line2dummy ------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .FRS5_doe_8_LAUL.ground
!
part create rigid_body name_and_position  &
   part_name = .FRS5_doe_8_LAUL.linkU4line2dummy  &
   adams_id = 176  &
   location = 236.1252177309, 242.8696439404, 305.0558543766  &
   orientation = 0.1550011344d, 90.2684675477d, 30.0003631408d
!
defaults coordinate_system  &
   default_coordinate_system = .FRS5_doe_8_LAUL.linkU4line2dummy
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU4line2dummy.cm  &
   adams_id = 716  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkU4line2dummy.cm  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU4line2dummy.MARKER  &
   adams_id = 717  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkU4line2dummy.MARKER  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU4line2dummy.MARKER_2  &
   adams_id = 1150  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkU4line2dummy.MARKER_2  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU4line2dummy.MARKER_3  &
   adams_id = 1243  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkU4line2dummy.MARKER_3  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU4line2dummy.MARKER_4  &
   adams_id = 1281  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkU4line2dummy.MARKER_4  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU4line2dummy.MARKER_5  &
   adams_id = 1349  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkU4line2dummy.MARKER_5  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU4line2dummy.MARKER_6  &
   adams_id = 1350  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkU4line2dummy.MARKER_6  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU4line2dummy.MARKER_7  &
   adams_id = 1393  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkU4line2dummy.MARKER_7  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU4line2dummy.MARKER_8  &
   adams_id = 1445  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkU4line2dummy.MARKER_8  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU4line2dummy.MARKER_9  &
   adams_id = 1485  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkU4line2dummy.MARKER_9  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU4line2dummy.MARKER_10  &
   adams_id = 1517  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkU4line2dummy.MARKER_10  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU4line2dummy.MARKER_11  &
   adams_id = 1635  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkU4line2dummy.MARKER_11  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU4line2dummy.MARKER_12  &
   adams_id = 1738  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkU4line2dummy.MARKER_12  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU4line2dummy.MARKER_13  &
   adams_id = 1812  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkU4line2dummy.MARKER_13  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU4line2dummy.MARKER_14  &
   adams_id = 1960  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkU4line2dummy.MARKER_14  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU4line2dummy.MARKER_15  &
   adams_id = 2081  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkU4line2dummy.MARKER_15  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU4line2dummy.MARKER_16  &
   adams_id = 2116  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkU4line2dummy.MARKER_16  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU4line2dummy.MARKER_17  &
   adams_id = 2365  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkU4line2dummy.MARKER_17  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU4line2dummy.MARKER_18  &
   adams_id = 2530  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkU4line2dummy.MARKER_18  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU4line2dummy.MARKER_19  &
   adams_id = 3446  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkU4line2dummy.MARKER_19  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU4line2dummy.MARKER_20  &
   adams_id = 3910  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkU4line2dummy.MARKER_20  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU4line2dummy.MARKER_21  &
   adams_id = 4034  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkU4line2dummy.MARKER_21  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU4line2dummy.MARKER_22  &
   adams_id = 4195  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkU4line2dummy.MARKER_22  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU4line2dummy.MARKER_23  &
   adams_id = 4330  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkU4line2dummy.MARKER_23  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU4line2dummy.MARKER_24  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkU4line2dummy.MARKER_24  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU4line2dummy.MARKER_25  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU4line2dummy.MARKER_26  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
part create rigid_body mass_properties  &
   part_name = .FRS5_doe_8_LAUL.linkU4line2dummy  &
   material_type = .FRS5_doe_8_LAUL.wood
!
! ****** Graphics for current part ******
!
geometry create shape ellipsoid  &
   ellipsoid_name = .FRS5_doe_8_LAUL.linkU4line2dummy.sph  &
   adams_id = 989  &
   center_marker = .FRS5_doe_8_LAUL.linkU4line2dummy.cm  &
   x_scale_factor = 1.0  &
   y_scale_factor = 1.0  &
   z_scale_factor = 1.0
!
geometry attributes  &
   geometry_name = .FRS5_doe_8_LAUL.linkU4line2dummy.sph  &
   color = RED
!
part attributes  &
   part_name = .FRS5_doe_8_LAUL.linkU4line2dummy  &
   visibility = on  &
   size_of_icons = 1.5
!
!------------------------------ linkU3line2dummy ------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .FRS5_doe_8_LAUL.ground
!
part create rigid_body name_and_position  &
   part_name = .FRS5_doe_8_LAUL.linkU3line2dummy  &
   adams_id = 177  &
   location = 190.373095649, 242.8696439404, 278.6408543766  &
   orientation = 0.1550011344d, 90.2684675477d, 30.0003631408d
!
defaults coordinate_system  &
   default_coordinate_system = .FRS5_doe_8_LAUL.linkU3line2dummy
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU3line2dummy.cm  &
   adams_id = 718  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkU3line2dummy.cm  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU3line2dummy.MARKER  &
   adams_id = 719  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkU3line2dummy.MARKER  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU3line2dummy.MARKER_2  &
   adams_id = 1151  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkU3line2dummy.MARKER_2  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU3line2dummy.MARKER_3  &
   adams_id = 1244  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkU3line2dummy.MARKER_3  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU3line2dummy.MARKER_4  &
   adams_id = 1282  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkU3line2dummy.MARKER_4  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU3line2dummy.MARKER_5  &
   adams_id = 1351  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkU3line2dummy.MARKER_5  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU3line2dummy.MARKER_6  &
   adams_id = 1352  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkU3line2dummy.MARKER_6  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU3line2dummy.MARKER_7  &
   adams_id = 1394  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkU3line2dummy.MARKER_7  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU3line2dummy.MARKER_8  &
   adams_id = 1446  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkU3line2dummy.MARKER_8  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU3line2dummy.MARKER_9  &
   adams_id = 1486  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkU3line2dummy.MARKER_9  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU3line2dummy.MARKER_10  &
   adams_id = 1518  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkU3line2dummy.MARKER_10  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU3line2dummy.MARKER_11  &
   adams_id = 1636  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkU3line2dummy.MARKER_11  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU3line2dummy.MARKER_12  &
   adams_id = 1739  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkU3line2dummy.MARKER_12  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU3line2dummy.MARKER_13  &
   adams_id = 1813  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkU3line2dummy.MARKER_13  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU3line2dummy.MARKER_14  &
   adams_id = 1961  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkU3line2dummy.MARKER_14  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU3line2dummy.MARKER_15  &
   adams_id = 2082  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkU3line2dummy.MARKER_15  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU3line2dummy.MARKER_16  &
   adams_id = 2117  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkU3line2dummy.MARKER_16  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU3line2dummy.MARKER_17  &
   adams_id = 2366  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkU3line2dummy.MARKER_17  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU3line2dummy.MARKER_18  &
   adams_id = 2531  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkU3line2dummy.MARKER_18  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU3line2dummy.MARKER_19  &
   adams_id = 3447  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkU3line2dummy.MARKER_19  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU3line2dummy.MARKER_20  &
   adams_id = 3911  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkU3line2dummy.MARKER_20  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU3line2dummy.MARKER_21  &
   adams_id = 4035  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkU3line2dummy.MARKER_21  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU3line2dummy.MARKER_22  &
   adams_id = 4196  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkU3line2dummy.MARKER_22  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU3line2dummy.MARKER_23  &
   adams_id = 4331  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkU3line2dummy.MARKER_23  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU3line2dummy.MARKER_24  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkU3line2dummy.MARKER_24  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU3line2dummy.MARKER_25  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU3line2dummy.MARKER_26  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
part create rigid_body mass_properties  &
   part_name = .FRS5_doe_8_LAUL.linkU3line2dummy  &
   material_type = .FRS5_doe_8_LAUL.wood
!
! ****** Graphics for current part ******
!
geometry create shape ellipsoid  &
   ellipsoid_name = .FRS5_doe_8_LAUL.linkU3line2dummy.sph  &
   adams_id = 990  &
   center_marker = .FRS5_doe_8_LAUL.linkU3line2dummy.cm  &
   x_scale_factor = 1.0  &
   y_scale_factor = 1.0  &
   z_scale_factor = 1.0
!
geometry attributes  &
   geometry_name = .FRS5_doe_8_LAUL.linkU3line2dummy.sph  &
   color = RED
!
part attributes  &
   part_name = .FRS5_doe_8_LAUL.linkU3line2dummy  &
   visibility = on  &
   size_of_icons = 1.5
!
!------------------------------ linkU2line2dummy ------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .FRS5_doe_8_LAUL.ground
!
part create rigid_body name_and_position  &
   part_name = .FRS5_doe_8_LAUL.linkU2line2dummy  &
   adams_id = 178  &
   location = 144.620973567, 242.8696439404, 252.2258543766  &
   orientation = 0.1550011344d, 90.2684675477d, 30.0003631408d
!
defaults coordinate_system  &
   default_coordinate_system = .FRS5_doe_8_LAUL.linkU2line2dummy
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU2line2dummy.cm  &
   adams_id = 720  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkU2line2dummy.cm  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU2line2dummy.MARKER  &
   adams_id = 721  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkU2line2dummy.MARKER  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU2line2dummy.MARKER_2  &
   adams_id = 1152  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkU2line2dummy.MARKER_2  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU2line2dummy.MARKER_3  &
   adams_id = 1245  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkU2line2dummy.MARKER_3  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU2line2dummy.MARKER_4  &
   adams_id = 1283  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkU2line2dummy.MARKER_4  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU2line2dummy.MARKER_5  &
   adams_id = 1353  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkU2line2dummy.MARKER_5  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU2line2dummy.MARKER_6  &
   adams_id = 1354  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkU2line2dummy.MARKER_6  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU2line2dummy.MARKER_7  &
   adams_id = 1395  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkU2line2dummy.MARKER_7  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU2line2dummy.MARKER_8  &
   adams_id = 1447  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkU2line2dummy.MARKER_8  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU2line2dummy.MARKER_9  &
   adams_id = 1487  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkU2line2dummy.MARKER_9  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU2line2dummy.MARKER_10  &
   adams_id = 1519  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkU2line2dummy.MARKER_10  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU2line2dummy.MARKER_11  &
   adams_id = 1637  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkU2line2dummy.MARKER_11  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU2line2dummy.MARKER_12  &
   adams_id = 1740  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkU2line2dummy.MARKER_12  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU2line2dummy.MARKER_13  &
   adams_id = 1814  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkU2line2dummy.MARKER_13  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU2line2dummy.MARKER_14  &
   adams_id = 1962  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkU2line2dummy.MARKER_14  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU2line2dummy.MARKER_15  &
   adams_id = 2083  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkU2line2dummy.MARKER_15  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU2line2dummy.MARKER_16  &
   adams_id = 2118  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkU2line2dummy.MARKER_16  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU2line2dummy.MARKER_17  &
   adams_id = 2367  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkU2line2dummy.MARKER_17  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU2line2dummy.MARKER_18  &
   adams_id = 2532  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkU2line2dummy.MARKER_18  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU2line2dummy.MARKER_19  &
   adams_id = 3448  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkU2line2dummy.MARKER_19  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU2line2dummy.MARKER_20  &
   adams_id = 3912  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkU2line2dummy.MARKER_20  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU2line2dummy.MARKER_21  &
   adams_id = 4036  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkU2line2dummy.MARKER_21  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU2line2dummy.MARKER_22  &
   adams_id = 4197  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkU2line2dummy.MARKER_22  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU2line2dummy.MARKER_23  &
   adams_id = 4332  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkU2line2dummy.MARKER_23  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU2line2dummy.MARKER_24  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkU2line2dummy.MARKER_24  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU2line2dummy.MARKER_25  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU2line2dummy.MARKER_26  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
part create rigid_body mass_properties  &
   part_name = .FRS5_doe_8_LAUL.linkU2line2dummy  &
   material_type = .FRS5_doe_8_LAUL.wood
!
! ****** Graphics for current part ******
!
geometry create shape ellipsoid  &
   ellipsoid_name = .FRS5_doe_8_LAUL.linkU2line2dummy.sph  &
   adams_id = 991  &
   center_marker = .FRS5_doe_8_LAUL.linkU2line2dummy.cm  &
   x_scale_factor = 1.0  &
   y_scale_factor = 1.0  &
   z_scale_factor = 1.0
!
geometry attributes  &
   geometry_name = .FRS5_doe_8_LAUL.linkU2line2dummy.sph  &
   color = RED
!
part attributes  &
   part_name = .FRS5_doe_8_LAUL.linkU2line2dummy  &
   visibility = on  &
   size_of_icons = 1.5
!
!------------------------------ linkU1line2dummy ------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .FRS5_doe_8_LAUL.ground
!
part create rigid_body name_and_position  &
   part_name = .FRS5_doe_8_LAUL.linkU1line2dummy  &
   adams_id = 179  &
   location = 98.8688514851, 242.8696439404, 225.8108543766  &
   orientation = 0.1550011344d, 90.2684675477d, 30.0003631408d
!
defaults coordinate_system  &
   default_coordinate_system = .FRS5_doe_8_LAUL.linkU1line2dummy
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU1line2dummy.cm  &
   adams_id = 722  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkU1line2dummy.cm  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU1line2dummy.MARKER  &
   adams_id = 723  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkU1line2dummy.MARKER  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU1line2dummy.MARKER_2  &
   adams_id = 1153  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkU1line2dummy.MARKER_2  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU1line2dummy.MARKER_3  &
   adams_id = 1246  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkU1line2dummy.MARKER_3  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU1line2dummy.MARKER_4  &
   adams_id = 1284  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkU1line2dummy.MARKER_4  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU1line2dummy.MARKER_5  &
   adams_id = 1355  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkU1line2dummy.MARKER_5  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU1line2dummy.MARKER_6  &
   adams_id = 1356  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkU1line2dummy.MARKER_6  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU1line2dummy.MARKER_7  &
   adams_id = 1396  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkU1line2dummy.MARKER_7  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU1line2dummy.MARKER_8  &
   adams_id = 1448  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkU1line2dummy.MARKER_8  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU1line2dummy.MARKER_9  &
   adams_id = 1488  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkU1line2dummy.MARKER_9  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU1line2dummy.MARKER_10  &
   adams_id = 1520  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkU1line2dummy.MARKER_10  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU1line2dummy.MARKER_11  &
   adams_id = 1638  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkU1line2dummy.MARKER_11  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU1line2dummy.MARKER_12  &
   adams_id = 1741  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkU1line2dummy.MARKER_12  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU1line2dummy.MARKER_13  &
   adams_id = 1815  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkU1line2dummy.MARKER_13  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU1line2dummy.MARKER_14  &
   adams_id = 1963  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkU1line2dummy.MARKER_14  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU1line2dummy.MARKER_15  &
   adams_id = 2084  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkU1line2dummy.MARKER_15  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU1line2dummy.MARKER_16  &
   adams_id = 2119  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkU1line2dummy.MARKER_16  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU1line2dummy.MARKER_17  &
   adams_id = 2368  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkU1line2dummy.MARKER_17  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU1line2dummy.MARKER_18  &
   adams_id = 2533  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkU1line2dummy.MARKER_18  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU1line2dummy.MARKER_19  &
   adams_id = 3449  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkU1line2dummy.MARKER_19  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU1line2dummy.MARKER_20  &
   adams_id = 3913  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkU1line2dummy.MARKER_20  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU1line2dummy.MARKER_21  &
   adams_id = 4037  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkU1line2dummy.MARKER_21  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU1line2dummy.MARKER_22  &
   adams_id = 4198  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkU1line2dummy.MARKER_22  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU1line2dummy.MARKER_23  &
   adams_id = 4333  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkU1line2dummy.MARKER_23  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU1line2dummy.MARKER_24  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkU1line2dummy.MARKER_24  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU1line2dummy.MARKER_25  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU1line2dummy.MARKER_26  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
part create rigid_body mass_properties  &
   part_name = .FRS5_doe_8_LAUL.linkU1line2dummy  &
   material_type = .FRS5_doe_8_LAUL.wood
!
! ****** Graphics for current part ******
!
geometry create shape ellipsoid  &
   ellipsoid_name = .FRS5_doe_8_LAUL.linkU1line2dummy.sph  &
   adams_id = 992  &
   center_marker = .FRS5_doe_8_LAUL.linkU1line2dummy.cm  &
   x_scale_factor = 1.0  &
   y_scale_factor = 1.0  &
   z_scale_factor = 1.0
!
geometry attributes  &
   geometry_name = .FRS5_doe_8_LAUL.linkU1line2dummy.sph  &
   color = RED
!
part attributes  &
   part_name = .FRS5_doe_8_LAUL.linkU1line2dummy  &
   visibility = on  &
   size_of_icons = 1.5
!
!-------------------------------- projectileU4 --------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .FRS5_doe_8_LAUL.ground
!
part create rigid_body name_and_position  &
   part_name = .FRS5_doe_8_LAUL.projectileU4  &
   adams_id = 156  &
   location = 63.9893108966, 303.7250923891, 178.3424484725  &
   orientation = 180.04d, 90.0d, 150.0d
!
defaults coordinate_system  &
   default_coordinate_system = .FRS5_doe_8_LAUL.projectileU4
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.projectileU4.ptip  &
   adams_id = 1192  &
   location = 158.4867601493, 0.4339694258, -289.97  &
   orientation = 359.9999999935d, 179.69d, 329.9999999936d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.projectileU4.ptip  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.projectileU4.PSMAR  &
   adams_id = 527  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.projectileU4.PSMAR  &
   color = GREEN  &
   visibility = off  &
   size_of_icons = 10.0
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.projectileU4.cm  &
   adams_id = 529  &
   location = 158.4867601493, 0.4339694257, -215.841117526  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.projectileU4.cm  &
   color = GREEN  &
   size_of_icons = 10.0
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.projectileU4.crimp4a  &
   adams_id = 670  &
   location = 158.4867601493, 0.4339694257, -172.75  &
   orientation = 0.0d, 180.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.projectileU4.crimp4a  &
   color = GREEN  &
   size_of_icons = 10.0
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.projectileU4.MARKER_119  &
   adams_id = 530  &
   location = 158.4867601493, 0.4339694257, -172.75  &
   orientation = 0.0d, 180.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.projectileU4.MARKER_119  &
   color = GREEN  &
   size_of_icons = 10.0
!
part create rigid_body mass_properties  &
   part_name = .FRS5_doe_8_LAUL.projectileU4  &
   density = 6.4E-06
!
! ****** Graphics for current part ******
!
geometry create shape cylinder  &
   cylinder_name = .FRS5_doe_8_LAUL.projectileU4.CYL  &
   adams_id = 714  &
   center_marker = .FRS5_doe_8_LAUL.projectileU4.crimp4a  &
   angle_extent = 360.0  &
   length = 18.0  &
   radius = 15.71  &
   side_count_for_body = 30  &
   segment_count_for_ends = 30
!
geometry attributes  &
   geometry_name = .FRS5_doe_8_LAUL.projectileU4.CYL  &
   color = BLUE_GRAY
!
part attributes  &
   part_name = .FRS5_doe_8_LAUL.projectileU4  &
   color = BLUE  &
   visibility = on  &
   size_of_icons = 5.0
!
!-------------------------------- projectileU1 --------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .FRS5_doe_8_LAUL.ground
!
part create rigid_body name_and_position  &
   part_name = .FRS5_doe_8_LAUL.projectileU1  &
   adams_id = 157  &
   location = 63.4411935899, 303.8210649268, 178.05  &
   orientation = 179.96d, 90.0d, 138.48d
!
defaults coordinate_system  &
   default_coordinate_system = .FRS5_doe_8_LAUL.projectileU1
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.projectileU1.ptip  &
   adams_id = 1189  &
   location = 1.9424387096E-11, 2.2140228436E-11, -289.97  &
   orientation = 359.9999999935d, 179.69d, 329.9999999936d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.projectileU1.ptip  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.projectileU1.MARKER_1197  &
   adams_id = 1197  &
   location = 0.0, 0.0, -215.8991802535  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.projectileU1.MARKER_1197  &
   color = GREEN  &
   size_of_icons = 10.0
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.projectileU1.PSMAR  &
   adams_id = 531  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.projectileU1.PSMAR  &
   color = GREEN  &
   visibility = off  &
   size_of_icons = 10.0
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.projectileU1.cm  &
   adams_id = 533  &
   location = 0.0, 0.0, -215.841117526  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.projectileU1.cm  &
   color = GREEN  &
   size_of_icons = 10.0
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.projectileU1.crimp1a  &
   adams_id = 534  &
   location = 0.0, 0.0, -172.75  &
   orientation = 0.0d, 180.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.projectileU1.crimp1a  &
   color = GREEN  &
   size_of_icons = 10.0
!
part create rigid_body mass_properties  &
   part_name = .FRS5_doe_8_LAUL.projectileU1  &
   density = 6.4E-06
!
! ****** Graphics for current part ******
!
geometry create shape cylinder  &
   cylinder_name = .FRS5_doe_8_LAUL.projectileU1.CYL  &
   adams_id = 711  &
   center_marker = .FRS5_doe_8_LAUL.projectileU1.crimp1a  &
   angle_extent = 360.0  &
   length = 18.0  &
   radius = 15.71  &
   side_count_for_body = 30  &
   segment_count_for_ends = 30
!
geometry attributes  &
   geometry_name = .FRS5_doe_8_LAUL.projectileU1.CYL  &
   color = BLUE_GRAY
!
part attributes  &
   part_name = .FRS5_doe_8_LAUL.projectileU1  &
   color = BLUE  &
   visibility = on  &
   size_of_icons = 5.0
!
!-------------------------------- projectileU2 --------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .FRS5_doe_8_LAUL.ground
!
part create rigid_body name_and_position  &
   part_name = .FRS5_doe_8_LAUL.projectileU2  &
   adams_id = 158  &
   location = 65.3771802782, 302.8678286468, 176.2899306922  &
   orientation = 179.94d, 90.0d, 147.67d
!
defaults coordinate_system  &
   default_coordinate_system = .FRS5_doe_8_LAUL.projectileU2
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.projectileU2.ptip  &
   adams_id = 1190  &
   location = 52.83, 0.1457342863, -288.97  &
   orientation = 359.9999999935d, 179.69d, 329.9999999936d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.projectileU2.ptip  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.projectileU2.PSMAR  &
   adams_id = 535  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.projectileU2.PSMAR  &
   color = GREEN  &
   visibility = off  &
   size_of_icons = 10.0
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.projectileU2.cm  &
   adams_id = 537  &
   location = 52.83, 0.1457342863, -214.841117526  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.projectileU2.cm  &
   color = GREEN  &
   size_of_icons = 10.0
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.projectileU2.crimp2a  &
   adams_id = 666  &
   location = 52.83, 0.1457342863, -171.75  &
   orientation = 0.0d, 180.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.projectileU2.crimp2a  &
   color = GREEN  &
   size_of_icons = 10.0
!
part create rigid_body mass_properties  &
   part_name = .FRS5_doe_8_LAUL.projectileU2  &
   density = 6.4E-06
!
! ****** Graphics for current part ******
!
geometry create shape cylinder  &
   cylinder_name = .FRS5_doe_8_LAUL.projectileU2.CYL  &
   adams_id = 712  &
   center_marker = .FRS5_doe_8_LAUL.projectileU2.crimp2a  &
   angle_extent = 360.0  &
   length = 18.0  &
   radius = 15.71  &
   side_count_for_body = 30  &
   segment_count_for_ends = 30
!
geometry attributes  &
   geometry_name = .FRS5_doe_8_LAUL.projectileU2.CYL  &
   color = BLUE_GRAY
!
part attributes  &
   part_name = .FRS5_doe_8_LAUL.projectileU2  &
   color = BLUE  &
   visibility = on  &
   size_of_icons = 5.0
!
!-------------------------------- projectileU3 --------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .FRS5_doe_8_LAUL.ground
!
part create rigid_body name_and_position  &
   part_name = .FRS5_doe_8_LAUL.projectileU3  &
   adams_id = 159  &
   location = 63.9807814414, 303.7410195046, 178.2912347235  &
   orientation = 180.05d, 90.0d, 150.05d
!
defaults coordinate_system  &
   default_coordinate_system = .FRS5_doe_8_LAUL.projectileU3
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.projectileU3.ptip  &
   adams_id = 1191  &
   location = 105.6567601492, 0.2882351394, -289.97  &
   orientation = 359.9999999935d, 179.69d, 329.9999999936d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.projectileU3.ptip  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.projectileU3.PSMAR  &
   adams_id = 538  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.projectileU3.PSMAR  &
   color = GREEN  &
   visibility = off  &
   size_of_icons = 10.0
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.projectileU3.cm  &
   adams_id = 540  &
   location = 105.6567601493, 0.2882351394, -215.841117526  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.projectileU3.cm  &
   color = GREEN  &
   size_of_icons = 10.0
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.projectileU3.crimp3a  &
   adams_id = 668  &
   location = 105.6567601493, 0.2882351394, -172.75  &
   orientation = 0.0d, 180.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.projectileU3.crimp3a  &
   color = GREEN  &
   size_of_icons = 10.0
!
part create rigid_body mass_properties  &
   part_name = .FRS5_doe_8_LAUL.projectileU3  &
   density = 6.4E-06
!
! ****** Graphics for current part ******
!
geometry create shape cylinder  &
   cylinder_name = .FRS5_doe_8_LAUL.projectileU3.CYL  &
   adams_id = 713  &
   center_marker = .FRS5_doe_8_LAUL.projectileU3.crimp3a  &
   angle_extent = 360.0  &
   length = 18.0  &
   radius = 15.71  &
   side_count_for_body = 30  &
   segment_count_for_ends = 30
!
geometry attributes  &
   geometry_name = .FRS5_doe_8_LAUL.projectileU3.CYL  &
   color = BLUE_GRAY
!
part attributes  &
   part_name = .FRS5_doe_8_LAUL.projectileU3  &
   color = BLUE  &
   visibility = on  &
   size_of_icons = 5.0
!
!---------------------------------- brassU3 -----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .FRS5_doe_8_LAUL.ground
!
part create rigid_body name_and_position  &
   part_name = .FRS5_doe_8_LAUL.brassU3  &
   adams_id = 160  &
   location = 64.0868380279, 303.8050570021, 178.7279731527  &
   orientation = 179.9979965562d, 90.0034700887d, 150.0000694492d
!
defaults coordinate_system  &
   default_coordinate_system = .FRS5_doe_8_LAUL.brassU3
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.brassU3.crimp3b  &
   adams_id = 1643  &
   location = 105.6567601493, 0.2882351394, -172.75  &
   orientation = 0.0d, 180.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.brassU3.crimp3b  &
   color = GREEN  &
   size_of_icons = 10.0
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.brassU3.spring_ref  &
   adams_id = 796  &
   location = 105.6567601, -5.2721296446E-02, -67.4516907944  &
   orientation = 0.0d, 179.69d, 330.0000000001d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.brassU3.spring_ref  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.brassU3.MARKER_638  &
   adams_id = 638  &
   location = 105.6567601, 0.2882351394, -11.4954168526  &
   orientation = 30.0d, 180.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.brassU3.MARKER_638  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.brassU3.cyl_ref  &
   adams_id = 643  &
   location = 105.6567601, 0.2882351394, -172.75  &
   orientation = 359.9999999935d, 179.69d, 359.9999999936d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.brassU3.cyl_ref  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.brassU3.PSMAR  &
   adams_id = 541  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.brassU3.PSMAR  &
   color = GREEN  &
   visibility = off  &
   size_of_icons = 10.0
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.brassU3.cm  &
   adams_id = 542  &
   location = 105.6567601179, 0.2895902845, -75.1350369453  &
   orientation = 180.0000901206d, 179.9959930931d, 90.0001602344d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.brassU3.cm  &
   color = GREEN  &
   size_of_icons = 10.0
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.brassU3.primer  &
   adams_id = 543  &
   location = 105.6567601, 0.2882351394, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.brassU3.primer  &
   color = GREEN  &
   size_of_icons = 10.0
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.brassU3.tc  &
   adams_id = 14  &
   location = 105.66, 0.2914685726, -109.4762786185  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.brassU3.tc  &
   color = GREEN  &
   size_of_icons = 10.0
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.brassU3.ac  &
   adams_id = 15  &
   location = 105.66, 0.2914685726, -83.376278637  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.brassU3.ac  &
   color = GREEN  &
   size_of_icons = 10.0
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.brassU3.fc  &
   adams_id = 16  &
   location = 105.6567601, 0.2882351394, -135.5762786  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.brassU3.fc  &
   color = GREEN  &
   size_of_icons = 10.0
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.brassU3.channel_ref  &
   adams_id = 544  &
   location = 105.6567601494, 0.2882351394, -7.9591619725  &
   orientation = 359.9999999935d, 179.69d, 359.9999999936d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.brassU3.channel_ref  &
   color = GREEN  &
   size_of_icons = 10.0
!
! ****** Floating Markers for current part ******
!
floating_marker create  &
   floating_marker_name = .FRS5_doe_8_LAUL.brassU3.FMARKER_32  &
   adams_id = 545
!
part create rigid_body mass_properties  &
   part_name = .FRS5_doe_8_LAUL.brassU3  &
   density = 2.23E-06
!
! ****** Graphics for current part ******
!
geometry create shape frustum  &
   frustum_name = .FRS5_doe_8_LAUL.brassU3.frust  &
   adams_id = 536  &
   center_marker = .FRS5_doe_8_LAUL.brassU3.MARKER_638  &
   angle_extent = 360.0  &
   length = 134.0  &
   top_radius = 20.1  &
   bottom_radius = 21.75  &
   side_count_for_body = 30  &
   segment_count_for_ends = 30
!
geometry attributes  &
   geometry_name = .FRS5_doe_8_LAUL.brassU3.frust  &
   color = MAIZE  &
   render = wireframe
!
geometry create shape cylinder  &
   cylinder_name = .FRS5_doe_8_LAUL.brassU3.cyl  &
   adams_id = 673  &
   center_marker = .FRS5_doe_8_LAUL.brassU3.cyl_ref  &
   angle_extent = 360.0  &
   length = -14.0  &
   radius = 15.8  &
   side_count_for_body = 30  &
   segment_count_for_ends = 30
!
geometry attributes  &
   geometry_name = .FRS5_doe_8_LAUL.brassU3.cyl  &
   color = MAIZE  &
   render = wireframe
!
part attributes  &
   part_name = .FRS5_doe_8_LAUL.brassU3  &
   color = COLOR_R068G137B035  &
   visibility = on  &
   size_of_icons = 5.0
!
!---------------------------------- brassU4 -----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .FRS5_doe_8_LAUL.ground
!
part create rigid_body name_and_position  &
   part_name = .FRS5_doe_8_LAUL.brassU4  &
   adams_id = 161  &
   location = 64.0318170603, 303.805067188, 178.8692380784  &
   orientation = 179.9979965562d, 90.0034700887d, 150.0000693401d
!
defaults coordinate_system  &
   default_coordinate_system = .FRS5_doe_8_LAUL.brassU4
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.brassU4.crimp4b  &
   adams_id = 1644  &
   location = 158.4867601493, 0.4339694257, -172.75  &
   orientation = 0.0d, 180.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.brassU4.crimp4b  &
   color = GREEN  &
   size_of_icons = 10.0
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.brassU4.spring_ref  &
   adams_id = 797  &
   location = 158.4867601, 9.3012989846E-02, -67.4516907944  &
   orientation = 0.0d, 179.69d, 330.0000000001d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.brassU4.spring_ref  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.brassU4.MARKER_639  &
   adams_id = 639  &
   location = 158.4867601001, 0.4339694257, -11.4954168526  &
   orientation = 30.0d, 180.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.brassU4.MARKER_639  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.brassU4.cyl_ref  &
   adams_id = 642  &
   location = 158.4867601001, 0.4339694258, -172.75  &
   orientation = 359.9999999935d, 179.69d, 359.9999999936d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.brassU4.cyl_ref  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.brassU4.PSMAR  &
   adams_id = 547  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.brassU4.PSMAR  &
   color = GREEN  &
   visibility = off  &
   size_of_icons = 10.0
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.brassU4.cm  &
   adams_id = 548  &
   location = 158.486760118, 0.4353245708, -75.1350369453  &
   orientation = 180.0000899381d, 179.9959930931d, 90.0001599072d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.brassU4.cm  &
   color = GREEN  &
   size_of_icons = 10.0
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.brassU4.primer  &
   adams_id = 549  &
   location = 158.4867601, 0.4339694257, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.brassU4.primer  &
   color = GREEN  &
   size_of_icons = 10.0
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.brassU4.tc  &
   adams_id = 550  &
   location = 158.49, 0.4372028589, -109.4762786185  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.brassU4.tc  &
   color = GREEN  &
   size_of_icons = 10.0
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.brassU4.ac  &
   adams_id = 551  &
   location = 158.49, 0.4372028589, -83.376278637  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.brassU4.ac  &
   color = GREEN  &
   size_of_icons = 10.0
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.brassU4.fc  &
   adams_id = 13  &
   location = 158.4867601, 0.4339694257, -135.5762786  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.brassU4.fc  &
   color = GREEN  &
   size_of_icons = 10.0
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.brassU4.channel_ref  &
   adams_id = 552  &
   location = 158.4867601493, 0.4339694257, -7.9591619725  &
   orientation = 359.9999999935d, 179.69d, 359.9999999936d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.brassU4.channel_ref  &
   color = GREEN  &
   size_of_icons = 10.0
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.brassU4.MARKER_109  &
   adams_id = 553  &
   location = 158.4867601493, 0.4339694257, -7.9591619725  &
   orientation = 0.0d, 180.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.brassU4.MARKER_109  &
   color = GREEN  &
   size_of_icons = 10.0
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.brassU4.MARKER_110  &
   adams_id = 554  &
   location = 158.4867601, 0.4339694257, -135.5762786  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.brassU4.MARKER_110  &
   color = GREEN  &
   size_of_icons = 10.0
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.brassU4.MARKER_113  &
   adams_id = 555  &
   location = 158.49, 0.4372028589, -83.376278637  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.brassU4.MARKER_113  &
   color = GREEN  &
   size_of_icons = 10.0
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.brassU4.MARKER_116  &
   adams_id = 556  &
   location = 158.4867601, 0.579703712, -109.4762786185  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.brassU4.MARKER_116  &
   color = GREEN  &
   size_of_icons = 10.0
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.brassU4.MARKER_121  &
   adams_id = 557  &
   location = 158.4867601493, 0.4339694257, -172.75  &
   orientation = 0.0d, 180.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.brassU4.MARKER_121  &
   color = GREEN  &
   size_of_icons = 10.0
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.brassU4.MARKER_2462  &
   adams_id = 2462  &
   location = 158.4867601, 9.3012989846E-02, -67.4516907944  &
   orientation = 0.0d, 179.69d, 330.0000000001d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.brassU4.MARKER_2462  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.brassU4.MARKER_2465  &
   adams_id = 2465  &
   location = 158.4867601, 9.3012989846E-02, -67.4516907944  &
   orientation = 0.0d, 179.69d, 330.0000000001d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.brassU4.MARKER_2465  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.brassU4.MARKER_2468  &
   adams_id = 2468  &
   location = 158.4867601, 9.3012989846E-02, -67.4516907944  &
   orientation = 0.0d, 179.69d, 330.0000000001d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.brassU4.MARKER_2468  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.brassU4.MARKER_2471  &
   adams_id = 2471  &
   location = 158.4867601, 9.3012989846E-02, -67.4516907944  &
   orientation = 0.0d, 179.69d, 330.0000000001d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.brassU4.MARKER_2471  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.brassU4.MARKER_2474  &
   adams_id = 2474  &
   location = 158.4867601, 9.3012989846E-02, -67.4516907944  &
   orientation = 0.0d, 179.69d, 330.0000000001d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.brassU4.MARKER_2474  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.brassU4.MARKER_2477  &
   adams_id = 2477  &
   location = 158.4867601, 9.3012989846E-02, -67.4516907944  &
   orientation = 0.0d, 179.69d, 330.0000000001d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.brassU4.MARKER_2477  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.brassU4.MARKER_2480  &
   adams_id = 2480  &
   location = 158.4867601, 9.3012989846E-02, -67.4516907944  &
   orientation = 0.0d, 179.69d, 330.0000000001d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.brassU4.MARKER_2480  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.brassU4.MARKER_2483  &
   adams_id = 2483  &
   location = 158.4867601, 9.3012989846E-02, -67.4516907944  &
   orientation = 0.0d, 179.69d, 330.0000000001d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.brassU4.MARKER_2483  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.brassU4.MARKER_2486  &
   adams_id = 2486  &
   location = 158.4867601, 9.3012989846E-02, -67.4516907944  &
   orientation = 0.0d, 179.69d, 330.0000000001d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.brassU4.MARKER_2486  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.brassU4.MARKER_2489  &
   adams_id = 2489  &
   location = 158.4867601, 9.3012989846E-02, -67.4516907944  &
   orientation = 0.0d, 179.69d, 330.0000000001d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.brassU4.MARKER_2489  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.brassU4.MARKER_2492  &
   adams_id = 2492  &
   location = 158.4867601, 9.3012989846E-02, -67.4516907944  &
   orientation = 0.0d, 179.69d, 330.0000000001d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.brassU4.MARKER_2492  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.brassU4.MARKER_2495  &
   adams_id = 2495  &
   location = 158.4867601, 9.3012989846E-02, -67.4516907944  &
   orientation = 0.0d, 179.69d, 330.0000000001d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.brassU4.MARKER_2495  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.brassU4.MARKER_2498  &
   adams_id = 2498  &
   location = 158.4867601, 9.3012989846E-02, -67.4516907944  &
   orientation = 0.0d, 179.69d, 330.0000000001d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.brassU4.MARKER_2498  &
   color = GREEN
!
! ****** Floating Markers for current part ******
!
floating_marker create  &
   floating_marker_name = .FRS5_doe_8_LAUL.brassU4.FMARKER_31  &
   adams_id = 558
!
part create rigid_body mass_properties  &
   part_name = .FRS5_doe_8_LAUL.brassU4  &
   density = 2.23E-06
!
! ****** Graphics for current part ******
!
geometry create shape frustum  &
   frustum_name = .FRS5_doe_8_LAUL.brassU4.frust  &
   adams_id = 557  &
   center_marker = .FRS5_doe_8_LAUL.brassU4.MARKER_639  &
   angle_extent = 360.0  &
   length = 134.0  &
   top_radius = 20.1  &
   bottom_radius = 21.75  &
   side_count_for_body = 30  &
   segment_count_for_ends = 30
!
geometry attributes  &
   geometry_name = .FRS5_doe_8_LAUL.brassU4.frust  &
   color = MAIZE  &
   render = wireframe
!
geometry create shape cylinder  &
   cylinder_name = .FRS5_doe_8_LAUL.brassU4.cyl  &
   adams_id = 654  &
   center_marker = .FRS5_doe_8_LAUL.brassU4.cyl_ref  &
   angle_extent = 360.0  &
   length = -14.0  &
   radius = 15.8  &
   side_count_for_body = 30  &
   segment_count_for_ends = 30
!
geometry attributes  &
   geometry_name = .FRS5_doe_8_LAUL.brassU4.cyl  &
   color = MAIZE  &
   render = wireframe
!
part attributes  &
   part_name = .FRS5_doe_8_LAUL.brassU4  &
   color = COLOR_R068G137B035  &
   visibility = on  &
   size_of_icons = 5.0
!
!---------------------------------- brassU2 -----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .FRS5_doe_8_LAUL.ground
!
part create rigid_body name_and_position  &
   part_name = .FRS5_doe_8_LAUL.brassU2  &
   adams_id = 162  &
   location = 65.2942226478, 302.8050470505, 176.6666949234  &
   orientation = 179.9978571268d, 90.0033857639d, 147.6699999367d
!
defaults coordinate_system  &
   default_coordinate_system = .FRS5_doe_8_LAUL.brassU2
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.brassU2.crimp2b  &
   adams_id = 1642  &
   location = 52.83, 0.1457342863, -171.75  &
   orientation = 0.0d, 180.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.brassU2.crimp2b  &
   color = GREEN  &
   size_of_icons = 10.0
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.brassU2.spring_ref  &
   adams_id = 789  &
   location = 52.83, -0.1952221496, -66.4516907944  &
   orientation = 0.0d, 179.69d, 330.0000000001d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.brassU2.spring_ref  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.brassU2.MARKER_637  &
   adams_id = 637  &
   location = 52.8300000001, 0.1457342863, -10.4954168526  &
   orientation = 30.0d, 180.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.brassU2.MARKER_637  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.brassU2.cyl_ref  &
   adams_id = 644  &
   location = 52.8300000001, 0.1457342863, -171.75  &
   orientation = 359.9999999935d, 179.69d, 359.9999999936d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.brassU2.cyl_ref  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.brassU2.primer  &
   adams_id = 562  &
   location = 52.83, 0.1457342863, 1.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.brassU2.primer  &
   color = GREEN  &
   size_of_icons = 10.0
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.brassU2.PSMAR  &
   adams_id = 563  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.brassU2.PSMAR  &
   color = GREEN  &
   visibility = off  &
   size_of_icons = 10.0
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.brassU2.cm  &
   adams_id = 564  &
   location = 52.8300000001, 0.1470894314, -74.1350369453  &
   orientation = 179.9999998112d, 179.9959930931d, 89.9999998112d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.brassU2.cm  &
   color = GREEN  &
   size_of_icons = 10.0
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.brassU2.tc  &
   adams_id = 565  &
   location = 52.8332399, 0.1489677195, -108.4762786185  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.brassU2.tc  &
   color = GREEN  &
   size_of_icons = 10.0
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.brassU2.ac  &
   adams_id = 566  &
   location = 52.8332399, 0.1489677195, -82.376278637  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.brassU2.ac  &
   color = GREEN  &
   size_of_icons = 10.0
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.brassU2.fc  &
   adams_id = 567  &
   location = 52.83, 0.1457342863, -134.5762786  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.brassU2.fc  &
   color = GREEN  &
   size_of_icons = 10.0
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.brassU2.channel_ref  &
   adams_id = 568  &
   location = 52.8300000493, 0.1457342863, -6.9591619725  &
   orientation = 359.9999999935d, 179.69d, 359.9999999936d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.brassU2.channel_ref  &
   color = GREEN  &
   size_of_icons = 10.0
!
! ****** Floating Markers for current part ******
!
floating_marker create  &
   floating_marker_name = .FRS5_doe_8_LAUL.brassU2.FMARKER_33  &
   adams_id = 569
!
part create rigid_body mass_properties  &
   part_name = .FRS5_doe_8_LAUL.brassU2  &
   density = 2.23E-06
!
! ****** Graphics for current part ******
!
geometry create shape frustum  &
   frustum_name = .FRS5_doe_8_LAUL.brassU2.frust  &
   adams_id = 519  &
   center_marker = .FRS5_doe_8_LAUL.brassU2.MARKER_637  &
   angle_extent = 360.0  &
   length = 134.0  &
   top_radius = 20.1  &
   bottom_radius = 21.75  &
   side_count_for_body = 30  &
   segment_count_for_ends = 30
!
geometry attributes  &
   geometry_name = .FRS5_doe_8_LAUL.brassU2.frust  &
   color = MAIZE  &
   render = wireframe
!
geometry create shape cylinder  &
   cylinder_name = .FRS5_doe_8_LAUL.brassU2.cyl  &
   adams_id = 694  &
   center_marker = .FRS5_doe_8_LAUL.brassU2.cyl_ref  &
   angle_extent = 360.0  &
   length = -14.0  &
   radius = 15.8  &
   side_count_for_body = 30  &
   segment_count_for_ends = 30
!
geometry attributes  &
   geometry_name = .FRS5_doe_8_LAUL.brassU2.cyl  &
   color = MAIZE  &
   render = wireframe
!
part attributes  &
   part_name = .FRS5_doe_8_LAUL.brassU2  &
   color = COLOR_R068G137B035  &
   visibility = on  &
   size_of_icons = 5.0
!
!---------------------------------- brassU1 -----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .FRS5_doe_8_LAUL.ground
!
part create rigid_body name_and_position  &
   part_name = .FRS5_doe_8_LAUL.brassU1  &
   adams_id = 163  &
   location = 63.4030928674, 303.8050368563, 178.1070804785  &
   orientation = 179.9973438958d, 90.0030000689d, 138.4799999305d
!
defaults coordinate_system  &
   default_coordinate_system = .FRS5_doe_8_LAUL.brassU1
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.brassU1.crimp1b  &
   adams_id = 1641  &
   location = 0.0, 0.0, -172.75  &
   orientation = 0.0d, 180.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.brassU1.crimp1b  &
   color = GREEN  &
   size_of_icons = 10.0
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.brassU1.MARKER_1200  &
   adams_id = 1200  &
   location = 0.0, 0.0, -63.5609329406  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.brassU1.MARKER_1200  &
   color = GREEN  &
   size_of_icons = 10.0
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.brassU1.MARKER_1203  &
   adams_id = 1203  &
   location = 0.0, 0.0, -63.5609329406  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.brassU1.MARKER_1203  &
   color = GREEN  &
   size_of_icons = 10.0
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.brassU1.MARKER_1206  &
   adams_id = 1206  &
   location = 0.0, 0.0, -63.5609329406  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.brassU1.MARKER_1206  &
   color = GREEN  &
   size_of_icons = 10.0
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.brassU1.cyl_ref  &
   adams_id = 635  &
   location = -3.6612348115E-11, -2.4463841677E-11, -172.75  &
   orientation = 359.9999999935d, 179.69d, 359.9999999936d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.brassU1.cyl_ref  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.brassU1.frust_ref  &
   adams_id = 636  &
   location = 0.0, 0.0, -11.4954168526  &
   orientation = 30.0d, 180.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.brassU1.frust_ref  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.brassU1.spring_ref  &
   adams_id = 760  &
   location = -3.9815802797E-11, -0.3409564359, -67.4516907944  &
   orientation = 0.0d, 179.69d, 330.0000000002d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.brassU1.spring_ref  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.brassU1.primer  &
   adams_id = 571  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.brassU1.primer  &
   color = GREEN  &
   size_of_icons = 10.0
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.brassU1.PSMAR  &
   adams_id = 572  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.brassU1.PSMAR  &
   color = GREEN  &
   visibility = off  &
   size_of_icons = 10.0
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.brassU1.cm  &
   adams_id = 573  &
   location = 0.0, 1.3551451359E-03, -75.1350369453  &
   orientation = 180.0000000453d, 179.9959930931d, 90.0000000453d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.brassU1.cm  &
   color = GREEN  &
   size_of_icons = 10.0
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.brassU1.tc  &
   adams_id = 574  &
   location = 3.2399E-03, 3.23343318E-03, -109.4762786185  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.brassU1.tc  &
   color = GREEN  &
   size_of_icons = 10.0
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.brassU1.ac  &
   adams_id = 575  &
   location = 3.2399E-03, 3.23343318E-03, -83.376278637  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.brassU1.ac  &
   color = GREEN  &
   size_of_icons = 10.0
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.brassU1.fc  &
   adams_id = 576  &
   location = 0.0, 0.0, -135.5762786  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.brassU1.fc  &
   color = GREEN  &
   size_of_icons = 10.0
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.brassU1.channel_ref  &
   adams_id = 577  &
   location = 4.9329235015E-08, 0.0, -7.9591619725  &
   orientation = 359.9999999935d, 179.69d, 359.9999999936d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.brassU1.channel_ref  &
   color = GREEN  &
   size_of_icons = 10.0
!
! ****** Floating Markers for current part ******
!
floating_marker create  &
   floating_marker_name = .FRS5_doe_8_LAUL.brassU1.FMARKER_34  &
   adams_id = 578
!
part create rigid_body mass_properties  &
   part_name = .FRS5_doe_8_LAUL.brassU1  &
   density = 2.23E-06
!
! ****** Graphics for current part ******
!
geometry create shape cylinder  &
   cylinder_name = .FRS5_doe_8_LAUL.brassU1.cyl  &
   adams_id = 487  &
   center_marker = .FRS5_doe_8_LAUL.brassU1.cyl_ref  &
   angle_extent = 360.0  &
   length = -14.0  &
   radius = 15.8  &
   side_count_for_body = 30  &
   segment_count_for_ends = 30
!
geometry attributes  &
   geometry_name = .FRS5_doe_8_LAUL.brassU1.cyl  &
   color = MAIZE  &
   render = wireframe
!
geometry create shape frustum  &
   frustum_name = .FRS5_doe_8_LAUL.brassU1.frust  &
   adams_id = 502  &
   center_marker = .FRS5_doe_8_LAUL.brassU1.frust_ref  &
   angle_extent = 360.0  &
   length = 134.0  &
   top_radius = 20.1  &
   bottom_radius = 21.75  &
   side_count_for_body = 30  &
   segment_count_for_ends = 30
!
geometry attributes  &
   geometry_name = .FRS5_doe_8_LAUL.brassU1.frust  &
   color = MAIZE  &
   render = wireframe
!
part attributes  &
   part_name = .FRS5_doe_8_LAUL.brassU1  &
   color = COLOR_R068G137B035  &
   visibility = on  &
   size_of_icons = 5.0
!
!----------------------------------- linkU4 -----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .FRS5_doe_8_LAUL.ground
!
part create rigid_body name_and_position  &
   part_name = .FRS5_doe_8_LAUL.linkU4  &
   adams_id = 166  &
   location = 63.7957035546, 303.9251493043, 179.3808753696  &
   orientation = 180.1321418666d, 89.6809776663d, 149.994230063d
!
defaults coordinate_system  &
   default_coordinate_system = .FRS5_doe_8_LAUL.linkU4
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU4.MARKER_756  &
   adams_id = 756  &
   location = 211.3167601001, -23.2333305743, -156.5767882549  &
   orientation = 0.0d, 180.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkU4.MARKER_756  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU4.MARKER_651  &
   adams_id = 651  &
   location = 158.4867601001, -23.2333305743, -156.5767882549  &
   orientation = 0.0d, 180.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkU4.MARKER_651  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU4.MARKER_661  &
   adams_id = 661  &
   location = 158.4867601001, -23.0401103267, -60.8267882549  &
   orientation = 0.0d, 180.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkU4.MARKER_661  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU4.PSMAR1  &
   adams_id = 677  &
   location = -30.0416041173, -26.5627971411, -303.6962786  &
   orientation = 0.0d, 90.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkU4.PSMAR1  &
   color = GREEN  &
   visibility = off
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU4.fc  &
   adams_id = 678  &
   location = 158.4867601, 0.4339694257, -135.5762786  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkU4.fc  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU4.fwd_center  &
   adams_id = 593  &
   location = 158.4867601, 0.4339694257, -135.5762786  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkU4.fwd_center  &
   color = GREEN  &
   size_of_icons = 10.0
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU4.aft_center  &
   adams_id = 594  &
   location = 158.49, 0.4372028589, -83.376278637  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkU4.aft_center  &
   color = GREEN  &
   size_of_icons = 10.0
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU4.cm  &
   adams_id = 595  &
   location = 174.2986797657, -10.9175405202, -102.054552564  &
   orientation = 105.6755315089d, 157.5389008609d, 13.5277437509d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkU4.cm  &
   color = GREEN  &
   size_of_icons = 10.0
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU4.trailing_center  &
   adams_id = 596  &
   location = 211.3167601, 0.579703712, -109.4762786185  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkU4.trailing_center  &
   color = GREEN  &
   size_of_icons = 10.0
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU4.tongue  &
   adams_id = 597  &
   location = 158.4867601493, -15.5660305743, -7.9591619725  &
   orientation = 0.0d, 180.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkU4.tongue  &
   color = GREEN  &
   size_of_icons = 10.0
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU4.MARKER_107  &
   adams_id = 598  &
   location = 158.4867601493, -15.5660305743, -7.9591619725  &
   orientation = 0.0d, 180.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkU4.MARKER_107  &
   color = GREEN  &
   size_of_icons = 10.0
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU4.MARKER_112  &
   adams_id = 599  &
   location = 158.4867601, 0.4339694257, -135.5762786  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkU4.MARKER_112  &
   color = GREEN  &
   size_of_icons = 10.0
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU4.MARKER_115  &
   adams_id = 600  &
   location = 158.49, 0.4372028589, -83.376278637  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkU4.MARKER_115  &
   color = GREEN  &
   size_of_icons = 10.0
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU4.MARKER_1295  &
   adams_id = 1295  &
   location = 211.3167601, 0.579703712, -109.4762786185  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkU4.MARKER_1295  &
   color = GREEN  &
   size_of_icons = 10.0
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU4.MARKER_1297  &
   adams_id = 1297  &
   location = 211.3167601, 0.579703712, -109.4762786185  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkU4.MARKER_1297  &
   color = GREEN  &
   size_of_icons = 10.0
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU4.MARKER_1298  &
   adams_id = 1298  &
   location = 211.3167601, 0.579703712, -109.4762786185  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkU4.MARKER_1298  &
   color = GREEN  &
   size_of_icons = 10.0
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU4.MARKER_1300  &
   adams_id = 1300  &
   location = 211.3167601, 0.579703712, -109.4762786185  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkU4.MARKER_1300  &
   color = GREEN  &
   size_of_icons = 10.0
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU4.MARKER_1301  &
   adams_id = 1301  &
   location = 211.3167601, 0.579703712, -109.4762786185  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkU4.MARKER_1301  &
   color = GREEN  &
   size_of_icons = 10.0
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU4.MARKER_1303  &
   adams_id = 1303  &
   location = 211.3167601, 0.579703712, -109.4762786185  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkU4.MARKER_1303  &
   color = GREEN  &
   size_of_icons = 10.0
!
! ****** Floating Markers for current part ******
!
floating_marker create  &
   floating_marker_name = .FRS5_doe_8_LAUL.linkU4.FMARKER_38  &
   adams_id = 601
!
floating_marker create  &
   floating_marker_name = .FRS5_doe_8_LAUL.linkU4.FMARKER_39  &
   adams_id = 602
!
floating_marker create  &
   floating_marker_name = .FRS5_doe_8_LAUL.linkU4.FMARKER_2461  &
   adams_id = 2461
!
part create rigid_body mass_properties  &
   part_name = .FRS5_doe_8_LAUL.linkU4  &
   mass = 0.1384434979  &
   center_of_mass_marker = .FRS5_doe_8_LAUL.linkU4.cm  &
   ixx = 263.6376376274  &
   iyy = 178.4287826242  &
   izz = 129.3984905937  &
   ixy = 0.0  &
   izx = 0.0  &
   iyz = 0.0
!
! ****** Points for current part ******
!
point create  &
   point_name = .FRS5_doe_8_LAUL.linkU4.cntrpt_4  &
   location = 158.4867601, 0.4339694257, -135.5762786
!
point attributes  &
   point_name = .FRS5_doe_8_LAUL.linkU4.cntrpt_4  &
   color = GREEN
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .FRS5_doe_8_LAUL.linkU4  &
   color = COLOR_R114G012B132  &
   visibility = on  &
   size_of_icons = 5.0
!
!----------------------------------- linkU2 -----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .FRS5_doe_8_LAUL.ground
!
part create rigid_body name_and_position  &
   part_name = .FRS5_doe_8_LAUL.linkU2  &
   adams_id = 167  &
   location = 63.8831241812, 302.8437272596, 179.1113001108  &
   orientation = 180.1321423101d, 89.6809783485d, 149.9942294095d
!
defaults coordinate_system  &
   default_coordinate_system = .FRS5_doe_8_LAUL.linkU2
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU2.MARKER_647  &
   adams_id = 647  &
   location = 52.8300000001, -23.5215657137, -155.5767882549  &
   orientation = 0.0d, 180.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkU2.MARKER_647  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU2.MARKER_657  &
   adams_id = 657  &
   location = 52.8300000001, -23.3283454661, -59.8267882549  &
   orientation = 0.0d, 180.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkU2.MARKER_657  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU2.PSMAR1  &
   adams_id = 673  &
   location = -135.6983642173, -26.8510322805, -302.6962786  &
   orientation = 0.0d, 90.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkU2.PSMAR1  &
   color = GREEN  &
   visibility = off
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU2.fc  &
   adams_id = 674  &
   location = 52.83, 0.1457342863, -134.5762786  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkU2.fc  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU2.cm  &
   adams_id = 606  &
   location = 68.6386800762, -11.2090093995, -101.0545529134  &
   orientation = 105.6755334932d, 157.5389014595d, 13.5277451937d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkU2.cm  &
   color = GREEN  &
   size_of_icons = 10.0
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU2.trailing_center  &
   adams_id = 607  &
   location = 105.66, 0.2914685726, -108.4762786185  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkU2.trailing_center  &
   color = GREEN  &
   size_of_icons = 10.0
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU2.aft_center  &
   adams_id = 608  &
   location = 52.8332399, 0.1489677195, -82.376278637  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkU2.aft_center  &
   color = GREEN  &
   size_of_icons = 10.0
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU2.fwd_center  &
   adams_id = 609  &
   location = 52.83, 0.1457342863, -134.5762786  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkU2.fwd_center  &
   color = GREEN  &
   size_of_icons = 10.0
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU2.tongue  &
   adams_id = 610  &
   location = 52.8300000493, -15.8542657137, -6.9591619725  &
   orientation = 0.0d, 180.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkU2.tongue  &
   color = GREEN  &
   size_of_icons = 10.0
!
! ****** Floating Markers for current part ******
!
floating_marker create  &
   floating_marker_name = .FRS5_doe_8_LAUL.linkU2.FMARKER_36  &
   adams_id = 611
!
floating_marker create  &
   floating_marker_name = .FRS5_doe_8_LAUL.linkU2.FMARKER_41  &
   adams_id = 612
!
floating_marker create  &
   floating_marker_name = .FRS5_doe_8_LAUL.linkU2.FMARKER_44  &
   adams_id = 613
!
part create rigid_body mass_properties  &
   part_name = .FRS5_doe_8_LAUL.linkU2  &
   mass = 0.1384434959  &
   center_of_mass_marker = .FRS5_doe_8_LAUL.linkU2.cm  &
   ixx = 263.6376356987  &
   iyy = 178.4287798008  &
   izz = 129.3984890332  &
   ixy = 0.0  &
   izx = 0.0  &
   iyz = 0.0
!
! ****** Points for current part ******
!
point create  &
   point_name = .FRS5_doe_8_LAUL.linkU2.cntrpt_4  &
   location = 52.83, 0.1457342863, -134.5762786
!
point attributes  &
   point_name = .FRS5_doe_8_LAUL.linkU2.cntrpt_4  &
   color = GREEN
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .FRS5_doe_8_LAUL.linkU2  &
   color = COLOR_R114G012B132  &
   visibility = on  &
   size_of_icons = 5.0
!
!----------------------------------- linkU3 -----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .FRS5_doe_8_LAUL.ground
!
part create rigid_body name_and_position  &
   part_name = .FRS5_doe_8_LAUL.linkU3  &
   adams_id = 168  &
   location = 63.8495500702, 303.325423896, 179.2607575006  &
   orientation = 180.1321423101d, 89.6809783485d, 149.9942294095d
!
defaults coordinate_system  &
   default_coordinate_system = .FRS5_doe_8_LAUL.linkU3
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU3.MARKER_649  &
   adams_id = 649  &
   location = 105.6567601, -23.3790648606, -156.5767882549  &
   orientation = 0.0d, 180.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkU3.MARKER_649  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU3.MARKER_659  &
   adams_id = 659  &
   location = 105.6567601, -23.185844613, -60.8267882549  &
   orientation = 0.0d, 180.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkU3.MARKER_659  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU3.PSMAR1  &
   adams_id = 675  &
   location = -82.8716041173, -26.7085314274, -303.6962786  &
   orientation = 0.0d, 90.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkU3.PSMAR1  &
   color = GREEN  &
   visibility = off
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU3.fc  &
   adams_id = 676  &
   location = 105.6567601, 0.2882351394, -135.5762786  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkU3.fc  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU3.cm  &
   adams_id = 615  &
   location = 121.4686800762, -11.0632751132, -101.49553841  &
   orientation = 105.6755334932d, 157.5389014595d, 13.5277451937d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkU3.cm  &
   color = GREEN  &
   size_of_icons = 10.0
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU3.trailing_center  &
   adams_id = 616  &
   location = 158.4867601, 0.4339694257, -109.4762786185  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkU3.trailing_center  &
   color = GREEN  &
   size_of_icons = 10.0
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU3.aft_center  &
   adams_id = 617  &
   location = 105.66, 0.2914685726, -83.376278637  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkU3.aft_center  &
   color = GREEN  &
   size_of_icons = 10.0
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU3.fwd_center  &
   adams_id = 618  &
   location = 105.6567601, 0.2882351394, -135.5762786  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkU3.fwd_center  &
   color = GREEN  &
   size_of_icons = 10.0
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU3.tongue  &
   adams_id = 619  &
   location = 105.6567601493, -15.7117648606, -7.9591619725  &
   orientation = 0.0d, 180.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkU3.tongue  &
   color = GREEN  &
   size_of_icons = 10.0
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU3.MARKER_118  &
   adams_id = 620  &
   location = 158.4867601, 0.4339694257, -109.4762786185  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkU3.MARKER_118  &
   color = GREEN  &
   size_of_icons = 10.0
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU3.MARKER_2454  &
   adams_id = 2454  &
   location = 211.3167435061, 0.4390751947, -109.4347184656  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkU3.MARKER_2454  &
   color = GREEN  &
   size_of_icons = 10.0
!
! ****** Floating Markers for current part ******
!
floating_marker create  &
   floating_marker_name = .FRS5_doe_8_LAUL.linkU3.FMARKER_37  &
   adams_id = 621
!
floating_marker create  &
   floating_marker_name = .FRS5_doe_8_LAUL.linkU3.FMARKER_40  &
   adams_id = 622
!
floating_marker create  &
   floating_marker_name = .FRS5_doe_8_LAUL.linkU3.FMARKER_43  &
   adams_id = 623
!
part create rigid_body mass_properties  &
   part_name = .FRS5_doe_8_LAUL.linkU3  &
   mass = 0.1384434959  &
   center_of_mass_marker = .FRS5_doe_8_LAUL.linkU3.cm  &
   ixx = 263.6376356987  &
   iyy = 178.4287798008  &
   izz = 129.3984890332  &
   ixy = 0.0  &
   izx = 0.0  &
   iyz = 0.0
!
! ****** Points for current part ******
!
point create  &
   point_name = .FRS5_doe_8_LAUL.linkU3.cntrpt_4  &
   location = 105.6567601, 0.2882351394, -135.5762786
!
point attributes  &
   point_name = .FRS5_doe_8_LAUL.linkU3.cntrpt_4  &
   color = GREEN
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .FRS5_doe_8_LAUL.linkU3  &
   color = COLOR_R114G012B132  &
   visibility = on  &
   size_of_icons = 5.0
!
!----------------------------------- linkU1 -----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .FRS5_doe_8_LAUL.ground
!
part create rigid_body name_and_position  &
   part_name = .FRS5_doe_8_LAUL.linkU1  &
   adams_id = 169  &
   location = 63.9389519027, 303.8034827058, 178.9810504657  &
   orientation = 180.1321418666d, 89.6809776663d, 149.994230063d
!
defaults coordinate_system  &
   default_coordinate_system = .FRS5_doe_8_LAUL.linkU1
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU1.MARKER_645  &
   adams_id = 645  &
   location = 4.2047380385E-11, -23.6673, -156.5767882549  &
   orientation = 0.0d, 180.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkU1.MARKER_645  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU1.MARKER_655  &
   adams_id = 655  &
   location = 0.0, -23.4740797524, -60.8267882549  &
   orientation = 0.0d, 180.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkU1.MARKER_655  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU1.fc  &
   adams_id = 672  &
   location = 0.0, 0.0, -135.5762786  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkU1.fc  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU1.cm  &
   adams_id = 626  &
   location = 15.8119196164, -11.351509946, -102.0550621821  &
   orientation = 105.6755315089d, 157.5389008609d, 13.5277437509d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkU1.cm  &
   color = GREEN  &
   size_of_icons = 10.0
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU1.trailing_center  &
   adams_id = 627  &
   location = 52.83, 0.1457342863, -109.4762786185  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkU1.trailing_center  &
   color = GREEN  &
   size_of_icons = 10.0
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU1.aft_center  &
   adams_id = 628  &
   location = 3.2399E-03, 3.23343318E-03, -83.376278637  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkU1.aft_center  &
   color = GREEN  &
   size_of_icons = 10.0
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU1.fwd_center  &
   adams_id = 629  &
   location = 0.0, 0.0, -135.5762786  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkU1.fwd_center  &
   color = GREEN  &
   size_of_icons = 10.0
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU1.tongue  &
   adams_id = 630  &
   location = 4.9299957199E-08, -16.0, -7.9591619725  &
   orientation = 0.0d, 180.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkU1.tongue  &
   color = GREEN  &
   size_of_icons = 10.0
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU1.sp2  &
   adams_id = 631  &
   location = 4.2052584555E-11, -23.6673, -156.5767882549  &
   orientation = 0.0d, 180.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkU1.sp2  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU1.PSMAR1  &
   adams_id = 700  &
   location = -188.5283642173, -26.9967665668, -303.6962786  &
   orientation = 0.0d, 90.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkU1.PSMAR1  &
   color = GREEN  &
   visibility = off
!
! ****** Floating Markers for current part ******
!
floating_marker create  &
   floating_marker_name = .FRS5_doe_8_LAUL.linkU1.FMARKER_35  &
   adams_id = 632
!
floating_marker create  &
   floating_marker_name = .FRS5_doe_8_LAUL.linkU1.FMARKER_42  &
   adams_id = 633
!
floating_marker create  &
   floating_marker_name = .FRS5_doe_8_LAUL.linkU1.FMARKER_45  &
   adams_id = 634
!
part create rigid_body mass_properties  &
   part_name = .FRS5_doe_8_LAUL.linkU1  &
   mass = 0.1384434979  &
   center_of_mass_marker = .FRS5_doe_8_LAUL.linkU1.cm  &
   ixx = 263.6376376274  &
   iyy = 178.4287826242  &
   izz = 129.3984905937  &
   ixy = 0.0  &
   izx = 0.0  &
   iyz = 0.0
!
! ****** Points for current part ******
!
point create  &
   point_name = .FRS5_doe_8_LAUL.linkU1.cntrpt_4  &
   location = 0.0, 0.0, -135.5762786
!
point attributes  &
   point_name = .FRS5_doe_8_LAUL.linkU1.cntrpt_4  &
   color = GREEN
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .FRS5_doe_8_LAUL.linkU1  &
   color = COLOR_R114G012B132  &
   visibility = on  &
   size_of_icons = 5.0
!
!----------------------------------- frame ------------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .FRS5_doe_8_LAUL.ground
!
part create rigid_body name_and_position  &
   part_name = .FRS5_doe_8_LAUL.frame  &
   adams_id = 204  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .FRS5_doe_8_LAUL.frame
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.frame.MARKER_1639  &
   adams_id = 1639  &
   location = -0.115, 388.63, -83.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.frame.MARKER_1639  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.frame.MARKER_218  &
   adams_id = 218  &
   location = 165.9926643088, 300.37, -18.2568782282  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.frame.MARKER_218  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.frame.PSMAR2  &
   adams_id = 162  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.frame.PSMAR2  &
   color = GREEN  &
   visibility = off  &
   size_of_icons = 7.0
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.frame.PSMAR3  &
   adams_id = 163  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.frame.PSMAR3  &
   color = GREEN  &
   visibility = off  &
   size_of_icons = 7.0
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.frame.PSMAR4  &
   adams_id = 164  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.frame.PSMAR4  &
   color = GREEN  &
   visibility = off  &
   size_of_icons = 7.0
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.frame.MARKER_10  &
   adams_id = 1018  &
   location = 77.125, 477.59, -77.15  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.frame.MARKER_10  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.frame.PSMAR9  &
   adams_id = 1023  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.frame.PSMAR9  &
   color = GREEN  &
   visibility = off  &
   size_of_icons = 7.0
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.frame.PSMAR  &
   adams_id = 1024  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.frame.PSMAR  &
   color = GREEN  &
   visibility = off  &
   size_of_icons = 7.0
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.frame.PSMAR5  &
   adams_id = 165  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.frame.PSMAR5  &
   color = GREEN  &
   visibility = off  &
   size_of_icons = 7.0
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.frame.PSMAR6  &
   adams_id = 1025  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.frame.PSMAR6  &
   color = GREEN  &
   visibility = off  &
   size_of_icons = 7.0
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.frame.PSMAR1  &
   adams_id = 1030  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.frame.PSMAR1  &
   color = GREEN  &
   visibility = off  &
   size_of_icons = 7.0
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.frame.MARKER_50  &
   adams_id = 1032  &
   location = -29.0, 361.28, -85.34  &
   orientation = 341.7549473094d, 93.9688255606d, 101.8574787769d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.frame.MARKER_50  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.frame.MARKER_204  &
   adams_id = 1034  &
   location = 109.12, 362.8, -57.85  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.frame.MARKER_204  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.frame.cm  &
   adams_id = 1038  &
   location = -2.4065746179, 365.7057181609, -68.4664942705  &
   orientation = 180.8572138248d, 90.0803623154d, 86.9115739737d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.frame.cm  &
   color = GREEN  &
   size_of_icons = 7.0
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.frame.end2  &
   adams_id = 1040  &
   location = 118.11939, 373.8, -65.2  &
   orientation = 90.0d, 90.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.frame.end2  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.frame.extension_2  &
   adams_id = 1043  &
   location = -30.4440639528, 463.68, -74.6116189238  &
   orientation = 90.0d, 98.2999999993d, 270.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.frame.extension_2  &
   color = GREEN
!
part create rigid_body mass_properties  &
   part_name = .FRS5_doe_8_LAUL.frame  &
   density = 2.796E-06
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .FRS5_doe_8_LAUL.frame  &
   color = COLOR_R255G102B000  &
   visibility = on  &
   size_of_icons = 3.5
!
!----------------------------- feeder_drive_shaft -----------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .FRS5_doe_8_LAUL.ground
!
part create rigid_body name_and_position  &
   part_name = .FRS5_doe_8_LAUL.feeder_drive_shaft  &
   adams_id = 113  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .FRS5_doe_8_LAUL.feeder_drive_shaft
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.feeder_drive_shaft.feeder_drive_2  &
   adams_id = 1119  &
   location = 77.1298818705, 477.59, 16.4181249996  &
   orientation = 90.0d, 90.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.feeder_drive_shaft.feeder_drive_2  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.feeder_drive_shaft.MARKER_13  &
   adams_id = 1077  &
   location = 77.125, 477.59, -91.15  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.feeder_drive_shaft.MARKER_13  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.feeder_drive_shaft.PSMAR  &
   adams_id = 1078  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.feeder_drive_shaft.PSMAR  &
   color = GREEN  &
   visibility = off  &
   size_of_icons = 7.0
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.feeder_drive_shaft.cm  &
   adams_id = 1079  &
   location = 77.1249995159, 477.5900012204, -86.8743308565  &
   orientation = 2.1923506296E-03d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.feeder_drive_shaft.cm  &
   color = GREEN  &
   size_of_icons = 7.0
!
part create rigid_body mass_properties  &
   part_name = .FRS5_doe_8_LAUL.feeder_drive_shaft  &
   density = 7.8610915893E-06
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .FRS5_doe_8_LAUL.feeder_drive_shaft  &
   color = BLUE  &
   visibility = on  &
   size_of_icons = 3.5
!
!----------------------------- cluster_gear2_48T ------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .FRS5_doe_8_LAUL.ground
!
part create rigid_body name_and_position  &
   part_name = .FRS5_doe_8_LAUL.cluster_gear2_48T  &
   adams_id = 122  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .FRS5_doe_8_LAUL.cluster_gear2_48T
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.cluster_gear2_48T.MARKER_9  &
   adams_id = 1097  &
   location = 77.125, 477.59, -77.15  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.cluster_gear2_48T.MARKER_9  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.cluster_gear2_48T.MARKER_14  &
   adams_id = 1099  &
   location = 77.125, 477.59, -91.15  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.cluster_gear2_48T.MARKER_14  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.cluster_gear2_48T.PSMAR  &
   adams_id = 1100  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.cluster_gear2_48T.PSMAR  &
   color = GREEN  &
   visibility = off  &
   size_of_icons = 7.0
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.cluster_gear2_48T.cm  &
   adams_id = 1101  &
   location = 77.125, 477.59, -108.074620681  &
   orientation = 180.0d, 90.0d, 90.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.cluster_gear2_48T.cm  &
   color = GREEN  &
   size_of_icons = 7.0
!
part create rigid_body mass_properties  &
   part_name = .FRS5_doe_8_LAUL.cluster_gear2_48T  &
   density = 7.8417156593E-06
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .FRS5_doe_8_LAUL.cluster_gear2_48T  &
   color = COLOR_R255G102B000  &
   visibility = on  &
   size_of_icons = 3.5
!
!--------------------------------- mid_frameX ---------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .FRS5_doe_8_LAUL.ground
!
part create rigid_body name_and_position  &
   part_name = .FRS5_doe_8_LAUL.mid_frameX  &
   adams_id = 205  &
   location = 1.6740626E-03, -12.6626573428, -9.665206E-04  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .FRS5_doe_8_LAUL.mid_frameX
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.mid_frameX.pocket_center  &
   adams_id = 2369  &
   location = 42.0566813043, 307.9326573428, 74.2834375154  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.mid_frameX.pocket_center  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.mid_frameX.MARKER_1182  &
   adams_id = 1182  &
   location = -1.6740626E-03, 12.6626573428, 9.665206E-04  &
   orientation = 0.0d, 90.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.mid_frameX.MARKER_1182  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.mid_frameX.MARKER_40  &
   adams_id = 40  &
   location = 106.9783259374, 315.0016807513, 111.7659665206  &
   orientation = 180.0d, 90.0d, 180.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.mid_frameX.MARKER_40  &
   color = GREEN  &
   size_of_icons = 7.0
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.mid_frameX.b1  &
   adams_id = 4  &
   location = 127.9783259374, 416.8826573428, 75.3928995617  &
   orientation = 0.0d, 90.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.mid_frameX.b1  &
   color = GREEN  &
   size_of_icons = 7.0
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.mid_frameX.b4  &
   adams_id = 6  &
   location = 85.9758940731, 416.8826573428, 148.1459665206  &
   orientation = 0.0d, 90.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.mid_frameX.b4  &
   color = GREEN  &
   size_of_icons = 7.0
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.mid_frameX.MARKER_8  &
   adams_id = 8  &
   location = -1.6740626E-03, 274.2326573428, 49.9959665206  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.mid_frameX.MARKER_8  &
   color = GREEN  &
   size_of_icons = 7.0
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.mid_frameX.pspring_attach_point  &
   adams_id = 216  &
   location = 155.4983259374, 249.0326573428, 177.7259665206  &
   orientation = 0.0d, 90.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.mid_frameX.pspring_attach_point  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.mid_frameX.MARKER_217  &
   adams_id = 217  &
   location = 165.9909902462, 313.0326573428, -18.2559117076  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.mid_frameX.MARKER_217  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.mid_frameX.PSMAR4_1  &
   adams_id = 113  &
   location = -1.6740626E-03, 12.6626573428, 9.665206E-04  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.mid_frameX.PSMAR4_1  &
   color = GREEN  &
   visibility = off  &
   size_of_icons = 7.0
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.mid_frameX.PSMAR1_1  &
   adams_id = 110  &
   location = -1.6740626E-03, 12.6626573428, 9.665206E-04  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.mid_frameX.PSMAR1_1  &
   color = GREEN  &
   visibility = off  &
   size_of_icons = 7.0
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.mid_frameX.MARKER_65  &
   adams_id = 65  &
   location = 64.5395213246, 350.3826573428, 127.1538564068  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.mid_frameX.MARKER_65  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.mid_frameX.MARKER_67  &
   adams_id = 67  &
   location = 76.707688711, 141.9326573428, 93.9245310282  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.mid_frameX.MARKER_67  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.mid_frameX.top_of_rail  &
   adams_id = 518  &
   location = -61.3452868328, 255.5326573428, 133.3153543577  &
   orientation = 0.0d, 90.0d, 30.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.mid_frameX.top_of_rail  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.mid_frameX.trail_plane  &
   adams_id = 758  &
   location = 147.900388521, 207.0113178629, 226.5438080162  &
   orientation = 270.6199818513d, 30.0014525156d, 89.4630825864d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.mid_frameX.trail_plane  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.mid_frameX.MARKER_1604  &
   adams_id = 1604  &
   location = -1.6740626E-03, 12.6626573428, 9.665206E-04  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.mid_frameX.MARKER_1604  &
   color = GREEN  &
   visibility = off  &
   size_of_icons = 7.0
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.mid_frameX.MARKER_1605  &
   adams_id = 1605  &
   location = -1.6740626E-03, 12.6626573428, 9.665206E-04  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.mid_frameX.MARKER_1605  &
   color = GREEN  &
   visibility = off  &
   size_of_icons = 7.0
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.mid_frameX.MARKER_1606  &
   adams_id = 1606  &
   location = -1.6740626E-03, 12.6626573428, 9.665206E-04  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.mid_frameX.MARKER_1606  &
   color = GREEN  &
   visibility = off  &
   size_of_icons = 7.0
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.mid_frameX.MARKER_1607  &
   adams_id = 1607  &
   location = -1.6740626E-03, 12.6626573428, 9.665206E-04  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.mid_frameX.MARKER_1607  &
   color = GREEN  &
   visibility = off  &
   size_of_icons = 7.0
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.mid_frameX.MARKER_41  &
   adams_id = 41  &
   location = 85.9783259374, 365.0426573428, 148.1390334795  &
   orientation = 0.0d, 90.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.mid_frameX.MARKER_41  &
   color = GREEN  &
   size_of_icons = 7.0
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.mid_frameX.MARKER_43  &
   adams_id = 43  &
   location = 127.9783259374, 369.0276573428, 75.3928995617  &
   orientation = 0.0d, 90.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.mid_frameX.MARKER_43  &
   color = GREEN  &
   size_of_icons = 7.0
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.mid_frameX.PSMAR  &
   adams_id = 1556  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.mid_frameX.PSMAR  &
   color = GREEN  &
   visibility = off
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.mid_frameX.PSMAR1  &
   adams_id = 1558  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.mid_frameX.PSMAR1  &
   color = GREEN  &
   visibility = off
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.mid_frameX.PSMAR2  &
   adams_id = 1559  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.mid_frameX.PSMAR2  &
   color = GREEN  &
   visibility = off
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.mid_frameX.PSMAR3  &
   adams_id = 1560  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.mid_frameX.PSMAR3  &
   color = GREEN  &
   visibility = off
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.mid_frameX.PSMAR4  &
   adams_id = 1561  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.mid_frameX.PSMAR4  &
   color = GREEN  &
   visibility = off
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.mid_frameX.cm  &
   adams_id = 1557  &
   location = 66.5906984789, 301.3270038644, 92.5438466256  &
   orientation = 90.8483442262d, 94.4580489601d, 354.7745877759d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.mid_frameX.cm  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.mid_frameX.MARKER_1770  &
   adams_id = 1770  &
   location = 164.5055468244, 249.016027414, 70.6897595907  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.mid_frameX.MARKER_1770  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.mid_frameX.MARKER_1772  &
   adams_id = 1772  &
   location = 122.751770126, 249.016027414, 38.9668612369  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.mid_frameX.MARKER_1772  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.mid_frameX.MARKER_2455  &
   adams_id = 2455  &
   location = 193.6525106029, 207.0113178629, 252.9588080162  &
   orientation = 270.6199818513d, 30.0014525156d, 89.4630825864d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.mid_frameX.MARKER_2455  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.mid_frameX.MARKER_2460  &
   adams_id = 2460  &
   location = -61.3452868328, 255.5326573428, 133.3153543577  &
   orientation = 0.0d, 90.0d, 30.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.mid_frameX.MARKER_2460  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.mid_frameX.MARKER_3236  &
   adams_id = 3236  &
   location = 78.4014560108, 317.0326573856, 110.3919668185  &
   orientation = 0.0d, 90.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.mid_frameX.MARKER_3236  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.mid_frameX.MARKER_3237  &
   adams_id = 3237  &
   location = 91.4999723456, 317.0326573856, 87.7046710229  &
   orientation = 0.0d, 90.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.mid_frameX.MARKER_3237  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.mid_frameX.strip_ref  &
   adams_id = 3760  &
   location = 187.0411947463, 255.5326573428, 61.3346369015  &
   orientation = 0.0d, 90.0d, 250.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.mid_frameX.strip_ref  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.mid_frameX.TrailPlaneRef  &
   adams_id = 3769  &
   location = 128.8460349905, 206.8831669792, -29.9216327792  &
   orientation = 90.0d, 110.0d, 270.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.mid_frameX.TrailPlaneRef  &
   color = GREEN
!
! ****** Floating Markers for current part ******
!
floating_marker create  &
   floating_marker_name = .FRS5_doe_8_LAUL.mid_frameX.FMARKER_750  &
   adams_id = 750
!
floating_marker create  &
   floating_marker_name = .FRS5_doe_8_LAUL.mid_frameX.FMARKER_751  &
   adams_id = 751
!
floating_marker create  &
   floating_marker_name = .FRS5_doe_8_LAUL.mid_frameX.FMARKER_752  &
   adams_id = 752
!
floating_marker create  &
   floating_marker_name = .FRS5_doe_8_LAUL.mid_frameX.FMARKER_753  &
   adams_id = 753
!
floating_marker create  &
   floating_marker_name = .FRS5_doe_8_LAUL.mid_frameX.FMARKER_2459  &
   adams_id = 2459
!
floating_marker create  &
   floating_marker_name = .FRS5_doe_8_LAUL.mid_frameX.FMARKER_3762  &
   adams_id = 3762
!
floating_marker create  &
   floating_marker_name = .FRS5_doe_8_LAUL.mid_frameX.FMARKER_3764  &
   adams_id = 3764
!
floating_marker create  &
   floating_marker_name = .FRS5_doe_8_LAUL.mid_frameX.FMARKER_3766  &
   adams_id = 3766
!
floating_marker create  &
   floating_marker_name = .FRS5_doe_8_LAUL.mid_frameX.FMARKER_3768  &
   adams_id = 3768
!
part create rigid_body mass_properties  &
   part_name = .FRS5_doe_8_LAUL.mid_frameX  &
   density = 2.796E-06
!
! ****** Graphics for current part ******
!
geometry create curve polyline  &
   polyline_name = .FRS5_doe_8_LAUL.mid_frameX.top_aft_2  &
   location = -212.8997324951, 255.5326573428, 45.8153543577  &
      , -61.3452868328, 255.5326573428, 133.3153543577  &
      , 90.2091588295, 255.5326573428, 220.8153543577  &
      , 241.7636044917, 255.5326573428, 308.3153543577  &
      , 393.318050154, 255.5326573428, 395.8153543577  &
   close = no
!
geometry attributes  &
   geometry_name = .FRS5_doe_8_LAUL.mid_frameX.top_aft_2  &
   color = YELLOW
!
geometry create shape cylinder  &
   cylinder_name = .FRS5_doe_8_LAUL.mid_frameX.uprstop  &
   adams_id = 3200  &
   center_marker = .FRS5_doe_8_LAUL.mid_frameX.MARKER_3236  &
   angle_extent = 360.0  &
   length = 3.0  &
   radius = 4.7625  &
   side_count_for_body = 20  &
   segment_count_for_ends = 20
!
geometry attributes  &
   geometry_name = .FRS5_doe_8_LAUL.mid_frameX.uprstop  &
   color = MAGENTA
!
geometry create shape cylinder  &
   cylinder_name = .FRS5_doe_8_LAUL.mid_frameX.lwrstop  &
   adams_id = 3240  &
   center_marker = .FRS5_doe_8_LAUL.mid_frameX.MARKER_3237  &
   angle_extent = 360.0  &
   length = 3.0  &
   radius = 4.7625  &
   side_count_for_body = 36  &
   segment_count_for_ends = 36
!
geometry attributes  &
   geometry_name = .FRS5_doe_8_LAUL.mid_frameX.lwrstop  &
   color = MAGENTA
!
geometry create curve polyline  &
   polyline_name = .FRS5_doe_8_LAUL.mid_frameX.strip_line2  &
   location = 118.6388401438, 242.87, -126.6048537763  &
      , 272.5479046403, 242.87, 296.2568255774  &
   close = no
!
geometry attributes  &
   geometry_name = .FRS5_doe_8_LAUL.mid_frameX.strip_line2  &
   color = YELLOW
!
part attributes  &
   part_name = .FRS5_doe_8_LAUL.mid_frameX  &
   color = COLOR_R255G127B000  &
   visibility = on  &
   size_of_icons = 1.5
!
!------------------------------ ferguson_rotorX -------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .FRS5_doe_8_LAUL.ground
!
part create rigid_body name_and_position  &
   part_name = .FRS5_doe_8_LAUL.ferguson_rotorX  &
   adams_id = 207  &
   location = 1.6740626E-03, -14.1344109711, -9.665206E-04  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .FRS5_doe_8_LAUL.ferguson_rotorX
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.ferguson_rotorX.cc6  &
   adams_id = 1521  &
   location = 18.0796225997, 580.2344109711, 39.2081621872  &
   orientation = 0.0d, 90.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.ferguson_rotorX.cc6  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.ferguson_rotorX.cc5  &
   adams_id = 1522  &
   location = 0.3028462744, 580.2344109711, 71.0533313692  &
   orientation = 0.0d, 90.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.ferguson_rotorX.cc5  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.ferguson_rotorX.cc4  &
   adams_id = 1523  &
   location = -18.3874910624, 580.2344109711, 39.735606883  &
   orientation = 0.0d, 90.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.ferguson_rotorX.cc4  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.ferguson_rotorX.cc3  &
   adams_id = 1524  &
   location = 18.3841429368, 560.7344109711, 60.2624600766  &
   orientation = 0.0d, 90.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.ferguson_rotorX.cc3  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.ferguson_rotorX.cc2  &
   adams_id = 1566  &
   location = -18.0829707252, 560.7344109711, 60.7899047724  &
   orientation = 0.0d, 90.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.ferguson_rotorX.cc2  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.ferguson_rotorX.cc1  &
   adams_id = 1567  &
   location = -0.3061943999, 560.7344109711, 28.9447355904  &
   orientation = 0.0d, 90.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.ferguson_rotorX.cc1  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.ferguson_rotorX.end_center2  &
   adams_id = 235  &
   location = -1.6740626207E-03, 491.2044109711, 49.9959665206  &
   orientation = 0.0d, 90.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.ferguson_rotorX.end_center2  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.ferguson_rotorX.PSMAR  &
   adams_id = 1564  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.ferguson_rotorX.PSMAR  &
   color = GREEN  &
   visibility = off
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.ferguson_rotorX.cm  &
   adams_id = 1565  &
   location = -1.674062767E-03, 559.7412591224, 49.9990334798  &
   orientation = 0.0d, 90.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.ferguson_rotorX.cm  &
   color = GREEN
!
part create rigid_body mass_properties  &
   part_name = .FRS5_doe_8_LAUL.ferguson_rotorX  &
   density = 7.917E-06
!
! ****** Graphics for current part ******
!
geometry create shape cylinder  &
   cylinder_name = .FRS5_doe_8_LAUL.ferguson_rotorX.c2  &
   adams_id = 1165  &
   center_marker = .FRS5_doe_8_LAUL.ferguson_rotorX.cc2  &
   angle_extent = 360.0  &
   length = 10.4  &
   radius = 4.76  &
   side_count_for_body = 36  &
   segment_count_for_ends = 36
!
geometry create shape cylinder  &
   cylinder_name = .FRS5_doe_8_LAUL.ferguson_rotorX.c4  &
   adams_id = 1209  &
   center_marker = .FRS5_doe_8_LAUL.ferguson_rotorX.cc4  &
   angle_extent = 360.0  &
   length = 10.4  &
   radius = 4.76  &
   side_count_for_body = 36  &
   segment_count_for_ends = 36
!
geometry create shape cylinder  &
   cylinder_name = .FRS5_doe_8_LAUL.ferguson_rotorX.c5  &
   adams_id = 1210  &
   center_marker = .FRS5_doe_8_LAUL.ferguson_rotorX.cc5  &
   angle_extent = 360.0  &
   length = 10.4  &
   radius = 4.76  &
   side_count_for_body = 36  &
   segment_count_for_ends = 36
!
geometry create shape cylinder  &
   cylinder_name = .FRS5_doe_8_LAUL.ferguson_rotorX.c6  &
   adams_id = 1211  &
   center_marker = .FRS5_doe_8_LAUL.ferguson_rotorX.cc6  &
   angle_extent = 360.0  &
   length = 10.4  &
   radius = 4.76  &
   side_count_for_body = 36  &
   segment_count_for_ends = 36
!
geometry create shape cylinder  &
   cylinder_name = .FRS5_doe_8_LAUL.ferguson_rotorX.c3  &
   adams_id = 1212  &
   center_marker = .FRS5_doe_8_LAUL.ferguson_rotorX.cc3  &
   angle_extent = 360.0  &
   length = 10.4  &
   radius = 4.76  &
   side_count_for_body = 36  &
   segment_count_for_ends = 36
!
geometry create shape cylinder  &
   cylinder_name = .FRS5_doe_8_LAUL.ferguson_rotorX.c1  &
   adams_id = 1213  &
   center_marker = .FRS5_doe_8_LAUL.ferguson_rotorX.cc1  &
   angle_extent = 360.0  &
   length = 10.4  &
   radius = 4.76  &
   side_count_for_body = 36  &
   segment_count_for_ends = 36
!
part attributes  &
   part_name = .FRS5_doe_8_LAUL.ferguson_rotorX  &
   color = COLOR_R255G127B000  &
   visibility = on  &
   size_of_icons = 1.5
!
!-------------------------------- worm_driveX ---------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .FRS5_doe_8_LAUL.ground
!
part create rigid_body name_and_position  &
   part_name = .FRS5_doe_8_LAUL.worm_driveX  &
   adams_id = 222  &
   location = 1.6740626E-03, -12.6626573428, -9.665206E-04  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .FRS5_doe_8_LAUL.worm_driveX
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.worm_driveX.feeder_drive_1  &
   adams_id = 1118  &
   location = 77.1282078079, 490.2526573428, 16.4190915202  &
   orientation = 0.0d, 90.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.worm_driveX.feeder_drive_1  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.worm_driveX.MARKER_23  &
   adams_id = 23  &
   location = 77.1282078079, 490.2526573428, 77.4690915202  &
   orientation = 180.0d, 180.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.worm_driveX.MARKER_23  &
   color = GREEN  &
   size_of_icons = 7.0
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.worm_driveX.PSMAR  &
   adams_id = 1574  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.worm_driveX.PSMAR  &
   color = GREEN  &
   visibility = off
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.worm_driveX.cm  &
   adams_id = 1575  &
   location = 76.9662858459, 490.2478968676, 74.1365104792  &
   orientation = 75.3612656178d, 0.1713662369d, 285.1225484966d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.worm_driveX.cm  &
   color = GREEN
!
part create rigid_body mass_properties  &
   part_name = .FRS5_doe_8_LAUL.worm_driveX  &
   density = 7.861E-06
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .FRS5_doe_8_LAUL.worm_driveX  &
   color = COLOR_R051G170B119  &
   visibility = on  &
   size_of_icons = 1.5
!
!----------------------------- worm_driven_gearX ------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .FRS5_doe_8_LAUL.ground
!
part create rigid_body name_and_position  &
   part_name = .FRS5_doe_8_LAUL.worm_driven_gearX  &
   adams_id = 223  &
   location = 1.6740626E-03, -12.6626573428, -9.665206E-04  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .FRS5_doe_8_LAUL.worm_driven_gearX
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.worm_driven_gearX.MARKER_211  &
   adams_id = 211  &
   location = 25.6282078079, 500.2026573428, 130.0609665207  &
   orientation = 0.0d, 90.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.worm_driven_gearX.MARKER_211  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.worm_driven_gearX.MARKER_214  &
   adams_id = 214  &
   location = 25.6282078079, 476.4126573428, 130.0609665207  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.worm_driven_gearX.MARKER_214  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.worm_driven_gearX.PSMAR  &
   adams_id = 1576  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.worm_driven_gearX.PSMAR  &
   color = GREEN  &
   visibility = off
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.worm_driven_gearX.cm  &
   adams_id = 1577  &
   location = 25.6283267212, 494.852125772, 130.0590335788  &
   orientation = 90.0000010516d, 113.1012570894d, 3.8295615373E-06d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.worm_driven_gearX.cm  &
   color = GREEN
!
part create rigid_body mass_properties  &
   part_name = .FRS5_doe_8_LAUL.worm_driven_gearX  &
   density = 8.636E-06
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .FRS5_doe_8_LAUL.worm_driven_gearX  &
   color = COLOR_R255G127B000  &
   visibility = on  &
   size_of_icons = 1.5
!
!---------------------------------- brassL1 -----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .FRS5_doe_8_LAUL.ground
!
part create rigid_body name_and_position  &
   part_name = .FRS5_doe_8_LAUL.brassL1  &
   adams_id = 344  &
   location = 142.2451896071, 303.6967882549, 38.3126281164  &
   orientation = 180.0d, 90.0d, 324.0d
!
defaults coordinate_system  &
   default_coordinate_system = .FRS5_doe_8_LAUL.brassL1
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.brassL1.spring_ref  &
   adams_id = 3452  &
   location = 0.0, 0.0, -67.4517  &
   orientation = 0.0d, 180.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.brassL1.spring_ref  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.brassL1.primer  &
   adams_id = 3453  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.brassL1.primer  &
   color = GREEN  &
   size_of_icons = 10.0
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.brassL1.PSMAR  &
   adams_id = 3454  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.brassL1.PSMAR  &
   color = GREEN  &
   visibility = off  &
   size_of_icons = 10.0
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.brassL1.cm  &
   adams_id = 3455  &
   location = 0.0, 0.0, -75.1350332793  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.brassL1.cm  &
   color = GREEN  &
   size_of_icons = 10.0
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.brassL1.tc  &
   adams_id = 3456  &
   location = 0.0, 0.0, -109.4762786185  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.brassL1.tc  &
   color = GREEN  &
   size_of_icons = 10.0
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.brassL1.ac  &
   adams_id = 3457  &
   location = 0.0, 0.0, -83.376278637  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.brassL1.ac  &
   color = GREEN  &
   size_of_icons = 10.0
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.brassL1.fc  &
   adams_id = 3458  &
   location = 0.0, 0.0, -135.5762786  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.brassL1.fc  &
   color = GREEN  &
   size_of_icons = 10.0
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.brassL1.channel_ref  &
   adams_id = 3459  &
   location = 4.9299994642E-08, 0.0, -7.9591619725  &
   orientation = 0.0d, 180.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.brassL1.channel_ref  &
   color = GREEN  &
   size_of_icons = 10.0
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.brassL1.crimp1b  &
   adams_id = 3460  &
   location = 0.0, 0.0, -172.75  &
   orientation = 0.0d, 180.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.brassL1.crimp1b  &
   color = GREEN  &
   size_of_icons = 10.0
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.brassL1.frust_ref  &
   adams_id = 3461  &
   location = 0.0, 0.0, -11.4954168526  &
   orientation = 0.0d, 180.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.brassL1.frust_ref  &
   color = GREEN
!
! ****** Floating Markers for current part ******
!
floating_marker create  &
   floating_marker_name = .FRS5_doe_8_LAUL.brassL1.FMARKER_1653  &
   adams_id = 3462
!
floating_marker create  &
   floating_marker_name = .FRS5_doe_8_LAUL.brassL1.FMARKER_34  &
   adams_id = 3463
!
floating_marker create  &
   floating_marker_name = .FRS5_doe_8_LAUL.brassL1.FMARKER_81  &
   adams_id = 3464
!
part create rigid_body mass_properties  &
   part_name = .FRS5_doe_8_LAUL.brassL1  &
   density = 2.23E-06
!
! ****** Graphics for current part ******
!
geometry create shape cylinder  &
   cylinder_name = .FRS5_doe_8_LAUL.brassL1.cyl  &
   adams_id = 3318  &
   center_marker = .FRS5_doe_8_LAUL.brassL1.crimp1b  &
   angle_extent = 360.0  &
   length = -14.0  &
   radius = 15.8  &
   side_count_for_body = 30  &
   segment_count_for_ends = 30
!
geometry create shape frustum  &
   frustum_name = .FRS5_doe_8_LAUL.brassL1.FRUSTUM  &
   adams_id = 3321  &
   center_marker = .FRS5_doe_8_LAUL.brassL1.frust_ref  &
   angle_extent = 360.0  &
   length = 134.0  &
   top_radius = 20.1  &
   bottom_radius = 21.75  &
   side_count_for_body = 30  &
   segment_count_for_ends = 30
!
part attributes  &
   part_name = .FRS5_doe_8_LAUL.brassL1  &
   color = COLOR_R068G137B035  &
   visibility = on  &
   size_of_icons = 10.0
!
!---------------------------------- brassL2 -----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .FRS5_doe_8_LAUL.ground
!
part create rigid_body name_and_position  &
   part_name = .FRS5_doe_8_LAUL.brassL2  &
   adams_id = 345  &
   location = 171.4839401201, 303.6967882549, 87.2194828073  &
   orientation = 180.0d, 90.0d, 290.0d
!
defaults coordinate_system  &
   default_coordinate_system = .FRS5_doe_8_LAUL.brassL2
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.brassL2.spring_ref  &
   adams_id = 3465  &
   location = 0.0, 0.0, -67.4517  &
   orientation = 0.0d, 180.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.brassL2.spring_ref  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.brassL2.primer  &
   adams_id = 3466  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.brassL2.primer  &
   color = GREEN  &
   size_of_icons = 10.0
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.brassL2.PSMAR  &
   adams_id = 3467  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.brassL2.PSMAR  &
   color = GREEN  &
   visibility = off  &
   size_of_icons = 10.0
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.brassL2.cm  &
   adams_id = 3468  &
   location = 0.0, 0.0, -75.1350332793  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.brassL2.cm  &
   color = GREEN  &
   size_of_icons = 10.0
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.brassL2.tc  &
   adams_id = 3469  &
   location = 0.0, 0.0, -109.4762786185  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.brassL2.tc  &
   color = GREEN  &
   size_of_icons = 10.0
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.brassL2.ac  &
   adams_id = 3470  &
   location = 0.0, 0.0, -83.376278637  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.brassL2.ac  &
   color = GREEN  &
   size_of_icons = 10.0
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.brassL2.fc  &
   adams_id = 3471  &
   location = 0.0, 0.0, -135.5762786  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.brassL2.fc  &
   color = GREEN  &
   size_of_icons = 10.0
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.brassL2.channel_ref  &
   adams_id = 3472  &
   location = 4.9299994642E-08, 0.0, -7.9591619725  &
   orientation = 0.0d, 180.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.brassL2.channel_ref  &
   color = GREEN  &
   size_of_icons = 10.0
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.brassL2.crimp2b  &
   adams_id = 3473  &
   location = 0.0, 0.0, -172.75  &
   orientation = 0.0d, 180.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.brassL2.crimp2b  &
   color = GREEN  &
   size_of_icons = 10.0
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.brassL2.frust_ref  &
   adams_id = 3474  &
   location = 0.0, 0.0, -11.4954168526  &
   orientation = 0.0d, 180.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.brassL2.frust_ref  &
   color = GREEN
!
! ****** Floating Markers for current part ******
!
floating_marker create  &
   floating_marker_name = .FRS5_doe_8_LAUL.brassL2.FMARKER_2174  &
   adams_id = 3475
!
floating_marker create  &
   floating_marker_name = .FRS5_doe_8_LAUL.brassL2.FMARKER_1654  &
   adams_id = 3476
!
floating_marker create  &
   floating_marker_name = .FRS5_doe_8_LAUL.brassL2.FMARKER_223  &
   adams_id = 3477
!
floating_marker create  &
   floating_marker_name = .FRS5_doe_8_LAUL.brassL2.FMARKER_34  &
   adams_id = 3478
!
floating_marker create  &
   floating_marker_name = .FRS5_doe_8_LAUL.brassL2.FMARKER_81  &
   adams_id = 3479
!
floating_marker create  &
   floating_marker_name = .FRS5_doe_8_LAUL.brassL2.FMARKER_218  &
   adams_id = 3480
!
floating_marker create  &
   floating_marker_name = .FRS5_doe_8_LAUL.brassL2.FMARKER_3774  &
   adams_id = 3774
!
part create rigid_body mass_properties  &
   part_name = .FRS5_doe_8_LAUL.brassL2  &
   density = 2.23E-06
!
! ****** Graphics for current part ******
!
geometry create shape cylinder  &
   cylinder_name = .FRS5_doe_8_LAUL.brassL2.cyl  &
   adams_id = 3329  &
   center_marker = .FRS5_doe_8_LAUL.brassL2.crimp2b  &
   angle_extent = 360.0  &
   length = -14.0  &
   radius = 15.8  &
   side_count_for_body = 30  &
   segment_count_for_ends = 30
!
geometry create shape frustum  &
   frustum_name = .FRS5_doe_8_LAUL.brassL2.FRUSTUM  &
   adams_id = 3332  &
   center_marker = .FRS5_doe_8_LAUL.brassL2.frust_ref  &
   angle_extent = 360.0  &
   length = 134.0  &
   top_radius = 20.1  &
   bottom_radius = 21.75  &
   side_count_for_body = 30  &
   segment_count_for_ends = 30
!
part attributes  &
   part_name = .FRS5_doe_8_LAUL.brassL2  &
   color = COLOR_R068G137B035  &
   visibility = on  &
   size_of_icons = 10.0
!
!---------------------------------- brassU5 -----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .FRS5_doe_8_LAUL.ground
!
part create rigid_body name_and_position  &
   part_name = .FRS5_doe_8_LAUL.brassU5  &
   adams_id = 297  &
   location = 109.7839391422, 303.805067188, 205.2842380784  &
   orientation = 179.9979965562d, 90.0034700887d, 150.0000693401d
!
defaults coordinate_system  &
   default_coordinate_system = .FRS5_doe_8_LAUL.brassU5
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.brassU5.crimp5b  &
   adams_id = 2372  &
   location = 158.4867601493, 0.4339694257, -172.75  &
   orientation = 0.0d, 180.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.brassU5.crimp5b  &
   color = GREEN  &
   size_of_icons = 10.0
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.brassU5.spring_ref  &
   adams_id = 2373  &
   location = 158.4867601, 9.3012989846E-02, -67.4516907944  &
   orientation = 0.0d, 179.69d, 330.0000000001d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.brassU5.spring_ref  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.brassU5.MARKER_639  &
   adams_id = 2374  &
   location = 158.4867601001, 0.4339694257, -11.4954168526  &
   orientation = 30.0d, 180.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.brassU5.MARKER_639  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.brassU5.cyl_ref  &
   adams_id = 2375  &
   location = 158.4867601001, 0.4339694258, -172.75  &
   orientation = 359.9999999935d, 179.69d, 359.9999999936d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.brassU5.cyl_ref  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.brassU5.PSMAR  &
   adams_id = 2376  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.brassU5.PSMAR  &
   color = GREEN  &
   visibility = off  &
   size_of_icons = 10.0
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.brassU5.cm  &
   adams_id = 2377  &
   location = 158.486760118, 0.4353245708, -75.1350369453  &
   orientation = 180.0000899381d, 179.9959930931d, 90.0001599072d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.brassU5.cm  &
   color = GREEN  &
   size_of_icons = 10.0
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.brassU5.primer  &
   adams_id = 2378  &
   location = 158.4867601, 0.4339694257, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.brassU5.primer  &
   color = GREEN  &
   size_of_icons = 10.0
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.brassU5.tc  &
   adams_id = 2379  &
   location = 158.49, 0.4372028589, -109.4762786185  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.brassU5.tc  &
   color = GREEN  &
   size_of_icons = 10.0
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.brassU5.ac  &
   adams_id = 2380  &
   location = 158.49, 0.4372028589, -83.376278637  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.brassU5.ac  &
   color = GREEN  &
   size_of_icons = 10.0
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.brassU5.fc  &
   adams_id = 2381  &
   location = 158.4867601, 0.4339694257, -135.5762786  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.brassU5.fc  &
   color = GREEN  &
   size_of_icons = 10.0
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.brassU5.channel_ref  &
   adams_id = 2382  &
   location = 158.4867601493, 0.4339694257, -7.9591619725  &
   orientation = 359.9999999935d, 179.69d, 359.9999999936d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.brassU5.channel_ref  &
   color = GREEN  &
   size_of_icons = 10.0
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.brassU5.MARKER_109  &
   adams_id = 2383  &
   location = 158.4867601493, 0.4339694257, -7.9591619725  &
   orientation = 0.0d, 180.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.brassU5.MARKER_109  &
   color = GREEN  &
   size_of_icons = 10.0
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.brassU5.MARKER_110  &
   adams_id = 2384  &
   location = 158.4867601, 0.4339694257, -135.5762786  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.brassU5.MARKER_110  &
   color = GREEN  &
   size_of_icons = 10.0
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.brassU5.MARKER_113  &
   adams_id = 2385  &
   location = 158.49, 0.4372028589, -83.376278637  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.brassU5.MARKER_113  &
   color = GREEN  &
   size_of_icons = 10.0
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.brassU5.MARKER_116  &
   adams_id = 2386  &
   location = 158.4867601, 0.579703712, -109.4762786185  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.brassU5.MARKER_116  &
   color = GREEN  &
   size_of_icons = 10.0
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.brassU5.MARKER_121  &
   adams_id = 2387  &
   location = 158.4867601493, 0.4339694257, -172.75  &
   orientation = 0.0d, 180.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.brassU5.MARKER_121  &
   color = GREEN  &
   size_of_icons = 10.0
!
! ****** Floating Markers for current part ******
!
floating_marker create  &
   floating_marker_name = .FRS5_doe_8_LAUL.brassU5.FMARKER_31  &
   adams_id = 2388
!
part create rigid_body mass_properties  &
   part_name = .FRS5_doe_8_LAUL.brassU5  &
   density = 2.23E-06
!
! ****** Graphics for current part ******
!
geometry create shape frustum  &
   frustum_name = .FRS5_doe_8_LAUL.brassU5.frust  &
   adams_id = 2601  &
   center_marker = .FRS5_doe_8_LAUL.brassU5.MARKER_639  &
   angle_extent = 360.0  &
   length = 134.0  &
   top_radius = 20.1  &
   bottom_radius = 21.75  &
   side_count_for_body = 30  &
   segment_count_for_ends = 30
!
geometry attributes  &
   geometry_name = .FRS5_doe_8_LAUL.brassU5.frust  &
   color = MAIZE  &
   render = wireframe
!
geometry create shape cylinder  &
   cylinder_name = .FRS5_doe_8_LAUL.brassU5.cyl  &
   adams_id = 2609  &
   center_marker = .FRS5_doe_8_LAUL.brassU5.cyl_ref  &
   angle_extent = 360.0  &
   length = -14.0  &
   radius = 15.8  &
   side_count_for_body = 30  &
   segment_count_for_ends = 30
!
geometry attributes  &
   geometry_name = .FRS5_doe_8_LAUL.brassU5.cyl  &
   color = MAIZE  &
   render = wireframe
!
part attributes  &
   part_name = .FRS5_doe_8_LAUL.brassU5  &
   color = COLOR_R068G137B035  &
   visibility = on  &
   size_of_icons = 5.0
!
!-------------------------------- projectileU5 --------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .FRS5_doe_8_LAUL.ground
!
part create rigid_body name_and_position  &
   part_name = .FRS5_doe_8_LAUL.projectileU5  &
   adams_id = 298  &
   location = 109.7414329785, 303.7250923891, 204.7574484725  &
   orientation = 180.04d, 90.0d, 150.0d
!
defaults coordinate_system  &
   default_coordinate_system = .FRS5_doe_8_LAUL.projectileU5
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.projectileU5.ptip  &
   adams_id = 2389  &
   location = 158.4867601493, 0.4339694258, -289.97  &
   orientation = 359.9999999935d, 179.69d, 329.9999999936d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.projectileU5.ptip  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.projectileU5.PSMAR  &
   adams_id = 2390  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.projectileU5.PSMAR  &
   color = GREEN  &
   visibility = off  &
   size_of_icons = 10.0
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.projectileU5.cm  &
   adams_id = 2391  &
   location = 158.4867601493, 0.4339694257, -215.841117526  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.projectileU5.cm  &
   color = GREEN  &
   size_of_icons = 10.0
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.projectileU5.crimp5a  &
   adams_id = 2392  &
   location = 158.4867601493, 0.4339694257, -172.75  &
   orientation = 0.0d, 180.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.projectileU5.crimp5a  &
   color = GREEN  &
   size_of_icons = 10.0
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.projectileU5.MARKER_119  &
   adams_id = 2393  &
   location = 158.4867601493, 0.4339694257, -172.75  &
   orientation = 0.0d, 180.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.projectileU5.MARKER_119  &
   color = GREEN  &
   size_of_icons = 10.0
!
part create rigid_body mass_properties  &
   part_name = .FRS5_doe_8_LAUL.projectileU5  &
   density = 6.4E-06
!
! ****** Graphics for current part ******
!
geometry create shape cylinder  &
   cylinder_name = .FRS5_doe_8_LAUL.projectileU5.CYL  &
   adams_id = 2630  &
   center_marker = .FRS5_doe_8_LAUL.projectileU5.crimp5a  &
   angle_extent = 360.0  &
   length = 18.0  &
   radius = 15.71  &
   side_count_for_body = 30  &
   segment_count_for_ends = 30
!
geometry attributes  &
   geometry_name = .FRS5_doe_8_LAUL.projectileU5.CYL  &
   color = BLUE_GRAY
!
part attributes  &
   part_name = .FRS5_doe_8_LAUL.projectileU5  &
   color = BLUE  &
   visibility = on  &
   size_of_icons = 5.0
!
!----------------------------------- linkU5 -----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .FRS5_doe_8_LAUL.ground
!
part create rigid_body name_and_position  &
   part_name = .FRS5_doe_8_LAUL.linkU5  &
   adams_id = 299  &
   location = 109.5478256365, 303.9251493043, 205.7958753696  &
   orientation = 180.1321418666d, 89.6809776663d, 149.994230063d
!
defaults coordinate_system  &
   default_coordinate_system = .FRS5_doe_8_LAUL.linkU5
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU5.MARKER_756  &
   adams_id = 2394  &
   location = 211.3167601001, -23.2333305743, -156.5767882549  &
   orientation = 0.0d, 180.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkU5.MARKER_756  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU5.MARKER_651  &
   adams_id = 2395  &
   location = 158.4867601001, -23.2333305743, -156.5767882549  &
   orientation = 0.0d, 180.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkU5.MARKER_651  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU5.MARKER_661  &
   adams_id = 2396  &
   location = 158.4867601001, -23.0401103267, -60.8267882549  &
   orientation = 0.0d, 180.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkU5.MARKER_661  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU5.PSMAR1  &
   adams_id = 2397  &
   location = -30.0416041173, -26.5627971411, -303.6962786  &
   orientation = 0.0d, 90.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkU5.PSMAR1  &
   color = GREEN  &
   visibility = off
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU5.fc  &
   adams_id = 2398  &
   location = 158.4867601, 0.4339694257, -135.5762786  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkU5.fc  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU5.fwd_center  &
   adams_id = 2399  &
   location = 158.4867601, 0.4339694257, -135.5762786  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkU5.fwd_center  &
   color = GREEN  &
   size_of_icons = 10.0
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU5.aft_center  &
   adams_id = 2400  &
   location = 158.49, 0.4372028589, -83.376278637  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkU5.aft_center  &
   color = GREEN  &
   size_of_icons = 10.0
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU5.cm  &
   adams_id = 2401  &
   location = 174.2986797657, -10.9175405202, -102.054552564  &
   orientation = 105.6755315089d, 157.5389008609d, 13.5277437509d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkU5.cm  &
   color = GREEN  &
   size_of_icons = 10.0
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU5.trailing_center  &
   adams_id = 2402  &
   location = 211.3167601, 0.579703712, -109.4762786185  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkU5.trailing_center  &
   color = GREEN  &
   size_of_icons = 10.0
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU5.tongue  &
   adams_id = 2403  &
   location = 158.4867601493, -15.5660305743, -7.9591619725  &
   orientation = 0.0d, 180.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkU5.tongue  &
   color = GREEN  &
   size_of_icons = 10.0
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU5.MARKER_107  &
   adams_id = 2404  &
   location = 158.4867601493, -15.5660305743, -7.9591619725  &
   orientation = 0.0d, 180.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkU5.MARKER_107  &
   color = GREEN  &
   size_of_icons = 10.0
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU5.MARKER_112  &
   adams_id = 2405  &
   location = 158.4867601, 0.4339694257, -135.5762786  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkU5.MARKER_112  &
   color = GREEN  &
   size_of_icons = 10.0
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU5.MARKER_115  &
   adams_id = 2406  &
   location = 158.49, 0.4372028589, -83.376278637  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkU5.MARKER_115  &
   color = GREEN  &
   size_of_icons = 10.0
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU5.MARKER_1295  &
   adams_id = 2407  &
   location = 211.3167601, 0.579703712, -109.4762786185  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkU5.MARKER_1295  &
   color = GREEN  &
   size_of_icons = 10.0
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU5.MARKER_1297  &
   adams_id = 2408  &
   location = 211.3167601, 0.579703712, -109.4762786185  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkU5.MARKER_1297  &
   color = GREEN  &
   size_of_icons = 10.0
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU5.MARKER_1298  &
   adams_id = 2409  &
   location = 211.3167601, 0.579703712, -109.4762786185  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkU5.MARKER_1298  &
   color = GREEN  &
   size_of_icons = 10.0
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU5.MARKER_1300  &
   adams_id = 2410  &
   location = 211.3167601, 0.579703712, -109.4762786185  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkU5.MARKER_1300  &
   color = GREEN  &
   size_of_icons = 10.0
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU5.MARKER_1301  &
   adams_id = 2411  &
   location = 211.3167601, 0.579703712, -109.4762786185  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkU5.MARKER_1301  &
   color = GREEN  &
   size_of_icons = 10.0
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU5.MARKER_1303  &
   adams_id = 2412  &
   location = 211.3167601, 0.579703712, -109.4762786185  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkU5.MARKER_1303  &
   color = GREEN  &
   size_of_icons = 10.0
!
! ****** Floating Markers for current part ******
!
floating_marker create  &
   floating_marker_name = .FRS5_doe_8_LAUL.linkU5.FMARKER_38  &
   adams_id = 2413
!
floating_marker create  &
   floating_marker_name = .FRS5_doe_8_LAUL.linkU5.FMARKER_39  &
   adams_id = 2414
!
part create rigid_body mass_properties  &
   part_name = .FRS5_doe_8_LAUL.linkU5  &
   mass = 0.1384434979  &
   center_of_mass_marker = .FRS5_doe_8_LAUL.linkU5.cm  &
   ixx = 263.6376376274  &
   iyy = 178.4287826242  &
   izz = 129.3984905937  &
   ixy = 0.0  &
   izx = 0.0  &
   iyz = 0.0
!
! ****** Points for current part ******
!
point create  &
   point_name = .FRS5_doe_8_LAUL.linkU5.cntrpt_4  &
   location = 158.4867601, 0.4339694257, -135.5762786
!
point attributes  &
   point_name = .FRS5_doe_8_LAUL.linkU5.cntrpt_4  &
   color = GREEN
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .FRS5_doe_8_LAUL.linkU5  &
   color = COLOR_R114G012B132  &
   visibility = on  &
   size_of_icons = 5.0
!
!------------------------------ linkU5line1dummy ------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .FRS5_doe_8_LAUL.ground
!
part create rigid_body name_and_position  &
   part_name = .FRS5_doe_8_LAUL.linkU5line1dummy  &
   adams_id = 300  &
   location = 282.0397585169, 147.12, 331.189536929  &
   orientation = 0.1550011344d, 90.2684675477d, 30.0003631408d
!
defaults coordinate_system  &
   default_coordinate_system = .FRS5_doe_8_LAUL.linkU5line1dummy
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU5line1dummy.cm  &
   adams_id = 2415  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkU5line1dummy.cm  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU5line1dummy.MARKER  &
   adams_id = 2416  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkU5line1dummy.MARKER  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU5line1dummy.MARKER_2  &
   adams_id = 2417  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkU5line1dummy.MARKER_2  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU5line1dummy.MARKER_3  &
   adams_id = 2418  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkU5line1dummy.MARKER_3  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU5line1dummy.MARKER_4  &
   adams_id = 2419  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkU5line1dummy.MARKER_4  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU5line1dummy.MARKER_5  &
   adams_id = 2420  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkU5line1dummy.MARKER_5  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU5line1dummy.MARKER_6  &
   adams_id = 2421  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkU5line1dummy.MARKER_6  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU5line1dummy.MARKER_7  &
   adams_id = 2422  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkU5line1dummy.MARKER_7  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU5line1dummy.MARKER_8  &
   adams_id = 2423  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkU5line1dummy.MARKER_8  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU5line1dummy.MARKER_9  &
   adams_id = 2424  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkU5line1dummy.MARKER_9  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU5line1dummy.MARKER_10  &
   adams_id = 2425  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkU5line1dummy.MARKER_10  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU5line1dummy.MARKER_11  &
   adams_id = 2426  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkU5line1dummy.MARKER_11  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU5line1dummy.MARKER_12  &
   adams_id = 2427  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkU5line1dummy.MARKER_12  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU5line1dummy.MARKER_13  &
   adams_id = 2428  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkU5line1dummy.MARKER_13  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU5line1dummy.MARKER_14  &
   adams_id = 2429  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkU5line1dummy.MARKER_14  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU5line1dummy.MARKER_15  &
   adams_id = 2430  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkU5line1dummy.MARKER_15  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU5line1dummy.MARKER_16  &
   adams_id = 2431  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkU5line1dummy.MARKER_16  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU5line1dummy.MARKER_17  &
   adams_id = 2432  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkU5line1dummy.MARKER_17  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU5line1dummy.MARKER_18  &
   adams_id = 2433  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkU5line1dummy.MARKER_18  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU5line1dummy.MARKER_19  &
   adams_id = 3450  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkU5line1dummy.MARKER_19  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU5line1dummy.MARKER_20  &
   adams_id = 3914  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkU5line1dummy.MARKER_20  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU5line1dummy.MARKER_21  &
   adams_id = 4038  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkU5line1dummy.MARKER_21  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU5line1dummy.MARKER_22  &
   adams_id = 4199  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkU5line1dummy.MARKER_22  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU5line1dummy.MARKER_23  &
   adams_id = 4334  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkU5line1dummy.MARKER_23  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU5line1dummy.MARKER_24  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkU5line1dummy.MARKER_24  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU5line1dummy.MARKER_25  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU5line1dummy.MARKER_26  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
part create rigid_body mass_properties  &
   part_name = .FRS5_doe_8_LAUL.linkU5line1dummy  &
   material_type = .FRS5_doe_8_LAUL.wood
!
! ****** Graphics for current part ******
!
geometry create shape ellipsoid  &
   ellipsoid_name = .FRS5_doe_8_LAUL.linkU5line1dummy.sph  &
   adams_id = 2651  &
   center_marker = .FRS5_doe_8_LAUL.linkU5line1dummy.cm  &
   x_scale_factor = 1.0  &
   y_scale_factor = 1.0  &
   z_scale_factor = 1.0
!
geometry attributes  &
   geometry_name = .FRS5_doe_8_LAUL.linkU5line1dummy.sph  &
   color = RED
!
part attributes  &
   part_name = .FRS5_doe_8_LAUL.linkU5line1dummy  &
   visibility = on  &
   size_of_icons = 1.5
!
!------------------------------ linkU5line2dummy ------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .FRS5_doe_8_LAUL.ground
!
part create rigid_body name_and_position  &
   part_name = .FRS5_doe_8_LAUL.linkU5line2dummy  &
   adams_id = 301  &
   location = 281.8773398128, 242.8696439404, 331.4708543766  &
   orientation = 0.1550011344d, 90.2684675477d, 30.0003631408d
!
defaults coordinate_system  &
   default_coordinate_system = .FRS5_doe_8_LAUL.linkU5line2dummy
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU5line2dummy.cm  &
   adams_id = 2434  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkU5line2dummy.cm  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU5line2dummy.MARKER  &
   adams_id = 2435  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkU5line2dummy.MARKER  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU5line2dummy.MARKER_2  &
   adams_id = 2436  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkU5line2dummy.MARKER_2  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU5line2dummy.MARKER_3  &
   adams_id = 2437  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkU5line2dummy.MARKER_3  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU5line2dummy.MARKER_4  &
   adams_id = 2438  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkU5line2dummy.MARKER_4  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU5line2dummy.MARKER_5  &
   adams_id = 2439  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkU5line2dummy.MARKER_5  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU5line2dummy.MARKER_6  &
   adams_id = 2440  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkU5line2dummy.MARKER_6  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU5line2dummy.MARKER_7  &
   adams_id = 2441  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkU5line2dummy.MARKER_7  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU5line2dummy.MARKER_8  &
   adams_id = 2442  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkU5line2dummy.MARKER_8  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU5line2dummy.MARKER_9  &
   adams_id = 2443  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkU5line2dummy.MARKER_9  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU5line2dummy.MARKER_10  &
   adams_id = 2444  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkU5line2dummy.MARKER_10  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU5line2dummy.MARKER_11  &
   adams_id = 2445  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkU5line2dummy.MARKER_11  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU5line2dummy.MARKER_12  &
   adams_id = 2446  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkU5line2dummy.MARKER_12  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU5line2dummy.MARKER_13  &
   adams_id = 2447  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkU5line2dummy.MARKER_13  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU5line2dummy.MARKER_14  &
   adams_id = 2448  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkU5line2dummy.MARKER_14  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU5line2dummy.MARKER_15  &
   adams_id = 2449  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkU5line2dummy.MARKER_15  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU5line2dummy.MARKER_16  &
   adams_id = 2450  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkU5line2dummy.MARKER_16  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU5line2dummy.MARKER_17  &
   adams_id = 2451  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkU5line2dummy.MARKER_17  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU5line2dummy.MARKER_18  &
   adams_id = 2452  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkU5line2dummy.MARKER_18  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU5line2dummy.MARKER_19  &
   adams_id = 3451  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkU5line2dummy.MARKER_19  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU5line2dummy.MARKER_20  &
   adams_id = 3915  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkU5line2dummy.MARKER_20  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU5line2dummy.MARKER_21  &
   adams_id = 4039  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkU5line2dummy.MARKER_21  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU5line2dummy.MARKER_22  &
   adams_id = 4200  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkU5line2dummy.MARKER_22  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU5line2dummy.MARKER_23  &
   adams_id = 4335  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkU5line2dummy.MARKER_23  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU5line2dummy.MARKER_24  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkU5line2dummy.MARKER_24  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU5line2dummy.MARKER_25  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkU5line2dummy.MARKER_26  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
part create rigid_body mass_properties  &
   part_name = .FRS5_doe_8_LAUL.linkU5line2dummy  &
   material_type = .FRS5_doe_8_LAUL.wood
!
! ****** Graphics for current part ******
!
geometry create shape ellipsoid  &
   ellipsoid_name = .FRS5_doe_8_LAUL.linkU5line2dummy.sph  &
   adams_id = 2652  &
   center_marker = .FRS5_doe_8_LAUL.linkU5line2dummy.cm  &
   x_scale_factor = 1.0  &
   y_scale_factor = 1.0  &
   z_scale_factor = 1.0
!
geometry attributes  &
   geometry_name = .FRS5_doe_8_LAUL.linkU5line2dummy.sph  &
   color = RED
!
part attributes  &
   part_name = .FRS5_doe_8_LAUL.linkU5line2dummy  &
   visibility = on  &
   size_of_icons = 1.5
!
!--------------------------------- fwd_gateF ----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .FRS5_doe_8_LAUL.ground
!
part create rigid_body name_and_position  &
   part_name = .FRS5_doe_8_LAUL.fwd_gateF  &
   adams_id = 322  &
   location = -36.1428313926, 746.4073667808, -7.5638764114  &
   orientation = 270.0d, 3.1576196408d, 90.0d
!
defaults coordinate_system  &
   default_coordinate_system = .FRS5_doe_8_LAUL.fwd_gateF
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.fwd_gateF.MARKER_37  &
   adams_id = 1603  &
   location = 149.4774169335, -647.9473667808, 111.2585974037  &
   orientation = 180.0d, 90.0d, 180.0026196408d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.fwd_gateF.MARKER_37  &
   color = GREEN  &
   size_of_icons = 7.0
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.fwd_gateF.refmark  &
   adams_id = 3244  &
   location = 149.4793106305, -645.4873667808, 111.2625325471  &
   orientation = 90.0d, 12.4624015773d, 270.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.fwd_gateF.refmark  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.fwd_gateF.PSMAR  &
   adams_id = 3245  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.fwd_gateF.PSMAR  &
   color = GREEN  &
   visibility = off
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.fwd_gateF.cm  &
   adams_id = 3246  &
   location = 147.4381641767, -640.272480953, 110.0997849818  &
   orientation = 95.6833266334d, 60.346529876d, 357.2506259416d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.fwd_gateF.cm  &
   color = GREEN
!
part create rigid_body mass_properties  &
   part_name = .FRS5_doe_8_LAUL.fwd_gateF  &
   density = 7.833E-06
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .FRS5_doe_8_LAUL.fwd_gateF  &
   color = COLOR_R255G127B000  &
   visibility = on
!
!--------------------------------- aft_gateF ----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .FRS5_doe_8_LAUL.ground
!
part create rigid_body name_and_position  &
   part_name = .FRS5_doe_8_LAUL.aft_gateF  &
   adams_id = 323  &
   location = -42.4987563763, 746.331878485, 0.5053735382  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .FRS5_doe_8_LAUL.aft_gateF
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.aft_gateF.MARKER_39  &
   adams_id = 39  &
   location = 149.4787563763, -443.9928550765, 111.2596264618  &
   orientation = 180.0d, 90.0d, 180.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.aft_gateF.MARKER_39  &
   color = GREEN  &
   size_of_icons = 7.0
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.aft_gateF.refmark  &
   adams_id = 3248  &
   location = 165.9332390481, -446.9773667808, 120.7596264617  &
   orientation = 270.0d, 53.5362632383d, 270.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.aft_gateF.refmark  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.aft_gateF.PSMAR  &
   adams_id = 3249  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.aft_gateF.PSMAR  &
   color = GREEN  &
   visibility = off
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.aft_gateF.cm  &
   adams_id = 3250  &
   location = 148.6913845563, -438.6553865735, 110.802503748  &
   orientation = 279.9010207079d, 119.7014494028d, 94.9291555184d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.aft_gateF.cm  &
   color = GREEN
!
part create rigid_body mass_properties  &
   part_name = .FRS5_doe_8_LAUL.aft_gateF  &
   density = 7.833E-06
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .FRS5_doe_8_LAUL.aft_gateF  &
   color = YELLOW  &
   visibility = on
!
!------------------------------ ferguson_shaftF -------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .FRS5_doe_8_LAUL.ground
!
part create rigid_body name_and_position  &
   part_name = .FRS5_doe_8_LAUL.ferguson_shaftF  &
   adams_id = 324  &
   location = -42.4986382469, 746.3473667808, 0.5034404975  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .FRS5_doe_8_LAUL.ferguson_shaftF
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.ferguson_shaftF.MARKER_505  &
   adams_id = 505  &
   location = 7.6485201174, -204.3073667808, 111.9265595025  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.ferguson_shaftF.MARKER_505  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.ferguson_shaftF.MARKER_19  &
   adams_id = 19  &
   location = 7.6485201174, -217.3073667808, 111.9265595025  &
   orientation = 0.0d, 90.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.ferguson_shaftF.MARKER_19  &
   color = GREEN  &
   size_of_icons = 7.0
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.ferguson_shaftF.refmark  &
   adams_id = 3253  &
   location = 7.6486382467, -175.5073667808, 111.9246264617  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.ferguson_shaftF.refmark  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.ferguson_shaftF.PSMAR  &
   adams_id = 3254  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.ferguson_shaftF.PSMAR  &
   color = GREEN  &
   visibility = off
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.ferguson_shaftF.cm  &
   adams_id = 3255  &
   location = 7.3749542104, -247.0913003779, 112.0642445386  &
   orientation = 0.2833961643d, 90.1314806575d, 317.5128969531d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.ferguson_shaftF.cm  &
   color = GREEN
!
part create rigid_body mass_properties  &
   part_name = .FRS5_doe_8_LAUL.ferguson_shaftF  &
   density = 7.861E-06
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .FRS5_doe_8_LAUL.ferguson_shaftF  &
   color = COLOR_R255G127B000  &
   visibility = on
!
!------------------------------- ferguson_camF --------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .FRS5_doe_8_LAUL.ground
!
part create rigid_body name_and_position  &
   part_name = .FRS5_doe_8_LAUL.ferguson_camF  &
   adams_id = 325  &
   location = -42.4987563762, 746.3473667808, 0.5053735383  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .FRS5_doe_8_LAUL.ferguson_camF
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.ferguson_camF.MARKER_504  &
   adams_id = 504  &
   location = 7.6486382467, -204.3073667808, 111.9246264617  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.ferguson_camF.MARKER_504  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.ferguson_camF.target  &
   adams_id = 3256  &
   location = 7.6486382467, -204.3073667808, 111.9246264617  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.ferguson_camF.target  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.ferguson_camF.PSMAR  &
   adams_id = 3257  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.ferguson_camF.PSMAR  &
   color = GREEN  &
   visibility = off
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.ferguson_camF.PSMAR3  &
   adams_id = 3258  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.ferguson_camF.PSMAR3  &
   color = GREEN  &
   visibility = off
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.ferguson_camF.refmark  &
   adams_id = 3259  &
   location = 7.6486382467, -204.3073667808, 111.9246264617  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.ferguson_camF.refmark  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.ferguson_camF.PSMAR2  &
   adams_id = 3260  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.ferguson_camF.PSMAR2  &
   color = GREEN  &
   visibility = off
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.ferguson_camF.cm  &
   adams_id = 3261  &
   location = 5.6874270278, -194.9087725926, 114.259158853  &
   orientation = 90.1267928976d, 139.969834202d, 0.6599491041d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.ferguson_camF.cm  &
   color = GREEN
!
part create rigid_body mass_properties  &
   part_name = .FRS5_doe_8_LAUL.ferguson_camF  &
   density = 7.8306436994E-06
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .FRS5_doe_8_LAUL.ferguson_camF  &
   color = SILVER  &
   visibility = on
!
!-------------------------------- clutch_gearF --------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .FRS5_doe_8_LAUL.ground
!
part create rigid_body name_and_position  &
   part_name = .FRS5_doe_8_LAUL.clutch_gearF  &
   adams_id = 326  &
   location = -42.4987563763, 746.3473667808, 0.5053735382  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .FRS5_doe_8_LAUL.clutch_gearF
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.clutch_gearF.MARKER_25  &
   adams_id = 25  &
   location = 68.1286382468, -294.5973667808, 129.5546264619  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.clutch_gearF.MARKER_25  &
   color = GREEN  &
   size_of_icons = 7.0
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.clutch_gearF.marker_213  &
   adams_id = 213  &
   location = 68.1286382468, -282.5973667808, 129.5546264619  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.clutch_gearF.marker_213  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.clutch_gearF.grearref  &
   adams_id = 3264  &
   location = 68.1286382467, -313.5973667808, 129.5546264617  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.clutch_gearF.grearref  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.clutch_gearF.PSMAR  &
   adams_id = 3265  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.clutch_gearF.PSMAR  &
   color = GREEN  &
   visibility = off  &
   size_of_icons = 10.0
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.clutch_gearF.cm  &
   adams_id = 3266  &
   location = 68.1286627012, -294.9834356538, 129.5546375622  &
   orientation = 89.9999687891d, 150.7479816992d, 4.9360732896E-05d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.clutch_gearF.cm  &
   color = GREEN  &
   size_of_icons = 10.0
!
part create rigid_body mass_properties  &
   part_name = .FRS5_doe_8_LAUL.clutch_gearF  &
   density = 7.833E-06
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .FRS5_doe_8_LAUL.clutch_gearF  &
   color = COLOR_R114G012B132  &
   visibility = on  &
   size_of_icons = 10.0
!
!------------------------------- clutch_shaftF --------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .FRS5_doe_8_LAUL.ground
!
part create rigid_body name_and_position  &
   part_name = .FRS5_doe_8_LAUL.clutch_shaftF  &
   adams_id = 327  &
   location = -42.4987563763, 746.3473667808, 0.5053735382  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .FRS5_doe_8_LAUL.clutch_shaftF
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.clutch_shaftF.MARKER_26  &
   adams_id = 26  &
   location = 68.1286382468, -294.5973667808, 129.5546264619  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.clutch_shaftF.MARKER_26  &
   color = GREEN  &
   size_of_icons = 7.0
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.clutch_shaftF.shaftref  &
   adams_id = 3268  &
   location = 68.1286382467, -418.6273667808, 129.5546264617  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.clutch_shaftF.shaftref  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.clutch_shaftF.PSMAR  &
   adams_id = 3269  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.clutch_shaftF.PSMAR  &
   color = GREEN  &
   visibility = off  &
   size_of_icons = 10.0
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.clutch_shaftF.cm  &
   adams_id = 3270  &
   location = 68.1259574447, -340.6430021113, 129.5539938357  &
   orientation = 179.9957196702d, 89.9986292048d, 60.5387620606d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.clutch_shaftF.cm  &
   color = GREEN  &
   size_of_icons = 10.0
!
part create rigid_body mass_properties  &
   part_name = .FRS5_doe_8_LAUL.clutch_shaftF  &
   density = 7.833E-06
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .FRS5_doe_8_LAUL.clutch_shaftF  &
   color = MAGENTA  &
   visibility = on  &
   size_of_icons = 10.0
!
!------------------------------ upper_drivegearF ------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .FRS5_doe_8_LAUL.ground
!
part create rigid_body name_and_position  &
   part_name = .FRS5_doe_8_LAUL.upper_drivegearF  &
   adams_id = 328  &
   location = -42.4986382469, 746.3473667808, 0.5034404975  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .FRS5_doe_8_LAUL.upper_drivegearF
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.upper_drivegearF.MARKER_42  &
   adams_id = 42  &
   location = 128.4786382469, -393.9673667808, 147.6346264614  &
   orientation = 0.0d, 90.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.upper_drivegearF.MARKER_42  &
   color = GREEN  &
   size_of_icons = 7.0
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.upper_drivegearF.aft_center_ref  &
   adams_id = 497  &
   location = 128.4786382469, -386.4673667808, 147.6346264614  &
   orientation = 0.0d, 90.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.upper_drivegearF.aft_center_ref  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.upper_drivegearF.upperref  &
   adams_id = 3272  &
   location = 128.4787563762, -405.6273667808, 147.6326934207  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.upper_drivegearF.upperref  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.upper_drivegearF.PSMAR  &
   adams_id = 3273  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.upper_drivegearF.PSMAR  &
   color = GREEN  &
   visibility = off  &
   size_of_icons = 10.0
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.upper_drivegearF.cm  &
   adams_id = 3274  &
   location = 128.4800842622, -394.0950440203, 147.6360765672  &
   orientation = 269.9861679229d, 166.7605762271d, 179.9869920906d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.upper_drivegearF.cm  &
   color = GREEN  &
   size_of_icons = 10.0
!
part create rigid_body mass_properties  &
   part_name = .FRS5_doe_8_LAUL.upper_drivegearF  &
   density = 7.833E-06
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .FRS5_doe_8_LAUL.upper_drivegearF  &
   color = COLOR_R068G137B035  &
   visibility = on  &
   size_of_icons = 10.0
!
!------------------------------ lower_drivegearF ------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .FRS5_doe_8_LAUL.ground
!
part create rigid_body name_and_position  &
   part_name = .FRS5_doe_8_LAUL.lower_drivegearF  &
   adams_id = 329  &
   location = -42.4986382469, 746.3473667808, 0.5034404975  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .FRS5_doe_8_LAUL.lower_drivegearF
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.lower_drivegearF.MARKER_44  &
   adams_id = 44  &
   location = 170.4786382469, -389.9823667808, 74.8884925436  &
   orientation = 0.0d, 90.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.lower_drivegearF.MARKER_44  &
   color = GREEN  &
   size_of_icons = 7.0
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.lower_drivegearF.PSMAR  &
   adams_id = 3277  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.lower_drivegearF.PSMAR  &
   color = GREEN  &
   visibility = off
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.lower_drivegearF.cm  &
   adams_id = 3278  &
   location = 170.4816628914, -394.0950476155, 74.8815252707  &
   orientation = 270.006049767d, 152.7549492961d, 180.0096890669d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.lower_drivegearF.cm  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.lower_drivegearF.lowerref  &
   adams_id = 3279  &
   location = 170.4787563762, -405.6273667808, 74.8865595028  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.lower_drivegearF.lowerref  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.lower_drivegearF.aft_center_ref  &
   adams_id = 3865  &
   location = 170.4786382469, -386.6273667808, 74.8884925436  &
   orientation = 0.0d, 90.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.lower_drivegearF.aft_center_ref  &
   color = GREEN
!
part create rigid_body mass_properties  &
   part_name = .FRS5_doe_8_LAUL.lower_drivegearF  &
   density = 7.833E-06
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .FRS5_doe_8_LAUL.lower_drivegearF  &
   color = COLOR_R068G137B035  &
   visibility = on
!
!----------------------------- upper_drive_shaftF -----------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .FRS5_doe_8_LAUL.ground
!
part create rigid_body name_and_position  &
   part_name = .FRS5_doe_8_LAUL.upper_drive_shaftF  &
   adams_id = 336  &
   location = -42.4983324163, 746.8973667808, 0.5030398798  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .FRS5_doe_8_LAUL.upper_drive_shaftF
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.upper_drive_shaftF.b3  &
   adams_id = 5  &
   location = 128.475900552, -342.6773667808, 147.6419601202  &
   orientation = 0.0d, 90.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.upper_drive_shaftF.b3  &
   color = GREEN  &
   size_of_icons = 7.0
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.upper_drive_shaftF.upper_center  &
   adams_id = 236  &
   location = 128.475900552, -510.5273667808, 147.6419601202  &
   orientation = 0.0d, 90.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.upper_drive_shaftF.upper_center  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.upper_drive_shaftF.marker_46  &
   adams_id = 46  &
   location = 128.4783324163, -365.1473667808, 147.6350270791  &
   orientation = 0.0d, 90.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.upper_drive_shaftF.marker_46  &
   color = GREEN  &
   size_of_icons = 7.0
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.upper_drive_shaftF.marker_223  &
   adams_id = 223  &
   location = 128.4759005519, -474.3523667808, 147.6419601203  &
   orientation = 270.0d, 91.3706d, 90.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.upper_drive_shaftF.marker_223  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.upper_drive_shaftF.marker_225  &
   adams_id = 225  &
   location = 128.4759005519, -608.7223667808, 147.6419601203  &
   orientation = 270.0d, 91.3706d, 90.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.upper_drive_shaftF.marker_225  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.upper_drive_shaftF.PSMAR  &
   adams_id = 3301  &
   location = 42.4983324163, -746.8973667808, -0.5030398798  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.upper_drive_shaftF.PSMAR  &
   color = GREEN  &
   visibility = off  &
   size_of_icons = 10.0
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.upper_drive_shaftF.PSMAR1  &
   adams_id = 3302  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.upper_drive_shaftF.PSMAR1  &
   color = GREEN  &
   visibility = off  &
   size_of_icons = 10.0
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.upper_drive_shaftF.cm  &
   adams_id = 3303  &
   location = 128.4787563762, -512.6797080452, 147.6326934207  &
   orientation = 180.0d, 90.0d, 90.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.upper_drive_shaftF.cm  &
   color = GREEN  &
   size_of_icons = 10.0
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.upper_drive_shaftF.MARKER_4351  &
   adams_id = 4351  &
   location = 128.4787563762, -488.7273667807, 147.6326934207  &
   orientation = 0.0d, 90.0d, 0.0d
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.upper_drive_shaftF.MARKER_4352  &
   adams_id = 4352  &
   location = 128.4787563762, -488.7273667807, 147.6326934207  &
   orientation = 0.0d, 90.0d, 0.0d
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.upper_drive_shaftF.uscenter  &
   adams_id = 4361  &
   location = 128.475900552, -510.5273667808, 147.6419601202  &
   orientation = 0.0d, 90.0d, 0.0d
!
part create rigid_body mass_properties  &
   part_name = .FRS5_doe_8_LAUL.upper_drive_shaftF  &
   density = 7.833E-06
!
! ****** Graphics for current part ******
!
geometry create shape cylinder  &
   cylinder_name = .FRS5_doe_8_LAUL.upper_drive_shaftF.CYLINDER_3992  &
   adams_id = 3992  &
   center_marker = .FRS5_doe_8_LAUL.upper_drive_shaftF.MARKER_4351  &
   angle_extent = 360.0  &
   length = 55.1  &
   radius = 10.0  &
   side_count_for_body = 20  &
   segment_count_for_ends = 20
!
geometry create shape cylinder  &
   cylinder_name = .FRS5_doe_8_LAUL.upper_drive_shaftF.CYLINDER_4034  &
   adams_id = 4034  &
   center_marker = .FRS5_doe_8_LAUL.upper_drive_shaftF.MARKER_4352  &
   angle_extent = 360.0  &
   length = 55.1  &
   radius = 6.35  &
   side_count_for_body = 20  &
   segment_count_for_ends = 20
!
geometry create shape csg  &
   csg_name = .FRS5_doe_8_LAUL.upper_drive_shaftF.CSG_4076  &
   adams_id = 4076  &
   base_object = .FRS5_doe_8_LAUL.upper_drive_shaftF.CYLINDER_3992  &
   object = .FRS5_doe_8_LAUL.upper_drive_shaftF.CYLINDER_4034  &
   type = difference
!
part attributes  &
   part_name = .FRS5_doe_8_LAUL.upper_drive_shaftF  &
   color = COLOR_R114G012B132  &
   visibility = on  &
   size_of_icons = 10.0
!
!---------------------------- upper_rear_sprocketF ----------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .FRS5_doe_8_LAUL.ground
!
part create rigid_body name_and_position  &
   part_name = .FRS5_doe_8_LAUL.upper_rear_sprocketF  &
   adams_id = 337  &
   location = -42.4983324163, 746.8973667808, 0.5030398798  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .FRS5_doe_8_LAUL.upper_rear_sprocketF
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.upper_rear_sprocketF.marker_222  &
   adams_id = 222  &
   location = 128.4759005519, -474.3523667808, 147.6419601202  &
   orientation = 270.0d, 91.3706d, 90.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.upper_rear_sprocketF.marker_222  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.upper_rear_sprocketF.PSMAR  &
   adams_id = 3305  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.upper_rear_sprocketF.PSMAR  &
   color = GREEN  &
   visibility = off  &
   size_of_icons = 10.0
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.upper_rear_sprocketF.cm  &
   adams_id = 3306  &
   location = 128.4787580813, -464.6721428597, 147.6326821178  &
   orientation = 89.9999966113d, 162.4298281962d, 359.9999916785d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.upper_rear_sprocketF.cm  &
   color = GREEN  &
   size_of_icons = 10.0
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.upper_rear_sprocketF.MARKER_2  &
   adams_id = 3307  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.upper_rear_sprocketF.MARKER_2  &
   color = GREEN  &
   visibility = off  &
   size_of_icons = 10.0
!
part create rigid_body mass_properties  &
   part_name = .FRS5_doe_8_LAUL.upper_rear_sprocketF  &
   density = 7.833E-06
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .FRS5_doe_8_LAUL.upper_rear_sprocketF  &
   color = COLOR_R137G063B063  &
   visibility = on  &
   size_of_icons = 10.0
!
!--------------------------- upper_front_sprocketF ----------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .FRS5_doe_8_LAUL.ground
!
part create rigid_body name_and_position  &
   part_name = .FRS5_doe_8_LAUL.upper_front_sprocketF  &
   adams_id = 338  &
   location = -42.4983324163, 746.8973667808, 0.5030398798  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .FRS5_doe_8_LAUL.upper_front_sprocketF
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.upper_front_sprocketF.marker_224  &
   adams_id = 224  &
   location = 128.4759005519, -608.7223667808, 147.6419601202  &
   orientation = 270.0d, 91.3706d, 90.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.upper_front_sprocketF.marker_224  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.upper_front_sprocketF.PSMAR  &
   adams_id = 3309  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.upper_front_sprocketF.PSMAR  &
   color = GREEN  &
   visibility = off  &
   size_of_icons = 10.0
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.upper_front_sprocketF.cm  &
   adams_id = 3310  &
   location = 128.4787563762, -609.2440206095, 147.6326934207  &
   orientation = 90.0d, 90.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.upper_front_sprocketF.cm  &
   color = GREEN  &
   size_of_icons = 10.0
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.upper_front_sprocketF.MARKER_3  &
   adams_id = 3311  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.upper_front_sprocketF.MARKER_3  &
   color = GREEN  &
   visibility = off  &
   size_of_icons = 10.0
!
part create rigid_body mass_properties  &
   part_name = .FRS5_doe_8_LAUL.upper_front_sprocketF  &
   density = 7.833E-06
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .FRS5_doe_8_LAUL.upper_front_sprocketF  &
   color = COLOR_R153G000B000  &
   visibility = on  &
   size_of_icons = 10.0
!
!----------------------------- lower_drive_shaftF -----------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .FRS5_doe_8_LAUL.ground
!
part create rigid_body name_and_position  &
   part_name = .FRS5_doe_8_LAUL.lower_drive_shaftF  &
   adams_id = 339  &
   location = -42.4983324163, 746.8973667808, 0.5030398798  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .FRS5_doe_8_LAUL.lower_drive_shaftF
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.lower_drive_shaftF.b2  &
   adams_id = 3  &
   location = 170.4783324163, -342.6773667808, 74.8888931613  &
   orientation = 0.0d, 90.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.lower_drive_shaftF.b2  &
   color = GREEN  &
   size_of_icons = 7.0
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.lower_drive_shaftF.marker_48  &
   adams_id = 48  &
   location = 170.4783324163, -374.7873667808, 74.8888931613  &
   orientation = 0.0d, 90.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.lower_drive_shaftF.marker_48  &
   color = GREEN  &
   size_of_icons = 7.0
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.lower_drive_shaftF.marker_227  &
   adams_id = 227  &
   location = 170.4783324163, -608.7223667808, 74.8888931613  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.lower_drive_shaftF.marker_227  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.lower_drive_shaftF.marker_229  &
   adams_id = 229  &
   location = 170.4783324163, -463.7523667808, 74.8888931613  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.lower_drive_shaftF.marker_229  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.lower_drive_shaftF.lower_center  &
   adams_id = 237  &
   location = 170.4783324163, -510.5273667808, 74.8888931613  &
   orientation = 0.0d, 90.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.lower_drive_shaftF.lower_center  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.lower_drive_shaftF.PSMAR1  &
   adams_id = 3317  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.lower_drive_shaftF.PSMAR1  &
   color = GREEN  &
   visibility = off  &
   size_of_icons = 10.0
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.lower_drive_shaftF.PSMAR  &
   adams_id = 3318  &
   location = 84.4983324163, -746.8973667808, -73.2491737977  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.lower_drive_shaftF.PSMAR  &
   color = GREEN  &
   visibility = off  &
   size_of_icons = 10.0
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.lower_drive_shaftF.cm  &
   adams_id = 3319  &
   location = 170.4787563762, -512.7245117529, 74.8865595028  &
   orientation = 180.0d, 90.0d, 90.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.lower_drive_shaftF.cm  &
   color = GREEN  &
   size_of_icons = 10.0
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.lower_drive_shaftF.ldsref  &
   adams_id = 3320  &
   location = 170.4787563762, -632.3773667808, 74.8865595028  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.lower_drive_shaftF.ldsref  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.lower_drive_shaftF.MARKER_4  &
   adams_id = 3321  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.lower_drive_shaftF.MARKER_4  &
   color = GREEN  &
   visibility = off  &
   size_of_icons = 10.0
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.lower_drive_shaftF.MARKER_4349  &
   adams_id = 4349  &
   location = 170.4787563762, -488.7273667808, 74.8865595028  &
   orientation = 0.0d, 90.0d, 0.0d
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.lower_drive_shaftF.MARKER_4350  &
   adams_id = 4350  &
   location = 170.4787563762, -488.7273667808, 74.8865595028  &
   orientation = 0.0d, 90.0d, 0.0d
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.lower_drive_shaftF.lscenter  &
   adams_id = 4362  &
   location = 170.4783324163, -510.5273667808, 74.8888931613  &
   orientation = 0.0d, 90.0d, 0.0d
!
part create rigid_body mass_properties  &
   part_name = .FRS5_doe_8_LAUL.lower_drive_shaftF  &
   density = 7.833E-06
!
! ****** Graphics for current part ******
!
geometry create shape cylinder  &
   cylinder_name = .FRS5_doe_8_LAUL.lower_drive_shaftF.CYLINDER_3893  &
   adams_id = 3893  &
   center_marker = .FRS5_doe_8_LAUL.lower_drive_shaftF.MARKER_4349  &
   angle_extent = 360.0  &
   length = 55.1  &
   radius = 10.0  &
   side_count_for_body = 20  &
   segment_count_for_ends = 20
!
geometry create shape cylinder  &
   cylinder_name = .FRS5_doe_8_LAUL.lower_drive_shaftF.CYLINDER_3926  &
   adams_id = 3926  &
   center_marker = .FRS5_doe_8_LAUL.lower_drive_shaftF.MARKER_4350  &
   angle_extent = 360.0  &
   length = 55.1  &
   radius = 6.35  &
   side_count_for_body = 20  &
   segment_count_for_ends = 20
!
geometry create shape csg  &
   csg_name = .FRS5_doe_8_LAUL.lower_drive_shaftF.CSG_3959  &
   adams_id = 3959  &
   base_object = .FRS5_doe_8_LAUL.lower_drive_shaftF.CYLINDER_3893  &
   object = .FRS5_doe_8_LAUL.lower_drive_shaftF.CYLINDER_3926  &
   type = difference
!
part attributes  &
   part_name = .FRS5_doe_8_LAUL.lower_drive_shaftF  &
   color = COLOR_R114G012B132  &
   visibility = on  &
   size_of_icons = 10.0
!
!---------------------------- lower_rear_sprocketF ----------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .FRS5_doe_8_LAUL.ground
!
part create rigid_body name_and_position  &
   part_name = .FRS5_doe_8_LAUL.lower_rear_sprocketF  &
   adams_id = 340  &
   location = -42.4983324163, 746.8973667808, 0.5030398798  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .FRS5_doe_8_LAUL.lower_rear_sprocketF
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.lower_rear_sprocketF.marker_228  &
   adams_id = 228  &
   location = 170.4783324163, -463.7523667808, 74.8888931613  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.lower_rear_sprocketF.marker_228  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.lower_rear_sprocketF.PSMAR  &
   adams_id = 3323  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.lower_rear_sprocketF.PSMAR  &
   color = GREEN  &
   visibility = off  &
   size_of_icons = 10.0
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.lower_rear_sprocketF.cm  &
   adams_id = 3324  &
   location = 170.4787653364, -471.4825907018, 74.8865524051  &
   orientation = 90.0000015106d, 137.3750480134d, 359.9999960206d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.lower_rear_sprocketF.cm  &
   color = GREEN  &
   size_of_icons = 10.0
!
part create rigid_body mass_properties  &
   part_name = .FRS5_doe_8_LAUL.lower_rear_sprocketF  &
   density = 7.833E-06
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .FRS5_doe_8_LAUL.lower_rear_sprocketF  &
   color = COLOR_R137G063B063  &
   visibility = on  &
   size_of_icons = 10.0
!
!--------------------------- lower_front_sprocketF ----------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .FRS5_doe_8_LAUL.ground
!
part create rigid_body name_and_position  &
   part_name = .FRS5_doe_8_LAUL.lower_front_sprocketF  &
   adams_id = 341  &
   location = -42.4983324163, 746.8973667808, 0.5030398798  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .FRS5_doe_8_LAUL.lower_front_sprocketF
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.lower_front_sprocketF.marker_226  &
   adams_id = 226  &
   location = 170.4783324163, -608.7223667808, 74.8888931613  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.lower_front_sprocketF.marker_226  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.lower_front_sprocketF.PSMAR  &
   adams_id = 3326  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.lower_front_sprocketF.PSMAR  &
   color = GREEN  &
   visibility = off  &
   size_of_icons = 10.0
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.lower_front_sprocketF.cm  &
   adams_id = 3327  &
   location = 170.4787563762, -613.110712952, 74.8865595028  &
   orientation = 90.0d, 90.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.lower_front_sprocketF.cm  &
   color = GREEN  &
   size_of_icons = 10.0
!
part create rigid_body mass_properties  &
   part_name = .FRS5_doe_8_LAUL.lower_front_sprocketF  &
   density = 7.833E-06
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .FRS5_doe_8_LAUL.lower_front_sprocketF  &
   color = COLOR_R153G000B000  &
   visibility = on  &
   size_of_icons = 10.0
!
!-------------------------------- rotor_shaftF --------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .FRS5_doe_8_LAUL.ground
!
part create rigid_body name_and_position  &
   part_name = .FRS5_doe_8_LAUL.rotor_shaftF  &
   adams_id = 342  &
   location = -42.516816104, 746.3316608648, 0.5139249756  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .FRS5_doe_8_LAUL.rotor_shaftF
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.rotor_shaftF.MARKER_1181  &
   adams_id = 1181  &
   location = 42.516816104, -746.3316608648, -0.5139249756  &
   orientation = 0.0d, 90.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.rotor_shaftF.MARKER_1181  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.rotor_shaftF.MARKER_7  &
   adams_id = 7  &
   location = 42.516816104, -484.7616608648, 49.4810750244  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.rotor_shaftF.MARKER_7  &
   color = GREEN  &
   size_of_icons = 7.0
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.rotor_shaftF.MARKER_9  &
   adams_id = 9  &
   location = 42.516816104, -235.7616608648, 49.4810750244  &
   orientation = 0.0d, 90.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.rotor_shaftF.MARKER_9  &
   color = GREEN  &
   size_of_icons = 7.0
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.rotor_shaftF.MARKER_12  &
   adams_id = 12  &
   location = 42.5151710144, -537.3742108202, 49.4817783165  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.rotor_shaftF.MARKER_12  &
   color = GREEN  &
   size_of_icons = 7.0
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.rotor_shaftF.end_center1  &
   adams_id = 234  &
   location = 42.516816104, -269.2616608648, 49.4810750244  &
   orientation = 0.0d, 90.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.rotor_shaftF.end_center1  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.rotor_shaftF.PSMAR  &
   adams_id = 3333  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.rotor_shaftF.PSMAR  &
   color = GREEN  &
   visibility = off  &
   size_of_icons = 10.0
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.rotor_shaftF.cm  &
   adams_id = 3334  &
   location = 42.5128952318, -410.8943421365, 49.4862487501  &
   orientation = 359.9962503249d, 89.9979846241d, 331.7059959441d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.rotor_shaftF.cm  &
   color = GREEN  &
   size_of_icons = 10.0
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.rotor_shaftF.shaftref  &
   adams_id = 3335  &
   location = 42.5168161038, -616.0773667808, 49.4841419836  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.rotor_shaftF.shaftref  &
   color = GREEN
!
part create rigid_body mass_properties  &
   part_name = .FRS5_doe_8_LAUL.rotor_shaftF  &
   density = 7.833E-06
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .FRS5_doe_8_LAUL.rotor_shaftF  &
   color = CYAN  &
   visibility = on  &
   size_of_icons = 10.0
!
!-------------------------------- feed_rotorF ---------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .FRS5_doe_8_LAUL.ground
!
part create rigid_body name_and_position  &
   part_name = .FRS5_doe_8_LAUL.feed_rotorF  &
   adams_id = 343  &
   location = -42.516816104, 746.3316608648, 0.5139249756  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .FRS5_doe_8_LAUL.feed_rotorF
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.feed_rotorF.MARKER_11  &
   adams_id = 11  &
   location = 42.5151710144, -537.3742108202, 49.4817783165  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.feed_rotorF.MARKER_11  &
   color = GREEN  &
   size_of_icons = 7.0
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.feed_rotorF.rotorref  &
   adams_id = 3337  &
   location = 42.4986382467, -606.4773667808, 49.4946264617  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.feed_rotorF.rotorref  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.feed_rotorF.PSMAR  &
   adams_id = 3338  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.feed_rotorF.PSMAR  &
   color = GREEN  &
   visibility = off  &
   size_of_icons = 10.0
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.feed_rotorF.cm  &
   adams_id = 3339  &
   location = 42.4970144081, -536.6151161155, 49.495395029  &
   orientation = 359.9972534682d, 89.9990194909d, 327.9793845965d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.feed_rotorF.cm  &
   color = GREEN  &
   size_of_icons = 10.0
!
part create rigid_body mass_properties  &
   part_name = .FRS5_doe_8_LAUL.feed_rotorF  &
   density = 7.833E-06
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .FRS5_doe_8_LAUL.feed_rotorF  &
   color = COLOR_R255G127B000  &
   visibility = on  &
   size_of_icons = 10.0
!
!---------------------------------- brassL3 -----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .FRS5_doe_8_LAUL.ground
!
part create rigid_body name_and_position  &
   part_name = .FRS5_doe_8_LAUL.brassL3  &
   adams_id = 346  &
   location = 189.552864292, 303.6967882549, 136.8634439634  &
   orientation = 180.0d, 90.0d, 290.0d
!
defaults coordinate_system  &
   default_coordinate_system = .FRS5_doe_8_LAUL.brassL3
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.brassL3.spring_ref  &
   adams_id = 3481  &
   location = 0.0, 0.0, -67.4517  &
   orientation = 0.0d, 180.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.brassL3.spring_ref  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.brassL3.primer  &
   adams_id = 3482  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.brassL3.primer  &
   color = GREEN  &
   size_of_icons = 10.0
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.brassL3.PSMAR  &
   adams_id = 3483  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.brassL3.PSMAR  &
   color = GREEN  &
   visibility = off  &
   size_of_icons = 10.0
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.brassL3.cm  &
   adams_id = 3484  &
   location = 0.0, 0.0, -75.1350332793  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.brassL3.cm  &
   color = GREEN  &
   size_of_icons = 10.0
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.brassL3.tc  &
   adams_id = 3485  &
   location = 0.0, 0.0, -109.4762786185  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.brassL3.tc  &
   color = GREEN  &
   size_of_icons = 10.0
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.brassL3.ac  &
   adams_id = 3486  &
   location = 0.0, 0.0, -83.376278637  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.brassL3.ac  &
   color = GREEN  &
   size_of_icons = 10.0
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.brassL3.fc  &
   adams_id = 3487  &
   location = 0.0, 0.0, -135.5762786  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.brassL3.fc  &
   color = GREEN  &
   size_of_icons = 10.0
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.brassL3.channel_ref  &
   adams_id = 3488  &
   location = 4.9299994642E-08, 0.0, -7.9591619725  &
   orientation = 0.0d, 180.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.brassL3.channel_ref  &
   color = GREEN  &
   size_of_icons = 10.0
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.brassL3.crimp3b  &
   adams_id = 3489  &
   location = 0.0, 0.0, -172.75  &
   orientation = 0.0d, 180.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.brassL3.crimp3b  &
   color = GREEN  &
   size_of_icons = 10.0
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.brassL3.frust_ref  &
   adams_id = 3490  &
   location = 0.0, 0.0, -11.4954168526  &
   orientation = 0.0d, 180.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.brassL3.frust_ref  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.brassL3.MARKER_3137  &
   adams_id = 3491  &
   location = -52.83, 0.0, -109.4762786185  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.brassL3.MARKER_3137  &
   color = GREEN  &
   size_of_icons = 10.0
!
! ****** Floating Markers for current part ******
!
floating_marker create  &
   floating_marker_name = .FRS5_doe_8_LAUL.brassL3.FMARKER_1655  &
   adams_id = 3492
!
floating_marker create  &
   floating_marker_name = .FRS5_doe_8_LAUL.brassL3.FMARKER_224  &
   adams_id = 3493
!
floating_marker create  &
   floating_marker_name = .FRS5_doe_8_LAUL.brassL3.FMARKER_34  &
   adams_id = 3494
!
floating_marker create  &
   floating_marker_name = .FRS5_doe_8_LAUL.brassL3.FMARKER_81  &
   adams_id = 3495
!
floating_marker create  &
   floating_marker_name = .FRS5_doe_8_LAUL.brassL3.FMARKER_219  &
   adams_id = 3496
!
floating_marker create  &
   floating_marker_name = .FRS5_doe_8_LAUL.brassL3.FMARKER_2175  &
   adams_id = 3497
!
floating_marker create  &
   floating_marker_name = .FRS5_doe_8_LAUL.brassL3.FMARKER_3775  &
   adams_id = 3775
!
part create rigid_body mass_properties  &
   part_name = .FRS5_doe_8_LAUL.brassL3  &
   density = 2.23E-06
!
! ****** Graphics for current part ******
!
geometry create shape cylinder  &
   cylinder_name = .FRS5_doe_8_LAUL.brassL3.cyl  &
   adams_id = 3340  &
   center_marker = .FRS5_doe_8_LAUL.brassL3.crimp3b  &
   angle_extent = 360.0  &
   length = -14.0  &
   radius = 15.8  &
   side_count_for_body = 30  &
   segment_count_for_ends = 30
!
geometry create shape frustum  &
   frustum_name = .FRS5_doe_8_LAUL.brassL3.FRUSTUM  &
   adams_id = 3343  &
   center_marker = .FRS5_doe_8_LAUL.brassL3.frust_ref  &
   angle_extent = 360.0  &
   length = 134.0  &
   top_radius = 20.1  &
   bottom_radius = 21.75  &
   side_count_for_body = 30  &
   segment_count_for_ends = 30
!
part attributes  &
   part_name = .FRS5_doe_8_LAUL.brassL3  &
   color = COLOR_R068G137B035  &
   visibility = on  &
   size_of_icons = 10.0
!
!---------------------------------- brassL4 -----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .FRS5_doe_8_LAUL.ground
!
part create rigid_body name_and_position  &
   part_name = .FRS5_doe_8_LAUL.brassL4  &
   adams_id = 347  &
   location = 207.6217884639, 303.6967882549, 186.5074051196  &
   orientation = 180.0d, 90.0d, 290.0d
!
defaults coordinate_system  &
   default_coordinate_system = .FRS5_doe_8_LAUL.brassL4
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.brassL4.spring_ref  &
   adams_id = 3498  &
   location = 0.0, 0.0, -67.4517  &
   orientation = 0.0d, 180.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.brassL4.spring_ref  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.brassL4.primer  &
   adams_id = 3499  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.brassL4.primer  &
   color = GREEN  &
   size_of_icons = 10.0
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.brassL4.PSMAR  &
   adams_id = 3500  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.brassL4.PSMAR  &
   color = GREEN  &
   visibility = off  &
   size_of_icons = 10.0
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.brassL4.cm  &
   adams_id = 3501  &
   location = 0.0, 0.0, -75.1350332793  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.brassL4.cm  &
   color = GREEN  &
   size_of_icons = 10.0
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.brassL4.tc  &
   adams_id = 3502  &
   location = 0.0, 0.0, -109.4762786185  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.brassL4.tc  &
   color = GREEN  &
   size_of_icons = 10.0
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.brassL4.ac  &
   adams_id = 3503  &
   location = 0.0, 0.0, -83.376278637  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.brassL4.ac  &
   color = GREEN  &
   size_of_icons = 10.0
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.brassL4.fc  &
   adams_id = 3504  &
   location = 0.0, 0.0, -135.5762786  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.brassL4.fc  &
   color = GREEN  &
   size_of_icons = 10.0
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.brassL4.channel_ref  &
   adams_id = 3505  &
   location = 4.9299994642E-08, 0.0, -7.9591619725  &
   orientation = 0.0d, 180.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.brassL4.channel_ref  &
   color = GREEN  &
   size_of_icons = 10.0
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.brassL4.crimp4b  &
   adams_id = 3506  &
   location = 0.0, 0.0, -172.75  &
   orientation = 0.0d, 180.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.brassL4.crimp4b  &
   color = GREEN  &
   size_of_icons = 10.0
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.brassL4.frust_ref  &
   adams_id = 3507  &
   location = 0.0, 0.0, -11.4954168526  &
   orientation = 0.0d, 180.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.brassL4.frust_ref  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.brassL4.MARKER_3145  &
   adams_id = 3508  &
   location = 0.0, 0.0, -67.4517  &
   orientation = 0.0d, 180.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.brassL4.MARKER_3145  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.brassL4.MARKER_3148  &
   adams_id = 3509  &
   location = 0.0, 0.0, -67.4517  &
   orientation = 0.0d, 180.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.brassL4.MARKER_3148  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.brassL4.MARKER_3151  &
   adams_id = 3510  &
   location = 0.0, 0.0, -67.4517  &
   orientation = 0.0d, 180.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.brassL4.MARKER_3151  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.brassL4.MARKER_3154  &
   adams_id = 3511  &
   location = 0.0, 0.0, -67.4517  &
   orientation = 0.0d, 180.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.brassL4.MARKER_3154  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.brassL4.MARKER_3157  &
   adams_id = 3512  &
   location = 0.0, 0.0, -67.4517  &
   orientation = 0.0d, 180.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.brassL4.MARKER_3157  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.brassL4.MARKER_3160  &
   adams_id = 3513  &
   location = 0.0, 0.0, -67.4517  &
   orientation = 0.0d, 180.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.brassL4.MARKER_3160  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.brassL4.MARKER_3163  &
   adams_id = 3514  &
   location = 0.0, 0.0, -67.4517  &
   orientation = 0.0d, 180.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.brassL4.MARKER_3163  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.brassL4.MARKER_3166  &
   adams_id = 3515  &
   location = 0.0, 0.0, -67.4517  &
   orientation = 0.0d, 180.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.brassL4.MARKER_3166  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.brassL4.MARKER_3169  &
   adams_id = 3516  &
   location = 0.0, 0.0, -67.4517  &
   orientation = 0.0d, 180.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.brassL4.MARKER_3169  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.brassL4.MARKER_3172  &
   adams_id = 3517  &
   location = 0.0, 0.0, -67.4517  &
   orientation = 0.0d, 180.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.brassL4.MARKER_3172  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.brassL4.MARKER_3175  &
   adams_id = 3518  &
   location = 0.0, 0.0, -67.4517  &
   orientation = 0.0d, 180.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.brassL4.MARKER_3175  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.brassL4.MARKER_3178  &
   adams_id = 3519  &
   location = 0.0, 0.0, -67.4517  &
   orientation = 0.0d, 180.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.brassL4.MARKER_3178  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.brassL4.MARKER_3181  &
   adams_id = 3520  &
   location = 0.0, 0.0, -67.4517  &
   orientation = 0.0d, 180.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.brassL4.MARKER_3181  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.brassL4.MARKER_3184  &
   adams_id = 3521  &
   location = 0.0, 0.0, -67.4517  &
   orientation = 0.0d, 180.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.brassL4.MARKER_3184  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.brassL4.MARKER_3187  &
   adams_id = 3522  &
   location = 0.0, 0.0, -67.4517  &
   orientation = 0.0d, 180.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.brassL4.MARKER_3187  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.brassL4.MARKER_3190  &
   adams_id = 3523  &
   location = 0.0, 0.0, -67.4517  &
   orientation = 0.0d, 180.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.brassL4.MARKER_3190  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.brassL4.MARKER_3193  &
   adams_id = 3524  &
   location = 0.0, 0.0, -67.4517  &
   orientation = 0.0d, 180.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.brassL4.MARKER_3193  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.brassL4.MARKER_3196  &
   adams_id = 3525  &
   location = 0.0, 0.0, -67.4517  &
   orientation = 0.0d, 180.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.brassL4.MARKER_3196  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.brassL4.MARKER_3199  &
   adams_id = 3526  &
   location = 0.0, 0.0, -67.4517  &
   orientation = 0.0d, 180.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.brassL4.MARKER_3199  &
   color = GREEN
!
! ****** Floating Markers for current part ******
!
floating_marker create  &
   floating_marker_name = .FRS5_doe_8_LAUL.brassL4.FMARKER_1656  &
   adams_id = 3527
!
floating_marker create  &
   floating_marker_name = .FRS5_doe_8_LAUL.brassL4.FMARKER_225  &
   adams_id = 3528
!
floating_marker create  &
   floating_marker_name = .FRS5_doe_8_LAUL.brassL4.FMARKER_34  &
   adams_id = 3529
!
floating_marker create  &
   floating_marker_name = .FRS5_doe_8_LAUL.brassL4.FMARKER_81  &
   adams_id = 3530
!
floating_marker create  &
   floating_marker_name = .FRS5_doe_8_LAUL.brassL4.FMARKER_222  &
   adams_id = 3531
!
floating_marker create  &
   floating_marker_name = .FRS5_doe_8_LAUL.brassL4.FMARKER_2176  &
   adams_id = 3532
!
floating_marker create  &
   floating_marker_name = .FRS5_doe_8_LAUL.brassL4.FMARKER_3776  &
   adams_id = 3776
!
part create rigid_body mass_properties  &
   part_name = .FRS5_doe_8_LAUL.brassL4  &
   density = 2.23E-06
!
! ****** Graphics for current part ******
!
geometry create shape cylinder  &
   cylinder_name = .FRS5_doe_8_LAUL.brassL4.cyl  &
   adams_id = 3351  &
   center_marker = .FRS5_doe_8_LAUL.brassL4.crimp4b  &
   angle_extent = 360.0  &
   length = -14.0  &
   radius = 15.8  &
   side_count_for_body = 30  &
   segment_count_for_ends = 30
!
geometry create shape frustum  &
   frustum_name = .FRS5_doe_8_LAUL.brassL4.FRUSTUM  &
   adams_id = 3354  &
   center_marker = .FRS5_doe_8_LAUL.brassL4.frust_ref  &
   angle_extent = 360.0  &
   length = 134.0  &
   top_radius = 20.1  &
   bottom_radius = 21.75  &
   side_count_for_body = 30  &
   segment_count_for_ends = 30
!
part attributes  &
   part_name = .FRS5_doe_8_LAUL.brassL4  &
   color = COLOR_R068G137B035  &
   visibility = on  &
   size_of_icons = 10.0
!
!---------------------------------- brassL5 -----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .FRS5_doe_8_LAUL.ground
!
part create rigid_body name_and_position  &
   part_name = .FRS5_doe_8_LAUL.brassL5  &
   adams_id = 348  &
   location = 225.6907126358, 303.6967882549, 236.1513662757  &
   orientation = 180.0d, 90.0d, 290.0d
!
defaults coordinate_system  &
   default_coordinate_system = .FRS5_doe_8_LAUL.brassL5
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.brassL5.spring_ref  &
   adams_id = 3533  &
   location = 0.0, 0.0, -67.4517  &
   orientation = 0.0d, 180.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.brassL5.spring_ref  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.brassL5.primer  &
   adams_id = 3534  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.brassL5.primer  &
   color = GREEN  &
   size_of_icons = 10.0
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.brassL5.PSMAR  &
   adams_id = 3535  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.brassL5.PSMAR  &
   color = GREEN  &
   visibility = off  &
   size_of_icons = 10.0
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.brassL5.cm  &
   adams_id = 3536  &
   location = 0.0, 0.0, -75.1350332793  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.brassL5.cm  &
   color = GREEN  &
   size_of_icons = 10.0
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.brassL5.tc  &
   adams_id = 3537  &
   location = 0.0, 0.0, -109.4762786185  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.brassL5.tc  &
   color = GREEN  &
   size_of_icons = 10.0
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.brassL5.ac  &
   adams_id = 3538  &
   location = 0.0, 0.0, -83.376278637  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.brassL5.ac  &
   color = GREEN  &
   size_of_icons = 10.0
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.brassL5.fc  &
   adams_id = 3539  &
   location = 0.0, 0.0, -135.5762786  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.brassL5.fc  &
   color = GREEN  &
   size_of_icons = 10.0
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.brassL5.channel_ref  &
   adams_id = 3540  &
   location = 4.9299994642E-08, 0.0, -7.9591619725  &
   orientation = 0.0d, 180.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.brassL5.channel_ref  &
   color = GREEN  &
   size_of_icons = 10.0
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.brassL5.crimp5b  &
   adams_id = 3541  &
   location = 0.0, 0.0, -172.75  &
   orientation = 0.0d, 180.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.brassL5.crimp5b  &
   color = GREEN  &
   size_of_icons = 10.0
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.brassL5.frust_ref  &
   adams_id = 3542  &
   location = 0.0, 0.0, -11.4954168526  &
   orientation = 0.0d, 180.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.brassL5.frust_ref  &
   color = GREEN
!
! ****** Floating Markers for current part ******
!
floating_marker create  &
   floating_marker_name = .FRS5_doe_8_LAUL.brassL5.FMARKER_1656  &
   adams_id = 3543
!
floating_marker create  &
   floating_marker_name = .FRS5_doe_8_LAUL.brassL5.FMARKER_225  &
   adams_id = 3544
!
floating_marker create  &
   floating_marker_name = .FRS5_doe_8_LAUL.brassL5.FMARKER_34  &
   adams_id = 3545
!
floating_marker create  &
   floating_marker_name = .FRS5_doe_8_LAUL.brassL5.FMARKER_81  &
   adams_id = 3546
!
floating_marker create  &
   floating_marker_name = .FRS5_doe_8_LAUL.brassL5.FMARKER_222  &
   adams_id = 3547
!
floating_marker create  &
   floating_marker_name = .FRS5_doe_8_LAUL.brassL5.FMARKER_2176  &
   adams_id = 3548
!
floating_marker create  &
   floating_marker_name = .FRS5_doe_8_LAUL.brassL5.FMARKER_3777  &
   adams_id = 3777
!
part create rigid_body mass_properties  &
   part_name = .FRS5_doe_8_LAUL.brassL5  &
   density = 2.23E-06
!
! ****** Graphics for current part ******
!
geometry create shape cylinder  &
   cylinder_name = .FRS5_doe_8_LAUL.brassL5.cyl  &
   adams_id = 3362  &
   center_marker = .FRS5_doe_8_LAUL.brassL5.crimp5b  &
   angle_extent = 360.0  &
   length = -14.0  &
   radius = 15.8  &
   side_count_for_body = 30  &
   segment_count_for_ends = 30
!
geometry create shape frustum  &
   frustum_name = .FRS5_doe_8_LAUL.brassL5.FRUSTUM  &
   adams_id = 3365  &
   center_marker = .FRS5_doe_8_LAUL.brassL5.frust_ref  &
   angle_extent = 360.0  &
   length = 134.0  &
   top_radius = 20.1  &
   bottom_radius = 21.75  &
   side_count_for_body = 30  &
   segment_count_for_ends = 30
!
part attributes  &
   part_name = .FRS5_doe_8_LAUL.brassL5  &
   color = COLOR_R068G137B035  &
   visibility = on  &
   size_of_icons = 10.0
!
!-------------------------------- projectileL1 --------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .FRS5_doe_8_LAUL.ground
!
part create rigid_body name_and_position  &
   part_name = .FRS5_doe_8_LAUL.projectileL1  &
   adams_id = 349  &
   location = 142.2451896071, 303.6967882549, 38.3126281164  &
   orientation = 180.0d, 90.0d, 324.0d
!
defaults coordinate_system  &
   default_coordinate_system = .FRS5_doe_8_LAUL.projectileL1
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.projectileL1.PSMAR  &
   adams_id = 3549  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.projectileL1.PSMAR  &
   color = GREEN  &
   visibility = off  &
   size_of_icons = 10.0
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.projectileL1.PSMAR1  &
   adams_id = 3550  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.projectileL1.PSMAR1  &
   color = GREEN  &
   visibility = off  &
   size_of_icons = 10.0
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.projectileL1.cm  &
   adams_id = 3551  &
   location = 0.0, 0.0, -215.841117526  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.projectileL1.cm  &
   color = GREEN  &
   size_of_icons = 10.0
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.projectileL1.crimp1a  &
   adams_id = 3552  &
   location = 0.0, 0.0, -172.75  &
   orientation = 0.0d, 180.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.projectileL1.crimp1a  &
   color = GREEN  &
   size_of_icons = 10.0
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.projectileL1.ptip  &
   adams_id = 3553  &
   location = 0.0, 0.0, -289.97  &
   orientation = 250.0d, 180.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.projectileL1.ptip  &
   color = GREEN
!
part create rigid_body mass_properties  &
   part_name = .FRS5_doe_8_LAUL.projectileL1  &
   density = 6.4E-06
!
! ****** Graphics for current part ******
!
geometry create shape cylinder  &
   cylinder_name = .FRS5_doe_8_LAUL.projectileL1.CYL  &
   adams_id = 3373  &
   center_marker = .FRS5_doe_8_LAUL.projectileL1.crimp1a  &
   angle_extent = 360.0  &
   length = 18.0  &
   radius = 15.71  &
   side_count_for_body = 30  &
   segment_count_for_ends = 30
!
part attributes  &
   part_name = .FRS5_doe_8_LAUL.projectileL1  &
   color = BLUE  &
   visibility = on  &
   size_of_icons = 10.0
!
!-------------------------------- projectileL2 --------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .FRS5_doe_8_LAUL.ground
!
part create rigid_body name_and_position  &
   part_name = .FRS5_doe_8_LAUL.projectileL2  &
   adams_id = 350  &
   location = 171.4839401201, 303.6967882549, 87.2194828073  &
   orientation = 180.0d, 90.0d, 290.0d
!
defaults coordinate_system  &
   default_coordinate_system = .FRS5_doe_8_LAUL.projectileL2
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.projectileL2.PSMAR  &
   adams_id = 3554  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.projectileL2.PSMAR  &
   color = GREEN  &
   visibility = off  &
   size_of_icons = 10.0
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.projectileL2.PSMAR1  &
   adams_id = 3555  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.projectileL2.PSMAR1  &
   color = GREEN  &
   visibility = off  &
   size_of_icons = 10.0
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.projectileL2.cm  &
   adams_id = 3556  &
   location = 0.0, 0.0, -215.841117526  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.projectileL2.cm  &
   color = GREEN  &
   size_of_icons = 10.0
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.projectileL2.crimp2a  &
   adams_id = 3557  &
   location = 0.0, 0.0, -172.75  &
   orientation = 0.0d, 180.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.projectileL2.crimp2a  &
   color = GREEN  &
   size_of_icons = 10.0
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.projectileL2.ptip  &
   adams_id = 3558  &
   location = 0.0, 0.0, -289.97  &
   orientation = 250.0d, 180.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.projectileL2.ptip  &
   color = GREEN
!
part create rigid_body mass_properties  &
   part_name = .FRS5_doe_8_LAUL.projectileL2  &
   density = 6.4E-06
!
! ****** Graphics for current part ******
!
geometry create shape cylinder  &
   cylinder_name = .FRS5_doe_8_LAUL.projectileL2.CYL  &
   adams_id = 3381  &
   center_marker = .FRS5_doe_8_LAUL.projectileL2.crimp2a  &
   angle_extent = 360.0  &
   length = 18.0  &
   radius = 15.71  &
   side_count_for_body = 30  &
   segment_count_for_ends = 30
!
part attributes  &
   part_name = .FRS5_doe_8_LAUL.projectileL2  &
   color = BLUE  &
   visibility = on  &
   size_of_icons = 10.0
!
!-------------------------------- projectileL3 --------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .FRS5_doe_8_LAUL.ground
!
part create rigid_body name_and_position  &
   part_name = .FRS5_doe_8_LAUL.projectileL3  &
   adams_id = 351  &
   location = 189.552864292, 303.6967882549, 136.8634439634  &
   orientation = 180.0d, 90.0d, 290.0d
!
defaults coordinate_system  &
   default_coordinate_system = .FRS5_doe_8_LAUL.projectileL3
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.projectileL3.PSMAR  &
   adams_id = 3559  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.projectileL3.PSMAR  &
   color = GREEN  &
   visibility = off  &
   size_of_icons = 10.0
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.projectileL3.PSMAR1  &
   adams_id = 3560  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.projectileL3.PSMAR1  &
   color = GREEN  &
   visibility = off  &
   size_of_icons = 10.0
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.projectileL3.cm  &
   adams_id = 3561  &
   location = 0.0, 0.0, -215.841117526  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.projectileL3.cm  &
   color = GREEN  &
   size_of_icons = 10.0
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.projectileL3.crimp3a  &
   adams_id = 3562  &
   location = 0.0, 0.0, -172.75  &
   orientation = 0.0d, 180.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.projectileL3.crimp3a  &
   color = GREEN  &
   size_of_icons = 10.0
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.projectileL3.ptip  &
   adams_id = 3563  &
   location = 0.0, 0.0, -289.97  &
   orientation = 250.0d, 180.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.projectileL3.ptip  &
   color = GREEN
!
part create rigid_body mass_properties  &
   part_name = .FRS5_doe_8_LAUL.projectileL3  &
   density = 6.4E-06
!
! ****** Graphics for current part ******
!
geometry create shape cylinder  &
   cylinder_name = .FRS5_doe_8_LAUL.projectileL3.CYL  &
   adams_id = 3389  &
   center_marker = .FRS5_doe_8_LAUL.projectileL3.crimp3a  &
   angle_extent = 360.0  &
   length = 18.0  &
   radius = 15.71  &
   side_count_for_body = 30  &
   segment_count_for_ends = 30
!
part attributes  &
   part_name = .FRS5_doe_8_LAUL.projectileL3  &
   color = BLUE  &
   visibility = on  &
   size_of_icons = 10.0
!
!-------------------------------- projectileL4 --------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .FRS5_doe_8_LAUL.ground
!
part create rigid_body name_and_position  &
   part_name = .FRS5_doe_8_LAUL.projectileL4  &
   adams_id = 352  &
   location = 207.6217884639, 303.6967882549, 186.5074051196  &
   orientation = 180.0d, 90.0d, 290.0d
!
defaults coordinate_system  &
   default_coordinate_system = .FRS5_doe_8_LAUL.projectileL4
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.projectileL4.PSMAR  &
   adams_id = 3564  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.projectileL4.PSMAR  &
   color = GREEN  &
   visibility = off  &
   size_of_icons = 10.0
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.projectileL4.PSMAR1  &
   adams_id = 3565  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.projectileL4.PSMAR1  &
   color = GREEN  &
   visibility = off  &
   size_of_icons = 10.0
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.projectileL4.cm  &
   adams_id = 3566  &
   location = 0.0, 0.0, -215.841117526  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.projectileL4.cm  &
   color = GREEN  &
   size_of_icons = 10.0
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.projectileL4.crimp4a  &
   adams_id = 3567  &
   location = 0.0, 0.0, -172.75  &
   orientation = 0.0d, 180.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.projectileL4.crimp4a  &
   color = GREEN  &
   size_of_icons = 10.0
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.projectileL4.MARKER_1665  &
   adams_id = 3568  &
   location = 0.0, 0.0, -215.8991802535  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.projectileL4.MARKER_1665  &
   color = GREEN  &
   size_of_icons = 10.0
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.projectileL4.ptip  &
   adams_id = 3569  &
   location = 0.0, 0.0, -289.97  &
   orientation = 250.0d, 180.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.projectileL4.ptip  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.projectileL4.MARKER_1672  &
   adams_id = 3570  &
   location = 0.0, 0.0, -215.8991802535  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.projectileL4.MARKER_1672  &
   color = GREEN  &
   size_of_icons = 10.0
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.projectileL4.MARKER_1675  &
   adams_id = 3571  &
   location = 0.0, 0.0, -215.8991802535  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.projectileL4.MARKER_1675  &
   color = GREEN  &
   size_of_icons = 10.0
!
part create rigid_body mass_properties  &
   part_name = .FRS5_doe_8_LAUL.projectileL4  &
   density = 6.4E-06
!
! ****** Graphics for current part ******
!
geometry create shape cylinder  &
   cylinder_name = .FRS5_doe_8_LAUL.projectileL4.CYL  &
   adams_id = 3397  &
   center_marker = .FRS5_doe_8_LAUL.projectileL4.crimp4a  &
   angle_extent = 360.0  &
   length = 18.0  &
   radius = 15.71  &
   side_count_for_body = 30  &
   segment_count_for_ends = 30
!
part attributes  &
   part_name = .FRS5_doe_8_LAUL.projectileL4  &
   color = BLUE  &
   visibility = on  &
   size_of_icons = 10.0
!
!-------------------------------- projectileL5 --------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .FRS5_doe_8_LAUL.ground
!
part create rigid_body name_and_position  &
   part_name = .FRS5_doe_8_LAUL.projectileL5  &
   adams_id = 353  &
   location = 225.6907126358, 303.6967882549, 236.1513662757  &
   orientation = 180.0d, 90.0d, 290.0d
!
defaults coordinate_system  &
   default_coordinate_system = .FRS5_doe_8_LAUL.projectileL5
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.projectileL5.PSMAR  &
   adams_id = 3572  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.projectileL5.PSMAR  &
   color = GREEN  &
   visibility = off  &
   size_of_icons = 10.0
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.projectileL5.PSMAR1  &
   adams_id = 3573  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.projectileL5.PSMAR1  &
   color = GREEN  &
   visibility = off  &
   size_of_icons = 10.0
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.projectileL5.cm  &
   adams_id = 3574  &
   location = 0.0, 0.0, -215.841117526  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.projectileL5.cm  &
   color = GREEN  &
   size_of_icons = 10.0
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.projectileL5.crimp5a  &
   adams_id = 3575  &
   location = 0.0, 0.0, -172.75  &
   orientation = 0.0d, 180.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.projectileL5.crimp5a  &
   color = GREEN  &
   size_of_icons = 10.0
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.projectileL5.MARKER_1665  &
   adams_id = 3576  &
   location = 0.0, 0.0, -215.8991802535  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.projectileL5.MARKER_1665  &
   color = GREEN  &
   size_of_icons = 10.0
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.projectileL5.ptip  &
   adams_id = 3577  &
   location = 0.0, 0.0, -289.97  &
   orientation = 250.0d, 180.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.projectileL5.ptip  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.projectileL5.MARKER_1672  &
   adams_id = 3578  &
   location = 0.0, 0.0, -215.8991802535  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.projectileL5.MARKER_1672  &
   color = GREEN  &
   size_of_icons = 10.0
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.projectileL5.MARKER_1675  &
   adams_id = 3579  &
   location = 0.0, 0.0, -215.8991802535  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.projectileL5.MARKER_1675  &
   color = GREEN  &
   size_of_icons = 10.0
!
part create rigid_body mass_properties  &
   part_name = .FRS5_doe_8_LAUL.projectileL5  &
   density = 6.4E-06
!
! ****** Graphics for current part ******
!
geometry create shape cylinder  &
   cylinder_name = .FRS5_doe_8_LAUL.projectileL5.CYL  &
   adams_id = 3405  &
   center_marker = .FRS5_doe_8_LAUL.projectileL5.crimp5a  &
   angle_extent = 360.0  &
   length = 18.0  &
   radius = 15.71  &
   side_count_for_body = 30  &
   segment_count_for_ends = 30
!
part attributes  &
   part_name = .FRS5_doe_8_LAUL.projectileL5  &
   color = BLUE  &
   visibility = on  &
   size_of_icons = 10.0
!
!----------------------------------- linkL2 -----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .FRS5_doe_8_LAUL.ground
!
part create rigid_body name_and_position  &
   part_name = .FRS5_doe_8_LAUL.linkL2  &
   adams_id = 354  &
   location = 171.4839401201, 303.6967882549, 87.2194828073  &
   orientation = 180.0d, 90.0d, 290.0d
!
defaults coordinate_system  &
   default_coordinate_system = .FRS5_doe_8_LAUL.linkL2
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkL2.MARKER_1595  &
   adams_id = 3580  &
   location = -52.83, -23.6673, -156.5767882549  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkL2.MARKER_1595  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkL2.MARKER_1609  &
   adams_id = 3581  &
   location = 3.2398999833E-03, -23.4740797524, -60.8267882549  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkL2.MARKER_1609  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkL2.PSMAR  &
   adams_id = 3582  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkL2.PSMAR  &
   color = GREEN  &
   visibility = off  &
   size_of_icons = 10.0
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkL2.cm  &
   adams_id = 3583  &
   location = 15.8119173942, -11.3515105879, -102.0550558736  &
   orientation = 105.6755320308d, 157.5389020966d, 13.5277441958d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkL2.cm  &
   color = GREEN  &
   size_of_icons = 10.0
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkL2.aft_center  &
   adams_id = 3584  &
   location = 3.2399E-03, 3.23343318E-03, -83.376278637  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkL2.aft_center  &
   color = GREEN  &
   size_of_icons = 10.0
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkL2.fwd_center  &
   adams_id = 3585  &
   location = 0.0, 0.0, -135.5762786  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkL2.fwd_center  &
   color = GREEN  &
   size_of_icons = 10.0
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkL2.tongue  &
   adams_id = 3586  &
   location = 4.9299994642E-08, -16.0, -7.9591619725  &
   orientation = 0.0d, 180.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkL2.tongue  &
   color = GREEN  &
   size_of_icons = 10.0
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkL2.sp2  &
   adams_id = 3587  &
   location = 4.2110412379E-11, -23.6673, -156.5767882549  &
   orientation = 0.0d, 180.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkL2.sp2  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkL2.trailing_center  &
   adams_id = 3588  &
   location = 52.83, 0.0, -109.4762786185  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkL2.trailing_center  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkL2.LM1  &
   adams_id = 3589  &
   location = -1.6694978733E-11, -23.6673, -156.5767882549  &
   orientation = 0.0d, 180.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkL2.LM1  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkL2.LM2  &
   adams_id = 3590  &
   location = 3.2398999833E-03, -23.4740797524, -60.8267882549  &
   orientation = 0.0d, 180.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkL2.LM2  &
   color = GREEN
!
! ****** Floating Markers for current part ******
!
floating_marker create  &
   floating_marker_name = .FRS5_doe_8_LAUL.linkL2.FMARKER_2166  &
   adams_id = 3591
!
floating_marker create  &
   floating_marker_name = .FRS5_doe_8_LAUL.linkL2.FMARKER_2171  &
   adams_id = 3592
!
floating_marker create  &
   floating_marker_name = .FRS5_doe_8_LAUL.linkL2.FMARKER_227  &
   adams_id = 3593
!
floating_marker create  &
   floating_marker_name = .FRS5_doe_8_LAUL.linkL2.FMARKER_228  &
   adams_id = 3594
!
floating_marker create  &
   floating_marker_name = .FRS5_doe_8_LAUL.linkL2.FMARKER_35  &
   adams_id = 3595
!
floating_marker create  &
   floating_marker_name = .FRS5_doe_8_LAUL.linkL2.FMARKER_42  &
   adams_id = 3596
!
floating_marker create  &
   floating_marker_name = .FRS5_doe_8_LAUL.linkL2.FMARKER_235  &
   adams_id = 3597
!
floating_marker create  &
   floating_marker_name = .FRS5_doe_8_LAUL.linkL2.FMARKER_3778  &
   adams_id = 3778
!
floating_marker create  &
   floating_marker_name = .FRS5_doe_8_LAUL.linkL2.FMARKER_3782  &
   adams_id = 3782
!
part create rigid_body mass_properties  &
   part_name = .FRS5_doe_8_LAUL.linkL2  &
   density = 7.861E-06
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .FRS5_doe_8_LAUL.linkL2  &
   color = COLOR_R114G012B132  &
   visibility = on  &
   size_of_icons = 10.0
!
!------------------------------ linkL2line1dummy ------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .FRS5_doe_8_LAUL.ground
!
part create rigid_body name_and_position  &
   part_name = .FRS5_doe_8_LAUL.linkL2line1dummy  &
   adams_id = 355  &
   location = 193.723927284, 147.12, 79.1247894692  &
   orientation = 0.0d, 90.0d, 250.0d
!
defaults coordinate_system  &
   default_coordinate_system = .FRS5_doe_8_LAUL.linkL2line1dummy
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkL2line1dummy.MARKER  &
   adams_id = 3598  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkL2line1dummy.MARKER  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkL2line1dummy.cm  &
   adams_id = 3599  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkL2line1dummy.cm  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkL2line1dummy.MARKER_2  &
   adams_id = 3600  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkL2line1dummy.MARKER_2  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkL2line1dummy.MARKER_3  &
   adams_id = 3601  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkL2line1dummy.MARKER_3  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkL2line1dummy.MARKER_4  &
   adams_id = 3602  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkL2line1dummy.MARKER_4  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkL2line1dummy.MARKER_5  &
   adams_id = 3603  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkL2line1dummy.MARKER_5  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkL2line1dummy.MARKER_6  &
   adams_id = 3604  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkL2line1dummy.MARKER_6  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkL2line1dummy.MARKER_7  &
   adams_id = 3605  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkL2line1dummy.MARKER_7  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkL2line1dummy.MARKER_8  &
   adams_id = 3606  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkL2line1dummy.MARKER_8  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkL2line1dummy.MARKER_9  &
   adams_id = 3607  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkL2line1dummy.MARKER_9  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkL2line1dummy.MARKER_10  &
   adams_id = 3608  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkL2line1dummy.MARKER_10  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkL2line1dummy.MARKER_11  &
   adams_id = 3609  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkL2line1dummy.MARKER_11  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkL2line1dummy.MARKER_12  &
   adams_id = 3610  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkL2line1dummy.MARKER_12  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkL2line1dummy.MARKER_13  &
   adams_id = 4040  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkL2line1dummy.MARKER_13  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkL2line1dummy.MARKER_14  &
   adams_id = 4201  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkL2line1dummy.MARKER_14  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkL2line1dummy.MARKER_15  &
   adams_id = 4336  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkL2line1dummy.MARKER_15  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkL2line1dummy.MARKER_16  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkL2line1dummy.MARKER_16  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkL2line1dummy.MARKER_17  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkL2line1dummy.MARKER_18  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
part create rigid_body mass_properties  &
   part_name = .FRS5_doe_8_LAUL.linkL2line1dummy  &
   material_type = .FRS5_doe_8_LAUL.wood
!
! ****** Graphics for current part ******
!
geometry create shape ellipsoid  &
   ellipsoid_name = .FRS5_doe_8_LAUL.linkL2line1dummy.sph  &
   adams_id = 3416  &
   center_marker = .FRS5_doe_8_LAUL.linkL2line1dummy.cm  &
   x_scale_factor = 1.0  &
   y_scale_factor = 1.0  &
   z_scale_factor = 1.0
!
geometry attributes  &
   geometry_name = .FRS5_doe_8_LAUL.linkL2line1dummy.sph  &
   color = RED
!
part attributes  &
   part_name = .FRS5_doe_8_LAUL.linkL2line1dummy  &
   visibility = on
!
!------------------------------ linkL2line2dummy ------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .FRS5_doe_8_LAUL.ground
!
part create rigid_body name_and_position  &
   part_name = .FRS5_doe_8_LAUL.linkL2line2dummy  &
   adams_id = 356  &
   location = 193.5412515321, 242.87, 79.1878301758  &
   orientation = 0.0d, 90.0d, 250.0d
!
defaults coordinate_system  &
   default_coordinate_system = .FRS5_doe_8_LAUL.linkL2line2dummy
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkL2line2dummy.MARKER  &
   adams_id = 3611  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkL2line2dummy.MARKER  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkL2line2dummy.cm  &
   adams_id = 3612  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkL2line2dummy.cm  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkL2line2dummy.MARKER_2  &
   adams_id = 3613  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkL2line2dummy.MARKER_2  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkL2line2dummy.MARKER_3  &
   adams_id = 3614  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkL2line2dummy.MARKER_3  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkL2line2dummy.MARKER_4  &
   adams_id = 3615  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkL2line2dummy.MARKER_4  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkL2line2dummy.MARKER_5  &
   adams_id = 3616  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkL2line2dummy.MARKER_5  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkL2line2dummy.MARKER_6  &
   adams_id = 3617  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkL2line2dummy.MARKER_6  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkL2line2dummy.MARKER_7  &
   adams_id = 3618  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkL2line2dummy.MARKER_7  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkL2line2dummy.MARKER_8  &
   adams_id = 3619  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkL2line2dummy.MARKER_8  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkL2line2dummy.MARKER_9  &
   adams_id = 3620  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkL2line2dummy.MARKER_9  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkL2line2dummy.MARKER_10  &
   adams_id = 3621  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkL2line2dummy.MARKER_10  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkL2line2dummy.MARKER_11  &
   adams_id = 3622  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkL2line2dummy.MARKER_11  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkL2line2dummy.MARKER_12  &
   adams_id = 3623  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkL2line2dummy.MARKER_12  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkL2line2dummy.MARKER_13  &
   adams_id = 4041  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkL2line2dummy.MARKER_13  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkL2line2dummy.MARKER_14  &
   adams_id = 4202  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkL2line2dummy.MARKER_14  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkL2line2dummy.MARKER_15  &
   adams_id = 4337  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkL2line2dummy.MARKER_15  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkL2line2dummy.MARKER_16  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkL2line2dummy.MARKER_16  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkL2line2dummy.MARKER_17  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkL2line2dummy.MARKER_18  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
part create rigid_body mass_properties  &
   part_name = .FRS5_doe_8_LAUL.linkL2line2dummy  &
   material_type = .FRS5_doe_8_LAUL.wood
!
! ****** Graphics for current part ******
!
geometry create shape ellipsoid  &
   ellipsoid_name = .FRS5_doe_8_LAUL.linkL2line2dummy.sph  &
   adams_id = 3417  &
   center_marker = .FRS5_doe_8_LAUL.linkL2line2dummy.cm  &
   x_scale_factor = 1.0  &
   y_scale_factor = 1.0  &
   z_scale_factor = 1.0
!
geometry attributes  &
   geometry_name = .FRS5_doe_8_LAUL.linkL2line2dummy.sph  &
   color = RED
!
part attributes  &
   part_name = .FRS5_doe_8_LAUL.linkL2line2dummy  &
   visibility = on
!
!----------------------------------- linkL3 -----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .FRS5_doe_8_LAUL.ground
!
part create rigid_body name_and_position  &
   part_name = .FRS5_doe_8_LAUL.linkL3  &
   adams_id = 357  &
   location = 189.552864292, 303.6967882549, 136.8634439634  &
   orientation = 180.0d, 90.0d, 290.0d
!
defaults coordinate_system  &
   default_coordinate_system = .FRS5_doe_8_LAUL.linkL3
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkL3.MARKER_1597  &
   adams_id = 3624  &
   location = -5.4067861299E-11, -23.6673, -156.5767882549  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkL3.MARKER_1597  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkL3.MARKER_1607  &
   adams_id = 3625  &
   location = 3.2398999667E-03, -23.4740797524, -60.8267882549  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkL3.MARKER_1607  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkL3.PSMAR  &
   adams_id = 3626  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkL3.PSMAR  &
   color = GREEN  &
   visibility = off  &
   size_of_icons = 10.0
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkL3.cm  &
   adams_id = 3627  &
   location = 15.8119173942, -11.3515105879, -102.0550558736  &
   orientation = 105.6755320308d, 157.5389020966d, 13.5277441958d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkL3.cm  &
   color = GREEN  &
   size_of_icons = 10.0
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkL3.aft_center  &
   adams_id = 3628  &
   location = 3.2399E-03, 3.23343318E-03, -83.376278637  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkL3.aft_center  &
   color = GREEN  &
   size_of_icons = 10.0
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkL3.fwd_center  &
   adams_id = 3629  &
   location = 0.0, 0.0, -135.5762786  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkL3.fwd_center  &
   color = GREEN  &
   size_of_icons = 10.0
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkL3.tongue  &
   adams_id = 3630  &
   location = 4.9299994642E-08, -16.0, -7.9591619725  &
   orientation = 0.0d, 180.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkL3.tongue  &
   color = GREEN  &
   size_of_icons = 10.0
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkL3.sp2  &
   adams_id = 3631  &
   location = 4.2110412379E-11, -23.6673, -156.5767882549  &
   orientation = 0.0d, 180.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkL3.sp2  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkL3.trailing_center  &
   adams_id = 3632  &
   location = 52.83, 0.0, -109.4762786185  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkL3.trailing_center  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkL3.LM1  &
   adams_id = 3633  &
   location = -3.336220189E-11, -23.6673, -156.5767882549  &
   orientation = 0.0d, 180.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkL3.LM1  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkL3.LM2  &
   adams_id = 3634  &
   location = 3.2398999667E-03, -23.4740797524, -60.8267882549  &
   orientation = 0.0d, 180.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkL3.LM2  &
   color = GREEN
!
! ****** Floating Markers for current part ******
!
floating_marker create  &
   floating_marker_name = .FRS5_doe_8_LAUL.linkL3.FMARKER_2167  &
   adams_id = 3635
!
floating_marker create  &
   floating_marker_name = .FRS5_doe_8_LAUL.linkL3.FMARKER_2169  &
   adams_id = 3636
!
floating_marker create  &
   floating_marker_name = .FRS5_doe_8_LAUL.linkL3.FMARKER_2172  &
   adams_id = 3637
!
floating_marker create  &
   floating_marker_name = .FRS5_doe_8_LAUL.linkL3.FMARKER_229  &
   adams_id = 3638
!
floating_marker create  &
   floating_marker_name = .FRS5_doe_8_LAUL.linkL3.FMARKER_230  &
   adams_id = 3639
!
floating_marker create  &
   floating_marker_name = .FRS5_doe_8_LAUL.linkL3.FMARKER_35  &
   adams_id = 3640
!
floating_marker create  &
   floating_marker_name = .FRS5_doe_8_LAUL.linkL3.FMARKER_42  &
   adams_id = 3641
!
floating_marker create  &
   floating_marker_name = .FRS5_doe_8_LAUL.linkL3.FMARKER_236  &
   adams_id = 3642
!
floating_marker create  &
   floating_marker_name = .FRS5_doe_8_LAUL.linkL3.FMARKER_3779  &
   adams_id = 3779
!
floating_marker create  &
   floating_marker_name = .FRS5_doe_8_LAUL.linkL3.FMARKER_3783  &
   adams_id = 3783
!
floating_marker create  &
   floating_marker_name = .FRS5_doe_8_LAUL.linkL3.FMARKER_3786  &
   adams_id = 3786
!
part create rigid_body mass_properties  &
   part_name = .FRS5_doe_8_LAUL.linkL3  &
   density = 7.861E-06
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .FRS5_doe_8_LAUL.linkL3  &
   color = COLOR_R114G012B132  &
   visibility = on  &
   size_of_icons = 10.0
!
!------------------------------ linkL3line1dummy ------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .FRS5_doe_8_LAUL.ground
!
part create rigid_body name_and_position  &
   part_name = .FRS5_doe_8_LAUL.linkL3line1dummy  &
   adams_id = 358  &
   location = 211.7928514559, 147.12, 128.7687506253  &
   orientation = 0.0d, 90.0d, 250.0d
!
defaults coordinate_system  &
   default_coordinate_system = .FRS5_doe_8_LAUL.linkL3line1dummy
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkL3line1dummy.MARKER  &
   adams_id = 3643  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkL3line1dummy.MARKER  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkL3line1dummy.cm  &
   adams_id = 3644  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkL3line1dummy.cm  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkL3line1dummy.MARKER_2  &
   adams_id = 3645  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkL3line1dummy.MARKER_2  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkL3line1dummy.MARKER_3  &
   adams_id = 3646  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkL3line1dummy.MARKER_3  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkL3line1dummy.MARKER_4  &
   adams_id = 3647  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkL3line1dummy.MARKER_4  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkL3line1dummy.MARKER_5  &
   adams_id = 3648  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkL3line1dummy.MARKER_5  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkL3line1dummy.MARKER_6  &
   adams_id = 3649  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkL3line1dummy.MARKER_6  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkL3line1dummy.MARKER_7  &
   adams_id = 3650  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkL3line1dummy.MARKER_7  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkL3line1dummy.MARKER_8  &
   adams_id = 3651  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkL3line1dummy.MARKER_8  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkL3line1dummy.MARKER_9  &
   adams_id = 3652  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkL3line1dummy.MARKER_9  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkL3line1dummy.MARKER_10  &
   adams_id = 3653  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkL3line1dummy.MARKER_10  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkL3line1dummy.MARKER_11  &
   adams_id = 3654  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkL3line1dummy.MARKER_11  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkL3line1dummy.MARKER_12  &
   adams_id = 3655  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkL3line1dummy.MARKER_12  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkL3line1dummy.MARKER_13  &
   adams_id = 4042  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkL3line1dummy.MARKER_13  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkL3line1dummy.MARKER_14  &
   adams_id = 4203  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkL3line1dummy.MARKER_14  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkL3line1dummy.MARKER_15  &
   adams_id = 4338  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkL3line1dummy.MARKER_15  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkL3line1dummy.MARKER_16  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkL3line1dummy.MARKER_16  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkL3line1dummy.MARKER_17  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkL3line1dummy.MARKER_18  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
part create rigid_body mass_properties  &
   part_name = .FRS5_doe_8_LAUL.linkL3line1dummy  &
   material_type = .FRS5_doe_8_LAUL.wood
!
! ****** Graphics for current part ******
!
geometry create shape ellipsoid  &
   ellipsoid_name = .FRS5_doe_8_LAUL.linkL3line1dummy.sph  &
   adams_id = 3423  &
   center_marker = .FRS5_doe_8_LAUL.linkL3line1dummy.cm  &
   x_scale_factor = 1.0  &
   y_scale_factor = 1.0  &
   z_scale_factor = 1.0
!
geometry attributes  &
   geometry_name = .FRS5_doe_8_LAUL.linkL3line1dummy.sph  &
   color = RED
!
part attributes  &
   part_name = .FRS5_doe_8_LAUL.linkL3line1dummy  &
   visibility = on
!
!------------------------------ linkL3line2dummy ------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .FRS5_doe_8_LAUL.ground
!
part create rigid_body name_and_position  &
   part_name = .FRS5_doe_8_LAUL.linkL3line2dummy  &
   adams_id = 359  &
   location = 211.610175704, 242.87, 128.831791332  &
   orientation = 0.0d, 90.0d, 250.0d
!
defaults coordinate_system  &
   default_coordinate_system = .FRS5_doe_8_LAUL.linkL3line2dummy
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkL3line2dummy.MARKER  &
   adams_id = 3656  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkL3line2dummy.MARKER  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkL3line2dummy.cm  &
   adams_id = 3657  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkL3line2dummy.cm  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkL3line2dummy.MARKER_2  &
   adams_id = 3658  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkL3line2dummy.MARKER_2  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkL3line2dummy.MARKER_3  &
   adams_id = 3659  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkL3line2dummy.MARKER_3  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkL3line2dummy.MARKER_4  &
   adams_id = 3660  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkL3line2dummy.MARKER_4  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkL3line2dummy.MARKER_5  &
   adams_id = 3661  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkL3line2dummy.MARKER_5  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkL3line2dummy.MARKER_6  &
   adams_id = 3662  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkL3line2dummy.MARKER_6  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkL3line2dummy.MARKER_7  &
   adams_id = 3663  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkL3line2dummy.MARKER_7  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkL3line2dummy.MARKER_8  &
   adams_id = 3664  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkL3line2dummy.MARKER_8  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkL3line2dummy.MARKER_9  &
   adams_id = 3665  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkL3line2dummy.MARKER_9  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkL3line2dummy.MARKER_10  &
   adams_id = 3666  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkL3line2dummy.MARKER_10  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkL3line2dummy.MARKER_11  &
   adams_id = 3667  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkL3line2dummy.MARKER_11  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkL3line2dummy.MARKER_12  &
   adams_id = 3668  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkL3line2dummy.MARKER_12  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkL3line2dummy.MARKER_13  &
   adams_id = 4043  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkL3line2dummy.MARKER_13  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkL3line2dummy.MARKER_14  &
   adams_id = 4204  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkL3line2dummy.MARKER_14  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkL3line2dummy.MARKER_15  &
   adams_id = 4339  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkL3line2dummy.MARKER_15  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkL3line2dummy.MARKER_16  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkL3line2dummy.MARKER_16  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkL3line2dummy.MARKER_17  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkL3line2dummy.MARKER_18  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
part create rigid_body mass_properties  &
   part_name = .FRS5_doe_8_LAUL.linkL3line2dummy  &
   material_type = .FRS5_doe_8_LAUL.wood
!
! ****** Graphics for current part ******
!
geometry create shape ellipsoid  &
   ellipsoid_name = .FRS5_doe_8_LAUL.linkL3line2dummy.sph  &
   adams_id = 3424  &
   center_marker = .FRS5_doe_8_LAUL.linkL3line2dummy.cm  &
   x_scale_factor = 1.0  &
   y_scale_factor = 1.0  &
   z_scale_factor = 1.0
!
geometry attributes  &
   geometry_name = .FRS5_doe_8_LAUL.linkL3line2dummy.sph  &
   color = RED
!
part attributes  &
   part_name = .FRS5_doe_8_LAUL.linkL3line2dummy  &
   visibility = on
!
!----------------------------------- linkL4 -----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .FRS5_doe_8_LAUL.ground
!
part create rigid_body name_and_position  &
   part_name = .FRS5_doe_8_LAUL.linkL4  &
   adams_id = 360  &
   location = 207.6217884639, 303.6967882549, 186.5074051196  &
   orientation = 180.0d, 90.0d, 290.0d
!
defaults coordinate_system  &
   default_coordinate_system = .FRS5_doe_8_LAUL.linkL4
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkL4.MARKER_1599  &
   adams_id = 3669  &
   location = 4.3964831775E-11, -23.6673, -156.5767882549  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkL4.MARKER_1599  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkL4.MARKER_1605  &
   adams_id = 3670  &
   location = 3.239900044E-03, -23.4740797524, -60.8267882549  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkL4.MARKER_1605  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkL4.PSMAR  &
   adams_id = 3671  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkL4.PSMAR  &
   color = GREEN  &
   visibility = off  &
   size_of_icons = 10.0
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkL4.cm  &
   adams_id = 3672  &
   location = 15.8119173942, -11.3515105879, -102.0550558736  &
   orientation = 105.6755320308d, 157.5389020966d, 13.5277441958d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkL4.cm  &
   color = GREEN  &
   size_of_icons = 10.0
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkL4.aft_center  &
   adams_id = 3673  &
   location = 3.2399E-03, 3.23343318E-03, -83.376278637  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkL4.aft_center  &
   color = GREEN  &
   size_of_icons = 10.0
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkL4.fwd_center  &
   adams_id = 3674  &
   location = 0.0, 0.0, -135.5762786  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkL4.fwd_center  &
   color = GREEN  &
   size_of_icons = 10.0
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkL4.tongue  &
   adams_id = 3675  &
   location = 4.9299994642E-08, -16.0, -7.9591619725  &
   orientation = 0.0d, 180.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkL4.tongue  &
   color = GREEN  &
   size_of_icons = 10.0
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkL4.sp2  &
   adams_id = 3676  &
   location = 4.2110412379E-11, -23.6673, -156.5767882549  &
   orientation = 0.0d, 180.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkL4.sp2  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkL4.trailing_center  &
   adams_id = 3677  &
   location = 52.83, 0.0, -109.4762786185  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkL4.trailing_center  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkL4.LM1  &
   adams_id = 3678  &
   location = 4.3950953987E-11, -23.6673, -156.5767882549  &
   orientation = 0.0d, 180.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkL4.LM1  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkL4.LM2  &
   adams_id = 3679  &
   location = 3.239900044E-03, -23.4740797524, -60.8267882549  &
   orientation = 0.0d, 180.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkL4.LM2  &
   color = GREEN
!
! ****** Floating Markers for current part ******
!
floating_marker create  &
   floating_marker_name = .FRS5_doe_8_LAUL.linkL4.FMARKER_2168  &
   adams_id = 3680
!
floating_marker create  &
   floating_marker_name = .FRS5_doe_8_LAUL.linkL4.FMARKER_2170  &
   adams_id = 3681
!
floating_marker create  &
   floating_marker_name = .FRS5_doe_8_LAUL.linkL4.FMARKER_2173  &
   adams_id = 3682
!
floating_marker create  &
   floating_marker_name = .FRS5_doe_8_LAUL.linkL4.FMARKER_231  &
   adams_id = 3683
!
floating_marker create  &
   floating_marker_name = .FRS5_doe_8_LAUL.linkL4.FMARKER_232  &
   adams_id = 3684
!
floating_marker create  &
   floating_marker_name = .FRS5_doe_8_LAUL.linkL4.FMARKER_35  &
   adams_id = 3685
!
floating_marker create  &
   floating_marker_name = .FRS5_doe_8_LAUL.linkL4.FMARKER_42  &
   adams_id = 3686
!
floating_marker create  &
   floating_marker_name = .FRS5_doe_8_LAUL.linkL4.FMARKER_237  &
   adams_id = 3687
!
floating_marker create  &
   floating_marker_name = .FRS5_doe_8_LAUL.linkL4.FMARKER_3780  &
   adams_id = 3780
!
floating_marker create  &
   floating_marker_name = .FRS5_doe_8_LAUL.linkL4.FMARKER_3784  &
   adams_id = 3784
!
floating_marker create  &
   floating_marker_name = .FRS5_doe_8_LAUL.linkL4.FMARKER_3787  &
   adams_id = 3787
!
part create rigid_body mass_properties  &
   part_name = .FRS5_doe_8_LAUL.linkL4  &
   density = 7.861E-06
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .FRS5_doe_8_LAUL.linkL4  &
   color = COLOR_R114G012B132  &
   visibility = on  &
   size_of_icons = 10.0
!
!------------------------------ linkL4line1dummy ------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .FRS5_doe_8_LAUL.ground
!
part create rigid_body name_and_position  &
   part_name = .FRS5_doe_8_LAUL.linkL4line1dummy  &
   adams_id = 361  &
   location = 229.8617756278, 147.12, 178.4127117814  &
   orientation = 0.0d, 90.0d, 250.0d
!
defaults coordinate_system  &
   default_coordinate_system = .FRS5_doe_8_LAUL.linkL4line1dummy
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkL4line1dummy.MARKER  &
   adams_id = 3688  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkL4line1dummy.MARKER  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkL4line1dummy.cm  &
   adams_id = 3689  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkL4line1dummy.cm  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkL4line1dummy.MARKER_2  &
   adams_id = 3690  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkL4line1dummy.MARKER_2  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkL4line1dummy.MARKER_3  &
   adams_id = 3691  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkL4line1dummy.MARKER_3  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkL4line1dummy.MARKER_4  &
   adams_id = 3692  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkL4line1dummy.MARKER_4  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkL4line1dummy.MARKER_5  &
   adams_id = 3693  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkL4line1dummy.MARKER_5  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkL4line1dummy.MARKER_6  &
   adams_id = 3694  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkL4line1dummy.MARKER_6  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkL4line1dummy.MARKER_7  &
   adams_id = 3695  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkL4line1dummy.MARKER_7  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkL4line1dummy.MARKER_8  &
   adams_id = 3696  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkL4line1dummy.MARKER_8  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkL4line1dummy.MARKER_9  &
   adams_id = 3697  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkL4line1dummy.MARKER_9  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkL4line1dummy.MARKER_10  &
   adams_id = 3698  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkL4line1dummy.MARKER_10  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkL4line1dummy.MARKER_11  &
   adams_id = 3699  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkL4line1dummy.MARKER_11  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkL4line1dummy.MARKER_12  &
   adams_id = 3700  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkL4line1dummy.MARKER_12  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkL4line1dummy.MARKER_13  &
   adams_id = 4044  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkL4line1dummy.MARKER_13  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkL4line1dummy.MARKER_14  &
   adams_id = 4205  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkL4line1dummy.MARKER_14  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkL4line1dummy.MARKER_15  &
   adams_id = 4340  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkL4line1dummy.MARKER_15  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkL4line1dummy.MARKER_16  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkL4line1dummy.MARKER_16  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkL4line1dummy.MARKER_17  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkL4line1dummy.MARKER_18  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
part create rigid_body mass_properties  &
   part_name = .FRS5_doe_8_LAUL.linkL4line1dummy  &
   material_type = .FRS5_doe_8_LAUL.wood
!
! ****** Graphics for current part ******
!
geometry create shape ellipsoid  &
   ellipsoid_name = .FRS5_doe_8_LAUL.linkL4line1dummy.sph  &
   adams_id = 3430  &
   center_marker = .FRS5_doe_8_LAUL.linkL4line1dummy.cm  &
   x_scale_factor = 1.0  &
   y_scale_factor = 1.0  &
   z_scale_factor = 1.0
!
geometry attributes  &
   geometry_name = .FRS5_doe_8_LAUL.linkL4line1dummy.sph  &
   color = RED
!
part attributes  &
   part_name = .FRS5_doe_8_LAUL.linkL4line1dummy  &
   visibility = on
!
!------------------------------ linkL4line2dummy ------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .FRS5_doe_8_LAUL.ground
!
part create rigid_body name_and_position  &
   part_name = .FRS5_doe_8_LAUL.linkL4line2dummy  &
   adams_id = 362  &
   location = 229.6790998759, 242.87, 178.4757524881  &
   orientation = 0.0d, 90.0d, 250.0d
!
defaults coordinate_system  &
   default_coordinate_system = .FRS5_doe_8_LAUL.linkL4line2dummy
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkL4line2dummy.MARKER  &
   adams_id = 3701  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkL4line2dummy.MARKER  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkL4line2dummy.cm  &
   adams_id = 3702  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkL4line2dummy.cm  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkL4line2dummy.MARKER_2  &
   adams_id = 3703  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkL4line2dummy.MARKER_2  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkL4line2dummy.MARKER_3  &
   adams_id = 3704  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkL4line2dummy.MARKER_3  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkL4line2dummy.MARKER_4  &
   adams_id = 3705  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkL4line2dummy.MARKER_4  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkL4line2dummy.MARKER_5  &
   adams_id = 3706  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkL4line2dummy.MARKER_5  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkL4line2dummy.MARKER_6  &
   adams_id = 3707  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkL4line2dummy.MARKER_6  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkL4line2dummy.MARKER_7  &
   adams_id = 3708  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkL4line2dummy.MARKER_7  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkL4line2dummy.MARKER_8  &
   adams_id = 3709  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkL4line2dummy.MARKER_8  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkL4line2dummy.MARKER_9  &
   adams_id = 3710  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkL4line2dummy.MARKER_9  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkL4line2dummy.MARKER_10  &
   adams_id = 3711  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkL4line2dummy.MARKER_10  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkL4line2dummy.MARKER_11  &
   adams_id = 3712  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkL4line2dummy.MARKER_11  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkL4line2dummy.MARKER_12  &
   adams_id = 3713  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkL4line2dummy.MARKER_12  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkL4line2dummy.MARKER_13  &
   adams_id = 4045  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkL4line2dummy.MARKER_13  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkL4line2dummy.MARKER_14  &
   adams_id = 4206  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkL4line2dummy.MARKER_14  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkL4line2dummy.MARKER_15  &
   adams_id = 4341  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkL4line2dummy.MARKER_15  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkL4line2dummy.MARKER_16  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkL4line2dummy.MARKER_16  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkL4line2dummy.MARKER_17  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkL4line2dummy.MARKER_18  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
part create rigid_body mass_properties  &
   part_name = .FRS5_doe_8_LAUL.linkL4line2dummy  &
   material_type = .FRS5_doe_8_LAUL.wood
!
! ****** Graphics for current part ******
!
geometry create shape ellipsoid  &
   ellipsoid_name = .FRS5_doe_8_LAUL.linkL4line2dummy.sph  &
   adams_id = 3431  &
   center_marker = .FRS5_doe_8_LAUL.linkL4line2dummy.cm  &
   x_scale_factor = 1.0  &
   y_scale_factor = 1.0  &
   z_scale_factor = 1.0
!
geometry attributes  &
   geometry_name = .FRS5_doe_8_LAUL.linkL4line2dummy.sph  &
   color = RED
!
part attributes  &
   part_name = .FRS5_doe_8_LAUL.linkL4line2dummy  &
   visibility = on
!
!----------------------------------- linkL5 -----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .FRS5_doe_8_LAUL.ground
!
part create rigid_body name_and_position  &
   part_name = .FRS5_doe_8_LAUL.linkL5  &
   adams_id = 363  &
   location = 225.6907126358, 303.6967882549, 236.1513662757  &
   orientation = 180.0d, 90.0d, 290.0d
!
defaults coordinate_system  &
   default_coordinate_system = .FRS5_doe_8_LAUL.linkL5
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkL5.MARKER_1599  &
   adams_id = 3714  &
   location = 4.3964831775E-11, -23.6673, -156.5767882549  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkL5.MARKER_1599  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkL5.MARKER_1605  &
   adams_id = 3715  &
   location = 3.239900044E-03, -23.4740797524, -60.8267882549  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkL5.MARKER_1605  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkL5.PSMAR  &
   adams_id = 3716  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkL5.PSMAR  &
   color = GREEN  &
   visibility = off  &
   size_of_icons = 10.0
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkL5.cm  &
   adams_id = 3717  &
   location = 15.8119173942, -11.3515105879, -102.0550558736  &
   orientation = 105.6755320308d, 157.5389020966d, 13.5277441958d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkL5.cm  &
   color = GREEN  &
   size_of_icons = 10.0
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkL5.aft_center  &
   adams_id = 3718  &
   location = 3.2399E-03, 3.23343318E-03, -83.376278637  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkL5.aft_center  &
   color = GREEN  &
   size_of_icons = 10.0
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkL5.fwd_center  &
   adams_id = 3719  &
   location = 0.0, 0.0, -135.5762786  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkL5.fwd_center  &
   color = GREEN  &
   size_of_icons = 10.0
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkL5.tongue  &
   adams_id = 3720  &
   location = 4.9299994642E-08, -16.0, -7.9591619725  &
   orientation = 0.0d, 180.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkL5.tongue  &
   color = GREEN  &
   size_of_icons = 10.0
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkL5.sp2  &
   adams_id = 3721  &
   location = 4.2110412379E-11, -23.6673, -156.5767882549  &
   orientation = 0.0d, 180.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkL5.sp2  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkL5.trailing_center  &
   adams_id = 3722  &
   location = 52.83, 0.0, -109.4762786185  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkL5.trailing_center  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkL5.LM1  &
   adams_id = 3723  &
   location = 4.3950953987E-11, -23.6673, -156.5767882549  &
   orientation = 0.0d, 180.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkL5.LM1  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkL5.LM2  &
   adams_id = 3724  &
   location = 3.239900044E-03, -23.4740797524, -60.8267882549  &
   orientation = 0.0d, 180.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkL5.LM2  &
   color = GREEN
!
! ****** Floating Markers for current part ******
!
floating_marker create  &
   floating_marker_name = .FRS5_doe_8_LAUL.linkL5.FMARKER_2168  &
   adams_id = 3725
!
floating_marker create  &
   floating_marker_name = .FRS5_doe_8_LAUL.linkL5.FMARKER_2170  &
   adams_id = 3726
!
floating_marker create  &
   floating_marker_name = .FRS5_doe_8_LAUL.linkL5.FMARKER_2173  &
   adams_id = 3727
!
floating_marker create  &
   floating_marker_name = .FRS5_doe_8_LAUL.linkL5.FMARKER_231  &
   adams_id = 3728
!
floating_marker create  &
   floating_marker_name = .FRS5_doe_8_LAUL.linkL5.FMARKER_232  &
   adams_id = 3729
!
floating_marker create  &
   floating_marker_name = .FRS5_doe_8_LAUL.linkL5.FMARKER_35  &
   adams_id = 3730
!
floating_marker create  &
   floating_marker_name = .FRS5_doe_8_LAUL.linkL5.FMARKER_42  &
   adams_id = 3731
!
floating_marker create  &
   floating_marker_name = .FRS5_doe_8_LAUL.linkL5.FMARKER_237  &
   adams_id = 3732
!
floating_marker create  &
   floating_marker_name = .FRS5_doe_8_LAUL.linkL5.FMARKER_3781  &
   adams_id = 3781
!
floating_marker create  &
   floating_marker_name = .FRS5_doe_8_LAUL.linkL5.FMARKER_3785  &
   adams_id = 3785
!
floating_marker create  &
   floating_marker_name = .FRS5_doe_8_LAUL.linkL5.FMARKER_3788  &
   adams_id = 3788
!
part create rigid_body mass_properties  &
   part_name = .FRS5_doe_8_LAUL.linkL5  &
   density = 7.861E-06
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .FRS5_doe_8_LAUL.linkL5  &
   color = COLOR_R114G012B132  &
   visibility = on  &
   size_of_icons = 10.0
!
!------------------------------ linkL5line1dummy ------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .FRS5_doe_8_LAUL.ground
!
part create rigid_body name_and_position  &
   part_name = .FRS5_doe_8_LAUL.linkL5line1dummy  &
   adams_id = 364  &
   location = 247.9306997997, 147.12, 228.0566729375  &
   orientation = 0.0d, 90.0d, 250.0d
!
defaults coordinate_system  &
   default_coordinate_system = .FRS5_doe_8_LAUL.linkL5line1dummy
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkL5line1dummy.MARKER  &
   adams_id = 3733  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkL5line1dummy.MARKER  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkL5line1dummy.cm  &
   adams_id = 3734  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkL5line1dummy.cm  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkL5line1dummy.MARKER_2  &
   adams_id = 3735  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkL5line1dummy.MARKER_2  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkL5line1dummy.MARKER_3  &
   adams_id = 3736  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkL5line1dummy.MARKER_3  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkL5line1dummy.MARKER_4  &
   adams_id = 3737  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkL5line1dummy.MARKER_4  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkL5line1dummy.MARKER_5  &
   adams_id = 3738  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkL5line1dummy.MARKER_5  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkL5line1dummy.MARKER_6  &
   adams_id = 3739  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkL5line1dummy.MARKER_6  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkL5line1dummy.MARKER_7  &
   adams_id = 3740  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkL5line1dummy.MARKER_7  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkL5line1dummy.MARKER_8  &
   adams_id = 3741  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkL5line1dummy.MARKER_8  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkL5line1dummy.MARKER_9  &
   adams_id = 3742  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkL5line1dummy.MARKER_9  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkL5line1dummy.MARKER_10  &
   adams_id = 3743  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkL5line1dummy.MARKER_10  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkL5line1dummy.MARKER_11  &
   adams_id = 3744  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkL5line1dummy.MARKER_11  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkL5line1dummy.MARKER_12  &
   adams_id = 3745  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkL5line1dummy.MARKER_12  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkL5line1dummy.MARKER_13  &
   adams_id = 4046  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkL5line1dummy.MARKER_13  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkL5line1dummy.MARKER_14  &
   adams_id = 4207  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkL5line1dummy.MARKER_14  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkL5line1dummy.MARKER_15  &
   adams_id = 4342  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkL5line1dummy.MARKER_15  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkL5line1dummy.MARKER_16  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkL5line1dummy.MARKER_16  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkL5line1dummy.MARKER_17  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkL5line1dummy.MARKER_18  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
part create rigid_body mass_properties  &
   part_name = .FRS5_doe_8_LAUL.linkL5line1dummy  &
   material_type = .FRS5_doe_8_LAUL.wood
!
! ****** Graphics for current part ******
!
geometry create shape ellipsoid  &
   ellipsoid_name = .FRS5_doe_8_LAUL.linkL5line1dummy.sph  &
   adams_id = 3437  &
   center_marker = .FRS5_doe_8_LAUL.linkL5line1dummy.cm  &
   x_scale_factor = 1.0  &
   y_scale_factor = 1.0  &
   z_scale_factor = 1.0
!
geometry attributes  &
   geometry_name = .FRS5_doe_8_LAUL.linkL5line1dummy.sph  &
   color = RED
!
part attributes  &
   part_name = .FRS5_doe_8_LAUL.linkL5line1dummy  &
   visibility = on
!
!------------------------------ linkL5line2dummy ------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .FRS5_doe_8_LAUL.ground
!
part create rigid_body name_and_position  &
   part_name = .FRS5_doe_8_LAUL.linkL5line2dummy  &
   adams_id = 365  &
   location = 247.7480240478, 242.87, 228.1197136442  &
   orientation = 0.0d, 90.0d, 250.0d
!
defaults coordinate_system  &
   default_coordinate_system = .FRS5_doe_8_LAUL.linkL5line2dummy
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkL5line2dummy.MARKER  &
   adams_id = 3746  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkL5line2dummy.MARKER  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkL5line2dummy.cm  &
   adams_id = 3747  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkL5line2dummy.cm  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkL5line2dummy.MARKER_2  &
   adams_id = 3748  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkL5line2dummy.MARKER_2  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkL5line2dummy.MARKER_3  &
   adams_id = 3749  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkL5line2dummy.MARKER_3  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkL5line2dummy.MARKER_4  &
   adams_id = 3750  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkL5line2dummy.MARKER_4  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkL5line2dummy.MARKER_5  &
   adams_id = 3751  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkL5line2dummy.MARKER_5  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkL5line2dummy.MARKER_6  &
   adams_id = 3752  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkL5line2dummy.MARKER_6  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkL5line2dummy.MARKER_7  &
   adams_id = 3753  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkL5line2dummy.MARKER_7  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkL5line2dummy.MARKER_8  &
   adams_id = 3754  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkL5line2dummy.MARKER_8  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkL5line2dummy.MARKER_9  &
   adams_id = 3755  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkL5line2dummy.MARKER_9  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkL5line2dummy.MARKER_10  &
   adams_id = 3756  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkL5line2dummy.MARKER_10  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkL5line2dummy.MARKER_11  &
   adams_id = 3757  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkL5line2dummy.MARKER_11  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkL5line2dummy.MARKER_12  &
   adams_id = 3758  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkL5line2dummy.MARKER_12  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkL5line2dummy.MARKER_13  &
   adams_id = 4047  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkL5line2dummy.MARKER_13  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkL5line2dummy.MARKER_14  &
   adams_id = 4208  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkL5line2dummy.MARKER_14  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkL5line2dummy.MARKER_15  &
   adams_id = 4343  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkL5line2dummy.MARKER_15  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkL5line2dummy.MARKER_16  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.linkL5line2dummy.MARKER_16  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkL5line2dummy.MARKER_17  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.linkL5line2dummy.MARKER_18  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
part create rigid_body mass_properties  &
   part_name = .FRS5_doe_8_LAUL.linkL5line2dummy  &
   material_type = .FRS5_doe_8_LAUL.wood
!
! ****** Graphics for current part ******
!
geometry create shape ellipsoid  &
   ellipsoid_name = .FRS5_doe_8_LAUL.linkL5line2dummy.sph  &
   adams_id = 3438  &
   center_marker = .FRS5_doe_8_LAUL.linkL5line2dummy.cm  &
   x_scale_factor = 1.0  &
   y_scale_factor = 1.0  &
   z_scale_factor = 1.0
!
geometry attributes  &
   geometry_name = .FRS5_doe_8_LAUL.linkL5line2dummy.sph  &
   color = RED
!
part attributes  &
   part_name = .FRS5_doe_8_LAUL.linkL5line2dummy  &
   visibility = on
!
!---------------------------------- sideY1_2 ----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .FRS5_doe_8_LAUL.ground
!
part create rigid_body name_and_position  &
   part_name = .FRS5_doe_8_LAUL.sideY1_2  &
   adams_id = 2  &
   location = 151.661278503, 236.37, 153.2212606689  &
   orientation = 0.0d, 90.0d, 120.0d
!
defaults coordinate_system  &
   default_coordinate_system = .FRS5_doe_8_LAUL.sideY1_2
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.sideY1_2.fix1a  &
   adams_id = 2370  &
   location = 0.1518460969, 0.1945677004, 0.0  &
   orientation = 60.0d, 90.0d, 180.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.sideY1_2.fix1a  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.sideY1_2.beamY_s1_2a  &
   adams_id = 4363  &
   location = 0.0, 0.0, 0.0  &
   orientation = 141.0964663812d, 180.0d, 0.0d
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.sideY1_2.beamY_s1_2_c  &
   adams_id = 4364  &
   location = 2.6671, -2.15235, 12.0  &
   orientation = 141.0964663812d, 180.0d, 0.0d
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.sideY1_2.cm  &
   adams_id = 4365  &
   location = 0.3190296151, 0.3953278446, 0.0  &
   orientation = 51.0964663812d, 180.0d, 0.0d
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.sideY1_2.MARKER_1  &
   adams_id = 4366  &
   location = 0.3190296151, 0.3953278446, 0.0  &
   orientation = 51.0964663812d, 180.0d, 0.0d
!
part create rigid_body mass_properties  &
   part_name = .FRS5_doe_8_LAUL.sideY1_2  &
   material_type = .FRS5_doe_8_LAUL.steel_4
!
! ****** Graphics for current part ******
!
geometry create shape block  &
   block_name = .FRS5_doe_8_LAUL.sideY1_2.beamY_s1_2_b  &
   adams_id = 4077  &
   corner_marker = .FRS5_doe_8_LAUL.sideY1_2.beamY_s1_2_c  &
   diag_corner_coords = 6.8544971902, 1.016, 24.0
!
!---------------------------------- sideY1_3 ----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .FRS5_doe_8_LAUL.ground
!
part create rigid_body name_and_position  &
   part_name = .FRS5_doe_8_LAUL.sideY1_3  &
   adams_id = 3  &
   location = 150.5367226391, 236.37, 146.4594061133  &
   orientation = 0.0d, 90.0d, 118.9361285447d
!
defaults coordinate_system  &
   default_coordinate_system = .FRS5_doe_8_LAUL.sideY1_3
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.sideY1_3.beamY_s1_3a  &
   adams_id = 4367  &
   location = 0.0, 0.0, 0.0  &
   orientation = 141.0966540589d, 180.0d, 0.0d
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.sideY1_3.beamY_s1_2b  &
   adams_id = 4368  &
   location = 0.0, 0.0, 0.0  &
   orientation = 141.0964663812d, 180.0d, 0.0d
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.sideY1_3.beamY_s1_3_c  &
   adams_id = 4369  &
   location = 0.8449236328, -0.6818516942, 12.0  &
   orientation = 141.0965391722d, 180.0d, 0.0d
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.sideY1_3.cm  &
   adams_id = 4370  &
   location = -0.52589452, 1.0771799441, 0.0  &
   orientation = 51.0965391722d, 180.0d, 0.0d
!
part create rigid_body mass_properties  &
   part_name = .FRS5_doe_8_LAUL.sideY1_3  &
   material_type = .FRS5_doe_8_LAUL.steel_4
!
! ****** Graphics for current part ******
!
geometry create shape block  &
   block_name = .FRS5_doe_8_LAUL.sideY1_3.beamY_s1_3_b  &
   adams_id = 2  &
   corner_marker = .FRS5_doe_8_LAUL.sideY1_3.beamY_s1_3_c  &
   diag_corner_coords = 4.3429348199, 1.016, 24.0
!
!---------------------------------- sideY1_4 ----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .FRS5_doe_8_LAUL.ground
!
part create rigid_body name_and_position  &
   part_name = .FRS5_doe_8_LAUL.sideY1_4  &
   adams_id = 4  &
   location = 149.7613267064, 236.37, 142.1862304587  &
   orientation = 0.0d, 90.0d, 118.3069364388d
!
defaults coordinate_system  &
   default_coordinate_system = .FRS5_doe_8_LAUL.sideY1_4
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.sideY1_4.beamY_s1_4a  &
   adams_id = 4371  &
   location = 0.0, 0.0, 0.0  &
   orientation = 140.8076706073d, 180.0d, 0.0d
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.sideY1_4.beamY_s1_3b  &
   adams_id = 4372  &
   location = 0.0, 0.0, 0.0  &
   orientation = 141.0966540589d, 180.0d, 0.0d
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.sideY1_4.beamY_s1_4_c  &
   adams_id = 4373  &
   location = 2.0797169692, -1.6879078465, 12.0  &
   orientation = 140.9370571613d, 180.0d, 0.0d
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.sideY1_4.cm  &
   adams_id = 4374  &
   location = 0.3201282662, 0.3944387065, 0.0  &
   orientation = 50.9370571613d, 180.0d, 0.0d
!
part create rigid_body mass_properties  &
   part_name = .FRS5_doe_8_LAUL.sideY1_4  &
   material_type = .FRS5_doe_8_LAUL.steel_4
!
! ****** Graphics for current part ******
!
geometry create shape block  &
   block_name = .FRS5_doe_8_LAUL.sideY1_4.beamY_s1_4_b  &
   adams_id = 4078  &
   corner_marker = .FRS5_doe_8_LAUL.sideY1_4.beamY_s1_4_c  &
   diag_corner_coords = 5.3569601716, 1.016, 24.0
!
!---------------------------------- sideY1_5 ----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .FRS5_doe_8_LAUL.ground
!
part create rigid_body name_and_position  &
   part_name = .FRS5_doe_8_LAUL.sideY1_5  &
   adams_id = 5  &
   location = 148.7160235623, 236.37, 136.9321897173  &
   orientation = 0.0d, 90.0d, 117.5829173231d
!
defaults coordinate_system  &
   default_coordinate_system = .FRS5_doe_8_LAUL.sideY1_5
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.sideY1_5.beamY_s1_5a  &
   adams_id = 4375  &
   location = 0.0, 0.0, 0.0  &
   orientation = 126.7851161271d, 180.0d, 0.0d
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.sideY1_5.beamY_s1_4b  &
   adams_id = 4376  &
   location = 0.0, 0.0, 0.0  &
   orientation = 140.8076706073d, 180.0d, 0.0d
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.sideY1_5.beamY_s1_5_c  &
   adams_id = 4377  &
   location = 1.8435293126, -1.9212565487, 12.0  &
   orientation = 133.8172474751d, 180.0d, 0.0d
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.sideY1_5.cm  &
   adams_id = 4378  &
   location = 0.3665483362, 0.3517190886, 0.0  &
   orientation = 43.8172474751d, 0.0d, 0.0d
!
part create rigid_body mass_properties  &
   part_name = .FRS5_doe_8_LAUL.sideY1_5  &
   material_type = .FRS5_doe_8_LAUL.steel_4
!
! ****** Graphics for current part ******
!
geometry create shape block  &
   block_name = .FRS5_doe_8_LAUL.sideY1_5.beamY_s1_5_b  &
   adams_id = 4079  &
   corner_marker = .FRS5_doe_8_LAUL.sideY1_5.beamY_s1_5_c  &
   diag_corner_coords = 5.3253458301, 1.016, 24.0
!
!---------------------------------- sideY1_6 ----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .FRS5_doe_8_LAUL.ground
!
part create rigid_body name_and_position  &
   part_name = .FRS5_doe_8_LAUL.sideY1_6  &
   adams_id = 6  &
   location = 146.3849085987, 236.37, 132.1441199079  &
   orientation = 0.0d, 90.0d, 116.9452277336d
!
defaults coordinate_system  &
   default_coordinate_system = .FRS5_doe_8_LAUL.sideY1_6
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.sideY1_6.beamY_s1_6a  &
   adams_id = 4379  &
   location = 0.0, 0.0, 0.0  &
   orientation = 105.103571379d, 180.0d, 0.0d
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.sideY1_6.beamY_s1_5b  &
   adams_id = 4380  &
   location = 0.0, 0.0, 0.0  &
   orientation = 126.7851161271d, 180.0d, 0.0d
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.sideY1_6.beamY_s1_6_c  &
   adams_id = 4381  &
   location = 0.7081121627, -2.6165813756, 12.0  &
   orientation = 115.9443321937d, 180.0d, 0.0d
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.sideY1_6.cm  &
   adams_id = 4382  &
   location = 0.0, 0.0, 0.0  &
   orientation = 25.9443321937d, 0.0d, 0.0d
!
part create rigid_body mass_properties  &
   part_name = .FRS5_doe_8_LAUL.sideY1_6  &
   material_type = .FRS5_doe_8_LAUL.steel_4
!
! ****** Graphics for current part ******
!
geometry create shape block  &
   block_name = .FRS5_doe_8_LAUL.sideY1_6.beamY_s1_6_b  &
   adams_id = 4080  &
   corner_marker = .FRS5_doe_8_LAUL.sideY1_6.beamY_s1_6_c  &
   diag_corner_coords = 5.3253570509, 1.016, 24.0
!
!---------------------------------- sideY1_7 ----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .FRS5_doe_8_LAUL.ground
!
part create rigid_body name_and_position  &
   part_name = .FRS5_doe_8_LAUL.sideY1_7  &
   adams_id = 7  &
   location = 142.4139574047, 236.37, 128.5957097582  &
   orientation = 0.0d, 90.0d, 116.4423229293d
!
defaults coordinate_system  &
   default_coordinate_system = .FRS5_doe_8_LAUL.sideY1_7
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.sideY1_7.beamY_s1_7a  &
   adams_id = 4383  &
   location = 0.0, 0.0, 0.0  &
   orientation = 83.4195762836d, 180.0d, 0.0d
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.sideY1_7.beamY_s1_6b  &
   adams_id = 4384  &
   location = 0.0, 0.0, 0.0  &
   orientation = 105.103571379d, 180.0d, 0.0d
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.sideY1_7.beamY_s1_7_c  &
   adams_id = 4385  &
   location = -0.308734582, -2.6931786133, 12.0  &
   orientation = 94.2613389112d, 180.0d, 0.0d
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.sideY1_7.cm  &
   adams_id = 4386  &
   location = 0.0, 0.0, 0.0  &
   orientation = 4.2613389112d, 0.0d, 0.0d
!
part create rigid_body mass_properties  &
   part_name = .FRS5_doe_8_LAUL.sideY1_7  &
   material_type = .FRS5_doe_8_LAUL.steel_4
!
! ****** Graphics for current part ******
!
geometry create shape block  &
   block_name = .FRS5_doe_8_LAUL.sideY1_7.beamY_s1_7_b  &
   adams_id = 4081  &
   corner_marker = .FRS5_doe_8_LAUL.sideY1_7.beamY_s1_7_c  &
   diag_corner_coords = 5.3255850702, 1.016, 24.0
!
!---------------------------------- sideY1_8 ----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .FRS5_doe_8_LAUL.ground
!
part create rigid_body name_and_position  &
   part_name = .FRS5_doe_8_LAUL.sideY1_8  &
   adams_id = 8  &
   location = 137.3995747565, 236.37, 126.8018476635  &
   orientation = 0.0d, 90.0d, 116.120118715d
!
defaults coordinate_system  &
   default_coordinate_system = .FRS5_doe_8_LAUL.sideY1_8
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.sideY1_8.beamY_s1_8a  &
   adams_id = 4387  &
   location = 0.0, 0.0, 0.0  &
   orientation = 61.7251850253d, 180.0d, 0.0d
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.sideY1_8.beamY_s1_7b  &
   adams_id = 4388  &
   location = 0.0, 0.0, 0.0  &
   orientation = 83.4195762836d, 180.0d, 0.0d
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.sideY1_8.beamY_s1_8_c  &
   adams_id = 4389  &
   location = -0.3128126111, -2.692670718, -12.0  &
   orientation = 72.5724583684d, 0.0d, 0.0d
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.sideY1_8.cm  &
   adams_id = 4390  &
   location = 0.0, 0.0, 0.0  &
   orientation = 342.5724583684d, 0.0d, 0.0d
!
part create rigid_body mass_properties  &
   part_name = .FRS5_doe_8_LAUL.sideY1_8  &
   material_type = .FRS5_doe_8_LAUL.steel_4
!
! ****** Graphics for current part ******
!
geometry create shape block  &
   block_name = .FRS5_doe_8_LAUL.sideY1_8.beamY_s1_8_b  &
   adams_id = 4082  &
   corner_marker = .FRS5_doe_8_LAUL.sideY1_8.beamY_s1_8_c  &
   diag_corner_coords = 5.3255096751, 1.016, 24.0
!
!---------------------------------- sideY1_9 ----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .FRS5_doe_8_LAUL.ground
!
part create rigid_body name_and_position  &
   part_name = .FRS5_doe_8_LAUL.sideY1_9  &
   adams_id = 367  &
   location = 132.0780955291, 236.37, 127.009318465  &
   orientation = 0.0d, 90.0d, 115.9978777076d
!
defaults coordinate_system  &
   default_coordinate_system = .FRS5_doe_8_LAUL.sideY1_9
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.sideY1_9.beamY_s1_9a  &
   adams_id = 4391  &
   location = 0.0, 0.0, 0.0  &
   orientation = 40.0448577452d, 180.0d, 0.0d
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.sideY1_9.beamY_s1_8b  &
   adams_id = 69  &
   location = 0.0, 0.0, 0.0  &
   orientation = 61.7251850253d, 180.0d, 0.0d
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.sideY1_9.beamY_s1_9_c  &
   adams_id = 70  &
   location = -1.2856357641, -2.3863752879, -12.0  &
   orientation = 50.8852848377d, 0.0d, 0.0d
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.sideY1_9.cm  &
   adams_id = 4392  &
   location = 0.0, 0.0, 0.0  &
   orientation = 320.8852848377d, 0.0d, 0.0d
!
part create rigid_body mass_properties  &
   part_name = .FRS5_doe_8_LAUL.sideY1_9  &
   material_type = .FRS5_doe_8_LAUL.steel_4
!
! ****** Graphics for current part ******
!
geometry create shape block  &
   block_name = .FRS5_doe_8_LAUL.sideY1_9.beamY_s1_9_b  &
   adams_id = 4083  &
   corner_marker = .FRS5_doe_8_LAUL.sideY1_9.beamY_s1_9_c  &
   diag_corner_coords = 5.3252539216, 1.016, 24.0
!
!--------------------------------- sideY1_10 ----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .FRS5_doe_8_LAUL.ground
!
part create rigid_body name_and_position  &
   part_name = .FRS5_doe_8_LAUL.sideY1_10  &
   adams_id = 10  &
   location = 127.2108701609, 236.37, 129.1700473249  &
   orientation = 0.0d, 90.0d, 116.0659244859d
!
defaults coordinate_system  &
   default_coordinate_system = .FRS5_doe_8_LAUL.sideY1_10
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.sideY1_10.beamY_s1_10a  &
   adams_id = 4393  &
   location = 0.0, 0.0, 0.0  &
   orientation = 18.364181406d, 180.0d, 0.0d
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.sideY1_10.beamY_s1_9b  &
   adams_id = 4394  &
   location = 0.0, 0.0, 0.0  &
   orientation = 40.0448577452d, 180.0d, 0.0d
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.sideY1_10.beamY_s1_10_c  &
   adams_id = 4395  &
   location = -2.0763668989, -1.7426279353, -12.0  &
   orientation = 29.2043627782d, 0.0d, 0.0d
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.sideY1_10.cm  &
   adams_id = 4396  &
   location = 0.0, 0.0, 0.0  &
   orientation = 119.2043627782d, 180.0d, 0.0d
!
part create rigid_body mass_properties  &
   part_name = .FRS5_doe_8_LAUL.sideY1_10  &
   material_type = .FRS5_doe_8_LAUL.steel_4
!
! ****** Graphics for current part ******
!
geometry create shape block  &
   block_name = .FRS5_doe_8_LAUL.sideY1_10.beamY_s1_10_b  &
   adams_id = 4084  &
   corner_marker = .FRS5_doe_8_LAUL.sideY1_10.beamY_s1_10_c  &
   diag_corner_coords = 5.3254061329, 1.016, 24.0
!
!--------------------------------- sideY1_11 ----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .FRS5_doe_8_LAUL.ground
!
part create rigid_body name_and_position  &
   part_name = .FRS5_doe_8_LAUL.sideY1_11  &
   adams_id = 11  &
   location = 123.4762007372, 236.37, 132.9664610094  &
   orientation = 0.0d, 90.0d, 116.2877201467d
!
defaults coordinate_system  &
   default_coordinate_system = .FRS5_doe_8_LAUL.sideY1_11
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.sideY1_11.beamY_s1_11a  &
   adams_id = 4397  &
   location = 0.0, 0.0, 0.0  &
   orientation = 6.0527255369d, 180.0d, 0.0d
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.sideY1_11.beamY_s1_10b  &
   adams_id = 4398  &
   location = 0.0, 0.0, 0.0  &
   orientation = 18.364181406d, 180.0d, 0.0d
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.sideY1_11.beamY_s1_11_c  &
   adams_id = 4399  &
   location = -2.5110202903, -1.062159671, -12.0  &
   orientation = 12.1899661864d, 0.0d, 0.0d
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.sideY1_11.cm  &
   adams_id = 4400  &
   location = 0.0, 0.0, 0.0  &
   orientation = 102.1899661864d, 180.0d, 0.0d
!
part create rigid_body mass_properties  &
   part_name = .FRS5_doe_8_LAUL.sideY1_11  &
   material_type = .FRS5_doe_8_LAUL.steel_4
!
! ****** Graphics for current part ******
!
geometry create shape block  &
   block_name = .FRS5_doe_8_LAUL.sideY1_11.beamY_s1_11_b  &
   adams_id = 4085  &
   corner_marker = .FRS5_doe_8_LAUL.sideY1_11.beamY_s1_11_c  &
   diag_corner_coords = 5.3573657949, 1.016, 24.0
!
!--------------------------------- sideY1_12 ----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .FRS5_doe_8_LAUL.ground
!
part create rigid_body name_and_position  &
   part_name = .FRS5_doe_8_LAUL.sideY1_12  &
   adams_id = 12  &
   location = 120.5976256519, 236.37, 137.4848622422  &
   orientation = 0.0d, 90.0d, 116.6231396132d
!
defaults coordinate_system  &
   default_coordinate_system = .FRS5_doe_8_LAUL.sideY1_12
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.sideY1_12.beamY_s1_12a  &
   adams_id = 4401  &
   location = 0.0, 0.0, 0.0  &
   orientation = 5.9999375036d, 180.0d, 0.0d
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.sideY1_12.beamY_s1_11b  &
   adams_id = 4402  &
   location = 0.0, 0.0, 0.0  &
   orientation = 6.0527255369d, 180.0d, 0.0d
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.sideY1_12.beamY_s1_12_c  &
   adams_id = 4403  &
   location = -2.6105880974, -0.786419855, -12.0  &
   orientation = 6.0263313177d, 0.0d, 0.0d
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.sideY1_12.cm  &
   adams_id = 4404  &
   location = 0.0, 0.0, 0.0  &
   orientation = 96.0263313177d, 180.0d, 0.0d
!
part create rigid_body mass_properties  &
   part_name = .FRS5_doe_8_LAUL.sideY1_12  &
   material_type = .FRS5_doe_8_LAUL.steel_4
!
! ****** Graphics for current part ******
!
geometry create shape block  &
   block_name = .FRS5_doe_8_LAUL.sideY1_12.beamY_s1_12_b  &
   adams_id = 4086  &
   corner_marker = .FRS5_doe_8_LAUL.sideY1_12.beamY_s1_12_c  &
   diag_corner_coords = 5.3574480501, 1.016, 24.0
!
!--------------------------------- sideY1_13 ----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .FRS5_doe_8_LAUL.ground
!
part create rigid_body name_and_position  &
   part_name = .FRS5_doe_8_LAUL.sideY1_13  &
   adams_id = 13  &
   location = 117.6930151667, 236.37, 141.9866857057  &
   orientation = 0.0d, 90.0d, 117.053626106d
!
defaults coordinate_system  &
   default_coordinate_system = .FRS5_doe_8_LAUL.sideY1_13
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.sideY1_13.beamY_s1_13a  &
   adams_id = 4405  &
   location = 0.0, 0.0, 0.0  &
   orientation = 5.9999375036d, 180.0d, 0.0d
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.sideY1_13.beamY_s1_12b  &
   adams_id = 4406  &
   location = 0.0, 0.0, 0.0  &
   orientation = 5.9999375036d, 180.0d, 0.0d
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.sideY1_13.beamY_s1_13_c  &
   adams_id = 4407  &
   location = -2.6109500917, -0.7852171808, -12.0  &
   orientation = 5.9999375036d, 0.0d, 0.0d
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.sideY1_13.cm  &
   adams_id = 4408  &
   location = 0.0, 0.0, 0.0  &
   orientation = 95.9999375036d, 180.0d, 0.0d
!
part create rigid_body mass_properties  &
   part_name = .FRS5_doe_8_LAUL.sideY1_13  &
   material_type = .FRS5_doe_8_LAUL.steel_4
!
! ****** Graphics for current part ******
!
geometry create shape block  &
   block_name = .FRS5_doe_8_LAUL.sideY1_13.beamY_s1_13_b  &
   adams_id = 4087  &
   corner_marker = .FRS5_doe_8_LAUL.sideY1_13.beamY_s1_13_c  &
   diag_corner_coords = 5.3574480501, 1.016, 24.0
!
!--------------------------------- sideY1_14 ----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .FRS5_doe_8_LAUL.ground
!
part create rigid_body name_and_position  &
   part_name = .FRS5_doe_8_LAUL.sideY1_14  &
   adams_id = 14  &
   location = 114.7508962791, 236.37, 146.4641074322  &
   orientation = 0.0d, 90.0d, 117.5804673121d
!
defaults coordinate_system  &
   default_coordinate_system = .FRS5_doe_8_LAUL.sideY1_14
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.sideY1_14.beamY_s1_14a  &
   adams_id = 4409  &
   location = 0.0, 0.0, 0.0  &
   orientation = 8.5305009692d, 180.0d, 0.0d
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.sideY1_14.beamY_s1_13b  &
   adams_id = 4410  &
   location = 0.0, 0.0, 0.0  &
   orientation = 5.9999375036d, 180.0d, 0.0d
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.sideY1_14.beamY_s1_14_c  &
   adams_id = 4411  &
   location = -2.5906363072, -0.8423550833, -12.0  &
   orientation = 7.2646602155d, 0.0d, 0.0d
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.sideY1_14.cm  &
   adams_id = 4412  &
   location = 0.0, 0.0, 0.0  &
   orientation = 97.2646602155d, 180.0d, 0.0d
!
part create rigid_body mass_properties  &
   part_name = .FRS5_doe_8_LAUL.sideY1_14  &
   material_type = .FRS5_doe_8_LAUL.steel_4
!
! ****** Graphics for current part ******
!
geometry create shape block  &
   block_name = .FRS5_doe_8_LAUL.sideY1_14.beamY_s1_14_b  &
   adams_id = 4088  &
   corner_marker = .FRS5_doe_8_LAUL.sideY1_14.beamY_s1_14_c  &
   diag_corner_coords = 5.3527169036, 1.016, 24.0
!
!--------------------------------- sideY1_15 ----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .FRS5_doe_8_LAUL.ground
!
part create rigid_body name_and_position  &
   part_name = .FRS5_doe_8_LAUL.sideY1_15  &
   adams_id = 15  &
   location = 111.5731952741, 236.37, 150.7716751796  &
   orientation = 0.0d, 90.0d, 118.2086858402d
!
defaults coordinate_system  &
   default_coordinate_system = .FRS5_doe_8_LAUL.sideY1_15
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.sideY1_15.beamY_s1_15a  &
   adams_id = 4413  &
   location = 0.0, 0.0, 0.0  &
   orientation = 18.5853275452d, 180.0d, 0.0d
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.sideY1_15.beamY_s1_14b  &
   adams_id = 4414  &
   location = 0.0, 0.0, 0.0  &
   orientation = 8.5305009692d, 180.0d, 0.0d
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.sideY1_15.beamY_s1_15_c  &
   adams_id = 4415  &
   location = -2.481192416, -1.1208258272, -12.0  &
   orientation = 13.5564370408d, 0.0d, 0.0d
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.sideY1_15.cm  &
   adams_id = 4416  &
   location = 0.0, 0.0, 0.0  &
   orientation = 103.5564370408d, 180.0d, 0.0d
!
part create rigid_body mass_properties  &
   part_name = .FRS5_doe_8_LAUL.sideY1_15  &
   material_type = .FRS5_doe_8_LAUL.steel_4
!
! ****** Graphics for current part ******
!
geometry create shape block  &
   block_name = .FRS5_doe_8_LAUL.sideY1_15.beamY_s1_15_b  &
   adams_id = 4089  &
   corner_marker = .FRS5_doe_8_LAUL.sideY1_15.beamY_s1_15_c  &
   diag_corner_coords = 5.3495802976, 1.016, 24.0
!
!--------------------------------- sideY1_16 ----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .FRS5_doe_8_LAUL.ground
!
part create rigid_body name_and_position  &
   part_name = .FRS5_doe_8_LAUL.sideY1_16  &
   adams_id = 16  &
   location = 107.6506306332, 236.37, 154.4094095694  &
   orientation = 0.0d, 90.0d, 118.958558986d
!
defaults coordinate_system  &
   default_coordinate_system = .FRS5_doe_8_LAUL.sideY1_16
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.sideY1_16.beamY_s1_16a  &
   adams_id = 4417  &
   location = 0.0, 0.0, 0.0  &
   orientation = 29.0957983327d, 180.0d, 0.0d
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.sideY1_16.beamY_s1_15b  &
   adams_id = 4418  &
   location = 0.0, 0.0, 0.0  &
   orientation = 18.5853275452d, 180.0d, 0.0d
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.sideY1_16.beamY_s1_16_c  &
   adams_id = 4419  &
   location = -2.2412783579, -1.5458095298, -12.0  &
   orientation = 23.8406162384d, 0.0d, 0.0d
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.sideY1_16.cm  &
   adams_id = 4420  &
   location = 0.0, 0.0, 0.0  &
   orientation = 113.8406162384d, 180.0d, 0.0d
!
part create rigid_body mass_properties  &
   part_name = .FRS5_doe_8_LAUL.sideY1_16  &
   material_type = .FRS5_doe_8_LAUL.steel_4
!
! ****** Graphics for current part ******
!
geometry create shape block  &
   block_name = .FRS5_doe_8_LAUL.sideY1_16.beamY_s1_16_b  &
   adams_id = 4090  &
   corner_marker = .FRS5_doe_8_LAUL.sideY1_16.beamY_s1_16_c  &
   diag_corner_coords = 5.3496885068, 1.016, 24.0
!
!--------------------------------- sideY1_17 ----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .FRS5_doe_8_LAUL.ground
!
part create rigid_body name_and_position  &
   part_name = .FRS5_doe_8_LAUL.sideY1_17  &
   adams_id = 17  &
   location = 103.08953719, 236.37, 157.2054124183  &
   orientation = 0.0d, 90.0d, 119.8596454529d
!
defaults coordinate_system  &
   default_coordinate_system = .FRS5_doe_8_LAUL.sideY1_17
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.sideY1_17.beamY_s1_17a  &
   adams_id = 21  &
   location = 0.0, 0.0, 0.0  &
   orientation = 39.7330302471d, 180.0d, 0.0d
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.sideY1_17.beamY_s1_16b  &
   adams_id = 4421  &
   location = 0.0, 0.0, 0.0  &
   orientation = 29.0957983327d, 180.0d, 0.0d
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.sideY1_17.beamY_s1_17_c  &
   adams_id = 4422  &
   location = -1.9195728486, -1.9308482129, -12.0  &
   orientation = 34.4144290066d, 0.0d, 0.0d
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.sideY1_17.cm  &
   adams_id = 4423  &
   location = 0.0, 0.0, 0.0  &
   orientation = 124.4144290066d, 180.0d, 0.0d
!
part create rigid_body mass_properties  &
   part_name = .FRS5_doe_8_LAUL.sideY1_17  &
   material_type = .FRS5_doe_8_LAUL.steel_4
!
! ****** Graphics for current part ******
!
geometry create shape block  &
   block_name = .FRS5_doe_8_LAUL.sideY1_17.beamY_s1_17_b  &
   adams_id = 4091  &
   corner_marker = .FRS5_doe_8_LAUL.sideY1_17.beamY_s1_17_c  &
   diag_corner_coords = 5.3497180271, 1.016, 24.0
!
!--------------------------------- sideY1_18 ----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .FRS5_doe_8_LAUL.ground
!
part create rigid_body name_and_position  &
   part_name = .FRS5_doe_8_LAUL.sideY1_18  &
   adams_id = 18  &
   location = 98.0585338184, 236.37, 159.0250662045  &
   orientation = 0.0d, 90.0d, 120.9363609347d
!
defaults coordinate_system  &
   default_coordinate_system = .FRS5_doe_8_LAUL.sideY1_18
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.sideY1_18.beamY_s1_18a  &
   adams_id = 22  &
   location = 0.0, 0.0, 0.0  &
   orientation = 50.2527105181d, 180.0d, 0.0d
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.sideY1_18.beamY_s1_17b  &
   adams_id = 4424  &
   location = 0.0, 0.0, 0.0  &
   orientation = 39.7330302471d, 180.0d, 0.0d
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.sideY1_18.beamY_s1_18_c  &
   adams_id = 4425  &
   location = -1.5324160477, -2.2503595317, -12.0  &
   orientation = 44.992774951d, 0.0d, 0.0d
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.sideY1_18.cm  &
   adams_id = 4426  &
   location = 0.0, 0.0, 0.0  &
   orientation = 134.992774951d, 180.0d, 0.0d
!
part create rigid_body mass_properties  &
   part_name = .FRS5_doe_8_LAUL.sideY1_18  &
   material_type = .FRS5_doe_8_LAUL.steel_4
!
! ****** Graphics for current part ******
!
geometry create shape block  &
   block_name = .FRS5_doe_8_LAUL.sideY1_18.beamY_s1_18_b  &
   adams_id = 4092  &
   corner_marker = .FRS5_doe_8_LAUL.sideY1_18.beamY_s1_18_c  &
   diag_corner_coords = 5.3495244518, 1.016, 24.0
!
!--------------------------------- sideY1_19 ----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .FRS5_doe_8_LAUL.ground
!
part create rigid_body name_and_position  &
   part_name = .FRS5_doe_8_LAUL.sideY1_19  &
   adams_id = 19  &
   location = 92.7632815416, 236.37, 159.7874300199  &
   orientation = 0.0d, 90.0d, 122.2062713577d
!
defaults coordinate_system  &
   default_coordinate_system = .FRS5_doe_8_LAUL.sideY1_19
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.sideY1_19.beamY_s1_19a  &
   adams_id = 4427  &
   location = 0.0, 0.0, 0.0  &
   orientation = 60.8303422006d, 180.0d, 0.0d
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.sideY1_19.beamY_s1_18b  &
   adams_id = 4428  &
   location = 0.0, 0.0, 0.0  &
   orientation = 50.2527105181d, 180.0d, 0.0d
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.sideY1_19.beamY_s1_19_c  &
   adams_id = 4429  &
   location = -1.0945695302, -2.4929184892, -12.0  &
   orientation = 55.5415834579d, 0.0d, 0.0d
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.sideY1_19.cm  &
   adams_id = 4430  &
   location = 0.0, 0.0, 0.0  &
   orientation = 325.5415834579d, 0.0d, 0.0d
!
part create rigid_body mass_properties  &
   part_name = .FRS5_doe_8_LAUL.sideY1_19  &
   material_type = .FRS5_doe_8_LAUL.steel_4
!
! ****** Graphics for current part ******
!
geometry create shape block  &
   block_name = .FRS5_doe_8_LAUL.sideY1_19.beamY_s1_19_b  &
   adams_id = 4093  &
   corner_marker = .FRS5_doe_8_LAUL.sideY1_19.beamY_s1_19_c  &
   diag_corner_coords = 5.3496396327, 1.016, 24.0
!
!--------------------------------- sideY1_20 ----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .FRS5_doe_8_LAUL.ground
!
part create rigid_body name_and_position  &
   part_name = .FRS5_doe_8_LAUL.sideY1_20  &
   adams_id = 20  &
   location = 87.4247087327, 236.37, 159.4369745714  &
   orientation = 0.0d, 90.0d, 123.6791142759d
!
defaults coordinate_system  &
   default_coordinate_system = .FRS5_doe_8_LAUL.sideY1_20
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.sideY1_20.beamY_s1_20a  &
   adams_id = 4431  &
   location = 0.0, 0.0, 0.0  &
   orientation = 71.4112855627d, 180.0d, 0.0d
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.sideY1_20.beamY_s1_19b  &
   adams_id = 4432  &
   location = 0.0, 0.0, 0.0  &
   orientation = 60.8303422006d, 180.0d, 0.0d
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.sideY1_20.beamY_s1_20_c  &
   adams_id = 4433  &
   location = -0.6182660659, -2.6514742421, -12.0  &
   orientation = 66.1207848746d, 0.0d, 0.0d
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.sideY1_20.cm  &
   adams_id = 4434  &
   location = 0.0, 0.0, 0.0  &
   orientation = 336.1207848746d, 0.0d, 0.0d
!
! ****** Floating Markers for current part ******
!
floating_marker create  &
   floating_marker_name = .FRS5_doe_8_LAUL.sideY1_20.FMARKER_4591  &
   adams_id = 4591
!
floating_marker create  &
   floating_marker_name = .FRS5_doe_8_LAUL.sideY1_20.FMARKER_4621  &
   adams_id = 4621
!
floating_marker create  &
   floating_marker_name = .FRS5_doe_8_LAUL.sideY1_20.FMARKER_4651  &
   adams_id = 4651
!
floating_marker create  &
   floating_marker_name = .FRS5_doe_8_LAUL.sideY1_20.FMARKER_4681  &
   adams_id = 4681
!
floating_marker create  &
   floating_marker_name = .FRS5_doe_8_LAUL.sideY1_20.FMARKER_4711  &
   adams_id = 4711
!
part create rigid_body mass_properties  &
   part_name = .FRS5_doe_8_LAUL.sideY1_20  &
   material_type = .FRS5_doe_8_LAUL.steel_4
!
! ****** Graphics for current part ******
!
geometry create shape block  &
   block_name = .FRS5_doe_8_LAUL.sideY1_20.beamY_s1_20_b  &
   adams_id = 19  &
   corner_marker = .FRS5_doe_8_LAUL.sideY1_20.beamY_s1_20_c  &
   diag_corner_coords = 5.3495811369, 1.016, 24.0
!
!--------------------------------- sideY1_21 ----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .FRS5_doe_8_LAUL.ground
!
part create rigid_body name_and_position  &
   part_name = .FRS5_doe_8_LAUL.sideY1_21  &
   adams_id = 21  &
   location = 82.2795781002, 236.37, 157.9702004622  &
   orientation = 0.0d, 90.0d, 125.3558419023d
!
defaults coordinate_system  &
   default_coordinate_system = .FRS5_doe_8_LAUL.sideY1_21
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.sideY1_21.beamY_s1_21a  &
   adams_id = 4435  &
   location = 0.0, 0.0, 0.0  &
   orientation = 81.9268477677d, 180.0d, 0.0d
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.sideY1_21.beamY_s1_20b  &
   adams_id = 4436  &
   location = 0.0, 0.0, 0.0  &
   orientation = 71.4112855627d, 180.0d, 0.0d
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.sideY1_21.beamY_s1_21_c  &
   adams_id = 4437  &
   location = -0.1224410091, -2.7199159627, -12.0  &
   orientation = 76.6691341065d, 0.0d, 0.0d
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.sideY1_21.cm  &
   adams_id = 4438  &
   location = 0.0, 0.0, 0.0  &
   orientation = 346.6691341065d, 0.0d, 0.0d
!
! ****** Floating Markers for current part ******
!
floating_marker create  &
   floating_marker_name = .FRS5_doe_8_LAUL.sideY1_21.FMARKER_4592  &
   adams_id = 4592
!
floating_marker create  &
   floating_marker_name = .FRS5_doe_8_LAUL.sideY1_21.FMARKER_4622  &
   adams_id = 4622
!
floating_marker create  &
   floating_marker_name = .FRS5_doe_8_LAUL.sideY1_21.FMARKER_4652  &
   adams_id = 4652
!
floating_marker create  &
   floating_marker_name = .FRS5_doe_8_LAUL.sideY1_21.FMARKER_4682  &
   adams_id = 4682
!
floating_marker create  &
   floating_marker_name = .FRS5_doe_8_LAUL.sideY1_21.FMARKER_4712  &
   adams_id = 4712
!
part create rigid_body mass_properties  &
   part_name = .FRS5_doe_8_LAUL.sideY1_21  &
   material_type = .FRS5_doe_8_LAUL.steel_4
!
! ****** Graphics for current part ******
!
geometry create shape block  &
   block_name = .FRS5_doe_8_LAUL.sideY1_21.beamY_s1_21_b  &
   adams_id = 4094  &
   corner_marker = .FRS5_doe_8_LAUL.sideY1_21.beamY_s1_21_c  &
   diag_corner_coords = 5.3497179907, 1.016, 24.0
!
!--------------------------------- sideY1_22 ----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .FRS5_doe_8_LAUL.ground
!
part create rigid_body name_and_position  &
   part_name = .FRS5_doe_8_LAUL.sideY1_22  &
   adams_id = 22  &
   location = 77.5615198777, 236.37, 155.4471726985  &
   orientation = 0.0d, 90.0d, 127.0272878777d
!
defaults coordinate_system  &
   default_coordinate_system = .FRS5_doe_8_LAUL.sideY1_22
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.sideY1_22.beamY_s1_22a  &
   adams_id = 4439  &
   location = 0.0, 0.0, 0.0  &
   orientation = 92.5691038513d, 180.0d, 0.0d
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.sideY1_22.beamY_s1_21b  &
   adams_id = 4440  &
   location = 0.0, 0.0, 0.0  &
   orientation = 81.9268477677d, 180.0d, 0.0d
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.sideY1_22.beamY_s1_22_c  &
   adams_id = 4441  &
   location = 0.378984968, -2.6961942148, -12.0  &
   orientation = 87.2480053086d, 0.0d, 0.0d
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.sideY1_22.cm  &
   adams_id = 4442  &
   location = 0.0, 0.0, 0.0  &
   orientation = 357.2480053086d, 0.0d, 0.0d
!
! ****** Floating Markers for current part ******
!
floating_marker create  &
   floating_marker_name = .FRS5_doe_8_LAUL.sideY1_22.FMARKER_4593  &
   adams_id = 4593
!
floating_marker create  &
   floating_marker_name = .FRS5_doe_8_LAUL.sideY1_22.FMARKER_4623  &
   adams_id = 4623
!
floating_marker create  &
   floating_marker_name = .FRS5_doe_8_LAUL.sideY1_22.FMARKER_4653  &
   adams_id = 4653
!
floating_marker create  &
   floating_marker_name = .FRS5_doe_8_LAUL.sideY1_22.FMARKER_4683  &
   adams_id = 4683
!
floating_marker create  &
   floating_marker_name = .FRS5_doe_8_LAUL.sideY1_22.FMARKER_4713  &
   adams_id = 4713
!
part create rigid_body mass_properties  &
   part_name = .FRS5_doe_8_LAUL.sideY1_22  &
   material_type = .FRS5_doe_8_LAUL.steel_4
!
! ****** Graphics for current part ******
!
geometry create shape block  &
   block_name = .FRS5_doe_8_LAUL.sideY1_22.beamY_s1_22_b  &
   adams_id = 4095  &
   corner_marker = .FRS5_doe_8_LAUL.sideY1_22.beamY_s1_22_c  &
   diag_corner_coords = 5.3497771355, 1.016, 24.0
!
!--------------------------------- sideY1_23 ----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .FRS5_doe_8_LAUL.ground
!
part create rigid_body name_and_position  &
   part_name = .FRS5_doe_8_LAUL.sideY1_23  &
   adams_id = 23  &
   location = 73.4836799685, 236.37, 151.9836124825  &
   orientation = 0.0d, 90.0d, 128.485464376d
!
defaults coordinate_system  &
   default_coordinate_system = .FRS5_doe_8_LAUL.sideY1_23
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.sideY1_23.beamY_s1_23a  &
   adams_id = 4443  &
   location = 0.0, 0.0, 0.0  &
   orientation = 103.0784282649d, 180.0d, 0.0d
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.sideY1_23.beamY_s1_22b  &
   adams_id = 4444  &
   location = 0.0, 0.0, 0.0  &
   orientation = 92.5691038513d, 180.0d, 0.0d
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.sideY1_23.beamY_s1_23_c  &
   adams_id = 4445  &
   location = -0.1391771402, -2.7189832491, 12.0  &
   orientation = 97.8236090588d, 180.0d, 0.0d
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.sideY1_23.cm  &
   adams_id = 4446  &
   location = 0.0, 0.0, 0.0  &
   orientation = 7.8236090588d, 0.0d, 0.0d
!
! ****** Floating Markers for current part ******
!
floating_marker create  &
   floating_marker_name = .FRS5_doe_8_LAUL.sideY1_23.FMARKER_4594  &
   adams_id = 4594
!
floating_marker create  &
   floating_marker_name = .FRS5_doe_8_LAUL.sideY1_23.FMARKER_4624  &
   adams_id = 4624
!
floating_marker create  &
   floating_marker_name = .FRS5_doe_8_LAUL.sideY1_23.FMARKER_4654  &
   adams_id = 4654
!
floating_marker create  &
   floating_marker_name = .FRS5_doe_8_LAUL.sideY1_23.FMARKER_4684  &
   adams_id = 4684
!
floating_marker create  &
   floating_marker_name = .FRS5_doe_8_LAUL.sideY1_23.FMARKER_4714  &
   adams_id = 4714
!
part create rigid_body mass_properties  &
   part_name = .FRS5_doe_8_LAUL.sideY1_23  &
   material_type = .FRS5_doe_8_LAUL.steel_4
!
! ****** Graphics for current part ******
!
geometry create shape block  &
   block_name = .FRS5_doe_8_LAUL.sideY1_23.beamY_s1_23_b  &
   adams_id = 4096  &
   corner_marker = .FRS5_doe_8_LAUL.sideY1_23.beamY_s1_23_c  &
   diag_corner_coords = 5.3494583595, 1.016, 24.0
!
!--------------------------------- sideY1_24 ----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .FRS5_doe_8_LAUL.ground
!
part create rigid_body name_and_position  &
   part_name = .FRS5_doe_8_LAUL.sideY1_24  &
   adams_id = 24  &
   location = 70.2051352868, 236.37, 147.7561289778  &
   orientation = 0.0d, 90.0d, 129.7339860835d
!
defaults coordinate_system  &
   default_coordinate_system = .FRS5_doe_8_LAUL.sideY1_24
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.sideY1_24.beamY_s1_24a  &
   adams_id = 4447  &
   location = 0.0, 0.0, 0.0  &
   orientation = 113.6727958809d, 180.0d, 0.0d
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.sideY1_24.beamY_s1_23b  &
   adams_id = 4448  &
   location = 0.0, 0.0, 0.0  &
   orientation = 103.0784282649d, 180.0d, 0.0d
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.sideY1_24.beamY_s1_24_c  &
   adams_id = 4449  &
   location = 0.3611535782, -2.6986344941, 12.0  &
   orientation = 108.3757642599d, 180.0d, 0.0d
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.sideY1_24.cm  &
   adams_id = 4450  &
   location = 0.0, 0.0, 0.0  &
   orientation = 18.3757642599d, 0.0d, 0.0d
!
! ****** Floating Markers for current part ******
!
floating_marker create  &
   floating_marker_name = .FRS5_doe_8_LAUL.sideY1_24.FMARKER_4595  &
   adams_id = 4595
!
floating_marker create  &
   floating_marker_name = .FRS5_doe_8_LAUL.sideY1_24.FMARKER_4625  &
   adams_id = 4625
!
floating_marker create  &
   floating_marker_name = .FRS5_doe_8_LAUL.sideY1_24.FMARKER_4655  &
   adams_id = 4655
!
floating_marker create  &
   floating_marker_name = .FRS5_doe_8_LAUL.sideY1_24.FMARKER_4685  &
   adams_id = 4685
!
floating_marker create  &
   floating_marker_name = .FRS5_doe_8_LAUL.sideY1_24.FMARKER_4715  &
   adams_id = 4715
!
part create rigid_body mass_properties  &
   part_name = .FRS5_doe_8_LAUL.sideY1_24  &
   material_type = .FRS5_doe_8_LAUL.steel_4
!
! ****** Graphics for current part ******
!
geometry create shape block  &
   block_name = .FRS5_doe_8_LAUL.sideY1_24.beamY_s1_24_b  &
   adams_id = 4097  &
   corner_marker = .FRS5_doe_8_LAUL.sideY1_24.beamY_s1_24_c  &
   diag_corner_coords = 5.3497648696, 1.016, 24.0
!
!--------------------------------- sideY1_25 ----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .FRS5_doe_8_LAUL.ground
!
part create rigid_body name_and_position  &
   part_name = .FRS5_doe_8_LAUL.sideY1_25  &
   adams_id = 25  &
   location = 67.8555045961, 236.37, 142.9496665432  &
   orientation = 0.0d, 90.0d, 130.785640036d
!
defaults coordinate_system  &
   default_coordinate_system = .FRS5_doe_8_LAUL.sideY1_25
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.sideY1_25.beamY_s1_25a  &
   adams_id = 4451  &
   location = 0.0, 0.0, 0.0  &
   orientation = 124.2369585591d, 180.0d, 0.0d
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.sideY1_25.beamY_s1_24b  &
   adams_id = 4452  &
   location = 0.0, 0.0, 0.0  &
   orientation = 113.6727958809d, 180.0d, 0.0d
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.sideY1_25.beamY_s1_25_c  &
   adams_id = 4453  &
   location = 0.8503865663, -2.5863307547, 12.0  &
   orientation = 118.9547298934d, 180.0d, 0.0d
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.sideY1_25.cm  &
   adams_id = 124  &
   location = 0.0, 0.0, 0.0  &
   orientation = 28.9547298934d, 0.0d, 0.0d
!
! ****** Floating Markers for current part ******
!
floating_marker create  &
   floating_marker_name = .FRS5_doe_8_LAUL.sideY1_25.FMARKER_4596  &
   adams_id = 4596
!
floating_marker create  &
   floating_marker_name = .FRS5_doe_8_LAUL.sideY1_25.FMARKER_4626  &
   adams_id = 4626
!
floating_marker create  &
   floating_marker_name = .FRS5_doe_8_LAUL.sideY1_25.FMARKER_4656  &
   adams_id = 4656
!
floating_marker create  &
   floating_marker_name = .FRS5_doe_8_LAUL.sideY1_25.FMARKER_4686  &
   adams_id = 4686
!
floating_marker create  &
   floating_marker_name = .FRS5_doe_8_LAUL.sideY1_25.FMARKER_4716  &
   adams_id = 4716
!
part create rigid_body mass_properties  &
   part_name = .FRS5_doe_8_LAUL.sideY1_25  &
   material_type = .FRS5_doe_8_LAUL.steel_4
!
! ****** Graphics for current part ******
!
geometry create shape block  &
   block_name = .FRS5_doe_8_LAUL.sideY1_25.beamY_s1_25_b  &
   adams_id = 4098  &
   corner_marker = .FRS5_doe_8_LAUL.sideY1_25.beamY_s1_25_c  &
   diag_corner_coords = 5.349467295, 1.016, 24.0
!
!--------------------------------- sideY1_26 ----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .FRS5_doe_8_LAUL.ground
!
part create rigid_body name_and_position  &
   part_name = .FRS5_doe_8_LAUL.sideY1_26  &
   adams_id = 26  &
   location = 66.5137034779, 236.37, 137.7710027565  &
   orientation = 0.0d, 90.0d, 131.6609215249d
!
defaults coordinate_system  &
   default_coordinate_system = .FRS5_doe_8_LAUL.sideY1_26
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.sideY1_26.beamY_s1_26a  &
   adams_id = 4454  &
   location = 0.0, 0.0, 0.0  &
   orientation = 134.7697760491d, 180.0d, 0.0d
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.sideY1_26.beamY_s1_25b  &
   adams_id = 125  &
   location = 0.0, 0.0, 0.0  &
   orientation = 124.2369585591d, 180.0d, 0.0d
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.sideY1_26.beamY_s1_26_c  &
   adams_id = 4455  &
   location = 1.3095838579, -2.3870394968, 12.0  &
   orientation = 129.5034971033d, 180.0d, 0.0d
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.sideY1_26.cm  &
   adams_id = 4456  &
   location = 0.0, 0.0, 0.0  &
   orientation = 39.5034971033d, 0.0d, 0.0d
!
! ****** Floating Markers for current part ******
!
floating_marker create  &
   floating_marker_name = .FRS5_doe_8_LAUL.sideY1_26.FMARKER_4597  &
   adams_id = 4597
!
floating_marker create  &
   floating_marker_name = .FRS5_doe_8_LAUL.sideY1_26.FMARKER_4627  &
   adams_id = 4627
!
floating_marker create  &
   floating_marker_name = .FRS5_doe_8_LAUL.sideY1_26.FMARKER_4657  &
   adams_id = 4657
!
floating_marker create  &
   floating_marker_name = .FRS5_doe_8_LAUL.sideY1_26.FMARKER_4687  &
   adams_id = 4687
!
floating_marker create  &
   floating_marker_name = .FRS5_doe_8_LAUL.sideY1_26.FMARKER_4717  &
   adams_id = 4717
!
part create rigid_body mass_properties  &
   part_name = .FRS5_doe_8_LAUL.sideY1_26  &
   material_type = .FRS5_doe_8_LAUL.steel_4
!
! ****** Graphics for current part ******
!
geometry create shape block  &
   block_name = .FRS5_doe_8_LAUL.sideY1_26.beamY_s1_26_b  &
   adams_id = 4099  &
   corner_marker = .FRS5_doe_8_LAUL.sideY1_26.beamY_s1_26_c  &
   diag_corner_coords = 5.3497302511, 1.016, 24.0
!
!--------------------------------- sideY1_27 ----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .FRS5_doe_8_LAUL.ground
!
part create rigid_body name_and_position  &
   part_name = .FRS5_doe_8_LAUL.sideY1_27  &
   adams_id = 368  &
   location = 66.2155401362, 236.37, 132.4294265119  &
   orientation = 0.0d, 90.0d, 132.3872703999d
!
defaults coordinate_system  &
   default_coordinate_system = .FRS5_doe_8_LAUL.sideY1_27
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.sideY1_27.beamY_s1_27a  &
   adams_id = 4457  &
   location = 0.0, 0.0, 0.0  &
   orientation = 145.3068783301d, 180.0d, 0.0d
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.sideY1_27.beamY_s1_26b  &
   adams_id = 4458  &
   location = 0.0, 0.0, 0.0  &
   orientation = 134.7697760491d, 180.0d, 0.0d
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.sideY1_27.beamY_s1_27_c  &
   adams_id = 4459  &
   location = 1.7241765943, -2.1075488836, 12.0  &
   orientation = 140.0386188006d, 180.0d, 0.0d
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.sideY1_27.cm  &
   adams_id = 4460  &
   location = 0.0, 0.0, 0.0  &
   orientation = 50.0386188006d, 180.0d, 0.0d
!
! ****** Floating Markers for current part ******
!
floating_marker create  &
   floating_marker_name = .FRS5_doe_8_LAUL.sideY1_27.FMARKER_4598  &
   adams_id = 4598
!
floating_marker create  &
   floating_marker_name = .FRS5_doe_8_LAUL.sideY1_27.FMARKER_4628  &
   adams_id = 4628
!
floating_marker create  &
   floating_marker_name = .FRS5_doe_8_LAUL.sideY1_27.FMARKER_4658  &
   adams_id = 4658
!
floating_marker create  &
   floating_marker_name = .FRS5_doe_8_LAUL.sideY1_27.FMARKER_4688  &
   adams_id = 4688
!
floating_marker create  &
   floating_marker_name = .FRS5_doe_8_LAUL.sideY1_27.FMARKER_4718  &
   adams_id = 4718
!
part create rigid_body mass_properties  &
   part_name = .FRS5_doe_8_LAUL.sideY1_27  &
   material_type = .FRS5_doe_8_LAUL.steel_4
!
! ****** Graphics for current part ******
!
geometry create shape block  &
   block_name = .FRS5_doe_8_LAUL.sideY1_27.beamY_s1_27_b  &
   adams_id = 4100  &
   corner_marker = .FRS5_doe_8_LAUL.sideY1_27.beamY_s1_27_c  &
   diag_corner_coords = 5.3503208222, 1.016, 24.0
!
!--------------------------------- sideY1_28 ----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .FRS5_doe_8_LAUL.ground
!
part create rigid_body name_and_position  &
   part_name = .FRS5_doe_8_LAUL.sideY1_28  &
   adams_id = 369  &
   location = 66.9608780179, 236.37, 127.1311406861  &
   orientation = 0.0d, 90.0d, 132.9974904112d
!
defaults coordinate_system  &
   default_coordinate_system = .FRS5_doe_8_LAUL.sideY1_28
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.sideY1_28.beamY_s1_28a  &
   adams_id = 4461  &
   location = 0.0, 0.0, 0.0  &
   orientation = 149.6677365257d, 180.0d, 0.0d
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.sideY1_28.beamY_s1_27b  &
   adams_id = 4462  &
   location = 0.0, 0.0, 0.0  &
   orientation = 145.3068783301d, 180.0d, 0.0d
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.sideY1_28.beamY_s1_28_c  &
   adams_id = 4463  &
   location = 1.9859111641, -1.8681177401, 12.0  &
   orientation = 147.4887655793d, 180.0d, 0.0d
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.sideY1_28.cm  &
   adams_id = 4464  &
   location = 0.0, 0.0, 0.0  &
   orientation = 57.4887655793d, 180.0d, 0.0d
!
! ****** Floating Markers for current part ******
!
floating_marker create  &
   floating_marker_name = .FRS5_doe_8_LAUL.sideY1_28.FMARKER_4599  &
   adams_id = 4599
!
floating_marker create  &
   floating_marker_name = .FRS5_doe_8_LAUL.sideY1_28.FMARKER_4629  &
   adams_id = 4629
!
floating_marker create  &
   floating_marker_name = .FRS5_doe_8_LAUL.sideY1_28.FMARKER_4659  &
   adams_id = 4659
!
floating_marker create  &
   floating_marker_name = .FRS5_doe_8_LAUL.sideY1_28.FMARKER_4689  &
   adams_id = 4689
!
floating_marker create  &
   floating_marker_name = .FRS5_doe_8_LAUL.sideY1_28.FMARKER_4719  &
   adams_id = 4719
!
part create rigid_body mass_properties  &
   part_name = .FRS5_doe_8_LAUL.sideY1_28  &
   material_type = .FRS5_doe_8_LAUL.steel_4
!
! ****** Graphics for current part ******
!
geometry create shape block  &
   block_name = .FRS5_doe_8_LAUL.sideY1_28.beamY_s1_28_b  &
   adams_id = 4101  &
   corner_marker = .FRS5_doe_8_LAUL.sideY1_28.beamY_s1_28_c  &
   diag_corner_coords = 5.3574781539, 1.016, 24.0
!
!--------------------------------- sideY1_29 ----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .FRS5_doe_8_LAUL.ground
!
part create rigid_body name_and_position  &
   part_name = .FRS5_doe_8_LAUL.sideY1_29  &
   adams_id = 370  &
   location = 68.1599174525, 236.37, 121.9094457415  &
   orientation = 0.0d, 90.0d, 133.5180919843d
!
defaults coordinate_system  &
   default_coordinate_system = .FRS5_doe_8_LAUL.sideY1_29
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.sideY1_29.beamY_s1_29a  &
   adams_id = 4465  &
   location = 0.0, 0.0, 0.0  &
   orientation = 149.6671964279d, 180.0d, 0.0d
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.sideY1_29.beamY_s1_28b  &
   adams_id = 4466  &
   location = 0.0, 0.0, 0.0  &
   orientation = 149.6677365257d, 180.0d, 0.0d
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.sideY1_29.beamY_s1_29_c  &
   adams_id = 4467  &
   location = 2.0554573372, -1.7912484404, 12.0  &
   orientation = 149.667466479d, 180.0d, 0.0d
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.sideY1_29.cm  &
   adams_id = 4468  &
   location = 0.0, 0.0, 0.0  &
   orientation = 59.667466479d, 180.0d, 0.0d
!
! ****** Floating Markers for current part ******
!
floating_marker create  &
   floating_marker_name = .FRS5_doe_8_LAUL.sideY1_29.FMARKER_4600  &
   adams_id = 4600
!
floating_marker create  &
   floating_marker_name = .FRS5_doe_8_LAUL.sideY1_29.FMARKER_4630  &
   adams_id = 4630
!
floating_marker create  &
   floating_marker_name = .FRS5_doe_8_LAUL.sideY1_29.FMARKER_4660  &
   adams_id = 4660
!
floating_marker create  &
   floating_marker_name = .FRS5_doe_8_LAUL.sideY1_29.FMARKER_4690  &
   adams_id = 4690
!
floating_marker create  &
   floating_marker_name = .FRS5_doe_8_LAUL.sideY1_29.FMARKER_4720  &
   adams_id = 4720
!
part create rigid_body mass_properties  &
   part_name = .FRS5_doe_8_LAUL.sideY1_29  &
   material_type = .FRS5_doe_8_LAUL.steel_4
!
! ****** Graphics for current part ******
!
geometry create shape block  &
   block_name = .FRS5_doe_8_LAUL.sideY1_29.beamY_s1_29_b  &
   adams_id = 4102  &
   corner_marker = .FRS5_doe_8_LAUL.sideY1_29.beamY_s1_29_c  &
   diag_corner_coords = 5.3573918431, 1.016, 24.0
!
!--------------------------------- sideY1_30 ----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .FRS5_doe_8_LAUL.ground
!
part create rigid_body name_and_position  &
   part_name = .FRS5_doe_8_LAUL.sideY1_30  &
   adams_id = 371  &
   location = 69.4025693238, 236.37, 116.6980628805  &
   orientation = 0.0d, 90.0d, 133.9574108974d
!
defaults coordinate_system  &
   default_coordinate_system = .FRS5_doe_8_LAUL.sideY1_30
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.sideY1_30.beamY_s1_30a  &
   adams_id = 4469  &
   location = 0.0, 0.0, 0.0  &
   orientation = 149.6668134763d, 180.0d, 0.0d
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.sideY1_30.beamY_s1_29b  &
   adams_id = 4470  &
   location = 0.0, 0.0, 0.0  &
   orientation = 149.6671964279d, 180.0d, 0.0d
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.sideY1_30.beamY_s1_30_c  &
   adams_id = 4471  &
   location = 2.0555019502, -1.7912995444, 12.0  &
   orientation = 149.6670049497d, 180.0d, 0.0d
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.sideY1_30.cm  &
   adams_id = 4472  &
   location = 0.0, 0.0, 0.0  &
   orientation = 59.6670049497d, 180.0d, 0.0d
!
! ****** Floating Markers for current part ******
!
floating_marker create  &
   floating_marker_name = .FRS5_doe_8_LAUL.sideY1_30.FMARKER_4601  &
   adams_id = 4601
!
floating_marker create  &
   floating_marker_name = .FRS5_doe_8_LAUL.sideY1_30.FMARKER_4631  &
   adams_id = 4631
!
floating_marker create  &
   floating_marker_name = .FRS5_doe_8_LAUL.sideY1_30.FMARKER_4661  &
   adams_id = 4661
!
floating_marker create  &
   floating_marker_name = .FRS5_doe_8_LAUL.sideY1_30.FMARKER_4691  &
   adams_id = 4691
!
floating_marker create  &
   floating_marker_name = .FRS5_doe_8_LAUL.sideY1_30.FMARKER_4721  &
   adams_id = 4721
!
part create rigid_body mass_properties  &
   part_name = .FRS5_doe_8_LAUL.sideY1_30  &
   material_type = .FRS5_doe_8_LAUL.steel_4
!
! ****** Graphics for current part ******
!
geometry create shape block  &
   block_name = .FRS5_doe_8_LAUL.sideY1_30.beamY_s1_30_b  &
   adams_id = 4103  &
   corner_marker = .FRS5_doe_8_LAUL.sideY1_30.beamY_s1_30_c  &
   diag_corner_coords = 5.357528656, 1.016, 24.0
!
!--------------------------------- sideY1_31 ----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .FRS5_doe_8_LAUL.ground
!
part create rigid_body name_and_position  &
   part_name = .FRS5_doe_8_LAUL.sideY1_31  &
   adams_id = 372  &
   location = 70.6815064552, 236.37, 111.4953387584  &
   orientation = 0.0d, 90.0d, 134.3169969271d
!
defaults coordinate_system  &
   default_coordinate_system = .FRS5_doe_8_LAUL.sideY1_31
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.sideY1_31.beamY_s1_31a  &
   adams_id = 4473  &
   location = 0.0, 0.0, 0.0  &
   orientation = 149.6677365257d, 180.0d, 0.0d
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.sideY1_31.beamY_s1_30b  &
   adams_id = 4474  &
   location = 0.0, 0.0, 0.0  &
   orientation = 149.6668134763d, 180.0d, 0.0d
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.sideY1_31.beamY_s1_31_c  &
   adams_id = 4475  &
   location = 2.0554885987, -1.791277104, 12.0  &
   orientation = 149.6672749988d, 180.0d, 0.0d
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.sideY1_31.cm  &
   adams_id = 4476  &
   location = 0.0, 0.0, 0.0  &
   orientation = 59.6672749988d, 180.0d, 0.0d
!
! ****** Floating Markers for current part ******
!
floating_marker create  &
   floating_marker_name = .FRS5_doe_8_LAUL.sideY1_31.FMARKER_4602  &
   adams_id = 4602
!
floating_marker create  &
   floating_marker_name = .FRS5_doe_8_LAUL.sideY1_31.FMARKER_4632  &
   adams_id = 4632
!
floating_marker create  &
   floating_marker_name = .FRS5_doe_8_LAUL.sideY1_31.FMARKER_4662  &
   adams_id = 4662
!
floating_marker create  &
   floating_marker_name = .FRS5_doe_8_LAUL.sideY1_31.FMARKER_4692  &
   adams_id = 4692
!
floating_marker create  &
   floating_marker_name = .FRS5_doe_8_LAUL.sideY1_31.FMARKER_4722  &
   adams_id = 4722
!
part create rigid_body mass_properties  &
   part_name = .FRS5_doe_8_LAUL.sideY1_31  &
   material_type = .FRS5_doe_8_LAUL.steel_4
!
! ****** Graphics for current part ******
!
geometry create shape block  &
   block_name = .FRS5_doe_8_LAUL.sideY1_31.beamY_s1_31_b  &
   adams_id = 4104  &
   corner_marker = .FRS5_doe_8_LAUL.sideY1_31.beamY_s1_31_c  &
   diag_corner_coords = 5.3574781539, 1.016, 24.0
!
!--------------------------------- sideY1_32 ----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .FRS5_doe_8_LAUL.ground
!
part create rigid_body name_and_position  &
   part_name = .FRS5_doe_8_LAUL.sideY1_32  &
   adams_id = 32  &
   location = 71.9895713362, 236.37, 106.2999244014  &
   orientation = 0.0d, 90.0d, 134.598095695d
!
defaults coordinate_system  &
   default_coordinate_system = .FRS5_doe_8_LAUL.sideY1_32
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.sideY1_32.beamY_s1_32a  &
   adams_id = 4477  &
   location = 0.0, 0.0, 0.0  &
   orientation = 149.6677365257d, 180.0d, 0.0d
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.sideY1_32.beamY_s1_31b  &
   adams_id = 4478  &
   location = 0.0, 0.0, 0.0  &
   orientation = 149.6677365257d, 180.0d, 0.0d
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.sideY1_32.beamY_s1_32_c  &
   adams_id = 4479  &
   location = 2.0555030276, -1.7912605466, 12.0  &
   orientation = 149.6677365257d, 180.0d, 0.0d
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.sideY1_32.cm  &
   adams_id = 4480  &
   location = 2.9018317424, 4.9592981147, 0.0  &
   orientation = 329.6667774893d, 0.0d, 0.0d
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.sideY1_32.shackle1a  &
   adams_id = 4481  &
   location = 3.2549, 5.5627, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.sideY1_32.solid_shackle1a_end  &
   adams_id = 4482  &
   location = 3.2549, 5.5627, -12.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
part create rigid_body mass_properties  &
   part_name = .FRS5_doe_8_LAUL.sideY1_32  &
   material_type = .FRS5_doe_8_LAUL.steel_4
!
! ****** Graphics for current part ******
!
geometry create shape cylinder  &
   cylinder_name = .FRS5_doe_8_LAUL.sideY1_32._solid_shackle1a  &
   adams_id = 65  &
   center_marker = .FRS5_doe_8_LAUL.sideY1_32.solid_shackle1a_end  &
   angle_extent = 360.0  &
   length = 24.0  &
   radius = 7.516  &
   side_count_for_body = 20  &
   segment_count_for_ends = 20
!
geometry create shape cylinder  &
   cylinder_name = .FRS5_doe_8_LAUL.sideY1_32._solid_shackle1a_cut  &
   adams_id = 66  &
   center_marker = .FRS5_doe_8_LAUL.sideY1_32.solid_shackle1a_end  &
   angle_extent = 360.0  &
   length = 24.0  &
   radius = 6.5  &
   side_count_for_body = 20  &
   segment_count_for_ends = 20
!
geometry create shape csg  &
   csg_name = .FRS5_doe_8_LAUL.sideY1_32.solid_shackle1a  &
   adams_id = 63  &
   base_object = .FRS5_doe_8_LAUL.sideY1_32._solid_shackle1a  &
   object = .FRS5_doe_8_LAUL.sideY1_32._solid_shackle1a_cut  &
   type = difference
!
geometry create shape block  &
   block_name = .FRS5_doe_8_LAUL.sideY1_32.beamY_s1_32_b  &
   adams_id = 31  &
   corner_marker = .FRS5_doe_8_LAUL.sideY1_32.beamY_s1_32_c  &
   diag_corner_coords = 5.3574781539, 1.016, 24.0
!
geometry create curve circle  &
   circle_name = .FRS5_doe_8_LAUL.sideY1_32.shackle_graphic  &
   adams_id = 4105  &
   center_marker = .FRS5_doe_8_LAUL.sideY1_32.shackle1a  &
   radius = 6.0  &
   segment_count = 20
!
geometry attributes  &
   geometry_name = .FRS5_doe_8_LAUL.sideY1_32.shackle_graphic  &
   color = MAIZE
!
!---------------------------------- sideY2_2 ----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .FRS5_doe_8_LAUL.ground
!
part create rigid_body name_and_position  &
   part_name = .FRS5_doe_8_LAUL.sideY2_2  &
   adams_id = 33  &
   location = 151.661278503, 236.37, 153.2212606689  &
   orientation = 0.0d, 90.0d, 120.0d
!
defaults coordinate_system  &
   default_coordinate_system = .FRS5_doe_8_LAUL.sideY2_2
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.sideY2_2.fix2a  &
   adams_id = 2371  &
   location = -0.4778460969, -0.6027677002, 0.0  &
   orientation = 60.0d, 90.0d, 180.0d
!
marker attributes  &
   marker_name = .FRS5_doe_8_LAUL.sideY2_2.fix2a  &
   color = GREEN
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.sideY2_2.beamY_s2_2a  &
   adams_id = 4483  &
   location = 0.0, 0.0, 0.0  &
   orientation = 141.0964663812d, 0.0d, 0.0d
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.sideY2_2.beamY_s2_2_c  &
   adams_id = 4484  &
   location = 2.6671, -2.15235, -12.0  &
   orientation = 141.0964663812d, 0.0d, 0.0d
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.sideY2_2.cm  &
   adams_id = 4485  &
   location = -0.3190296151, -0.3953278446, 0.0  &
   orientation = 51.0964663812d, 180.0d, 0.0d
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.sideY2_2.MARKER_3  &
   adams_id = 4486  &
   location = -0.3190296151, -0.3953278446, 0.0  &
   orientation = 51.0964663812d, 180.0d, 0.0d
!
part create rigid_body mass_properties  &
   part_name = .FRS5_doe_8_LAUL.sideY2_2  &
   material_type = .FRS5_doe_8_LAUL.steel_4
!
! ****** Graphics for current part ******
!
geometry create shape block  &
   block_name = .FRS5_doe_8_LAUL.sideY2_2.beamY_s2_2_b  &
   adams_id = 32  &
   corner_marker = .FRS5_doe_8_LAUL.sideY2_2.beamY_s2_2_c  &
   diag_corner_coords = 6.8544971902, 1.016, 24.0
!
!---------------------------------- sideY2_3 ----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .FRS5_doe_8_LAUL.ground
!
part create rigid_body name_and_position  &
   part_name = .FRS5_doe_8_LAUL.sideY2_3  &
   adams_id = 34  &
   location = 150.5879907719, 236.37, 146.4512692044  &
   orientation = 0.0d, 90.0d, 119.7713179357d
!
defaults coordinate_system  &
   default_coordinate_system = .FRS5_doe_8_LAUL.sideY2_3
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.sideY2_3.beamY_s2_3a  &
   adams_id = 4487  &
   location = 0.0, 0.0, 0.0  &
   orientation = 141.0966540589d, 0.0d, 0.0d
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.sideY2_3.beamY_s2_2b  &
   adams_id = 4488  &
   location = 0.0, 0.0, 0.0  &
   orientation = 141.0964663812d, 0.0d, 0.0d
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.sideY2_3.beamY_s2_3_c  &
   adams_id = 4489  &
   location = 0.8449236328, -0.6818516942, -12.0  &
   orientation = 141.0965391722d, 0.0d, 0.0d
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.sideY2_3.cm  &
   adams_id = 4490  &
   location = -1.1639527456, 0.2865234443, 0.0  &
   orientation = 51.0965391722d, 180.0d, 0.0d
!
part create rigid_body mass_properties  &
   part_name = .FRS5_doe_8_LAUL.sideY2_3  &
   material_type = .FRS5_doe_8_LAUL.steel_4
!
! ****** Graphics for current part ******
!
geometry create shape block  &
   block_name = .FRS5_doe_8_LAUL.sideY2_3.beamY_s2_3_b  &
   adams_id = 33  &
   corner_marker = .FRS5_doe_8_LAUL.sideY2_3.beamY_s2_3_c  &
   diag_corner_coords = 4.3429348199, 1.016, 24.0
!
!---------------------------------- sideY2_4 ----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .FRS5_doe_8_LAUL.ground
!
part create rigid_body name_and_position  &
   part_name = .FRS5_doe_8_LAUL.sideY2_4  &
   adams_id = 35  &
   location = 149.8913900619, 236.37, 142.1645382627  &
   orientation = 0.0d, 90.0d, 119.5678336379d
!
defaults coordinate_system  &
   default_coordinate_system = .FRS5_doe_8_LAUL.sideY2_4
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.sideY2_4.beamY_s2_4a  &
   adams_id = 4491  &
   location = 0.0, 0.0, 0.0  &
   orientation = 140.8730566328d, 0.0d, 0.0d
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.sideY2_4.beamY_s2_3b  &
   adams_id = 4492  &
   location = 0.0, 0.0, 0.0  &
   orientation = 141.0966540589d, 0.0d, 0.0d
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.sideY2_4.beamY_s2_4_c  &
   adams_id = 4493  &
   location = 2.1926192119, -1.7774319887, -12.0  &
   orientation = 140.9702796591d, 0.0d, 0.0d
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.sideY2_4.cm  &
   adams_id = 4494  &
   location = -0.3198995003, -0.394624264, 0.0  &
   orientation = 50.9702796591d, 180.0d, 0.0d
!
part create rigid_body mass_properties  &
   part_name = .FRS5_doe_8_LAUL.sideY2_4  &
   material_type = .FRS5_doe_8_LAUL.steel_4
!
! ****** Graphics for current part ******
!
geometry create shape block  &
   block_name = .FRS5_doe_8_LAUL.sideY2_4.beamY_s2_4_b  &
   adams_id = 34  &
   corner_marker = .FRS5_doe_8_LAUL.sideY2_4.beamY_s2_4_c  &
   diag_corner_coords = 5.6451194788, 1.016, 24.0
!
!---------------------------------- sideY2_5 ----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .FRS5_doe_8_LAUL.ground
!
part create rigid_body name_and_position  &
   part_name = .FRS5_doe_8_LAUL.sideY2_5  &
   adams_id = 36  &
   location = 148.9383719713, 236.37, 136.6003962606  &
   orientation = 0.0d, 90.0d, 119.2346554819d
!
defaults coordinate_system  &
   default_coordinate_system = .FRS5_doe_8_LAUL.sideY2_5
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.sideY2_5.beamY_s2_5a  &
   adams_id = 4495  &
   location = 0.0, 0.0, 0.0  &
   orientation = 133.5128136197d, 0.0d, 0.0d
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.sideY2_5.beamY_s2_4b  &
   adams_id = 4496  &
   location = 0.0, 0.0, 0.0  &
   orientation = 140.8730566328d, 0.0d, 0.0d
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.sideY2_5.beamY_s2_5_c  &
   adams_id = 4497  &
   location = 2.0678861053, -1.9151803617, -12.0  &
   orientation = 137.1955726d, 0.0d, 0.0d
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.sideY2_5.cm  &
   adams_id = 4498  &
   location = -0.3451849838, -0.3727080989, 0.0  &
   orientation = 47.1955726d, 180.0d, 0.0d
!
part create rigid_body mass_properties  &
   part_name = .FRS5_doe_8_LAUL.sideY2_5  &
   material_type = .FRS5_doe_8_LAUL.steel_4
!
! ****** Graphics for current part ******
!
geometry create shape block  &
   block_name = .FRS5_doe_8_LAUL.sideY2_5.beamY_s2_5_b  &
   adams_id = 35  &
   corner_marker = .FRS5_doe_8_LAUL.sideY2_5.beamY_s2_5_c  &
   diag_corner_coords = 5.6370448863, 1.016, 24.0
!
!---------------------------------- sideY2_6 ----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .FRS5_doe_8_LAUL.ground
!
part create rigid_body name_and_position  &
   part_name = .FRS5_doe_8_LAUL.sideY2_6  &
   adams_id = 37  &
   location = 147.2476352491, 236.37, 131.2228189977  &
   orientation = 0.0d, 90.0d, 118.8179187263d
!
defaults coordinate_system  &
   default_coordinate_system = .FRS5_doe_8_LAUL.sideY2_6
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.sideY2_6.beamY_s2_6a  &
   adams_id = 4499  &
   location = 0.0, 0.0, 0.0  &
   orientation = 122.7371805505d, 0.0d, 0.0d
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.sideY2_6.beamY_s2_5b  &
   adams_id = 166  &
   location = 0.0, 0.0, 0.0  &
   orientation = 133.5128136197d, 0.0d, 0.0d
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.sideY2_6.beamY_s2_6_c  &
   adams_id = 4500  &
   location = 2.1397033794, -1.9035786636, -12.0  &
   orientation = 128.1250294783d, 0.0d, 0.0d
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.sideY2_6.cm  &
   adams_id = 4501  &
   location = 0.0, 0.0, 0.0  &
   orientation = 38.1250294783d, 0.0d, 0.0d
!
part create rigid_body mass_properties  &
   part_name = .FRS5_doe_8_LAUL.sideY2_6  &
   material_type = .FRS5_doe_8_LAUL.steel_4
!
! ****** Graphics for current part ******
!
geometry create shape block  &
   block_name = .FRS5_doe_8_LAUL.sideY2_6.beamY_s2_6_b  &
   adams_id = 36  &
   corner_marker = .FRS5_doe_8_LAUL.sideY2_6.beamY_s2_6_c  &
   diag_corner_coords = 5.6369773035, 1.016, 24.0
!
!---------------------------------- sideY2_7 ----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .FRS5_doe_8_LAUL.ground
!
part create rigid_body name_and_position  &
   part_name = .FRS5_doe_8_LAUL.sideY2_7  &
   adams_id = 38  &
   location = 144.5411599127, 236.37, 126.2779927064  &
   orientation = 0.0d, 90.0d, 118.303346878d
!
defaults coordinate_system  &
   default_coordinate_system = .FRS5_doe_8_LAUL.sideY2_7
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.sideY2_7.beamY_s2_7a  &
   adams_id = 4502  &
   location = 0.0, 0.0, 0.0  &
   orientation = 111.9567476941d, 0.0d, 0.0d
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.sideY2_7.beamY_s2_6b  &
   adams_id = 4503  &
   location = 0.0, 0.0, 0.0  &
   orientation = 122.7371805505d, 0.0d, 0.0d
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.sideY2_7.beamY_s2_7_c  &
   adams_id = 4504  &
   location = 1.7459759106, -2.2701298079, -12.0  &
   orientation = 117.3469677045d, 0.0d, 0.0d
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.sideY2_7.cm  &
   adams_id = 4505  &
   location = 0.0, 0.0, 0.0  &
   orientation = 27.3469677045d, 0.0d, 0.0d
!
part create rigid_body mass_properties  &
   part_name = .FRS5_doe_8_LAUL.sideY2_7  &
   material_type = .FRS5_doe_8_LAUL.steel_4
!
! ****** Graphics for current part ******
!
geometry create shape block  &
   block_name = .FRS5_doe_8_LAUL.sideY2_7.beamY_s2_7_b  &
   adams_id = 37  &
   corner_marker = .FRS5_doe_8_LAUL.sideY2_7.beamY_s2_7_c  &
   diag_corner_coords = 5.6369698332, 1.016, 24.0
!
!---------------------------------- sideY2_8 ----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .FRS5_doe_8_LAUL.ground
!
part create rigid_body name_and_position  &
   part_name = .FRS5_doe_8_LAUL.sideY2_8  &
   adams_id = 39  &
   location = 140.9144859149, 236.37, 121.9624750128  &
   orientation = 0.0d, 90.0d, 117.6777033964d
!
defaults coordinate_system  &
   default_coordinate_system = .FRS5_doe_8_LAUL.sideY2_8
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.sideY2_8.beamY_s2_8a  &
   adams_id = 4506  &
   location = 0.0, 0.0, 0.0  &
   orientation = 103.908115917d, 0.0d, 0.0d
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.sideY2_8.beamY_s2_7b  &
   adams_id = 4507  &
   location = 0.0, 0.0, 0.0  &
   orientation = 111.9567476941d, 0.0d, 0.0d
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.sideY2_8.beamY_s2_8_c  &
   adams_id = 4508  &
   location = 1.3515027867, -2.5264957743, -12.0  &
   orientation = 107.9314403381d, 0.0d, 0.0d
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.sideY2_8.cm  &
   adams_id = 4509  &
   location = 0.0, 0.0, 0.0  &
   orientation = 17.9314403381d, 0.0d, 0.0d
!
part create rigid_body mass_properties  &
   part_name = .FRS5_doe_8_LAUL.sideY2_8  &
   material_type = .FRS5_doe_8_LAUL.steel_4
!
! ****** Graphics for current part ******
!
geometry create shape block  &
   block_name = .FRS5_doe_8_LAUL.sideY2_8.beamY_s2_8_b  &
   adams_id = 38  &
   corner_marker = .FRS5_doe_8_LAUL.sideY2_8.beamY_s2_8_c  &
   diag_corner_coords = 5.6397434977, 1.016, 24.0
!
!---------------------------------- sideY2_9 ----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .FRS5_doe_8_LAUL.ground
!
part create rigid_body name_and_position  &
   part_name = .FRS5_doe_8_LAUL.sideY2_9  &
   adams_id = 40  &
   location = 136.6724757654, 236.37, 118.245834714  &
   orientation = 0.0d, 90.0d, 116.9321691926d
!
defaults coordinate_system  &
   default_coordinate_system = .FRS5_doe_8_LAUL.sideY2_9
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.sideY2_9.beamY_s2_9a  &
   adams_id = 4510  &
   location = 0.0, 0.0, 0.0  &
   orientation = 124.0067145067d, 0.0d, 0.0d
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.sideY2_9.beamY_s2_8b  &
   adams_id = 4511  &
   location = 0.0, 0.0, 0.0  &
   orientation = 103.908115917d, 0.0d, 0.0d
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.sideY2_9.beamY_s2_9_c  &
   adams_id = 4512  &
   location = 1.5974798809, -2.3494657164, -12.0  &
   orientation = 113.9130369796d, 0.0d, 0.0d
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.sideY2_9.cm  &
   adams_id = 4513  &
   location = 0.0, 0.0, 0.0  &
   orientation = 23.9130369796d, 0.0d, 0.0d
!
part create rigid_body mass_properties  &
   part_name = .FRS5_doe_8_LAUL.sideY2_9  &
   material_type = .FRS5_doe_8_LAUL.steel_4
!
! ****** Graphics for current part ******
!
geometry create shape block  &
   block_name = .FRS5_doe_8_LAUL.sideY2_9.beamY_s2_9_b  &
   adams_id = 39  &
   corner_marker = .FRS5_doe_8_LAUL.sideY2_9.beamY_s2_9_c  &
   diag_corner_coords = 5.590659039, 1.016, 24.0
!
!--------------------------------- sideY2_10 ----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .FRS5_doe_8_LAUL.ground
!
part create rigid_body name_and_position  &
   part_name = .FRS5_doe_8_LAUL.sideY2_10  &
   adams_id = 41  &
   location = 133.9212453457, 236.37, 113.378796934  &
   orientation = 0.0d, 90.0d, 116.0799644747d
!
defaults coordinate_system  &
   default_coordinate_system = .FRS5_doe_8_LAUL.sideY2_10
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.sideY2_10.beamY_s2_10a  &
   adams_id = 4514  &
   location = 0.0, 0.0, 0.0  &
   orientation = 151.5761823333d, 0.0d, 0.0d
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.sideY2_10.beamY_s2_9b  &
   adams_id = 4515  &
   location = 0.0, 0.0, 0.0  &
   orientation = 124.0067145067d, 0.0d, 0.0d
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.sideY2_10.beamY_s2_10_c  &
   adams_id = 4516  &
   location = 2.4118902857, -1.5017729562, -12.0  &
   orientation = 137.7917207933d, 0.0d, 0.0d
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.sideY2_10.cm  &
   adams_id = 4517  &
   location = 0.0, 0.0, 0.0  &
   orientation = 47.7917207933d, 180.0d, 0.0d
!
part create rigid_body mass_properties  &
   part_name = .FRS5_doe_8_LAUL.sideY2_10  &
   material_type = .FRS5_doe_8_LAUL.steel_4
!
! ****** Graphics for current part ******
!
geometry create shape block  &
   block_name = .FRS5_doe_8_LAUL.sideY2_10.beamY_s2_10_b  &
   adams_id = 40  &
   corner_marker = .FRS5_doe_8_LAUL.sideY2_10.beamY_s2_10_c  &
   diag_corner_coords = 5.5908756962, 1.016, 24.0
!
!--------------------------------- sideY2_11 ----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .FRS5_doe_8_LAUL.ground
!
part create rigid_body name_and_position  &
   part_name = .FRS5_doe_8_LAUL.sideY2_11  &
   adams_id = 373  &
   location = 133.6474406992, 236.37, 107.7944185294  &
   orientation = 0.0d, 90.0d, 115.1431023128d
!
defaults coordinate_system  &
   default_coordinate_system = .FRS5_doe_8_LAUL.sideY2_11
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.sideY2_11.beamY_s2_11a  &
   adams_id = 4518  &
   location = 0.0, 0.0, 0.0  &
   orientation = 175.989833931d, 0.0d, 0.0d
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.sideY2_11.beamY_s2_10b  &
   adams_id = 4519  &
   location = 0.0, 0.0, 0.0  &
   orientation = 151.5761823333d, 0.0d, 0.0d
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.sideY2_11.beamY_s2_11_c  &
   adams_id = 4520  &
   location = 2.8435237013, -0.2959556941, -12.0  &
   orientation = 163.8226764274d, 0.0d, 0.0d
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.sideY2_11.cm  &
   adams_id = 4521  &
   location = 0.0, 0.0, 0.0  &
   orientation = 73.8226764274d, 180.0d, 0.0d
!
part create rigid_body mass_properties  &
   part_name = .FRS5_doe_8_LAUL.sideY2_11  &
   material_type = .FRS5_doe_8_LAUL.steel_4
!
! ****** Graphics for current part ******
!
geometry create shape block  &
   block_name = .FRS5_doe_8_LAUL.sideY2_11.beamY_s2_11_b  &
   adams_id = 4106  &
   corner_marker = .FRS5_doe_8_LAUL.sideY2_11.beamY_s2_11_c  &
   diag_corner_coords = 5.6267762751, 1.016, 24.0
!
!--------------------------------- sideY2_12 ----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .FRS5_doe_8_LAUL.ground
!
part create rigid_body name_and_position  &
   part_name = .FRS5_doe_8_LAUL.sideY2_12  &
   adams_id = 374  &
   location = 135.6311507006, 236.37, 102.5286613032  &
   orientation = 0.0d, 90.0d, 114.1591761167d
!
defaults coordinate_system  &
   default_coordinate_system = .FRS5_doe_8_LAUL.sideY2_12
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.sideY2_12.beamY_s2_12a  &
   adams_id = 4522  &
   location = 0.0, 0.0, 0.0  &
   orientation = 179.686390111d, 0.0d, 0.0d
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.sideY2_12.beamY_s2_11b  &
   adams_id = 4523  &
   location = 0.0, 0.0, 0.0  &
   orientation = 175.989833931d, 0.0d, 0.0d
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.sideY2_12.beamY_s2_12_c  &
   adams_id = 4524  &
   location = 2.8398251418, 0.4013089697, -12.0  &
   orientation = 177.8411642514d, 0.0d, 0.0d
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.sideY2_12.cm  &
   adams_id = 4525  &
   location = 0.0, 0.0, 0.0  &
   orientation = 87.8411642514d, 180.0d, 0.0d
!
! ****** Floating Markers for current part ******
!
floating_marker create  &
   floating_marker_name = .FRS5_doe_8_LAUL.sideY2_12.FMARKER_4633  &
   adams_id = 4633
!
floating_marker create  &
   floating_marker_name = .FRS5_doe_8_LAUL.sideY2_12.FMARKER_4663  &
   adams_id = 4663
!
floating_marker create  &
   floating_marker_name = .FRS5_doe_8_LAUL.sideY2_12.FMARKER_4603  &
   adams_id = 4603
!
floating_marker create  &
   floating_marker_name = .FRS5_doe_8_LAUL.sideY2_12.FMARKER_4693  &
   adams_id = 4693
!
floating_marker create  &
   floating_marker_name = .FRS5_doe_8_LAUL.sideY2_12.FMARKER_4723  &
   adams_id = 4723
!
part create rigid_body mass_properties  &
   part_name = .FRS5_doe_8_LAUL.sideY2_12  &
   material_type = .FRS5_doe_8_LAUL.steel_4
!
! ****** Graphics for current part ******
!
geometry create shape block  &
   block_name = .FRS5_doe_8_LAUL.sideY2_12.beamY_s2_12_b  &
   adams_id = 4107  &
   corner_marker = .FRS5_doe_8_LAUL.sideY2_12.beamY_s2_12_c  &
   diag_corner_coords = 5.6453845662, 1.016, 24.0
!
!--------------------------------- sideY2_13 ----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .FRS5_doe_8_LAUL.ground
!
part create rigid_body name_and_position  &
   part_name = .FRS5_doe_8_LAUL.sideY2_13  &
   adams_id = 44  &
   location = 137.8683861999, 236.37, 97.3452312781  &
   orientation = 0.0d, 90.0d, 113.1575880558d
!
defaults coordinate_system  &
   default_coordinate_system = .FRS5_doe_8_LAUL.sideY2_13
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.sideY2_13.beamY_s2_13a  &
   adams_id = 4526  &
   location = 0.0, 0.0, 0.0  &
   orientation = 179.686390111d, 0.0d, 0.0d
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.sideY2_13.beamY_s2_12b  &
   adams_id = 4527  &
   location = 0.0, 0.0, 0.0  &
   orientation = 179.686390111d, 0.0d, 0.0d
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.sideY2_13.beamY_s2_13_c  &
   adams_id = 4528  &
   location = 2.8254305369, 0.4925423903, -12.0  &
   orientation = 179.686390111d, 0.0d, 0.0d
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.sideY2_13.cm  &
   adams_id = 4529  &
   location = 0.0, 0.0, 0.0  &
   orientation = 89.686390111d, 180.0d, 0.0d
!
! ****** Floating Markers for current part ******
!
floating_marker create  &
   floating_marker_name = .FRS5_doe_8_LAUL.sideY2_13.FMARKER_4634  &
   adams_id = 4634
!
floating_marker create  &
   floating_marker_name = .FRS5_doe_8_LAUL.sideY2_13.FMARKER_4664  &
   adams_id = 4664
!
floating_marker create  &
   floating_marker_name = .FRS5_doe_8_LAUL.sideY2_13.FMARKER_4694  &
   adams_id = 4694
!
floating_marker create  &
   floating_marker_name = .FRS5_doe_8_LAUL.sideY2_13.FMARKER_4724  &
   adams_id = 4724
!
floating_marker create  &
   floating_marker_name = .FRS5_doe_8_LAUL.sideY2_13.FMARKER_4604  &
   adams_id = 4604
!
part create rigid_body mass_properties  &
   part_name = .FRS5_doe_8_LAUL.sideY2_13  &
   material_type = .FRS5_doe_8_LAUL.steel_4
!
! ****** Graphics for current part ******
!
geometry create shape block  &
   block_name = .FRS5_doe_8_LAUL.sideY2_13.beamY_s2_13_b  &
   adams_id = 43  &
   corner_marker = .FRS5_doe_8_LAUL.sideY2_13.beamY_s2_13_c  &
   diag_corner_coords = 5.6453845662, 1.016, 24.0
!
!--------------------------------- sideY2_14 ----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .FRS5_doe_8_LAUL.ground
!
part create rigid_body name_and_position  &
   part_name = .FRS5_doe_8_LAUL.sideY2_14  &
   adams_id = 45  &
   location = 140.0141182263, 236.37, 92.1232524745  &
   orientation = 0.0d, 90.0d, 112.1434185085d
!
defaults coordinate_system  &
   default_coordinate_system = .FRS5_doe_8_LAUL.sideY2_14
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.sideY2_14.beamY_s2_14a  &
   adams_id = 4530  &
   location = 0.0, 0.0, 0.0  &
   orientation = 174.0209710338d, 0.0d, 0.0d
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.sideY2_14.beamY_s2_13b  &
   adams_id = 4531  &
   location = 0.0, 0.0, 0.0  &
   orientation = 179.686390111d, 0.0d, 0.0d
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.sideY2_14.beamY_s2_14_c  &
   adams_id = 4532  &
   location = 2.8398369655, 0.3528243781, -12.0  &
   orientation = 176.8569345828d, 0.0d, 0.0d
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.sideY2_14.cm  &
   adams_id = 4533  &
   location = 0.0, 0.0, 0.0  &
   orientation = 86.8569345828d, 180.0d, 0.0d
!
! ****** Floating Markers for current part ******
!
floating_marker create  &
   floating_marker_name = .FRS5_doe_8_LAUL.sideY2_14.FMARKER_4635  &
   adams_id = 4635
!
floating_marker create  &
   floating_marker_name = .FRS5_doe_8_LAUL.sideY2_14.FMARKER_4665  &
   adams_id = 4665
!
floating_marker create  &
   floating_marker_name = .FRS5_doe_8_LAUL.sideY2_14.FMARKER_4695  &
   adams_id = 4695
!
floating_marker create  &
   floating_marker_name = .FRS5_doe_8_LAUL.sideY2_14.FMARKER_4725  &
   adams_id = 4725
!
floating_marker create  &
   floating_marker_name = .FRS5_doe_8_LAUL.sideY2_14.FMARKER_4605  &
   adams_id = 4605
!
part create rigid_body mass_properties  &
   part_name = .FRS5_doe_8_LAUL.sideY2_14  &
   material_type = .FRS5_doe_8_LAUL.steel_4
!
! ****** Graphics for current part ******
!
geometry create shape block  &
   block_name = .FRS5_doe_8_LAUL.sideY2_14.beamY_s2_14_b  &
   adams_id = 44  &
   corner_marker = .FRS5_doe_8_LAUL.sideY2_14.beamY_s2_14_c  &
   diag_corner_coords = 5.6324399802, 1.016, 24.0
!
!--------------------------------- sideY2_15 ----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .FRS5_doe_8_LAUL.ground
!
part create rigid_body name_and_position  &
   part_name = .FRS5_doe_8_LAUL.sideY2_15  &
   adams_id = 46  &
   location = 141.5336263164, 236.37, 86.6993796578  &
   orientation = 0.0d, 90.0d, 111.1107500543d
!
defaults coordinate_system  &
   default_coordinate_system = .FRS5_doe_8_LAUL.sideY2_15
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.sideY2_15.beamY_s2_15a  &
   adams_id = 4534  &
   location = 0.0, 0.0, 0.0  &
   orientation = 160.439528245d, 0.0d, 0.0d
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.sideY2_15.beamY_s2_14b  &
   adams_id = 4535  &
   location = 0.0, 0.0, 0.0  &
   orientation = 174.0209710338d, 0.0d, 0.0d
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.sideY2_15.beamY_s2_15_c  &
   adams_id = 4536  &
   location = 2.8583412421, -0.1268970987, -12.0  &
   orientation = 167.2308823611d, 0.0d, 0.0d
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.sideY2_15.cm  &
   adams_id = 4537  &
   location = 0.0, 0.0, 0.0  &
   orientation = 77.2308823611d, 180.0d, 0.0d
!
! ****** Floating Markers for current part ******
!
floating_marker create  &
   floating_marker_name = .FRS5_doe_8_LAUL.sideY2_15.FMARKER_4636  &
   adams_id = 4636
!
floating_marker create  &
   floating_marker_name = .FRS5_doe_8_LAUL.sideY2_15.FMARKER_4666  &
   adams_id = 4666
!
floating_marker create  &
   floating_marker_name = .FRS5_doe_8_LAUL.sideY2_15.FMARKER_4696  &
   adams_id = 4696
!
floating_marker create  &
   floating_marker_name = .FRS5_doe_8_LAUL.sideY2_15.FMARKER_4726  &
   adams_id = 4726
!
floating_marker create  &
   floating_marker_name = .FRS5_doe_8_LAUL.sideY2_15.FMARKER_4606  &
   adams_id = 4606
!
part create rigid_body mass_properties  &
   part_name = .FRS5_doe_8_LAUL.sideY2_15  &
   material_type = .FRS5_doe_8_LAUL.steel_4
!
! ****** Graphics for current part ******
!
geometry create shape block  &
   block_name = .FRS5_doe_8_LAUL.sideY2_15.beamY_s2_15_b  &
   adams_id = 45  &
   corner_marker = .FRS5_doe_8_LAUL.sideY2_15.beamY_s2_15_c  &
   diag_corner_coords = 5.6313953972, 1.016, 24.0
!
!--------------------------------- sideY2_16 ----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .FRS5_doe_8_LAUL.ground
!
part create rigid_body name_and_position  &
   part_name = .FRS5_doe_8_LAUL.sideY2_16  &
   adams_id = 47  &
   location = 141.6336161919, 236.37, 81.0685986551  &
   orientation = 0.0d, 90.0d, 110.0353523028d
!
defaults coordinate_system  &
   default_coordinate_system = .FRS5_doe_8_LAUL.sideY2_16
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.sideY2_16.beamY_s2_16a  &
   adams_id = 4538  &
   location = 0.0, 0.0, 0.0  &
   orientation = 146.7543503168d, 0.0d, 0.0d
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.sideY2_16.beamY_s2_15b  &
   adams_id = 4539  &
   location = 0.0, 0.0, 0.0  &
   orientation = 160.439528245d, 0.0d, 0.0d
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.sideY2_16.beamY_s2_16_c  &
   adams_id = 4540  &
   location = 2.7480472123, -0.7971760039, -12.0  &
   orientation = 153.5967147917d, 0.0d, 0.0d
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.sideY2_16.cm  &
   adams_id = 4541  &
   location = 0.0, 0.0, 0.0  &
   orientation = 63.5967147917d, 180.0d, 0.0d
!
! ****** Floating Markers for current part ******
!
floating_marker create  &
   floating_marker_name = .FRS5_doe_8_LAUL.sideY2_16.FMARKER_4637  &
   adams_id = 4637
!
floating_marker create  &
   floating_marker_name = .FRS5_doe_8_LAUL.sideY2_16.FMARKER_4667  &
   adams_id = 4667
!
floating_marker create  &
   floating_marker_name = .FRS5_doe_8_LAUL.sideY2_16.FMARKER_4697  &
   adams_id = 4697
!
floating_marker create  &
   floating_marker_name = .FRS5_doe_8_LAUL.sideY2_16.FMARKER_4727  &
   adams_id = 4727
!
floating_marker create  &
   floating_marker_name = .FRS5_doe_8_LAUL.sideY2_16.FMARKER_4607  &
   adams_id = 4607
!
part create rigid_body mass_properties  &
   part_name = .FRS5_doe_8_LAUL.sideY2_16  &
   material_type = .FRS5_doe_8_LAUL.steel_4
!
! ****** Graphics for current part ******
!
geometry create shape block  &
   block_name = .FRS5_doe_8_LAUL.sideY2_16.beamY_s2_16_b  &
   adams_id = 46  &
   corner_marker = .FRS5_doe_8_LAUL.sideY2_16.beamY_s2_16_c  &
   diag_corner_coords = 5.6317631564, 1.016, 24.0
!
!--------------------------------- sideY2_17 ----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .FRS5_doe_8_LAUL.ground
!
part create rigid_body name_and_position  &
   part_name = .FRS5_doe_8_LAUL.sideY2_17  &
   adams_id = 48  &
   location = 140.2924159917, 236.37, 75.5985605517  &
   orientation = 0.0d, 90.0d, 108.8888365705d
!
defaults coordinate_system  &
   default_coordinate_system = .FRS5_doe_8_LAUL.sideY2_17
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.sideY2_17.beamY_s2_17a  &
   adams_id = 4542  &
   location = 0.0, 0.0, 0.0  &
   orientation = 133.0307183039d, 0.0d, 0.0d
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.sideY2_17.beamY_s2_16b  &
   adams_id = 4543  &
   location = 0.0, 0.0, 0.0  &
   orientation = 146.7543503168d, 0.0d, 0.0d
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.sideY2_17.beamY_s2_17_c  &
   adams_id = 4544  &
   location = 2.4810319949, -1.4255901244, -12.0  &
   orientation = 139.8924095564d, 0.0d, 0.0d
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.sideY2_17.cm  &
   adams_id = 4545  &
   location = 0.0, 0.0, 0.0  &
   orientation = 49.8924095564d, 180.0d, 0.0d
!
! ****** Floating Markers for current part ******
!
floating_marker create  &
   floating_marker_name = .FRS5_doe_8_LAUL.sideY2_17.FMARKER_4638  &
   adams_id = 4638
!
floating_marker create  &
   floating_marker_name = .FRS5_doe_8_LAUL.sideY2_17.FMARKER_4668  &
   adams_id = 4668
!
floating_marker create  &
   floating_marker_name = .FRS5_doe_8_LAUL.sideY2_17.FMARKER_4698  &
   adams_id = 4698
!
floating_marker create  &
   floating_marker_name = .FRS5_doe_8_LAUL.sideY2_17.FMARKER_4728  &
   adams_id = 4728
!
floating_marker create  &
   floating_marker_name = .FRS5_doe_8_LAUL.sideY2_17.FMARKER_4608  &
   adams_id = 4608
!
part create rigid_body mass_properties  &
   part_name = .FRS5_doe_8_LAUL.sideY2_17  &
   material_type = .FRS5_doe_8_LAUL.steel_4
!
! ****** Graphics for current part ******
!
geometry create shape block  &
   block_name = .FRS5_doe_8_LAUL.sideY2_17.beamY_s2_17_b  &
   adams_id = 47  &
   corner_marker = .FRS5_doe_8_LAUL.sideY2_17.beamY_s2_17_c  &
   diag_corner_coords = 5.631966961, 1.016, 24.0
!
!--------------------------------- sideY2_18 ----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .FRS5_doe_8_LAUL.ground
!
part create rigid_body name_and_position  &
   part_name = .FRS5_doe_8_LAUL.sideY2_18  &
   adams_id = 49  &
   location = 137.5883108337, 236.37, 70.6578428372  &
   orientation = 0.0d, 90.0d, 107.6475782545d
!
defaults coordinate_system  &
   default_coordinate_system = .FRS5_doe_8_LAUL.sideY2_18
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.sideY2_18.beamY_s2_18a  &
   adams_id = 4546  &
   location = 0.0, 0.0, 0.0  &
   orientation = 119.3228940091d, 0.0d, 0.0d
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.sideY2_18.beamY_s2_17b  &
   adams_id = 4547  &
   location = 0.0, 0.0, 0.0  &
   orientation = 133.0307183039d, 0.0d, 0.0d
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.sideY2_18.beamY_s2_18_c  &
   adams_id = 4548  &
   location = 2.0721901674, -1.9730695408, -12.0  &
   orientation = 126.1769910341d, 0.0d, 0.0d
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.sideY2_18.cm  &
   adams_id = 4549  &
   location = 0.0, 0.0, 0.0  &
   orientation = 36.1769910341d, 0.0d, 0.0d
!
! ****** Floating Markers for current part ******
!
floating_marker create  &
   floating_marker_name = .FRS5_doe_8_LAUL.sideY2_18.FMARKER_4639  &
   adams_id = 4639
!
floating_marker create  &
   floating_marker_name = .FRS5_doe_8_LAUL.sideY2_18.FMARKER_4669  &
   adams_id = 4669
!
floating_marker create  &
   floating_marker_name = .FRS5_doe_8_LAUL.sideY2_18.FMARKER_4699  &
   adams_id = 4699
!
floating_marker create  &
   floating_marker_name = .FRS5_doe_8_LAUL.sideY2_18.FMARKER_4729  &
   adams_id = 4729
!
floating_marker create  &
   floating_marker_name = .FRS5_doe_8_LAUL.sideY2_18.FMARKER_4609  &
   adams_id = 4609
!
part create rigid_body mass_properties  &
   part_name = .FRS5_doe_8_LAUL.sideY2_18  &
   material_type = .FRS5_doe_8_LAUL.steel_4
!
! ****** Graphics for current part ******
!
geometry create shape block  &
   block_name = .FRS5_doe_8_LAUL.sideY2_18.beamY_s2_18_b  &
   adams_id = 48  &
   corner_marker = .FRS5_doe_8_LAUL.sideY2_18.beamY_s2_18_c  &
   diag_corner_coords = 5.6316645861, 1.016, 24.0
!
!--------------------------------- sideY2_19 ----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .FRS5_doe_8_LAUL.ground
!
part create rigid_body name_and_position  &
   part_name = .FRS5_doe_8_LAUL.sideY2_19  &
   adams_id = 50  &
   location = 133.6974890669, 236.37, 66.5857960124  &
   orientation = 0.0d, 90.0d, 106.2942956583d
!
defaults coordinate_system  &
   default_coordinate_system = .FRS5_doe_8_LAUL.sideY2_19
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.sideY2_19.beamY_s2_19a  &
   adams_id = 4550  &
   location = 0.0, 0.0, 0.0  &
   orientation = 105.6391896205d, 0.0d, 0.0d
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.sideY2_19.beamY_s2_18b  &
   adams_id = 4551  &
   location = 0.0, 0.0, 0.0  &
   orientation = 119.3228940091d, 0.0d, 0.0d
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.sideY2_19.beamY_s2_19_c  &
   adams_id = 4552  &
   location = 1.5460599705, -2.4074635143, -12.0  &
   orientation = 112.4812138188d, 0.0d, 0.0d
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.sideY2_19.cm  &
   adams_id = 4553  &
   location = 0.0, 0.0, 0.0  &
   orientation = 22.4812138188d, 0.0d, 0.0d
!
! ****** Floating Markers for current part ******
!
floating_marker create  &
   floating_marker_name = .FRS5_doe_8_LAUL.sideY2_19.FMARKER_4640  &
   adams_id = 4640
!
floating_marker create  &
   floating_marker_name = .FRS5_doe_8_LAUL.sideY2_19.FMARKER_4670  &
   adams_id = 4670
!
floating_marker create  &
   floating_marker_name = .FRS5_doe_8_LAUL.sideY2_19.FMARKER_4700  &
   adams_id = 4700
!
floating_marker create  &
   floating_marker_name = .FRS5_doe_8_LAUL.sideY2_19.FMARKER_4730  &
   adams_id = 4730
!
floating_marker create  &
   floating_marker_name = .FRS5_doe_8_LAUL.sideY2_19.FMARKER_4610  &
   adams_id = 4610
!
part create rigid_body mass_properties  &
   part_name = .FRS5_doe_8_LAUL.sideY2_19  &
   material_type = .FRS5_doe_8_LAUL.steel_4
!
! ****** Graphics for current part ******
!
geometry create shape block  &
   block_name = .FRS5_doe_8_LAUL.sideY2_19.beamY_s2_19_b  &
   adams_id = 49  &
   corner_marker = .FRS5_doe_8_LAUL.sideY2_19.beamY_s2_19_c  &
   diag_corner_coords = 5.6313827805, 1.016, 24.0
!
!--------------------------------- sideY2_20 ----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .FRS5_doe_8_LAUL.ground
!
part create rigid_body name_and_position  &
   part_name = .FRS5_doe_8_LAUL.sideY2_20  &
   adams_id = 51  &
   location = 128.8836785121, 236.37, 63.6627775984  &
   orientation = 0.0d, 90.0d, 105.0003839282d
!
defaults coordinate_system  &
   default_coordinate_system = .FRS5_doe_8_LAUL.sideY2_20
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.sideY2_20.beamY_s2_20a  &
   adams_id = 4554  &
   location = 0.0, 0.0, 0.0  &
   orientation = 91.9528788191d, 0.0d, 0.0d
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.sideY2_20.beamY_s2_19b  &
   adams_id = 4555  &
   location = 0.0, 0.0, 0.0  &
   orientation = 105.6391896205d, 0.0d, 0.0d
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.sideY2_20.beamY_s2_20_c  &
   adams_id = 4556  &
   location = 0.9325883607, -2.7048373984, -12.0  &
   orientation = 98.7961026499d, 0.0d, 0.0d
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.sideY2_20.cm  &
   adams_id = 4557  &
   location = 0.0, 0.0, 0.0  &
   orientation = 8.7961026499d, 0.0d, 0.0d
!
! ****** Floating Markers for current part ******
!
floating_marker create  &
   floating_marker_name = .FRS5_doe_8_LAUL.sideY2_20.FMARKER_4641  &
   adams_id = 4641
!
floating_marker create  &
   floating_marker_name = .FRS5_doe_8_LAUL.sideY2_20.FMARKER_4671  &
   adams_id = 4671
!
floating_marker create  &
   floating_marker_name = .FRS5_doe_8_LAUL.sideY2_20.FMARKER_4701  &
   adams_id = 4701
!
floating_marker create  &
   floating_marker_name = .FRS5_doe_8_LAUL.sideY2_20.FMARKER_4731  &
   adams_id = 4731
!
floating_marker create  &
   floating_marker_name = .FRS5_doe_8_LAUL.sideY2_20.FMARKER_4611  &
   adams_id = 4611
!
part create rigid_body mass_properties  &
   part_name = .FRS5_doe_8_LAUL.sideY2_20  &
   material_type = .FRS5_doe_8_LAUL.steel_4
!
! ****** Graphics for current part ******
!
geometry create shape block  &
   block_name = .FRS5_doe_8_LAUL.sideY2_20.beamY_s2_20_b  &
   adams_id = 50  &
   corner_marker = .FRS5_doe_8_LAUL.sideY2_20.beamY_s2_20_c  &
   diag_corner_coords = 5.6312706923, 1.016, 24.0
!
!--------------------------------- sideY2_21 ----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .FRS5_doe_8_LAUL.ground
!
part create rigid_body name_and_position  &
   part_name = .FRS5_doe_8_LAUL.sideY2_21  &
   adams_id = 375  &
   location = 123.4813381552, 236.37, 62.0724701035  &
   orientation = 0.0d, 90.0d, 103.9375728752d
!
defaults coordinate_system  &
   default_coordinate_system = .FRS5_doe_8_LAUL.sideY2_21
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.sideY2_21.beamY_s2_21a  &
   adams_id = 4558  &
   location = 0.0, 0.0, 0.0  &
   orientation = 78.2698506727d, 0.0d, 0.0d
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.sideY2_21.beamY_s2_20b  &
   adams_id = 4559  &
   location = 0.0, 0.0, 0.0  &
   orientation = 91.9528788191d, 0.0d, 0.0d
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.sideY2_21.beamY_s2_21_c  &
   adams_id = 4560  &
   location = -0.7461156024, -2.7622179155, 12.0  &
   orientation = 85.1112195335d, 180.0d, 0.0d
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.sideY2_21.cm  &
   adams_id = 219  &
   location = 0.0, 0.0, 0.0  &
   orientation = 355.1112195335d, 0.0d, 0.0d
!
! ****** Floating Markers for current part ******
!
floating_marker create  &
   floating_marker_name = .FRS5_doe_8_LAUL.sideY2_21.FMARKER_4642  &
   adams_id = 4642
!
floating_marker create  &
   floating_marker_name = .FRS5_doe_8_LAUL.sideY2_21.FMARKER_4672  &
   adams_id = 4672
!
floating_marker create  &
   floating_marker_name = .FRS5_doe_8_LAUL.sideY2_21.FMARKER_4702  &
   adams_id = 4702
!
floating_marker create  &
   floating_marker_name = .FRS5_doe_8_LAUL.sideY2_21.FMARKER_4732  &
   adams_id = 4732
!
floating_marker create  &
   floating_marker_name = .FRS5_doe_8_LAUL.sideY2_21.FMARKER_4612  &
   adams_id = 4612
!
part create rigid_body mass_properties  &
   part_name = .FRS5_doe_8_LAUL.sideY2_21  &
   material_type = .FRS5_doe_8_LAUL.steel_4
!
! ****** Graphics for current part ******
!
geometry create shape block  &
   block_name = .FRS5_doe_8_LAUL.sideY2_21.beamY_s2_21_b  &
   adams_id = 4108  &
   corner_marker = .FRS5_doe_8_LAUL.sideY2_21.beamY_s2_21_c  &
   diag_corner_coords = 5.6315086096, 1.016, 24.0
!
!--------------------------------- sideY2_22 ----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .FRS5_doe_8_LAUL.ground
!
part create rigid_body name_and_position  &
   part_name = .FRS5_doe_8_LAUL.sideY2_22  &
   adams_id = 53  &
   location = 117.8522997685, 236.37, 61.8989895428  &
   orientation = 0.0d, 90.0d, 103.0864053887d
!
defaults coordinate_system  &
   default_coordinate_system = .FRS5_doe_8_LAUL.sideY2_22
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.sideY2_22.beamY_s2_22a  &
   adams_id = 4561  &
   location = 0.0, 0.0, 0.0  &
   orientation = 64.5833681504d, 0.0d, 0.0d
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.sideY2_22.beamY_s2_21b  &
   adams_id = 220  &
   location = 0.0, 0.0, 0.0  &
   orientation = 78.2698506727d, 0.0d, 0.0d
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.sideY2_22.beamY_s2_22_c  &
   adams_id = 4562  &
   location = -1.378487424, -2.5074756114, 12.0  &
   orientation = 71.4263654681d, 180.0d, 0.0d
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.sideY2_22.cm  &
   adams_id = 4563  &
   location = 0.0, 0.0, 0.0  &
   orientation = 341.4263654681d, 0.0d, 0.0d
!
! ****** Floating Markers for current part ******
!
floating_marker create  &
   floating_marker_name = .FRS5_doe_8_LAUL.sideY2_22.FMARKER_4643  &
   adams_id = 4643
!
floating_marker create  &
   floating_marker_name = .FRS5_doe_8_LAUL.sideY2_22.FMARKER_4673  &
   adams_id = 4673
!
floating_marker create  &
   floating_marker_name = .FRS5_doe_8_LAUL.sideY2_22.FMARKER_4703  &
   adams_id = 4703
!
floating_marker create  &
   floating_marker_name = .FRS5_doe_8_LAUL.sideY2_22.FMARKER_4733  &
   adams_id = 4733
!
floating_marker create  &
   floating_marker_name = .FRS5_doe_8_LAUL.sideY2_22.FMARKER_4613  &
   adams_id = 4613
!
part create rigid_body mass_properties  &
   part_name = .FRS5_doe_8_LAUL.sideY2_22  &
   material_type = .FRS5_doe_8_LAUL.steel_4
!
! ****** Graphics for current part ******
!
geometry create shape block  &
   block_name = .FRS5_doe_8_LAUL.sideY2_22.beamY_s2_22_b  &
   adams_id = 4109  &
   corner_marker = .FRS5_doe_8_LAUL.sideY2_22.beamY_s2_22_c  &
   diag_corner_coords = 5.6319082095, 1.016, 24.0
!
!--------------------------------- sideY2_23 ----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .FRS5_doe_8_LAUL.ground
!
part create rigid_body name_and_position  &
   part_name = .FRS5_doe_8_LAUL.sideY2_23  &
   adams_id = 54  &
   location = 112.3575939202, 236.37, 63.1352364994  &
   orientation = 0.0d, 90.0d, 102.4140429847d
!
defaults coordinate_system  &
   default_coordinate_system = .FRS5_doe_8_LAUL.sideY2_23
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.sideY2_23.beamY_s2_23a  &
   adams_id = 4564  &
   location = 0.0, 0.0, 0.0  &
   orientation = 52.6986293688d, 0.0d, 0.0d
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.sideY2_23.beamY_s2_22b  &
   adams_id = 4565  &
   location = 0.0, 0.0, 0.0  &
   orientation = 64.5833681504d, 0.0d, 0.0d
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.sideY2_23.beamY_s2_23_c  &
   adams_id = 4566  &
   location = -1.9017632746, -2.1439769051, 12.0  &
   orientation = 58.6361783338d, 180.0d, 0.0d
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.sideY2_23.cm  &
   adams_id = 4567  &
   location = 0.0, 0.0, 0.0  &
   orientation = 328.6361783338d, 0.0d, 0.0d
!
! ****** Floating Markers for current part ******
!
floating_marker create  &
   floating_marker_name = .FRS5_doe_8_LAUL.sideY2_23.FMARKER_4644  &
   adams_id = 4644
!
floating_marker create  &
   floating_marker_name = .FRS5_doe_8_LAUL.sideY2_23.FMARKER_4674  &
   adams_id = 4674
!
floating_marker create  &
   floating_marker_name = .FRS5_doe_8_LAUL.sideY2_23.FMARKER_4704  &
   adams_id = 4704
!
floating_marker create  &
   floating_marker_name = .FRS5_doe_8_LAUL.sideY2_23.FMARKER_4734  &
   adams_id = 4734
!
floating_marker create  &
   floating_marker_name = .FRS5_doe_8_LAUL.sideY2_23.FMARKER_4614  &
   adams_id = 4614
!
part create rigid_body mass_properties  &
   part_name = .FRS5_doe_8_LAUL.sideY2_23  &
   material_type = .FRS5_doe_8_LAUL.steel_4
!
! ****** Graphics for current part ******
!
geometry create shape block  &
   block_name = .FRS5_doe_8_LAUL.sideY2_23.beamY_s2_23_b  &
   adams_id = 53  &
   corner_marker = .FRS5_doe_8_LAUL.sideY2_23.beamY_s2_23_c  &
   diag_corner_coords = 5.6410199512, 1.016, 24.0
!
!--------------------------------- sideY2_24 ----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .FRS5_doe_8_LAUL.ground
!
part create rigid_body name_and_position  &
   part_name = .FRS5_doe_8_LAUL.sideY2_24  &
   adams_id = 55  &
   location = 107.2518533361, 236.37, 65.5339625646  &
   orientation = 0.0d, 90.0d, 101.8792959802d
!
defaults coordinate_system  &
   default_coordinate_system = .FRS5_doe_8_LAUL.sideY2_24
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.sideY2_24.beamY_s2_24a  &
   adams_id = 4568  &
   location = 0.0, 0.0, 0.0  &
   orientation = 46.7024772183d, 0.0d, 0.0d
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.sideY2_24.beamY_s2_23b  &
   adams_id = 4569  &
   location = 0.0, 0.0, 0.0  &
   orientation = 52.6986293688d, 0.0d, 0.0d
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.sideY2_24.beamY_s2_24_c  &
   adams_id = 4570  &
   location = -2.2124026398, -1.8233571131, 12.0  &
   orientation = 49.6999861756d, 180.0d, 0.0d
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.sideY2_24.cm  &
   adams_id = 4571  &
   location = 0.0, 0.0, 0.0  &
   orientation = 319.6999861756d, 0.0d, 0.0d
!
! ****** Floating Markers for current part ******
!
floating_marker create  &
   floating_marker_name = .FRS5_doe_8_LAUL.sideY2_24.FMARKER_4645  &
   adams_id = 4645
!
floating_marker create  &
   floating_marker_name = .FRS5_doe_8_LAUL.sideY2_24.FMARKER_4675  &
   adams_id = 4675
!
floating_marker create  &
   floating_marker_name = .FRS5_doe_8_LAUL.sideY2_24.FMARKER_4705  &
   adams_id = 4705
!
floating_marker create  &
   floating_marker_name = .FRS5_doe_8_LAUL.sideY2_24.FMARKER_4735  &
   adams_id = 4735
!
floating_marker create  &
   floating_marker_name = .FRS5_doe_8_LAUL.sideY2_24.FMARKER_4615  &
   adams_id = 4615
!
part create rigid_body mass_properties  &
   part_name = .FRS5_doe_8_LAUL.sideY2_24  &
   material_type = .FRS5_doe_8_LAUL.steel_4
!
! ****** Graphics for current part ******
!
geometry create shape block  &
   block_name = .FRS5_doe_8_LAUL.sideY2_24.beamY_s2_24_b  &
   adams_id = 4110  &
   corner_marker = .FRS5_doe_8_LAUL.sideY2_24.beamY_s2_24_c  &
   diag_corner_coords = 5.6431525241, 1.016, 24.0
!
!--------------------------------- sideY2_25 ----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .FRS5_doe_8_LAUL.ground
!
part create rigid_body name_and_position  &
   part_name = .FRS5_doe_8_LAUL.sideY2_25  &
   adams_id = 56  &
   location = 102.4474436101, 236.37, 68.4943606918  &
   orientation = 0.0d, 90.0d, 101.45010065d
!
defaults coordinate_system  &
   default_coordinate_system = .FRS5_doe_8_LAUL.sideY2_25
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.sideY2_25.beamY_s2_25a  &
   adams_id = 4572  &
   location = 0.0, 0.0, 0.0  &
   orientation = 41.1467645057d, 0.0d, 0.0d
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.sideY2_25.beamY_s2_24b  &
   adams_id = 4573  &
   location = 0.0, 0.0, 0.0  &
   orientation = 46.7024772183d, 0.0d, 0.0d
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.sideY2_25.beamY_s2_25_c  &
   adams_id = 4574  &
   location = -2.3846329732, -1.5914514054, 12.0  &
   orientation = 43.9246352324d, 180.0d, 0.0d
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.sideY2_25.cm  &
   adams_id = 4575  &
   location = 0.0, 0.0, 0.0  &
   orientation = 133.9246352324d, 180.0d, 0.0d
!
! ****** Floating Markers for current part ******
!
floating_marker create  &
   floating_marker_name = .FRS5_doe_8_LAUL.sideY2_25.FMARKER_4646  &
   adams_id = 4646
!
floating_marker create  &
   floating_marker_name = .FRS5_doe_8_LAUL.sideY2_25.FMARKER_4676  &
   adams_id = 4676
!
floating_marker create  &
   floating_marker_name = .FRS5_doe_8_LAUL.sideY2_25.FMARKER_4706  &
   adams_id = 4706
!
floating_marker create  &
   floating_marker_name = .FRS5_doe_8_LAUL.sideY2_25.FMARKER_4736  &
   adams_id = 4736
!
floating_marker create  &
   floating_marker_name = .FRS5_doe_8_LAUL.sideY2_25.FMARKER_4616  &
   adams_id = 4616
!
part create rigid_body mass_properties  &
   part_name = .FRS5_doe_8_LAUL.sideY2_25  &
   material_type = .FRS5_doe_8_LAUL.steel_4
!
! ****** Graphics for current part ******
!
geometry create shape block  &
   block_name = .FRS5_doe_8_LAUL.sideY2_25.beamY_s2_25_b  &
   adams_id = 4111  &
   corner_marker = .FRS5_doe_8_LAUL.sideY2_25.beamY_s2_25_c  &
   diag_corner_coords = 5.643094184, 1.016, 24.0
!
!--------------------------------- sideY2_26 ----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .FRS5_doe_8_LAUL.ground
!
part create rigid_body name_and_position  &
   part_name = .FRS5_doe_8_LAUL.sideY2_26  &
   adams_id = 57  &
   location = 97.9753651767, 236.37, 71.9361660833  &
   orientation = 0.0d, 90.0d, 101.1029325865d
!
defaults coordinate_system  &
   default_coordinate_system = .FRS5_doe_8_LAUL.sideY2_26
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.sideY2_26.beamY_s2_26a  &
   adams_id = 4576  &
   location = 0.0, 0.0, 0.0  &
   orientation = 35.594332178d, 0.0d, 0.0d
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.sideY2_26.beamY_s2_25b  &
   adams_id = 4577  &
   location = 0.0, 0.0, 0.0  &
   orientation = 41.1467645057d, 0.0d, 0.0d
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.sideY2_26.beamY_s2_26_c  &
   adams_id = 4578  &
   location = -2.5274527346, -1.3531717037, 12.0  &
   orientation = 38.3705571547d, 180.0d, 0.0d
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.sideY2_26.cm  &
   adams_id = 4579  &
   location = 0.0, 0.0, 0.0  &
   orientation = 128.3705571547d, 180.0d, 0.0d
!
! ****** Floating Markers for current part ******
!
floating_marker create  &
   floating_marker_name = .FRS5_doe_8_LAUL.sideY2_26.FMARKER_4647  &
   adams_id = 4647
!
floating_marker create  &
   floating_marker_name = .FRS5_doe_8_LAUL.sideY2_26.FMARKER_4677  &
   adams_id = 4677
!
floating_marker create  &
   floating_marker_name = .FRS5_doe_8_LAUL.sideY2_26.FMARKER_4707  &
   adams_id = 4707
!
floating_marker create  &
   floating_marker_name = .FRS5_doe_8_LAUL.sideY2_26.FMARKER_4737  &
   adams_id = 4737
!
floating_marker create  &
   floating_marker_name = .FRS5_doe_8_LAUL.sideY2_26.FMARKER_4617  &
   adams_id = 4617
!
part create rigid_body mass_properties  &
   part_name = .FRS5_doe_8_LAUL.sideY2_26  &
   material_type = .FRS5_doe_8_LAUL.steel_4
!
! ****** Graphics for current part ******
!
geometry create shape block  &
   block_name = .FRS5_doe_8_LAUL.sideY2_26.beamY_s2_26_b  &
   adams_id = 4112  &
   corner_marker = .FRS5_doe_8_LAUL.sideY2_26.beamY_s2_26_c  &
   diag_corner_coords = 5.6430583853, 1.016, 24.0
!
!--------------------------------- sideY2_27 ----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .FRS5_doe_8_LAUL.ground
!
part create rigid_body name_and_position  &
   part_name = .FRS5_doe_8_LAUL.sideY2_27  &
   adams_id = 58  &
   location = 93.8786555253, 236.37, 75.8171446743  &
   orientation = 0.0d, 90.0d, 100.8142715243d
!
defaults coordinate_system  &
   default_coordinate_system = .FRS5_doe_8_LAUL.sideY2_27
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.sideY2_27.beamY_s2_27a  &
   adams_id = 4580  &
   location = 0.0, 0.0, 0.0  &
   orientation = 30.0394472137d, 0.0d, 0.0d
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.sideY2_27.beamY_s2_26b  &
   adams_id = 4581  &
   location = 0.0, 0.0, 0.0  &
   orientation = 35.594332178d, 0.0d, 0.0d
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.sideY2_27.beamY_s2_27_c  &
   adams_id = 239  &
   location = -2.6465519846, -1.1022214376, 12.0  &
   orientation = 32.8168863335d, 180.0d, 0.0d
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.sideY2_27.cm  &
   adams_id = 240  &
   location = 0.0, 0.0, 0.0  &
   orientation = 122.8168863335d, 180.0d, 0.0d
!
! ****** Floating Markers for current part ******
!
floating_marker create  &
   floating_marker_name = .FRS5_doe_8_LAUL.sideY2_27.FMARKER_4648  &
   adams_id = 4648
!
floating_marker create  &
   floating_marker_name = .FRS5_doe_8_LAUL.sideY2_27.FMARKER_4678  &
   adams_id = 4678
!
floating_marker create  &
   floating_marker_name = .FRS5_doe_8_LAUL.sideY2_27.FMARKER_4708  &
   adams_id = 4708
!
floating_marker create  &
   floating_marker_name = .FRS5_doe_8_LAUL.sideY2_27.FMARKER_4738  &
   adams_id = 4738
!
floating_marker create  &
   floating_marker_name = .FRS5_doe_8_LAUL.sideY2_27.FMARKER_4618  &
   adams_id = 4618
!
part create rigid_body mass_properties  &
   part_name = .FRS5_doe_8_LAUL.sideY2_27  &
   material_type = .FRS5_doe_8_LAUL.steel_4
!
! ****** Graphics for current part ******
!
geometry create shape block  &
   block_name = .FRS5_doe_8_LAUL.sideY2_27.beamY_s2_27_b  &
   adams_id = 4113  &
   corner_marker = .FRS5_doe_8_LAUL.sideY2_27.beamY_s2_27_c  &
   diag_corner_coords = 5.6430720375, 1.016, 24.0
!
!--------------------------------- sideY2_28 ----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .FRS5_doe_8_LAUL.ground
!
part create rigid_body name_and_position  &
   part_name = .FRS5_doe_8_LAUL.sideY2_28  &
   adams_id = 59  &
   location = 90.196917611, 236.37, 80.0938190423  &
   orientation = 0.0d, 90.0d, 100.560213716d
!
defaults coordinate_system  &
   default_coordinate_system = .FRS5_doe_8_LAUL.sideY2_28
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.sideY2_28.beamY_s2_28a  &
   adams_id = 4582  &
   location = 0.0, 0.0, 0.0  &
   orientation = 24.4849609982d, 0.0d, 0.0d
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.sideY2_28.beamY_s2_27b  &
   adams_id = 4583  &
   location = 0.0, 0.0, 0.0  &
   orientation = 30.0394472137d, 0.0d, 0.0d
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.sideY2_28.beamY_s2_28_c  &
   adams_id = 4584  &
   location = -2.7408191881, -0.8408729857, 12.0  &
   orientation = 27.2622016887d, 180.0d, 0.0d
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.sideY2_28.cm  &
   adams_id = 4585  &
   location = 0.0, 0.0, 0.0  &
   orientation = 117.2622016887d, 180.0d, 0.0d
!
! ****** Floating Markers for current part ******
!
floating_marker create  &
   floating_marker_name = .FRS5_doe_8_LAUL.sideY2_28.FMARKER_4649  &
   adams_id = 4649
!
floating_marker create  &
   floating_marker_name = .FRS5_doe_8_LAUL.sideY2_28.FMARKER_4679  &
   adams_id = 4679
!
floating_marker create  &
   floating_marker_name = .FRS5_doe_8_LAUL.sideY2_28.FMARKER_4709  &
   adams_id = 4709
!
floating_marker create  &
   floating_marker_name = .FRS5_doe_8_LAUL.sideY2_28.FMARKER_4739  &
   adams_id = 4739
!
floating_marker create  &
   floating_marker_name = .FRS5_doe_8_LAUL.sideY2_28.FMARKER_4619  &
   adams_id = 4619
!
part create rigid_body mass_properties  &
   part_name = .FRS5_doe_8_LAUL.sideY2_28  &
   material_type = .FRS5_doe_8_LAUL.steel_4
!
! ****** Graphics for current part ******
!
geometry create shape block  &
   block_name = .FRS5_doe_8_LAUL.sideY2_28.beamY_s2_28_b  &
   adams_id = 58  &
   corner_marker = .FRS5_doe_8_LAUL.sideY2_28.beamY_s2_28_c  &
   diag_corner_coords = 5.643081853, 1.016, 24.0
!
!--------------------------------- sideY2_29 ----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .FRS5_doe_8_LAUL.ground
!
part create rigid_body name_and_position  &
   part_name = .FRS5_doe_8_LAUL.sideY2_29  &
   adams_id = 60  &
   location = 86.9663115785, 236.37, 84.7207423039  &
   orientation = 0.0d, 90.0d, 100.3166350169d
!
defaults coordinate_system  &
   default_coordinate_system = .FRS5_doe_8_LAUL.sideY2_29
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.sideY2_29.beamY_s2_29a  &
   adams_id = 4586  &
   location = 0.0, 0.0, 0.0  &
   orientation = 18.9306813392d, 0.0d, 0.0d
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.sideY2_29.beamY_s2_28b  &
   adams_id = 4587  &
   location = 0.0, 0.0, 0.0  &
   orientation = 24.4849609982d, 0.0d, 0.0d
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.sideY2_29.beamY_s2_29_c  &
   adams_id = 4588  &
   location = -2.8094092588, -0.5716657912, 12.0  &
   orientation = 21.70778408d, 180.0d, 0.0d
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.sideY2_29.cm  &
   adams_id = 4589  &
   location = 0.0, 0.0, 0.0  &
   orientation = 111.70778408d, 180.0d, 0.0d
!
! ****** Floating Markers for current part ******
!
floating_marker create  &
   floating_marker_name = .FRS5_doe_8_LAUL.sideY2_29.FMARKER_4650  &
   adams_id = 4650
!
floating_marker create  &
   floating_marker_name = .FRS5_doe_8_LAUL.sideY2_29.FMARKER_4680  &
   adams_id = 4680
!
floating_marker create  &
   floating_marker_name = .FRS5_doe_8_LAUL.sideY2_29.FMARKER_4710  &
   adams_id = 4710
!
floating_marker create  &
   floating_marker_name = .FRS5_doe_8_LAUL.sideY2_29.FMARKER_4740  &
   adams_id = 4740
!
floating_marker create  &
   floating_marker_name = .FRS5_doe_8_LAUL.sideY2_29.FMARKER_4620  &
   adams_id = 4620
!
part create rigid_body mass_properties  &
   part_name = .FRS5_doe_8_LAUL.sideY2_29  &
   material_type = .FRS5_doe_8_LAUL.steel_4
!
! ****** Graphics for current part ******
!
geometry create shape block  &
   block_name = .FRS5_doe_8_LAUL.sideY2_29.beamY_s2_29_b  &
   adams_id = 59  &
   corner_marker = .FRS5_doe_8_LAUL.sideY2_29.beamY_s2_29_c  &
   diag_corner_coords = 5.6432324638, 1.016, 24.0
!
!--------------------------------- sideY2_30 ----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .FRS5_doe_8_LAUL.ground
!
part create rigid_body name_and_position  &
   part_name = .FRS5_doe_8_LAUL.sideY2_30  &
   adams_id = 61  &
   location = 84.2199827581, 236.37, 89.6507138801  &
   orientation = 0.0d, 90.0d, 100.0593400452d
!
defaults coordinate_system  &
   default_coordinate_system = .FRS5_doe_8_LAUL.sideY2_30
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.sideY2_30.beamY_s2_30a  &
   adams_id = 4590  &
   location = 0.0, 0.0, 0.0  &
   orientation = 18.9306813392d, 0.0d, 0.0d
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.sideY2_30.beamY_s2_29b  &
   adams_id = 250  &
   location = 0.0, 0.0, 0.0  &
   orientation = 18.9306813392d, 0.0d, 0.0d
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.sideY2_30.beamY_s2_30_c  &
   adams_id = 251  &
   location = -2.5041926124, -1.3959231784, -12.0  &
   orientation = 18.9306813392d, 0.0d, 0.0d
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.sideY2_30.cm  &
   adams_id = 252  &
   location = -1.6316828173, 5.4748418736, 0.0  &
   orientation = 16.4209777369d, 0.0d, 0.0d
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.sideY2_30.shackle2a  &
   adams_id = 253  &
   location = -1.8408, 6.1765, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .FRS5_doe_8_LAUL.sideY2_30.solid_shackle2a_end  &
   adams_id = 254  &
   location = -1.8408, 6.1765, -12.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
part create rigid_body mass_properties  &
   part_name = .FRS5_doe_8_LAUL.sideY2_30  &
   material_type = .FRS5_doe_8_LAUL.steel_4
!
! ****** Graphics for current part ******
!
geometry create shape cylinder  &
   cylinder_name = .FRS5_doe_8_LAUL.sideY2_30._solid_shackle2a  &
   adams_id = 67  &
   center_marker = .FRS5_doe_8_LAUL.sideY2_30.solid_shackle2a_end  &
   angle_extent = 360.0  &
   length = 24.0  &
   radius = 7.516  &
   side_count_for_body = 20  &
   segment_count_for_ends = 20
!
geometry create shape cylinder  &
   cylinder_name = .FRS5_doe_8_LAUL.sideY2_30._solid_shackle2a_cut  &
   adams_id = 68  &
   center_marker = .FRS5_doe_8_LAUL.sideY2_30.solid_shackle2a_end  &
   angle_extent = 360.0  &
   length = 24.0  &
   radius = 6.5  &
   side_count_for_body = 20  &
   segment_count_for_ends = 20
!
geometry create shape csg  &
   csg_name = .FRS5_doe_8_LAUL.sideY2_30.solid_shackle2a  &
   adams_id = 64  &
   base_object = .FRS5_doe_8_LAUL.sideY2_30._solid_shackle2a  &
   object = .FRS5_doe_8_LAUL.sideY2_30._solid_shackle2a_cut  &
   type = difference
!
geometry create shape block  &
   block_name = .FRS5_doe_8_LAUL.sideY2_30.beamY_s2_30_b  &
   adams_id = 60  &
   corner_marker = .FRS5_doe_8_LAUL.sideY2_30.beamY_s2_30_c  &
   diag_corner_coords = 5.6432324638, 1.016, 24.0
!
geometry create curve circle  &
   circle_name = .FRS5_doe_8_LAUL.sideY2_30.shackle_graphic  &
   adams_id = 4114  &
   center_marker = .FRS5_doe_8_LAUL.sideY2_30.shackle2a  &
   radius = 6.0  &
   segment_count = 20
!
geometry attributes  &
   geometry_name = .FRS5_doe_8_LAUL.sideY2_30.shackle_graphic  &
   color = MAIZE
!
! ****** Graphics from Parasolid file ******
!
file parasolid read  &
   file_name = "FRS5_doe_8_LAUL_model.xmt_txt"  &
   model_name = .FRS5_doe_8_LAUL
!
geometry attributes  &
   geometry_name = .FRS5_doe_8_LAUL.fwd_housing.SOLID5  &
   color = Sienna  &
   render = wireframe
!
geometry attributes  &
   geometry_name = .FRS5_doe_8_LAUL.fwd_housing.SOLID6  &
   color = Sienna  &
   render = wireframe
!
geometry attributes  &
   geometry_name = .FRS5_doe_8_LAUL.fwd_housing.SOLID7  &
   color = Sienna  &
   render = wireframe
!
geometry attributes  &
   geometry_name = .FRS5_doe_8_LAUL.fwd_housing.SOLID8  &
   color = ClayRed  &
   render = wireframe
!
geometry attributes  &
   geometry_name = .FRS5_doe_8_LAUL.fwd_housing.SOLID18  &
   color = ClayRed  &
   render = wireframe
!
geometry attributes  &
   geometry_name = .FRS5_doe_8_LAUL.fwd_housing.SOLID17  &
   color = ClayRed  &
   render = wireframe
!
geometry attributes  &
   geometry_name = .FRS5_doe_8_LAUL.fwd_housing.SOLID11  &
   color = ClayRed  &
   render = wireframe
!
geometry attributes  &
   geometry_name = .FRS5_doe_8_LAUL.fwd_housing.SOLID13  &
   color = ClayRed  &
   render = wireframe
!
geometry attributes  &
   geometry_name = .FRS5_doe_8_LAUL.fwd_housing.SOLID15  &
   color = ClayRed  &
   render = wireframe
!
geometry attributes  &
   geometry_name = .FRS5_doe_8_LAUL.fwd_housing.SOLID12  &
   color = ClayRed  &
   render = wireframe
!
geometry attributes  &
   geometry_name = .FRS5_doe_8_LAUL.fwd_housing.SOLID9  &
   color = ClayRed  &
   render = wireframe
!
geometry attributes  &
   geometry_name = .FRS5_doe_8_LAUL.fwd_housing.SOLID16  &
   color = ClayRed  &
   render = wireframe
!
geometry attributes  &
   geometry_name = .FRS5_doe_8_LAUL.fwd_housing.SOLID14  &
   color = ClayRed  &
   render = wireframe
!
geometry attributes  &
   geometry_name = .FRS5_doe_8_LAUL.fwd_housing.SOLID10  &
   color = ClayRed  &
   render = wireframe
!
geometry attributes  &
   geometry_name = .FRS5_doe_8_LAUL.fwd_housing.SOLID20  &
   color = COLOR_R051G153B051  &
   render = wireframe
!
geometry attributes  &
   geometry_name = .FRS5_doe_8_LAUL.rear_housing.SOLID30  &
   color = COLOR_R051G153B102
!
geometry attributes  &
   geometry_name = .FRS5_doe_8_LAUL.rear_housing.SOLID80  &
   color = COLOR_R051G153B102  &
   render = wireframe
!
geometry attributes  &
   geometry_name = .FRS5_doe_8_LAUL.rear_housing.SOLID23  &
   color = COLOR_R102G000B153  &
   visibility = off  &
   render = wireframe  &
   transparency = 50
!
geometry attributes  &
   geometry_name = .FRS5_doe_8_LAUL.lower_rail.SOLID86  &
   color = COLOR_R255G000B255
!
geometry attributes  &
   geometry_name = .FRS5_doe_8_LAUL.positioner.SOLID3480  &
   color = MAGENTA  &
   visibility = off  &
   render = wireframe
!
geometry attributes  &
   geometry_name = .FRS5_doe_8_LAUL.positioner.SOLID3479  &
   color = MAGENTA  &
   visibility = off  &
   render = wireframe  &
   transparency = 50
!
geometry attributes  &
   geometry_name = .FRS5_doe_8_LAUL.positioner_spring.SOLID365  &
   color = MAIZE
!
geometry attributes  &
   geometry_name = .FRS5_doe_8_LAUL.upper_rail.SOLID114  &
   color = COLOR_R255G000B255
!
geometry attributes  &
   geometry_name = .FRS5_doe_8_LAUL.lower_dogs.SOLID130  &
   color = PEACH
!
geometry attributes  &
   geometry_name = .FRS5_doe_8_LAUL.lower_dogs.SOLID133  &
   color = PEACH
!
geometry attributes  &
   geometry_name = .FRS5_doe_8_LAUL.lower_dogs.SOLID134  &
   color = PEACH
!
geometry attributes  &
   geometry_name = .FRS5_doe_8_LAUL.upper_dogs.SOLID135  &
   color = PEACH
!
geometry attributes  &
   geometry_name = .FRS5_doe_8_LAUL.upper_dogs.SOLID139  &
   color = PEACH
!
geometry attributes  &
   geometry_name = .FRS5_doe_8_LAUL.upper_dogs.SOLID138  &
   color = PEACH
!
geometry attributes  &
   geometry_name = .FRS5_doe_8_LAUL.feed_selector_arm.SOLID141  &
   color = MAGENTA
!
geometry attributes  &
   geometry_name = .FRS5_doe_8_LAUL.feed_selector_arm.SOLID140  &
   color = MAGENTA
!
geometry attributes  &
   geometry_name = .FRS5_doe_8_LAUL.selector_spider.SOLID142  &
   color = COLOR_R255G102B000
!
geometry attributes  &
   geometry_name = .FRS5_doe_8_LAUL.selector_spider.SOLID144  &
   color = YELLOW
!
geometry attributes  &
   geometry_name = .FRS5_doe_8_LAUL.selector_spider.SOLID149  &
   color = COLOR_R255G102B000
!
geometry attributes  &
   geometry_name = .FRS5_doe_8_LAUL.selector_spider.SOLID146  &
   color = YELLOW
!
geometry attributes  &
   geometry_name = .FRS5_doe_8_LAUL.selector_spider.SOLID148  &
   color = COLOR_R255G102B000
!
geometry attributes  &
   geometry_name = .FRS5_doe_8_LAUL.selector_spider.SOLID143  &
   color = YELLOW
!
geometry attributes  &
   geometry_name = .FRS5_doe_8_LAUL.selector_spider.SOLID145  &
   color = YELLOW
!
geometry attributes  &
   geometry_name = .FRS5_doe_8_LAUL.selector_spider.SOLID147  &
   color = COLOR_R255G102B000
!
geometry attributes  &
   geometry_name = .FRS5_doe_8_LAUL.selector_spider.SOLID150  &
   color = COLOR_R255G102B000
!
geometry attributes  &
   geometry_name = .FRS5_doe_8_LAUL.selector_spider.SOLID151  &
   color = GREEN
!
geometry attributes  &
   geometry_name = .FRS5_doe_8_LAUL.projectileU4.SOLID1  &
   color = BLUE_GRAY
!
geometry attributes  &
   geometry_name = .FRS5_doe_8_LAUL.projectileU1.SOLID2  &
   color = BLUE_GRAY
!
geometry attributes  &
   geometry_name = .FRS5_doe_8_LAUL.projectileU2.SOLID3  &
   color = BLUE_GRAY
!
geometry attributes  &
   geometry_name = .FRS5_doe_8_LAUL.projectileU3.SOLID4  &
   color = BLUE_GRAY
!
geometry attributes  &
   geometry_name = .FRS5_doe_8_LAUL.brassU3.SOLID5  &
   color = MAIZE
!
geometry attributes  &
   geometry_name = .FRS5_doe_8_LAUL.brassU4.SOLID6  &
   color = MAIZE
!
geometry attributes  &
   geometry_name = .FRS5_doe_8_LAUL.brassU2.SOLID7  &
   color = MAIZE
!
geometry attributes  &
   geometry_name = .FRS5_doe_8_LAUL.brassU1.SOLID8  &
   color = MAIZE
!
geometry attributes  &
   geometry_name = .FRS5_doe_8_LAUL.linkU4.SOLID16  &
   color = COLOR_R191G191B191
!
geometry attributes  &
   geometry_name = .FRS5_doe_8_LAUL.linkU2.SOLID16  &
   color = COLOR_R191G191B191
!
geometry attributes  &
   geometry_name = .FRS5_doe_8_LAUL.linkU3.SOLID16  &
   color = COLOR_R191G191B191
!
geometry attributes  &
   geometry_name = .FRS5_doe_8_LAUL.linkU1.SOLID161  &
   color = COLOR_R191G191B191
!
geometry attributes  &
   geometry_name = .FRS5_doe_8_LAUL.frame.SOLID91  &
   color = MAIZE  &
   transparency = 80
!
geometry attributes  &
   geometry_name = .FRS5_doe_8_LAUL.frame.SOLID126  &
   color = MAIZE  &
   transparency = 80
!
geometry attributes  &
   geometry_name = .FRS5_doe_8_LAUL.frame.SOLID31  &
   color = MAIZE  &
   transparency = 80
!
geometry attributes  &
   geometry_name = .FRS5_doe_8_LAUL.frame.SOLID32  &
   color = MAIZE  &
   transparency = 80
!
geometry attributes  &
   geometry_name = .FRS5_doe_8_LAUL.frame.SOLID33  &
   color = MAIZE  &
   transparency = 80
!
geometry attributes  &
   geometry_name = .FRS5_doe_8_LAUL.frame.SOLID99  &
   color = MAIZE  &
   transparency = 80
!
geometry attributes  &
   geometry_name = .FRS5_doe_8_LAUL.frame.SOLID100  &
   color = MAIZE  &
   transparency = 80
!
geometry attributes  &
   geometry_name = .FRS5_doe_8_LAUL.frame.SOLID90  &
   color = MAIZE  &
   transparency = 80
!
geometry attributes  &
   geometry_name = .FRS5_doe_8_LAUL.feeder_drive_shaft.SOLID112  &
   color = BLUE
!
geometry attributes  &
   geometry_name = .FRS5_doe_8_LAUL.cluster_gear2_48T.SOLID121  &
   color = COLOR_R255G102B000
!
geometry attributes  &
   geometry_name = .FRS5_doe_8_LAUL.mid_frameX.SOLID1138  &
   color = COLOR_R255G127B000
!
geometry attributes  &
   geometry_name = .FRS5_doe_8_LAUL.mid_frameX.SOLID112_2  &
   color = COLOR_R255G127B000
!
geometry attributes  &
   geometry_name = .FRS5_doe_8_LAUL.mid_frameX.SOLID901_2  &
   color = COLOR_R107G107B255
!
geometry attributes  &
   geometry_name = .FRS5_doe_8_LAUL.mid_frameX.SOLID1140  &
   color = CYAN
!
geometry attributes  &
   geometry_name = .FRS5_doe_8_LAUL.mid_frameX.SOLID1141  &
   color = CYAN
!
geometry attributes  &
   geometry_name = .FRS5_doe_8_LAUL.mid_frameX.SOLID1_2  &
   color = COLOR_R255G127B000
!
geometry attributes  &
   geometry_name = .FRS5_doe_8_LAUL.mid_frameX.SOLID3_2  &
   color = CornflowerBlue
!
geometry attributes  &
   geometry_name = .FRS5_doe_8_LAUL.mid_frameX.SOLID1139  &
   color = CYAN
!
geometry attributes  &
   geometry_name = .FRS5_doe_8_LAUL.mid_frameX.SOLID1142  &
   color = CYAN
!
geometry attributes  &
   geometry_name = .FRS5_doe_8_LAUL.mid_frameX.SOLID117  &
   color = COLOR_R255G127B000
!
geometry attributes  &
   geometry_name = .FRS5_doe_8_LAUL.mid_frameX.SOLID111  &
   color = COLOR_R255G127B000
!
geometry attributes  &
   geometry_name = .FRS5_doe_8_LAUL.ferguson_rotorX.SOLID1144  &
   color = BLUE_GRAY
!
geometry attributes  &
   geometry_name = .FRS5_doe_8_LAUL.worm_driveX.SOLID1167  &
   color = COLOR_R051G170B119
!
geometry attributes  &
   geometry_name = .FRS5_doe_8_LAUL.worm_driven_gearX.SOLID1168  &
   color = BLUE_GRAY
!
geometry attributes  &
   geometry_name = .FRS5_doe_8_LAUL.brassL1.SOLID8  &
   color = MAIZE
!
geometry attributes  &
   geometry_name = .FRS5_doe_8_LAUL.brassL2.SOLID8  &
   color = MAIZE
!
geometry attributes  &
   geometry_name = .FRS5_doe_8_LAUL.brassU5.SOLID6  &
   color = MAIZE
!
geometry attributes  &
   geometry_name = .FRS5_doe_8_LAUL.projectileU5.SOLID1  &
   color = BLUE_GRAY
!
geometry attributes  &
   geometry_name = .FRS5_doe_8_LAUL.linkU5.SOLID16  &
   color = COLOR_R191G191B191
!
geometry attributes  &
   geometry_name = .FRS5_doe_8_LAUL.fwd_gateF.SOLID1  &
   color = CYAN  &
   transparency = 50
!
geometry attributes  &
   geometry_name = .FRS5_doe_8_LAUL.aft_gateF.SOLID1  &
   color = SKYBLUE
!
geometry attributes  &
   geometry_name = .FRS5_doe_8_LAUL.ferguson_shaftF.SOLID8  &
   color = SKYBLUE
!
geometry attributes  &
   geometry_name = .FRS5_doe_8_LAUL.ferguson_camF.SOLID7  &
   color = SILVER
!
geometry attributes  &
   geometry_name = .FRS5_doe_8_LAUL.ferguson_camF.SOLID1  &
   color = SILVER
!
geometry attributes  &
   geometry_name = .FRS5_doe_8_LAUL.ferguson_camF.SOLID2  &
   color = COLOR_R137G063B063
!
geometry attributes  &
   geometry_name = .FRS5_doe_8_LAUL.clutch_gearF.SOLID7  &
   color = COLOR_R114G012B132
!
geometry attributes  &
   geometry_name = .FRS5_doe_8_LAUL.clutch_shaftF.SOLID8  &
   color = COLOR_R000G204B102
!
geometry attributes  &
   geometry_name = .FRS5_doe_8_LAUL.upper_drivegearF.SOLID1  &
   color = COLOR_R068G137B035
!
geometry attributes  &
   geometry_name = .FRS5_doe_8_LAUL.lower_drivegearF.SOLID1  &
   color = COLOR_R068G137B035
!
geometry attributes  &
   geometry_name = .FRS5_doe_8_LAUL.upper_drive_shaftF.SOLID7  &
   color = COLOR_R255G101B101
!
geometry attributes  &
   geometry_name = .FRS5_doe_8_LAUL.upper_drive_shaftF.SOLID3690  &
   color = COLOR_R114G012B132
!
geometry attributes  &
   geometry_name = .FRS5_doe_8_LAUL.upper_drive_shaftF.SOLID3691  &
   color = COLOR_R114G012B132
!
geometry attributes  &
   geometry_name = .FRS5_doe_8_LAUL.upper_rear_sprocketF.SOLID5  &
   color = COLOR_R137G063B063
!
geometry attributes  &
   geometry_name = .FRS5_doe_8_LAUL.upper_front_sprocketF.SOLID8  &
   color = ClayRed  &
   transparency = 50
!
geometry attributes  &
   geometry_name = .FRS5_doe_8_LAUL.lower_drive_shaftF.SOLID2  &
   color = COLOR_R255G127B000
!
geometry attributes  &
   geometry_name = .FRS5_doe_8_LAUL.lower_drive_shaftF.SOLID6  &
   color = COLOR_R114G012B132
!
geometry attributes  &
   geometry_name = .FRS5_doe_8_LAUL.lower_drive_shaftF.SOLID3693  &
   color = COLOR_R114G012B132
!
geometry attributes  &
   geometry_name = .FRS5_doe_8_LAUL.lower_rear_sprocketF.SOLID1  &
   color = COLOR_R137G063B063
!
geometry attributes  &
   geometry_name = .FRS5_doe_8_LAUL.lower_front_sprocketF.SOLID4  &
   color = ClayRed  &
   transparency = 50
!
geometry attributes  &
   geometry_name = .FRS5_doe_8_LAUL.rotor_shaftF.SOLID2  &
   color = CYAN
!
geometry attributes  &
   geometry_name = .FRS5_doe_8_LAUL.feed_rotorF.SOLID1  &
   color = CYAN
!
geometry attributes  &
   geometry_name = .FRS5_doe_8_LAUL.brassL3.SOLID8  &
   color = MAIZE
!
geometry attributes  &
   geometry_name = .FRS5_doe_8_LAUL.brassL4.SOLID8  &
   color = MAIZE
!
geometry attributes  &
   geometry_name = .FRS5_doe_8_LAUL.brassL5.SOLID8  &
   color = MAIZE
!
geometry attributes  &
   geometry_name = .FRS5_doe_8_LAUL.projectileL1.SOLID2  &
   color = BLUE_GRAY
!
geometry attributes  &
   geometry_name = .FRS5_doe_8_LAUL.projectileL2.SOLID2  &
   color = BLUE_GRAY
!
geometry attributes  &
   geometry_name = .FRS5_doe_8_LAUL.projectileL3.SOLID2  &
   color = BLUE_GRAY
!
geometry attributes  &
   geometry_name = .FRS5_doe_8_LAUL.projectileL4.SOLID2  &
   color = BLUE_GRAY
!
geometry attributes  &
   geometry_name = .FRS5_doe_8_LAUL.projectileL5.SOLID2  &
   color = BLUE_GRAY
!
geometry attributes  &
   geometry_name = .FRS5_doe_8_LAUL.linkL2.SOLID16  &
   color = SILVER
!
geometry attributes  &
   geometry_name = .FRS5_doe_8_LAUL.linkL3.SOLID16  &
   color = SILVER
!
geometry attributes  &
   geometry_name = .FRS5_doe_8_LAUL.linkL4.SOLID16  &
   color = SILVER
!
geometry attributes  &
   geometry_name = .FRS5_doe_8_LAUL.linkL5.SOLID16  &
   color = SILVER
!
!---------------------------------- Contacts ----------------------------------!
!
!
contact create  &
   contact_name = .FRS5_doe_8_LAUL.cam1_to_pins  &
   adams_id = 1  &
   type = solid_to_solid  &
   i_geometry_name = .FRS5_doe_8_LAUL.ferguson_camF.SOLID7  &
   j_geometry_name =  &
      .FRS5_doe_8_LAUL.ferguson_rotorX.c4,  &
      .FRS5_doe_8_LAUL.ferguson_rotorX.c5,  &
      .FRS5_doe_8_LAUL.ferguson_rotorX.c6  &
   stiffness = 2.0E+04  &
   damping = 200.0  &
   exponent = 1.5  &
   dmax = 1.0E-02
!
force attributes  &
   force_name = .FRS5_doe_8_LAUL.cam1_to_pins  &
   visibility = off
!
contact create  &
   contact_name = .FRS5_doe_8_LAUL.cam2_to_pins  &
   adams_id = 2  &
   type = solid_to_solid  &
   i_geometry_name = .FRS5_doe_8_LAUL.ferguson_camF.SOLID1  &
   j_geometry_name =  &
      .FRS5_doe_8_LAUL.ferguson_rotorX.c1,  &
      .FRS5_doe_8_LAUL.ferguson_rotorX.c2,  &
      .FRS5_doe_8_LAUL.ferguson_rotorX.c3  &
   stiffness = 2.0E+04  &
   damping = 200.0  &
   exponent = 1.5  &
   dmax = 1.0E-02
!
force attributes  &
   force_name = .FRS5_doe_8_LAUL.cam2_to_pins  &
   visibility = off
!
contact create  &
   contact_name = .FRS5_doe_8_LAUL.BU1_2_frame  &
   adams_id = 3  &
   type = solid_to_solid  &
   i_geometry_name = .FRS5_doe_8_LAUL.brassU1.SOLID8  &
   j_geometry_name =  &
      .FRS5_doe_8_LAUL.mid_frameX.SOLID1138,  &
      .FRS5_doe_8_LAUL.mid_frameX.SOLID112_2,  &
      .FRS5_doe_8_LAUL.mid_frameX.SOLID901_2,  &
      .FRS5_doe_8_LAUL.mid_frameX.SOLID1140,  &
      .FRS5_doe_8_LAUL.mid_frameX.SOLID1141  &
   stiffness = 1.0E+04  &
   damping = 100.0  &
   exponent = 1.25  &
   dmax = 1.0E-02
!
force attributes  &
   force_name = .FRS5_doe_8_LAUL.BU1_2_frame  &
   visibility = off
!
contact create  &
   contact_name = .FRS5_doe_8_LAUL.BU2_2_frame  &
   adams_id = 4  &
   type = solid_to_solid  &
   i_geometry_name = .FRS5_doe_8_LAUL.brassU2.SOLID7  &
   j_geometry_name =  &
      .FRS5_doe_8_LAUL.mid_frameX.SOLID1138,  &
      .FRS5_doe_8_LAUL.mid_frameX.SOLID112_2,  &
      .FRS5_doe_8_LAUL.mid_frameX.SOLID901_2,  &
      .FRS5_doe_8_LAUL.mid_frameX.SOLID1140,  &
      .FRS5_doe_8_LAUL.mid_frameX.SOLID1141  &
   stiffness = 1.0E+04  &
   damping = 100.0  &
   exponent = 1.25  &
   dmax = 1.0E-02
!
force attributes  &
   force_name = .FRS5_doe_8_LAUL.BU2_2_frame  &
   visibility = off
!
contact create  &
   contact_name = .FRS5_doe_8_LAUL.BU3_2_frame  &
   adams_id = 5  &
   type = solid_to_solid  &
   i_geometry_name = .FRS5_doe_8_LAUL.brassU3.SOLID5  &
   j_geometry_name =  &
      .FRS5_doe_8_LAUL.mid_frameX.SOLID1138,  &
      .FRS5_doe_8_LAUL.mid_frameX.SOLID112_2,  &
      .FRS5_doe_8_LAUL.mid_frameX.SOLID901_2,  &
      .FRS5_doe_8_LAUL.mid_frameX.SOLID1140,  &
      .FRS5_doe_8_LAUL.mid_frameX.SOLID1141  &
   stiffness = 1.0E+04  &
   damping = 100.0  &
   exponent = 1.25  &
   dmax = 1.0E-02
!
force attributes  &
   force_name = .FRS5_doe_8_LAUL.BU3_2_frame  &
   visibility = off
!
contact create  &
   contact_name = .FRS5_doe_8_LAUL.BU4_2_frame  &
   adams_id = 6  &
   type = solid_to_solid  &
   i_geometry_name = .FRS5_doe_8_LAUL.brassU4.SOLID6  &
   j_geometry_name =  &
      .FRS5_doe_8_LAUL.mid_frameX.SOLID1138,  &
      .FRS5_doe_8_LAUL.mid_frameX.SOLID112_2,  &
      .FRS5_doe_8_LAUL.mid_frameX.SOLID901_2,  &
      .FRS5_doe_8_LAUL.mid_frameX.SOLID1140,  &
      .FRS5_doe_8_LAUL.mid_frameX.SOLID1141  &
   stiffness = 1.0E+04  &
   damping = 100.0  &
   exponent = 1.25  &
   dmax = 1.0E-02
!
force attributes  &
   force_name = .FRS5_doe_8_LAUL.BU4_2_frame  &
   visibility = off
!
contact create  &
   contact_name = .FRS5_doe_8_LAUL.BU1_2_fwdsprocket  &
   adams_id = 8  &
   type = solid_to_solid  &
   i_geometry_name = .FRS5_doe_8_LAUL.brassU1.cyl  &
   j_geometry_name = .FRS5_doe_8_LAUL.upper_front_sprocketF.SOLID8  &
   stiffness = 1.0E+04  &
   damping = 100.0  &
   exponent = 1.25  &
   dmax = 1.0E-02
!
force attributes  &
   force_name = .FRS5_doe_8_LAUL.BU1_2_fwdsprocket  &
   visibility = off
!
contact create  &
   contact_name = .FRS5_doe_8_LAUL.BU2_2_fwdsprocket  &
   adams_id = 9  &
   type = solid_to_solid  &
   i_geometry_name = .FRS5_doe_8_LAUL.brassU2.cyl  &
   j_geometry_name = .FRS5_doe_8_LAUL.upper_front_sprocketF.SOLID8  &
   stiffness = 1.0E+04  &
   damping = 100.0  &
   exponent = 1.25  &
   dmax = 1.0E-02
!
force attributes  &
   force_name = .FRS5_doe_8_LAUL.BU2_2_fwdsprocket  &
   visibility = off
!
contact create  &
   contact_name = .FRS5_doe_8_LAUL.BU3_2_fwdsprocket  &
   adams_id = 10  &
   type = solid_to_solid  &
   i_geometry_name = .FRS5_doe_8_LAUL.brassU3.cyl  &
   j_geometry_name = .FRS5_doe_8_LAUL.upper_front_sprocketF.SOLID8  &
   stiffness = 1.0E+04  &
   damping = 100.0  &
   exponent = 1.25  &
   dmax = 1.0E-02
!
force attributes  &
   force_name = .FRS5_doe_8_LAUL.BU3_2_fwdsprocket  &
   visibility = off
!
contact create  &
   contact_name = .FRS5_doe_8_LAUL.BU_1_c1g  &
   i_geometry_name = .FRS5_doe_8_LAUL.brassU1.frust  &
   j_geometry_name = .FRS5_doe_8_LAUL.positioner.c1g  &
   stiffness = 1.0E+04  &
   damping = 10.0  &
   exponent = 1.25  &
   dmax = 1.0E-02
!
contact create  &
   contact_name = .FRS5_doe_8_LAUL.PU1_2_fgate  &
   adams_id = 34  &
   type = solid_to_solid  &
   i_geometry_name = .FRS5_doe_8_LAUL.projectileU1.SOLID2  &
   j_geometry_name = .FRS5_doe_8_LAUL.fwd_gateF.SOLID1  &
   stiffness = 1.0E+04  &
   damping = 10.0  &
   exponent = 1.25  &
   dmax = 1.0E-02
!
force attributes  &
   force_name = .FRS5_doe_8_LAUL.PU1_2_fgate  &
   visibility = off
!
contact create  &
   contact_name = .FRS5_doe_8_LAUL.PU2_2_fgate  &
   adams_id = 35  &
   type = solid_to_solid  &
   i_geometry_name = .FRS5_doe_8_LAUL.projectileU2.SOLID3  &
   j_geometry_name = .FRS5_doe_8_LAUL.fwd_gateF.SOLID1  &
   stiffness = 1.0E+04  &
   damping = 10.0  &
   exponent = 1.25  &
   dmax = 1.0E-02
!
force attributes  &
   force_name = .FRS5_doe_8_LAUL.PU2_2_fgate  &
   visibility = off
!
contact create  &
   contact_name = .FRS5_doe_8_LAUL.BU4_2_aftsprocket  &
   adams_id = 14  &
   type = solid_to_solid  &
   i_geometry_name = .FRS5_doe_8_LAUL.brassU4.frust  &
   j_geometry_name = .FRS5_doe_8_LAUL.upper_rear_sprocketF.SOLID5  &
   stiffness = 1.0E+04  &
   damping = 100.0  &
   exponent = 1.25  &
   dmax = 1.0E-02
!
force attributes  &
   force_name = .FRS5_doe_8_LAUL.BU4_2_aftsprocket  &
   visibility = off
!
contact create  &
   contact_name = .FRS5_doe_8_LAUL.BU3_2_aftsprocket  &
   adams_id = 15  &
   type = solid_to_solid  &
   i_geometry_name = .FRS5_doe_8_LAUL.brassU3.frust  &
   j_geometry_name = .FRS5_doe_8_LAUL.upper_rear_sprocketF.SOLID5  &
   stiffness = 1.0E+04  &
   damping = 100.0  &
   exponent = 1.25  &
   dmax = 1.0E-02
!
force attributes  &
   force_name = .FRS5_doe_8_LAUL.BU3_2_aftsprocket  &
   visibility = off
!
contact create  &
   contact_name = .FRS5_doe_8_LAUL.BU2_2_aftsprocket  &
   adams_id = 16  &
   type = solid_to_solid  &
   i_geometry_name = .FRS5_doe_8_LAUL.brassU2.frust  &
   j_geometry_name = .FRS5_doe_8_LAUL.upper_rear_sprocketF.SOLID5  &
   stiffness = 1.0E+04  &
   damping = 100.0  &
   exponent = 1.25  &
   dmax = 1.0E-02
!
force attributes  &
   force_name = .FRS5_doe_8_LAUL.BU2_2_aftsprocket  &
   visibility = off
!
contact create  &
   contact_name = .FRS5_doe_8_LAUL.BU1_2_aftsprocket  &
   adams_id = 17  &
   type = solid_to_solid  &
   i_geometry_name = .FRS5_doe_8_LAUL.brassU1.frust  &
   j_geometry_name = .FRS5_doe_8_LAUL.upper_rear_sprocketF.SOLID5  &
   stiffness = 1.0E+04  &
   damping = 100.0  &
   exponent = 1.25  &
   dmax = 1.0E-02
!
force attributes  &
   force_name = .FRS5_doe_8_LAUL.BU1_2_aftsprocket  &
   visibility = off
!
contact create  &
   contact_name = .FRS5_doe_8_LAUL.PU3_2_fgate  &
   adams_id = 36  &
   type = solid_to_solid  &
   i_geometry_name = .FRS5_doe_8_LAUL.projectileU3.SOLID4  &
   j_geometry_name = .FRS5_doe_8_LAUL.fwd_gateF.SOLID1  &
   stiffness = 1.0E+04  &
   damping = 10.0  &
   exponent = 1.25  &
   dmax = 1.0E-02
!
force attributes  &
   force_name = .FRS5_doe_8_LAUL.PU3_2_fgate  &
   visibility = off
!
contact create  &
   contact_name = .FRS5_doe_8_LAUL.PU4_2_fgate  &
   adams_id = 37  &
   type = solid_to_solid  &
   i_geometry_name = .FRS5_doe_8_LAUL.projectileU4.SOLID1  &
   j_geometry_name = .FRS5_doe_8_LAUL.fwd_gateF.SOLID1  &
   stiffness = 1.0E+04  &
   damping = 10.0  &
   exponent = 1.25  &
   dmax = 1.0E-02
!
force attributes  &
   force_name = .FRS5_doe_8_LAUL.PU4_2_fgate  &
   visibility = off
!
contact create  &
   contact_name = .FRS5_doe_8_LAUL.BU4_2_rotor  &
   adams_id = 24  &
   type = solid_to_solid  &
   i_geometry_name = .FRS5_doe_8_LAUL.brassU4.frust  &
   j_geometry_name = .FRS5_doe_8_LAUL.feed_rotorF.SOLID1  &
   stiffness = 1.0E+04  &
   damping = 100.0  &
   exponent = 1.25  &
   dmax = 1.0E-02
!
force attributes  &
   force_name = .FRS5_doe_8_LAUL.BU4_2_rotor  &
   visibility = off
!
contact create  &
   contact_name = .FRS5_doe_8_LAUL.BU3_2_rotor  &
   adams_id = 25  &
   type = solid_to_solid  &
   i_geometry_name = .FRS5_doe_8_LAUL.brassU3.frust  &
   j_geometry_name = .FRS5_doe_8_LAUL.feed_rotorF.SOLID1  &
   stiffness = 1.0E+04  &
   damping = 100.0  &
   exponent = 1.25  &
   dmax = 1.0E-02
!
force attributes  &
   force_name = .FRS5_doe_8_LAUL.BU3_2_rotor  &
   visibility = off
!
contact create  &
   contact_name = .FRS5_doe_8_LAUL.BU2_2_rotor  &
   adams_id = 26  &
   type = solid_to_solid  &
   i_geometry_name = .FRS5_doe_8_LAUL.brassU2.frust  &
   j_geometry_name = .FRS5_doe_8_LAUL.feed_rotorF.SOLID1  &
   stiffness = 1.0E+04  &
   damping = 100.0  &
   exponent = 1.25  &
   dmax = 1.0E-02
!
force attributes  &
   force_name = .FRS5_doe_8_LAUL.BU2_2_rotor  &
   visibility = off
!
contact create  &
   contact_name = .FRS5_doe_8_LAUL.BU1_2_rotor  &
   adams_id = 27  &
   type = solid_to_solid  &
   i_geometry_name = .FRS5_doe_8_LAUL.brassU1.frust  &
   j_geometry_name = .FRS5_doe_8_LAUL.feed_rotorF.SOLID1  &
   stiffness = 1.0E+04  &
   damping = 100.0  &
   exponent = 1.25  &
   dmax = 1.0E-02
!
force attributes  &
   force_name = .FRS5_doe_8_LAUL.BU1_2_rotor  &
   visibility = off
!
contact create  &
   contact_name = .FRS5_doe_8_LAUL.PU1_2_fwdhousing  &
   adams_id = 28  &
   i_geometry_name = .FRS5_doe_8_LAUL.projectileU1.CYL  &
   j_geometry_name =  &
      .FRS5_doe_8_LAUL.fwd_housing.SOLID5,  &
      .FRS5_doe_8_LAUL.fwd_housing.SOLID6,  &
      .FRS5_doe_8_LAUL.fwd_housing.SOLID7  &
   stiffness = 1.0E+04  &
   damping = 100.0  &
   exponent = 1.25  &
   dmax = 1.0E-02
!
force attributes  &
   force_name = .FRS5_doe_8_LAUL.PU1_2_fwdhousing  &
   visibility = off
!
contact create  &
   contact_name = .FRS5_doe_8_LAUL.PU2_2_fwdhousing  &
   adams_id = 29  &
   i_geometry_name = .FRS5_doe_8_LAUL.projectileU2.CYL  &
   j_geometry_name =  &
      .FRS5_doe_8_LAUL.fwd_housing.SOLID5,  &
      .FRS5_doe_8_LAUL.fwd_housing.SOLID6,  &
      .FRS5_doe_8_LAUL.fwd_housing.SOLID7  &
   stiffness = 1.0E+04  &
   damping = 100.0  &
   exponent = 1.25  &
   dmax = 1.0E-02
!
force attributes  &
   force_name = .FRS5_doe_8_LAUL.PU2_2_fwdhousing  &
   visibility = off
!
contact create  &
   contact_name = .FRS5_doe_8_LAUL.PU3_2_fwdhousing  &
   adams_id = 30  &
   i_geometry_name = .FRS5_doe_8_LAUL.projectileU3.CYL  &
   j_geometry_name =  &
      .FRS5_doe_8_LAUL.fwd_housing.SOLID5,  &
      .FRS5_doe_8_LAUL.fwd_housing.SOLID6,  &
      .FRS5_doe_8_LAUL.fwd_housing.SOLID7  &
   stiffness = 1.0E+04  &
   damping = 100.0  &
   exponent = 1.25  &
   dmax = 1.0E-02
!
force attributes  &
   force_name = .FRS5_doe_8_LAUL.PU3_2_fwdhousing  &
   visibility = off
!
contact create  &
   contact_name = .FRS5_doe_8_LAUL.PU4_2_fwdhousing  &
   adams_id = 31  &
   i_geometry_name = .FRS5_doe_8_LAUL.projectileU4.CYL  &
   j_geometry_name =  &
      .FRS5_doe_8_LAUL.fwd_housing.SOLID5,  &
      .FRS5_doe_8_LAUL.fwd_housing.SOLID6,  &
      .FRS5_doe_8_LAUL.fwd_housing.SOLID7  &
   stiffness = 1.0E+04  &
   damping = 100.0  &
   exponent = 1.25  &
   dmax = 1.0E-02
!
force attributes  &
   force_name = .FRS5_doe_8_LAUL.PU4_2_fwdhousing  &
   visibility = off
!
contact create  &
   contact_name = .FRS5_doe_8_LAUL.BU1_2_agate  &
   adams_id = 38  &
   type = solid_to_solid  &
   i_geometry_name = .FRS5_doe_8_LAUL.brassU1.SOLID8  &
   j_geometry_name = .FRS5_doe_8_LAUL.aft_gateF.SOLID1  &
   stiffness = 1.0E+04  &
   damping = 10.0  &
   exponent = 1.25  &
   dmax = 1.0E-02
!
force attributes  &
   force_name = .FRS5_doe_8_LAUL.BU1_2_agate  &
   visibility = off
!
contact create  &
   contact_name = .FRS5_doe_8_LAUL.BU2_2_agate  &
   adams_id = 39  &
   type = solid_to_solid  &
   i_geometry_name = .FRS5_doe_8_LAUL.brassU2.SOLID7  &
   j_geometry_name = .FRS5_doe_8_LAUL.aft_gateF.SOLID1  &
   stiffness = 1.0E+04  &
   damping = 10.0  &
   exponent = 1.25  &
   dmax = 1.0E-02
!
force attributes  &
   force_name = .FRS5_doe_8_LAUL.BU2_2_agate  &
   visibility = off
!
contact create  &
   contact_name = .FRS5_doe_8_LAUL.BU3_2_agate  &
   adams_id = 40  &
   type = solid_to_solid  &
   i_geometry_name = .FRS5_doe_8_LAUL.brassU3.SOLID5  &
   j_geometry_name = .FRS5_doe_8_LAUL.aft_gateF.SOLID1  &
   stiffness = 1.0E+04  &
   damping = 10.0  &
   exponent = 1.25  &
   dmax = 1.0E-02
!
force attributes  &
   force_name = .FRS5_doe_8_LAUL.BU3_2_agate  &
   visibility = off
!
contact create  &
   contact_name = .FRS5_doe_8_LAUL.BU4_2_agate  &
   adams_id = 41  &
   type = solid_to_solid  &
   i_geometry_name = .FRS5_doe_8_LAUL.brassU4.SOLID6  &
   j_geometry_name = .FRS5_doe_8_LAUL.aft_gateF.SOLID1  &
   stiffness = 1.0E+04  &
   damping = 10.0  &
   exponent = 1.25  &
   dmax = 1.0E-02
!
force attributes  &
   force_name = .FRS5_doe_8_LAUL.BU4_2_agate  &
   visibility = off
!
contact create  &
   contact_name = .FRS5_doe_8_LAUL.BU_4_c1g  &
   i_geometry_name = .FRS5_doe_8_LAUL.brassU4.frust  &
   j_geometry_name = .FRS5_doe_8_LAUL.positioner.c1g  &
   stiffness = 1.0E+04  &
   damping = 10.0  &
   exponent = 1.25  &
   dmax = 1.0E-02
!
contact create  &
   contact_name = .FRS5_doe_8_LAUL.BU_3_c1g  &
   i_geometry_name = .FRS5_doe_8_LAUL.brassU3.frust  &
   j_geometry_name = .FRS5_doe_8_LAUL.positioner.c1g  &
   stiffness = 1.0E+04  &
   damping = 10.0  &
   exponent = 1.25  &
   dmax = 1.0E-02
!
contact create  &
   contact_name = .FRS5_doe_8_LAUL.BU4_2_fwdsprocket  &
   adams_id = 48  &
   type = solid_to_solid  &
   i_geometry_name = .FRS5_doe_8_LAUL.brassU4.cyl  &
   j_geometry_name = .FRS5_doe_8_LAUL.upper_front_sprocketF.SOLID8  &
   stiffness = 1.0E+04  &
   damping = 100.0  &
   exponent = 1.25  &
   dmax = 1.0E-02
!
force attributes  &
   force_name = .FRS5_doe_8_LAUL.BU4_2_fwdsprocket  &
   visibility = off
!
contact create  &
   contact_name = .FRS5_doe_8_LAUL.BU_5_c1g  &
   i_geometry_name = .FRS5_doe_8_LAUL.brassU5.frust  &
   j_geometry_name = .FRS5_doe_8_LAUL.positioner.c1g  &
   stiffness = 1.0E+04  &
   damping = 10.0  &
   exponent = 1.25  &
   dmax = 1.0E-02
!
contact create  &
   contact_name = .FRS5_doe_8_LAUL.BU5_2_agate  &
   adams_id = 50  &
   type = solid_to_solid  &
   i_geometry_name = .FRS5_doe_8_LAUL.brassU5.SOLID6  &
   j_geometry_name = .FRS5_doe_8_LAUL.aft_gateF.SOLID1  &
   stiffness = 1.0E+04  &
   damping = 10.0  &
   exponent = 1.25  &
   dmax = 1.0E-02
!
force attributes  &
   force_name = .FRS5_doe_8_LAUL.BU5_2_agate  &
   visibility = off
!
contact create  &
   contact_name = .FRS5_doe_8_LAUL.BU5_2_fwdsprocket  &
   adams_id = 51  &
   type = solid_to_solid  &
   i_geometry_name = .FRS5_doe_8_LAUL.brassU5.cyl  &
   j_geometry_name = .FRS5_doe_8_LAUL.upper_front_sprocketF.SOLID8  &
   stiffness = 1.0E+04  &
   damping = 100.0  &
   exponent = 1.25  &
   dmax = 1.0E-02
!
force attributes  &
   force_name = .FRS5_doe_8_LAUL.BU5_2_fwdsprocket  &
   visibility = off
!
contact create  &
   contact_name = .FRS5_doe_8_LAUL.BU5_2_aftsprocket  &
   adams_id = 52  &
   type = solid_to_solid  &
   i_geometry_name = .FRS5_doe_8_LAUL.brassU5.frust  &
   j_geometry_name = .FRS5_doe_8_LAUL.upper_rear_sprocketF.SOLID5  &
   stiffness = 1.0E+04  &
   damping = 100.0  &
   exponent = 1.25  &
   dmax = 1.0E-02
!
force attributes  &
   force_name = .FRS5_doe_8_LAUL.BU5_2_aftsprocket  &
   visibility = off
!
contact create  &
   contact_name = .FRS5_doe_8_LAUL.BU5_2_rotor  &
   adams_id = 53  &
   type = solid_to_solid  &
   i_geometry_name = .FRS5_doe_8_LAUL.brassU5.frust  &
   j_geometry_name = .FRS5_doe_8_LAUL.feed_rotorF.SOLID1  &
   stiffness = 1.0E+04  &
   damping = 100.0  &
   exponent = 1.25  &
   dmax = 1.0E-02
!
force attributes  &
   force_name = .FRS5_doe_8_LAUL.BU5_2_rotor  &
   visibility = off
!
contact create  &
   contact_name = .FRS5_doe_8_LAUL.BU5_2_frame  &
   adams_id = 54  &
   type = solid_to_solid  &
   i_geometry_name = .FRS5_doe_8_LAUL.brassU5.SOLID6  &
   j_geometry_name =  &
      .FRS5_doe_8_LAUL.mid_frameX.SOLID1138,  &
      .FRS5_doe_8_LAUL.mid_frameX.SOLID112_2,  &
      .FRS5_doe_8_LAUL.mid_frameX.SOLID901_2,  &
      .FRS5_doe_8_LAUL.mid_frameX.SOLID1140,  &
      .FRS5_doe_8_LAUL.mid_frameX.SOLID1141  &
   stiffness = 1.0E+04  &
   damping = 100.0  &
   exponent = 1.25  &
   dmax = 1.0E-02
!
force attributes  &
   force_name = .FRS5_doe_8_LAUL.BU5_2_frame  &
   visibility = off
!
contact create  &
   contact_name = .FRS5_doe_8_LAUL.PU5_2_fwdhousing  &
   adams_id = 55  &
   i_geometry_name = .FRS5_doe_8_LAUL.projectileU5.CYL  &
   j_geometry_name =  &
      .FRS5_doe_8_LAUL.fwd_housing.SOLID5,  &
      .FRS5_doe_8_LAUL.fwd_housing.SOLID6,  &
      .FRS5_doe_8_LAUL.fwd_housing.SOLID7  &
   stiffness = 1.0E+04  &
   damping = 100.0  &
   exponent = 1.25  &
   dmax = 1.0E-02
!
force attributes  &
   force_name = .FRS5_doe_8_LAUL.PU5_2_fwdhousing  &
   visibility = off
!
contact create  &
   contact_name = .FRS5_doe_8_LAUL.PU5_2_fgate  &
   adams_id = 56  &
   type = solid_to_solid  &
   i_geometry_name = .FRS5_doe_8_LAUL.projectileU5.SOLID1  &
   j_geometry_name = .FRS5_doe_8_LAUL.fwd_gateF.SOLID1  &
   stiffness = 1.0E+04  &
   damping = 10.0  &
   exponent = 1.25  &
   dmax = 1.0E-02
!
force attributes  &
   force_name = .FRS5_doe_8_LAUL.PU5_2_fgate  &
   visibility = off
!
contact create  &
   contact_name = .FRS5_doe_8_LAUL.UprStopTouch  &
   adams_id = 57  &
   i_geometry_name = .FRS5_doe_8_LAUL.brassU1.SOLID8  &
   j_geometry_name = .FRS5_doe_8_LAUL.mid_frameX.uprstop  &
   stiffness = 1.0E+04  &
   damping = 100.0  &
   exponent = 1.25  &
   dmax = 1.0E-02
!
contact create  &
   contact_name = .FRS5_doe_8_LAUL.LwrStopTouch  &
   adams_id = 58  &
   i_geometry_name = .FRS5_doe_8_LAUL.brassL1.SOLID8  &
   j_geometry_name = .FRS5_doe_8_LAUL.mid_frameX.lwrstop  &
   stiffness = 1.0E+04  &
   damping = 100.0  &
   exponent = 1.25  &
   dmax = 1.0E-02
!
contact create  &
   contact_name = .FRS5_doe_8_LAUL.pL1_2_fgate  &
   adams_id = 59  &
   i_geometry_name = .FRS5_doe_8_LAUL.projectileL1.SOLID2  &
   j_geometry_name = .FRS5_doe_8_LAUL.fwd_gateF.SOLID1  &
   stiffness = 1.0E+04  &
   damping = 100.0  &
   exponent = 1.25  &
   dmax = 1.0E-02
!
contact create  &
   contact_name = .FRS5_doe_8_LAUL.pL1_2_fwd_housing  &
   adams_id = 60  &
   i_geometry_name = .FRS5_doe_8_LAUL.projectileL1.CYL  &
   j_geometry_name =  &
      .FRS5_doe_8_LAUL.fwd_housing.SOLID5,  &
      .FRS5_doe_8_LAUL.fwd_housing.SOLID6,  &
      .FRS5_doe_8_LAUL.fwd_housing.SOLID7  &
   stiffness = 1.0E+04  &
   damping = 100.0  &
   exponent = 1.25  &
   dmax = 1.0E-02
!
contact create  &
   contact_name = .FRS5_doe_8_LAUL.BL1_2_frame  &
   adams_id = 61  &
   i_geometry_name = .FRS5_doe_8_LAUL.brassL1.SOLID8  &
   j_geometry_name =  &
      .FRS5_doe_8_LAUL.mid_frameX.SOLID1_2,  &
      .FRS5_doe_8_LAUL.mid_frameX.SOLID3_2,  &
      .FRS5_doe_8_LAUL.mid_frameX.SOLID1138,  &
      .FRS5_doe_8_LAUL.mid_frameX.SOLID1139,  &
      .FRS5_doe_8_LAUL.mid_frameX.SOLID1142  &
   stiffness = 1.0E+04  &
   damping = 100.0  &
   exponent = 1.25  &
   dmax = 1.0E-02
!
contact create  &
   contact_name = .FRS5_doe_8_LAUL.BL1_2_agate  &
   adams_id = 62  &
   i_geometry_name = .FRS5_doe_8_LAUL.brassL1.SOLID8  &
   j_geometry_name = .FRS5_doe_8_LAUL.aft_gateF.SOLID1  &
   stiffness = 1.0E+04  &
   damping = 100.0  &
   exponent = 1.25  &
   dmax = 1.0E-02
!
contact create  &
   contact_name = .FRS5_doe_8_LAUL.BL1_2_fwdsprocket  &
   adams_id = 63  &
   type = solid_to_solid  &
   i_geometry_name = .FRS5_doe_8_LAUL.brassL1.cyl  &
   j_geometry_name = .FRS5_doe_8_LAUL.lower_front_sprocketF.SOLID4  &
   stiffness = 1.0E+04  &
   damping = 100.0  &
   exponent = 1.25  &
   dmax = 1.0E-02
!
contact create  &
   contact_name = .FRS5_doe_8_LAUL.BL1_2_aftsprocket  &
   adams_id = 64  &
   type = solid_to_solid  &
   i_geometry_name = .FRS5_doe_8_LAUL.brassL1.FRUSTUM  &
   j_geometry_name = .FRS5_doe_8_LAUL.lower_rear_sprocketF.SOLID1  &
   stiffness = 1.0E+04  &
   damping = 100.0  &
   exponent = 1.25  &
   dmax = 1.0E-02
!
contact create  &
   contact_name = .FRS5_doe_8_LAUL.BL1_2_rotor  &
   adams_id = 65  &
   i_geometry_name = .FRS5_doe_8_LAUL.brassL1.FRUSTUM  &
   j_geometry_name = .FRS5_doe_8_LAUL.feed_rotorF.SOLID1  &
   stiffness = 1.0E+04  &
   damping = 100.0  &
   exponent = 1.25  &
   dmax = 1.0E-02
!
contact create  &
   contact_name = .FRS5_doe_8_LAUL.BL_1_c2g  &
   i_geometry_name = .FRS5_doe_8_LAUL.brassL1.FRUSTUM  &
   j_geometry_name = .FRS5_doe_8_LAUL.positioner.c2g  &
   stiffness = 1.0E+04  &
   damping = 10.0  &
   exponent = 1.25  &
   dmax = 1.0E-02
!
contact create  &
   contact_name = .FRS5_doe_8_LAUL.pL2_2_fgate  &
   adams_id = 67  &
   i_geometry_name = .FRS5_doe_8_LAUL.projectileL2.SOLID2  &
   j_geometry_name = .FRS5_doe_8_LAUL.fwd_gateF.SOLID1  &
   stiffness = 1.0E+04  &
   damping = 100.0  &
   exponent = 1.25  &
   dmax = 1.0E-02
!
contact create  &
   contact_name = .FRS5_doe_8_LAUL.pL2_2_fwd_housing  &
   adams_id = 68  &
   i_geometry_name = .FRS5_doe_8_LAUL.projectileL2.CYL  &
   j_geometry_name =  &
      .FRS5_doe_8_LAUL.fwd_housing.SOLID5,  &
      .FRS5_doe_8_LAUL.fwd_housing.SOLID6,  &
      .FRS5_doe_8_LAUL.fwd_housing.SOLID7  &
   stiffness = 1.0E+04  &
   damping = 100.0  &
   exponent = 1.25  &
   dmax = 1.0E-02
!
contact create  &
   contact_name = .FRS5_doe_8_LAUL.BL2_2_frame  &
   adams_id = 69  &
   i_geometry_name = .FRS5_doe_8_LAUL.brassL2.SOLID8  &
   j_geometry_name =  &
      .FRS5_doe_8_LAUL.mid_frameX.SOLID1_2,  &
      .FRS5_doe_8_LAUL.mid_frameX.SOLID3_2,  &
      .FRS5_doe_8_LAUL.mid_frameX.SOLID1138,  &
      .FRS5_doe_8_LAUL.mid_frameX.SOLID1139,  &
      .FRS5_doe_8_LAUL.mid_frameX.SOLID1142  &
   stiffness = 1.0E+04  &
   damping = 100.0  &
   exponent = 1.25  &
   dmax = 1.0E-02
!
contact create  &
   contact_name = .FRS5_doe_8_LAUL.BL2_2_agate  &
   adams_id = 70  &
   i_geometry_name = .FRS5_doe_8_LAUL.brassL2.SOLID8  &
   j_geometry_name = .FRS5_doe_8_LAUL.aft_gateF.SOLID1  &
   stiffness = 1.0E+04  &
   damping = 100.0  &
   exponent = 1.25  &
   dmax = 1.0E-02
!
contact create  &
   contact_name = .FRS5_doe_8_LAUL.BL2_2_fwdsprocket  &
   adams_id = 71  &
   type = solid_to_solid  &
   i_geometry_name = .FRS5_doe_8_LAUL.brassL2.cyl  &
   j_geometry_name = .FRS5_doe_8_LAUL.lower_front_sprocketF.SOLID4  &
   stiffness = 1.0E+04  &
   damping = 100.0  &
   exponent = 1.25  &
   dmax = 1.0E-02
!
contact create  &
   contact_name = .FRS5_doe_8_LAUL.BL2_2_aftsprocket  &
   adams_id = 72  &
   type = solid_to_solid  &
   i_geometry_name = .FRS5_doe_8_LAUL.brassL2.FRUSTUM  &
   j_geometry_name = .FRS5_doe_8_LAUL.lower_rear_sprocketF.SOLID1  &
   stiffness = 1.0E+04  &
   damping = 100.0  &
   exponent = 1.25  &
   dmax = 1.0E-02
!
contact create  &
   contact_name = .FRS5_doe_8_LAUL.BL2_2_rotor  &
   adams_id = 73  &
   i_geometry_name = .FRS5_doe_8_LAUL.brassL2.FRUSTUM  &
   j_geometry_name = .FRS5_doe_8_LAUL.feed_rotorF.SOLID1  &
   stiffness = 1.0E+04  &
   damping = 100.0  &
   exponent = 1.25  &
   dmax = 1.0E-02
!
contact create  &
   contact_name = .FRS5_doe_8_LAUL.BU_2_c1g  &
   i_geometry_name = .FRS5_doe_8_LAUL.brassU2.frust  &
   j_geometry_name = .FRS5_doe_8_LAUL.positioner.c1g  &
   stiffness = 1.0E+04  &
   damping = 10.0  &
   exponent = 1.25  &
   dmax = 1.0E-02
!
contact create  &
   contact_name = .FRS5_doe_8_LAUL.pL3_2_fgate  &
   adams_id = 75  &
   i_geometry_name = .FRS5_doe_8_LAUL.projectileL3.SOLID2  &
   j_geometry_name = .FRS5_doe_8_LAUL.fwd_gateF.SOLID1  &
   stiffness = 1.0E+04  &
   damping = 100.0  &
   exponent = 1.25  &
   dmax = 1.0E-02
!
contact create  &
   contact_name = .FRS5_doe_8_LAUL.pL3_2_fwd_housing  &
   adams_id = 76  &
   i_geometry_name = .FRS5_doe_8_LAUL.projectileL3.CYL  &
   j_geometry_name =  &
      .FRS5_doe_8_LAUL.fwd_housing.SOLID5,  &
      .FRS5_doe_8_LAUL.fwd_housing.SOLID6,  &
      .FRS5_doe_8_LAUL.fwd_housing.SOLID7  &
   stiffness = 1.0E+04  &
   damping = 100.0  &
   exponent = 1.25  &
   dmax = 1.0E-02
!
contact create  &
   contact_name = .FRS5_doe_8_LAUL.BL3_2_frame  &
   adams_id = 77  &
   i_geometry_name = .FRS5_doe_8_LAUL.brassL3.SOLID8  &
   j_geometry_name =  &
      .FRS5_doe_8_LAUL.mid_frameX.SOLID1_2,  &
      .FRS5_doe_8_LAUL.mid_frameX.SOLID3_2,  &
      .FRS5_doe_8_LAUL.mid_frameX.SOLID1138,  &
      .FRS5_doe_8_LAUL.mid_frameX.SOLID1139,  &
      .FRS5_doe_8_LAUL.mid_frameX.SOLID1142  &
   stiffness = 1.0E+04  &
   damping = 100.0  &
   exponent = 1.25  &
   dmax = 1.0E-02
!
contact create  &
   contact_name = .FRS5_doe_8_LAUL.BL3_2_agate  &
   adams_id = 78  &
   i_geometry_name = .FRS5_doe_8_LAUL.brassL3.SOLID8  &
   j_geometry_name = .FRS5_doe_8_LAUL.aft_gateF.SOLID1  &
   stiffness = 1.0E+04  &
   damping = 100.0  &
   exponent = 1.25  &
   dmax = 1.0E-02
!
contact create  &
   contact_name = .FRS5_doe_8_LAUL.BL3_2_fwdsprocket  &
   adams_id = 79  &
   type = solid_to_solid  &
   i_geometry_name = .FRS5_doe_8_LAUL.brassL3.cyl  &
   j_geometry_name = .FRS5_doe_8_LAUL.lower_front_sprocketF.SOLID4  &
   stiffness = 1.0E+04  &
   damping = 100.0  &
   exponent = 1.25  &
   dmax = 1.0E-02
!
contact create  &
   contact_name = .FRS5_doe_8_LAUL.BL3_2_aftsprocket  &
   adams_id = 80  &
   type = solid_to_solid  &
   i_geometry_name = .FRS5_doe_8_LAUL.brassL3.FRUSTUM  &
   j_geometry_name = .FRS5_doe_8_LAUL.lower_rear_sprocketF.SOLID1  &
   stiffness = 1.0E+04  &
   damping = 100.0  &
   exponent = 1.25  &
   dmax = 1.0E-02
!
contact create  &
   contact_name = .FRS5_doe_8_LAUL.BL3_2_rotor  &
   adams_id = 81  &
   i_geometry_name = .FRS5_doe_8_LAUL.brassL3.FRUSTUM  &
   j_geometry_name = .FRS5_doe_8_LAUL.feed_rotorF.SOLID1  &
   stiffness = 1.0E+04  &
   damping = 100.0  &
   exponent = 1.25  &
   dmax = 1.0E-02
!
contact create  &
   contact_name = .FRS5_doe_8_LAUL.BL_3_c2g  &
   i_geometry_name = .FRS5_doe_8_LAUL.brassL3.FRUSTUM  &
   j_geometry_name = .FRS5_doe_8_LAUL.positioner.c2g  &
   stiffness = 1.0E+04  &
   damping = 10.0  &
   exponent = 1.25  &
   dmax = 1.0E-02
!
contact create  &
   contact_name = .FRS5_doe_8_LAUL.pL4_2_fgate  &
   adams_id = 83  &
   i_geometry_name = .FRS5_doe_8_LAUL.projectileL4.SOLID2  &
   j_geometry_name = .FRS5_doe_8_LAUL.fwd_gateF.SOLID1  &
   stiffness = 1.0E+04  &
   damping = 100.0  &
   exponent = 1.25  &
   dmax = 1.0E-02
!
contact create  &
   contact_name = .FRS5_doe_8_LAUL.pL4_2_fwd_housing  &
   adams_id = 84  &
   i_geometry_name = .FRS5_doe_8_LAUL.projectileL4.CYL  &
   j_geometry_name =  &
      .FRS5_doe_8_LAUL.fwd_housing.SOLID5,  &
      .FRS5_doe_8_LAUL.fwd_housing.SOLID6,  &
      .FRS5_doe_8_LAUL.fwd_housing.SOLID7  &
   stiffness = 1.0E+04  &
   damping = 100.0  &
   exponent = 1.25  &
   dmax = 1.0E-02
!
contact create  &
   contact_name = .FRS5_doe_8_LAUL.BL4_2_frame  &
   adams_id = 85  &
   i_geometry_name = .FRS5_doe_8_LAUL.brassL4.SOLID8  &
   j_geometry_name =  &
      .FRS5_doe_8_LAUL.mid_frameX.SOLID1_2,  &
      .FRS5_doe_8_LAUL.mid_frameX.SOLID3_2,  &
      .FRS5_doe_8_LAUL.mid_frameX.SOLID1138,  &
      .FRS5_doe_8_LAUL.mid_frameX.SOLID1139,  &
      .FRS5_doe_8_LAUL.mid_frameX.SOLID1142  &
   stiffness = 1.0E+04  &
   damping = 100.0  &
   exponent = 1.25  &
   dmax = 1.0E-02
!
contact create  &
   contact_name = .FRS5_doe_8_LAUL.BL4_2_agate  &
   adams_id = 86  &
   i_geometry_name = .FRS5_doe_8_LAUL.brassL4.SOLID8  &
   j_geometry_name = .FRS5_doe_8_LAUL.aft_gateF.SOLID1  &
   stiffness = 1.0E+04  &
   damping = 100.0  &
   exponent = 1.25  &
   dmax = 1.0E-02
!
contact create  &
   contact_name = .FRS5_doe_8_LAUL.BL4_2_fwdsprocket  &
   adams_id = 87  &
   type = solid_to_solid  &
   i_geometry_name = .FRS5_doe_8_LAUL.brassL4.cyl  &
   j_geometry_name = .FRS5_doe_8_LAUL.lower_front_sprocketF.SOLID4  &
   stiffness = 1.0E+04  &
   damping = 100.0  &
   exponent = 1.25  &
   dmax = 1.0E-02
!
contact create  &
   contact_name = .FRS5_doe_8_LAUL.BL4_2_aftsprocket  &
   adams_id = 88  &
   type = solid_to_solid  &
   i_geometry_name = .FRS5_doe_8_LAUL.brassL4.FRUSTUM  &
   j_geometry_name = .FRS5_doe_8_LAUL.lower_rear_sprocketF.SOLID1  &
   stiffness = 1.0E+04  &
   damping = 100.0  &
   exponent = 1.25  &
   dmax = 1.0E-02
!
contact create  &
   contact_name = .FRS5_doe_8_LAUL.BL4_2_rotor  &
   adams_id = 89  &
   i_geometry_name = .FRS5_doe_8_LAUL.brassL4.FRUSTUM  &
   j_geometry_name = .FRS5_doe_8_LAUL.feed_rotorF.SOLID1  &
   stiffness = 1.0E+04  &
   damping = 100.0  &
   exponent = 1.25  &
   dmax = 1.0E-02
!
contact create  &
   contact_name = .FRS5_doe_8_LAUL.BL_4_c2g  &
   i_geometry_name = .FRS5_doe_8_LAUL.brassL4.FRUSTUM  &
   j_geometry_name = .FRS5_doe_8_LAUL.positioner.c2g  &
   stiffness = 1.0E+04  &
   damping = 10.0  &
   exponent = 1.25  &
   dmax = 1.0E-02
!
contact create  &
   contact_name = .FRS5_doe_8_LAUL.pL5_2_fgate  &
   adams_id = 91  &
   i_geometry_name = .FRS5_doe_8_LAUL.projectileL5.SOLID2  &
   j_geometry_name = .FRS5_doe_8_LAUL.fwd_gateF.SOLID1  &
   stiffness = 1.0E+04  &
   damping = 100.0  &
   exponent = 1.25  &
   dmax = 1.0E-02
!
contact create  &
   contact_name = .FRS5_doe_8_LAUL.pL5_2_fwd_housing  &
   adams_id = 92  &
   i_geometry_name = .FRS5_doe_8_LAUL.projectileL5.CYL  &
   j_geometry_name =  &
      .FRS5_doe_8_LAUL.fwd_housing.SOLID5,  &
      .FRS5_doe_8_LAUL.fwd_housing.SOLID6,  &
      .FRS5_doe_8_LAUL.fwd_housing.SOLID7  &
   stiffness = 1.0E+04  &
   damping = 100.0  &
   exponent = 1.25  &
   dmax = 1.0E-02
!
contact create  &
   contact_name = .FRS5_doe_8_LAUL.BL5_2_frame  &
   adams_id = 93  &
   i_geometry_name = .FRS5_doe_8_LAUL.brassL5.SOLID8  &
   j_geometry_name =  &
      .FRS5_doe_8_LAUL.mid_frameX.SOLID1_2,  &
      .FRS5_doe_8_LAUL.mid_frameX.SOLID3_2,  &
      .FRS5_doe_8_LAUL.mid_frameX.SOLID1138,  &
      .FRS5_doe_8_LAUL.mid_frameX.SOLID1139,  &
      .FRS5_doe_8_LAUL.mid_frameX.SOLID1142  &
   stiffness = 1.0E+04  &
   damping = 100.0  &
   exponent = 1.25  &
   dmax = 1.0E-02
!
contact create  &
   contact_name = .FRS5_doe_8_LAUL.BL5_2_agate  &
   adams_id = 94  &
   i_geometry_name = .FRS5_doe_8_LAUL.brassL5.SOLID8  &
   j_geometry_name = .FRS5_doe_8_LAUL.aft_gateF.SOLID1  &
   stiffness = 1.0E+04  &
   damping = 100.0  &
   exponent = 1.25  &
   dmax = 1.0E-02
!
contact create  &
   contact_name = .FRS5_doe_8_LAUL.BL5_2_fwdsprocket  &
   adams_id = 95  &
   type = solid_to_solid  &
   i_geometry_name = .FRS5_doe_8_LAUL.brassL5.cyl  &
   j_geometry_name = .FRS5_doe_8_LAUL.lower_front_sprocketF.SOLID4  &
   stiffness = 1.0E+04  &
   damping = 100.0  &
   exponent = 1.25  &
   dmax = 1.0E-02
!
contact create  &
   contact_name = .FRS5_doe_8_LAUL.BL5_2_aftsprocket  &
   adams_id = 96  &
   type = solid_to_solid  &
   i_geometry_name = .FRS5_doe_8_LAUL.brassL5.FRUSTUM  &
   j_geometry_name = .FRS5_doe_8_LAUL.lower_rear_sprocketF.SOLID1  &
   stiffness = 1.0E+04  &
   damping = 100.0  &
   exponent = 1.25  &
   dmax = 1.0E-02
!
contact create  &
   contact_name = .FRS5_doe_8_LAUL.BL5_2_rotor  &
   adams_id = 97  &
   i_geometry_name = .FRS5_doe_8_LAUL.brassL5.FRUSTUM  &
   j_geometry_name = .FRS5_doe_8_LAUL.feed_rotorF.SOLID1  &
   stiffness = 1.0E+04  &
   damping = 100.0  &
   exponent = 1.25  &
   dmax = 1.0E-02
!
contact create  &
   contact_name = .FRS5_doe_8_LAUL.BL_5_c2g  &
   i_geometry_name = .FRS5_doe_8_LAUL.brassL5.FRUSTUM  &
   j_geometry_name = .FRS5_doe_8_LAUL.positioner.c2g  &
   stiffness = 1.0E+04  &
   damping = 10.0  &
   exponent = 1.25  &
   dmax = 1.0E-02
!
contact create  &
   contact_name = .FRS5_doe_8_LAUL.BU_1_c5g  &
   i_geometry_name = .FRS5_doe_8_LAUL.brassU1.frust  &
   j_geometry_name = .FRS5_doe_8_LAUL.positioner.c5g  &
   stiffness = 1.0E+04  &
   damping = 10.0  &
   exponent = 1.25  &
   dmax = 1.0E-02
!
contact create  &
   contact_name = .FRS5_doe_8_LAUL.BL_1_c5g  &
   i_geometry_name = .FRS5_doe_8_LAUL.brassL1.FRUSTUM  &
   j_geometry_name = .FRS5_doe_8_LAUL.positioner.c5g  &
   stiffness = 1.0E+04  &
   damping = 10.0  &
   exponent = 1.25  &
   dmax = 1.0E-02
!
contact create  &
   contact_name = .FRS5_doe_8_LAUL.BL_2_c2g  &
   i_geometry_name = .FRS5_doe_8_LAUL.brassL2.FRUSTUM  &
   j_geometry_name = .FRS5_doe_8_LAUL.positioner.c2g  &
   stiffness = 1.0E+04  &
   damping = 10.0  &
   exponent = 1.25  &
   dmax = 1.0E-02
!
contact create  &
   contact_name = .FRS5_doe_8_LAUL.BU_2_c5g  &
   i_geometry_name = .FRS5_doe_8_LAUL.brassU2.frust  &
   j_geometry_name = .FRS5_doe_8_LAUL.positioner.c5g  &
   stiffness = 1.0E+04  &
   damping = 10.0  &
   exponent = 1.25  &
   dmax = 1.0E-02
!
contact create  &
   contact_name = .FRS5_doe_8_LAUL.BL_2_c5g  &
   i_geometry_name = .FRS5_doe_8_LAUL.brassL2.FRUSTUM  &
   j_geometry_name = .FRS5_doe_8_LAUL.positioner.c5g  &
   stiffness = 1.0E+04  &
   damping = 10.0  &
   exponent = 1.25  &
   dmax = 1.0E-02
!
contact create  &
   contact_name = .FRS5_doe_8_LAUL.BU_3_c5g  &
   i_geometry_name = .FRS5_doe_8_LAUL.brassU3.frust  &
   j_geometry_name = .FRS5_doe_8_LAUL.positioner.c5g  &
   stiffness = 1.0E+04  &
   damping = 10.0  &
   exponent = 1.25  &
   dmax = 1.0E-02
!
contact create  &
   contact_name = .FRS5_doe_8_LAUL.BL_3_c5g  &
   i_geometry_name = .FRS5_doe_8_LAUL.brassL3.FRUSTUM  &
   j_geometry_name = .FRS5_doe_8_LAUL.positioner.c5g  &
   stiffness = 1.0E+04  &
   damping = 10.0  &
   exponent = 1.25  &
   dmax = 1.0E-02
!
contact create  &
   contact_name = .FRS5_doe_8_LAUL.BU_4_c5g  &
   i_geometry_name = .FRS5_doe_8_LAUL.brassU4.frust  &
   j_geometry_name = .FRS5_doe_8_LAUL.positioner.c5g  &
   stiffness = 1.0E+04  &
   damping = 10.0  &
   exponent = 1.25  &
   dmax = 1.0E-02
!
contact create  &
   contact_name = .FRS5_doe_8_LAUL.BL_4_c5g  &
   i_geometry_name = .FRS5_doe_8_LAUL.brassL4.FRUSTUM  &
   j_geometry_name = .FRS5_doe_8_LAUL.positioner.c5g  &
   stiffness = 1.0E+04  &
   damping = 10.0  &
   exponent = 1.25  &
   dmax = 1.0E-02
!
contact create  &
   contact_name = .FRS5_doe_8_LAUL.BU_5_c5g  &
   i_geometry_name = .FRS5_doe_8_LAUL.brassU5.frust  &
   j_geometry_name = .FRS5_doe_8_LAUL.positioner.c5g  &
   stiffness = 1.0E+04  &
   damping = 10.0  &
   exponent = 1.25  &
   dmax = 1.0E-02
!
contact create  &
   contact_name = .FRS5_doe_8_LAUL.BL_5_c5g  &
   i_geometry_name = .FRS5_doe_8_LAUL.brassL5.FRUSTUM  &
   j_geometry_name = .FRS5_doe_8_LAUL.positioner.c5g  &
   stiffness = 1.0E+04  &
   damping = 10.0  &
   exponent = 1.25  &
   dmax = 1.0E-02
!
contact create  &
   contact_name = .FRS5_doe_8_LAUL.b1_2_shack  &
   type = solid_to_solid  &
   i_geometry_name = .FRS5_doe_8_LAUL.brassU1.frust  &
   j_geometry_name = .FRS5_doe_8_LAUL.sideY1_32.solid_shackle1a  &
   stiffness = 1.0E+04  &
   damping = 10.0  &
   exponent = 1.25  &
   dmax = 1.0E-02
!
contact create  &
   contact_name = .FRS5_doe_8_LAUL.BL1_2_shack  &
   type = solid_to_solid  &
   i_geometry_name = .FRS5_doe_8_LAUL.brassL1.FRUSTUM  &
   j_geometry_name = .FRS5_doe_8_LAUL.sideY2_30.solid_shackle2a  &
   stiffness = 1.0E+04  &
   damping = 10.0  &
   exponent = 1.25  &
   dmax = 1.0E-02
!
contact create  &
   contact_name = .FRS5_doe_8_LAUL.b2_2_shack  &
   type = solid_to_solid  &
   i_geometry_name = .FRS5_doe_8_LAUL.brassU2.frust  &
   j_geometry_name = .FRS5_doe_8_LAUL.sideY1_32.solid_shackle1a  &
   stiffness = 1.0E+04  &
   damping = 10.0  &
   exponent = 1.25  &
   dmax = 1.0E-02
!
contact create  &
   contact_name = .FRS5_doe_8_LAUL.BL2_2_shack  &
   type = solid_to_solid  &
   i_geometry_name = .FRS5_doe_8_LAUL.brassL2.FRUSTUM  &
   j_geometry_name = .FRS5_doe_8_LAUL.sideY2_30.solid_shackle2a  &
   stiffness = 1.0E+04  &
   damping = 10.0  &
   exponent = 1.25  &
   dmax = 1.0E-02
!
contact create  &
   contact_name = .FRS5_doe_8_LAUL.b3_2_shack  &
   type = solid_to_solid  &
   i_geometry_name = .FRS5_doe_8_LAUL.brassU3.frust  &
   j_geometry_name = .FRS5_doe_8_LAUL.sideY1_32.solid_shackle1a  &
   stiffness = 1.0E+04  &
   damping = 10.0  &
   exponent = 1.25  &
   dmax = 1.0E-02
!
contact create  &
   contact_name = .FRS5_doe_8_LAUL.BL3_2_shack  &
   type = solid_to_solid  &
   i_geometry_name = .FRS5_doe_8_LAUL.brassL3.FRUSTUM  &
   j_geometry_name = .FRS5_doe_8_LAUL.sideY2_30.solid_shackle2a  &
   stiffness = 1.0E+04  &
   damping = 10.0  &
   exponent = 1.25  &
   dmax = 1.0E-02
!
contact create  &
   contact_name = .FRS5_doe_8_LAUL.b4_2_shack  &
   type = solid_to_solid  &
   i_geometry_name = .FRS5_doe_8_LAUL.brassU4.frust  &
   j_geometry_name = .FRS5_doe_8_LAUL.sideY1_32.solid_shackle1a  &
   stiffness = 1.0E+04  &
   damping = 10.0  &
   exponent = 1.25  &
   dmax = 1.0E-02
!
contact create  &
   contact_name = .FRS5_doe_8_LAUL.BL4_2_shack  &
   type = solid_to_solid  &
   i_geometry_name = .FRS5_doe_8_LAUL.brassL4.FRUSTUM  &
   j_geometry_name = .FRS5_doe_8_LAUL.sideY2_30.solid_shackle2a  &
   stiffness = 1.0E+04  &
   damping = 10.0  &
   exponent = 1.25  &
   dmax = 1.0E-02
!
contact create  &
   contact_name = .FRS5_doe_8_LAUL.b5_2_shack  &
   type = solid_to_solid  &
   i_geometry_name = .FRS5_doe_8_LAUL.brassU5.frust  &
   j_geometry_name = .FRS5_doe_8_LAUL.sideY1_32.solid_shackle1a  &
   stiffness = 1.0E+04  &
   damping = 10.0  &
   exponent = 1.25  &
   dmax = 1.0E-02
!
contact create  &
   contact_name = .FRS5_doe_8_LAUL.BL5_2_shack  &
   type = solid_to_solid  &
   i_geometry_name = .FRS5_doe_8_LAUL.brassL5.FRUSTUM  &
   j_geometry_name = .FRS5_doe_8_LAUL.sideY2_30.solid_shackle2a  &
   stiffness = 1.0E+04  &
   damping = 10.0  &
   exponent = 1.25  &
   dmax = 1.0E-02
!
contact create  &
   contact_name = .FRS5_doe_8_LAUL.roll_2_s2_27  &
   type = solid_to_solid  &
   i_geometry_name = .FRS5_doe_8_LAUL.positioner.c2g  &
   j_geometry_name = .FRS5_doe_8_LAUL.sideY2_27.beamY_s2_27_b  &
   stiffness = 1.0E+04  &
   damping = 10.0  &
   exponent = 1.25  &
   dmax = 1.0E-02
!
contact create  &
   contact_name = .FRS5_doe_8_LAUL.roll_2_s2_28  &
   type = solid_to_solid  &
   i_geometry_name = .FRS5_doe_8_LAUL.positioner.c2g  &
   j_geometry_name = .FRS5_doe_8_LAUL.sideY2_28.beamY_s2_28_b  &
   stiffness = 1.0E+04  &
   damping = 10.0  &
   exponent = 1.25  &
   dmax = 1.0E-02
!
contact create  &
   contact_name = .FRS5_doe_8_LAUL.roll_2_s2_29  &
   type = solid_to_solid  &
   i_geometry_name = .FRS5_doe_8_LAUL.positioner.c2g  &
   j_geometry_name = .FRS5_doe_8_LAUL.sideY2_29.beamY_s2_29_b  &
   stiffness = 1.0E+04  &
   damping = 10.0  &
   exponent = 1.25  &
   dmax = 1.0E-02
!
contact create  &
   contact_name = .FRS5_doe_8_LAUL.roll_2_s1_30  &
   type = solid_to_solid  &
   i_geometry_name = .FRS5_doe_8_LAUL.positioner.c1g  &
   j_geometry_name = .FRS5_doe_8_LAUL.sideY1_30.beamY_s1_30_b  &
   stiffness = 1.0E+04  &
   damping = 10.0  &
   exponent = 1.25  &
   dmax = 1.0E-02
!
contact create  &
   contact_name = .FRS5_doe_8_LAUL.roll_2_s1_31  &
   type = solid_to_solid  &
   i_geometry_name = .FRS5_doe_8_LAUL.positioner.c1g  &
   j_geometry_name = .FRS5_doe_8_LAUL.sideY1_31.beamY_s1_31_b  &
   stiffness = 1.0E+04  &
   damping = 10.0  &
   exponent = 1.25  &
   dmax = 1.0E-02
!
contact create  &
   contact_name = .FRS5_doe_8_LAUL.roll_2_s1_32  &
   type = solid_to_solid  &
   i_geometry_name = .FRS5_doe_8_LAUL.positioner.c1g  &
   j_geometry_name = .FRS5_doe_8_LAUL.sideY1_32.beamY_s1_32_b  &
   stiffness = 1.0E+04  &
   damping = 10.0  &
   exponent = 1.25  &
   dmax = 1.0E-02
!
!--------------------------------- Equations ----------------------------------!
!
!
part create equation differential_equation  &
   differential_equation_name = .FRS5_doe_8_LAUL.upper_clutch_penetration  &
   adams_id = 7  &
   initial_condition = 0.0  &
   function = ""  &
   implicit = off  &
   static_hold = off
!
part create equation differential_equation  &
   differential_equation_name = .FRS5_doe_8_LAUL.UprDriveRotation  &
   adams_id = 2000  &
   initial_condition = 0.0  &
   function = ""  &
   implicit = off  &
   static_hold = on  &
   dynamic_hold = off
!
part create equation differential_equation  &
   differential_equation_name = .FRS5_doe_8_LAUL.lower_shaft_disp  &
   adams_id = 8  &
   initial_condition = 0.0  &
   function = ""  &
   implicit = off
!
part create equation differential_equation  &
   differential_equation_name = .FRS5_doe_8_LAUL.LwrDriveRotation  &
   adams_id = 2001  &
   initial_condition = 0.0  &
   function = ""  &
   implicit = off  &
   static_hold = on  &
   dynamic_hold = off
!
part create equation differential_equation  &
   differential_equation_name = .FRS5_doe_8_LAUL.dwell_time_1_diff  &
   initial_condition = 0.0  &
   function = ""  &
   implicit = off  &
   static_hold = off  &
   dynamic_hold = off
!
part create equation differential_equation  &
   differential_equation_name = .FRS5_doe_8_LAUL.dwell_time_2_diff  &
   initial_condition = 0.0  &
   function = ""  &
   implicit = off  &
   static_hold = off  &
   dynamic_hold = off
!
part create equation differential_equation  &
   differential_equation_name = .FRS5_doe_8_LAUL.dwell_time_3_diff  &
   initial_condition = 0.0  &
   function = ""  &
   implicit = off  &
   static_hold = off  &
   dynamic_hold = off
!
part create equation differential_equation  &
   differential_equation_name = .FRS5_doe_8_LAUL.dwell_time_4_diff  &
   initial_condition = 0.0  &
   function = ""  &
   implicit = off  &
   static_hold = off  &
   dynamic_hold = off
!
part create equation differential_equation  &
   differential_equation_name = .FRS5_doe_8_LAUL.dwell_time_5_diff  &
   initial_condition = 0.0  &
   function = ""  &
   implicit = off  &
   static_hold = off  &
   dynamic_hold = off
!
part create equation differential_equation  &
   differential_equation_name = .FRS5_doe_8_LAUL.round_control_1_diff  &
   initial_condition = 0.0  &
   function = ""  &
   implicit = off  &
   static_hold = off  &
   dynamic_hold = off
!
part create equation differential_equation  &
   differential_equation_name = .FRS5_doe_8_LAUL.round_control_2_diff  &
   initial_condition = 0.0  &
   function = ""  &
   implicit = off  &
   static_hold = off  &
   dynamic_hold = off
!
part create equation differential_equation  &
   differential_equation_name = .FRS5_doe_8_LAUL.round_control_3_diff  &
   initial_condition = 0.0  &
   function = ""  &
   implicit = off  &
   static_hold = off  &
   dynamic_hold = off
!
part create equation differential_equation  &
   differential_equation_name = .FRS5_doe_8_LAUL.round_control_4_diff  &
   initial_condition = 0.0  &
   function = ""  &
   implicit = off  &
   static_hold = off  &
   dynamic_hold = off
!
part create equation differential_equation  &
   differential_equation_name = .FRS5_doe_8_LAUL.round_control_5_diff  &
   initial_condition = 0.0  &
   function = ""  &
   implicit = off  &
   static_hold = off  &
   dynamic_hold = off
!
!---------------------------- Higher pair contacts ----------------------------!
!
!
constraint create higher_pair_contact point_curve  &
   point_curve_name = .FRS5_doe_8_LAUL.PTCV_U11  &
   adams_id = 1  &
   i_marker_name = .FRS5_doe_8_LAUL.linkU1line1dummy.cm  &
   j_floating_marker_name = .FRS5_doe_8_LAUL.upper_rail.FMARKER_744  &
   ref_marker_name = .FRS5_doe_8_LAUL.upper_rail.rail_top_ref  &
   curve_name = .FRS5_doe_8_LAUL.rail_curve
!
constraint attributes  &
   constraint_name = .FRS5_doe_8_LAUL.PTCV_U11  &
   visibility = off
!
constraint create higher_pair_contact point_curve  &
   point_curve_name = .FRS5_doe_8_LAUL.PTCV_U21  &
   adams_id = 2  &
   i_marker_name = .FRS5_doe_8_LAUL.linkU2line1dummy.cm  &
   j_floating_marker_name = .FRS5_doe_8_LAUL.upper_rail.FMARKER_745  &
   ref_marker_name = .FRS5_doe_8_LAUL.upper_rail.rail_top_ref  &
   curve_name = .FRS5_doe_8_LAUL.rail_curve
!
constraint attributes  &
   constraint_name = .FRS5_doe_8_LAUL.PTCV_U21  &
   visibility = off
!
constraint create higher_pair_contact point_curve  &
   point_curve_name = .FRS5_doe_8_LAUL.PTCV_U31  &
   adams_id = 3  &
   i_marker_name = .FRS5_doe_8_LAUL.linkU3line1dummy.cm  &
   j_floating_marker_name = .FRS5_doe_8_LAUL.upper_rail.FMARKER_746  &
   ref_marker_name = .FRS5_doe_8_LAUL.upper_rail.rail_top_ref  &
   curve_name = .FRS5_doe_8_LAUL.rail_curve
!
constraint attributes  &
   constraint_name = .FRS5_doe_8_LAUL.PTCV_U31  &
   visibility = off
!
constraint create higher_pair_contact point_curve  &
   point_curve_name = .FRS5_doe_8_LAUL.PTCV_U41  &
   adams_id = 4  &
   i_marker_name = .FRS5_doe_8_LAUL.linkU4line1dummy.cm  &
   j_floating_marker_name = .FRS5_doe_8_LAUL.upper_rail.FMARKER_747  &
   ref_marker_name = .FRS5_doe_8_LAUL.upper_rail.rail_top_ref  &
   curve_name = .FRS5_doe_8_LAUL.rail_curve
!
constraint attributes  &
   constraint_name = .FRS5_doe_8_LAUL.PTCV_U41  &
   visibility = off
!
constraint create higher_pair_contact point_curve  &
   point_curve_name = .FRS5_doe_8_LAUL.PTCV_U42  &
   adams_id = 7  &
   i_marker_name = .FRS5_doe_8_LAUL.linkU4line2dummy.cm  &
   j_floating_marker_name = .FRS5_doe_8_LAUL.mid_frameX.FMARKER_750  &
   ref_marker_name = .FRS5_doe_8_LAUL.mid_frameX.top_of_rail  &
   curve_name = .FRS5_doe_8_LAUL.rail_curve
!
constraint attributes  &
   constraint_name = .FRS5_doe_8_LAUL.PTCV_U42  &
   visibility = off
!
constraint create higher_pair_contact point_curve  &
   point_curve_name = .FRS5_doe_8_LAUL.PTCV_U32  &
   adams_id = 8  &
   i_marker_name = .FRS5_doe_8_LAUL.linkU3line2dummy.cm  &
   j_floating_marker_name = .FRS5_doe_8_LAUL.mid_frameX.FMARKER_751  &
   ref_marker_name = .FRS5_doe_8_LAUL.mid_frameX.top_of_rail  &
   curve_name = .FRS5_doe_8_LAUL.rail_curve
!
constraint attributes  &
   constraint_name = .FRS5_doe_8_LAUL.PTCV_U32  &
   visibility = off
!
constraint create higher_pair_contact point_curve  &
   point_curve_name = .FRS5_doe_8_LAUL.PTCV_U22  &
   adams_id = 9  &
   i_marker_name = .FRS5_doe_8_LAUL.linkU2line2dummy.cm  &
   j_floating_marker_name = .FRS5_doe_8_LAUL.mid_frameX.FMARKER_752  &
   ref_marker_name = .FRS5_doe_8_LAUL.mid_frameX.top_of_rail  &
   curve_name = .FRS5_doe_8_LAUL.rail_curve
!
constraint attributes  &
   constraint_name = .FRS5_doe_8_LAUL.PTCV_U22  &
   visibility = off
!
constraint create higher_pair_contact point_curve  &
   point_curve_name = .FRS5_doe_8_LAUL.PTCV_U12  &
   adams_id = 10  &
   i_marker_name = .FRS5_doe_8_LAUL.linkU1line2dummy.cm  &
   j_floating_marker_name = .FRS5_doe_8_LAUL.mid_frameX.FMARKER_753  &
   ref_marker_name = .FRS5_doe_8_LAUL.mid_frameX.top_of_rail  &
   curve_name = .FRS5_doe_8_LAUL.rail_curve
!
constraint attributes  &
   constraint_name = .FRS5_doe_8_LAUL.PTCV_U12  &
   visibility = off
!
constraint create higher_pair_contact point_curve  &
   point_curve_name = .FRS5_doe_8_LAUL.PTCV_U51  &
   adams_id = 11  &
   i_marker_name = .FRS5_doe_8_LAUL.linkU5line1dummy.cm  &
   j_floating_marker_name = .FRS5_doe_8_LAUL.upper_rail.FMARKER_2457  &
   ref_marker_name = .FRS5_doe_8_LAUL.upper_rail.MARKER_2458  &
   curve_name = .FRS5_doe_8_LAUL.rail_curve
!
constraint attributes  &
   constraint_name = .FRS5_doe_8_LAUL.PTCV_U51  &
   visibility = off
!
constraint create higher_pair_contact point_curve  &
   point_curve_name = .FRS5_doe_8_LAUL.PTCV_U52  &
   adams_id = 12  &
   i_marker_name = .FRS5_doe_8_LAUL.linkU5line2dummy.cm  &
   j_floating_marker_name = .FRS5_doe_8_LAUL.mid_frameX.FMARKER_2459  &
   ref_marker_name = .FRS5_doe_8_LAUL.mid_frameX.MARKER_2460  &
   curve_name = .FRS5_doe_8_LAUL.rail_curve
!
constraint attributes  &
   constraint_name = .FRS5_doe_8_LAUL.PTCV_U52  &
   visibility = off
!
constraint create higher_pair_contact point_curve  &
   point_curve_name = .FRS5_doe_8_LAUL.PTCV_L21  &
   adams_id = 13  &
   i_marker_name = .FRS5_doe_8_LAUL.linkL2line1dummy.cm  &
   j_floating_marker_name = .FRS5_doe_8_LAUL.lower_rail.FMARKER_3761  &
   ref_marker_name = .FRS5_doe_8_LAUL.lower_rail.start_pos1  &
   curve_name = .FRS5_doe_8_LAUL.lower_rail_curve
!
constraint create higher_pair_contact point_curve  &
   point_curve_name = .FRS5_doe_8_LAUL.PTCV_L22  &
   adams_id = 14  &
   i_marker_name = .FRS5_doe_8_LAUL.linkL2line2dummy.cm  &
   j_floating_marker_name = .FRS5_doe_8_LAUL.mid_frameX.FMARKER_3762  &
   ref_marker_name = .FRS5_doe_8_LAUL.mid_frameX.strip_ref  &
   curve_name = .FRS5_doe_8_LAUL.lower_rail_curve
!
constraint create higher_pair_contact point_curve  &
   point_curve_name = .FRS5_doe_8_LAUL.PTCV_L31  &
   adams_id = 15  &
   i_marker_name = .FRS5_doe_8_LAUL.linkL3line1dummy.cm  &
   j_floating_marker_name = .FRS5_doe_8_LAUL.lower_rail.FMARKER_3763  &
   ref_marker_name = .FRS5_doe_8_LAUL.lower_rail.start_pos1  &
   curve_name = .FRS5_doe_8_LAUL.lower_rail_curve
!
constraint create higher_pair_contact point_curve  &
   point_curve_name = .FRS5_doe_8_LAUL.PTCV_L32  &
   adams_id = 16  &
   i_marker_name = .FRS5_doe_8_LAUL.linkL3line2dummy.cm  &
   j_floating_marker_name = .FRS5_doe_8_LAUL.mid_frameX.FMARKER_3764  &
   ref_marker_name = .FRS5_doe_8_LAUL.mid_frameX.strip_ref  &
   curve_name = .FRS5_doe_8_LAUL.lower_rail_curve
!
constraint create higher_pair_contact point_curve  &
   point_curve_name = .FRS5_doe_8_LAUL.PTCV_L41  &
   adams_id = 17  &
   i_marker_name = .FRS5_doe_8_LAUL.linkL4line1dummy.cm  &
   j_floating_marker_name = .FRS5_doe_8_LAUL.lower_rail.FMARKER_3765  &
   ref_marker_name = .FRS5_doe_8_LAUL.lower_rail.start_pos1  &
   curve_name = .FRS5_doe_8_LAUL.lower_rail_curve
!
constraint create higher_pair_contact point_curve  &
   point_curve_name = .FRS5_doe_8_LAUL.PTCV_L42  &
   adams_id = 18  &
   i_marker_name = .FRS5_doe_8_LAUL.linkL4line2dummy.cm  &
   j_floating_marker_name = .FRS5_doe_8_LAUL.mid_frameX.FMARKER_3766  &
   ref_marker_name = .FRS5_doe_8_LAUL.mid_frameX.strip_ref  &
   curve_name = .FRS5_doe_8_LAUL.lower_rail_curve
!
constraint create higher_pair_contact point_curve  &
   point_curve_name = .FRS5_doe_8_LAUL.PTCV_L51  &
   adams_id = 19  &
   i_marker_name = .FRS5_doe_8_LAUL.linkL5line1dummy.cm  &
   j_floating_marker_name = .FRS5_doe_8_LAUL.lower_rail.FMARKER_3767  &
   ref_marker_name = .FRS5_doe_8_LAUL.lower_rail.start_pos1  &
   curve_name = .FRS5_doe_8_LAUL.lower_rail_curve
!
constraint create higher_pair_contact point_curve  &
   point_curve_name = .FRS5_doe_8_LAUL.PTCV_L52  &
   adams_id = 20  &
   i_marker_name = .FRS5_doe_8_LAUL.linkL5line2dummy.cm  &
   j_floating_marker_name = .FRS5_doe_8_LAUL.mid_frameX.FMARKER_3768  &
   ref_marker_name = .FRS5_doe_8_LAUL.mid_frameX.strip_ref  &
   curve_name = .FRS5_doe_8_LAUL.lower_rail_curve
!
!----------------------------------- Joints -----------------------------------!
!
!
constraint create joint fixed  &
   joint_name = .FRS5_doe_8_LAUL.side1mount  &
   adams_id = 55  &
   i_marker_name = .FRS5_doe_8_LAUL.sideY1_2.fix1a  &
   j_marker_name = .FRS5_doe_8_LAUL.positioner_spring.fix1b
!
constraint create joint fixed  &
   joint_name = .FRS5_doe_8_LAUL.side2mount  &
   adams_id = 56  &
   i_marker_name = .FRS5_doe_8_LAUL.sideY2_2.fix2a  &
   j_marker_name = .FRS5_doe_8_LAUL.positioner_spring.fix2b
!
constraint create joint revolute  &
   joint_name = .FRS5_doe_8_LAUL.spider_bearing  &
   adams_id = 1  &
   i_marker_name = .FRS5_doe_8_LAUL.selector_spider.MARKER_1  &
   j_marker_name = .FRS5_doe_8_LAUL.rear_housing.MARKER_2
!
constraint attributes  &
   constraint_name = .FRS5_doe_8_LAUL.spider_bearing  &
   visibility = off  &
   name_visibility = off  &
   size_of_icons = 7.0
!
constraint create joint revolute  &
   joint_name = .FRS5_doe_8_LAUL.lower_shaft_bearing  &
   adams_id = 2  &
   i_marker_name = .FRS5_doe_8_LAUL.lower_drive_shaftF.b2  &
   j_marker_name = .FRS5_doe_8_LAUL.mid_frameX.b1
!
constraint attributes  &
   constraint_name = .FRS5_doe_8_LAUL.lower_shaft_bearing  &
   visibility = off  &
   size_of_icons = 7.0
!
constraint create joint revolute  &
   joint_name = .FRS5_doe_8_LAUL.upper_shaft_bearing  &
   adams_id = 3  &
   i_marker_name = .FRS5_doe_8_LAUL.upper_drive_shaftF.b3  &
   j_marker_name = .FRS5_doe_8_LAUL.mid_frameX.b4
!
constraint attributes  &
   constraint_name = .FRS5_doe_8_LAUL.upper_shaft_bearing  &
   visibility = off  &
   size_of_icons = 7.0
!
constraint create joint spherical  &
   joint_name = .FRS5_doe_8_LAUL.feed_shaft_bearing1  &
   adams_id = 4  &
   i_marker_name = .FRS5_doe_8_LAUL.rotor_shaftF.MARKER_7  &
   j_marker_name = .FRS5_doe_8_LAUL.mid_frameX.MARKER_8
!
constraint attributes  &
   constraint_name = .FRS5_doe_8_LAUL.feed_shaft_bearing1  &
   visibility = off  &
   size_of_icons = 7.0
!
constraint create joint fixed  &
   joint_name = .FRS5_doe_8_LAUL.feed_rotor2shaft  &
   adams_id = 5  &
   i_marker_name = .FRS5_doe_8_LAUL.feed_rotorF.MARKER_11  &
   j_marker_name = .FRS5_doe_8_LAUL.rotor_shaftF.MARKER_12
!
constraint attributes  &
   constraint_name = .FRS5_doe_8_LAUL.feed_rotor2shaft  &
   visibility = off  &
   size_of_icons = 7.0
!
constraint create joint fixed  &
   joint_name = .FRS5_doe_8_LAUL.cam2_fix2shaft  &
   adams_id = 40  &
   i_marker_name = .FRS5_doe_8_LAUL.ferguson_camF.MARKER_504  &
   j_marker_name = .FRS5_doe_8_LAUL.ferguson_shaftF.MARKER_505
!
constraint attributes  &
   constraint_name = .FRS5_doe_8_LAUL.cam2_fix2shaft  &
   visibility = off
!
constraint create joint revolute  &
   joint_name = .FRS5_doe_8_LAUL.ferguson_shaft_bearing  &
   adams_id = 9  &
   i_marker_name = .FRS5_doe_8_LAUL.ferguson_shaftF.MARKER_19  &
   j_marker_name = .FRS5_doe_8_LAUL.rear_housing.MARKER_20
!
constraint attributes  &
   constraint_name = .FRS5_doe_8_LAUL.ferguson_shaft_bearing  &
   visibility = off  &
   size_of_icons = 7.0
!
constraint create joint revolute  &
   joint_name = .FRS5_doe_8_LAUL.temp_spring_joint  &
   adams_id = 30  &
   i_marker_name = .FRS5_doe_8_LAUL.positioner_spring.MARKER_215  &
   j_marker_name = .FRS5_doe_8_LAUL.mid_frameX.pspring_attach_point
!
constraint attributes  &
   constraint_name = .FRS5_doe_8_LAUL.temp_spring_joint  &
   visibility = off
!
constraint create joint revolute  &
   joint_name = .FRS5_doe_8_LAUL.worm_drive_bearing  &
   adams_id = 11  &
   i_marker_name = .FRS5_doe_8_LAUL.worm_driveX.MARKER_23  &
   j_marker_name = .FRS5_doe_8_LAUL.rear_housing.MARKER_24
!
constraint attributes  &
   constraint_name = .FRS5_doe_8_LAUL.worm_drive_bearing  &
   visibility = off  &
   size_of_icons = 7.0
!
constraint create joint fixed  &
   joint_name = .FRS5_doe_8_LAUL.clutch_weld  &
   adams_id = 12  &
   i_marker_name = .FRS5_doe_8_LAUL.clutch_gearF.MARKER_25  &
   j_marker_name = .FRS5_doe_8_LAUL.clutch_shaftF.MARKER_26
!
constraint attributes  &
   constraint_name = .FRS5_doe_8_LAUL.clutch_weld  &
   visibility = off  &
   size_of_icons = 7.0
!
constraint create joint fixed  &
   joint_name = .FRS5_doe_8_LAUL.ferguson_rotor_spline  &
   adams_id = 14  &
   i_marker_name = .FRS5_doe_8_LAUL.rotor_shaftF.end_center1  &
   j_marker_name = .FRS5_doe_8_LAUL.ferguson_rotorX.end_center2
!
constraint attributes  &
   constraint_name = .FRS5_doe_8_LAUL.ferguson_rotor_spline  &
   visibility = off  &
   size_of_icons = 7.0
!
constraint create joint fixed  &
   joint_name = .FRS5_doe_8_LAUL.upper_rail_attach  &
   adams_id = 15  &
   i_marker_name = .FRS5_doe_8_LAUL.upper_rail.MARKER_31  &
   j_marker_name = .FRS5_doe_8_LAUL.fwd_housing.MARKER_32
!
constraint attributes  &
   constraint_name = .FRS5_doe_8_LAUL.upper_rail_attach  &
   visibility = off  &
   size_of_icons = 7.0
!
constraint create joint fixed  &
   joint_name = .FRS5_doe_8_LAUL.lower_rail_attach  &
   adams_id = 16  &
   i_marker_name = .FRS5_doe_8_LAUL.lower_rail.MARKER_33  &
   j_marker_name = .FRS5_doe_8_LAUL.fwd_housing.MARKER_34
!
constraint attributes  &
   constraint_name = .FRS5_doe_8_LAUL.lower_rail_attach  &
   visibility = off  &
   size_of_icons = 7.0
!
constraint create joint translational  &
   joint_name = .FRS5_doe_8_LAUL.selector_slide  &
   adams_id = 17  &
   i_marker_name = .FRS5_doe_8_LAUL.feed_selector_arm.MARKER_35  &
   j_marker_name = .FRS5_doe_8_LAUL.rear_housing.MARKER_36
!
constraint attributes  &
   constraint_name = .FRS5_doe_8_LAUL.selector_slide  &
   visibility = off  &
   size_of_icons = 7.0
!
constraint create joint revolute  &
   joint_name = .FRS5_doe_8_LAUL.fwd_gate_bearing  &
   adams_id = 18  &
   i_marker_name = .FRS5_doe_8_LAUL.fwd_gateF.MARKER_37  &
   j_marker_name = .FRS5_doe_8_LAUL.fwd_housing.MARKER_38
!
constraint attributes  &
   constraint_name = .FRS5_doe_8_LAUL.fwd_gate_bearing  &
   visibility = off  &
   size_of_icons = 7.0
!
constraint create joint revolute  &
   joint_name = .FRS5_doe_8_LAUL.aft_gate_bearing  &
   adams_id = 19  &
   i_marker_name = .FRS5_doe_8_LAUL.aft_gateF.MARKER_39  &
   j_marker_name = .FRS5_doe_8_LAUL.mid_frameX.MARKER_40
!
constraint attributes  &
   constraint_name = .FRS5_doe_8_LAUL.aft_gate_bearing  &
   visibility = off  &
   size_of_icons = 7.0
!
constraint create joint revolute  &
   joint_name = .FRS5_doe_8_LAUL.upper_drive_gear_bearing  &
   adams_id = 20  &
   i_marker_name = .FRS5_doe_8_LAUL.mid_frameX.MARKER_41  &
   j_marker_name = .FRS5_doe_8_LAUL.upper_drivegearF.MARKER_42
!
constraint attributes  &
   constraint_name = .FRS5_doe_8_LAUL.upper_drive_gear_bearing  &
   visibility = off  &
   size_of_icons = 7.0
!
constraint create joint revolute  &
   joint_name = .FRS5_doe_8_LAUL.lower_drive_gear_bearing  &
   adams_id = 21  &
   i_marker_name = .FRS5_doe_8_LAUL.mid_frameX.MARKER_43  &
   j_marker_name = .FRS5_doe_8_LAUL.lower_drivegearF.MARKER_44
!
constraint attributes  &
   constraint_name = .FRS5_doe_8_LAUL.lower_drive_gear_bearing  &
   visibility = off  &
   size_of_icons = 7.0
!
constraint create joint translational  &
   joint_name = .FRS5_doe_8_LAUL.upper_dogs_spline  &
   adams_id = 22  &
   i_marker_name = .FRS5_doe_8_LAUL.upper_dogs.MARKER_45  &
   j_marker_name = .FRS5_doe_8_LAUL.upper_drive_shaftF.marker_46
!
constraint attributes  &
   constraint_name = .FRS5_doe_8_LAUL.upper_dogs_spline  &
   visibility = off  &
   size_of_icons = 7.0
!
constraint create joint translational  &
   joint_name = .FRS5_doe_8_LAUL.lower_dogs_spline  &
   adams_id = 26  &
   i_marker_name = .FRS5_doe_8_LAUL.lower_dogs.MARKER_47  &
   j_marker_name = .FRS5_doe_8_LAUL.lower_drive_shaftF.marker_48
!
constraint attributes  &
   constraint_name = .FRS5_doe_8_LAUL.lower_dogs_spline  &
   visibility = off  &
   size_of_icons = 7.0
!
constraint create joint fixed  &
   joint_name = .FRS5_doe_8_LAUL.mid_rear_join  &
   adams_id = 24  &
   i_marker_name = .FRS5_doe_8_LAUL.mid_frameX.MARKER_65  &
   j_marker_name = .FRS5_doe_8_LAUL.rear_housing.MARKER_66
!
constraint attributes  &
   constraint_name = .FRS5_doe_8_LAUL.mid_rear_join  &
   visibility = off
!
constraint create joint fixed  &
   joint_name = .FRS5_doe_8_LAUL.mid_fwd_join  &
   adams_id = 25  &
   i_marker_name = .FRS5_doe_8_LAUL.mid_frameX.MARKER_67  &
   j_marker_name = .FRS5_doe_8_LAUL.fwd_housing.MARKER_68
!
constraint attributes  &
   constraint_name = .FRS5_doe_8_LAUL.mid_fwd_join  &
   visibility = off
!
constraint create joint revolute  &
   joint_name = .FRS5_doe_8_LAUL.worm_driven_bearing  &
   adams_id = 28  &
   i_marker_name = .FRS5_doe_8_LAUL.worm_driven_gearX.MARKER_211  &
   j_marker_name = .FRS5_doe_8_LAUL.rear_housing.MARKER_212
!
constraint attributes  &
   constraint_name = .FRS5_doe_8_LAUL.worm_driven_bearing  &
   visibility = off
!
constraint create joint fixed  &
   joint_name = .FRS5_doe_8_LAUL.worm_clutched_spline  &
   adams_id = 29  &
   i_marker_name = .FRS5_doe_8_LAUL.clutch_gearF.marker_213  &
   j_marker_name = .FRS5_doe_8_LAUL.worm_driven_gearX.MARKER_214
!
constraint attributes  &
   constraint_name = .FRS5_doe_8_LAUL.worm_clutched_spline  &
   visibility = off
!
constraint create joint fixed  &
   joint_name = .FRS5_doe_8_LAUL.feeder_attach  &
   adams_id = 31  &
   i_marker_name = .FRS5_doe_8_LAUL.mid_frameX.MARKER_217  &
   j_marker_name = .FRS5_doe_8_LAUL.frame.MARKER_218
!
constraint attributes  &
   constraint_name = .FRS5_doe_8_LAUL.feeder_attach  &
   visibility = off
!
constraint create joint fixed  &
   joint_name = .FRS5_doe_8_LAUL.upper_aft_sprocket_weld  &
   adams_id = 32  &
   i_marker_name = .FRS5_doe_8_LAUL.upper_rear_sprocketF.marker_222  &
   j_marker_name = .FRS5_doe_8_LAUL.upper_drive_shaftF.marker_223
!
constraint attributes  &
   constraint_name = .FRS5_doe_8_LAUL.upper_aft_sprocket_weld  &
   visibility = off
!
constraint create joint fixed  &
   joint_name = .FRS5_doe_8_LAUL.upper_fwd_sprocket_weld  &
   adams_id = 33  &
   i_marker_name = .FRS5_doe_8_LAUL.upper_front_sprocketF.marker_224  &
   j_marker_name = .FRS5_doe_8_LAUL.upper_drive_shaftF.marker_225
!
constraint attributes  &
   constraint_name = .FRS5_doe_8_LAUL.upper_fwd_sprocket_weld  &
   visibility = off
!
constraint create joint fixed  &
   joint_name = .FRS5_doe_8_LAUL.lower_fwd_sprocket_weld  &
   adams_id = 34  &
   i_marker_name = .FRS5_doe_8_LAUL.lower_front_sprocketF.marker_226  &
   j_marker_name = .FRS5_doe_8_LAUL.lower_drive_shaftF.marker_227
!
constraint attributes  &
   constraint_name = .FRS5_doe_8_LAUL.lower_fwd_sprocket_weld  &
   visibility = off
!
constraint create joint fixed  &
   joint_name = .FRS5_doe_8_LAUL.lower_aft_sprocket_weld  &
   adams_id = 35  &
   i_marker_name = .FRS5_doe_8_LAUL.lower_rear_sprocketF.marker_228  &
   j_marker_name = .FRS5_doe_8_LAUL.lower_drive_shaftF.marker_229
!
constraint attributes  &
   constraint_name = .FRS5_doe_8_LAUL.lower_aft_sprocket_weld  &
   visibility = off
!
constraint create joint revolute  &
   joint_name = .FRS5_doe_8_LAUL.drive_shaft_bearing  &
   adams_id = 45  &
   i_marker_name = .FRS5_doe_8_LAUL.cluster_gear2_48T.MARKER_9  &
   j_marker_name = .FRS5_doe_8_LAUL.frame.MARKER_10
!
constraint attributes  &
   constraint_name = .FRS5_doe_8_LAUL.drive_shaft_bearing  &
   visibility = off
!
constraint create joint fixed  &
   joint_name = .FRS5_doe_8_LAUL.drive_spline  &
   adams_id = 6  &
   i_marker_name = .FRS5_doe_8_LAUL.feeder_drive_shaft.MARKER_13  &
   j_marker_name = .FRS5_doe_8_LAUL.cluster_gear2_48T.MARKER_14
!
constraint attributes  &
   constraint_name = .FRS5_doe_8_LAUL.drive_spline  &
   visibility = off
!
constraint create joint fixed  &
   joint_name = .FRS5_doe_8_LAUL.frame_MOUNT  &
   adams_id = 46  &
   i_marker_name = .FRS5_doe_8_LAUL.frame.MARKER_1639  &
   j_marker_name = .FRS5_doe_8_LAUL.ground.MARKER_1640
!
constraint attributes  &
   constraint_name = .FRS5_doe_8_LAUL.frame_MOUNT  &
   visibility = off
!
constraint create joint fixed  &
   joint_name = .FRS5_doe_8_LAUL.CrimpU1  &
   adams_id = 47  &
   i_marker_name = .FRS5_doe_8_LAUL.projectileU1.crimp1a  &
   j_marker_name = .FRS5_doe_8_LAUL.brassU1.crimp1b
!
constraint attributes  &
   constraint_name = .FRS5_doe_8_LAUL.CrimpU1  &
   visibility = off
!
constraint create joint fixed  &
   joint_name = .FRS5_doe_8_LAUL.CrimpU2  &
   adams_id = 48  &
   i_marker_name = .FRS5_doe_8_LAUL.projectileU2.crimp2a  &
   j_marker_name = .FRS5_doe_8_LAUL.brassU2.crimp2b
!
constraint attributes  &
   constraint_name = .FRS5_doe_8_LAUL.CrimpU2  &
   visibility = off
!
constraint create joint fixed  &
   joint_name = .FRS5_doe_8_LAUL.CrimpU3  &
   adams_id = 49  &
   i_marker_name = .FRS5_doe_8_LAUL.projectileU3.crimp3a  &
   j_marker_name = .FRS5_doe_8_LAUL.brassU3.crimp3b
!
constraint attributes  &
   constraint_name = .FRS5_doe_8_LAUL.CrimpU3  &
   visibility = off
!
constraint create joint fixed  &
   joint_name = .FRS5_doe_8_LAUL.CrimpU4  &
   adams_id = 50  &
   i_marker_name = .FRS5_doe_8_LAUL.projectileU4.crimp4a  &
   j_marker_name = .FRS5_doe_8_LAUL.brassU4.crimp4b
!
constraint attributes  &
   constraint_name = .FRS5_doe_8_LAUL.CrimpU4  &
   visibility = off
!
constraint create joint fixed  &
   joint_name = .FRS5_doe_8_LAUL.CrimpL1  &
   adams_id = 58  &
   i_marker_name = .FRS5_doe_8_LAUL.projectileL1.crimp1a  &
   j_marker_name = .FRS5_doe_8_LAUL.brassL1.crimp1b
!
constraint create joint fixed  &
   joint_name = .FRS5_doe_8_LAUL.CrimpL2  &
   adams_id = 59  &
   i_marker_name = .FRS5_doe_8_LAUL.projectileL2.crimp2a  &
   j_marker_name = .FRS5_doe_8_LAUL.brassL2.crimp2b
!
constraint create joint fixed  &
   joint_name = .FRS5_doe_8_LAUL.CrimpU5  &
   adams_id = 57  &
   i_marker_name = .FRS5_doe_8_LAUL.projectileU5.crimp5a  &
   j_marker_name = .FRS5_doe_8_LAUL.brassU5.crimp5b
!
constraint attributes  &
   constraint_name = .FRS5_doe_8_LAUL.CrimpU5  &
   visibility = off
!
constraint create joint fixed  &
   joint_name = .FRS5_doe_8_LAUL.CrimpL3  &
   adams_id = 60  &
   i_marker_name = .FRS5_doe_8_LAUL.projectileL3.crimp3a  &
   j_marker_name = .FRS5_doe_8_LAUL.brassL3.crimp3b
!
constraint create joint fixed  &
   joint_name = .FRS5_doe_8_LAUL.CrimpL4  &
   adams_id = 61  &
   i_marker_name = .FRS5_doe_8_LAUL.projectileL4.crimp4a  &
   j_marker_name = .FRS5_doe_8_LAUL.brassL4.crimp4b
!
constraint create joint fixed  &
   joint_name = .FRS5_doe_8_LAUL.CrimpL5  &
   adams_id = 62  &
   i_marker_name = .FRS5_doe_8_LAUL.projectileL5.crimp5a  &
   j_marker_name = .FRS5_doe_8_LAUL.brassL5.crimp5b
!
!------------------------------ Joint Primitives ------------------------------!
!
!
constraint create primitive_joint perpendicular  &
   jprim_name = .FRS5_doe_8_LAUL.feeder_drive_spline  &
   adams_id = 24  &
   i_marker_name = .FRS5_doe_8_LAUL.worm_driveX.feeder_drive_1  &
   j_marker_name = .FRS5_doe_8_LAUL.feeder_drive_shaft.feeder_drive_2
!
constraint attributes  &
   constraint_name = .FRS5_doe_8_LAUL.feeder_drive_spline  &
   visibility = off
!
constraint create primitive_joint inline  &
   jprim_name = .FRS5_doe_8_LAUL.feed_shaft_bearing2  &
   adams_id = 1  &
   i_marker_name = .FRS5_doe_8_LAUL.rotor_shaftF.MARKER_9  &
   j_marker_name = .FRS5_doe_8_LAUL.rear_housing.MARKER_10
!
constraint attributes  &
   constraint_name = .FRS5_doe_8_LAUL.feed_shaft_bearing2  &
   visibility = off  &
   size_of_icons = 7.0
!
constraint create primitive_joint inplane  &
   jprim_name = .FRS5_doe_8_LAUL.upper_rollers_in_slot  &
   adams_id = 2  &
   i_marker_name = .FRS5_doe_8_LAUL.selector_spider.upper_rollers_center  &
   j_marker_name = .FRS5_doe_8_LAUL.upper_dogs.slot_center
!
constraint attributes  &
   constraint_name = .FRS5_doe_8_LAUL.upper_rollers_in_slot  &
   visibility = off
!
constraint create primitive_joint inplane  &
   jprim_name = .FRS5_doe_8_LAUL.lower_rollers_in_slot  &
   adams_id = 3  &
   i_marker_name = .FRS5_doe_8_LAUL.selector_spider.lower_rollers_center  &
   j_marker_name = .FRS5_doe_8_LAUL.lower_dogs.slot_center
!
constraint attributes  &
   constraint_name = .FRS5_doe_8_LAUL.lower_rollers_in_slot  &
   visibility = off
!
constraint create primitive_joint inplane  &
   jprim_name = .FRS5_doe_8_LAUL.TrailPlaneU1  &
   adams_id = 4  &
   i_marker_name = .FRS5_doe_8_LAUL.linkU1.trailing_center  &
   j_marker_name = .FRS5_doe_8_LAUL.mid_frameX.trail_plane
!
constraint attributes  &
   constraint_name = .FRS5_doe_8_LAUL.TrailPlaneU1  &
   visibility = off
!
constraint create primitive_joint inplane  &
   jprim_name = .FRS5_doe_8_LAUL.TrailPlaneU2  &
   adams_id = 5  &
   i_marker_name = .FRS5_doe_8_LAUL.linkU2.trailing_center  &
   j_marker_name = .FRS5_doe_8_LAUL.mid_frameX.trail_plane
!
constraint attributes  &
   constraint_name = .FRS5_doe_8_LAUL.TrailPlaneU2  &
   visibility = off
!
constraint create primitive_joint inplane  &
   jprim_name = .FRS5_doe_8_LAUL.TrailPlaneU3  &
   adams_id = 6  &
   i_marker_name = .FRS5_doe_8_LAUL.linkU3.trailing_center  &
   j_marker_name = .FRS5_doe_8_LAUL.mid_frameX.trail_plane
!
constraint attributes  &
   constraint_name = .FRS5_doe_8_LAUL.TrailPlaneU3  &
   visibility = off
!
constraint create primitive_joint inplane  &
   jprim_name = .FRS5_doe_8_LAUL.TrailPlaneU4  &
   adams_id = 7  &
   i_marker_name = .FRS5_doe_8_LAUL.linkU4.trailing_center  &
   j_marker_name = .FRS5_doe_8_LAUL.mid_frameX.trail_plane
!
constraint attributes  &
   constraint_name = .FRS5_doe_8_LAUL.TrailPlaneU4  &
   visibility = off
!
constraint create primitive_joint inplane  &
   jprim_name = .FRS5_doe_8_LAUL.TrailPlaneU5  &
   adams_id = 25  &
   i_marker_name = .FRS5_doe_8_LAUL.linkU5.trailing_center  &
   j_marker_name = .FRS5_doe_8_LAUL.mid_frameX.MARKER_2455
!
constraint attributes  &
   constraint_name = .FRS5_doe_8_LAUL.TrailPlaneU5  &
   visibility = off
!
constraint create primitive_joint inplane  &
   jprim_name = .FRS5_doe_8_LAUL.TrailPlaneL2  &
   adams_id = 26  &
   i_marker_name = .FRS5_doe_8_LAUL.linkL2.trailing_center  &
   j_marker_name = .FRS5_doe_8_LAUL.mid_frameX.TrailPlaneRef
!
constraint create primitive_joint inplane  &
   jprim_name = .FRS5_doe_8_LAUL.TrailPlaneL3  &
   adams_id = 27  &
   i_marker_name = .FRS5_doe_8_LAUL.linkL3.trailing_center  &
   j_marker_name = .FRS5_doe_8_LAUL.mid_frameX.TrailPlaneRef
!
constraint create primitive_joint inplane  &
   jprim_name = .FRS5_doe_8_LAUL.TrailPlaneL4  &
   adams_id = 28  &
   i_marker_name = .FRS5_doe_8_LAUL.linkL4.trailing_center  &
   j_marker_name = .FRS5_doe_8_LAUL.mid_frameX.TrailPlaneRef
!
constraint create primitive_joint inplane  &
   jprim_name = .FRS5_doe_8_LAUL.TrailPlaneL5  &
   adams_id = 29  &
   i_marker_name = .FRS5_doe_8_LAUL.linkL5.trailing_center  &
   j_marker_name = .FRS5_doe_8_LAUL.mid_frameX.TrailPlaneRef
!
!----------------------------------- Forces -----------------------------------!
!
!
force create element_like beam  &
   beam_name = .FRS5_doe_8_LAUL.s1_beamY_2  &
   adams_id = 1  &
   i_marker_name = .FRS5_doe_8_LAUL.sideY1_3.beamY_s1_2b  &
   j_marker_name = .FRS5_doe_8_LAUL.sideY1_2.beamY_s1_2a  &
   length = 6.8544971902  &
   area_of_cross_section = 24.384  &
   y_shear_area_ratio = 0.0  &
   z_shear_area_ratio = 0.0  &
   youngs_modulus = 1.9E+05  &
   shear_modulus = 7.5E+04  &
   ixx = 1172.529544192  &
   iyy = 1170.432  &
   izz = 2.097544192  &
   damping_ratio = 1.0E-02  &
   formulation = linear
!
force create element_like beam  &
   beam_name = .FRS5_doe_8_LAUL.s1_beamY_3  &
   adams_id = 2  &
   i_marker_name = .FRS5_doe_8_LAUL.sideY1_4.beamY_s1_3b  &
   j_marker_name = .FRS5_doe_8_LAUL.sideY1_3.beamY_s1_3a  &
   length = 4.3429348199  &
   area_of_cross_section = 24.384  &
   y_shear_area_ratio = 0.0  &
   z_shear_area_ratio = 0.0  &
   youngs_modulus = 1.9E+05  &
   shear_modulus = 7.5E+04  &
   ixx = 1172.529544192  &
   iyy = 1170.432  &
   izz = 2.097544192  &
   damping_ratio = 1.0E-02  &
   formulation = linear
!
force create element_like beam  &
   beam_name = .FRS5_doe_8_LAUL.s1_beamY_4  &
   adams_id = 3  &
   i_marker_name = .FRS5_doe_8_LAUL.sideY1_5.beamY_s1_4b  &
   j_marker_name = .FRS5_doe_8_LAUL.sideY1_4.beamY_s1_4a  &
   length = 5.3569601716  &
   area_of_cross_section = 24.384  &
   y_shear_area_ratio = 0.0  &
   z_shear_area_ratio = 0.0  &
   youngs_modulus = 1.9E+05  &
   shear_modulus = 7.5E+04  &
   ixx = 1172.529544192  &
   iyy = 1170.432  &
   izz = 2.097544192  &
   damping_ratio = 1.0E-02  &
   formulation = linear
!
force create element_like beam  &
   beam_name = .FRS5_doe_8_LAUL.s1_beamY_5  &
   adams_id = 4  &
   i_marker_name = .FRS5_doe_8_LAUL.sideY1_6.beamY_s1_5b  &
   j_marker_name = .FRS5_doe_8_LAUL.sideY1_5.beamY_s1_5a  &
   length = 5.3253458301  &
   area_of_cross_section = 24.384  &
   y_shear_area_ratio = 0.0  &
   z_shear_area_ratio = 0.0  &
   youngs_modulus = 1.9E+05  &
   shear_modulus = 7.5E+04  &
   ixx = 1172.529544192  &
   iyy = 1170.432  &
   izz = 2.097544192  &
   damping_ratio = 1.0E-02  &
   formulation = linear
!
force create element_like beam  &
   beam_name = .FRS5_doe_8_LAUL.s1_beamY_6  &
   adams_id = 5  &
   i_marker_name = .FRS5_doe_8_LAUL.sideY1_7.beamY_s1_6b  &
   j_marker_name = .FRS5_doe_8_LAUL.sideY1_6.beamY_s1_6a  &
   length = 5.3253570509  &
   area_of_cross_section = 24.384  &
   y_shear_area_ratio = 0.0  &
   z_shear_area_ratio = 0.0  &
   youngs_modulus = 1.9E+05  &
   shear_modulus = 7.5E+04  &
   ixx = 1172.529544192  &
   iyy = 1170.432  &
   izz = 2.097544192  &
   damping_ratio = 1.0E-02  &
   formulation = linear
!
force create element_like beam  &
   beam_name = .FRS5_doe_8_LAUL.s1_beamY_7  &
   adams_id = 6  &
   i_marker_name = .FRS5_doe_8_LAUL.sideY1_8.beamY_s1_7b  &
   j_marker_name = .FRS5_doe_8_LAUL.sideY1_7.beamY_s1_7a  &
   length = 5.3255850702  &
   area_of_cross_section = 24.384  &
   y_shear_area_ratio = 0.0  &
   z_shear_area_ratio = 0.0  &
   youngs_modulus = 1.9E+05  &
   shear_modulus = 7.5E+04  &
   ixx = 1172.529544192  &
   iyy = 1170.432  &
   izz = 2.097544192  &
   damping_ratio = 1.0E-02  &
   formulation = linear
!
force create element_like beam  &
   beam_name = .FRS5_doe_8_LAUL.s1_beamY_8  &
   adams_id = 7  &
   i_marker_name = .FRS5_doe_8_LAUL.sideY1_9.beamY_s1_8b  &
   j_marker_name = .FRS5_doe_8_LAUL.sideY1_8.beamY_s1_8a  &
   length = 5.3255096751  &
   area_of_cross_section = 24.384  &
   y_shear_area_ratio = 0.0  &
   z_shear_area_ratio = 0.0  &
   youngs_modulus = 1.9E+05  &
   shear_modulus = 7.5E+04  &
   ixx = 1172.529544192  &
   iyy = 1170.432  &
   izz = 2.097544192  &
   damping_ratio = 1.0E-02  &
   formulation = linear
!
force create element_like beam  &
   beam_name = .FRS5_doe_8_LAUL.s1_beamY_9  &
   adams_id = 8  &
   i_marker_name = .FRS5_doe_8_LAUL.sideY1_10.beamY_s1_9b  &
   j_marker_name = .FRS5_doe_8_LAUL.sideY1_9.beamY_s1_9a  &
   length = 5.3252539216  &
   area_of_cross_section = 24.384  &
   y_shear_area_ratio = 0.0  &
   z_shear_area_ratio = 0.0  &
   youngs_modulus = 1.9E+05  &
   shear_modulus = 7.5E+04  &
   ixx = 1172.529544192  &
   iyy = 1170.432  &
   izz = 2.097544192  &
   damping_ratio = 1.0E-02  &
   formulation = linear
!
force create element_like beam  &
   beam_name = .FRS5_doe_8_LAUL.s1_beamY_10  &
   adams_id = 9  &
   i_marker_name = .FRS5_doe_8_LAUL.sideY1_11.beamY_s1_10b  &
   j_marker_name = .FRS5_doe_8_LAUL.sideY1_10.beamY_s1_10a  &
   length = 5.3254061329  &
   area_of_cross_section = 24.384  &
   y_shear_area_ratio = 0.0  &
   z_shear_area_ratio = 0.0  &
   youngs_modulus = 1.9E+05  &
   shear_modulus = 7.5E+04  &
   ixx = 1172.529544192  &
   iyy = 1170.432  &
   izz = 2.097544192  &
   damping_ratio = 1.0E-02  &
   formulation = linear
!
force create element_like beam  &
   beam_name = .FRS5_doe_8_LAUL.s1_beamY_11  &
   adams_id = 10  &
   i_marker_name = .FRS5_doe_8_LAUL.sideY1_12.beamY_s1_11b  &
   j_marker_name = .FRS5_doe_8_LAUL.sideY1_11.beamY_s1_11a  &
   length = 5.3573657949  &
   area_of_cross_section = 24.384  &
   y_shear_area_ratio = 0.0  &
   z_shear_area_ratio = 0.0  &
   youngs_modulus = 1.9E+05  &
   shear_modulus = 7.5E+04  &
   ixx = 1172.529544192  &
   iyy = 1170.432  &
   izz = 2.097544192  &
   damping_ratio = 1.0E-02  &
   formulation = linear
!
force create element_like beam  &
   beam_name = .FRS5_doe_8_LAUL.s1_beamY_12  &
   adams_id = 11  &
   i_marker_name = .FRS5_doe_8_LAUL.sideY1_13.beamY_s1_12b  &
   j_marker_name = .FRS5_doe_8_LAUL.sideY1_12.beamY_s1_12a  &
   length = 5.3574480501  &
   area_of_cross_section = 24.384  &
   y_shear_area_ratio = 0.0  &
   z_shear_area_ratio = 0.0  &
   youngs_modulus = 1.9E+05  &
   shear_modulus = 7.5E+04  &
   ixx = 1172.529544192  &
   iyy = 1170.432  &
   izz = 2.097544192  &
   damping_ratio = 1.0E-02  &
   formulation = linear
!
force create element_like beam  &
   beam_name = .FRS5_doe_8_LAUL.s1_beamY_13  &
   adams_id = 12  &
   i_marker_name = .FRS5_doe_8_LAUL.sideY1_14.beamY_s1_13b  &
   j_marker_name = .FRS5_doe_8_LAUL.sideY1_13.beamY_s1_13a  &
   length = 5.3574480501  &
   area_of_cross_section = 24.384  &
   y_shear_area_ratio = 0.0  &
   z_shear_area_ratio = 0.0  &
   youngs_modulus = 1.9E+05  &
   shear_modulus = 7.5E+04  &
   ixx = 1172.529544192  &
   iyy = 1170.432  &
   izz = 2.097544192  &
   damping_ratio = 1.0E-02  &
   formulation = linear
!
force create element_like beam  &
   beam_name = .FRS5_doe_8_LAUL.s1_beamY_14  &
   adams_id = 13  &
   i_marker_name = .FRS5_doe_8_LAUL.sideY1_15.beamY_s1_14b  &
   j_marker_name = .FRS5_doe_8_LAUL.sideY1_14.beamY_s1_14a  &
   length = 5.3527169036  &
   area_of_cross_section = 24.384  &
   y_shear_area_ratio = 0.0  &
   z_shear_area_ratio = 0.0  &
   youngs_modulus = 1.9E+05  &
   shear_modulus = 7.5E+04  &
   ixx = 1172.529544192  &
   iyy = 1170.432  &
   izz = 2.097544192  &
   damping_ratio = 1.0E-02  &
   formulation = linear
!
force create element_like beam  &
   beam_name = .FRS5_doe_8_LAUL.s1_beamY_15  &
   adams_id = 14  &
   i_marker_name = .FRS5_doe_8_LAUL.sideY1_16.beamY_s1_15b  &
   j_marker_name = .FRS5_doe_8_LAUL.sideY1_15.beamY_s1_15a  &
   length = 5.3495802976  &
   area_of_cross_section = 24.384  &
   y_shear_area_ratio = 0.0  &
   z_shear_area_ratio = 0.0  &
   youngs_modulus = 1.9E+05  &
   shear_modulus = 7.5E+04  &
   ixx = 1172.529544192  &
   iyy = 1170.432  &
   izz = 2.097544192  &
   damping_ratio = 1.0E-02  &
   formulation = linear
!
force create element_like beam  &
   beam_name = .FRS5_doe_8_LAUL.s1_beamY_16  &
   adams_id = 15  &
   i_marker_name = .FRS5_doe_8_LAUL.sideY1_17.beamY_s1_16b  &
   j_marker_name = .FRS5_doe_8_LAUL.sideY1_16.beamY_s1_16a  &
   length = 5.3496885068  &
   area_of_cross_section = 24.384  &
   y_shear_area_ratio = 0.0  &
   z_shear_area_ratio = 0.0  &
   youngs_modulus = 1.9E+05  &
   shear_modulus = 7.5E+04  &
   ixx = 1172.529544192  &
   iyy = 1170.432  &
   izz = 2.097544192  &
   damping_ratio = 1.0E-02  &
   formulation = linear
!
force create element_like beam  &
   beam_name = .FRS5_doe_8_LAUL.s1_beamY_17  &
   adams_id = 16  &
   i_marker_name = .FRS5_doe_8_LAUL.sideY1_18.beamY_s1_17b  &
   j_marker_name = .FRS5_doe_8_LAUL.sideY1_17.beamY_s1_17a  &
   length = 5.3497180271  &
   area_of_cross_section = 24.384  &
   y_shear_area_ratio = 0.0  &
   z_shear_area_ratio = 0.0  &
   youngs_modulus = 1.9E+05  &
   shear_modulus = 7.5E+04  &
   ixx = 1172.529544192  &
   iyy = 1170.432  &
   izz = 2.097544192  &
   damping_ratio = 1.0E-02  &
   formulation = linear
!
force create element_like beam  &
   beam_name = .FRS5_doe_8_LAUL.s1_beamY_18  &
   adams_id = 17  &
   i_marker_name = .FRS5_doe_8_LAUL.sideY1_19.beamY_s1_18b  &
   j_marker_name = .FRS5_doe_8_LAUL.sideY1_18.beamY_s1_18a  &
   length = 5.3495244518  &
   area_of_cross_section = 24.384  &
   y_shear_area_ratio = 0.0  &
   z_shear_area_ratio = 0.0  &
   youngs_modulus = 1.9E+05  &
   shear_modulus = 7.5E+04  &
   ixx = 1172.529544192  &
   iyy = 1170.432  &
   izz = 2.097544192  &
   damping_ratio = 1.0E-02  &
   formulation = linear
!
force create element_like beam  &
   beam_name = .FRS5_doe_8_LAUL.s1_beamY_19  &
   adams_id = 18  &
   i_marker_name = .FRS5_doe_8_LAUL.sideY1_20.beamY_s1_19b  &
   j_marker_name = .FRS5_doe_8_LAUL.sideY1_19.beamY_s1_19a  &
   length = 5.3496396327  &
   area_of_cross_section = 24.384  &
   y_shear_area_ratio = 0.0  &
   z_shear_area_ratio = 0.0  &
   youngs_modulus = 1.9E+05  &
   shear_modulus = 7.5E+04  &
   ixx = 1172.529544192  &
   iyy = 1170.432  &
   izz = 2.097544192  &
   damping_ratio = 1.0E-02  &
   formulation = linear
!
force create element_like beam  &
   beam_name = .FRS5_doe_8_LAUL.s1_beamY_20  &
   adams_id = 19  &
   i_marker_name = .FRS5_doe_8_LAUL.sideY1_21.beamY_s1_20b  &
   j_marker_name = .FRS5_doe_8_LAUL.sideY1_20.beamY_s1_20a  &
   length = 5.3495811369  &
   area_of_cross_section = 24.384  &
   y_shear_area_ratio = 0.0  &
   z_shear_area_ratio = 0.0  &
   youngs_modulus = 1.9E+05  &
   shear_modulus = 7.5E+04  &
   ixx = 1172.529544192  &
   iyy = 1170.432  &
   izz = 2.097544192  &
   damping_ratio = 1.0E-02  &
   formulation = linear
!
force create element_like beam  &
   beam_name = .FRS5_doe_8_LAUL.s1_beamY_21  &
   adams_id = 20  &
   i_marker_name = .FRS5_doe_8_LAUL.sideY1_22.beamY_s1_21b  &
   j_marker_name = .FRS5_doe_8_LAUL.sideY1_21.beamY_s1_21a  &
   length = 5.3497179907  &
   area_of_cross_section = 24.384  &
   y_shear_area_ratio = 0.0  &
   z_shear_area_ratio = 0.0  &
   youngs_modulus = 1.9E+05  &
   shear_modulus = 7.5E+04  &
   ixx = 1172.529544192  &
   iyy = 1170.432  &
   izz = 2.097544192  &
   damping_ratio = 1.0E-02  &
   formulation = linear
!
force create element_like beam  &
   beam_name = .FRS5_doe_8_LAUL.s1_beamY_22  &
   adams_id = 21  &
   i_marker_name = .FRS5_doe_8_LAUL.sideY1_23.beamY_s1_22b  &
   j_marker_name = .FRS5_doe_8_LAUL.sideY1_22.beamY_s1_22a  &
   length = 5.3497771355  &
   area_of_cross_section = 24.384  &
   y_shear_area_ratio = 0.0  &
   z_shear_area_ratio = 0.0  &
   youngs_modulus = 1.9E+05  &
   shear_modulus = 7.5E+04  &
   ixx = 1172.529544192  &
   iyy = 1170.432  &
   izz = 2.097544192  &
   damping_ratio = 1.0E-02  &
   formulation = linear
!
force create element_like beam  &
   beam_name = .FRS5_doe_8_LAUL.s1_beamY_23  &
   adams_id = 22  &
   i_marker_name = .FRS5_doe_8_LAUL.sideY1_24.beamY_s1_23b  &
   j_marker_name = .FRS5_doe_8_LAUL.sideY1_23.beamY_s1_23a  &
   length = 5.3494583595  &
   area_of_cross_section = 24.384  &
   y_shear_area_ratio = 0.0  &
   z_shear_area_ratio = 0.0  &
   youngs_modulus = 1.9E+05  &
   shear_modulus = 7.5E+04  &
   ixx = 1172.529544192  &
   iyy = 1170.432  &
   izz = 2.097544192  &
   damping_ratio = 1.0E-02  &
   formulation = linear
!
force create element_like beam  &
   beam_name = .FRS5_doe_8_LAUL.s1_beamY_24  &
   adams_id = 23  &
   i_marker_name = .FRS5_doe_8_LAUL.sideY1_25.beamY_s1_24b  &
   j_marker_name = .FRS5_doe_8_LAUL.sideY1_24.beamY_s1_24a  &
   length = 5.3497648696  &
   area_of_cross_section = 24.384  &
   y_shear_area_ratio = 0.0  &
   z_shear_area_ratio = 0.0  &
   youngs_modulus = 1.9E+05  &
   shear_modulus = 7.5E+04  &
   ixx = 1172.529544192  &
   iyy = 1170.432  &
   izz = 2.097544192  &
   damping_ratio = 1.0E-02  &
   formulation = linear
!
force create element_like beam  &
   beam_name = .FRS5_doe_8_LAUL.s1_beamY_25  &
   adams_id = 24  &
   i_marker_name = .FRS5_doe_8_LAUL.sideY1_26.beamY_s1_25b  &
   j_marker_name = .FRS5_doe_8_LAUL.sideY1_25.beamY_s1_25a  &
   length = 5.349467295  &
   area_of_cross_section = 24.384  &
   y_shear_area_ratio = 0.0  &
   z_shear_area_ratio = 0.0  &
   youngs_modulus = 1.9E+05  &
   shear_modulus = 7.5E+04  &
   ixx = 1172.529544192  &
   iyy = 1170.432  &
   izz = 2.097544192  &
   damping_ratio = 1.0E-02  &
   formulation = linear
!
force create element_like beam  &
   beam_name = .FRS5_doe_8_LAUL.s1_beamY_26  &
   adams_id = 25  &
   i_marker_name = .FRS5_doe_8_LAUL.sideY1_27.beamY_s1_26b  &
   j_marker_name = .FRS5_doe_8_LAUL.sideY1_26.beamY_s1_26a  &
   length = 5.3497302511  &
   area_of_cross_section = 24.384  &
   y_shear_area_ratio = 0.0  &
   z_shear_area_ratio = 0.0  &
   youngs_modulus = 1.9E+05  &
   shear_modulus = 7.5E+04  &
   ixx = 1172.529544192  &
   iyy = 1170.432  &
   izz = 2.097544192  &
   damping_ratio = 1.0E-02  &
   formulation = linear
!
force create element_like beam  &
   beam_name = .FRS5_doe_8_LAUL.s1_beamY_27  &
   adams_id = 26  &
   i_marker_name = .FRS5_doe_8_LAUL.sideY1_28.beamY_s1_27b  &
   j_marker_name = .FRS5_doe_8_LAUL.sideY1_27.beamY_s1_27a  &
   length = 5.3503208222  &
   area_of_cross_section = 24.384  &
   y_shear_area_ratio = 0.0  &
   z_shear_area_ratio = 0.0  &
   youngs_modulus = 1.9E+05  &
   shear_modulus = 7.5E+04  &
   ixx = 1172.529544192  &
   iyy = 1170.432  &
   izz = 2.097544192  &
   damping_ratio = 1.0E-02  &
   formulation = linear
!
force create element_like beam  &
   beam_name = .FRS5_doe_8_LAUL.s1_beamY_28  &
   adams_id = 27  &
   i_marker_name = .FRS5_doe_8_LAUL.sideY1_29.beamY_s1_28b  &
   j_marker_name = .FRS5_doe_8_LAUL.sideY1_28.beamY_s1_28a  &
   length = 5.3574781539  &
   area_of_cross_section = 24.384  &
   y_shear_area_ratio = 0.0  &
   z_shear_area_ratio = 0.0  &
   youngs_modulus = 1.9E+05  &
   shear_modulus = 7.5E+04  &
   ixx = 1172.529544192  &
   iyy = 1170.432  &
   izz = 2.097544192  &
   damping_ratio = 1.0E-02  &
   formulation = linear
!
force create element_like beam  &
   beam_name = .FRS5_doe_8_LAUL.s1_beamY_29  &
   adams_id = 28  &
   i_marker_name = .FRS5_doe_8_LAUL.sideY1_30.beamY_s1_29b  &
   j_marker_name = .FRS5_doe_8_LAUL.sideY1_29.beamY_s1_29a  &
   length = 5.3573918431  &
   area_of_cross_section = 24.384  &
   y_shear_area_ratio = 0.0  &
   z_shear_area_ratio = 0.0  &
   youngs_modulus = 1.9E+05  &
   shear_modulus = 7.5E+04  &
   ixx = 1172.529544192  &
   iyy = 1170.432  &
   izz = 2.097544192  &
   damping_ratio = 1.0E-02  &
   formulation = linear
!
force create element_like beam  &
   beam_name = .FRS5_doe_8_LAUL.s1_beamY_30  &
   adams_id = 29  &
   i_marker_name = .FRS5_doe_8_LAUL.sideY1_31.beamY_s1_30b  &
   j_marker_name = .FRS5_doe_8_LAUL.sideY1_30.beamY_s1_30a  &
   length = 5.357528656  &
   area_of_cross_section = 24.384  &
   y_shear_area_ratio = 0.0  &
   z_shear_area_ratio = 0.0  &
   youngs_modulus = 1.9E+05  &
   shear_modulus = 7.5E+04  &
   ixx = 1172.529544192  &
   iyy = 1170.432  &
   izz = 2.097544192  &
   damping_ratio = 1.0E-02  &
   formulation = linear
!
force create element_like beam  &
   beam_name = .FRS5_doe_8_LAUL.s1_beamY_31  &
   adams_id = 30  &
   i_marker_name = .FRS5_doe_8_LAUL.sideY1_32.beamY_s1_31b  &
   j_marker_name = .FRS5_doe_8_LAUL.sideY1_31.beamY_s1_31a  &
   length = 5.3574781539  &
   area_of_cross_section = 24.384  &
   y_shear_area_ratio = 0.0  &
   z_shear_area_ratio = 0.0  &
   youngs_modulus = 1.9E+05  &
   shear_modulus = 7.5E+04  &
   ixx = 1172.529544192  &
   iyy = 1170.432  &
   izz = 2.097544192  &
   damping_ratio = 1.0E-02  &
   formulation = linear
!
force create element_like beam  &
   beam_name = .FRS5_doe_8_LAUL.s2_beamY_2  &
   adams_id = 31  &
   i_marker_name = .FRS5_doe_8_LAUL.sideY2_3.beamY_s2_2b  &
   j_marker_name = .FRS5_doe_8_LAUL.sideY2_2.beamY_s2_2a  &
   length = 6.8544971902  &
   area_of_cross_section = 24.384  &
   y_shear_area_ratio = 0.0  &
   z_shear_area_ratio = 0.0  &
   youngs_modulus = 1.9E+05  &
   shear_modulus = 7.5E+04  &
   ixx = 1172.529544192  &
   iyy = 1170.432  &
   izz = 2.097544192  &
   damping_ratio = 1.0E-02  &
   formulation = linear
!
force create element_like beam  &
   beam_name = .FRS5_doe_8_LAUL.s2_beamY_3  &
   adams_id = 32  &
   i_marker_name = .FRS5_doe_8_LAUL.sideY2_4.beamY_s2_3b  &
   j_marker_name = .FRS5_doe_8_LAUL.sideY2_3.beamY_s2_3a  &
   length = 4.3429348199  &
   area_of_cross_section = 24.384  &
   y_shear_area_ratio = 0.0  &
   z_shear_area_ratio = 0.0  &
   youngs_modulus = 1.9E+05  &
   shear_modulus = 7.5E+04  &
   ixx = 1172.529544192  &
   iyy = 1170.432  &
   izz = 2.097544192  &
   damping_ratio = 1.0E-02  &
   formulation = linear
!
force create element_like beam  &
   beam_name = .FRS5_doe_8_LAUL.s2_beamY_4  &
   adams_id = 33  &
   i_marker_name = .FRS5_doe_8_LAUL.sideY2_5.beamY_s2_4b  &
   j_marker_name = .FRS5_doe_8_LAUL.sideY2_4.beamY_s2_4a  &
   length = 5.6451194788  &
   area_of_cross_section = 24.384  &
   y_shear_area_ratio = 0.0  &
   z_shear_area_ratio = 0.0  &
   youngs_modulus = 1.9E+05  &
   shear_modulus = 7.5E+04  &
   ixx = 1172.529544192  &
   iyy = 1170.432  &
   izz = 2.097544192  &
   damping_ratio = 1.0E-02  &
   formulation = linear
!
force create element_like beam  &
   beam_name = .FRS5_doe_8_LAUL.s2_beamY_5  &
   adams_id = 34  &
   i_marker_name = .FRS5_doe_8_LAUL.sideY2_6.beamY_s2_5b  &
   j_marker_name = .FRS5_doe_8_LAUL.sideY2_5.beamY_s2_5a  &
   length = 5.6370448863  &
   area_of_cross_section = 24.384  &
   y_shear_area_ratio = 0.0  &
   z_shear_area_ratio = 0.0  &
   youngs_modulus = 1.9E+05  &
   shear_modulus = 7.5E+04  &
   ixx = 1172.529544192  &
   iyy = 1170.432  &
   izz = 2.097544192  &
   damping_ratio = 1.0E-02  &
   formulation = linear
!
force create element_like beam  &
   beam_name = .FRS5_doe_8_LAUL.s2_beamY_6  &
   adams_id = 35  &
   i_marker_name = .FRS5_doe_8_LAUL.sideY2_7.beamY_s2_6b  &
   j_marker_name = .FRS5_doe_8_LAUL.sideY2_6.beamY_s2_6a  &
   length = 5.6369773035  &
   area_of_cross_section = 24.384  &
   y_shear_area_ratio = 0.0  &
   z_shear_area_ratio = 0.0  &
   youngs_modulus = 1.9E+05  &
   shear_modulus = 7.5E+04  &
   ixx = 1172.529544192  &
   iyy = 1170.432  &
   izz = 2.097544192  &
   damping_ratio = 1.0E-02  &
   formulation = linear
!
force create element_like beam  &
   beam_name = .FRS5_doe_8_LAUL.s2_beamY_7  &
   adams_id = 36  &
   i_marker_name = .FRS5_doe_8_LAUL.sideY2_8.beamY_s2_7b  &
   j_marker_name = .FRS5_doe_8_LAUL.sideY2_7.beamY_s2_7a  &
   length = 5.6369698332  &
   area_of_cross_section = 24.384  &
   y_shear_area_ratio = 0.0  &
   z_shear_area_ratio = 0.0  &
   youngs_modulus = 1.9E+05  &
   shear_modulus = 7.5E+04  &
   ixx = 1172.529544192  &
   iyy = 1170.432  &
   izz = 2.097544192  &
   damping_ratio = 1.0E-02  &
   formulation = linear
!
force create element_like beam  &
   beam_name = .FRS5_doe_8_LAUL.s2_beamY_8  &
   adams_id = 37  &
   i_marker_name = .FRS5_doe_8_LAUL.sideY2_9.beamY_s2_8b  &
   j_marker_name = .FRS5_doe_8_LAUL.sideY2_8.beamY_s2_8a  &
   length = 5.6397434977  &
   area_of_cross_section = 24.384  &
   y_shear_area_ratio = 0.0  &
   z_shear_area_ratio = 0.0  &
   youngs_modulus = 1.9E+05  &
   shear_modulus = 7.5E+04  &
   ixx = 1172.529544192  &
   iyy = 1170.432  &
   izz = 2.097544192  &
   damping_ratio = 1.0E-02  &
   formulation = linear
!
force create element_like beam  &
   beam_name = .FRS5_doe_8_LAUL.s2_beamY_9  &
   adams_id = 38  &
   i_marker_name = .FRS5_doe_8_LAUL.sideY2_10.beamY_s2_9b  &
   j_marker_name = .FRS5_doe_8_LAUL.sideY2_9.beamY_s2_9a  &
   length = 5.590659039  &
   area_of_cross_section = 24.384  &
   y_shear_area_ratio = 0.0  &
   z_shear_area_ratio = 0.0  &
   youngs_modulus = 1.9E+05  &
   shear_modulus = 7.5E+04  &
   ixx = 1172.529544192  &
   iyy = 1170.432  &
   izz = 2.097544192  &
   damping_ratio = 1.0E-02  &
   formulation = linear
!
force create element_like beam  &
   beam_name = .FRS5_doe_8_LAUL.s2_beamY_10  &
   adams_id = 39  &
   i_marker_name = .FRS5_doe_8_LAUL.sideY2_11.beamY_s2_10b  &
   j_marker_name = .FRS5_doe_8_LAUL.sideY2_10.beamY_s2_10a  &
   length = 5.5908756962  &
   area_of_cross_section = 24.384  &
   y_shear_area_ratio = 0.0  &
   z_shear_area_ratio = 0.0  &
   youngs_modulus = 1.9E+05  &
   shear_modulus = 7.5E+04  &
   ixx = 1172.529544192  &
   iyy = 1170.432  &
   izz = 2.097544192  &
   damping_ratio = 1.0E-02  &
   formulation = linear
!
force create element_like beam  &
   beam_name = .FRS5_doe_8_LAUL.s2_beamY_11  &
   adams_id = 40  &
   i_marker_name = .FRS5_doe_8_LAUL.sideY2_12.beamY_s2_11b  &
   j_marker_name = .FRS5_doe_8_LAUL.sideY2_11.beamY_s2_11a  &
   length = 5.6267762751  &
   area_of_cross_section = 24.384  &
   y_shear_area_ratio = 0.0  &
   z_shear_area_ratio = 0.0  &
   youngs_modulus = 1.9E+05  &
   shear_modulus = 7.5E+04  &
   ixx = 1172.529544192  &
   iyy = 1170.432  &
   izz = 2.097544192  &
   damping_ratio = 1.0E-02  &
   formulation = linear
!
force create element_like beam  &
   beam_name = .FRS5_doe_8_LAUL.s2_beamY_12  &
   adams_id = 41  &
   i_marker_name = .FRS5_doe_8_LAUL.sideY2_13.beamY_s2_12b  &
   j_marker_name = .FRS5_doe_8_LAUL.sideY2_12.beamY_s2_12a  &
   length = 5.6453845662  &
   area_of_cross_section = 24.384  &
   y_shear_area_ratio = 0.0  &
   z_shear_area_ratio = 0.0  &
   youngs_modulus = 1.9E+05  &
   shear_modulus = 7.5E+04  &
   ixx = 1172.529544192  &
   iyy = 1170.432  &
   izz = 2.097544192  &
   damping_ratio = 1.0E-02  &
   formulation = linear
!
force create element_like beam  &
   beam_name = .FRS5_doe_8_LAUL.s2_beamY_13  &
   adams_id = 42  &
   i_marker_name = .FRS5_doe_8_LAUL.sideY2_14.beamY_s2_13b  &
   j_marker_name = .FRS5_doe_8_LAUL.sideY2_13.beamY_s2_13a  &
   length = 5.6453845662  &
   area_of_cross_section = 24.384  &
   y_shear_area_ratio = 0.0  &
   z_shear_area_ratio = 0.0  &
   youngs_modulus = 1.9E+05  &
   shear_modulus = 7.5E+04  &
   ixx = 1172.529544192  &
   iyy = 1170.432  &
   izz = 2.097544192  &
   damping_ratio = 1.0E-02  &
   formulation = linear
!
force create element_like beam  &
   beam_name = .FRS5_doe_8_LAUL.s2_beamY_14  &
   adams_id = 43  &
   i_marker_name = .FRS5_doe_8_LAUL.sideY2_15.beamY_s2_14b  &
   j_marker_name = .FRS5_doe_8_LAUL.sideY2_14.beamY_s2_14a  &
   length = 5.6324399802  &
   area_of_cross_section = 24.384  &
   y_shear_area_ratio = 0.0  &
   z_shear_area_ratio = 0.0  &
   youngs_modulus = 1.9E+05  &
   shear_modulus = 7.5E+04  &
   ixx = 1172.529544192  &
   iyy = 1170.432  &
   izz = 2.097544192  &
   damping_ratio = 1.0E-02  &
   formulation = linear
!
force create element_like beam  &
   beam_name = .FRS5_doe_8_LAUL.s2_beamY_15  &
   adams_id = 44  &
   i_marker_name = .FRS5_doe_8_LAUL.sideY2_16.beamY_s2_15b  &
   j_marker_name = .FRS5_doe_8_LAUL.sideY2_15.beamY_s2_15a  &
   length = 5.6313953972  &
   area_of_cross_section = 24.384  &
   y_shear_area_ratio = 0.0  &
   z_shear_area_ratio = 0.0  &
   youngs_modulus = 1.9E+05  &
   shear_modulus = 7.5E+04  &
   ixx = 1172.529544192  &
   iyy = 1170.432  &
   izz = 2.097544192  &
   damping_ratio = 1.0E-02  &
   formulation = linear
!
force create element_like beam  &
   beam_name = .FRS5_doe_8_LAUL.s2_beamY_16  &
   adams_id = 45  &
   i_marker_name = .FRS5_doe_8_LAUL.sideY2_17.beamY_s2_16b  &
   j_marker_name = .FRS5_doe_8_LAUL.sideY2_16.beamY_s2_16a  &
   length = 5.6317631564  &
   area_of_cross_section = 24.384  &
   y_shear_area_ratio = 0.0  &
   z_shear_area_ratio = 0.0  &
   youngs_modulus = 1.9E+05  &
   shear_modulus = 7.5E+04  &
   ixx = 1172.529544192  &
   iyy = 1170.432  &
   izz = 2.097544192  &
   damping_ratio = 1.0E-02  &
   formulation = linear
!
force create element_like beam  &
   beam_name = .FRS5_doe_8_LAUL.s2_beamY_17  &
   adams_id = 46  &
   i_marker_name = .FRS5_doe_8_LAUL.sideY2_18.beamY_s2_17b  &
   j_marker_name = .FRS5_doe_8_LAUL.sideY2_17.beamY_s2_17a  &
   length = 5.631966961  &
   area_of_cross_section = 24.384  &
   y_shear_area_ratio = 0.0  &
   z_shear_area_ratio = 0.0  &
   youngs_modulus = 1.9E+05  &
   shear_modulus = 7.5E+04  &
   ixx = 1172.529544192  &
   iyy = 1170.432  &
   izz = 2.097544192  &
   damping_ratio = 1.0E-02  &
   formulation = linear
!
force create element_like beam  &
   beam_name = .FRS5_doe_8_LAUL.s2_beamY_18  &
   adams_id = 47  &
   i_marker_name = .FRS5_doe_8_LAUL.sideY2_19.beamY_s2_18b  &
   j_marker_name = .FRS5_doe_8_LAUL.sideY2_18.beamY_s2_18a  &
   length = 5.6316645861  &
   area_of_cross_section = 24.384  &
   y_shear_area_ratio = 0.0  &
   z_shear_area_ratio = 0.0  &
   youngs_modulus = 1.9E+05  &
   shear_modulus = 7.5E+04  &
   ixx = 1172.529544192  &
   iyy = 1170.432  &
   izz = 2.097544192  &
   damping_ratio = 1.0E-02  &
   formulation = linear
!
force create element_like beam  &
   beam_name = .FRS5_doe_8_LAUL.s2_beamY_19  &
   adams_id = 48  &
   i_marker_name = .FRS5_doe_8_LAUL.sideY2_20.beamY_s2_19b  &
   j_marker_name = .FRS5_doe_8_LAUL.sideY2_19.beamY_s2_19a  &
   length = 5.6313827805  &
   area_of_cross_section = 24.384  &
   y_shear_area_ratio = 0.0  &
   z_shear_area_ratio = 0.0  &
   youngs_modulus = 1.9E+05  &
   shear_modulus = 7.5E+04  &
   ixx = 1172.529544192  &
   iyy = 1170.432  &
   izz = 2.097544192  &
   damping_ratio = 1.0E-02  &
   formulation = linear
!
force create element_like beam  &
   beam_name = .FRS5_doe_8_LAUL.s2_beamY_20  &
   adams_id = 49  &
   i_marker_name = .FRS5_doe_8_LAUL.sideY2_21.beamY_s2_20b  &
   j_marker_name = .FRS5_doe_8_LAUL.sideY2_20.beamY_s2_20a  &
   length = 5.6312706923  &
   area_of_cross_section = 24.384  &
   y_shear_area_ratio = 0.0  &
   z_shear_area_ratio = 0.0  &
   youngs_modulus = 1.9E+05  &
   shear_modulus = 7.5E+04  &
   ixx = 1172.529544192  &
   iyy = 1170.432  &
   izz = 2.097544192  &
   damping_ratio = 1.0E-02  &
   formulation = linear
!
force create element_like beam  &
   beam_name = .FRS5_doe_8_LAUL.s2_beamY_21  &
   adams_id = 50  &
   i_marker_name = .FRS5_doe_8_LAUL.sideY2_22.beamY_s2_21b  &
   j_marker_name = .FRS5_doe_8_LAUL.sideY2_21.beamY_s2_21a  &
   length = 5.6315086096  &
   area_of_cross_section = 24.384  &
   y_shear_area_ratio = 0.0  &
   z_shear_area_ratio = 0.0  &
   youngs_modulus = 1.9E+05  &
   shear_modulus = 7.5E+04  &
   ixx = 1172.529544192  &
   iyy = 1170.432  &
   izz = 2.097544192  &
   damping_ratio = 1.0E-02  &
   formulation = linear
!
force create element_like beam  &
   beam_name = .FRS5_doe_8_LAUL.s2_beamY_22  &
   adams_id = 51  &
   i_marker_name = .FRS5_doe_8_LAUL.sideY2_23.beamY_s2_22b  &
   j_marker_name = .FRS5_doe_8_LAUL.sideY2_22.beamY_s2_22a  &
   length = 5.6319082095  &
   area_of_cross_section = 24.384  &
   y_shear_area_ratio = 0.0  &
   z_shear_area_ratio = 0.0  &
   youngs_modulus = 1.9E+05  &
   shear_modulus = 7.5E+04  &
   ixx = 1172.529544192  &
   iyy = 1170.432  &
   izz = 2.097544192  &
   damping_ratio = 1.0E-02  &
   formulation = linear
!
force create element_like beam  &
   beam_name = .FRS5_doe_8_LAUL.s2_beamY_23  &
   adams_id = 52  &
   i_marker_name = .FRS5_doe_8_LAUL.sideY2_24.beamY_s2_23b  &
   j_marker_name = .FRS5_doe_8_LAUL.sideY2_23.beamY_s2_23a  &
   length = 5.6410199512  &
   area_of_cross_section = 24.384  &
   y_shear_area_ratio = 0.0  &
   z_shear_area_ratio = 0.0  &
   youngs_modulus = 1.9E+05  &
   shear_modulus = 7.5E+04  &
   ixx = 1172.529544192  &
   iyy = 1170.432  &
   izz = 2.097544192  &
   damping_ratio = 1.0E-02  &
   formulation = linear
!
force create element_like beam  &
   beam_name = .FRS5_doe_8_LAUL.s2_beamY_24  &
   adams_id = 53  &
   i_marker_name = .FRS5_doe_8_LAUL.sideY2_25.beamY_s2_24b  &
   j_marker_name = .FRS5_doe_8_LAUL.sideY2_24.beamY_s2_24a  &
   length = 5.6431525241  &
   area_of_cross_section = 24.384  &
   y_shear_area_ratio = 0.0  &
   z_shear_area_ratio = 0.0  &
   youngs_modulus = 1.9E+05  &
   shear_modulus = 7.5E+04  &
   ixx = 1172.529544192  &
   iyy = 1170.432  &
   izz = 2.097544192  &
   damping_ratio = 1.0E-02  &
   formulation = linear
!
force create element_like beam  &
   beam_name = .FRS5_doe_8_LAUL.s2_beamY_25  &
   adams_id = 54  &
   i_marker_name = .FRS5_doe_8_LAUL.sideY2_26.beamY_s2_25b  &
   j_marker_name = .FRS5_doe_8_LAUL.sideY2_25.beamY_s2_25a  &
   length = 5.643094184  &
   area_of_cross_section = 24.384  &
   y_shear_area_ratio = 0.0  &
   z_shear_area_ratio = 0.0  &
   youngs_modulus = 1.9E+05  &
   shear_modulus = 7.5E+04  &
   ixx = 1172.529544192  &
   iyy = 1170.432  &
   izz = 2.097544192  &
   damping_ratio = 1.0E-02  &
   formulation = linear
!
force create element_like beam  &
   beam_name = .FRS5_doe_8_LAUL.s2_beamY_26  &
   adams_id = 55  &
   i_marker_name = .FRS5_doe_8_LAUL.sideY2_27.beamY_s2_26b  &
   j_marker_name = .FRS5_doe_8_LAUL.sideY2_26.beamY_s2_26a  &
   length = 5.6430583853  &
   area_of_cross_section = 24.384  &
   y_shear_area_ratio = 0.0  &
   z_shear_area_ratio = 0.0  &
   youngs_modulus = 1.9E+05  &
   shear_modulus = 7.5E+04  &
   ixx = 1172.529544192  &
   iyy = 1170.432  &
   izz = 2.097544192  &
   damping_ratio = 1.0E-02  &
   formulation = linear
!
force create element_like beam  &
   beam_name = .FRS5_doe_8_LAUL.s2_beamY_27  &
   adams_id = 56  &
   i_marker_name = .FRS5_doe_8_LAUL.sideY2_28.beamY_s2_27b  &
   j_marker_name = .FRS5_doe_8_LAUL.sideY2_27.beamY_s2_27a  &
   length = 5.6430720375  &
   area_of_cross_section = 24.384  &
   y_shear_area_ratio = 0.0  &
   z_shear_area_ratio = 0.0  &
   youngs_modulus = 1.9E+05  &
   shear_modulus = 7.5E+04  &
   ixx = 1172.529544192  &
   iyy = 1170.432  &
   izz = 2.097544192  &
   damping_ratio = 1.0E-02  &
   formulation = linear
!
force create element_like beam  &
   beam_name = .FRS5_doe_8_LAUL.s2_beamY_28  &
   adams_id = 57  &
   i_marker_name = .FRS5_doe_8_LAUL.sideY2_29.beamY_s2_28b  &
   j_marker_name = .FRS5_doe_8_LAUL.sideY2_28.beamY_s2_28a  &
   length = 5.643081853  &
   area_of_cross_section = 24.384  &
   y_shear_area_ratio = 0.0  &
   z_shear_area_ratio = 0.0  &
   youngs_modulus = 1.9E+05  &
   shear_modulus = 7.5E+04  &
   ixx = 1172.529544192  &
   iyy = 1170.432  &
   izz = 2.097544192  &
   damping_ratio = 1.0E-02  &
   formulation = linear
!
force create element_like beam  &
   beam_name = .FRS5_doe_8_LAUL.s2_beamY_29  &
   adams_id = 58  &
   i_marker_name = .FRS5_doe_8_LAUL.sideY2_30.beamY_s2_29b  &
   j_marker_name = .FRS5_doe_8_LAUL.sideY2_29.beamY_s2_29a  &
   length = 5.6432324638  &
   area_of_cross_section = 24.384  &
   y_shear_area_ratio = 0.0  &
   z_shear_area_ratio = 0.0  &
   youngs_modulus = 1.9E+05  &
   shear_modulus = 7.5E+04  &
   ixx = 1172.529544192  &
   iyy = 1170.432  &
   izz = 2.097544192  &
   damping_ratio = 1.0E-02  &
   formulation = linear
!
force create element_like bushing  &
   bushing_name = .FRS5_doe_8_LAUL.linkbush1  &
   adams_id = 1  &
   i_marker_name = .FRS5_doe_8_LAUL.sideY1_32.shackle1a  &
   j_marker_name = .FRS5_doe_8_LAUL.positioner.upper_shackle_point  &
   damping = 1000.0, 1000.0, 1000.0  &
   stiffness = 1.0E+05, 1.0E+05, 1.0E+05  &
   force_preload = 0.0, 0.0, 0.0  &
   tdamping = 100.0, 100.0, 0.0  &
   tstiffness = 1.0E+04, 1.0E+04, 0.0  &
   torque_preload = 0.0, 0.0, 0.0
!
force attributes  &
   force_name = .FRS5_doe_8_LAUL.linkbush1  &
   visibility = off
!
force create element_like bushing  &
   bushing_name = .FRS5_doe_8_LAUL.linkbush2  &
   adams_id = 2  &
   i_marker_name = .FRS5_doe_8_LAUL.sideY2_30.shackle2a  &
   j_marker_name = .FRS5_doe_8_LAUL.positioner.lower_shackle_point  &
   damping = 1000.0, 1000.0, 1000.0  &
   stiffness = 1.0E+05, 1.0E+05, 1.0E+05  &
   force_preload = 0.0, 0.0, 0.0  &
   tdamping = 100.0, 100.0, 0.0  &
   tstiffness = 1.0E+04, 1.0E+04, 0.0  &
   torque_preload = 0.0, 0.0, 0.0
!
force attributes  &
   force_name = .FRS5_doe_8_LAUL.linkbush2  &
   visibility = off
!
force create element_like bushing  &
   bushing_name = .FRS5_doe_8_LAUL.linkU1line1  &
   adams_id = 3  &
   i_marker_name = .FRS5_doe_8_LAUL.linkU1.MARKER_645  &
   j_marker_name = .FRS5_doe_8_LAUL.linkU1line1dummy.cm  &
   damping = 1000.0, 1000.0, 1000.0  &
   stiffness = 1.0E+05, 1.0E+05, 1.0E+05  &
   force_preload = 0.0, 0.0, 0.0  &
   tdamping = 100.0, 100.0, 100.0  &
   tstiffness = 1.0E+04, 1.0E+04, 1.0E+04  &
   torque_preload = 0.0, 0.0, 0.0
!
force attributes  &
   force_name = .FRS5_doe_8_LAUL.linkU1line1  &
   visibility = off
!
force create element_like bushing  &
   bushing_name = .FRS5_doe_8_LAUL.linkU2line1  &
   adams_id = 5  &
   i_marker_name = .FRS5_doe_8_LAUL.linkU2.MARKER_647  &
   j_marker_name = .FRS5_doe_8_LAUL.linkU2line1dummy.cm  &
   damping = 1000.0, 1000.0, 1000.0  &
   stiffness = 1.0E+05, 1.0E+05, 1.0E+05  &
   force_preload = 0.0, 0.0, 0.0  &
   tdamping = 100.0, 100.0, 100.0  &
   tstiffness = 1.0E+04, 1.0E+04, 1.0E+04  &
   torque_preload = 0.0, 0.0, 0.0
!
force attributes  &
   force_name = .FRS5_doe_8_LAUL.linkU2line1  &
   visibility = off
!
force create element_like bushing  &
   bushing_name = .FRS5_doe_8_LAUL.linkU3line1  &
   adams_id = 6  &
   i_marker_name = .FRS5_doe_8_LAUL.linkU3.MARKER_649  &
   j_marker_name = .FRS5_doe_8_LAUL.linkU3line1dummy.cm  &
   damping = 1000.0, 1000.0, 1000.0  &
   stiffness = 1.0E+05, 1.0E+05, 1.0E+05  &
   force_preload = 0.0, 0.0, 0.0  &
   tdamping = 100.0, 100.0, 100.0  &
   tstiffness = 1.0E+04, 1.0E+04, 1.0E+04  &
   torque_preload = 0.0, 0.0, 0.0
!
force attributes  &
   force_name = .FRS5_doe_8_LAUL.linkU3line1  &
   visibility = off
!
force create element_like bushing  &
   bushing_name = .FRS5_doe_8_LAUL.linkU4line1  &
   adams_id = 7  &
   i_marker_name = .FRS5_doe_8_LAUL.linkU4.MARKER_651  &
   j_marker_name = .FRS5_doe_8_LAUL.linkU4line1dummy.cm  &
   damping = 1000.0, 1000.0, 1000.0  &
   stiffness = 1.0E+05, 1.0E+05, 1.0E+05  &
   force_preload = 0.0, 0.0, 0.0  &
   tdamping = 100.0, 100.0, 100.0  &
   tstiffness = 1.0E+04, 1.0E+04, 1.0E+04  &
   torque_preload = 0.0, 0.0, 0.0
!
force attributes  &
   force_name = .FRS5_doe_8_LAUL.linkU4line1  &
   visibility = off
!
force create element_like bushing  &
   bushing_name = .FRS5_doe_8_LAUL.linkU1line2  &
   adams_id = 4  &
   i_marker_name = .FRS5_doe_8_LAUL.linkU1.MARKER_655  &
   j_marker_name = .FRS5_doe_8_LAUL.linkU1line2dummy.cm  &
   damping = 1000.0, 1000.0, 1000.0  &
   stiffness = 1.0E+05, 1.0E+05, 1.0E+05  &
   force_preload = 0.0, 0.0, 0.0  &
   tdamping = 100.0, 100.0, 100.0  &
   tstiffness = 1.0E+04, 1.0E+04, 1.0E+04  &
   torque_preload = 0.0, 0.0, 0.0
!
force attributes  &
   force_name = .FRS5_doe_8_LAUL.linkU1line2  &
   visibility = off
!
force create element_like bushing  &
   bushing_name = .FRS5_doe_8_LAUL.linkU2line2  &
   adams_id = 9  &
   i_marker_name = .FRS5_doe_8_LAUL.linkU2.MARKER_657  &
   j_marker_name = .FRS5_doe_8_LAUL.linkU2line2dummy.cm  &
   damping = 1000.0, 1000.0, 1000.0  &
   stiffness = 1.0E+05, 1.0E+05, 1.0E+05  &
   force_preload = 0.0, 0.0, 0.0  &
   tdamping = 100.0, 100.0, 100.0  &
   tstiffness = 1.0E+04, 1.0E+04, 1.0E+04  &
   torque_preload = 0.0, 0.0, 0.0
!
force attributes  &
   force_name = .FRS5_doe_8_LAUL.linkU2line2  &
   visibility = off
!
force create element_like bushing  &
   bushing_name = .FRS5_doe_8_LAUL.linkU3line2  &
   adams_id = 10  &
   i_marker_name = .FRS5_doe_8_LAUL.linkU3.MARKER_659  &
   j_marker_name = .FRS5_doe_8_LAUL.linkU3line2dummy.cm  &
   damping = 1000.0, 1000.0, 1000.0  &
   stiffness = 1.0E+05, 1.0E+05, 1.0E+05  &
   force_preload = 0.0, 0.0, 0.0  &
   tdamping = 100.0, 100.0, 100.0  &
   tstiffness = 1.0E+04, 1.0E+04, 1.0E+04  &
   torque_preload = 0.0, 0.0, 0.0
!
force attributes  &
   force_name = .FRS5_doe_8_LAUL.linkU3line2  &
   visibility = off
!
force create element_like bushing  &
   bushing_name = .FRS5_doe_8_LAUL.linkU4line2  &
   adams_id = 11  &
   i_marker_name = .FRS5_doe_8_LAUL.linkU4.MARKER_661  &
   j_marker_name = .FRS5_doe_8_LAUL.linkU4line2dummy.cm  &
   damping = 1000.0, 1000.0, 1000.0  &
   stiffness = 1.0E+05, 1.0E+05, 1.0E+05  &
   force_preload = 0.0, 0.0, 0.0  &
   tdamping = 100.0, 100.0, 100.0  &
   tstiffness = 1.0E+04, 1.0E+04, 1.0E+04  &
   torque_preload = 0.0, 0.0, 0.0
!
force attributes  &
   force_name = .FRS5_doe_8_LAUL.linkU4line2  &
   visibility = off
!
force create element_like bushing  &
   bushing_name = .FRS5_doe_8_LAUL.linkU5line1  &
   adams_id = 12  &
   i_marker_name = .FRS5_doe_8_LAUL.linkU5.MARKER_651  &
   j_marker_name = .FRS5_doe_8_LAUL.linkU5line1dummy.cm  &
   damping = 1000.0, 1000.0, 1000.0  &
   stiffness = 1.0E+05, 1.0E+05, 1.0E+05  &
   force_preload = 0.0, 0.0, 0.0  &
   tdamping = 100.0, 100.0, 100.0  &
   tstiffness = 1.0E+04, 1.0E+04, 1.0E+04  &
   torque_preload = 0.0, 0.0, 0.0
!
force attributes  &
   force_name = .FRS5_doe_8_LAUL.linkU5line1  &
   visibility = off
!
force create element_like bushing  &
   bushing_name = .FRS5_doe_8_LAUL.linkU5line2  &
   adams_id = 13  &
   i_marker_name = .FRS5_doe_8_LAUL.linkU5.MARKER_661  &
   j_marker_name = .FRS5_doe_8_LAUL.linkU5line2dummy.cm  &
   damping = 1000.0, 1000.0, 1000.0  &
   stiffness = 1.0E+05, 1.0E+05, 1.0E+05  &
   force_preload = 0.0, 0.0, 0.0  &
   tdamping = 100.0, 100.0, 100.0  &
   tstiffness = 1.0E+04, 1.0E+04, 1.0E+04  &
   torque_preload = 0.0, 0.0, 0.0
!
force attributes  &
   force_name = .FRS5_doe_8_LAUL.linkU5line2  &
   visibility = off
!
force create element_like bushing  &
   bushing_name = .FRS5_doe_8_LAUL.linkL2line1  &
   adams_id = 14  &
   i_marker_name = .FRS5_doe_8_LAUL.linkL2.LM1  &
   j_marker_name = .FRS5_doe_8_LAUL.linkL2line1dummy.cm  &
   damping = 1000.0, 1000.0, 1000.0  &
   stiffness = 1.0E+05, 1.0E+05, 1.0E+05  &
   force_preload = 0.0, 0.0, 0.0  &
   tdamping = 100.0, 100.0, 100.0  &
   tstiffness = 1.0E+04, 1.0E+04, 1.0E+04  &
   torque_preload = 0.0, 0.0, 0.0
!
force create element_like bushing  &
   bushing_name = .FRS5_doe_8_LAUL.linkL2line2  &
   adams_id = 15  &
   i_marker_name = .FRS5_doe_8_LAUL.linkL2.LM2  &
   j_marker_name = .FRS5_doe_8_LAUL.linkL2line2dummy.cm  &
   damping = 1000.0, 1000.0, 1000.0  &
   stiffness = 1.0E+05, 1.0E+05, 1.0E+05  &
   force_preload = 0.0, 0.0, 0.0  &
   tdamping = 100.0, 100.0, 100.0  &
   tstiffness = 1.0E+04, 1.0E+04, 1.0E+04  &
   torque_preload = 0.0, 0.0, 0.0
!
force create element_like bushing  &
   bushing_name = .FRS5_doe_8_LAUL.linkL3line1  &
   adams_id = 16  &
   i_marker_name = .FRS5_doe_8_LAUL.linkL3.LM1  &
   j_marker_name = .FRS5_doe_8_LAUL.linkL3line1dummy.cm  &
   damping = 1000.0, 1000.0, 1000.0  &
   stiffness = 1.0E+05, 1.0E+05, 1.0E+05  &
   force_preload = 0.0, 0.0, 0.0  &
   tdamping = 100.0, 100.0, 100.0  &
   tstiffness = 1.0E+04, 1.0E+04, 1.0E+04  &
   torque_preload = 0.0, 0.0, 0.0
!
force create element_like bushing  &
   bushing_name = .FRS5_doe_8_LAUL.linkL3line2  &
   adams_id = 17  &
   i_marker_name = .FRS5_doe_8_LAUL.linkL3.LM2  &
   j_marker_name = .FRS5_doe_8_LAUL.linkL3line2dummy.cm  &
   damping = 1000.0, 1000.0, 1000.0  &
   stiffness = 1.0E+05, 1.0E+05, 1.0E+05  &
   force_preload = 0.0, 0.0, 0.0  &
   tdamping = 100.0, 100.0, 100.0  &
   tstiffness = 1.0E+04, 1.0E+04, 1.0E+04  &
   torque_preload = 0.0, 0.0, 0.0
!
force create element_like bushing  &
   bushing_name = .FRS5_doe_8_LAUL.linkL4line1  &
   adams_id = 18  &
   i_marker_name = .FRS5_doe_8_LAUL.linkL4.LM1  &
   j_marker_name = .FRS5_doe_8_LAUL.linkL4line1dummy.cm  &
   damping = 1000.0, 1000.0, 1000.0  &
   stiffness = 1.0E+05, 1.0E+05, 1.0E+05  &
   force_preload = 0.0, 0.0, 0.0  &
   tdamping = 100.0, 100.0, 100.0  &
   tstiffness = 1.0E+04, 1.0E+04, 1.0E+04  &
   torque_preload = 0.0, 0.0, 0.0
!
force create element_like bushing  &
   bushing_name = .FRS5_doe_8_LAUL.linkL4line2  &
   adams_id = 19  &
   i_marker_name = .FRS5_doe_8_LAUL.linkL4.LM2  &
   j_marker_name = .FRS5_doe_8_LAUL.linkL4line2dummy.cm  &
   damping = 1000.0, 1000.0, 1000.0  &
   stiffness = 1.0E+05, 1.0E+05, 1.0E+05  &
   force_preload = 0.0, 0.0, 0.0  &
   tdamping = 100.0, 100.0, 100.0  &
   tstiffness = 1.0E+04, 1.0E+04, 1.0E+04  &
   torque_preload = 0.0, 0.0, 0.0
!
force create element_like bushing  &
   bushing_name = .FRS5_doe_8_LAUL.linkL5line1  &
   adams_id = 20  &
   i_marker_name = .FRS5_doe_8_LAUL.linkL5.LM1  &
   j_marker_name = .FRS5_doe_8_LAUL.linkL5line1dummy.cm  &
   damping = 1000.0, 1000.0, 1000.0  &
   stiffness = 1.0E+05, 1.0E+05, 1.0E+05  &
   force_preload = 0.0, 0.0, 0.0  &
   tdamping = 100.0, 100.0, 100.0  &
   tstiffness = 1.0E+04, 1.0E+04, 1.0E+04  &
   torque_preload = 0.0, 0.0, 0.0
!
force create element_like bushing  &
   bushing_name = .FRS5_doe_8_LAUL.linkL5line2  &
   adams_id = 21  &
   i_marker_name = .FRS5_doe_8_LAUL.linkL5.LM2  &
   j_marker_name = .FRS5_doe_8_LAUL.linkL5line2dummy.cm  &
   damping = 1000.0, 1000.0, 1000.0  &
   stiffness = 1.0E+05, 1.0E+05, 1.0E+05  &
   force_preload = 0.0, 0.0, 0.0  &
   tdamping = 100.0, 100.0, 100.0  &
   tstiffness = 1.0E+04, 1.0E+04, 1.0E+04  &
   torque_preload = 0.0, 0.0, 0.0
!
force create direct single_component_force  &
   single_component_force_name = .FRS5_doe_8_LAUL.feed_rotor_drag  &
   adams_id = 32  &
   type_of_freedom = rotational  &
   i_marker_name = .FRS5_doe_8_LAUL.rotor_shaftF.MARKER_1181  &
   j_marker_name = .FRS5_doe_8_LAUL.mid_frameX.MARKER_1182  &
   action_only = off  &
   function = ""
!
force attributes  &
   force_name = .FRS5_doe_8_LAUL.feed_rotor_drag  &
   visibility = off
!
force create direct single_component_force  &
   single_component_force_name = .FRS5_doe_8_LAUL.upper_clutch  &
   adams_id = 23  &
   type_of_freedom = rotational  &
   i_marker_name = .FRS5_doe_8_LAUL.upper_drivegearF.aft_center_ref  &
   j_marker_name = .FRS5_doe_8_LAUL.upper_dogs.dog_start  &
   action_only = off  &
   function = ""
!
force attributes  &
   force_name = .FRS5_doe_8_LAUL.upper_clutch  &
   visibility = off
!
force create direct single_component_force  &
   single_component_force_name = .FRS5_doe_8_LAUL.lower_clutch  &
   adams_id = 56  &
   type_of_freedom = rotational  &
   i_marker_name = .FRS5_doe_8_LAUL.lower_drivegearF.aft_center_ref  &
   j_marker_name = .FRS5_doe_8_LAUL.lower_dogs.dog_start  &
   action_only = off  &
   function = ""
!
force create direct single_component_force  &
   single_component_force_name = .FRS5_doe_8_LAUL.rollY2_13  &
   adams_id = 1  &
   type_of_freedom = translational  &
   i_marker_name = .FRS5_doe_8_LAUL.sideY2_13.beamY_s2_13a  &
   j_marker_name = .FRS5_doe_8_LAUL.lower_drive_shaftF.lscenter  &
   action_only = off  &
   function = ""
!
force create direct single_component_force  &
   single_component_force_name = .FRS5_doe_8_LAUL.rollY2_14  &
   adams_id = 2  &
   type_of_freedom = translational  &
   i_marker_name = .FRS5_doe_8_LAUL.sideY2_14.beamY_s2_14a  &
   j_marker_name = .FRS5_doe_8_LAUL.lower_drive_shaftF.lscenter  &
   action_only = off  &
   function = ""
!
force create direct single_component_force  &
   single_component_force_name = .FRS5_doe_8_LAUL.rollY2_15  &
   adams_id = 3  &
   type_of_freedom = translational  &
   i_marker_name = .FRS5_doe_8_LAUL.sideY2_15.beamY_s2_15a  &
   j_marker_name = .FRS5_doe_8_LAUL.lower_drive_shaftF.lscenter  &
   action_only = off  &
   function = ""
!
force create direct single_component_force  &
   single_component_force_name = .FRS5_doe_8_LAUL.rollY2_16  &
   adams_id = 4  &
   type_of_freedom = translational  &
   i_marker_name = .FRS5_doe_8_LAUL.sideY2_16.beamY_s2_16a  &
   j_marker_name = .FRS5_doe_8_LAUL.lower_drive_shaftF.lscenter  &
   action_only = off  &
   function = ""
!
force create direct single_component_force  &
   single_component_force_name = .FRS5_doe_8_LAUL.rollY2_17  &
   adams_id = 5  &
   type_of_freedom = translational  &
   i_marker_name = .FRS5_doe_8_LAUL.sideY2_17.beamY_s2_17a  &
   j_marker_name = .FRS5_doe_8_LAUL.lower_drive_shaftF.lscenter  &
   action_only = off  &
   function = ""
!
force create direct single_component_force  &
   single_component_force_name = .FRS5_doe_8_LAUL.rollY2_18  &
   adams_id = 6  &
   type_of_freedom = translational  &
   i_marker_name = .FRS5_doe_8_LAUL.sideY2_18.beamY_s2_18a  &
   j_marker_name = .FRS5_doe_8_LAUL.lower_drive_shaftF.lscenter  &
   action_only = off  &
   function = ""
!
force create direct single_component_force  &
   single_component_force_name = .FRS5_doe_8_LAUL.rollY2_19  &
   adams_id = 7  &
   type_of_freedom = translational  &
   i_marker_name = .FRS5_doe_8_LAUL.sideY2_19.beamY_s2_19a  &
   j_marker_name = .FRS5_doe_8_LAUL.lower_drive_shaftF.lscenter  &
   action_only = off  &
   function = ""
!
force create direct single_component_force  &
   single_component_force_name = .FRS5_doe_8_LAUL.rollY2_20  &
   adams_id = 8  &
   type_of_freedom = translational  &
   i_marker_name = .FRS5_doe_8_LAUL.sideY2_20.beamY_s2_20a  &
   j_marker_name = .FRS5_doe_8_LAUL.lower_drive_shaftF.lscenter  &
   action_only = off  &
   function = ""
!
force create direct single_component_force  &
   single_component_force_name = .FRS5_doe_8_LAUL.rollY2_21  &
   adams_id = 9  &
   type_of_freedom = translational  &
   i_marker_name = .FRS5_doe_8_LAUL.sideY2_21.beamY_s2_21a  &
   j_marker_name = .FRS5_doe_8_LAUL.lower_drive_shaftF.lscenter  &
   action_only = off  &
   function = ""
!
force create direct single_component_force  &
   single_component_force_name = .FRS5_doe_8_LAUL.rollY2_22  &
   adams_id = 10  &
   type_of_freedom = translational  &
   i_marker_name = .FRS5_doe_8_LAUL.sideY2_22.beamY_s2_22a  &
   j_marker_name = .FRS5_doe_8_LAUL.lower_drive_shaftF.lscenter  &
   action_only = off  &
   function = ""
!
force create direct single_component_force  &
   single_component_force_name = .FRS5_doe_8_LAUL.rollY2_23  &
   adams_id = 11  &
   type_of_freedom = translational  &
   i_marker_name = .FRS5_doe_8_LAUL.sideY2_23.beamY_s2_23a  &
   j_marker_name = .FRS5_doe_8_LAUL.lower_drive_shaftF.lscenter  &
   action_only = off  &
   function = ""
!
force create direct single_component_force  &
   single_component_force_name = .FRS5_doe_8_LAUL.rollY2_24  &
   adams_id = 12  &
   type_of_freedom = translational  &
   i_marker_name = .FRS5_doe_8_LAUL.sideY2_24.beamY_s2_24a  &
   j_marker_name = .FRS5_doe_8_LAUL.lower_drive_shaftF.lscenter  &
   action_only = off  &
   function = ""
!
force create direct single_component_force  &
   single_component_force_name = .FRS5_doe_8_LAUL.rollY1_15  &
   adams_id = 13  &
   type_of_freedom = translational  &
   i_marker_name = .FRS5_doe_8_LAUL.sideY1_15.beamY_s1_15a  &
   j_marker_name = .FRS5_doe_8_LAUL.upper_drive_shaftF.uscenter  &
   action_only = off  &
   function = ""
!
force create direct single_component_force  &
   single_component_force_name = .FRS5_doe_8_LAUL.rollY1_16  &
   adams_id = 14  &
   type_of_freedom = translational  &
   i_marker_name = .FRS5_doe_8_LAUL.sideY1_16.beamY_s1_16a  &
   j_marker_name = .FRS5_doe_8_LAUL.upper_drive_shaftF.uscenter  &
   action_only = off  &
   function = ""
!
force create direct single_component_force  &
   single_component_force_name = .FRS5_doe_8_LAUL.rollY1_17  &
   adams_id = 15  &
   type_of_freedom = translational  &
   i_marker_name = .FRS5_doe_8_LAUL.sideY1_17.beamY_s1_17a  &
   j_marker_name = .FRS5_doe_8_LAUL.upper_drive_shaftF.uscenter  &
   action_only = off  &
   function = ""
!
force create direct single_component_force  &
   single_component_force_name = .FRS5_doe_8_LAUL.rollY1_18  &
   adams_id = 16  &
   type_of_freedom = translational  &
   i_marker_name = .FRS5_doe_8_LAUL.sideY1_18.beamY_s1_18a  &
   j_marker_name = .FRS5_doe_8_LAUL.upper_drive_shaftF.uscenter  &
   action_only = off  &
   function = ""
!
force create direct single_component_force  &
   single_component_force_name = .FRS5_doe_8_LAUL.rollY1_19  &
   adams_id = 17  &
   type_of_freedom = translational  &
   i_marker_name = .FRS5_doe_8_LAUL.sideY1_19.beamY_s1_19a  &
   j_marker_name = .FRS5_doe_8_LAUL.upper_drive_shaftF.uscenter  &
   action_only = off  &
   function = ""
!
force create direct single_component_force  &
   single_component_force_name = .FRS5_doe_8_LAUL.rollY1_20  &
   adams_id = 18  &
   type_of_freedom = translational  &
   i_marker_name = .FRS5_doe_8_LAUL.sideY1_20.beamY_s1_20a  &
   j_marker_name = .FRS5_doe_8_LAUL.upper_drive_shaftF.uscenter  &
   action_only = off  &
   function = ""
!
force create direct single_component_force  &
   single_component_force_name = .FRS5_doe_8_LAUL.rollY1_21  &
   adams_id = 19  &
   type_of_freedom = translational  &
   i_marker_name = .FRS5_doe_8_LAUL.sideY1_21.beamY_s1_21a  &
   j_marker_name = .FRS5_doe_8_LAUL.upper_drive_shaftF.uscenter  &
   action_only = off  &
   function = ""
!
force create direct single_component_force  &
   single_component_force_name = .FRS5_doe_8_LAUL.rollY1_22  &
   adams_id = 20  &
   type_of_freedom = translational  &
   i_marker_name = .FRS5_doe_8_LAUL.sideY1_22.beamY_s1_22a  &
   j_marker_name = .FRS5_doe_8_LAUL.upper_drive_shaftF.uscenter  &
   action_only = off  &
   function = ""
!
force create direct single_component_force  &
   single_component_force_name = .FRS5_doe_8_LAUL.rollY1_23  &
   adams_id = 21  &
   type_of_freedom = translational  &
   i_marker_name = .FRS5_doe_8_LAUL.sideY1_23.beamY_s1_23a  &
   j_marker_name = .FRS5_doe_8_LAUL.upper_drive_shaftF.uscenter  &
   action_only = off  &
   function = ""
!
force create direct single_component_force  &
   single_component_force_name = .FRS5_doe_8_LAUL.rollY1_24  &
   adams_id = 22  &
   type_of_freedom = translational  &
   i_marker_name = .FRS5_doe_8_LAUL.sideY1_24.beamY_s1_24a  &
   j_marker_name = .FRS5_doe_8_LAUL.upper_drive_shaftF.uscenter  &
   action_only = off  &
   function = ""
!
force create direct single_component_force  &
   single_component_force_name = .FRS5_doe_8_LAUL.rollY1_25  &
   adams_id = 57  &
   type_of_freedom = translational  &
   i_marker_name = .FRS5_doe_8_LAUL.sideY1_25.beamY_s1_25a  &
   j_marker_name = .FRS5_doe_8_LAUL.upper_drive_shaftF.uscenter  &
   action_only = off  &
   function = ""
!
force create direct single_component_force  &
   single_component_force_name = .FRS5_doe_8_LAUL.rollY1_26  &
   adams_id = 24  &
   type_of_freedom = translational  &
   i_marker_name = .FRS5_doe_8_LAUL.sideY1_26.beamY_s1_26a  &
   j_marker_name = .FRS5_doe_8_LAUL.upper_drive_shaftF.uscenter  &
   action_only = off  &
   function = ""
!
force create direct single_component_force  &
   single_component_force_name = .FRS5_doe_8_LAUL.rollY1_27  &
   adams_id = 25  &
   type_of_freedom = translational  &
   i_marker_name = .FRS5_doe_8_LAUL.sideY1_27.beamY_s1_27a  &
   j_marker_name = .FRS5_doe_8_LAUL.upper_drive_shaftF.uscenter  &
   action_only = off  &
   function = ""
!
force create direct single_component_force  &
   single_component_force_name = .FRS5_doe_8_LAUL.rollY1_28  &
   adams_id = 26  &
   type_of_freedom = translational  &
   i_marker_name = .FRS5_doe_8_LAUL.sideY1_28.beamY_s1_28a  &
   j_marker_name = .FRS5_doe_8_LAUL.upper_drive_shaftF.uscenter  &
   action_only = off  &
   function = ""
!
force create direct single_component_force  &
   single_component_force_name = .FRS5_doe_8_LAUL.rollY1_29  &
   adams_id = 27  &
   type_of_freedom = translational  &
   i_marker_name = .FRS5_doe_8_LAUL.sideY1_29.beamY_s1_29a  &
   j_marker_name = .FRS5_doe_8_LAUL.upper_drive_shaftF.uscenter  &
   action_only = off  &
   function = ""
!
force create direct single_component_force  &
   single_component_force_name = .FRS5_doe_8_LAUL.NoCross5_2  &
   adams_id = 28  &
   type_of_freedom = translational  &
   i_marker_name = .FRS5_doe_8_LAUL.sideY1_5.cm  &
   j_marker_name = .FRS5_doe_8_LAUL.sideY2_5.cm  &
   action_only = off  &
   function = ""
!
force create element_like rotational_spring_damper  &
   spring_damper_name = .FRS5_doe_8_LAUL.aft_gate_spring  &
   adams_id = 3  &
   i_marker_name = .FRS5_doe_8_LAUL.aft_gateF.MARKER_39  &
   j_marker_name = .FRS5_doe_8_LAUL.mid_frameX.MARKER_40  &
   damping = 0.4  &
   stiffness = 400.0  &
   preload = 0.0  &
   displacement_at_preload = 0.0d
!
force attributes  &
   force_name = .FRS5_doe_8_LAUL.aft_gate_spring  &
   visibility = off
!
force create element_like rotational_spring_damper  &
   spring_damper_name = .FRS5_doe_8_LAUL.fwd_gate_spring  &
   adams_id = 4  &
   i_marker_name = .FRS5_doe_8_LAUL.fwd_gateF.MARKER_37  &
   j_marker_name = .FRS5_doe_8_LAUL.fwd_housing.MARKER_38  &
   damping = 0.4  &
   stiffness = 400.0  &
   preload = 0.0  &
   displacement_at_preload = 0.0d
!
force attributes  &
   force_name = .FRS5_doe_8_LAUL.fwd_gate_spring  &
   visibility = off
!
force create direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.selector_arm_slot  &
   adams_id = 1  &
   i_marker_name = .FRS5_doe_8_LAUL.selector_spider.pin_center  &
   j_floating_marker_name = .FRS5_doe_8_LAUL.feed_selector_arm.FMARKER_55  &
   ref_marker_name = .FRS5_doe_8_LAUL.feed_selector_arm.step_ref_mark  &
   x_force_function = ""  &
   y_force_function = ""  &
   z_force_function = ""
!
force attributes  &
   force_name = .FRS5_doe_8_LAUL.selector_arm_slot  &
   visibility = off  &
   size_of_icons = 7.0
!
force create direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.feed_dragU4  &
   adams_id = 19  &
   i_marker_name = .FRS5_doe_8_LAUL.linkU4.trailing_center  &
   j_floating_marker_name = .FRS5_doe_8_LAUL.ground.FMARKER_759  &
   ref_marker_name = .FRS5_doe_8_LAUL.linkU4.trailing_center  &
   x_force_function = ""  &
   y_force_function = ""  &
   z_force_function = ""
!
force attributes  &
   force_name = .FRS5_doe_8_LAUL.feed_dragU4  &
   visibility = off
!
force create direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.BU1_2_s1_26  &
   adams_id = 20  &
   i_marker_name = .FRS5_doe_8_LAUL.brassU1.spring_ref  &
   j_floating_marker_name = .FRS5_doe_8_LAUL.sideY1_26.FMARKER_4597  &
   ref_marker_name = .FRS5_doe_8_LAUL.sideY1_26.beamY_s1_26a  &
   x_force_function = ""  &
   y_force_function = ""  &
   z_force_function = ""
!
force attributes  &
   force_name = .FRS5_doe_8_LAUL.BU1_2_s1_26  &
   visibility = off
!
force create direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.BU1_2_s1_27  &
   adams_id = 21  &
   i_marker_name = .FRS5_doe_8_LAUL.brassU1.spring_ref  &
   j_floating_marker_name = .FRS5_doe_8_LAUL.sideY1_27.FMARKER_4598  &
   ref_marker_name = .FRS5_doe_8_LAUL.sideY1_27.beamY_s1_27a  &
   x_force_function = ""  &
   y_force_function = ""  &
   z_force_function = ""
!
force attributes  &
   force_name = .FRS5_doe_8_LAUL.BU1_2_s1_27  &
   visibility = off
!
force create direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.BU1_2_s1_28  &
   adams_id = 22  &
   i_marker_name = .FRS5_doe_8_LAUL.brassU1.spring_ref  &
   j_floating_marker_name = .FRS5_doe_8_LAUL.sideY1_28.FMARKER_4599  &
   ref_marker_name = .FRS5_doe_8_LAUL.sideY1_28.beamY_s1_28a  &
   x_force_function = ""  &
   y_force_function = ""  &
   z_force_function = ""
!
force attributes  &
   force_name = .FRS5_doe_8_LAUL.BU1_2_s1_28  &
   visibility = off
!
force create direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.BU1_2_s1_29  &
   adams_id = 23  &
   i_marker_name = .FRS5_doe_8_LAUL.brassU1.spring_ref  &
   j_floating_marker_name = .FRS5_doe_8_LAUL.sideY1_29.FMARKER_4600  &
   ref_marker_name = .FRS5_doe_8_LAUL.sideY1_29.beamY_s1_29a  &
   x_force_function = ""  &
   y_force_function = ""  &
   z_force_function = ""
!
force attributes  &
   force_name = .FRS5_doe_8_LAUL.BU1_2_s1_29  &
   visibility = off
!
force create direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.BU1_2_s1_30  &
   adams_id = 24  &
   i_marker_name = .FRS5_doe_8_LAUL.brassU1.spring_ref  &
   j_floating_marker_name = .FRS5_doe_8_LAUL.sideY1_30.FMARKER_4601  &
   ref_marker_name = .FRS5_doe_8_LAUL.sideY1_30.beamY_s1_30a  &
   x_force_function = ""  &
   y_force_function = ""  &
   z_force_function = ""
!
force attributes  &
   force_name = .FRS5_doe_8_LAUL.BU1_2_s1_30  &
   visibility = off
!
force create direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.BU1_2_s1_31  &
   adams_id = 25  &
   i_marker_name = .FRS5_doe_8_LAUL.brassU1.spring_ref  &
   j_floating_marker_name = .FRS5_doe_8_LAUL.sideY1_31.FMARKER_4602  &
   ref_marker_name = .FRS5_doe_8_LAUL.sideY1_31.beamY_s1_31a  &
   x_force_function = ""  &
   y_force_function = ""  &
   z_force_function = ""
!
force attributes  &
   force_name = .FRS5_doe_8_LAUL.BU1_2_s1_31  &
   visibility = off
!
force create direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.BU2_2_s1_26  &
   adams_id = 26  &
   i_marker_name = .FRS5_doe_8_LAUL.brassU2.spring_ref  &
   j_floating_marker_name = .FRS5_doe_8_LAUL.sideY1_26.FMARKER_4627  &
   ref_marker_name = .FRS5_doe_8_LAUL.sideY1_26.beamY_s1_26a  &
   x_force_function = ""  &
   y_force_function = ""  &
   z_force_function = ""
!
force attributes  &
   force_name = .FRS5_doe_8_LAUL.BU2_2_s1_26  &
   visibility = off
!
force create direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.BU2_2_s1_27  &
   adams_id = 27  &
   i_marker_name = .FRS5_doe_8_LAUL.brassU2.spring_ref  &
   j_floating_marker_name = .FRS5_doe_8_LAUL.sideY1_27.FMARKER_4628  &
   ref_marker_name = .FRS5_doe_8_LAUL.sideY1_27.beamY_s1_27a  &
   x_force_function = ""  &
   y_force_function = ""  &
   z_force_function = ""
!
force attributes  &
   force_name = .FRS5_doe_8_LAUL.BU2_2_s1_27  &
   visibility = off
!
force create direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.BU2_2_s1_28  &
   adams_id = 28  &
   i_marker_name = .FRS5_doe_8_LAUL.brassU2.spring_ref  &
   j_floating_marker_name = .FRS5_doe_8_LAUL.sideY1_28.FMARKER_4629  &
   ref_marker_name = .FRS5_doe_8_LAUL.sideY1_28.beamY_s1_28a  &
   x_force_function = ""  &
   y_force_function = ""  &
   z_force_function = ""
!
force attributes  &
   force_name = .FRS5_doe_8_LAUL.BU2_2_s1_28  &
   visibility = off
!
force create direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.BU2_2_s1_29  &
   adams_id = 29  &
   i_marker_name = .FRS5_doe_8_LAUL.brassU2.spring_ref  &
   j_floating_marker_name = .FRS5_doe_8_LAUL.sideY1_29.FMARKER_4630  &
   ref_marker_name = .FRS5_doe_8_LAUL.sideY1_29.beamY_s1_29a  &
   x_force_function = ""  &
   y_force_function = ""  &
   z_force_function = ""
!
force attributes  &
   force_name = .FRS5_doe_8_LAUL.BU2_2_s1_29  &
   visibility = off
!
force create direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.BU2_2_s1_30  &
   adams_id = 30  &
   i_marker_name = .FRS5_doe_8_LAUL.brassU2.spring_ref  &
   j_floating_marker_name = .FRS5_doe_8_LAUL.sideY1_30.FMARKER_4631  &
   ref_marker_name = .FRS5_doe_8_LAUL.sideY1_30.beamY_s1_30a  &
   x_force_function = ""  &
   y_force_function = ""  &
   z_force_function = ""
!
force attributes  &
   force_name = .FRS5_doe_8_LAUL.BU2_2_s1_30  &
   visibility = off
!
force create direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.BU2_2_s1_31  &
   adams_id = 31  &
   i_marker_name = .FRS5_doe_8_LAUL.brassU2.spring_ref  &
   j_floating_marker_name = .FRS5_doe_8_LAUL.sideY1_31.FMARKER_4632  &
   ref_marker_name = .FRS5_doe_8_LAUL.sideY1_31.beamY_s1_31a  &
   x_force_function = ""  &
   y_force_function = ""  &
   z_force_function = ""
!
force attributes  &
   force_name = .FRS5_doe_8_LAUL.BU2_2_s1_31  &
   visibility = off
!
force create direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.BU3_2_s1_26  &
   adams_id = 32  &
   i_marker_name = .FRS5_doe_8_LAUL.brassU3.spring_ref  &
   j_floating_marker_name = .FRS5_doe_8_LAUL.sideY1_26.FMARKER_4657  &
   ref_marker_name = .FRS5_doe_8_LAUL.sideY1_26.beamY_s1_26a  &
   x_force_function = ""  &
   y_force_function = ""  &
   z_force_function = ""
!
force attributes  &
   force_name = .FRS5_doe_8_LAUL.BU3_2_s1_26  &
   visibility = off
!
force create direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.BU3_2_s1_27  &
   adams_id = 33  &
   i_marker_name = .FRS5_doe_8_LAUL.brassU3.spring_ref  &
   j_floating_marker_name = .FRS5_doe_8_LAUL.sideY1_27.FMARKER_4658  &
   ref_marker_name = .FRS5_doe_8_LAUL.sideY1_27.beamY_s1_27a  &
   x_force_function = ""  &
   y_force_function = ""  &
   z_force_function = ""
!
force attributes  &
   force_name = .FRS5_doe_8_LAUL.BU3_2_s1_27  &
   visibility = off
!
force create direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.BU3_2_s1_28  &
   adams_id = 34  &
   i_marker_name = .FRS5_doe_8_LAUL.brassU3.spring_ref  &
   j_floating_marker_name = .FRS5_doe_8_LAUL.sideY1_28.FMARKER_4659  &
   ref_marker_name = .FRS5_doe_8_LAUL.sideY1_28.beamY_s1_28a  &
   x_force_function = ""  &
   y_force_function = ""  &
   z_force_function = ""
!
force attributes  &
   force_name = .FRS5_doe_8_LAUL.BU3_2_s1_28  &
   visibility = off
!
force create direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.BU3_2_s1_29  &
   adams_id = 35  &
   i_marker_name = .FRS5_doe_8_LAUL.brassU3.spring_ref  &
   j_floating_marker_name = .FRS5_doe_8_LAUL.sideY1_29.FMARKER_4660  &
   ref_marker_name = .FRS5_doe_8_LAUL.sideY1_29.beamY_s1_29a  &
   x_force_function = ""  &
   y_force_function = ""  &
   z_force_function = ""
!
force attributes  &
   force_name = .FRS5_doe_8_LAUL.BU3_2_s1_29  &
   visibility = off
!
force create direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.BU3_2_s1_30  &
   adams_id = 36  &
   i_marker_name = .FRS5_doe_8_LAUL.brassU3.spring_ref  &
   j_floating_marker_name = .FRS5_doe_8_LAUL.sideY1_30.FMARKER_4661  &
   ref_marker_name = .FRS5_doe_8_LAUL.sideY1_30.beamY_s1_30a  &
   x_force_function = ""  &
   y_force_function = ""  &
   z_force_function = ""
!
force attributes  &
   force_name = .FRS5_doe_8_LAUL.BU3_2_s1_30  &
   visibility = off
!
force create direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.BU3_2_s1_31  &
   adams_id = 37  &
   i_marker_name = .FRS5_doe_8_LAUL.brassU3.spring_ref  &
   j_floating_marker_name = .FRS5_doe_8_LAUL.sideY1_31.FMARKER_4662  &
   ref_marker_name = .FRS5_doe_8_LAUL.sideY1_31.beamY_s1_31a  &
   x_force_function = ""  &
   y_force_function = ""  &
   z_force_function = ""
!
force attributes  &
   force_name = .FRS5_doe_8_LAUL.BU3_2_s1_31  &
   visibility = off
!
force create direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.tongueU4  &
   adams_id = 4  &
   i_marker_name = .FRS5_doe_8_LAUL.linkU4.tongue  &
   j_floating_marker_name = .FRS5_doe_8_LAUL.brassU4.FMARKER_31  &
   ref_marker_name = .FRS5_doe_8_LAUL.linkU4.tongue  &
   x_force_function = ""  &
   y_force_function = ""  &
   z_force_function = ""
!
force attributes  &
   force_name = .FRS5_doe_8_LAUL.tongueU4  &
   visibility = off  &
   size_of_icons = 10.0
!
force create direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.tongueU3  &
   adams_id = 5  &
   i_marker_name = .FRS5_doe_8_LAUL.linkU3.tongue  &
   j_floating_marker_name = .FRS5_doe_8_LAUL.brassU3.FMARKER_32  &
   ref_marker_name = .FRS5_doe_8_LAUL.linkU3.tongue  &
   x_force_function = ""  &
   y_force_function = ""  &
   z_force_function = ""
!
force attributes  &
   force_name = .FRS5_doe_8_LAUL.tongueU3  &
   visibility = off  &
   size_of_icons = 10.0
!
force create direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.tongueU2  &
   adams_id = 6  &
   i_marker_name = .FRS5_doe_8_LAUL.linkU2.tongue  &
   j_floating_marker_name = .FRS5_doe_8_LAUL.brassU2.FMARKER_33  &
   ref_marker_name = .FRS5_doe_8_LAUL.linkU2.tongue  &
   x_force_function = ""  &
   y_force_function = ""  &
   z_force_function = ""
!
force attributes  &
   force_name = .FRS5_doe_8_LAUL.tongueU2  &
   visibility = off  &
   size_of_icons = 10.0
!
force create direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.tongueU1  &
   adams_id = 7  &
   i_marker_name = .FRS5_doe_8_LAUL.linkU1.tongue  &
   j_floating_marker_name = .FRS5_doe_8_LAUL.brassU1.FMARKER_34  &
   ref_marker_name = .FRS5_doe_8_LAUL.linkU1.tongue  &
   x_force_function = ""  &
   y_force_function = ""  &
   z_force_function = ""
!
force attributes  &
   force_name = .FRS5_doe_8_LAUL.tongueU1  &
   visibility = off  &
   size_of_icons = 10.0
!
force create direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.popU1f  &
   adams_id = 8  &
   i_marker_name = .FRS5_doe_8_LAUL.brassU1.fc  &
   j_floating_marker_name = .FRS5_doe_8_LAUL.linkU1.FMARKER_35  &
   ref_marker_name = .FRS5_doe_8_LAUL.linkU1.fwd_center  &
   x_force_function = ""  &
   y_force_function = ""  &
   z_force_function = ""
!
force attributes  &
   force_name = .FRS5_doe_8_LAUL.popU1f  &
   visibility = off  &
   size_of_icons = 10.0
!
force create direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.popU2f  &
   adams_id = 9  &
   i_marker_name = .FRS5_doe_8_LAUL.brassU2.fc  &
   j_floating_marker_name = .FRS5_doe_8_LAUL.linkU2.FMARKER_36  &
   ref_marker_name = .FRS5_doe_8_LAUL.linkU2.fwd_center  &
   x_force_function = ""  &
   y_force_function = ""  &
   z_force_function = ""
!
force attributes  &
   force_name = .FRS5_doe_8_LAUL.popU2f  &
   visibility = off  &
   size_of_icons = 10.0
!
force create direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.popU3f  &
   adams_id = 10  &
   i_marker_name = .FRS5_doe_8_LAUL.brassU3.fc  &
   j_floating_marker_name = .FRS5_doe_8_LAUL.linkU3.FMARKER_37  &
   ref_marker_name = .FRS5_doe_8_LAUL.linkU3.fwd_center  &
   x_force_function = ""  &
   y_force_function = ""  &
   z_force_function = ""
!
force attributes  &
   force_name = .FRS5_doe_8_LAUL.popU3f  &
   visibility = off  &
   size_of_icons = 10.0
!
force create direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.popU4f  &
   adams_id = 11  &
   i_marker_name = .FRS5_doe_8_LAUL.brassU4.fc  &
   j_floating_marker_name = .FRS5_doe_8_LAUL.linkU4.FMARKER_38  &
   ref_marker_name = .FRS5_doe_8_LAUL.linkU4.fwd_center  &
   x_force_function = ""  &
   y_force_function = ""  &
   z_force_function = ""
!
force attributes  &
   force_name = .FRS5_doe_8_LAUL.popU4f  &
   visibility = off  &
   size_of_icons = 10.0
!
force create direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.popU4a  &
   adams_id = 12  &
   i_marker_name = .FRS5_doe_8_LAUL.brassU4.ac  &
   j_floating_marker_name = .FRS5_doe_8_LAUL.linkU4.FMARKER_39  &
   ref_marker_name = .FRS5_doe_8_LAUL.linkU4.aft_center  &
   x_force_function = ""  &
   y_force_function = ""  &
   z_force_function = ""
!
force attributes  &
   force_name = .FRS5_doe_8_LAUL.popU4a  &
   visibility = off  &
   size_of_icons = 10.0
!
force create direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.popU3a  &
   adams_id = 13  &
   i_marker_name = .FRS5_doe_8_LAUL.brassU3.ac  &
   j_floating_marker_name = .FRS5_doe_8_LAUL.linkU3.FMARKER_40  &
   ref_marker_name = .FRS5_doe_8_LAUL.linkU3.aft_center  &
   x_force_function = ""  &
   y_force_function = ""  &
   z_force_function = ""
!
force attributes  &
   force_name = .FRS5_doe_8_LAUL.popU3a  &
   visibility = off  &
   size_of_icons = 10.0
!
force create direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.popU2a  &
   adams_id = 14  &
   i_marker_name = .FRS5_doe_8_LAUL.brassU2.ac  &
   j_floating_marker_name = .FRS5_doe_8_LAUL.linkU2.FMARKER_41  &
   ref_marker_name = .FRS5_doe_8_LAUL.linkU2.aft_center  &
   x_force_function = ""  &
   y_force_function = ""  &
   z_force_function = ""
!
force attributes  &
   force_name = .FRS5_doe_8_LAUL.popU2a  &
   visibility = off  &
   size_of_icons = 10.0
!
force create direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.popU1a  &
   adams_id = 15  &
   i_marker_name = .FRS5_doe_8_LAUL.brassU1.ac  &
   j_floating_marker_name = .FRS5_doe_8_LAUL.linkU1.FMARKER_42  &
   ref_marker_name = .FRS5_doe_8_LAUL.linkU1.aft_center  &
   x_force_function = ""  &
   y_force_function = ""  &
   z_force_function = ""
!
force attributes  &
   force_name = .FRS5_doe_8_LAUL.popU1a  &
   visibility = off  &
   size_of_icons = 10.0
!
force create direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.popU3t  &
   adams_id = 16  &
   i_marker_name = .FRS5_doe_8_LAUL.brassU4.tc  &
   j_floating_marker_name = .FRS5_doe_8_LAUL.linkU3.FMARKER_43  &
   ref_marker_name = .FRS5_doe_8_LAUL.linkU3.trailing_center  &
   x_force_function = ""  &
   y_force_function = ""  &
   z_force_function = ""
!
force attributes  &
   force_name = .FRS5_doe_8_LAUL.popU3t  &
   visibility = off  &
   size_of_icons = 10.0
!
force create direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.popU2t  &
   adams_id = 17  &
   i_marker_name = .FRS5_doe_8_LAUL.brassU3.tc  &
   j_floating_marker_name = .FRS5_doe_8_LAUL.linkU2.FMARKER_44  &
   ref_marker_name = .FRS5_doe_8_LAUL.linkU2.trailing_center  &
   x_force_function = ""  &
   y_force_function = ""  &
   z_force_function = ""
!
force attributes  &
   force_name = .FRS5_doe_8_LAUL.popU2t  &
   visibility = off  &
   size_of_icons = 10.0
!
force create direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.popU1t  &
   adams_id = 18  &
   i_marker_name = .FRS5_doe_8_LAUL.brassU2.tc  &
   j_floating_marker_name = .FRS5_doe_8_LAUL.linkU1.FMARKER_45  &
   ref_marker_name = .FRS5_doe_8_LAUL.linkU1.trailing_center  &
   x_force_function = ""  &
   y_force_function = ""  &
   z_force_function = ""
!
force attributes  &
   force_name = .FRS5_doe_8_LAUL.popU1t  &
   visibility = off  &
   size_of_icons = 10.0
!
force create direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.BU4_2_s1_26  &
   adams_id = 38  &
   i_marker_name = .FRS5_doe_8_LAUL.brassU4.spring_ref  &
   j_floating_marker_name = .FRS5_doe_8_LAUL.sideY1_26.FMARKER_4687  &
   ref_marker_name = .FRS5_doe_8_LAUL.sideY1_26.beamY_s1_26a  &
   x_force_function = ""  &
   y_force_function = ""  &
   z_force_function = ""
!
force attributes  &
   force_name = .FRS5_doe_8_LAUL.BU4_2_s1_26  &
   visibility = off
!
force create direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.BU4_2_s1_27  &
   adams_id = 39  &
   i_marker_name = .FRS5_doe_8_LAUL.brassU4.spring_ref  &
   j_floating_marker_name = .FRS5_doe_8_LAUL.sideY1_27.FMARKER_4688  &
   ref_marker_name = .FRS5_doe_8_LAUL.sideY1_27.beamY_s1_27a  &
   x_force_function = ""  &
   y_force_function = ""  &
   z_force_function = ""
!
force attributes  &
   force_name = .FRS5_doe_8_LAUL.BU4_2_s1_27  &
   visibility = off
!
force create direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.BU4_2_s1_28  &
   adams_id = 40  &
   i_marker_name = .FRS5_doe_8_LAUL.brassU4.spring_ref  &
   j_floating_marker_name = .FRS5_doe_8_LAUL.sideY1_28.FMARKER_4689  &
   ref_marker_name = .FRS5_doe_8_LAUL.sideY1_28.beamY_s1_28a  &
   x_force_function = ""  &
   y_force_function = ""  &
   z_force_function = ""
!
force attributes  &
   force_name = .FRS5_doe_8_LAUL.BU4_2_s1_28  &
   visibility = off
!
force create direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.BU4_2_s1_29  &
   adams_id = 41  &
   i_marker_name = .FRS5_doe_8_LAUL.brassU4.spring_ref  &
   j_floating_marker_name = .FRS5_doe_8_LAUL.sideY1_29.FMARKER_4690  &
   ref_marker_name = .FRS5_doe_8_LAUL.sideY1_29.beamY_s1_29a  &
   x_force_function = ""  &
   y_force_function = ""  &
   z_force_function = ""
!
force attributes  &
   force_name = .FRS5_doe_8_LAUL.BU4_2_s1_29  &
   visibility = off
!
force create direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.BU4_2_s1_30  &
   adams_id = 42  &
   i_marker_name = .FRS5_doe_8_LAUL.brassU4.spring_ref  &
   j_floating_marker_name = .FRS5_doe_8_LAUL.sideY1_30.FMARKER_4691  &
   ref_marker_name = .FRS5_doe_8_LAUL.sideY1_30.beamY_s1_30a  &
   x_force_function = ""  &
   y_force_function = ""  &
   z_force_function = ""
!
force attributes  &
   force_name = .FRS5_doe_8_LAUL.BU4_2_s1_30  &
   visibility = off
!
force create direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.BU4_2_s1_31  &
   adams_id = 43  &
   i_marker_name = .FRS5_doe_8_LAUL.brassU4.spring_ref  &
   j_floating_marker_name = .FRS5_doe_8_LAUL.sideY1_31.FMARKER_4692  &
   ref_marker_name = .FRS5_doe_8_LAUL.sideY1_31.beamY_s1_31a  &
   x_force_function = ""  &
   y_force_function = ""  &
   z_force_function = ""
!
force attributes  &
   force_name = .FRS5_doe_8_LAUL.BU4_2_s1_31  &
   visibility = off
!
force create direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.feed_dragU1  &
   adams_id = 67  &
   i_marker_name = .FRS5_doe_8_LAUL.linkU1.trailing_center  &
   j_floating_marker_name = .FRS5_doe_8_LAUL.ground.FMARKER_1296  &
   ref_marker_name = .FRS5_doe_8_LAUL.linkU1.trailing_center  &
   x_force_function = ""  &
   y_force_function = ""  &
   z_force_function = ""
!
force attributes  &
   force_name = .FRS5_doe_8_LAUL.feed_dragU1  &
   visibility = off
!
force create direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.feed_dragU2  &
   adams_id = 68  &
   i_marker_name = .FRS5_doe_8_LAUL.linkU2.trailing_center  &
   j_floating_marker_name = .FRS5_doe_8_LAUL.ground.FMARKER_1299  &
   ref_marker_name = .FRS5_doe_8_LAUL.linkU2.trailing_center  &
   x_force_function = ""  &
   y_force_function = ""  &
   z_force_function = ""
!
force attributes  &
   force_name = .FRS5_doe_8_LAUL.feed_dragU2  &
   visibility = off
!
force create direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.feed_dragU3  &
   adams_id = 69  &
   i_marker_name = .FRS5_doe_8_LAUL.linkU3.trailing_center  &
   j_floating_marker_name = .FRS5_doe_8_LAUL.ground.FMARKER_1302  &
   ref_marker_name = .FRS5_doe_8_LAUL.linkU3.trailing_center  &
   x_force_function = ""  &
   y_force_function = ""  &
   z_force_function = ""
!
force attributes  &
   force_name = .FRS5_doe_8_LAUL.feed_dragU3  &
   visibility = off
!
force create direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.feed_dragL2  &
   adams_id = 132  &
   i_marker_name = .FRS5_doe_8_LAUL.linkL2.trailing_center  &
   j_floating_marker_name = .FRS5_doe_8_LAUL.ground.FMARKER_3770  &
   ref_marker_name = .FRS5_doe_8_LAUL.ground.origin  &
   x_force_function = ""  &
   y_force_function = ""  &
   z_force_function = ""
!
force create direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.feed_dragL3  &
   adams_id = 133  &
   i_marker_name = .FRS5_doe_8_LAUL.linkL3.trailing_center  &
   j_floating_marker_name = .FRS5_doe_8_LAUL.ground.FMARKER_3771  &
   ref_marker_name = .FRS5_doe_8_LAUL.ground.origin  &
   x_force_function = ""  &
   y_force_function = ""  &
   z_force_function = ""
!
force create direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.feed_dragL4  &
   adams_id = 134  &
   i_marker_name = .FRS5_doe_8_LAUL.linkL4.trailing_center  &
   j_floating_marker_name = .FRS5_doe_8_LAUL.ground.FMARKER_3772  &
   ref_marker_name = .FRS5_doe_8_LAUL.ground.origin  &
   x_force_function = ""  &
   y_force_function = ""  &
   z_force_function = ""
!
force create direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.feed_dragL5  &
   adams_id = 135  &
   i_marker_name = .FRS5_doe_8_LAUL.linkL5.trailing_center  &
   j_floating_marker_name = .FRS5_doe_8_LAUL.ground.FMARKER_3773  &
   ref_marker_name = .FRS5_doe_8_LAUL.ground.origin  &
   x_force_function = ""  &
   y_force_function = ""  &
   z_force_function = ""
!
force create direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.tongueL2  &
   adams_id = 136  &
   i_marker_name = .FRS5_doe_8_LAUL.linkL2.tongue  &
   j_floating_marker_name = .FRS5_doe_8_LAUL.brassL2.FMARKER_3774  &
   ref_marker_name = .FRS5_doe_8_LAUL.brassL2.channel_ref  &
   x_force_function = ""  &
   y_force_function = ""  &
   z_force_function = ""
!
force create direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.tongueL3  &
   adams_id = 137  &
   i_marker_name = .FRS5_doe_8_LAUL.linkL3.tongue  &
   j_floating_marker_name = .FRS5_doe_8_LAUL.brassL3.FMARKER_3775  &
   ref_marker_name = .FRS5_doe_8_LAUL.brassL3.channel_ref  &
   x_force_function = ""  &
   y_force_function = ""  &
   z_force_function = ""
!
force create direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.tongueL4  &
   adams_id = 138  &
   i_marker_name = .FRS5_doe_8_LAUL.linkL4.tongue  &
   j_floating_marker_name = .FRS5_doe_8_LAUL.brassL4.FMARKER_3776  &
   ref_marker_name = .FRS5_doe_8_LAUL.brassL4.channel_ref  &
   x_force_function = ""  &
   y_force_function = ""  &
   z_force_function = ""
!
force create direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.tongueL5  &
   adams_id = 139  &
   i_marker_name = .FRS5_doe_8_LAUL.linkL5.tongue  &
   j_floating_marker_name = .FRS5_doe_8_LAUL.brassL5.FMARKER_3777  &
   ref_marker_name = .FRS5_doe_8_LAUL.brassL5.channel_ref  &
   x_force_function = ""  &
   y_force_function = ""  &
   z_force_function = ""
!
force create direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.popL2f  &
   adams_id = 140  &
   i_marker_name = .FRS5_doe_8_LAUL.brassL2.fc  &
   j_floating_marker_name = .FRS5_doe_8_LAUL.linkL2.FMARKER_3778  &
   ref_marker_name = .FRS5_doe_8_LAUL.linkL2.fwd_center  &
   x_force_function = ""  &
   y_force_function = ""  &
   z_force_function = ""
!
force create direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.popL3f  &
   adams_id = 141  &
   i_marker_name = .FRS5_doe_8_LAUL.brassL3.fc  &
   j_floating_marker_name = .FRS5_doe_8_LAUL.linkL3.FMARKER_3779  &
   ref_marker_name = .FRS5_doe_8_LAUL.linkL3.fwd_center  &
   x_force_function = ""  &
   y_force_function = ""  &
   z_force_function = ""
!
force create direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.popL4f  &
   adams_id = 142  &
   i_marker_name = .FRS5_doe_8_LAUL.brassL4.fc  &
   j_floating_marker_name = .FRS5_doe_8_LAUL.linkL4.FMARKER_3780  &
   ref_marker_name = .FRS5_doe_8_LAUL.linkL4.fwd_center  &
   x_force_function = ""  &
   y_force_function = ""  &
   z_force_function = ""
!
force create direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.popL5f  &
   adams_id = 143  &
   i_marker_name = .FRS5_doe_8_LAUL.brassL5.fc  &
   j_floating_marker_name = .FRS5_doe_8_LAUL.linkL5.FMARKER_3781  &
   ref_marker_name = .FRS5_doe_8_LAUL.linkL5.fwd_center  &
   x_force_function = ""  &
   y_force_function = ""  &
   z_force_function = ""
!
force create direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.BU1_2_s1_25  &
   adams_id = 87  &
   i_marker_name = .FRS5_doe_8_LAUL.brassU1.spring_ref  &
   j_floating_marker_name = .FRS5_doe_8_LAUL.sideY1_25.FMARKER_4596  &
   ref_marker_name = .FRS5_doe_8_LAUL.sideY1_25.beamY_s1_25a  &
   x_force_function = ""  &
   y_force_function = ""  &
   z_force_function = ""
!
force attributes  &
   force_name = .FRS5_doe_8_LAUL.BU1_2_s1_25  &
   visibility = off
!
force create direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.BU2_2_s1_25  &
   adams_id = 88  &
   i_marker_name = .FRS5_doe_8_LAUL.brassU2.spring_ref  &
   j_floating_marker_name = .FRS5_doe_8_LAUL.sideY1_25.FMARKER_4626  &
   ref_marker_name = .FRS5_doe_8_LAUL.sideY1_25.beamY_s1_25a  &
   x_force_function = ""  &
   y_force_function = ""  &
   z_force_function = ""
!
force attributes  &
   force_name = .FRS5_doe_8_LAUL.BU2_2_s1_25  &
   visibility = off
!
force create direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.BU3_2_s1_25  &
   adams_id = 89  &
   i_marker_name = .FRS5_doe_8_LAUL.brassU3.spring_ref  &
   j_floating_marker_name = .FRS5_doe_8_LAUL.sideY1_25.FMARKER_4656  &
   ref_marker_name = .FRS5_doe_8_LAUL.sideY1_25.beamY_s1_25a  &
   x_force_function = ""  &
   y_force_function = ""  &
   z_force_function = ""
!
force attributes  &
   force_name = .FRS5_doe_8_LAUL.BU3_2_s1_25  &
   visibility = off
!
force create direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.BU4_2_s1_25  &
   adams_id = 90  &
   i_marker_name = .FRS5_doe_8_LAUL.brassU4.spring_ref  &
   j_floating_marker_name = .FRS5_doe_8_LAUL.sideY1_25.FMARKER_4686  &
   ref_marker_name = .FRS5_doe_8_LAUL.sideY1_25.beamY_s1_25a  &
   x_force_function = ""  &
   y_force_function = ""  &
   z_force_function = ""
!
force attributes  &
   force_name = .FRS5_doe_8_LAUL.BU4_2_s1_25  &
   visibility = off
!
force create direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.BU1_2_s1_24  &
   adams_id = 91  &
   i_marker_name = .FRS5_doe_8_LAUL.brassU1.spring_ref  &
   j_floating_marker_name = .FRS5_doe_8_LAUL.sideY1_24.FMARKER_4595  &
   ref_marker_name = .FRS5_doe_8_LAUL.sideY1_24.beamY_s1_24a  &
   x_force_function = ""  &
   y_force_function = ""  &
   z_force_function = ""
!
force attributes  &
   force_name = .FRS5_doe_8_LAUL.BU1_2_s1_24  &
   visibility = off
!
force create direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.BU2_2_s1_24  &
   adams_id = 92  &
   i_marker_name = .FRS5_doe_8_LAUL.brassU2.spring_ref  &
   j_floating_marker_name = .FRS5_doe_8_LAUL.sideY1_24.FMARKER_4625  &
   ref_marker_name = .FRS5_doe_8_LAUL.sideY1_24.beamY_s1_24a  &
   x_force_function = ""  &
   y_force_function = ""  &
   z_force_function = ""
!
force attributes  &
   force_name = .FRS5_doe_8_LAUL.BU2_2_s1_24  &
   visibility = off
!
force create direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.BU3_2_s1_24  &
   adams_id = 93  &
   i_marker_name = .FRS5_doe_8_LAUL.brassU3.spring_ref  &
   j_floating_marker_name = .FRS5_doe_8_LAUL.sideY1_24.FMARKER_4655  &
   ref_marker_name = .FRS5_doe_8_LAUL.sideY1_24.beamY_s1_24a  &
   x_force_function = ""  &
   y_force_function = ""  &
   z_force_function = ""
!
force attributes  &
   force_name = .FRS5_doe_8_LAUL.BU3_2_s1_24  &
   visibility = off
!
force create direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.BU4_2_s1_24  &
   adams_id = 94  &
   i_marker_name = .FRS5_doe_8_LAUL.brassU4.spring_ref  &
   j_floating_marker_name = .FRS5_doe_8_LAUL.sideY1_24.FMARKER_4685  &
   ref_marker_name = .FRS5_doe_8_LAUL.sideY1_24.beamY_s1_24a  &
   x_force_function = ""  &
   y_force_function = ""  &
   z_force_function = ""
!
force attributes  &
   force_name = .FRS5_doe_8_LAUL.BU4_2_s1_24  &
   visibility = off
!
force create direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.BU1_2_s1_23  &
   adams_id = 95  &
   i_marker_name = .FRS5_doe_8_LAUL.brassU1.spring_ref  &
   j_floating_marker_name = .FRS5_doe_8_LAUL.sideY1_23.FMARKER_4594  &
   ref_marker_name = .FRS5_doe_8_LAUL.sideY1_23.beamY_s1_23a  &
   x_force_function = ""  &
   y_force_function = ""  &
   z_force_function = ""
!
force attributes  &
   force_name = .FRS5_doe_8_LAUL.BU1_2_s1_23  &
   visibility = off
!
force create direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.BU2_2_s1_23  &
   adams_id = 96  &
   i_marker_name = .FRS5_doe_8_LAUL.brassU2.spring_ref  &
   j_floating_marker_name = .FRS5_doe_8_LAUL.sideY1_23.FMARKER_4624  &
   ref_marker_name = .FRS5_doe_8_LAUL.sideY1_23.beamY_s1_23a  &
   x_force_function = ""  &
   y_force_function = ""  &
   z_force_function = ""
!
force attributes  &
   force_name = .FRS5_doe_8_LAUL.BU2_2_s1_23  &
   visibility = off
!
force create direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.BU3_2_s1_23  &
   adams_id = 97  &
   i_marker_name = .FRS5_doe_8_LAUL.brassU3.spring_ref  &
   j_floating_marker_name = .FRS5_doe_8_LAUL.sideY1_23.FMARKER_4654  &
   ref_marker_name = .FRS5_doe_8_LAUL.sideY1_23.beamY_s1_23a  &
   x_force_function = ""  &
   y_force_function = ""  &
   z_force_function = ""
!
force attributes  &
   force_name = .FRS5_doe_8_LAUL.BU3_2_s1_23  &
   visibility = off
!
force create direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.BU4_2_s1_23  &
   adams_id = 98  &
   i_marker_name = .FRS5_doe_8_LAUL.brassU4.spring_ref  &
   j_floating_marker_name = .FRS5_doe_8_LAUL.sideY1_23.FMARKER_4684  &
   ref_marker_name = .FRS5_doe_8_LAUL.sideY1_23.beamY_s1_23a  &
   x_force_function = ""  &
   y_force_function = ""  &
   z_force_function = ""
!
force attributes  &
   force_name = .FRS5_doe_8_LAUL.BU4_2_s1_23  &
   visibility = off
!
force create direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.BU1_2_s1_22  &
   adams_id = 99  &
   i_marker_name = .FRS5_doe_8_LAUL.brassU1.spring_ref  &
   j_floating_marker_name = .FRS5_doe_8_LAUL.sideY1_22.FMARKER_4593  &
   ref_marker_name = .FRS5_doe_8_LAUL.sideY1_22.beamY_s1_22a  &
   x_force_function = ""  &
   y_force_function = ""  &
   z_force_function = ""
!
force attributes  &
   force_name = .FRS5_doe_8_LAUL.BU1_2_s1_22  &
   visibility = off
!
force create direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.BU2_2_s1_22  &
   adams_id = 100  &
   i_marker_name = .FRS5_doe_8_LAUL.brassU2.spring_ref  &
   j_floating_marker_name = .FRS5_doe_8_LAUL.sideY1_22.FMARKER_4623  &
   ref_marker_name = .FRS5_doe_8_LAUL.sideY1_22.beamY_s1_22a  &
   x_force_function = ""  &
   y_force_function = ""  &
   z_force_function = ""
!
force attributes  &
   force_name = .FRS5_doe_8_LAUL.BU2_2_s1_22  &
   visibility = off
!
force create direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.BU3_2_s1_22  &
   adams_id = 101  &
   i_marker_name = .FRS5_doe_8_LAUL.brassU3.spring_ref  &
   j_floating_marker_name = .FRS5_doe_8_LAUL.sideY1_22.FMARKER_4653  &
   ref_marker_name = .FRS5_doe_8_LAUL.sideY1_22.beamY_s1_22a  &
   x_force_function = ""  &
   y_force_function = ""  &
   z_force_function = ""
!
force attributes  &
   force_name = .FRS5_doe_8_LAUL.BU3_2_s1_22  &
   visibility = off
!
force create direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.BU4_2_s1_22  &
   adams_id = 102  &
   i_marker_name = .FRS5_doe_8_LAUL.brassU4.spring_ref  &
   j_floating_marker_name = .FRS5_doe_8_LAUL.sideY1_22.FMARKER_4683  &
   ref_marker_name = .FRS5_doe_8_LAUL.sideY1_22.beamY_s1_22a  &
   x_force_function = ""  &
   y_force_function = ""  &
   z_force_function = ""
!
force attributes  &
   force_name = .FRS5_doe_8_LAUL.BU4_2_s1_22  &
   visibility = off
!
force create direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.BU1_2_s1_21  &
   adams_id = 103  &
   i_marker_name = .FRS5_doe_8_LAUL.brassU1.spring_ref  &
   j_floating_marker_name = .FRS5_doe_8_LAUL.sideY1_21.FMARKER_4592  &
   ref_marker_name = .FRS5_doe_8_LAUL.sideY1_21.beamY_s1_21a  &
   x_force_function = ""  &
   y_force_function = ""  &
   z_force_function = ""
!
force attributes  &
   force_name = .FRS5_doe_8_LAUL.BU1_2_s1_21  &
   visibility = off
!
force create direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.BU2_2_s1_21  &
   adams_id = 104  &
   i_marker_name = .FRS5_doe_8_LAUL.brassU2.spring_ref  &
   j_floating_marker_name = .FRS5_doe_8_LAUL.sideY1_21.FMARKER_4622  &
   ref_marker_name = .FRS5_doe_8_LAUL.sideY1_21.beamY_s1_21a  &
   x_force_function = ""  &
   y_force_function = ""  &
   z_force_function = ""
!
force attributes  &
   force_name = .FRS5_doe_8_LAUL.BU2_2_s1_21  &
   visibility = off
!
force create direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.BU3_2_s1_21  &
   adams_id = 105  &
   i_marker_name = .FRS5_doe_8_LAUL.brassU3.spring_ref  &
   j_floating_marker_name = .FRS5_doe_8_LAUL.sideY1_21.FMARKER_4652  &
   ref_marker_name = .FRS5_doe_8_LAUL.sideY1_21.beamY_s1_21a  &
   x_force_function = ""  &
   y_force_function = ""  &
   z_force_function = ""
!
force attributes  &
   force_name = .FRS5_doe_8_LAUL.BU3_2_s1_21  &
   visibility = off
!
force create direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.BU4_2_s1_21  &
   adams_id = 106  &
   i_marker_name = .FRS5_doe_8_LAUL.brassU4.spring_ref  &
   j_floating_marker_name = .FRS5_doe_8_LAUL.sideY1_21.FMARKER_4682  &
   ref_marker_name = .FRS5_doe_8_LAUL.sideY1_21.beamY_s1_21a  &
   x_force_function = ""  &
   y_force_function = ""  &
   z_force_function = ""
!
force attributes  &
   force_name = .FRS5_doe_8_LAUL.BU4_2_s1_21  &
   visibility = off
!
force create direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.BU1_2_s1_20  &
   adams_id = 107  &
   i_marker_name = .FRS5_doe_8_LAUL.brassU1.spring_ref  &
   j_floating_marker_name = .FRS5_doe_8_LAUL.sideY1_20.FMARKER_4591  &
   ref_marker_name = .FRS5_doe_8_LAUL.sideY1_20.beamY_s1_20a  &
   x_force_function = ""  &
   y_force_function = ""  &
   z_force_function = ""
!
force attributes  &
   force_name = .FRS5_doe_8_LAUL.BU1_2_s1_20  &
   visibility = off
!
force create direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.BU2_2_s1_20  &
   adams_id = 108  &
   i_marker_name = .FRS5_doe_8_LAUL.brassU2.spring_ref  &
   j_floating_marker_name = .FRS5_doe_8_LAUL.sideY1_20.FMARKER_4621  &
   ref_marker_name = .FRS5_doe_8_LAUL.sideY1_20.beamY_s1_20a  &
   x_force_function = ""  &
   y_force_function = ""  &
   z_force_function = ""
!
force attributes  &
   force_name = .FRS5_doe_8_LAUL.BU2_2_s1_20  &
   visibility = off
!
force create direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.BU3_2_s1_20  &
   adams_id = 109  &
   i_marker_name = .FRS5_doe_8_LAUL.brassU3.spring_ref  &
   j_floating_marker_name = .FRS5_doe_8_LAUL.sideY1_20.FMARKER_4651  &
   ref_marker_name = .FRS5_doe_8_LAUL.sideY1_20.beamY_s1_20a  &
   x_force_function = ""  &
   y_force_function = ""  &
   z_force_function = ""
!
force attributes  &
   force_name = .FRS5_doe_8_LAUL.BU3_2_s1_20  &
   visibility = off
!
force create direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.BU4_2_s1_20  &
   adams_id = 110  &
   i_marker_name = .FRS5_doe_8_LAUL.brassU4.spring_ref  &
   j_floating_marker_name = .FRS5_doe_8_LAUL.sideY1_20.FMARKER_4681  &
   ref_marker_name = .FRS5_doe_8_LAUL.sideY1_20.beamY_s1_20a  &
   x_force_function = ""  &
   y_force_function = ""  &
   z_force_function = ""
!
force attributes  &
   force_name = .FRS5_doe_8_LAUL.BU4_2_s1_20  &
   visibility = off
!
force create direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.popU5a  &
   adams_id = 114  &
   i_marker_name = .FRS5_doe_8_LAUL.brassU5.ac  &
   j_floating_marker_name = .FRS5_doe_8_LAUL.linkU5.FMARKER_39  &
   ref_marker_name = .FRS5_doe_8_LAUL.linkU5.aft_center  &
   x_force_function = ""  &
   y_force_function = ""  &
   z_force_function = ""
!
force attributes  &
   force_name = .FRS5_doe_8_LAUL.popU5a  &
   visibility = off  &
   size_of_icons = 10.0
!
force create direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.popU5f  &
   adams_id = 115  &
   i_marker_name = .FRS5_doe_8_LAUL.brassU5.fc  &
   j_floating_marker_name = .FRS5_doe_8_LAUL.linkU5.FMARKER_38  &
   ref_marker_name = .FRS5_doe_8_LAUL.linkU5.fwd_center  &
   x_force_function = ""  &
   y_force_function = ""  &
   z_force_function = ""
!
force attributes  &
   force_name = .FRS5_doe_8_LAUL.popU5f  &
   visibility = off  &
   size_of_icons = 10.0
!
force create direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.popU4t  &
   adams_id = 116  &
   i_marker_name = .FRS5_doe_8_LAUL.brassU5.tc  &
   j_floating_marker_name = .FRS5_doe_8_LAUL.linkU4.FMARKER_2461  &
   ref_marker_name = .FRS5_doe_8_LAUL.linkU4.trailing_center  &
   x_force_function = ""  &
   y_force_function = ""  &
   z_force_function = ""
!
force attributes  &
   force_name = .FRS5_doe_8_LAUL.popU4t  &
   visibility = off  &
   size_of_icons = 10.0
!
force create direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.tongueU5  &
   adams_id = 117  &
   i_marker_name = .FRS5_doe_8_LAUL.linkU5.tongue  &
   j_floating_marker_name = .FRS5_doe_8_LAUL.brassU5.FMARKER_31  &
   ref_marker_name = .FRS5_doe_8_LAUL.linkU5.tongue  &
   x_force_function = ""  &
   y_force_function = ""  &
   z_force_function = ""
!
force attributes  &
   force_name = .FRS5_doe_8_LAUL.tongueU5  &
   visibility = off  &
   size_of_icons = 10.0
!
force create direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.feed_dragU5  &
   adams_id = 118  &
   i_marker_name = .FRS5_doe_8_LAUL.linkU5.trailing_center  &
   j_floating_marker_name = .FRS5_doe_8_LAUL.ground.FMARKER_2456  &
   ref_marker_name = .FRS5_doe_8_LAUL.linkU5.trailing_center  &
   x_force_function = ""  &
   y_force_function = ""  &
   z_force_function = ""
!
force attributes  &
   force_name = .FRS5_doe_8_LAUL.feed_dragU5  &
   visibility = off
!
force create direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.BU5_2_s1_20  &
   adams_id = 119  &
   i_marker_name = .FRS5_doe_8_LAUL.brassU5.spring_ref  &
   j_floating_marker_name = .FRS5_doe_8_LAUL.sideY1_20.FMARKER_4711  &
   ref_marker_name = .FRS5_doe_8_LAUL.sideY1_20.beamY_s1_20a  &
   x_force_function = ""  &
   y_force_function = ""  &
   z_force_function = ""
!
force attributes  &
   force_name = .FRS5_doe_8_LAUL.BU5_2_s1_20  &
   visibility = off
!
force create direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.BU5_2_s1_21  &
   adams_id = 120  &
   i_marker_name = .FRS5_doe_8_LAUL.brassU5.spring_ref  &
   j_floating_marker_name = .FRS5_doe_8_LAUL.sideY1_21.FMARKER_4712  &
   ref_marker_name = .FRS5_doe_8_LAUL.sideY1_21.beamY_s1_21a  &
   x_force_function = ""  &
   y_force_function = ""  &
   z_force_function = ""
!
force attributes  &
   force_name = .FRS5_doe_8_LAUL.BU5_2_s1_21  &
   visibility = off
!
force create direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.BU5_2_s1_22  &
   adams_id = 121  &
   i_marker_name = .FRS5_doe_8_LAUL.brassU5.spring_ref  &
   j_floating_marker_name = .FRS5_doe_8_LAUL.sideY1_22.FMARKER_4713  &
   ref_marker_name = .FRS5_doe_8_LAUL.sideY1_22.beamY_s1_22a  &
   x_force_function = ""  &
   y_force_function = ""  &
   z_force_function = ""
!
force attributes  &
   force_name = .FRS5_doe_8_LAUL.BU5_2_s1_22  &
   visibility = off
!
force create direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.BU5_2_s1_23  &
   adams_id = 122  &
   i_marker_name = .FRS5_doe_8_LAUL.brassU5.spring_ref  &
   j_floating_marker_name = .FRS5_doe_8_LAUL.sideY1_23.FMARKER_4714  &
   ref_marker_name = .FRS5_doe_8_LAUL.sideY1_23.beamY_s1_23a  &
   x_force_function = ""  &
   y_force_function = ""  &
   z_force_function = ""
!
force attributes  &
   force_name = .FRS5_doe_8_LAUL.BU5_2_s1_23  &
   visibility = off
!
force create direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.BU5_2_s1_24  &
   adams_id = 123  &
   i_marker_name = .FRS5_doe_8_LAUL.brassU5.spring_ref  &
   j_floating_marker_name = .FRS5_doe_8_LAUL.sideY1_24.FMARKER_4715  &
   ref_marker_name = .FRS5_doe_8_LAUL.sideY1_24.beamY_s1_24a  &
   x_force_function = ""  &
   y_force_function = ""  &
   z_force_function = ""
!
force attributes  &
   force_name = .FRS5_doe_8_LAUL.BU5_2_s1_24  &
   visibility = off
!
force create direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.BU5_2_s1_25  &
   adams_id = 124  &
   i_marker_name = .FRS5_doe_8_LAUL.brassU5.spring_ref  &
   j_floating_marker_name = .FRS5_doe_8_LAUL.sideY1_25.FMARKER_4716  &
   ref_marker_name = .FRS5_doe_8_LAUL.sideY1_25.beamY_s1_25a  &
   x_force_function = ""  &
   y_force_function = ""  &
   z_force_function = ""
!
force attributes  &
   force_name = .FRS5_doe_8_LAUL.BU5_2_s1_25  &
   visibility = off
!
force create direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.BU5_2_s1_26  &
   adams_id = 125  &
   i_marker_name = .FRS5_doe_8_LAUL.brassU5.spring_ref  &
   j_floating_marker_name = .FRS5_doe_8_LAUL.sideY1_26.FMARKER_4717  &
   ref_marker_name = .FRS5_doe_8_LAUL.sideY1_26.beamY_s1_26a  &
   x_force_function = ""  &
   y_force_function = ""  &
   z_force_function = ""
!
force attributes  &
   force_name = .FRS5_doe_8_LAUL.BU5_2_s1_26  &
   visibility = off
!
force create direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.BU5_2_s1_27  &
   adams_id = 126  &
   i_marker_name = .FRS5_doe_8_LAUL.brassU5.spring_ref  &
   j_floating_marker_name = .FRS5_doe_8_LAUL.sideY1_27.FMARKER_4718  &
   ref_marker_name = .FRS5_doe_8_LAUL.sideY1_27.beamY_s1_27a  &
   x_force_function = ""  &
   y_force_function = ""  &
   z_force_function = ""
!
force attributes  &
   force_name = .FRS5_doe_8_LAUL.BU5_2_s1_27  &
   visibility = off
!
force create direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.BU5_2_s1_28  &
   adams_id = 127  &
   i_marker_name = .FRS5_doe_8_LAUL.brassU5.spring_ref  &
   j_floating_marker_name = .FRS5_doe_8_LAUL.sideY1_28.FMARKER_4719  &
   ref_marker_name = .FRS5_doe_8_LAUL.sideY1_28.beamY_s1_28a  &
   x_force_function = ""  &
   y_force_function = ""  &
   z_force_function = ""
!
force attributes  &
   force_name = .FRS5_doe_8_LAUL.BU5_2_s1_28  &
   visibility = off
!
force create direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.BU5_2_s1_29  &
   adams_id = 128  &
   i_marker_name = .FRS5_doe_8_LAUL.brassU5.spring_ref  &
   j_floating_marker_name = .FRS5_doe_8_LAUL.sideY1_29.FMARKER_4720  &
   ref_marker_name = .FRS5_doe_8_LAUL.sideY1_29.beamY_s1_29a  &
   x_force_function = ""  &
   y_force_function = ""  &
   z_force_function = ""
!
force attributes  &
   force_name = .FRS5_doe_8_LAUL.BU5_2_s1_29  &
   visibility = off
!
force create direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.BU5_2_s1_30  &
   adams_id = 129  &
   i_marker_name = .FRS5_doe_8_LAUL.brassU5.spring_ref  &
   j_floating_marker_name = .FRS5_doe_8_LAUL.sideY1_30.FMARKER_4721  &
   ref_marker_name = .FRS5_doe_8_LAUL.sideY1_30.beamY_s1_30a  &
   x_force_function = ""  &
   y_force_function = ""  &
   z_force_function = ""
!
force attributes  &
   force_name = .FRS5_doe_8_LAUL.BU5_2_s1_30  &
   visibility = off
!
force create direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.BU5_2_s1_31  &
   adams_id = 130  &
   i_marker_name = .FRS5_doe_8_LAUL.brassU5.spring_ref  &
   j_floating_marker_name = .FRS5_doe_8_LAUL.sideY1_31.FMARKER_4722  &
   ref_marker_name = .FRS5_doe_8_LAUL.sideY1_31.beamY_s1_31a  &
   x_force_function = ""  &
   y_force_function = ""  &
   z_force_function = ""
!
force attributes  &
   force_name = .FRS5_doe_8_LAUL.BU5_2_s1_31  &
   visibility = off
!
force create direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.popL2a  &
   adams_id = 144  &
   i_marker_name = .FRS5_doe_8_LAUL.brassL2.ac  &
   j_floating_marker_name = .FRS5_doe_8_LAUL.linkL2.FMARKER_3782  &
   ref_marker_name = .FRS5_doe_8_LAUL.linkL2.aft_center  &
   x_force_function = ""  &
   y_force_function = ""  &
   z_force_function = ""
!
force create direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.popL3a  &
   adams_id = 145  &
   i_marker_name = .FRS5_doe_8_LAUL.brassL3.ac  &
   j_floating_marker_name = .FRS5_doe_8_LAUL.linkL3.FMARKER_3783  &
   ref_marker_name = .FRS5_doe_8_LAUL.linkL3.aft_center  &
   x_force_function = ""  &
   y_force_function = ""  &
   z_force_function = ""
!
force create direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.popL4a  &
   adams_id = 146  &
   i_marker_name = .FRS5_doe_8_LAUL.brassL4.ac  &
   j_floating_marker_name = .FRS5_doe_8_LAUL.linkL4.FMARKER_3784  &
   ref_marker_name = .FRS5_doe_8_LAUL.linkL4.aft_center  &
   x_force_function = ""  &
   y_force_function = ""  &
   z_force_function = ""
!
force create direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.popL5a  &
   adams_id = 147  &
   i_marker_name = .FRS5_doe_8_LAUL.brassL5.ac  &
   j_floating_marker_name = .FRS5_doe_8_LAUL.linkL5.FMARKER_3785  &
   ref_marker_name = .FRS5_doe_8_LAUL.linkL5.aft_center  &
   x_force_function = ""  &
   y_force_function = ""  &
   z_force_function = ""
!
force create direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.popL3t  &
   adams_id = 148  &
   i_marker_name = .FRS5_doe_8_LAUL.brassL2.tc  &
   j_floating_marker_name = .FRS5_doe_8_LAUL.linkL3.FMARKER_3786  &
   ref_marker_name = .FRS5_doe_8_LAUL.linkL3.trailing_center  &
   x_force_function = ""  &
   y_force_function = ""  &
   z_force_function = ""
!
force create direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.popL4t  &
   adams_id = 149  &
   i_marker_name = .FRS5_doe_8_LAUL.brassL3.tc  &
   j_floating_marker_name = .FRS5_doe_8_LAUL.linkL4.FMARKER_3787  &
   ref_marker_name = .FRS5_doe_8_LAUL.linkL4.trailing_center  &
   x_force_function = ""  &
   y_force_function = ""  &
   z_force_function = ""
!
force create direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.popL5t  &
   adams_id = 150  &
   i_marker_name = .FRS5_doe_8_LAUL.brassL4.tc  &
   j_floating_marker_name = .FRS5_doe_8_LAUL.linkL5.FMARKER_3788  &
   ref_marker_name = .FRS5_doe_8_LAUL.linkL5.trailing_center  &
   x_force_function = ""  &
   y_force_function = ""  &
   z_force_function = ""
!
force create direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.BL2_2_s2_12  &
   adams_id = 151  &
   i_marker_name = .FRS5_doe_8_LAUL.brassL2.spring_ref  &
   j_floating_marker_name = .FRS5_doe_8_LAUL.sideY2_12.FMARKER_4633  &
   ref_marker_name = .FRS5_doe_8_LAUL.sideY2_12.beamY_s2_12a  &
   x_force_function = ""  &
   y_force_function = ""  &
   z_force_function = ""
!
force create direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.BL3_2_s2_12  &
   adams_id = 152  &
   i_marker_name = .FRS5_doe_8_LAUL.brassL3.spring_ref  &
   j_floating_marker_name = .FRS5_doe_8_LAUL.sideY2_12.FMARKER_4663  &
   ref_marker_name = .FRS5_doe_8_LAUL.sideY2_12.beamY_s2_12a  &
   x_force_function = ""  &
   y_force_function = ""  &
   z_force_function = ""
!
force create direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.BL4_2_s2_12  &
   adams_id = 153  &
   i_marker_name = .FRS5_doe_8_LAUL.brassL4.spring_ref  &
   j_floating_marker_name = .FRS5_doe_8_LAUL.sideY2_12.FMARKER_4693  &
   ref_marker_name = .FRS5_doe_8_LAUL.sideY2_12.beamY_s2_12a  &
   x_force_function = ""  &
   y_force_function = ""  &
   z_force_function = ""
!
force create direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.BL5_2_s2_12  &
   adams_id = 154  &
   i_marker_name = .FRS5_doe_8_LAUL.brassL5.spring_ref  &
   j_floating_marker_name = .FRS5_doe_8_LAUL.sideY2_12.FMARKER_4723  &
   ref_marker_name = .FRS5_doe_8_LAUL.sideY2_12.beamY_s2_12a  &
   x_force_function = ""  &
   y_force_function = ""  &
   z_force_function = ""
!
force create direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.BL2_2_s2_13  &
   adams_id = 155  &
   i_marker_name = .FRS5_doe_8_LAUL.brassL2.spring_ref  &
   j_floating_marker_name = .FRS5_doe_8_LAUL.sideY2_13.FMARKER_4634  &
   ref_marker_name = .FRS5_doe_8_LAUL.sideY2_13.beamY_s2_13a  &
   x_force_function = ""  &
   y_force_function = ""  &
   z_force_function = ""
!
force create direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.BL3_2_s2_13  &
   adams_id = 156  &
   i_marker_name = .FRS5_doe_8_LAUL.brassL3.spring_ref  &
   j_floating_marker_name = .FRS5_doe_8_LAUL.sideY2_13.FMARKER_4664  &
   ref_marker_name = .FRS5_doe_8_LAUL.sideY2_13.beamY_s2_13a  &
   x_force_function = ""  &
   y_force_function = ""  &
   z_force_function = ""
!
force create direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.BL4_2_s2_13  &
   adams_id = 157  &
   i_marker_name = .FRS5_doe_8_LAUL.brassL4.spring_ref  &
   j_floating_marker_name = .FRS5_doe_8_LAUL.sideY2_13.FMARKER_4694  &
   ref_marker_name = .FRS5_doe_8_LAUL.sideY2_13.beamY_s2_13a  &
   x_force_function = ""  &
   y_force_function = ""  &
   z_force_function = ""
!
force create direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.BL5_2_s2_13  &
   adams_id = 158  &
   i_marker_name = .FRS5_doe_8_LAUL.brassL5.spring_ref  &
   j_floating_marker_name = .FRS5_doe_8_LAUL.sideY2_13.FMARKER_4724  &
   ref_marker_name = .FRS5_doe_8_LAUL.sideY2_13.beamY_s2_13a  &
   x_force_function = ""  &
   y_force_function = ""  &
   z_force_function = ""
!
force create direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.BL2_2_s2_14  &
   adams_id = 159  &
   i_marker_name = .FRS5_doe_8_LAUL.brassL2.spring_ref  &
   j_floating_marker_name = .FRS5_doe_8_LAUL.sideY2_14.FMARKER_4635  &
   ref_marker_name = .FRS5_doe_8_LAUL.sideY2_14.beamY_s2_14a  &
   x_force_function = ""  &
   y_force_function = ""  &
   z_force_function = ""
!
force create direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.BL3_2_s2_14  &
   adams_id = 160  &
   i_marker_name = .FRS5_doe_8_LAUL.brassL3.spring_ref  &
   j_floating_marker_name = .FRS5_doe_8_LAUL.sideY2_14.FMARKER_4665  &
   ref_marker_name = .FRS5_doe_8_LAUL.sideY2_14.beamY_s2_14a  &
   x_force_function = ""  &
   y_force_function = ""  &
   z_force_function = ""
!
force create direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.BL4_2_s2_14  &
   adams_id = 161  &
   i_marker_name = .FRS5_doe_8_LAUL.brassL4.spring_ref  &
   j_floating_marker_name = .FRS5_doe_8_LAUL.sideY2_14.FMARKER_4695  &
   ref_marker_name = .FRS5_doe_8_LAUL.sideY2_14.beamY_s2_14a  &
   x_force_function = ""  &
   y_force_function = ""  &
   z_force_function = ""
!
force create direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.BL5_2_s2_14  &
   adams_id = 162  &
   i_marker_name = .FRS5_doe_8_LAUL.brassL5.spring_ref  &
   j_floating_marker_name = .FRS5_doe_8_LAUL.sideY2_14.FMARKER_4725  &
   ref_marker_name = .FRS5_doe_8_LAUL.sideY2_14.beamY_s2_14a  &
   x_force_function = ""  &
   y_force_function = ""  &
   z_force_function = ""
!
force create direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.BL2_2_s2_15  &
   adams_id = 163  &
   i_marker_name = .FRS5_doe_8_LAUL.brassL2.spring_ref  &
   j_floating_marker_name = .FRS5_doe_8_LAUL.sideY2_15.FMARKER_4636  &
   ref_marker_name = .FRS5_doe_8_LAUL.sideY2_15.beamY_s2_15a  &
   x_force_function = ""  &
   y_force_function = ""  &
   z_force_function = ""
!
force create direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.BL3_2_s2_15  &
   adams_id = 164  &
   i_marker_name = .FRS5_doe_8_LAUL.brassL3.spring_ref  &
   j_floating_marker_name = .FRS5_doe_8_LAUL.sideY2_15.FMARKER_4666  &
   ref_marker_name = .FRS5_doe_8_LAUL.sideY2_15.beamY_s2_15a  &
   x_force_function = ""  &
   y_force_function = ""  &
   z_force_function = ""
!
force create direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.BL4_2_s2_15  &
   adams_id = 165  &
   i_marker_name = .FRS5_doe_8_LAUL.brassL4.spring_ref  &
   j_floating_marker_name = .FRS5_doe_8_LAUL.sideY2_15.FMARKER_4696  &
   ref_marker_name = .FRS5_doe_8_LAUL.sideY2_15.beamY_s2_15a  &
   x_force_function = ""  &
   y_force_function = ""  &
   z_force_function = ""
!
force create direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.BL5_2_s2_15  &
   adams_id = 166  &
   i_marker_name = .FRS5_doe_8_LAUL.brassL5.spring_ref  &
   j_floating_marker_name = .FRS5_doe_8_LAUL.sideY2_15.FMARKER_4726  &
   ref_marker_name = .FRS5_doe_8_LAUL.sideY2_15.beamY_s2_15a  &
   x_force_function = ""  &
   y_force_function = ""  &
   z_force_function = ""
!
force create direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.BL2_2_s2_16  &
   adams_id = 167  &
   i_marker_name = .FRS5_doe_8_LAUL.brassL2.spring_ref  &
   j_floating_marker_name = .FRS5_doe_8_LAUL.sideY2_16.FMARKER_4637  &
   ref_marker_name = .FRS5_doe_8_LAUL.sideY2_16.beamY_s2_16a  &
   x_force_function = ""  &
   y_force_function = ""  &
   z_force_function = ""
!
force create direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.BL3_2_s2_16  &
   adams_id = 168  &
   i_marker_name = .FRS5_doe_8_LAUL.brassL3.spring_ref  &
   j_floating_marker_name = .FRS5_doe_8_LAUL.sideY2_16.FMARKER_4667  &
   ref_marker_name = .FRS5_doe_8_LAUL.sideY2_16.beamY_s2_16a  &
   x_force_function = ""  &
   y_force_function = ""  &
   z_force_function = ""
!
force create direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.BL4_2_s2_16  &
   adams_id = 169  &
   i_marker_name = .FRS5_doe_8_LAUL.brassL4.spring_ref  &
   j_floating_marker_name = .FRS5_doe_8_LAUL.sideY2_16.FMARKER_4697  &
   ref_marker_name = .FRS5_doe_8_LAUL.sideY2_16.beamY_s2_16a  &
   x_force_function = ""  &
   y_force_function = ""  &
   z_force_function = ""
!
force create direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.BL5_2_s2_16  &
   adams_id = 170  &
   i_marker_name = .FRS5_doe_8_LAUL.brassL5.spring_ref  &
   j_floating_marker_name = .FRS5_doe_8_LAUL.sideY2_16.FMARKER_4727  &
   ref_marker_name = .FRS5_doe_8_LAUL.sideY2_16.beamY_s2_16a  &
   x_force_function = ""  &
   y_force_function = ""  &
   z_force_function = ""
!
force create direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.BL2_2_s2_17  &
   adams_id = 171  &
   i_marker_name = .FRS5_doe_8_LAUL.brassL2.spring_ref  &
   j_floating_marker_name = .FRS5_doe_8_LAUL.sideY2_17.FMARKER_4638  &
   ref_marker_name = .FRS5_doe_8_LAUL.sideY2_17.beamY_s2_17a  &
   x_force_function = ""  &
   y_force_function = ""  &
   z_force_function = ""
!
force create direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.BL3_2_s2_17  &
   adams_id = 172  &
   i_marker_name = .FRS5_doe_8_LAUL.brassL3.spring_ref  &
   j_floating_marker_name = .FRS5_doe_8_LAUL.sideY2_17.FMARKER_4668  &
   ref_marker_name = .FRS5_doe_8_LAUL.sideY2_17.beamY_s2_17a  &
   x_force_function = ""  &
   y_force_function = ""  &
   z_force_function = ""
!
force create direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.BL4_2_s2_17  &
   adams_id = 173  &
   i_marker_name = .FRS5_doe_8_LAUL.brassL4.spring_ref  &
   j_floating_marker_name = .FRS5_doe_8_LAUL.sideY2_17.FMARKER_4698  &
   ref_marker_name = .FRS5_doe_8_LAUL.sideY2_17.beamY_s2_17a  &
   x_force_function = ""  &
   y_force_function = ""  &
   z_force_function = ""
!
force create direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.BL5_2_s2_17  &
   adams_id = 174  &
   i_marker_name = .FRS5_doe_8_LAUL.brassL5.spring_ref  &
   j_floating_marker_name = .FRS5_doe_8_LAUL.sideY2_17.FMARKER_4728  &
   ref_marker_name = .FRS5_doe_8_LAUL.sideY2_17.beamY_s2_17a  &
   x_force_function = ""  &
   y_force_function = ""  &
   z_force_function = ""
!
force create direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.BL2_2_s2_18  &
   adams_id = 175  &
   i_marker_name = .FRS5_doe_8_LAUL.brassL2.spring_ref  &
   j_floating_marker_name = .FRS5_doe_8_LAUL.sideY2_18.FMARKER_4639  &
   ref_marker_name = .FRS5_doe_8_LAUL.sideY2_18.beamY_s2_18a  &
   x_force_function = ""  &
   y_force_function = ""  &
   z_force_function = ""
!
force create direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.BL3_2_s2_18  &
   adams_id = 176  &
   i_marker_name = .FRS5_doe_8_LAUL.brassL3.spring_ref  &
   j_floating_marker_name = .FRS5_doe_8_LAUL.sideY2_18.FMARKER_4669  &
   ref_marker_name = .FRS5_doe_8_LAUL.sideY2_18.beamY_s2_18a  &
   x_force_function = ""  &
   y_force_function = ""  &
   z_force_function = ""
!
force create direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.BL4_2_s2_18  &
   adams_id = 177  &
   i_marker_name = .FRS5_doe_8_LAUL.brassL4.spring_ref  &
   j_floating_marker_name = .FRS5_doe_8_LAUL.sideY2_18.FMARKER_4699  &
   ref_marker_name = .FRS5_doe_8_LAUL.sideY2_18.beamY_s2_18a  &
   x_force_function = ""  &
   y_force_function = ""  &
   z_force_function = ""
!
force create direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.BL5_2_s2_18  &
   adams_id = 178  &
   i_marker_name = .FRS5_doe_8_LAUL.brassL5.spring_ref  &
   j_floating_marker_name = .FRS5_doe_8_LAUL.sideY2_18.FMARKER_4729  &
   ref_marker_name = .FRS5_doe_8_LAUL.sideY2_18.beamY_s2_18a  &
   x_force_function = ""  &
   y_force_function = ""  &
   z_force_function = ""
!
force create direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.BL2_2_s2_19  &
   adams_id = 179  &
   i_marker_name = .FRS5_doe_8_LAUL.brassL2.spring_ref  &
   j_floating_marker_name = .FRS5_doe_8_LAUL.sideY2_19.FMARKER_4640  &
   ref_marker_name = .FRS5_doe_8_LAUL.sideY2_19.beamY_s2_19a  &
   x_force_function = ""  &
   y_force_function = ""  &
   z_force_function = ""
!
force create direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.BL3_2_s2_19  &
   adams_id = 180  &
   i_marker_name = .FRS5_doe_8_LAUL.brassL3.spring_ref  &
   j_floating_marker_name = .FRS5_doe_8_LAUL.sideY2_19.FMARKER_4670  &
   ref_marker_name = .FRS5_doe_8_LAUL.sideY2_19.beamY_s2_19a  &
   x_force_function = ""  &
   y_force_function = ""  &
   z_force_function = ""
!
force create direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.BL4_2_s2_19  &
   adams_id = 181  &
   i_marker_name = .FRS5_doe_8_LAUL.brassL4.spring_ref  &
   j_floating_marker_name = .FRS5_doe_8_LAUL.sideY2_19.FMARKER_4700  &
   ref_marker_name = .FRS5_doe_8_LAUL.sideY2_19.beamY_s2_19a  &
   x_force_function = ""  &
   y_force_function = ""  &
   z_force_function = ""
!
force create direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.BL5_2_s2_19  &
   adams_id = 182  &
   i_marker_name = .FRS5_doe_8_LAUL.brassL5.spring_ref  &
   j_floating_marker_name = .FRS5_doe_8_LAUL.sideY2_19.FMARKER_4730  &
   ref_marker_name = .FRS5_doe_8_LAUL.sideY2_19.beamY_s2_19a  &
   x_force_function = ""  &
   y_force_function = ""  &
   z_force_function = ""
!
force create direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.BL2_2_s2_20  &
   adams_id = 183  &
   i_marker_name = .FRS5_doe_8_LAUL.brassL2.spring_ref  &
   j_floating_marker_name = .FRS5_doe_8_LAUL.sideY2_20.FMARKER_4641  &
   ref_marker_name = .FRS5_doe_8_LAUL.sideY2_20.beamY_s2_20a  &
   x_force_function = ""  &
   y_force_function = ""  &
   z_force_function = ""
!
force create direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.BL3_2_s2_20  &
   adams_id = 184  &
   i_marker_name = .FRS5_doe_8_LAUL.brassL3.spring_ref  &
   j_floating_marker_name = .FRS5_doe_8_LAUL.sideY2_20.FMARKER_4671  &
   ref_marker_name = .FRS5_doe_8_LAUL.sideY2_20.beamY_s2_20a  &
   x_force_function = ""  &
   y_force_function = ""  &
   z_force_function = ""
!
force create direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.BL4_2_s2_20  &
   adams_id = 185  &
   i_marker_name = .FRS5_doe_8_LAUL.brassL4.spring_ref  &
   j_floating_marker_name = .FRS5_doe_8_LAUL.sideY2_20.FMARKER_4701  &
   ref_marker_name = .FRS5_doe_8_LAUL.sideY2_20.beamY_s2_20a  &
   x_force_function = ""  &
   y_force_function = ""  &
   z_force_function = ""
!
force create direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.BL5_2_s2_20  &
   adams_id = 186  &
   i_marker_name = .FRS5_doe_8_LAUL.brassL5.spring_ref  &
   j_floating_marker_name = .FRS5_doe_8_LAUL.sideY2_20.FMARKER_4731  &
   ref_marker_name = .FRS5_doe_8_LAUL.sideY2_20.beamY_s2_20a  &
   x_force_function = ""  &
   y_force_function = ""  &
   z_force_function = ""
!
force create direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.BL2_2_s2_21  &
   adams_id = 187  &
   i_marker_name = .FRS5_doe_8_LAUL.brassL2.spring_ref  &
   j_floating_marker_name = .FRS5_doe_8_LAUL.sideY2_21.FMARKER_4642  &
   ref_marker_name = .FRS5_doe_8_LAUL.sideY2_21.beamY_s2_21a  &
   x_force_function = ""  &
   y_force_function = ""  &
   z_force_function = ""
!
force create direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.BL3_2_s2_21  &
   adams_id = 188  &
   i_marker_name = .FRS5_doe_8_LAUL.brassL3.spring_ref  &
   j_floating_marker_name = .FRS5_doe_8_LAUL.sideY2_21.FMARKER_4672  &
   ref_marker_name = .FRS5_doe_8_LAUL.sideY2_21.beamY_s2_21a  &
   x_force_function = ""  &
   y_force_function = ""  &
   z_force_function = ""
!
force create direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.BL4_2_s2_21  &
   adams_id = 189  &
   i_marker_name = .FRS5_doe_8_LAUL.brassL4.spring_ref  &
   j_floating_marker_name = .FRS5_doe_8_LAUL.sideY2_21.FMARKER_4702  &
   ref_marker_name = .FRS5_doe_8_LAUL.sideY2_21.beamY_s2_21a  &
   x_force_function = ""  &
   y_force_function = ""  &
   z_force_function = ""
!
force create direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.BL5_2_s2_21  &
   adams_id = 190  &
   i_marker_name = .FRS5_doe_8_LAUL.brassL5.spring_ref  &
   j_floating_marker_name = .FRS5_doe_8_LAUL.sideY2_21.FMARKER_4732  &
   ref_marker_name = .FRS5_doe_8_LAUL.sideY2_21.beamY_s2_21a  &
   x_force_function = ""  &
   y_force_function = ""  &
   z_force_function = ""
!
force create direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.BL2_2_s2_22  &
   adams_id = 191  &
   i_marker_name = .FRS5_doe_8_LAUL.brassL2.spring_ref  &
   j_floating_marker_name = .FRS5_doe_8_LAUL.sideY2_22.FMARKER_4643  &
   ref_marker_name = .FRS5_doe_8_LAUL.sideY2_22.beamY_s2_22a  &
   x_force_function = ""  &
   y_force_function = ""  &
   z_force_function = ""
!
force create direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.BL3_2_s2_22  &
   adams_id = 192  &
   i_marker_name = .FRS5_doe_8_LAUL.brassL3.spring_ref  &
   j_floating_marker_name = .FRS5_doe_8_LAUL.sideY2_22.FMARKER_4673  &
   ref_marker_name = .FRS5_doe_8_LAUL.sideY2_22.beamY_s2_22a  &
   x_force_function = ""  &
   y_force_function = ""  &
   z_force_function = ""
!
force create direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.BL4_2_s2_22  &
   adams_id = 193  &
   i_marker_name = .FRS5_doe_8_LAUL.brassL4.spring_ref  &
   j_floating_marker_name = .FRS5_doe_8_LAUL.sideY2_22.FMARKER_4703  &
   ref_marker_name = .FRS5_doe_8_LAUL.sideY2_22.beamY_s2_22a  &
   x_force_function = ""  &
   y_force_function = ""  &
   z_force_function = ""
!
force create direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.BL5_2_s2_22  &
   adams_id = 194  &
   i_marker_name = .FRS5_doe_8_LAUL.brassL5.spring_ref  &
   j_floating_marker_name = .FRS5_doe_8_LAUL.sideY2_22.FMARKER_4733  &
   ref_marker_name = .FRS5_doe_8_LAUL.sideY2_22.beamY_s2_22a  &
   x_force_function = ""  &
   y_force_function = ""  &
   z_force_function = ""
!
force create direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.BL2_2_s2_23  &
   adams_id = 195  &
   i_marker_name = .FRS5_doe_8_LAUL.brassL2.spring_ref  &
   j_floating_marker_name = .FRS5_doe_8_LAUL.sideY2_23.FMARKER_4644  &
   ref_marker_name = .FRS5_doe_8_LAUL.sideY2_23.beamY_s2_23a  &
   x_force_function = ""  &
   y_force_function = ""  &
   z_force_function = ""
!
force create direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.BL3_2_s2_23  &
   adams_id = 196  &
   i_marker_name = .FRS5_doe_8_LAUL.brassL3.spring_ref  &
   j_floating_marker_name = .FRS5_doe_8_LAUL.sideY2_23.FMARKER_4674  &
   ref_marker_name = .FRS5_doe_8_LAUL.sideY2_23.beamY_s2_23a  &
   x_force_function = ""  &
   y_force_function = ""  &
   z_force_function = ""
!
force create direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.BL4_2_s2_23  &
   adams_id = 197  &
   i_marker_name = .FRS5_doe_8_LAUL.brassL4.spring_ref  &
   j_floating_marker_name = .FRS5_doe_8_LAUL.sideY2_23.FMARKER_4704  &
   ref_marker_name = .FRS5_doe_8_LAUL.sideY2_23.beamY_s2_23a  &
   x_force_function = ""  &
   y_force_function = ""  &
   z_force_function = ""
!
force create direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.BL5_2_s2_23  &
   adams_id = 198  &
   i_marker_name = .FRS5_doe_8_LAUL.brassL5.spring_ref  &
   j_floating_marker_name = .FRS5_doe_8_LAUL.sideY2_23.FMARKER_4734  &
   ref_marker_name = .FRS5_doe_8_LAUL.sideY2_23.beamY_s2_23a  &
   x_force_function = ""  &
   y_force_function = ""  &
   z_force_function = ""
!
force create direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.BL2_2_s2_24  &
   adams_id = 199  &
   i_marker_name = .FRS5_doe_8_LAUL.brassL2.spring_ref  &
   j_floating_marker_name = .FRS5_doe_8_LAUL.sideY2_24.FMARKER_4645  &
   ref_marker_name = .FRS5_doe_8_LAUL.sideY2_24.beamY_s2_24a  &
   x_force_function = ""  &
   y_force_function = ""  &
   z_force_function = ""
!
force create direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.BL3_2_s2_24  &
   adams_id = 200  &
   i_marker_name = .FRS5_doe_8_LAUL.brassL3.spring_ref  &
   j_floating_marker_name = .FRS5_doe_8_LAUL.sideY2_24.FMARKER_4675  &
   ref_marker_name = .FRS5_doe_8_LAUL.sideY2_24.beamY_s2_24a  &
   x_force_function = ""  &
   y_force_function = ""  &
   z_force_function = ""
!
force create direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.BL4_2_s2_24  &
   adams_id = 201  &
   i_marker_name = .FRS5_doe_8_LAUL.brassL4.spring_ref  &
   j_floating_marker_name = .FRS5_doe_8_LAUL.sideY2_24.FMARKER_4705  &
   ref_marker_name = .FRS5_doe_8_LAUL.sideY2_24.beamY_s2_24a  &
   x_force_function = ""  &
   y_force_function = ""  &
   z_force_function = ""
!
force create direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.BL5_2_s2_24  &
   adams_id = 202  &
   i_marker_name = .FRS5_doe_8_LAUL.brassL5.spring_ref  &
   j_floating_marker_name = .FRS5_doe_8_LAUL.sideY2_24.FMARKER_4735  &
   ref_marker_name = .FRS5_doe_8_LAUL.sideY2_24.beamY_s2_24a  &
   x_force_function = ""  &
   y_force_function = ""  &
   z_force_function = ""
!
force create direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.BL2_2_s2_25  &
   adams_id = 203  &
   i_marker_name = .FRS5_doe_8_LAUL.brassL2.spring_ref  &
   j_floating_marker_name = .FRS5_doe_8_LAUL.sideY2_25.FMARKER_4646  &
   ref_marker_name = .FRS5_doe_8_LAUL.sideY2_25.beamY_s2_25a  &
   x_force_function = ""  &
   y_force_function = ""  &
   z_force_function = ""
!
force create direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.BL3_2_s2_25  &
   adams_id = 204  &
   i_marker_name = .FRS5_doe_8_LAUL.brassL3.spring_ref  &
   j_floating_marker_name = .FRS5_doe_8_LAUL.sideY2_25.FMARKER_4676  &
   ref_marker_name = .FRS5_doe_8_LAUL.sideY2_25.beamY_s2_25a  &
   x_force_function = ""  &
   y_force_function = ""  &
   z_force_function = ""
!
force create direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.BL4_2_s2_25  &
   adams_id = 205  &
   i_marker_name = .FRS5_doe_8_LAUL.brassL4.spring_ref  &
   j_floating_marker_name = .FRS5_doe_8_LAUL.sideY2_25.FMARKER_4706  &
   ref_marker_name = .FRS5_doe_8_LAUL.sideY2_25.beamY_s2_25a  &
   x_force_function = ""  &
   y_force_function = ""  &
   z_force_function = ""
!
force create direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.BL5_2_s2_25  &
   adams_id = 206  &
   i_marker_name = .FRS5_doe_8_LAUL.brassL5.spring_ref  &
   j_floating_marker_name = .FRS5_doe_8_LAUL.sideY2_25.FMARKER_4736  &
   ref_marker_name = .FRS5_doe_8_LAUL.sideY2_25.beamY_s2_25a  &
   x_force_function = ""  &
   y_force_function = ""  &
   z_force_function = ""
!
force create direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.BL2_2_s2_26  &
   adams_id = 207  &
   i_marker_name = .FRS5_doe_8_LAUL.brassL2.spring_ref  &
   j_floating_marker_name = .FRS5_doe_8_LAUL.sideY2_26.FMARKER_4647  &
   ref_marker_name = .FRS5_doe_8_LAUL.sideY2_26.beamY_s2_26a  &
   x_force_function = ""  &
   y_force_function = ""  &
   z_force_function = ""
!
force create direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.BL3_2_s2_26  &
   adams_id = 208  &
   i_marker_name = .FRS5_doe_8_LAUL.brassL3.spring_ref  &
   j_floating_marker_name = .FRS5_doe_8_LAUL.sideY2_26.FMARKER_4677  &
   ref_marker_name = .FRS5_doe_8_LAUL.sideY2_26.beamY_s2_26a  &
   x_force_function = ""  &
   y_force_function = ""  &
   z_force_function = ""
!
force create direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.BL4_2_s2_26  &
   adams_id = 209  &
   i_marker_name = .FRS5_doe_8_LAUL.brassL4.spring_ref  &
   j_floating_marker_name = .FRS5_doe_8_LAUL.sideY2_26.FMARKER_4707  &
   ref_marker_name = .FRS5_doe_8_LAUL.sideY2_26.beamY_s2_26a  &
   x_force_function = ""  &
   y_force_function = ""  &
   z_force_function = ""
!
force create direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.BL5_2_s2_26  &
   adams_id = 210  &
   i_marker_name = .FRS5_doe_8_LAUL.brassL5.spring_ref  &
   j_floating_marker_name = .FRS5_doe_8_LAUL.sideY2_26.FMARKER_4737  &
   ref_marker_name = .FRS5_doe_8_LAUL.sideY2_26.beamY_s2_26a  &
   x_force_function = ""  &
   y_force_function = ""  &
   z_force_function = ""
!
force create direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.BL2_2_s2_27  &
   adams_id = 211  &
   i_marker_name = .FRS5_doe_8_LAUL.brassL2.spring_ref  &
   j_floating_marker_name = .FRS5_doe_8_LAUL.sideY2_27.FMARKER_4648  &
   ref_marker_name = .FRS5_doe_8_LAUL.sideY2_27.beamY_s2_27a  &
   x_force_function = ""  &
   y_force_function = ""  &
   z_force_function = ""
!
force create direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.BL3_2_s2_27  &
   adams_id = 212  &
   i_marker_name = .FRS5_doe_8_LAUL.brassL3.spring_ref  &
   j_floating_marker_name = .FRS5_doe_8_LAUL.sideY2_27.FMARKER_4678  &
   ref_marker_name = .FRS5_doe_8_LAUL.sideY2_27.beamY_s2_27a  &
   x_force_function = ""  &
   y_force_function = ""  &
   z_force_function = ""
!
force create direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.BL4_2_s2_27  &
   adams_id = 213  &
   i_marker_name = .FRS5_doe_8_LAUL.brassL4.spring_ref  &
   j_floating_marker_name = .FRS5_doe_8_LAUL.sideY2_27.FMARKER_4708  &
   ref_marker_name = .FRS5_doe_8_LAUL.sideY2_27.beamY_s2_27a  &
   x_force_function = ""  &
   y_force_function = ""  &
   z_force_function = ""
!
force create direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.BL5_2_s2_27  &
   adams_id = 214  &
   i_marker_name = .FRS5_doe_8_LAUL.brassL5.spring_ref  &
   j_floating_marker_name = .FRS5_doe_8_LAUL.sideY2_27.FMARKER_4738  &
   ref_marker_name = .FRS5_doe_8_LAUL.sideY2_27.beamY_s2_27a  &
   x_force_function = ""  &
   y_force_function = ""  &
   z_force_function = ""
!
force create direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.BL2_2_s2_28  &
   adams_id = 215  &
   i_marker_name = .FRS5_doe_8_LAUL.brassL2.spring_ref  &
   j_floating_marker_name = .FRS5_doe_8_LAUL.sideY2_28.FMARKER_4649  &
   ref_marker_name = .FRS5_doe_8_LAUL.sideY2_28.beamY_s2_28a  &
   x_force_function = ""  &
   y_force_function = ""  &
   z_force_function = ""
!
force create direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.BL3_2_s2_28  &
   adams_id = 216  &
   i_marker_name = .FRS5_doe_8_LAUL.brassL3.spring_ref  &
   j_floating_marker_name = .FRS5_doe_8_LAUL.sideY2_28.FMARKER_4679  &
   ref_marker_name = .FRS5_doe_8_LAUL.sideY2_28.beamY_s2_28a  &
   x_force_function = ""  &
   y_force_function = ""  &
   z_force_function = ""
!
force create direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.BL4_2_s2_28  &
   adams_id = 217  &
   i_marker_name = .FRS5_doe_8_LAUL.brassL4.spring_ref  &
   j_floating_marker_name = .FRS5_doe_8_LAUL.sideY2_28.FMARKER_4709  &
   ref_marker_name = .FRS5_doe_8_LAUL.sideY2_28.beamY_s2_28a  &
   x_force_function = ""  &
   y_force_function = ""  &
   z_force_function = ""
!
force create direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.BL5_2_s2_28  &
   adams_id = 218  &
   i_marker_name = .FRS5_doe_8_LAUL.brassL5.spring_ref  &
   j_floating_marker_name = .FRS5_doe_8_LAUL.sideY2_28.FMARKER_4739  &
   ref_marker_name = .FRS5_doe_8_LAUL.sideY2_28.beamY_s2_28a  &
   x_force_function = ""  &
   y_force_function = ""  &
   z_force_function = ""
!
force create direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.BL2_2_s2_29  &
   adams_id = 219  &
   i_marker_name = .FRS5_doe_8_LAUL.brassL2.spring_ref  &
   j_floating_marker_name = .FRS5_doe_8_LAUL.sideY2_29.FMARKER_4650  &
   ref_marker_name = .FRS5_doe_8_LAUL.sideY2_29.beamY_s2_29a  &
   x_force_function = ""  &
   y_force_function = ""  &
   z_force_function = ""
!
force create direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.BL3_2_s2_29  &
   adams_id = 220  &
   i_marker_name = .FRS5_doe_8_LAUL.brassL3.spring_ref  &
   j_floating_marker_name = .FRS5_doe_8_LAUL.sideY2_29.FMARKER_4680  &
   ref_marker_name = .FRS5_doe_8_LAUL.sideY2_29.beamY_s2_29a  &
   x_force_function = ""  &
   y_force_function = ""  &
   z_force_function = ""
!
force create direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.BL4_2_s2_29  &
   adams_id = 221  &
   i_marker_name = .FRS5_doe_8_LAUL.brassL4.spring_ref  &
   j_floating_marker_name = .FRS5_doe_8_LAUL.sideY2_29.FMARKER_4710  &
   ref_marker_name = .FRS5_doe_8_LAUL.sideY2_29.beamY_s2_29a  &
   x_force_function = ""  &
   y_force_function = ""  &
   z_force_function = ""
!
force create direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.BL5_2_s2_29  &
   adams_id = 222  &
   i_marker_name = .FRS5_doe_8_LAUL.brassL5.spring_ref  &
   j_floating_marker_name = .FRS5_doe_8_LAUL.sideY2_29.FMARKER_4740  &
   ref_marker_name = .FRS5_doe_8_LAUL.sideY2_29.beamY_s2_29a  &
   x_force_function = ""  &
   y_force_function = ""  &
   z_force_function = ""
!
force create direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.BL1_2_s2_12  &
   adams_id = 227  &
   i_marker_name = .FRS5_doe_8_LAUL.brassL1.spring_ref  &
   j_floating_marker_name = .FRS5_doe_8_LAUL.sideY2_12.FMARKER_4603  &
   ref_marker_name = .FRS5_doe_8_LAUL.sideY2_12.beamY_s2_12a  &
   x_force_function = ""  &
   y_force_function = ""  &
   z_force_function = ""
!
force create direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.BL1_2_s2_13  &
   adams_id = 228  &
   i_marker_name = .FRS5_doe_8_LAUL.brassL1.spring_ref  &
   j_floating_marker_name = .FRS5_doe_8_LAUL.sideY2_13.FMARKER_4604  &
   ref_marker_name = .FRS5_doe_8_LAUL.sideY2_13.beamY_s2_13a  &
   x_force_function = ""  &
   y_force_function = ""  &
   z_force_function = ""
!
force create direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.BL1_2_s2_14  &
   adams_id = 229  &
   i_marker_name = .FRS5_doe_8_LAUL.brassL1.spring_ref  &
   j_floating_marker_name = .FRS5_doe_8_LAUL.sideY2_14.FMARKER_4605  &
   ref_marker_name = .FRS5_doe_8_LAUL.sideY2_14.beamY_s2_14a  &
   x_force_function = ""  &
   y_force_function = ""  &
   z_force_function = ""
!
force create direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.BL1_2_s2_15  &
   adams_id = 230  &
   i_marker_name = .FRS5_doe_8_LAUL.brassL1.spring_ref  &
   j_floating_marker_name = .FRS5_doe_8_LAUL.sideY2_15.FMARKER_4606  &
   ref_marker_name = .FRS5_doe_8_LAUL.sideY2_15.beamY_s2_15a  &
   x_force_function = ""  &
   y_force_function = ""  &
   z_force_function = ""
!
force create direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.BL1_2_s2_16  &
   adams_id = 231  &
   i_marker_name = .FRS5_doe_8_LAUL.brassL1.spring_ref  &
   j_floating_marker_name = .FRS5_doe_8_LAUL.sideY2_16.FMARKER_4607  &
   ref_marker_name = .FRS5_doe_8_LAUL.sideY2_16.beamY_s2_16a  &
   x_force_function = ""  &
   y_force_function = ""  &
   z_force_function = ""
!
force create direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.BL1_2_s2_17  &
   adams_id = 232  &
   i_marker_name = .FRS5_doe_8_LAUL.brassL1.spring_ref  &
   j_floating_marker_name = .FRS5_doe_8_LAUL.sideY2_17.FMARKER_4608  &
   ref_marker_name = .FRS5_doe_8_LAUL.sideY2_17.beamY_s2_17a  &
   x_force_function = ""  &
   y_force_function = ""  &
   z_force_function = ""
!
force create direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.BL1_2_s2_18  &
   adams_id = 233  &
   i_marker_name = .FRS5_doe_8_LAUL.brassL1.spring_ref  &
   j_floating_marker_name = .FRS5_doe_8_LAUL.sideY2_18.FMARKER_4609  &
   ref_marker_name = .FRS5_doe_8_LAUL.sideY2_18.beamY_s2_18a  &
   x_force_function = ""  &
   y_force_function = ""  &
   z_force_function = ""
!
force create direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.BL1_2_s2_19  &
   adams_id = 234  &
   i_marker_name = .FRS5_doe_8_LAUL.brassL1.spring_ref  &
   j_floating_marker_name = .FRS5_doe_8_LAUL.sideY2_19.FMARKER_4610  &
   ref_marker_name = .FRS5_doe_8_LAUL.sideY2_19.beamY_s2_19a  &
   x_force_function = ""  &
   y_force_function = ""  &
   z_force_function = ""
!
force create direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.BL1_2_s2_20  &
   adams_id = 235  &
   i_marker_name = .FRS5_doe_8_LAUL.brassL1.spring_ref  &
   j_floating_marker_name = .FRS5_doe_8_LAUL.sideY2_20.FMARKER_4611  &
   ref_marker_name = .FRS5_doe_8_LAUL.sideY2_20.beamY_s2_20a  &
   x_force_function = ""  &
   y_force_function = ""  &
   z_force_function = ""
!
force create direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.BL1_2_s2_21  &
   adams_id = 236  &
   i_marker_name = .FRS5_doe_8_LAUL.brassL1.spring_ref  &
   j_floating_marker_name = .FRS5_doe_8_LAUL.sideY2_21.FMARKER_4612  &
   ref_marker_name = .FRS5_doe_8_LAUL.sideY2_21.beamY_s2_21a  &
   x_force_function = ""  &
   y_force_function = ""  &
   z_force_function = ""
!
force create direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.BL1_2_s2_22  &
   adams_id = 237  &
   i_marker_name = .FRS5_doe_8_LAUL.brassL1.spring_ref  &
   j_floating_marker_name = .FRS5_doe_8_LAUL.sideY2_22.FMARKER_4613  &
   ref_marker_name = .FRS5_doe_8_LAUL.sideY2_22.beamY_s2_22a  &
   x_force_function = ""  &
   y_force_function = ""  &
   z_force_function = ""
!
force create direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.BL1_2_s2_23  &
   adams_id = 238  &
   i_marker_name = .FRS5_doe_8_LAUL.brassL1.spring_ref  &
   j_floating_marker_name = .FRS5_doe_8_LAUL.sideY2_23.FMARKER_4614  &
   ref_marker_name = .FRS5_doe_8_LAUL.sideY2_23.beamY_s2_23a  &
   x_force_function = ""  &
   y_force_function = ""  &
   z_force_function = ""
!
force create direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.BL1_2_s2_24  &
   adams_id = 239  &
   i_marker_name = .FRS5_doe_8_LAUL.brassL1.spring_ref  &
   j_floating_marker_name = .FRS5_doe_8_LAUL.sideY2_24.FMARKER_4615  &
   ref_marker_name = .FRS5_doe_8_LAUL.sideY2_24.beamY_s2_24a  &
   x_force_function = ""  &
   y_force_function = ""  &
   z_force_function = ""
!
force create direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.BL1_2_s2_25  &
   adams_id = 240  &
   i_marker_name = .FRS5_doe_8_LAUL.brassL1.spring_ref  &
   j_floating_marker_name = .FRS5_doe_8_LAUL.sideY2_25.FMARKER_4616  &
   ref_marker_name = .FRS5_doe_8_LAUL.sideY2_25.beamY_s2_25a  &
   x_force_function = ""  &
   y_force_function = ""  &
   z_force_function = ""
!
force create direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.BL1_2_s2_26  &
   adams_id = 241  &
   i_marker_name = .FRS5_doe_8_LAUL.brassL1.spring_ref  &
   j_floating_marker_name = .FRS5_doe_8_LAUL.sideY2_26.FMARKER_4617  &
   ref_marker_name = .FRS5_doe_8_LAUL.sideY2_26.beamY_s2_26a  &
   x_force_function = ""  &
   y_force_function = ""  &
   z_force_function = ""
!
force create direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.BL1_2_s2_27  &
   adams_id = 242  &
   i_marker_name = .FRS5_doe_8_LAUL.brassL1.spring_ref  &
   j_floating_marker_name = .FRS5_doe_8_LAUL.sideY2_27.FMARKER_4618  &
   ref_marker_name = .FRS5_doe_8_LAUL.sideY2_27.beamY_s2_27a  &
   x_force_function = ""  &
   y_force_function = ""  &
   z_force_function = ""
!
force create direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.BL1_2_s2_28  &
   adams_id = 243  &
   i_marker_name = .FRS5_doe_8_LAUL.brassL1.spring_ref  &
   j_floating_marker_name = .FRS5_doe_8_LAUL.sideY2_28.FMARKER_4619  &
   ref_marker_name = .FRS5_doe_8_LAUL.sideY2_28.beamY_s2_28a  &
   x_force_function = ""  &
   y_force_function = ""  &
   z_force_function = ""
!
force create direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.BL1_2_s2_29  &
   adams_id = 244  &
   i_marker_name = .FRS5_doe_8_LAUL.brassL1.spring_ref  &
   j_floating_marker_name = .FRS5_doe_8_LAUL.sideY2_29.FMARKER_4620  &
   ref_marker_name = .FRS5_doe_8_LAUL.sideY2_29.beamY_s2_29a  &
   x_force_function = ""  &
   y_force_function = ""  &
   z_force_function = ""
!
force create direct torque_vector  &
   torque_vector_name = .FRS5_doe_8_LAUL.BL1damper  &
   adams_id = 1  &
   i_marker_name = .FRS5_doe_8_LAUL.brassL1.tc  &
   j_floating_marker_name = .FRS5_doe_8_LAUL.ground.FMARKER_4067  &
   ref_marker_name = .FRS5_doe_8_LAUL.ground.origin  &
   x_torque_function = ""  &
   y_torque_function = ""  &
   z_torque_function = ""
!
force create direct torque_vector  &
   torque_vector_name = .FRS5_doe_8_LAUL.BU1damper  &
   adams_id = 2  &
   i_marker_name = .FRS5_doe_8_LAUL.brassU1.tc  &
   j_floating_marker_name = .FRS5_doe_8_LAUL.ground.FMARKER_4068  &
   ref_marker_name = .FRS5_doe_8_LAUL.ground.origin  &
   x_torque_function = ""  &
   y_torque_function = ""  &
   z_torque_function = ""
!
force create direct torque_vector  &
   torque_vector_name = .FRS5_doe_8_LAUL.BL2damper  &
   adams_id = 3  &
   i_marker_name = .FRS5_doe_8_LAUL.brassL2.tc  &
   j_floating_marker_name = .FRS5_doe_8_LAUL.ground.FMARKER_4069  &
   ref_marker_name = .FRS5_doe_8_LAUL.ground.origin  &
   x_torque_function = ""  &
   y_torque_function = ""  &
   z_torque_function = ""
!
force create direct torque_vector  &
   torque_vector_name = .FRS5_doe_8_LAUL.BU2damper  &
   adams_id = 4  &
   i_marker_name = .FRS5_doe_8_LAUL.brassU2.tc  &
   j_floating_marker_name = .FRS5_doe_8_LAUL.ground.FMARKER_4070  &
   ref_marker_name = .FRS5_doe_8_LAUL.ground.origin  &
   x_torque_function = ""  &
   y_torque_function = ""  &
   z_torque_function = ""
!
force create direct torque_vector  &
   torque_vector_name = .FRS5_doe_8_LAUL.BL3damper  &
   adams_id = 5  &
   i_marker_name = .FRS5_doe_8_LAUL.brassL3.tc  &
   j_floating_marker_name = .FRS5_doe_8_LAUL.ground.FMARKER_4071  &
   ref_marker_name = .FRS5_doe_8_LAUL.ground.origin  &
   x_torque_function = ""  &
   y_torque_function = ""  &
   z_torque_function = ""
!
force create direct torque_vector  &
   torque_vector_name = .FRS5_doe_8_LAUL.BU3damper  &
   adams_id = 6  &
   i_marker_name = .FRS5_doe_8_LAUL.brassU3.tc  &
   j_floating_marker_name = .FRS5_doe_8_LAUL.ground.FMARKER_4072  &
   ref_marker_name = .FRS5_doe_8_LAUL.ground.origin  &
   x_torque_function = ""  &
   y_torque_function = ""  &
   z_torque_function = ""
!
force create direct torque_vector  &
   torque_vector_name = .FRS5_doe_8_LAUL.BL4damper  &
   adams_id = 7  &
   i_marker_name = .FRS5_doe_8_LAUL.brassL4.tc  &
   j_floating_marker_name = .FRS5_doe_8_LAUL.ground.FMARKER_4073  &
   ref_marker_name = .FRS5_doe_8_LAUL.ground.origin  &
   x_torque_function = ""  &
   y_torque_function = ""  &
   z_torque_function = ""
!
force create direct torque_vector  &
   torque_vector_name = .FRS5_doe_8_LAUL.BU4damper  &
   adams_id = 8  &
   i_marker_name = .FRS5_doe_8_LAUL.brassU4.tc  &
   j_floating_marker_name = .FRS5_doe_8_LAUL.ground.FMARKER_4074  &
   ref_marker_name = .FRS5_doe_8_LAUL.ground.origin  &
   x_torque_function = ""  &
   y_torque_function = ""  &
   z_torque_function = ""
!
force create direct torque_vector  &
   torque_vector_name = .FRS5_doe_8_LAUL.BL5damper  &
   adams_id = 9  &
   i_marker_name = .FRS5_doe_8_LAUL.brassL5.tc  &
   j_floating_marker_name = .FRS5_doe_8_LAUL.ground.FMARKER_4075  &
   ref_marker_name = .FRS5_doe_8_LAUL.ground.origin  &
   x_torque_function = ""  &
   y_torque_function = ""  &
   z_torque_function = ""
!
force create direct torque_vector  &
   torque_vector_name = .FRS5_doe_8_LAUL.BU5damper  &
   adams_id = 10  &
   i_marker_name = .FRS5_doe_8_LAUL.brassU5.tc  &
   j_floating_marker_name = .FRS5_doe_8_LAUL.ground.FMARKER_4076  &
   ref_marker_name = .FRS5_doe_8_LAUL.ground.origin  &
   x_torque_function = ""  &
   y_torque_function = ""  &
   z_torque_function = ""
!
!---------------------------------- Sensors -----------------------------------!
!
!
executive_control create sensor  &
   sensor_name = .FRS5_doe_8_LAUL.UprStopHit  &
   adams_id = 1000  &
   compare = ge  &
   value = 5.0  &
   error = 0.001  &
   codgen = off  &
   halt = off  &
   print = off  &
   restart = off  &
   return = on  &
   yydump = off  &
   function = ""  &
   evaluate = ""
!
executive_control create sensor  &
   sensor_name = .FRS5_doe_8_LAUL.LwrStopHit  &
   adams_id = 2001  &
   compare = ge  &
   value = 5.0  &
   error = 0.001  &
   codgen = off  &
   halt = off  &
   print = off  &
   restart = off  &
   return = on  &
   yydump = off  &
   function = ""  &
   evaluate = ""
!
!---------------------------------- Requests ----------------------------------!
!
!
output_control create request  &
   request_name = .FRS5_doe_8_LAUL.Spring1_Stress_2_9  &
   adams_id = 7  &
   component_names = "S1_beam2", "S1_beam3", "S1_beam4", "S1_beam5",  &
                     "S1_beam6", "S1_beam7", "S1_beam8", "S1_beam9"  &
   component_labels = "(PSI)", "(PSI)", "(PSI)", "(PSI)", "(PSI)", "(PSI)",  &
                      "(PSI)", "(PSI)"  &
   results_name = "Spring1_Stress"  &
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
   request_name = .FRS5_doe_8_LAUL.ferguson_data  &
   adams_id = 6  &
   comment = "cam:camW:_:_:rotor:rotorW"  &
   f2 = ""  &
   f3 = ""  &
   f5 = ""  &
   f6 = ""  &
   f7 = ""
!
output_control create request  &
   request_name = .FRS5_doe_8_LAUL.Spring1_Stress_10_17  &
   adams_id = 8  &
   component_names = "S1_beam10", "S1_beam11", "S1_beam12", "S1_beam13",  &
                     "S1_beam14", "S1_beam15", "S1_beam16", "S1_beam17"  &
   component_labels = "(PSI)", "(PSI)", "(PSI)", "(PSI)", "(PSI)", "(PSI)",  &
                      "(PSI)", "(PSI)"  &
   results_name = "Spring1_Stress"  &
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
   request_name = .FRS5_doe_8_LAUL.Spring1_Stress_18_25  &
   adams_id = 9  &
   component_names = "S1_beam18", "S1_beam19", "S1_beam20", "S1_beam21",  &
                     "S1_beam22", "S1_beam23", "S1_beam24", "S1_beam25"  &
   component_labels = "(PSI)", "(PSI)", "(PSI)", "(PSI)", "(PSI)", "(PSI)",  &
                      "(PSI)", "(PSI)"  &
   results_name = "Spring1_Stress"  &
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
   request_name = .FRS5_doe_8_LAUL.Spring1_Stress_26_31  &
   adams_id = 10  &
   comment = Spring1_Stress  &
   component_names = "S1_beam26", "S1_beam27", "S1_beam28", "S1_beam29",  &
                     "S1_beam30", "S1_beam31"  &
   component_labels = "(PSI)", "(PSI)", "(PSI)", "(PSI)", "(PSI)", "(PSI)"  &
   results_name = "Spring1_Stress"  &
   f1 = ""  &
   f2 = ""  &
   f3 = ""  &
   f4 = ""  &
   f5 = ""  &
   f6 = ""
!
output_control create request  &
   request_name = .FRS5_doe_8_LAUL.Spring2_Stress_2_9  &
   adams_id = 11  &
   comment = Spring2_Stress  &
   component_names = "S2_beam2", "S2_beam3", "S2_beam4", "S2_beam5",  &
                     "S2_beam6", "S2_beam7", "S2_beam8", "S2_beam9"  &
   component_labels = "(PSI)", "(PSI)", "(PSI)", "(PSI)", "(PSI)", "(PSI)",  &
                      "(PSI)", "(PSI)"  &
   results_name = "Spring2_Stress"  &
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
   request_name = .FRS5_doe_8_LAUL.Spring2_Stress_10_17  &
   adams_id = 12  &
   comment = Spring2_Stress  &
   component_names = "S2_beam10", "S2_beam11", "S2_beam12", "S2_beam13",  &
                     "S2_beam14", "S2_beam15", "S2_beam16", "S2_beam17"  &
   component_labels = "(PSI)", "(PSI)", "(PSI)", "(PSI)", "(PSI)", "(PSI)",  &
                      "(PSI)", "(PSI)"  &
   results_name = "Spring2_Stress"  &
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
   request_name = .FRS5_doe_8_LAUL.Spring2_Stress_18_25  &
   adams_id = 13  &
   comment = Spring2_Stress  &
   component_names = "S2_beam18", "S2_beam19", "S2_beam20", "S2_beam21",  &
                     "S2_beam22", "S2_beam23", "S2_beam24", "S2_beam25"  &
   component_labels = "(PSI)", "(PSI)", "(PSI)", "(PSI)", "(PSI)", "(PSI)",  &
                      "(PSI)", "(PSI)"  &
   results_name = "Spring2_Stress"  &
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
   request_name = .FRS5_doe_8_LAUL.Spring2_Stress_26_31  &
   adams_id = 14  &
   comment = Spring2_Stress  &
   component_names = "S2_beam26", "S2_beam27", "S2_beam28", "S2_beam29"  &
   component_labels = "(PSI)", "(PSI)", "(PSI)", "(PSI)"  &
   results_name = "Spring2_Stress"  &
   f1 = ""  &
   f2 = ""  &
   f3 = ""  &
   f4 = ""
!
output_control create request  &
   request_name = .FRS5_doe_8_LAUL.Clutches  &
   adams_id = 15  &
   comment = ClutchTorques  &
   component_names = "UpperMetric", "UpperFeed", "LowerFeed"  &
   component_labels = "(N-m)", "(in-lbf)", "(in-lbf)"  &
   results_name = "ClutchTorques"  &
   f1 = ""  &
   f2 = ""  &
   f3 = ""
!
output_control create request  &
   request_name = .FRS5_doe_8_LAUL.pocket  &
   adams_id = 17  &
   component_names = "B1distance", "B2distance", "B3distance", "B4distance",  &
                     "rotor"  &
   component_labels = "mm", "mm", "mm", "mm", "deg"  &
   results_name = "pocket"  &
   f1 = ""  &
   f2 = ""  &
   f3 = ""  &
   f4 = ""  &
   f5 = ""
!
output_control create request  &
   request_name = .FRS5_doe_8_LAUL.testing  &
   adams_id = 18  &
   f2 = ""  &
   f3 = ""  &
   f6 = ""  &
   f7 = ""
!
output_control create request  &
   request_name = .FRS5_doe_8_LAUL.dwell_time  &
   adams_id = 19  &
   comment = dwell_time  &
   component_names = "_", "round_1", "round_2", "round_3", "_", "round_4",  &
                     "round_5", "_"  &
   component_labels = "(sec)", "(sec)", "(sec)", "(sec)", "(sec)", "(sec)",  &
                      "(sec)", "(sec)"  &
   results_name = "dwell_time"  &
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
   request_name = .FRS5_doe_8_LAUL.round_control  &
   adams_id = 20  &
   comment = round_control  &
   component_names = "_", "round_1", "round_2", "round_3", "_", "round_4",  &
                     "round_5", "_"  &
   component_labels = "(sec)", "(sec)", "(sec)", "(sec)", "(sec)", "(sec)",  &
                      "(sec)", "(sec)"  &
   results_name = "round_control"  &
   f1 = ""  &
   f2 = ""  &
   f3 = ""  &
   f4 = ""  &
   f5 = ""  &
   f6 = ""  &
   f7 = ""  &
   f8 = ""
!
!------------------------- Groups Owned By This Model -------------------------!
!
!
group create  &
   group_name = .FRS5_doe_8_LAUL.rounds
!
group create  &
   group_name = .FRS5_doe_8_LAUL.R4
!
group create  &
   group_name = .FRS5_doe_8_LAUL.R5
!
group create  &
   group_name = .FRS5_doe_8_LAUL.allrounds
!
group create  &
   group_name = .FRS5_doe_8_LAUL.springparts
!
!----------------------------- Simulation Scripts -----------------------------!
!
!
simulation script create  &
   sim_script_name = .FRS5_doe_8_LAUL.Last_Sim  &
   commands =   &
              "simulation single_run transient type=auto_select end_time=5.0 number_of_steps=50 model_name=.ULmerge2 initial_static=no"
!
simulation script create  &
   sim_script_name = .FRS5_doe_8_LAUL.upper  &
   solver_commands = "accg/kgrav=0",  &
                     "ENVIRONMENT/NAME=MDI_ADAMS_CONTACT_OUT, VALUE=off",  &
                     "equil/stab=10, err=10, imb=10, tlim=2, alim=2D, maxit=1000",  &
                     "sim/stat",  &
                     "equil/stab=10, err=1, imb=1, tlim=2, alim=2D, maxit=500",  &
                     "sim/stat",  &
                     "equil/stab=1, err=1, imb=1, tlim=2, alim=2D, maxit=500",  &
                     "sim/stat", "!",  &
                     "VARIABLE/1001, FUNC= -step5(time,0,0,2,20*PI)",  &
                     "int/hht, err=1E-7, hmax=2.5E-4, INTERPOLATE=on",  &
                     "sim/dyn, end=1.5, dtout=.005",  &
                     "sim/dyn, end=2.0, dtout=.005", "!",  &
                     "deactivate/sensor, ID=1000",  &
                     "!deactivate/contact, ID=57",  &
                     "! load upper input shaft rotation",  &
                     "VARIABLE/1001, FUNC= -step5(SENVAL(1000),0,0,2,20*PI)",  &
                     "! sin-up input shaft rotation",  &
                     "VARIABLE/1002, func=0",  &
                     "! move the feed selector to the lower position, throw=16mm",  &
                     "MOTION/4, FUNC = -16+STEP5(time,1.9,0,2,16)", "!",  &
                     "sim/dyn, end=2.0, dtout=.005", "!",  &
                     "VARIABLE/1001, FUNC= -step5(SENVAL(1000),0,0,2,20*PI) &",  &
                     " -STEP5(TIME,2.0,0,4,20*PI)",  &
                     "sim/dyn, end=3.5, dtout=.005",  &
                     "sim/dyn, end=4.0, dtout=.005", "!",  &
                     "deactivate/sensor, ID=2001",  &
                     "!deactivate/contact, ID=58",  &
                     "!  upper + lower input shaft load rotation",  &
                     "VARIABLE/1001, FUNC= -step5(SENVAL(1000),0,0,2,20*PI) &",  &
                     " -STEP5(SENVAL(2001),2.0,0,4,20*PI)", "!", "!",  &
                     "! CONTINUE on lower side => no change to feed selector",  &
                     "!                           deactivate the lower stop",  &
                     "sim/dyn, end=4.0, dtout=.005",  &
                     "deactivate/contact, ID=58", "! OR",  &
                     "! switch back to upper side => move the feed selector",  &
                     "!                           deactivate the upper stop",  &
                     "!deactivate/contact, ID=57",  &
                     "!MOTION/4, FUNC = STEP5(time,3.9,0,4,-16)",  &
                     "!sim/dyn, end=4.0, dtout=.005", "!",  &
                     "!  SpinUp to 200 rounds/minute over 0.1 secs!",  &
                     "VARIABLE/1002, FUNCTION = IF(TIME-4.0: 0, 0, &",  &
                     " -PI*IF((TIME-4.0-.1):-3E4*(TIME-4.0)**4 + &",  &
                     "  6E3*(TIME-4.0)**3, 3, 3+60*(TIME-4.0-.1)))", "!",  &
                     "sim/dyn, dur=.5, dtout=.001",  &
                     "sim/dyn, dur=.5, dtout=.001",  &
                     "sim/dyn, dur=.5, dtout=.001"
!
simulation script create  &
   sim_script_name = .FRS5_doe_8_LAUL.go  &
   commands = "simulation single_run equilibrium model_name=.sp00"
!
simulation script create  &
   sim_script_name = .FRS5_doe_8_LAUL.SIM_SCRIPT_1  &
   solver_commands = "! Insert ACF commands here:", "sim/stat",  &
                     "integ/hmax=.0005", "sim/dyn, dur=0.5, dtout=.001",  &
                     "sim/dyn, dur=1.0, dtout=.001",  &
                     "sim/dyn, dur=1.0, dtout=.001"
!
simulation script create  &
   sim_script_name = .FRS5_doe_8_LAUL.Last_Sim_2  &
   commands = "simulation single_run equilibrium model_name=.receiver_3",  &
              "simulation single_run transient type=auto_select duration=1.5 number_of_steps=1500 model_name=.receiver_3 initial_static=no"
!
simulation script create  &
   sim_script_name = .FRS5_doe_8_LAUL.Last_Sim_3  &
   commands =   &
              "simulation single_run transient type=auto_select end_time=0.1 number_of_steps=20 model_name=.sp2 initial_static=no",  &
              "simulation single_run equilibrium model_name=.sp2"
!
simulation script create  &
   sim_script_name = .FRS5_doe_8_LAUL.Last_Sim_4  &
   commands =   &
              "simulation single_run transient step_size=1.0E-03 end_time=0.2 type=dynamic model_name=.spring initial_static=no"
!
!------------------------------ Dynamic Graphics ------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .FRS5_doe_8_LAUL.ground
!
geometry create shape gcontact  &
   contact_force_name = .FRS5_doe_8_LAUL.GCONTACT_3441  &
   adams_id = 3441  &
   contact_element_name = .FRS5_doe_8_LAUL.BL1_2_aftsprocket  &
   force_display = none
!
geometry create shape gcontact  &
   contact_force_name = .FRS5_doe_8_LAUL.GCONTACT_3444  &
   adams_id = 3444  &
   contact_element_name = .FRS5_doe_8_LAUL.BL2_2_aftsprocket  &
   force_display = none
!
geometry create shape gcontact  &
   contact_force_name = .FRS5_doe_8_LAUL.GCONTACT_3447  &
   adams_id = 3447  &
   contact_element_name = .FRS5_doe_8_LAUL.BL3_2_aftsprocket  &
   force_display = none
!
geometry create shape gcontact  &
   contact_force_name = .FRS5_doe_8_LAUL.GCONTACT_3450  &
   adams_id = 3450  &
   contact_element_name = .FRS5_doe_8_LAUL.BL5_2_aftsprocket  &
   force_display = none
!
geometry create shape gcontact  &
   contact_force_name = .FRS5_doe_8_LAUL.GCONTACT_3453  &
   adams_id = 3453  &
   contact_element_name = .FRS5_doe_8_LAUL.BL4_2_aftsprocket  &
   force_display = none
!
geometry create shape gcontact  &
   contact_force_name = .FRS5_doe_8_LAUL.GCONTACT_3456  &
   adams_id = 3456  &
   contact_element_name = .FRS5_doe_8_LAUL.BL5_2_fwdsprocket  &
   force_display = none
!
geometry create shape gcontact  &
   contact_force_name = .FRS5_doe_8_LAUL.GCONTACT_3459  &
   adams_id = 3459  &
   contact_element_name = .FRS5_doe_8_LAUL.BL4_2_fwdsprocket  &
   force_display = none
!
geometry create shape gcontact  &
   contact_force_name = .FRS5_doe_8_LAUL.GCONTACT_3462  &
   adams_id = 3462  &
   contact_element_name = .FRS5_doe_8_LAUL.BL3_2_fwdsprocket  &
   force_display = none
!
geometry create shape gcontact  &
   contact_force_name = .FRS5_doe_8_LAUL.GCONTACT_3465  &
   adams_id = 3465  &
   contact_element_name = .FRS5_doe_8_LAUL.BL2_2_fwdsprocket  &
   force_display = none
!
geometry create shape gcontact  &
   contact_force_name = .FRS5_doe_8_LAUL.GCONTACT_3468  &
   adams_id = 3468  &
   contact_element_name = .FRS5_doe_8_LAUL.BL1_2_fwdsprocket  &
   force_display = none
!
!---------------------------------- Couplers ----------------------------------!
!
!
constraint create complex_joint coupler  &
   coupler_name = .FRS5_doe_8_LAUL.worm_gearset  &
   adams_id = 2  &
   joint_name =  &
      .FRS5_doe_8_LAUL.worm_drive_bearing,  &
      .FRS5_doe_8_LAUL.worm_driven_bearing  &
   type_of_freedom = rot_rot  &
   motion_multipliers = 1.0, 18.0
!
constraint attributes  &
   constraint_name = .FRS5_doe_8_LAUL.worm_gearset  &
   visibility = off
!
constraint create complex_joint coupler  &
   coupler_name = .FRS5_doe_8_LAUL.ferguson_drive_gearset  &
   adams_id = 3  &
   joint_name =  &
      .FRS5_doe_8_LAUL.worm_driven_bearing,  &
      .FRS5_doe_8_LAUL.ferguson_shaft_bearing  &
   type_of_freedom = rot_rot  &
   motion_multipliers = 2.0, 1.0
!
constraint attributes  &
   constraint_name = .FRS5_doe_8_LAUL.ferguson_drive_gearset  &
   visibility = off
!
constraint create complex_joint coupler  &
   coupler_name = .FRS5_doe_8_LAUL.sprocket_drive_gearset  &
   adams_id = 4  &
   joint_name =  &
      .FRS5_doe_8_LAUL.worm_driven_bearing,  &
      .FRS5_doe_8_LAUL.upper_drive_gear_bearing  &
   type_of_freedom = rot_rot  &
   motion_multipliers = 1.0, -2.0
!
constraint attributes  &
   constraint_name = .FRS5_doe_8_LAUL.sprocket_drive_gearset  &
   visibility = off
!
constraint create complex_joint coupler  &
   coupler_name = .FRS5_doe_8_LAUL.sprocket_transfer_gearset  &
   adams_id = 5  &
   joint_name =  &
      .FRS5_doe_8_LAUL.upper_drive_gear_bearing,  &
      .FRS5_doe_8_LAUL.lower_drive_gear_bearing  &
   type_of_freedom = rot_rot  &
   motion_multipliers = 2.0, 2.0
!
constraint attributes  &
   constraint_name = .FRS5_doe_8_LAUL.sprocket_transfer_gearset  &
   visibility = off
!
!---------------------------------- Motions -----------------------------------!
!
!
constraint create motion_generator  &
   motion_name = .FRS5_doe_8_LAUL.InputRPM  &
   adams_id = 5  &
   type_of_freedom = rotational  &
   joint_name = .FRS5_doe_8_LAUL.drive_shaft_bearing  &
   function = ""
!
constraint attributes  &
   constraint_name = .FRS5_doe_8_LAUL.InputRPM  &
   visibility = off
!
constraint create motion_generator  &
   motion_name = .FRS5_doe_8_LAUL.feed_selector_position  &
   adams_id = 4  &
   type_of_freedom = translational  &
   joint_name = .FRS5_doe_8_LAUL.selector_slide  &
   function = ""
!
constraint attributes  &
   constraint_name = .FRS5_doe_8_LAUL.feed_selector_position  &
   visibility = off
!
!---------------------------------- Accgrav -----------------------------------!
!
!
force create body gravitational  &
   gravity_field_name = ACCGRAV_1  &
   x_component_gravity = 0.0  &
   y_component_gravity = 0.0  &
   z_component_gravity = 0.0
!
force attributes  &
   force_name = .FRS5_doe_8_LAUL.ACCGRAV_1  &
   visibility = off
!
!----------------------------- Analysis settings ------------------------------!
!
!
executive_control set numerical_integration_parameters  &
   model_name = FRS5_doe_8_LAUL  &
   integrator_type = hht  &
   error_tolerance = 1.0E-05  &
   pattern_for_jacobian = no  &
   maxit_corrector_iterations = 20  &
   hmax_time_step = 2.5E-04
!
executive_control set equilibrium_parameters  &
   model_name = FRS5_doe_8_LAUL  &
   alimit = 3.0d  &
   error = 1.0E-02  &
   imbalance = 1.0E-02  &
   maxit = 100  &
   stability = 10.0  &
   tlimit = 5.0
!
output_control set output  &
   model_name = FRS5_doe_8_LAUL  &
   grsave = off  &
   separator = off  &
   print = off
!
output_control set results  &
   model_name = FRS5_doe_8_LAUL  &
   formatted = on  &
   accelerations = off  &
   linear = off  &
   floating_markers = off  &
   request = off  &
   contact_incidents = off
!
executive_control set preferences  &
   model_name = FRS5_doe_8_LAUL  &
   contact_faceting_tolerance = 2000.0
!
!---------------------------------- Measures ----------------------------------!
!
!
measure create function  &
   measure_name = .FRS5_doe_8_LAUL.spring_stress_U2  &
   function = ""  &
   units = "no_units"  &
   legend = "U2"  &
   create_measure_display = no
!
data_element attributes  &
   data_element_name = .FRS5_doe_8_LAUL.spring_stress_U2  &
   color = WHITE
!
measure create function  &
   measure_name = .FRS5_doe_8_LAUL.spring_stress_U3  &
   function = ""  &
   units = "no_units"  &
   legend = "U3"  &
   create_measure_display = no
!
data_element attributes  &
   data_element_name = .FRS5_doe_8_LAUL.spring_stress_U3  &
   color = WHITE
!
measure create function  &
   measure_name = .FRS5_doe_8_LAUL.spring_stress_U4  &
   function = ""  &
   units = "no_units"  &
   legend = "U4"  &
   create_measure_display = no
!
data_element attributes  &
   data_element_name = .FRS5_doe_8_LAUL.spring_stress_U4  &
   color = WHITE
!
measure create function  &
   measure_name = .FRS5_doe_8_LAUL.spring_stress_U5  &
   function = ""  &
   units = "no_units"  &
   legend = "U5"  &
   create_measure_display = no
!
data_element attributes  &
   data_element_name = .FRS5_doe_8_LAUL.spring_stress_U5  &
   color = WHITE
!
measure create function  &
   measure_name = .FRS5_doe_8_LAUL.spring_stress_U6  &
   function = ""  &
   units = "no_units"  &
   legend = "U6"  &
   create_measure_display = no
!
data_element attributes  &
   data_element_name = .FRS5_doe_8_LAUL.spring_stress_U6  &
   color = WHITE
!
measure create function  &
   measure_name = .FRS5_doe_8_LAUL.spring_stress_U7  &
   function = ""  &
   units = "no_units"  &
   legend = "U7"  &
   create_measure_display = no
!
data_element attributes  &
   data_element_name = .FRS5_doe_8_LAUL.spring_stress_U7  &
   color = WHITE
!
measure create function  &
   measure_name = .FRS5_doe_8_LAUL.spring_stress_U8  &
   function = ""  &
   units = "no_units"  &
   legend = "U8"  &
   create_measure_display = no
!
data_element attributes  &
   data_element_name = .FRS5_doe_8_LAUL.spring_stress_U8  &
   color = WHITE
!
measure create function  &
   measure_name = .FRS5_doe_8_LAUL.spring_stress_U9  &
   function = ""  &
   units = "no_units"  &
   legend = "U9"  &
   create_measure_display = no
!
data_element attributes  &
   data_element_name = .FRS5_doe_8_LAUL.spring_stress_U9  &
   color = WHITE
!
measure create function  &
   measure_name = .FRS5_doe_8_LAUL.spring_stress_U10  &
   function = ""  &
   units = "no_units"  &
   legend = "U10"  &
   create_measure_display = no
!
data_element attributes  &
   data_element_name = .FRS5_doe_8_LAUL.spring_stress_U10  &
   color = WHITE
!
measure create function  &
   measure_name = .FRS5_doe_8_LAUL.spring_stress_U11  &
   function = ""  &
   units = "no_units"  &
   legend = "U11"  &
   create_measure_display = no
!
data_element attributes  &
   data_element_name = .FRS5_doe_8_LAUL.spring_stress_U11  &
   color = WHITE
!
measure create function  &
   measure_name = .FRS5_doe_8_LAUL.spring_stress_U12  &
   function = ""  &
   units = "no_units"  &
   legend = "U12"  &
   create_measure_display = no
!
data_element attributes  &
   data_element_name = .FRS5_doe_8_LAUL.spring_stress_U12  &
   color = WHITE
!
measure create function  &
   measure_name = .FRS5_doe_8_LAUL.spring_stress_U13  &
   function = ""  &
   units = "no_units"  &
   legend = "U13"  &
   create_measure_display = no
!
data_element attributes  &
   data_element_name = .FRS5_doe_8_LAUL.spring_stress_U13  &
   color = WHITE
!
measure create function  &
   measure_name = .FRS5_doe_8_LAUL.spring_stress_U14  &
   function = ""  &
   units = "no_units"  &
   legend = "U14"  &
   create_measure_display = no
!
data_element attributes  &
   data_element_name = .FRS5_doe_8_LAUL.spring_stress_U14  &
   color = WHITE
!
measure create function  &
   measure_name = .FRS5_doe_8_LAUL.spring_stress_U15  &
   function = ""  &
   units = "no_units"  &
   legend = "U15"  &
   create_measure_display = no
!
data_element attributes  &
   data_element_name = .FRS5_doe_8_LAUL.spring_stress_U15  &
   color = WHITE
!
measure create function  &
   measure_name = .FRS5_doe_8_LAUL.spring_stress_U16  &
   function = ""  &
   units = "no_units"  &
   legend = "U16"  &
   create_measure_display = no
!
data_element attributes  &
   data_element_name = .FRS5_doe_8_LAUL.spring_stress_U16  &
   color = WHITE
!
measure create function  &
   measure_name = .FRS5_doe_8_LAUL.spring_stress_U17  &
   function = ""  &
   units = "no_units"  &
   legend = "U17"  &
   create_measure_display = no
!
data_element attributes  &
   data_element_name = .FRS5_doe_8_LAUL.spring_stress_U17  &
   color = WHITE
!
measure create function  &
   measure_name = .FRS5_doe_8_LAUL.spring_stress_U18  &
   function = ""  &
   units = "no_units"  &
   legend = "U18"  &
   create_measure_display = no
!
data_element attributes  &
   data_element_name = .FRS5_doe_8_LAUL.spring_stress_U18  &
   color = WHITE
!
measure create function  &
   measure_name = .FRS5_doe_8_LAUL.spring_stress_U19  &
   function = ""  &
   units = "no_units"  &
   legend = "U19"  &
   create_measure_display = no
!
data_element attributes  &
   data_element_name = .FRS5_doe_8_LAUL.spring_stress_U19  &
   color = WHITE
!
measure create function  &
   measure_name = .FRS5_doe_8_LAUL.spring_stress_U20  &
   function = ""  &
   units = "no_units"  &
   legend = "U20"  &
   create_measure_display = no
!
data_element attributes  &
   data_element_name = .FRS5_doe_8_LAUL.spring_stress_U20  &
   color = WHITE
!
measure create function  &
   measure_name = .FRS5_doe_8_LAUL.spring_stress_U21  &
   function = ""  &
   units = "no_units"  &
   legend = "U21"  &
   create_measure_display = no
!
data_element attributes  &
   data_element_name = .FRS5_doe_8_LAUL.spring_stress_U21  &
   color = WHITE
!
measure create function  &
   measure_name = .FRS5_doe_8_LAUL.spring_stress_U22  &
   function = ""  &
   units = "no_units"  &
   legend = "U22"  &
   create_measure_display = no
!
data_element attributes  &
   data_element_name = .FRS5_doe_8_LAUL.spring_stress_U22  &
   color = WHITE
!
measure create function  &
   measure_name = .FRS5_doe_8_LAUL.spring_stress_U23  &
   function = ""  &
   units = "no_units"  &
   legend = "U23"  &
   create_measure_display = no
!
data_element attributes  &
   data_element_name = .FRS5_doe_8_LAUL.spring_stress_U23  &
   color = WHITE
!
measure create function  &
   measure_name = .FRS5_doe_8_LAUL.spring_stress_U24  &
   function = ""  &
   units = "no_units"  &
   legend = "U24"  &
   create_measure_display = no
!
data_element attributes  &
   data_element_name = .FRS5_doe_8_LAUL.spring_stress_U24  &
   color = WHITE
!
measure create function  &
   measure_name = .FRS5_doe_8_LAUL.spring_stress_U25  &
   function = ""  &
   units = "no_units"  &
   legend = "U25"  &
   create_measure_display = no
!
data_element attributes  &
   data_element_name = .FRS5_doe_8_LAUL.spring_stress_U25  &
   color = WHITE
!
measure create function  &
   measure_name = .FRS5_doe_8_LAUL.spring_stress_U26  &
   function = ""  &
   units = "no_units"  &
   legend = "U26"  &
   create_measure_display = no
!
data_element attributes  &
   data_element_name = .FRS5_doe_8_LAUL.spring_stress_U26  &
   color = WHITE
!
measure create function  &
   measure_name = .FRS5_doe_8_LAUL.spring_stress_U27  &
   function = ""  &
   units = "no_units"  &
   legend = "U27"  &
   create_measure_display = no
!
data_element attributes  &
   data_element_name = .FRS5_doe_8_LAUL.spring_stress_U27  &
   color = WHITE
!
measure create function  &
   measure_name = .FRS5_doe_8_LAUL.spring_stress_U28  &
   function = ""  &
   units = "no_units"  &
   legend = "U28"  &
   create_measure_display = no
!
data_element attributes  &
   data_element_name = .FRS5_doe_8_LAUL.spring_stress_U28  &
   color = WHITE
!
measure create function  &
   measure_name = .FRS5_doe_8_LAUL.spring_stress_U29  &
   function = ""  &
   units = "no_units"  &
   legend = "U29"  &
   create_measure_display = no
!
data_element attributes  &
   data_element_name = .FRS5_doe_8_LAUL.spring_stress_U29  &
   color = WHITE
!
measure create function  &
   measure_name = .FRS5_doe_8_LAUL.spring_stress_U30  &
   function = ""  &
   units = "no_units"  &
   legend = "U30"  &
   create_measure_display = no
!
data_element attributes  &
   data_element_name = .FRS5_doe_8_LAUL.spring_stress_U30  &
   color = WHITE
!
measure create function  &
   measure_name = .FRS5_doe_8_LAUL.spring_stress_U31  &
   function = ""  &
   units = "no_units"  &
   legend = "U31"  &
   create_measure_display = no
!
data_element attributes  &
   data_element_name = .FRS5_doe_8_LAUL.spring_stress_U31  &
   color = WHITE
!
measure create function  &
   measure_name = .FRS5_doe_8_LAUL.spring_stress_L2  &
   function = ""  &
   units = "no_units"  &
   legend = "L2"  &
   create_measure_display = no
!
data_element attributes  &
   data_element_name = .FRS5_doe_8_LAUL.spring_stress_L2  &
   color = WHITE
!
measure create function  &
   measure_name = .FRS5_doe_8_LAUL.spring_stress_L3  &
   function = ""  &
   units = "no_units"  &
   legend = "L3"  &
   create_measure_display = no
!
data_element attributes  &
   data_element_name = .FRS5_doe_8_LAUL.spring_stress_L3  &
   color = WHITE
!
measure create function  &
   measure_name = .FRS5_doe_8_LAUL.spring_stress_L4  &
   function = ""  &
   units = "no_units"  &
   legend = "L4"  &
   create_measure_display = no
!
data_element attributes  &
   data_element_name = .FRS5_doe_8_LAUL.spring_stress_L4  &
   color = WHITE
!
measure create function  &
   measure_name = .FRS5_doe_8_LAUL.spring_stress_L5  &
   function = ""  &
   units = "no_units"  &
   legend = "L5"  &
   create_measure_display = no
!
data_element attributes  &
   data_element_name = .FRS5_doe_8_LAUL.spring_stress_L5  &
   color = WHITE
!
measure create function  &
   measure_name = .FRS5_doe_8_LAUL.spring_stress_L6  &
   function = ""  &
   units = "no_units"  &
   legend = "L6"  &
   create_measure_display = no
!
data_element attributes  &
   data_element_name = .FRS5_doe_8_LAUL.spring_stress_L6  &
   color = WHITE
!
measure create function  &
   measure_name = .FRS5_doe_8_LAUL.spring_stress_L7  &
   function = ""  &
   units = "no_units"  &
   legend = "L7"  &
   create_measure_display = no
!
data_element attributes  &
   data_element_name = .FRS5_doe_8_LAUL.spring_stress_L7  &
   color = WHITE
!
measure create function  &
   measure_name = .FRS5_doe_8_LAUL.spring_stress_L8  &
   function = ""  &
   units = "no_units"  &
   legend = "L8"  &
   create_measure_display = no
!
data_element attributes  &
   data_element_name = .FRS5_doe_8_LAUL.spring_stress_L8  &
   color = WHITE
!
measure create function  &
   measure_name = .FRS5_doe_8_LAUL.spring_stress_L9  &
   function = ""  &
   units = "no_units"  &
   legend = "L9"  &
   create_measure_display = no
!
data_element attributes  &
   data_element_name = .FRS5_doe_8_LAUL.spring_stress_L9  &
   color = WHITE
!
measure create function  &
   measure_name = .FRS5_doe_8_LAUL.spring_stress_L10  &
   function = ""  &
   units = "no_units"  &
   legend = "L10"  &
   create_measure_display = no
!
data_element attributes  &
   data_element_name = .FRS5_doe_8_LAUL.spring_stress_L10  &
   color = WHITE
!
measure create function  &
   measure_name = .FRS5_doe_8_LAUL.spring_stress_L11  &
   function = ""  &
   units = "no_units"  &
   legend = "L11"  &
   create_measure_display = no
!
data_element attributes  &
   data_element_name = .FRS5_doe_8_LAUL.spring_stress_L11  &
   color = WHITE
!
measure create function  &
   measure_name = .FRS5_doe_8_LAUL.spring_stress_L12  &
   function = ""  &
   units = "no_units"  &
   legend = "L12"  &
   create_measure_display = no
!
data_element attributes  &
   data_element_name = .FRS5_doe_8_LAUL.spring_stress_L12  &
   color = WHITE
!
measure create function  &
   measure_name = .FRS5_doe_8_LAUL.spring_stress_L13  &
   function = ""  &
   units = "no_units"  &
   legend = "L13"  &
   create_measure_display = no
!
data_element attributes  &
   data_element_name = .FRS5_doe_8_LAUL.spring_stress_L13  &
   color = WHITE
!
measure create function  &
   measure_name = .FRS5_doe_8_LAUL.spring_stress_L14  &
   function = ""  &
   units = "no_units"  &
   legend = "L14"  &
   create_measure_display = no
!
data_element attributes  &
   data_element_name = .FRS5_doe_8_LAUL.spring_stress_L14  &
   color = WHITE
!
measure create function  &
   measure_name = .FRS5_doe_8_LAUL.spring_stress_L15  &
   function = ""  &
   units = "no_units"  &
   legend = "L15"  &
   create_measure_display = no
!
data_element attributes  &
   data_element_name = .FRS5_doe_8_LAUL.spring_stress_L15  &
   color = WHITE
!
measure create function  &
   measure_name = .FRS5_doe_8_LAUL.spring_stress_L16  &
   function = ""  &
   units = "no_units"  &
   legend = "L16"  &
   create_measure_display = no
!
data_element attributes  &
   data_element_name = .FRS5_doe_8_LAUL.spring_stress_L16  &
   color = WHITE
!
measure create function  &
   measure_name = .FRS5_doe_8_LAUL.spring_stress_L17  &
   function = ""  &
   units = "no_units"  &
   legend = "L17"  &
   create_measure_display = no
!
data_element attributes  &
   data_element_name = .FRS5_doe_8_LAUL.spring_stress_L17  &
   color = WHITE
!
measure create function  &
   measure_name = .FRS5_doe_8_LAUL.spring_stress_L18  &
   function = ""  &
   units = "no_units"  &
   legend = "L18"  &
   create_measure_display = no
!
data_element attributes  &
   data_element_name = .FRS5_doe_8_LAUL.spring_stress_L18  &
   color = WHITE
!
measure create function  &
   measure_name = .FRS5_doe_8_LAUL.spring_stress_L19  &
   function = ""  &
   units = "no_units"  &
   legend = "L19"  &
   create_measure_display = no
!
data_element attributes  &
   data_element_name = .FRS5_doe_8_LAUL.spring_stress_L19  &
   color = WHITE
!
measure create function  &
   measure_name = .FRS5_doe_8_LAUL.spring_stress_L20  &
   function = ""  &
   units = "no_units"  &
   legend = "L20"  &
   create_measure_display = no
!
data_element attributes  &
   data_element_name = .FRS5_doe_8_LAUL.spring_stress_L20  &
   color = WHITE
!
measure create function  &
   measure_name = .FRS5_doe_8_LAUL.spring_stress_L21  &
   function = ""  &
   units = "no_units"  &
   legend = "L21"  &
   create_measure_display = no
!
data_element attributes  &
   data_element_name = .FRS5_doe_8_LAUL.spring_stress_L21  &
   color = WHITE
!
measure create function  &
   measure_name = .FRS5_doe_8_LAUL.spring_stress_L22  &
   function = ""  &
   units = "no_units"  &
   legend = "L22"  &
   create_measure_display = no
!
data_element attributes  &
   data_element_name = .FRS5_doe_8_LAUL.spring_stress_L22  &
   color = WHITE
!
measure create function  &
   measure_name = .FRS5_doe_8_LAUL.spring_stress_L23  &
   function = ""  &
   units = "no_units"  &
   legend = "L23"  &
   create_measure_display = no
!
data_element attributes  &
   data_element_name = .FRS5_doe_8_LAUL.spring_stress_L23  &
   color = WHITE
!
measure create function  &
   measure_name = .FRS5_doe_8_LAUL.spring_stress_L24  &
   function = ""  &
   units = "no_units"  &
   legend = "L24"  &
   create_measure_display = no
!
data_element attributes  &
   data_element_name = .FRS5_doe_8_LAUL.spring_stress_L24  &
   color = WHITE
!
measure create function  &
   measure_name = .FRS5_doe_8_LAUL.spring_stress_L25  &
   function = ""  &
   units = "no_units"  &
   legend = "L25"  &
   create_measure_display = no
!
data_element attributes  &
   data_element_name = .FRS5_doe_8_LAUL.spring_stress_L25  &
   color = WHITE
!
measure create function  &
   measure_name = .FRS5_doe_8_LAUL.spring_stress_L26  &
   function = ""  &
   units = "no_units"  &
   legend = "L26"  &
   create_measure_display = no
!
data_element attributes  &
   data_element_name = .FRS5_doe_8_LAUL.spring_stress_L26  &
   color = WHITE
!
measure create function  &
   measure_name = .FRS5_doe_8_LAUL.spring_stress_L27  &
   function = ""  &
   units = "no_units"  &
   legend = "L27"  &
   create_measure_display = no
!
data_element attributes  &
   data_element_name = .FRS5_doe_8_LAUL.spring_stress_L27  &
   color = WHITE
!
measure create function  &
   measure_name = .FRS5_doe_8_LAUL.spring_stress_L28  &
   function = ""  &
   units = "no_units"  &
   legend = "L28"  &
   create_measure_display = no
!
data_element attributes  &
   data_element_name = .FRS5_doe_8_LAUL.spring_stress_L28  &
   color = WHITE
!
measure create function  &
   measure_name = .FRS5_doe_8_LAUL.spring_stress_L29  &
   function = ""  &
   units = "no_units"  &
   legend = "L29"  &
   create_measure_display = no
!
data_element attributes  &
   data_element_name = .FRS5_doe_8_LAUL.spring_stress_L29  &
   color = WHITE
!
measure create function  &
   measure_name = .FRS5_doe_8_LAUL.clutch_torque_upper  &
   function = ""  &
   units = "no_units"  &
   legend = "upper"  &
   create_measure_display = no
!
data_element attributes  &
   data_element_name = .FRS5_doe_8_LAUL.clutch_torque_upper  &
   color = WHITE
!
measure create function  &
   measure_name = .FRS5_doe_8_LAUL.clutch_torque_lower  &
   function = ""  &
   units = "no_units"  &
   legend = "lower"  &
   create_measure_display = no
!
data_element attributes  &
   data_element_name = .FRS5_doe_8_LAUL.clutch_torque_lower  &
   color = WHITE
!
!---------------------------- Adams View Variables ----------------------------!
!
!
variable create  &
   variable_name = .FRS5_doe_8_LAUL.half_len  &
   real_value = 2.7740263607
!
variable create  &
   variable_name = .FRS5_doe_8_LAUL.len  &
   real_value = 5.5480527215
!
variable create  &
   variable_name = .FRS5_doe_8_LAUL.this_sect  &
   integer_value = 29
!
variable create  &
   variable_name = .FRS5_doe_8_LAUL.link_pop  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 12.0
!
variable create  &
   variable_name = .FRS5_doe_8_LAUL.k_link  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 30.0
!
variable create  &
   variable_name = .FRS5_doe_8_LAUL.md_i  &
   real_value = 64.2642944329, 462.18, -59.6957588097
!
variable create  &
   variable_name = .FRS5_doe_8_LAUL.md_j  &
   real_value = 68.4642944329, 462.18, -59.6957588097
!
variable create  &
   variable_name = .FRS5_doe_8_LAUL.md_dx  &
   real_value = -4.2
!
variable create  &
   variable_name = .FRS5_doe_8_LAUL.md_dy  &
   real_value = 0.0
!
variable create  &
   variable_name = .FRS5_doe_8_LAUL.md_dz  &
   real_value = 0.0
!
variable create  &
   variable_name = .FRS5_doe_8_LAUL.md_dm  &
   real_value = 4.2
!
variable create  &
   variable_name = .FRS5_doe_8_LAUL.chain_links  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 54.0
!
variable create  &
   variable_name = .FRS5_doe_8_LAUL.sprocket_teeth  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 12.0
!
variable create  &
   variable_name = .FRS5_doe_8_LAUL.chain_pitch  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 15.875
!
variable create  &
   variable_name = .FRS5_doe_8_LAUL.chain_path_length  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 861.2556
!
variable create  &
   variable_name = .FRS5_doe_8_LAUL.sear_stack_height  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 12.33
!
variable create  &
   variable_name = .FRS5_doe_8_LAUL.dlgs  &
   integer_value = 1
!
variable create  &
   variable_name = .FRS5_doe_8_LAUL.half_len_2  &
   real_value = 2.6452464479
!
variable create  &
   variable_name = .FRS5_doe_8_LAUL.len_2  &
   real_value = 5.2904928958
!
variable create  &
   variable_name = .FRS5_doe_8_LAUL.sprock_rad  &
   real_value = 10.0
!
variable create  &
   variable_name = .FRS5_doe_8_LAUL.sthick  &
   real_value = 1.016
!
variable create  &
   variable_name = .FRS5_doe_8_LAUL.this_sect_2  &
   integer_value = 25
!
variable create  &
   variable_name = .FRS5_doe_8_LAUL.modname  &
   string_value = "case2spring"
!
variable create  &
   variable_name = .FRS5_doe_8_LAUL.basename  &
   string_value = "case2s"
!
variable create  &
   variable_name = .FRS5_doe_8_LAUL.this_rnd  &
   integer_value = 2
!
variable create  &
   variable_name = .FRS5_doe_8_LAUL.layout_config  &
   integer_value = 1
!
variable create  &
   variable_name = .FRS5_doe_8_LAUL.feed_selector_throw  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 16.0
!
variable create  &
   variable_name = .FRS5_doe_8_LAUL.oo  &
   object_value = (NONE)
!
variable create  &
   variable_name = .FRS5_doe_8_LAUL.r_roll_5  &
   units = "length"  &
   range = -10.0, 10.0  &
   use_allowed_values = no  &
   delta_type = percent_relative  &
   real_value = 3.5719710753
!
variable create  &
   variable_name = .FRS5_doe_8_LAUL.r_roll_1  &
   units = "length"  &
   range = -10.0, 10.0  &
   use_allowed_values = no  &
   delta_type = percent_relative  &
   real_value = 3.6734623457
!
variable create  &
   variable_name = .FRS5_doe_8_LAUL.r_roll_2  &
   units = "length"  &
   range = -10.0, 10.0  &
   use_allowed_values = no  &
   delta_type = percent_relative  &
   real_value = 3.6734623457
!
variable create  &
   variable_name = .FRS5_doe_8_LAUL.r_roll_4  &
   units = "length"  &
   range = -10.0, 10.0  &
   use_allowed_values = no  &
   delta_type = percent_relative  &
   real_value = 6.35
!
variable create  &
   variable_name = .FRS5_doe_8_LAUL.r_roll_3  &
   units = "length"  &
   range = -10.0, 10.0  &
   use_allowed_values = no  &
   delta_type = percent_relative  &
   real_value = 6.35
!
variable create  &
   variable_name = .FRS5_doe_8_LAUL.theta_roll_sym  &
   units = "angle"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 10.5843604878
!
variable create  &
   variable_name = .FRS5_doe_8_LAUL.x_roll_1  &
   units = "length"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 12.1516361698
!
variable create  &
   variable_name = .FRS5_doe_8_LAUL.y_roll_1  &
   units = "length"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 5.7993358361
!
variable create  &
   variable_name = .FRS5_doe_8_LAUL.x_roll_2  &
   units = "length"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 12.1516361698
!
variable create  &
   variable_name = .FRS5_doe_8_LAUL.y_roll_2  &
   units = "length"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 6.75
!
variable create  &
   variable_name = .FRS5_doe_8_LAUL.x_roll_5  &
   units = "length"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 27.7667897777
!
variable create  &
   variable_name = .FRS5_doe_8_LAUL.y_roll_5  &
   units = "length"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 0.0
!
variable create  &
   variable_name = .FRS5_doe_8_LAUL.x_roll_3  &
   units = "length"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 0.0
!
variable create  &
   variable_name = .FRS5_doe_8_LAUL.x_roll_4  &
   units = "length"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 0.0
!
variable create  &
   variable_name = .FRS5_doe_8_LAUL.y_roll_3  &
   units = "length"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 9.3791050355
!
variable create  &
   variable_name = .FRS5_doe_8_LAUL.y_roll_4  &
   units = "length"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 9.3791050355
!
variable create  &
   variable_name = .FRS5_doe_8_LAUL.half_len_3  &
   real_value = 2.8216162319
!
variable create  &
   variable_name = .FRS5_doe_8_LAUL.len_3  &
   real_value = 5.6432324638
!
variable create  &
   variable_name = .FRS5_doe_8_LAUL.upper_sprock_rad  &
   real_value = 10.0
!
variable create  &
   variable_name = .FRS5_doe_8_LAUL.lower_sprock_rad  &
   real_value = 10.0
!
variable create  &
   variable_name = .FRS5_doe_8_LAUL.sthick_2  &
   real_value = 1.016
!
variable create  &
   variable_name = .FRS5_doe_8_LAUL.this_sect_3  &
   integer_value = 29
!
variable create  &
   variable_name = .FRS5_doe_8_LAUL.delx  &
   real_value = 155.5
!
variable create  &
   variable_name = .FRS5_doe_8_LAUL.dely  &
   real_value = 236.37
!
variable create  &
   variable_name = .FRS5_doe_8_LAUL.delz  &
   real_value = 177.725
!
variable create  &
   variable_name = .FRS5_doe_8_LAUL.iSP  &
   integer_value = 29
!
!---------------------- Set Adams View Object Variables -----------------------!
!
!
variable modify  &
   variable_name = .FRS5_doe_8_LAUL.oo  &
   object_value = .FRS5_doe_8_LAUL.feed_selector_arm.MARKER_35
!
!--------------------------- Add Objects To Groups ----------------------------!
!
!
group modify  &
   group_name = .FRS5_doe_8_LAUL.rounds  &
   objects_in_group = .FRS5_doe_8_LAUL.linkU1,  &
      .FRS5_doe_8_LAUL.linkU1line1dummy,  &
      .FRS5_doe_8_LAUL.linkU1line2dummy,  &
      .FRS5_doe_8_LAUL.linkU2,  &
      .FRS5_doe_8_LAUL.linkU2line1dummy,  &
      .FRS5_doe_8_LAUL.linkU2line2dummy,  &
      .FRS5_doe_8_LAUL.linkU3,  &
      .FRS5_doe_8_LAUL.linkU3line1dummy,  &
      .FRS5_doe_8_LAUL.linkU3line2dummy,  &
      .FRS5_doe_8_LAUL.linkU4,  &
      .FRS5_doe_8_LAUL.linkU4line1dummy,  &
      .FRS5_doe_8_LAUL.linkU4line2dummy,  &
      .FRS5_doe_8_LAUL.projectileU1,  &
      .FRS5_doe_8_LAUL.projectileU2,  &
      .FRS5_doe_8_LAUL.projectileU3,  &
      .FRS5_doe_8_LAUL.projectileU4,  &
      .FRS5_doe_8_LAUL.brassU1,  &
      .FRS5_doe_8_LAUL.brassU2,  &
      .FRS5_doe_8_LAUL.brassU3,  &
      .FRS5_doe_8_LAUL.brassU4
!
group modify  &
   group_name = .FRS5_doe_8_LAUL.R4  &
   objects_in_group = .FRS5_doe_8_LAUL.brassU4,  &
      .FRS5_doe_8_LAUL.projectileU4,  &
      .FRS5_doe_8_LAUL.CrimpU4,  &
      .FRS5_doe_8_LAUL.linkU4,  &
      .FRS5_doe_8_LAUL.popU4a,  &
      .FRS5_doe_8_LAUL.popU4f,  &
      .FRS5_doe_8_LAUL.popU3t,  &
      .FRS5_doe_8_LAUL.tongueU4,  &
      .FRS5_doe_8_LAUL.TrailPlaneU4,  &
      .FRS5_doe_8_LAUL.linkU4line1dummy,  &
      .FRS5_doe_8_LAUL.linkU4line2dummy,  &
      .FRS5_doe_8_LAUL.linkU4line1,  &
      .FRS5_doe_8_LAUL.linkU4line2,  &
      .FRS5_doe_8_LAUL.feed_dragU4,  &
      .FRS5_doe_8_LAUL.PTCV_U41,  &
      .FRS5_doe_8_LAUL.PTCV_U42
!
group modify  &
   group_name = .FRS5_doe_8_LAUL.R5  &
   objects_in_group = .FRS5_doe_8_LAUL.brassU5,  &
      .FRS5_doe_8_LAUL.projectileU5,  &
      .FRS5_doe_8_LAUL.CrimpU5,  &
      .FRS5_doe_8_LAUL.linkU5,  &
      .FRS5_doe_8_LAUL.popU5a,  &
      .FRS5_doe_8_LAUL.popU5f,  &
      .FRS5_doe_8_LAUL.popU4t,  &
      .FRS5_doe_8_LAUL.tongueU5,  &
      .FRS5_doe_8_LAUL.TrailPlaneU5,  &
      .FRS5_doe_8_LAUL.linkU5line1dummy,  &
      .FRS5_doe_8_LAUL.linkU5line2dummy,  &
      .FRS5_doe_8_LAUL.linkU5line1,  &
      .FRS5_doe_8_LAUL.linkU5line2,  &
      .FRS5_doe_8_LAUL.feed_dragU5
!
group modify  &
   group_name = .FRS5_doe_8_LAUL.allrounds  &
   objects_in_group = .FRS5_doe_8_LAUL.brassU1,  &
      .FRS5_doe_8_LAUL.brassU2,  &
      .FRS5_doe_8_LAUL.brassU3,  &
      .FRS5_doe_8_LAUL.brassU4,  &
      .FRS5_doe_8_LAUL.brassU5,  &
      .FRS5_doe_8_LAUL.linkU1,  &
      .FRS5_doe_8_LAUL.linkU1line1dummy,  &
      .FRS5_doe_8_LAUL.linkU1line2dummy,  &
      .FRS5_doe_8_LAUL.linkU2,  &
      .FRS5_doe_8_LAUL.linkU2line1dummy,  &
      .FRS5_doe_8_LAUL.linkU2line2dummy,  &
      .FRS5_doe_8_LAUL.linkU3,  &
      .FRS5_doe_8_LAUL.linkU3line1dummy,  &
      .FRS5_doe_8_LAUL.linkU3line2dummy,  &
      .FRS5_doe_8_LAUL.linkU4,  &
      .FRS5_doe_8_LAUL.linkU4line1dummy,  &
      .FRS5_doe_8_LAUL.linkU4line2dummy,  &
      .FRS5_doe_8_LAUL.linkU5,  &
      .FRS5_doe_8_LAUL.linkU5line1dummy,  &
      .FRS5_doe_8_LAUL.linkU5line2dummy,  &
      .FRS5_doe_8_LAUL.projectileU1,  &
      .FRS5_doe_8_LAUL.projectileU2,  &
      .FRS5_doe_8_LAUL.projectileU3,  &
      .FRS5_doe_8_LAUL.projectileU4,  &
      .FRS5_doe_8_LAUL.projectileU5
!
group modify  &
   group_name = .FRS5_doe_8_LAUL.springparts  &
   objects_in_group = .FRS5_doe_8_LAUL.sideY1_2,  &
      .FRS5_doe_8_LAUL.sideY1_3,  &
      .FRS5_doe_8_LAUL.sideY1_4,  &
      .FRS5_doe_8_LAUL.sideY1_5,  &
      .FRS5_doe_8_LAUL.sideY1_6,  &
      .FRS5_doe_8_LAUL.sideY1_7,  &
      .FRS5_doe_8_LAUL.sideY1_8,  &
      .FRS5_doe_8_LAUL.sideY1_9,  &
      .FRS5_doe_8_LAUL.sideY1_10,  &
      .FRS5_doe_8_LAUL.sideY1_11,  &
      .FRS5_doe_8_LAUL.sideY1_12,  &
      .FRS5_doe_8_LAUL.sideY1_13,  &
      .FRS5_doe_8_LAUL.sideY1_14,  &
      .FRS5_doe_8_LAUL.sideY1_15,  &
      .FRS5_doe_8_LAUL.sideY1_16,  &
      .FRS5_doe_8_LAUL.sideY1_17,  &
      .FRS5_doe_8_LAUL.sideY1_18,  &
      .FRS5_doe_8_LAUL.sideY1_19,  &
      .FRS5_doe_8_LAUL.sideY1_20,  &
      .FRS5_doe_8_LAUL.sideY1_21,  &
      .FRS5_doe_8_LAUL.sideY1_22,  &
      .FRS5_doe_8_LAUL.sideY1_23,  &
      .FRS5_doe_8_LAUL.sideY1_24,  &
      .FRS5_doe_8_LAUL.sideY1_25,  &
      .FRS5_doe_8_LAUL.sideY1_26,  &
      .FRS5_doe_8_LAUL.sideY1_27,  &
      .FRS5_doe_8_LAUL.sideY1_28,  &
      .FRS5_doe_8_LAUL.sideY1_29,  &
      .FRS5_doe_8_LAUL.sideY1_30,  &
      .FRS5_doe_8_LAUL.sideY1_31,  &
      .FRS5_doe_8_LAUL.sideY1_32,  &
      .FRS5_doe_8_LAUL.sideY2_2,  &
      .FRS5_doe_8_LAUL.sideY2_3,  &
      .FRS5_doe_8_LAUL.sideY2_4,  &
      .FRS5_doe_8_LAUL.sideY2_5,  &
      .FRS5_doe_8_LAUL.sideY2_6,  &
      .FRS5_doe_8_LAUL.sideY2_7,  &
      .FRS5_doe_8_LAUL.sideY2_8,  &
      .FRS5_doe_8_LAUL.sideY2_9,  &
      .FRS5_doe_8_LAUL.sideY2_10,  &
      .FRS5_doe_8_LAUL.sideY2_11,  &
      .FRS5_doe_8_LAUL.sideY2_12,  &
      .FRS5_doe_8_LAUL.sideY2_13,  &
      .FRS5_doe_8_LAUL.sideY2_14,  &
      .FRS5_doe_8_LAUL.sideY2_15,  &
      .FRS5_doe_8_LAUL.sideY2_16,  &
      .FRS5_doe_8_LAUL.sideY2_17,  &
      .FRS5_doe_8_LAUL.sideY2_18,  &
      .FRS5_doe_8_LAUL.sideY2_19,  &
      .FRS5_doe_8_LAUL.sideY2_20,  &
      .FRS5_doe_8_LAUL.sideY2_21,  &
      .FRS5_doe_8_LAUL.sideY2_22,  &
      .FRS5_doe_8_LAUL.sideY2_23,  &
      .FRS5_doe_8_LAUL.sideY2_24,  &
      .FRS5_doe_8_LAUL.sideY2_25,  &
      .FRS5_doe_8_LAUL.sideY2_26,  &
      .FRS5_doe_8_LAUL.sideY2_27,  &
      .FRS5_doe_8_LAUL.sideY2_28,  &
      .FRS5_doe_8_LAUL.sideY2_29,  &
      .FRS5_doe_8_LAUL.sideY2_30
!
!---------------------------- Function definitions ----------------------------!
!
!
constraint modify motion_generator  &
   motion_name = .FRS5_doe_8_LAUL.InputRPM  &
   function = "VARVAL(.FRS5_doe_8_LAUL.LoadingRotation)+VARVAL(.FRS5_doe_8_LAUL.SpinUp)"
!
constraint modify motion_generator  &
   motion_name = .FRS5_doe_8_LAUL.feed_selector_position  &
   function = "-(.FRS5_doe_8_LAUL.feed_selector_throw)+STEP5(time,1.9,0,2,(.FRS5_doe_8_LAUL.feed_selector_throw))"
!
data_element modify variable  &
   variable_name = .FRS5_doe_8_LAUL.upper_surface  &
   function = "IF( MOD(AZ(.FRS5_doe_8_LAUL.upper_drive_shaftF.b3,.FRS5_doe_8_LAUL.mid_frameX.b4),PI/2) -85D:",  &
              "  STEP5( MOD(AZ(.FRS5_doe_8_LAUL.upper_drive_shaftF.b3,.FRS5_doe_8_LAUL.mid_frameX.b4),PI/2), 1D, 21, 85D, 28.57), 28.57,",  &
              "    STEP5( MOD(AZ(.FRS5_doe_8_LAUL.upper_drive_shaftF.b3,.FRS5_doe_8_LAUL.mid_frameX.b4),PI/2), 85D, 28.57, PI/2, 21)  )"
!
data_element modify variable  &
   variable_name = .FRS5_doe_8_LAUL.lower_surface  &
   function = "IF( MOD(AZ(.FRS5_doe_8_LAUL.mid_frameX.b1,.FRS5_doe_8_LAUL.lower_drive_shaftF.b2),PI/2) -89D:",  &
              "  STEP( MOD(AZ(.FRS5_doe_8_LAUL.mid_frameX.b1,.FRS5_doe_8_LAUL.lower_drive_shaftF.b2),PI/2), 0, 21, 89D, 28.57), 28.57,",  &
              "    STEP( MOD(AZ(.FRS5_doe_8_LAUL.mid_frameX.b1,.FRS5_doe_8_LAUL.lower_drive_shaftF.b2),PI/2), 89D, 28.57, 90D, 21)  )"
!
data_element modify variable  &
   variable_name = .FRS5_doe_8_LAUL.KU1fwd  &
   function = "STEP(DY(.FRS5_doe_8_LAUL.brassU1.fc,.FRS5_doe_8_LAUL.linkU1.fwd_center,.FRS5_doe_8_LAUL.linkU1.fwd_center),0,1,(.FRS5_doe_8_LAUL.link_pop),0)*(.FRS5_doe_8_LAUL.k_link)",  &
              " * IF( DZ(.FRS5_doe_8_LAUL.brassU1.fc,.FRS5_doe_8_LAUL.linkU1.fwd_center,.FRS5_doe_8_LAUL.linkU1.fwd_center)+20: 0,0,1)"
!
data_element modify variable  &
   variable_name = .FRS5_doe_8_LAUL.KU2fwd  &
   function = "STEP(DY(.FRS5_doe_8_LAUL.brassU2.fc,.FRS5_doe_8_LAUL.linkU2.fwd_center,.FRS5_doe_8_LAUL.linkU2.fwd_center),0,1,(.FRS5_doe_8_LAUL.link_pop),0)*(.FRS5_doe_8_LAUL.k_link)",  &
              "  * IF( DZ(.FRS5_doe_8_LAUL.brassU2.fc,.FRS5_doe_8_LAUL.linkU2.fwd_center,.FRS5_doe_8_LAUL.linkU2.fwd_center)+20: 0,0,1)"
!
data_element modify variable  &
   variable_name = .FRS5_doe_8_LAUL.KU3fwd  &
   function = "STEP(DY(.FRS5_doe_8_LAUL.brassU3.fc,.FRS5_doe_8_LAUL.linkU3.fwd_center,.FRS5_doe_8_LAUL.linkU3.fwd_center),0,1,(.FRS5_doe_8_LAUL.link_pop),0)*(.FRS5_doe_8_LAUL.k_link)",  &
              "  * IF( DZ(.FRS5_doe_8_LAUL.brassU3.fc,.FRS5_doe_8_LAUL.linkU3.fwd_center,.FRS5_doe_8_LAUL.linkU3.fwd_center)+20: 0,0,1)"
!
data_element modify variable  &
   variable_name = .FRS5_doe_8_LAUL.KU4fwd  &
   function = "STEP(DY(.FRS5_doe_8_LAUL.brassU4.fc,.FRS5_doe_8_LAUL.linkU4.fwd_center,.FRS5_doe_8_LAUL.linkU4.fwd_center),0,1,(.FRS5_doe_8_LAUL.link_pop),0)*(.FRS5_doe_8_LAUL.k_link)",  &
              "  * IF( DZ(.FRS5_doe_8_LAUL.brassU4.fc,.FRS5_doe_8_LAUL.linkU4.fwd_center,.FRS5_doe_8_LAUL.linkU4.fwd_center)+20: 0,0,1)"
!
data_element modify variable  &
   variable_name = .FRS5_doe_8_LAUL.KU4aft  &
   function = "STEP(DY(.FRS5_doe_8_LAUL.brassU4.ac,.FRS5_doe_8_LAUL.linkU4.aft_center,.FRS5_doe_8_LAUL.linkU4.aft_center),0,1,(.FRS5_doe_8_LAUL.link_pop),0)*(.FRS5_doe_8_LAUL.k_link)",  &
              "  * IF( DZ(.FRS5_doe_8_LAUL.brassU4.ac,.FRS5_doe_8_LAUL.linkU4.aft_center,.FRS5_doe_8_LAUL.linkU4.aft_center)+20: 0,0,1)"
!
data_element modify variable  &
   variable_name = .FRS5_doe_8_LAUL.KU3aft  &
   function = "STEP(DY(.FRS5_doe_8_LAUL.brassU3.ac,.FRS5_doe_8_LAUL.linkU3.aft_center,.FRS5_doe_8_LAUL.linkU3.aft_center),0,1,(.FRS5_doe_8_LAUL.link_pop),0)*(.FRS5_doe_8_LAUL.k_link)",  &
              "  * IF( DZ(.FRS5_doe_8_LAUL.brassU3.ac,.FRS5_doe_8_LAUL.linkU3.aft_center,.FRS5_doe_8_LAUL.linkU3.aft_center)+20: 0,0,1)"
!
data_element modify variable  &
   variable_name = .FRS5_doe_8_LAUL.KU2aft  &
   function = "STEP(DY(.FRS5_doe_8_LAUL.brassU2.ac,.FRS5_doe_8_LAUL.linkU2.aft_center,.FRS5_doe_8_LAUL.linkU2.aft_center),0,1,(.FRS5_doe_8_LAUL.link_pop),0)*(.FRS5_doe_8_LAUL.k_link)",  &
              "  * IF( DZ(.FRS5_doe_8_LAUL.brassU2.ac,.FRS5_doe_8_LAUL.linkU2.aft_center,.FRS5_doe_8_LAUL.linkU2.aft_center)+20: 0,0,1)"
!
data_element modify variable  &
   variable_name = .FRS5_doe_8_LAUL.KU1aft  &
   function = "STEP(DY(.FRS5_doe_8_LAUL.brassU1.ac,.FRS5_doe_8_LAUL.linkU1.aft_center,.FRS5_doe_8_LAUL.linkU1.aft_center),0,1,(.FRS5_doe_8_LAUL.link_pop),0)*(.FRS5_doe_8_LAUL.k_link)",  &
              "  * IF( DZ(.FRS5_doe_8_LAUL.brassU1.ac,.FRS5_doe_8_LAUL.linkU1.aft_center,.FRS5_doe_8_LAUL.linkU1.aft_center)+20: 0,0,1)"
!
data_element modify variable  &
   variable_name = .FRS5_doe_8_LAUL.KU1trail  &
   function = "STEP(DY(.FRS5_doe_8_LAUL.brassU2.tc,.FRS5_doe_8_LAUL.linkU1.trailing_center,.FRS5_doe_8_LAUL.linkU1.trailing_center),0,1,(.FRS5_doe_8_LAUL.link_pop),0)*(.FRS5_doe_8_LAUL.k_link)",  &
              "  * IF( DZ(.FRS5_doe_8_LAUL.brassU2.tc,.FRS5_doe_8_LAUL.linkU1.trailing_center,.FRS5_doe_8_LAUL.linkU1.trailing_center)+20: 0,0,1)"
!
data_element modify variable  &
   variable_name = .FRS5_doe_8_LAUL.KU2trail  &
   function = "STEP(DY(.FRS5_doe_8_LAUL.brassU3.tc,.FRS5_doe_8_LAUL.linkU2.trailing_center,.FRS5_doe_8_LAUL.linkU2.trailing_center),0,1,(.FRS5_doe_8_LAUL.link_pop),0)*(.FRS5_doe_8_LAUL.k_link)",  &
              "  * IF( DZ(.FRS5_doe_8_LAUL.brassU3.tc,.FRS5_doe_8_LAUL.linkU2.trailing_center,.FRS5_doe_8_LAUL.linkU2.trailing_center)+20: 0,0,1)"
!
data_element modify variable  &
   variable_name = .FRS5_doe_8_LAUL.KU3trail  &
   function = "STEP(DY(.FRS5_doe_8_LAUL.brassU4.tc,.FRS5_doe_8_LAUL.linkU3.trailing_center,.FRS5_doe_8_LAUL.linkU3.trailing_center),0,1,(.FRS5_doe_8_LAUL.link_pop),0)*(.FRS5_doe_8_LAUL.k_link)",  &
              "  * IF( DZ(.FRS5_doe_8_LAUL.brassU4.tc,.FRS5_doe_8_LAUL.linkU3.trailing_center,.FRS5_doe_8_LAUL.linkU3.trailing_center)+20: 0,0,1)"
!
data_element modify variable  &
   variable_name = .FRS5_doe_8_LAUL.KU4trail  &
   function = "STEP(DY(.FRS5_doe_8_LAUL.brassU5.tc,.FRS5_doe_8_LAUL.linkU4.trailing_center,.FRS5_doe_8_LAUL.linkU4.trailing_center),0,1,(.FRS5_doe_8_LAUL.link_pop),0)*(.FRS5_doe_8_LAUL.k_link)",  &
              "* IF( DZ(.FRS5_doe_8_LAUL.brassU5.tc,.FRS5_doe_8_LAUL.linkU4.trailing_center,.FRS5_doe_8_LAUL.linkU4.trailing_center)+20: 0,0,1)"
!
data_element modify variable  &
   variable_name = .FRS5_doe_8_LAUL.KU5aft  &
   function = "STEP(DY(.FRS5_doe_8_LAUL.brassU5.ac,.FRS5_doe_8_LAUL.linkU5.aft_center,.FRS5_doe_8_LAUL.linkU5.aft_center),0,1,(.FRS5_doe_8_LAUL.link_pop),0)*(.FRS5_doe_8_LAUL.k_link)",  &
              "* IF( DZ(.FRS5_doe_8_LAUL.brassU5.ac,.FRS5_doe_8_LAUL.linkU5.aft_center,.FRS5_doe_8_LAUL.linkU5.aft_center)+20: 0,0,1)"
!
data_element modify variable  &
   variable_name = .FRS5_doe_8_LAUL.KU5fwd  &
   function = "STEP(DY(.FRS5_doe_8_LAUL.brassU5.fc,.FRS5_doe_8_LAUL.linkU5.fwd_center,.FRS5_doe_8_LAUL.linkU5.fwd_center),0,1,(.FRS5_doe_8_LAUL.link_pop),0)*(.FRS5_doe_8_LAUL.k_link)",  &
              "* IF( DZ(.FRS5_doe_8_LAUL.brassU5.fc,.FRS5_doe_8_LAUL.linkU5.fwd_center,.FRS5_doe_8_LAUL.linkU5.fwd_center)+20: 0,0,1)"
!
data_element modify variable  &
   variable_name = .FRS5_doe_8_LAUL.TimeSinceUprStop  &
   function = "TIME-SENVAL(.FRS5_doe_8_LAUL.UprStopHit)"
!
data_element modify variable  &
   variable_name = .FRS5_doe_8_LAUL.LoadingRotation  &
   function = "-step(TIME,0,0,2,36*PI)"
!
data_element modify variable  &
   variable_name = .FRS5_doe_8_LAUL.SpinUp  &
   function = "IF(TIME-2.0: 0, 0, ",  &
              " -PI*IF((TIME-2.0-.1):-3E4*(TIME-2.0)**4 + ",  &
              "  6E3*(TIME-2.0)**3, 3, 3+60*(TIME-2.0-.1)))"
!
data_element modify variable  &
   variable_name = .FRS5_doe_8_LAUL.UprSwitch  &
   function = "STEP(DZ(.FRS5_doe_8_LAUL.feed_selector_arm.MARKER_35,.FRS5_doe_8_LAUL.rear_housing.MARKER_36,.FRS5_doe_8_LAUL.rear_housing.MARKER_36), (-.FRS5_doe_8_LAUL.feed_selector_throw*.98), 1, (-.FRS5_doe_8_LAUL.feed_selector_throw*.96), 0)"
!
data_element modify variable  &
   variable_name = .FRS5_doe_8_LAUL.LwrSwitch  &
   function = "STEP(DZ(.FRS5_doe_8_LAUL.feed_selector_arm.MARKER_35,.FRS5_doe_8_LAUL.rear_housing.MARKER_36,.FRS5_doe_8_LAUL.rear_housing.MARKER_36), (-.FRS5_doe_8_LAUL.feed_selector_throw*.04), 0, (-.FRS5_doe_8_LAUL.feed_selector_throw*.02), 1)"
!
data_element modify variable  &
   variable_name = .FRS5_doe_8_LAUL.KL2fwd  &
   function = "STEP(DY(.FRS5_doe_8_LAUL.brassL2.fc,.FRS5_doe_8_LAUL.linkL2.fwd_center,.FRS5_doe_8_LAUL.linkL2.fwd_center),0,1,(.FRS5_doe_8_LAUL.link_pop),0)",  &
              "*(.FRS5_doe_8_LAUL.k_link)",  &
              "* IF( DZ(.FRS5_doe_8_LAUL.brassL2.fc,.FRS5_doe_8_LAUL.linkL2.fwd_center,.FRS5_doe_8_LAUL.linkL2.fwd_center)+20: 0,0,1)"
!
data_element modify variable  &
   variable_name = .FRS5_doe_8_LAUL.KL3fwd  &
   function = "STEP(DY(.FRS5_doe_8_LAUL.brassL3.fc,.FRS5_doe_8_LAUL.linkL3.fwd_center,.FRS5_doe_8_LAUL.linkL3.fwd_center),0,1,(.FRS5_doe_8_LAUL.link_pop),0)",  &
              "*(.FRS5_doe_8_LAUL.k_link)",  &
              "* IF( DZ(.FRS5_doe_8_LAUL.brassL3.fc,.FRS5_doe_8_LAUL.linkL3.fwd_center,.FRS5_doe_8_LAUL.linkL3.fwd_center)+20: 0,0,1)"
!
data_element modify variable  &
   variable_name = .FRS5_doe_8_LAUL.KL4fwd  &
   function = "STEP(DY(.FRS5_doe_8_LAUL.brassL4.fc,.FRS5_doe_8_LAUL.linkL4.fwd_center,.FRS5_doe_8_LAUL.linkL4.fwd_center),0,1,(.FRS5_doe_8_LAUL.link_pop),0)",  &
              "*(.FRS5_doe_8_LAUL.k_link)",  &
              "* IF( DZ(.FRS5_doe_8_LAUL.brassL4.fc,.FRS5_doe_8_LAUL.linkL4.fwd_center,.FRS5_doe_8_LAUL.linkL4.fwd_center)+20: 0,0,1)"
!
data_element modify variable  &
   variable_name = .FRS5_doe_8_LAUL.KL5fwd  &
   function = "STEP(DY(.FRS5_doe_8_LAUL.brassL5.fc,.FRS5_doe_8_LAUL.linkL5.fwd_center,.FRS5_doe_8_LAUL.linkL5.fwd_center),0,1,(.FRS5_doe_8_LAUL.link_pop),0)",  &
              "*(.FRS5_doe_8_LAUL.k_link)",  &
              "* IF( DZ(.FRS5_doe_8_LAUL.brassL5.fc,.FRS5_doe_8_LAUL.linkL5.fwd_center,.FRS5_doe_8_LAUL.linkL5.fwd_center)+20: 0,0,1)"
!
data_element modify variable  &
   variable_name = .FRS5_doe_8_LAUL.KL2aft  &
   function = "STEP(DY(.FRS5_doe_8_LAUL.brassL2.ac,.FRS5_doe_8_LAUL.linkL2.aft_center,.FRS5_doe_8_LAUL.linkL2.aft_center),0,1,(.FRS5_doe_8_LAUL.link_pop),0)",  &
              "*(.FRS5_doe_8_LAUL.k_link)",  &
              "* IF( DZ(.FRS5_doe_8_LAUL.brassL2.ac,.FRS5_doe_8_LAUL.linkL2.aft_center,.FRS5_doe_8_LAUL.linkL2.aft_center)+20: 0,0,1)"
!
data_element modify variable  &
   variable_name = .FRS5_doe_8_LAUL.KL3aft  &
   function = "STEP(DY(.FRS5_doe_8_LAUL.brassL3.ac,.FRS5_doe_8_LAUL.linkL3.aft_center,.FRS5_doe_8_LAUL.linkL3.aft_center),0,1,(.FRS5_doe_8_LAUL.link_pop),0)",  &
              "*(.FRS5_doe_8_LAUL.k_link)",  &
              "* IF( DZ(.FRS5_doe_8_LAUL.brassL3.ac,.FRS5_doe_8_LAUL.linkL3.aft_center,.FRS5_doe_8_LAUL.linkL3.aft_center)+20: 0,0,1)"
!
data_element modify variable  &
   variable_name = .FRS5_doe_8_LAUL.KL4aft  &
   function = "STEP(DY(.FRS5_doe_8_LAUL.brassL4.ac,.FRS5_doe_8_LAUL.linkL4.aft_center,.FRS5_doe_8_LAUL.linkL4.aft_center),0,1,(.FRS5_doe_8_LAUL.link_pop),0)",  &
              "*(.FRS5_doe_8_LAUL.k_link)",  &
              "* IF( DZ(.FRS5_doe_8_LAUL.brassL4.ac,.FRS5_doe_8_LAUL.linkL4.aft_center,.FRS5_doe_8_LAUL.linkL4.aft_center)+20: 0,0,1)"
!
data_element modify variable  &
   variable_name = .FRS5_doe_8_LAUL.KL5aft  &
   function = "STEP(DY(.FRS5_doe_8_LAUL.brassL5.ac,.FRS5_doe_8_LAUL.linkL5.aft_center,.FRS5_doe_8_LAUL.linkL5.aft_center),0,1,(.FRS5_doe_8_LAUL.link_pop),0)",  &
              "*(.FRS5_doe_8_LAUL.k_link)",  &
              "* IF( DZ(.FRS5_doe_8_LAUL.brassL5.ac,.FRS5_doe_8_LAUL.linkL5.aft_center,.FRS5_doe_8_LAUL.linkL5.aft_center)+20: 0,0,1)"
!
data_element modify variable  &
   variable_name = .FRS5_doe_8_LAUL.KL3trail  &
   function = "STEP(DY(.FRS5_doe_8_LAUL.brassL2.tc,.FRS5_doe_8_LAUL.linkL3.trailing_center,.FRS5_doe_8_LAUL.linkL3.trailing_center),0,1,(.FRS5_doe_8_LAUL.link_pop),0)",  &
              "*(.FRS5_doe_8_LAUL.k_link)",  &
              "* IF( DZ(.FRS5_doe_8_LAUL.brassL2.tc,.FRS5_doe_8_LAUL.linkL3.trailing_center,.FRS5_doe_8_LAUL.linkL3.trailing_center)+20: 0,0,1)"
!
data_element modify variable  &
   variable_name = .FRS5_doe_8_LAUL.KL4trail  &
   function = "STEP(DY(.FRS5_doe_8_LAUL.brassL3.tc,.FRS5_doe_8_LAUL.linkL4.trailing_center,.FRS5_doe_8_LAUL.linkL4.trailing_center),0,1,(.FRS5_doe_8_LAUL.link_pop),0)",  &
              "*(.FRS5_doe_8_LAUL.k_link)",  &
              "* IF( DZ(.FRS5_doe_8_LAUL.brassL3.tc,.FRS5_doe_8_LAUL.linkL4.trailing_center,.FRS5_doe_8_LAUL.linkL4.trailing_center)+20: 0,0,1)"
!
data_element modify variable  &
   variable_name = .FRS5_doe_8_LAUL.KL5trail  &
   function = "STEP(DY(.FRS5_doe_8_LAUL.brassL4.tc,.FRS5_doe_8_LAUL.linkL5.trailing_center,.FRS5_doe_8_LAUL.linkL5.trailing_center),0,1,(.FRS5_doe_8_LAUL.link_pop),0)",  &
              "*(.FRS5_doe_8_LAUL.k_link)",  &
              "* IF( DZ(.FRS5_doe_8_LAUL.brassL4.tc,.FRS5_doe_8_LAUL.linkL5.trailing_center,.FRS5_doe_8_LAUL.linkL5.trailing_center)+20: 0,0,1)"
!
measure modify function  &
   measure_name = .FRS5_doe_8_LAUL.spring_stress_U2  &
   function = "BEAM(.FRS5_doe_8_LAUL.s1_beamY_2, 1, 8, .FRS5_doe_8_LAUL.sideY1_2.beamY_s1_2a) *6/24.0/1.016**2 * 145.03774 "
!
measure modify function  &
   measure_name = .FRS5_doe_8_LAUL.spring_stress_U3  &
   function = "BEAM(.FRS5_doe_8_LAUL.s1_beamY_3, 1, 8, .FRS5_doe_8_LAUL.sideY1_3.beamY_s1_3a) *6/24.0/1.016**2 * 145.03774 "
!
measure modify function  &
   measure_name = .FRS5_doe_8_LAUL.spring_stress_U4  &
   function = "BEAM(.FRS5_doe_8_LAUL.s1_beamY_4, 1, 8, .FRS5_doe_8_LAUL.sideY1_4.beamY_s1_4a) *6/24.0/1.016**2 * 145.03774 "
!
measure modify function  &
   measure_name = .FRS5_doe_8_LAUL.spring_stress_U5  &
   function = "BEAM(.FRS5_doe_8_LAUL.s1_beamY_5, 1, 8, .FRS5_doe_8_LAUL.sideY1_5.beamY_s1_5a) *6/24.0/1.016**2 * 145.03774 "
!
measure modify function  &
   measure_name = .FRS5_doe_8_LAUL.spring_stress_U6  &
   function = "BEAM(.FRS5_doe_8_LAUL.s1_beamY_6, 1, 8, .FRS5_doe_8_LAUL.sideY1_6.beamY_s1_6a) *6/24.0/1.016**2 * 145.03774 "
!
measure modify function  &
   measure_name = .FRS5_doe_8_LAUL.spring_stress_U7  &
   function = "BEAM(.FRS5_doe_8_LAUL.s1_beamY_7, 1, 8, .FRS5_doe_8_LAUL.sideY1_7.beamY_s1_7a) *6/24.0/1.016**2 * 145.03774 "
!
measure modify function  &
   measure_name = .FRS5_doe_8_LAUL.spring_stress_U8  &
   function = "BEAM(.FRS5_doe_8_LAUL.s1_beamY_8, 1, 8, .FRS5_doe_8_LAUL.sideY1_8.beamY_s1_8a) *6/24.0/1.016**2 * 145.03774 "
!
measure modify function  &
   measure_name = .FRS5_doe_8_LAUL.spring_stress_U9  &
   function = "BEAM(.FRS5_doe_8_LAUL.s1_beamY_9, 1, 8, .FRS5_doe_8_LAUL.sideY1_9.beamY_s1_9a) *6/24.0/1.016**2 * 145.03774 "
!
measure modify function  &
   measure_name = .FRS5_doe_8_LAUL.spring_stress_U10  &
   function = "BEAM(.FRS5_doe_8_LAUL.s1_beamY_10, 1, 8, .FRS5_doe_8_LAUL.sideY1_10.beamY_s1_10a) *6/24.0/1.016**2 * 145.03774 "
!
measure modify function  &
   measure_name = .FRS5_doe_8_LAUL.spring_stress_U11  &
   function = "BEAM(.FRS5_doe_8_LAUL.s1_beamY_11, 1, 8, .FRS5_doe_8_LAUL.sideY1_11.beamY_s1_11a) *6/24.0/1.016**2 * 145.03774 "
!
measure modify function  &
   measure_name = .FRS5_doe_8_LAUL.spring_stress_U12  &
   function = "BEAM(.FRS5_doe_8_LAUL.s1_beamY_12, 1, 8, .FRS5_doe_8_LAUL.sideY1_12.beamY_s1_12a) *6/24.0/1.016**2 * 145.03774 "
!
measure modify function  &
   measure_name = .FRS5_doe_8_LAUL.spring_stress_U13  &
   function = "BEAM(.FRS5_doe_8_LAUL.s1_beamY_13, 1, 8, .FRS5_doe_8_LAUL.sideY1_13.beamY_s1_13a) *6/24.0/1.016**2 * 145.03774 "
!
measure modify function  &
   measure_name = .FRS5_doe_8_LAUL.spring_stress_U14  &
   function = "BEAM(.FRS5_doe_8_LAUL.s1_beamY_14, 1, 8, .FRS5_doe_8_LAUL.sideY1_14.beamY_s1_14a) *6/24.0/1.016**2 * 145.03774 "
!
measure modify function  &
   measure_name = .FRS5_doe_8_LAUL.spring_stress_U15  &
   function = "BEAM(.FRS5_doe_8_LAUL.s1_beamY_15, 1, 8, .FRS5_doe_8_LAUL.sideY1_15.beamY_s1_15a) *6/24.0/1.016**2 * 145.03774 "
!
measure modify function  &
   measure_name = .FRS5_doe_8_LAUL.spring_stress_U16  &
   function = "BEAM(.FRS5_doe_8_LAUL.s1_beamY_16, 1, 8, .FRS5_doe_8_LAUL.sideY1_16.beamY_s1_16a) *6/24.0/1.016**2 * 145.03774 "
!
measure modify function  &
   measure_name = .FRS5_doe_8_LAUL.spring_stress_U17  &
   function = "BEAM(.FRS5_doe_8_LAUL.s1_beamY_17, 1, 8, .FRS5_doe_8_LAUL.sideY1_17.beamY_s1_17a) *6/24.0/1.016**2 * 145.03774 "
!
measure modify function  &
   measure_name = .FRS5_doe_8_LAUL.spring_stress_U18  &
   function = "BEAM(.FRS5_doe_8_LAUL.s1_beamY_18, 1, 8, .FRS5_doe_8_LAUL.sideY1_18.beamY_s1_18a) *6/24.0/1.016**2 * 145.03774 "
!
measure modify function  &
   measure_name = .FRS5_doe_8_LAUL.spring_stress_U19  &
   function = "BEAM(.FRS5_doe_8_LAUL.s1_beamY_19, 1, 8, .FRS5_doe_8_LAUL.sideY1_19.beamY_s1_19a) *6/24.0/1.016**2 * 145.03774 "
!
measure modify function  &
   measure_name = .FRS5_doe_8_LAUL.spring_stress_U20  &
   function = "BEAM(.FRS5_doe_8_LAUL.s1_beamY_20, 1, 8, .FRS5_doe_8_LAUL.sideY1_20.beamY_s1_20a) *6/24.0/1.016**2 * 145.03774 "
!
measure modify function  &
   measure_name = .FRS5_doe_8_LAUL.spring_stress_U21  &
   function = "BEAM(.FRS5_doe_8_LAUL.s1_beamY_21, 1, 8, .FRS5_doe_8_LAUL.sideY1_21.beamY_s1_21a) *6/24.0/1.016**2 * 145.03774 "
!
measure modify function  &
   measure_name = .FRS5_doe_8_LAUL.spring_stress_U22  &
   function = "BEAM(.FRS5_doe_8_LAUL.s1_beamY_22, 1, 8, .FRS5_doe_8_LAUL.sideY1_22.beamY_s1_22a) *6/24.0/1.016**2 * 145.03774 "
!
measure modify function  &
   measure_name = .FRS5_doe_8_LAUL.spring_stress_U23  &
   function = "BEAM(.FRS5_doe_8_LAUL.s1_beamY_23, 1, 8, .FRS5_doe_8_LAUL.sideY1_23.beamY_s1_23a) *6/24.0/1.016**2 * 145.03774 "
!
measure modify function  &
   measure_name = .FRS5_doe_8_LAUL.spring_stress_U24  &
   function = "BEAM(.FRS5_doe_8_LAUL.s1_beamY_24, 1, 8, .FRS5_doe_8_LAUL.sideY1_24.beamY_s1_24a) *6/24.0/1.016**2 * 145.03774 "
!
measure modify function  &
   measure_name = .FRS5_doe_8_LAUL.spring_stress_U25  &
   function = "BEAM(.FRS5_doe_8_LAUL.s1_beamY_25, 1, 8, .FRS5_doe_8_LAUL.sideY1_25.beamY_s1_25a) *6/24.0/1.016**2 * 145.03774 "
!
measure modify function  &
   measure_name = .FRS5_doe_8_LAUL.spring_stress_U26  &
   function = "BEAM(.FRS5_doe_8_LAUL.s1_beamY_26, 1, 8, .FRS5_doe_8_LAUL.sideY1_26.beamY_s1_26a) *6/24.0/1.016**2 * 145.03774 "
!
measure modify function  &
   measure_name = .FRS5_doe_8_LAUL.spring_stress_U27  &
   function = "BEAM(.FRS5_doe_8_LAUL.s1_beamY_27, 1, 8, .FRS5_doe_8_LAUL.sideY1_27.beamY_s1_27a) *6/24.0/1.016**2 * 145.03774 "
!
measure modify function  &
   measure_name = .FRS5_doe_8_LAUL.spring_stress_U28  &
   function = "BEAM(.FRS5_doe_8_LAUL.s1_beamY_28, 1, 8, .FRS5_doe_8_LAUL.sideY1_28.beamY_s1_28a) *6/24.0/1.016**2 * 145.03774 "
!
measure modify function  &
   measure_name = .FRS5_doe_8_LAUL.spring_stress_U29  &
   function = "BEAM(.FRS5_doe_8_LAUL.s1_beamY_29, 1, 8, .FRS5_doe_8_LAUL.sideY1_29.beamY_s1_29a) *6/24.0/1.016**2 * 145.03774 "
!
measure modify function  &
   measure_name = .FRS5_doe_8_LAUL.spring_stress_U30  &
   function = "BEAM(.FRS5_doe_8_LAUL.s1_beamY_30, 1, 8, .FRS5_doe_8_LAUL.sideY1_30.beamY_s1_30a) *6/24.0/1.016**2 * 145.03774 "
!
measure modify function  &
   measure_name = .FRS5_doe_8_LAUL.spring_stress_U31  &
   function = "BEAM(.FRS5_doe_8_LAUL.s1_beamY_31, 1, 8, .FRS5_doe_8_LAUL.sideY1_31.beamY_s1_31a) *6/24.0/1.016**2 * 145.03774 "
!
measure modify function  &
   measure_name = .FRS5_doe_8_LAUL.spring_stress_L2  &
   function = "BEAM(.FRS5_doe_8_LAUL.s2_beamY_2, 1, 8, .FRS5_doe_8_LAUL.sideY2_2.beamY_s2_2a) *6/24.0/1.016**2 * 145.03774 "
!
measure modify function  &
   measure_name = .FRS5_doe_8_LAUL.spring_stress_L3  &
   function = "BEAM(.FRS5_doe_8_LAUL.s2_beamY_3, 1, 8, .FRS5_doe_8_LAUL.sideY2_3.beamY_s2_3a) *6/24.0/1.016**2 * 145.03774 "
!
measure modify function  &
   measure_name = .FRS5_doe_8_LAUL.spring_stress_L4  &
   function = "BEAM(.FRS5_doe_8_LAUL.s2_beamY_4, 1, 8, .FRS5_doe_8_LAUL.sideY2_4.beamY_s2_4a) *6/24.0/1.016**2 * 145.03774 "
!
measure modify function  &
   measure_name = .FRS5_doe_8_LAUL.spring_stress_L5  &
   function = "BEAM(.FRS5_doe_8_LAUL.s2_beamY_5, 1, 8, .FRS5_doe_8_LAUL.sideY2_5.beamY_s2_5a) *6/24.0/1.016**2 * 145.03774 "
!
measure modify function  &
   measure_name = .FRS5_doe_8_LAUL.spring_stress_L6  &
   function = "BEAM(.FRS5_doe_8_LAUL.s2_beamY_6, 1, 8, .FRS5_doe_8_LAUL.sideY2_6.beamY_s2_6a) *6/24.0/1.016**2 * 145.03774 "
!
measure modify function  &
   measure_name = .FRS5_doe_8_LAUL.spring_stress_L7  &
   function = "BEAM(.FRS5_doe_8_LAUL.s2_beamY_7, 1, 8, .FRS5_doe_8_LAUL.sideY2_7.beamY_s2_7a) *6/24.0/1.016**2 * 145.03774 "
!
measure modify function  &
   measure_name = .FRS5_doe_8_LAUL.spring_stress_L8  &
   function = "BEAM(.FRS5_doe_8_LAUL.s2_beamY_8, 1, 8, .FRS5_doe_8_LAUL.sideY2_8.beamY_s2_8a) *6/24.0/1.016**2 * 145.03774 "
!
measure modify function  &
   measure_name = .FRS5_doe_8_LAUL.spring_stress_L9  &
   function = "BEAM(.FRS5_doe_8_LAUL.s2_beamY_9, 1, 8, .FRS5_doe_8_LAUL.sideY2_9.beamY_s2_9a) *6/24.0/1.016**2 * 145.03774 "
!
measure modify function  &
   measure_name = .FRS5_doe_8_LAUL.spring_stress_L10  &
   function = "BEAM(.FRS5_doe_8_LAUL.s2_beamY_10, 1, 8, .FRS5_doe_8_LAUL.sideY2_10.beamY_s2_10a) *6/24.0/1.016**2 * 145.03774 "
!
measure modify function  &
   measure_name = .FRS5_doe_8_LAUL.spring_stress_L11  &
   function = "BEAM(.FRS5_doe_8_LAUL.s2_beamY_11, 1, 8, .FRS5_doe_8_LAUL.sideY2_11.beamY_s2_11a) *6/24.0/1.016**2 * 145.03774 "
!
measure modify function  &
   measure_name = .FRS5_doe_8_LAUL.spring_stress_L12  &
   function = "BEAM(.FRS5_doe_8_LAUL.s2_beamY_12, 1, 8, .FRS5_doe_8_LAUL.sideY2_12.beamY_s2_12a) *6/24.0/1.016**2 * 145.03774 "
!
measure modify function  &
   measure_name = .FRS5_doe_8_LAUL.spring_stress_L13  &
   function = "BEAM(.FRS5_doe_8_LAUL.s2_beamY_13, 1, 8, .FRS5_doe_8_LAUL.sideY2_13.beamY_s2_13a) *6/24.0/1.016**2 * 145.03774 "
!
measure modify function  &
   measure_name = .FRS5_doe_8_LAUL.spring_stress_L14  &
   function = "BEAM(.FRS5_doe_8_LAUL.s2_beamY_14, 1, 8, .FRS5_doe_8_LAUL.sideY2_14.beamY_s2_14a) *6/24.0/1.016**2 * 145.03774 "
!
measure modify function  &
   measure_name = .FRS5_doe_8_LAUL.spring_stress_L15  &
   function = "BEAM(.FRS5_doe_8_LAUL.s2_beamY_15, 1, 8, .FRS5_doe_8_LAUL.sideY2_15.beamY_s2_15a) *6/24.0/1.016**2 * 145.03774 "
!
measure modify function  &
   measure_name = .FRS5_doe_8_LAUL.spring_stress_L16  &
   function = "BEAM(.FRS5_doe_8_LAUL.s2_beamY_16, 1, 8, .FRS5_doe_8_LAUL.sideY2_16.beamY_s2_16a) *6/24.0/1.016**2 * 145.03774 "
!
measure modify function  &
   measure_name = .FRS5_doe_8_LAUL.spring_stress_L17  &
   function = "BEAM(.FRS5_doe_8_LAUL.s2_beamY_17, 1, 8, .FRS5_doe_8_LAUL.sideY2_17.beamY_s2_17a) *6/24.0/1.016**2 * 145.03774 "
!
measure modify function  &
   measure_name = .FRS5_doe_8_LAUL.spring_stress_L18  &
   function = "BEAM(.FRS5_doe_8_LAUL.s2_beamY_18, 1, 8, .FRS5_doe_8_LAUL.sideY2_18.beamY_s2_18a) *6/24.0/1.016**2 * 145.03774 "
!
measure modify function  &
   measure_name = .FRS5_doe_8_LAUL.spring_stress_L19  &
   function = "BEAM(.FRS5_doe_8_LAUL.s2_beamY_19, 1, 8, .FRS5_doe_8_LAUL.sideY2_19.beamY_s2_19a) *6/24.0/1.016**2 * 145.03774 "
!
measure modify function  &
   measure_name = .FRS5_doe_8_LAUL.spring_stress_L20  &
   function = "BEAM(.FRS5_doe_8_LAUL.s2_beamY_20, 1, 8, .FRS5_doe_8_LAUL.sideY2_20.beamY_s2_20a) *6/24.0/1.016**2 * 145.03774 "
!
measure modify function  &
   measure_name = .FRS5_doe_8_LAUL.spring_stress_L21  &
   function = "BEAM(.FRS5_doe_8_LAUL.s2_beamY_21, 1, 8, .FRS5_doe_8_LAUL.sideY2_21.beamY_s2_21a) *6/24.0/1.016**2 * 145.03774 "
!
measure modify function  &
   measure_name = .FRS5_doe_8_LAUL.spring_stress_L22  &
   function = "BEAM(.FRS5_doe_8_LAUL.s2_beamY_22, 1, 8, .FRS5_doe_8_LAUL.sideY2_22.beamY_s2_22a) *6/24.0/1.016**2 * 145.03774 "
!
measure modify function  &
   measure_name = .FRS5_doe_8_LAUL.spring_stress_L23  &
   function = "BEAM(.FRS5_doe_8_LAUL.s2_beamY_23, 1, 8, .FRS5_doe_8_LAUL.sideY2_23.beamY_s2_23a) *6/24.0/1.016**2 * 145.03774 "
!
measure modify function  &
   measure_name = .FRS5_doe_8_LAUL.spring_stress_L24  &
   function = "BEAM(.FRS5_doe_8_LAUL.s2_beamY_24, 1, 8, .FRS5_doe_8_LAUL.sideY2_24.beamY_s2_24a) *6/24.0/1.016**2 * 145.03774 "
!
measure modify function  &
   measure_name = .FRS5_doe_8_LAUL.spring_stress_L25  &
   function = "BEAM(.FRS5_doe_8_LAUL.s2_beamY_25, 1, 8, .FRS5_doe_8_LAUL.sideY2_25.beamY_s2_25a) *6/24.0/1.016**2 * 145.03774 "
!
measure modify function  &
   measure_name = .FRS5_doe_8_LAUL.spring_stress_L26  &
   function = "BEAM(.FRS5_doe_8_LAUL.s2_beamY_26, 1, 8, .FRS5_doe_8_LAUL.sideY2_26.beamY_s2_26a) *6/24.0/1.016**2 * 145.03774 "
!
measure modify function  &
   measure_name = .FRS5_doe_8_LAUL.spring_stress_L27  &
   function = "BEAM(.FRS5_doe_8_LAUL.s2_beamY_27, 1, 8, .FRS5_doe_8_LAUL.sideY2_27.beamY_s2_27a) *6/24.0/1.016**2 * 145.03774 "
!
measure modify function  &
   measure_name = .FRS5_doe_8_LAUL.spring_stress_L28  &
   function = "BEAM(.FRS5_doe_8_LAUL.s2_beamY_28, 1, 8, .FRS5_doe_8_LAUL.sideY2_28.beamY_s2_28a) *6/24.0/1.016**2 * 145.03774 "
!
measure modify function  &
   measure_name = .FRS5_doe_8_LAUL.spring_stress_L29  &
   function = "BEAM(.FRS5_doe_8_LAUL.s2_beamY_29, 1, 8, .FRS5_doe_8_LAUL.sideY2_29.beamY_s2_29a) *6/24.0/1.016**2 * 145.03774 "
!
measure modify function  &
   measure_name = .FRS5_doe_8_LAUL.clutch_torque_upper  &
   function = "TZ(.FRS5_doe_8_LAUL.upper_drivegearF.MARKER_42,.FRS5_doe_8_LAUL.mid_frameX.MARKER_41,.FRS5_doe_8_LAUL.mid_frameX.MARKER_41)*0.000737562149*6 "
!
measure modify function  &
   measure_name = .FRS5_doe_8_LAUL.clutch_torque_lower  &
   function = "TZ(.FRS5_doe_8_LAUL.mid_frameX.MARKER_43,.FRS5_doe_8_LAUL.lower_drivegearF.MARKER_44,.FRS5_doe_8_LAUL.mid_frameX.MARKER_43)*0.000737562149*6 "
!
part modify equation differential_equation  &
   differential_equation_name = .FRS5_doe_8_LAUL.upper_clutch_penetration  &
   function = "MIN(WZ(.FRS5_doe_8_LAUL.upper_dogs.dog_start,.FRS5_doe_8_LAUL.upper_drivegearF.aft_center_ref,.FRS5_doe_8_LAUL.upper_drivegearF.aft_center_ref),0)"
!
part modify equation differential_equation  &
   differential_equation_name = .FRS5_doe_8_LAUL.UprDriveRotation  &
   function = "VARVAL(.FRS5_doe_8_LAUL.LwrSwitch)*WZ(.FRS5_doe_8_LAUL.upper_drivegearF.MARKER_42,.FRS5_doe_8_LAUL.mid_frameX.MARKER_41,.FRS5_doe_8_LAUL.mid_frameX.MARKER_41)"
!
part modify equation differential_equation  &
   differential_equation_name = .FRS5_doe_8_LAUL.lower_shaft_disp  &
   function = "IF(TIME-1.99: WZ(.FRS5_doe_8_LAUL.lower_drivegearF.aft_center_ref,.FRS5_doe_8_LAUL.lower_dogs.dog_start,.FRS5_doe_8_LAUL.lower_dogs.dog_start),0,0)"
!
part modify equation differential_equation  &
   differential_equation_name = .FRS5_doe_8_LAUL.LwrDriveRotation  &
   function = "VARVAL(.FRS5_doe_8_LAUL.UprSwitch)*WZ(.FRS5_doe_8_LAUL.lower_drivegearF.MARKER_44,.FRS5_doe_8_LAUL.mid_frameX.MARKER_43,.FRS5_doe_8_LAUL.mid_frameX.MARKER_43)"
!
part modify equation differential_equation  &
   differential_equation_name = .FRS5_doe_8_LAUL.dwell_time_1_diff  &
   function = "if(WM(.FRS5_doe_8_LAUL.feed_rotorF.cm)-500*dtor:if(sqrt(DX(.FRS5_doe_8_LAUL.brassL1.cm, .FRS5_doe_8_LAUL.ground.feed_pocket_ref)**2+DZ(.FRS5_doe_8_LAUL.brassL1.cm, .FRS5_doe_8_LAUL.ground.feed_pocket_ref)**2)+21.75-23:1,1,0),0,0)"
!
part modify equation differential_equation  &
   differential_equation_name = .FRS5_doe_8_LAUL.dwell_time_2_diff  &
   function = "if(WM(.FRS5_doe_8_LAUL.feed_rotorF.cm)-500*dtor:if(sqrt(DX(.FRS5_doe_8_LAUL.brassL2.cm, .FRS5_doe_8_LAUL.ground.feed_pocket_ref)**2+DZ(.FRS5_doe_8_LAUL.brassL2.cm, .FRS5_doe_8_LAUL.ground.feed_pocket_ref)**2)+21.75-23:1,1,0),0,0)"
!
part modify equation differential_equation  &
   differential_equation_name = .FRS5_doe_8_LAUL.dwell_time_3_diff  &
   function = "if(WM(.FRS5_doe_8_LAUL.feed_rotorF.cm)-500*dtor:if(sqrt(DX(.FRS5_doe_8_LAUL.brassL3.cm, .FRS5_doe_8_LAUL.ground.feed_pocket_ref)**2+DZ(.FRS5_doe_8_LAUL.brassL3.cm, .FRS5_doe_8_LAUL.ground.feed_pocket_ref)**2)+21.75-23:1,1,0),0,0)"
!
part modify equation differential_equation  &
   differential_equation_name = .FRS5_doe_8_LAUL.dwell_time_4_diff  &
   function = "if(WM(.FRS5_doe_8_LAUL.feed_rotorF.cm)-500*dtor:if(sqrt(DX(.FRS5_doe_8_LAUL.brassL4.cm, .FRS5_doe_8_LAUL.ground.feed_pocket_ref)**2+DZ(.FRS5_doe_8_LAUL.brassL4.cm, .FRS5_doe_8_LAUL.ground.feed_pocket_ref)**2)+21.75-23:1,1,0),0,0)"
!
part modify equation differential_equation  &
   differential_equation_name = .FRS5_doe_8_LAUL.dwell_time_5_diff  &
   function = "if(WM(.FRS5_doe_8_LAUL.feed_rotorF.cm)-500*dtor:if(sqrt(DX(.FRS5_doe_8_LAUL.brassL5.cm, .FRS5_doe_8_LAUL.ground.feed_pocket_ref)**2+DZ(.FRS5_doe_8_LAUL.brassL5.cm, .FRS5_doe_8_LAUL.ground.feed_pocket_ref)**2)+21.75-23:1,1,0),0,0)"
!
part modify equation differential_equation  &
   differential_equation_name = .FRS5_doe_8_LAUL.round_control_1_diff  &
   function = "if(sqrt(DX(.FRS5_doe_8_LAUL.brassL1.cm, .FRS5_doe_8_LAUL.ground.feed_boundary_ref)**2+DZ(.FRS5_doe_8_LAUL.brassL1.cm, .FRS5_doe_8_LAUL.ground.feed_pocket_ref)**2)-56:if(CONTACT(.FRS5_doe_8_LAUL.BL_1_c2g, 0, 1, 0)+CONTACT(.FRS5_doe_8_LAUL.BL_1_c5g, 0, 1, 0):0,0,1),0,0)"
!
part modify equation differential_equation  &
   differential_equation_name = .FRS5_doe_8_LAUL.round_control_2_diff  &
   function = "if(sqrt(DX(.FRS5_doe_8_LAUL.brassL2.cm, .FRS5_doe_8_LAUL.ground.feed_boundary_ref)**2+DZ(.FRS5_doe_8_LAUL.brassL2.cm, .FRS5_doe_8_LAUL.ground.feed_pocket_ref)**2)-56:if(CONTACT(.FRS5_doe_8_LAUL.BL_2_c2g, 0, 1, 0)+CONTACT(.FRS5_doe_8_LAUL.BL_2_c5g, 0, 1, 0):0,0,1),0,0)"
!
part modify equation differential_equation  &
   differential_equation_name = .FRS5_doe_8_LAUL.round_control_3_diff  &
   function = "if(sqrt(DX(.FRS5_doe_8_LAUL.brassL3.cm, .FRS5_doe_8_LAUL.ground.feed_boundary_ref)**2+DZ(.FRS5_doe_8_LAUL.brassL3.cm, .FRS5_doe_8_LAUL.ground.feed_pocket_ref)**2)-56:if(CONTACT(.FRS5_doe_8_LAUL.BL_3_c2g, 0, 1, 0)+CONTACT(.FRS5_doe_8_LAUL.BL_3_c5g, 0, 1, 0):0,0,1),0,0)"
!
part modify equation differential_equation  &
   differential_equation_name = .FRS5_doe_8_LAUL.round_control_4_diff  &
   function = "if(sqrt(DX(.FRS5_doe_8_LAUL.brassL4.cm, .FRS5_doe_8_LAUL.ground.feed_boundary_ref)**2+DZ(.FRS5_doe_8_LAUL.brassL4.cm, .FRS5_doe_8_LAUL.ground.feed_pocket_ref)**2)-56:if(CONTACT(.FRS5_doe_8_LAUL.BL_4_c2g, 0, 1, 0)+CONTACT(.FRS5_doe_8_LAUL.BL_4_c5g, 0, 1, 0):0,0,1),0,0)"
!
part modify equation differential_equation  &
   differential_equation_name = .FRS5_doe_8_LAUL.round_control_5_diff  &
   function = "if(sqrt(DX(.FRS5_doe_8_LAUL.brassL5.cm, .FRS5_doe_8_LAUL.ground.feed_boundary_ref)**2+DZ(.FRS5_doe_8_LAUL.brassL5.cm, .FRS5_doe_8_LAUL.ground.feed_pocket_ref)**2)-56:if(CONTACT(.FRS5_doe_8_LAUL.BL_5_c2g, 0, 1, 0)+CONTACT(.FRS5_doe_8_LAUL.BL_5_c5g, 0, 1, 0):0,0,1),0,0)"
!
force modify direct single_component_force  &
   single_component_force_name = .FRS5_doe_8_LAUL.feed_rotor_drag  &
   function = "-0.25*WZ(.FRS5_doe_8_LAUL.rotor_shaftF.MARKER_1181,.FRS5_doe_8_LAUL.mid_frameX.MARKER_1182,.FRS5_doe_8_LAUL.mid_frameX.MARKER_1182)"
!
force modify direct single_component_force  &
   single_component_force_name = .FRS5_doe_8_LAUL.upper_clutch  &
   function = " -1E6*(AZ(.FRS5_doe_8_LAUL.upper_drivegearF.aft_center_ref,.FRS5_doe_8_LAUL.upper_dogs.dog_start)-DIF(.FRS5_doe_8_LAUL.UprDriveRotation))",  &
              "  -1E3*WZ(.FRS5_doe_8_LAUL.upper_drivegearF.aft_center_ref,.FRS5_doe_8_LAUL.upper_dogs.dog_start,.FRS5_doe_8_LAUL.upper_dogs.dog_start)"
!
force modify direct single_component_force  &
   single_component_force_name = .FRS5_doe_8_LAUL.lower_clutch  &
   function = "-1E6*(AZ(.FRS5_doe_8_LAUL.lower_drivegearF.aft_center_ref,.FRS5_doe_8_LAUL.lower_dogs.dog_start)-DIF(.FRS5_doe_8_LAUL.LwrDriveRotation))",  &
              " -1E3*WZ(.FRS5_doe_8_LAUL.lower_drivegearF.aft_center_ref,.FRS5_doe_8_LAUL.lower_dogs.dog_start,.FRS5_doe_8_LAUL.lower_dogs.dog_start)"
!
force modify direct single_component_force  &
   single_component_force_name = .FRS5_doe_8_LAUL.rollY2_13  &
   function = "IMPACT( DM(.FRS5_doe_8_LAUL.sideY2_13.beamY_s2_13a,.FRS5_doe_8_LAUL.lower_drive_shaftF.lscenter), VR(.FRS5_doe_8_LAUL.sideY2_13.beamY_s2_13a,.FRS5_doe_8_LAUL.lower_drive_shaftF.lscenter),10.508, 1E5, 1.5, 1E2, .001 )"
!
force modify direct single_component_force  &
   single_component_force_name = .FRS5_doe_8_LAUL.rollY2_14  &
   function = "IMPACT( DM(.FRS5_doe_8_LAUL.sideY2_14.beamY_s2_14a,.FRS5_doe_8_LAUL.lower_drive_shaftF.lscenter), VR(.FRS5_doe_8_LAUL.sideY2_14.beamY_s2_14a,.FRS5_doe_8_LAUL.lower_drive_shaftF.lscenter),10.508, 1E5, 1.5, 1E2, .001 )"
!
force modify direct single_component_force  &
   single_component_force_name = .FRS5_doe_8_LAUL.rollY2_15  &
   function = "IMPACT( DM(.FRS5_doe_8_LAUL.sideY2_15.beamY_s2_15a,.FRS5_doe_8_LAUL.lower_drive_shaftF.lscenter), VR(.FRS5_doe_8_LAUL.sideY2_15.beamY_s2_15a,.FRS5_doe_8_LAUL.lower_drive_shaftF.lscenter),10.508, 1E5, 1.5, 1E2, .001 )"
!
force modify direct single_component_force  &
   single_component_force_name = .FRS5_doe_8_LAUL.rollY2_16  &
   function = "IMPACT( DM(.FRS5_doe_8_LAUL.sideY2_16.beamY_s2_16a,.FRS5_doe_8_LAUL.lower_drive_shaftF.lscenter), VR(.FRS5_doe_8_LAUL.sideY2_16.beamY_s2_16a,.FRS5_doe_8_LAUL.lower_drive_shaftF.lscenter),10.508, 1E5, 1.5, 1E2, .001 )"
!
force modify direct single_component_force  &
   single_component_force_name = .FRS5_doe_8_LAUL.rollY2_17  &
   function = "IMPACT( DM(.FRS5_doe_8_LAUL.sideY2_17.beamY_s2_17a,.FRS5_doe_8_LAUL.lower_drive_shaftF.lscenter), VR(.FRS5_doe_8_LAUL.sideY2_17.beamY_s2_17a,.FRS5_doe_8_LAUL.lower_drive_shaftF.lscenter),10.508, 1E5, 1.5, 1E2, .001 )"
!
force modify direct single_component_force  &
   single_component_force_name = .FRS5_doe_8_LAUL.rollY2_18  &
   function = "IMPACT( DM(.FRS5_doe_8_LAUL.sideY2_18.beamY_s2_18a,.FRS5_doe_8_LAUL.lower_drive_shaftF.lscenter), VR(.FRS5_doe_8_LAUL.sideY2_18.beamY_s2_18a,.FRS5_doe_8_LAUL.lower_drive_shaftF.lscenter),10.508, 1E5, 1.5, 1E2, .001 )"
!
force modify direct single_component_force  &
   single_component_force_name = .FRS5_doe_8_LAUL.rollY2_19  &
   function = "IMPACT( DM(.FRS5_doe_8_LAUL.sideY2_19.beamY_s2_19a,.FRS5_doe_8_LAUL.lower_drive_shaftF.lscenter), VR(.FRS5_doe_8_LAUL.sideY2_19.beamY_s2_19a,.FRS5_doe_8_LAUL.lower_drive_shaftF.lscenter),10.508, 1E5, 1.5, 1E2, .001 )"
!
force modify direct single_component_force  &
   single_component_force_name = .FRS5_doe_8_LAUL.rollY2_20  &
   function = "IMPACT( DM(.FRS5_doe_8_LAUL.sideY2_20.beamY_s2_20a,.FRS5_doe_8_LAUL.lower_drive_shaftF.lscenter), VR(.FRS5_doe_8_LAUL.sideY2_20.beamY_s2_20a,.FRS5_doe_8_LAUL.lower_drive_shaftF.lscenter),10.508, 1E5, 1.5, 1E2, .001 )"
!
force modify direct single_component_force  &
   single_component_force_name = .FRS5_doe_8_LAUL.rollY2_21  &
   function = "IMPACT( DM(.FRS5_doe_8_LAUL.sideY2_21.beamY_s2_21a,.FRS5_doe_8_LAUL.lower_drive_shaftF.lscenter), VR(.FRS5_doe_8_LAUL.sideY2_21.beamY_s2_21a,.FRS5_doe_8_LAUL.lower_drive_shaftF.lscenter),10.508, 1E5, 1.5, 1E2, .001 )"
!
force modify direct single_component_force  &
   single_component_force_name = .FRS5_doe_8_LAUL.rollY2_22  &
   function = "IMPACT( DM(.FRS5_doe_8_LAUL.sideY2_22.beamY_s2_22a,.FRS5_doe_8_LAUL.lower_drive_shaftF.lscenter), VR(.FRS5_doe_8_LAUL.sideY2_22.beamY_s2_22a,.FRS5_doe_8_LAUL.lower_drive_shaftF.lscenter),10.508, 1E5, 1.5, 1E2, .001 )"
!
force modify direct single_component_force  &
   single_component_force_name = .FRS5_doe_8_LAUL.rollY2_23  &
   function = "IMPACT( DM(.FRS5_doe_8_LAUL.sideY2_23.beamY_s2_23a,.FRS5_doe_8_LAUL.lower_drive_shaftF.lscenter), VR(.FRS5_doe_8_LAUL.sideY2_23.beamY_s2_23a,.FRS5_doe_8_LAUL.lower_drive_shaftF.lscenter),10.508, 1E5, 1.5, 1E2, .001 )"
!
force modify direct single_component_force  &
   single_component_force_name = .FRS5_doe_8_LAUL.rollY2_24  &
   function = "IMPACT( DM(.FRS5_doe_8_LAUL.sideY2_24.beamY_s2_24a,.FRS5_doe_8_LAUL.lower_drive_shaftF.lscenter), VR(.FRS5_doe_8_LAUL.sideY2_24.beamY_s2_24a,.FRS5_doe_8_LAUL.lower_drive_shaftF.lscenter),10.508, 1E5, 1.5, 1E2, .001 )"
!
force modify direct single_component_force  &
   single_component_force_name = .FRS5_doe_8_LAUL.rollY1_15  &
   function = "IMPACT( DM(.FRS5_doe_8_LAUL.sideY1_15.beamY_s1_15a,.FRS5_doe_8_LAUL.upper_drive_shaftF.uscenter), VR(.FRS5_doe_8_LAUL.sideY1_15.beamY_s1_15a,.FRS5_doe_8_LAUL.upper_drive_shaftF.uscenter),10.508, 1E5, 1.5, 1E2, .001 )"
!
force modify direct single_component_force  &
   single_component_force_name = .FRS5_doe_8_LAUL.rollY1_16  &
   function = "IMPACT( DM(.FRS5_doe_8_LAUL.sideY1_16.beamY_s1_16a,.FRS5_doe_8_LAUL.upper_drive_shaftF.uscenter), VR(.FRS5_doe_8_LAUL.sideY1_16.beamY_s1_16a,.FRS5_doe_8_LAUL.upper_drive_shaftF.uscenter),10.508, 1E5, 1.5, 1E2, .001 )"
!
force modify direct single_component_force  &
   single_component_force_name = .FRS5_doe_8_LAUL.rollY1_17  &
   function = "IMPACT( DM(.FRS5_doe_8_LAUL.sideY1_17.beamY_s1_17a,.FRS5_doe_8_LAUL.upper_drive_shaftF.uscenter), VR(.FRS5_doe_8_LAUL.sideY1_17.beamY_s1_17a,.FRS5_doe_8_LAUL.upper_drive_shaftF.uscenter),10.508, 1E5, 1.5, 1E2, .001 )"
!
force modify direct single_component_force  &
   single_component_force_name = .FRS5_doe_8_LAUL.rollY1_18  &
   function = "IMPACT( DM(.FRS5_doe_8_LAUL.sideY1_18.beamY_s1_18a,.FRS5_doe_8_LAUL.upper_drive_shaftF.uscenter), VR(.FRS5_doe_8_LAUL.sideY1_18.beamY_s1_18a,.FRS5_doe_8_LAUL.upper_drive_shaftF.uscenter),10.508, 1E5, 1.5, 1E2, .001 )"
!
force modify direct single_component_force  &
   single_component_force_name = .FRS5_doe_8_LAUL.rollY1_19  &
   function = "IMPACT( DM(.FRS5_doe_8_LAUL.sideY1_19.beamY_s1_19a,.FRS5_doe_8_LAUL.upper_drive_shaftF.uscenter), VR(.FRS5_doe_8_LAUL.sideY1_19.beamY_s1_19a,.FRS5_doe_8_LAUL.upper_drive_shaftF.uscenter),10.508, 1E5, 1.5, 1E2, .001 )"
!
force modify direct single_component_force  &
   single_component_force_name = .FRS5_doe_8_LAUL.rollY1_20  &
   function = "IMPACT( DM(.FRS5_doe_8_LAUL.sideY1_20.beamY_s1_20a,.FRS5_doe_8_LAUL.upper_drive_shaftF.uscenter), VR(.FRS5_doe_8_LAUL.sideY1_20.beamY_s1_20a,.FRS5_doe_8_LAUL.upper_drive_shaftF.uscenter),10.508, 1E5, 1.5, 1E2, .001 )"
!
force modify direct single_component_force  &
   single_component_force_name = .FRS5_doe_8_LAUL.rollY1_21  &
   function = "IMPACT( DM(.FRS5_doe_8_LAUL.sideY1_21.beamY_s1_21a,.FRS5_doe_8_LAUL.upper_drive_shaftF.uscenter), VR(.FRS5_doe_8_LAUL.sideY1_21.beamY_s1_21a,.FRS5_doe_8_LAUL.upper_drive_shaftF.uscenter),10.508, 1E5, 1.5, 1E2, .001 )"
!
force modify direct single_component_force  &
   single_component_force_name = .FRS5_doe_8_LAUL.rollY1_22  &
   function = "IMPACT( DM(.FRS5_doe_8_LAUL.sideY1_22.beamY_s1_22a,.FRS5_doe_8_LAUL.upper_drive_shaftF.uscenter), VR(.FRS5_doe_8_LAUL.sideY1_22.beamY_s1_22a,.FRS5_doe_8_LAUL.upper_drive_shaftF.uscenter),10.508, 1E5, 1.5, 1E2, .001 )"
!
force modify direct single_component_force  &
   single_component_force_name = .FRS5_doe_8_LAUL.rollY1_23  &
   function = "IMPACT( DM(.FRS5_doe_8_LAUL.sideY1_23.beamY_s1_23a,.FRS5_doe_8_LAUL.upper_drive_shaftF.uscenter), VR(.FRS5_doe_8_LAUL.sideY1_23.beamY_s1_23a,.FRS5_doe_8_LAUL.upper_drive_shaftF.uscenter),10.508, 1E5, 1.5, 1E2, .001 )"
!
force modify direct single_component_force  &
   single_component_force_name = .FRS5_doe_8_LAUL.rollY1_24  &
   function = "IMPACT( DM(.FRS5_doe_8_LAUL.sideY1_24.beamY_s1_24a,.FRS5_doe_8_LAUL.upper_drive_shaftF.uscenter), VR(.FRS5_doe_8_LAUL.sideY1_24.beamY_s1_24a,.FRS5_doe_8_LAUL.upper_drive_shaftF.uscenter),10.508, 1E5, 1.5, 1E2, .001 )"
!
force modify direct single_component_force  &
   single_component_force_name = .FRS5_doe_8_LAUL.rollY1_25  &
   function = "IMPACT( DM(.FRS5_doe_8_LAUL.sideY1_25.beamY_s1_25a,.FRS5_doe_8_LAUL.upper_drive_shaftF.uscenter), VR(.FRS5_doe_8_LAUL.sideY1_25.beamY_s1_25a,.FRS5_doe_8_LAUL.upper_drive_shaftF.uscenter),10.508, 1E5, 1.5, 1E2, .001 )"
!
force modify direct single_component_force  &
   single_component_force_name = .FRS5_doe_8_LAUL.rollY1_26  &
   function = "IMPACT( DM(.FRS5_doe_8_LAUL.sideY1_26.beamY_s1_26a,.FRS5_doe_8_LAUL.upper_drive_shaftF.uscenter), VR(.FRS5_doe_8_LAUL.sideY1_26.beamY_s1_26a,.FRS5_doe_8_LAUL.upper_drive_shaftF.uscenter),10.508, 1E5, 1.5, 1E2, .001 )"
!
force modify direct single_component_force  &
   single_component_force_name = .FRS5_doe_8_LAUL.rollY1_27  &
   function = "IMPACT( DM(.FRS5_doe_8_LAUL.sideY1_27.beamY_s1_27a,.FRS5_doe_8_LAUL.upper_drive_shaftF.uscenter), VR(.FRS5_doe_8_LAUL.sideY1_27.beamY_s1_27a,.FRS5_doe_8_LAUL.upper_drive_shaftF.uscenter),10.508, 1E5, 1.5, 1E2, .001 )"
!
force modify direct single_component_force  &
   single_component_force_name = .FRS5_doe_8_LAUL.rollY1_28  &
   function = "IMPACT( DM(.FRS5_doe_8_LAUL.sideY1_28.beamY_s1_28a,.FRS5_doe_8_LAUL.upper_drive_shaftF.uscenter), VR(.FRS5_doe_8_LAUL.sideY1_28.beamY_s1_28a,.FRS5_doe_8_LAUL.upper_drive_shaftF.uscenter),10.508, 1E5, 1.5, 1E2, .001 )"
!
force modify direct single_component_force  &
   single_component_force_name = .FRS5_doe_8_LAUL.rollY1_29  &
   function = "IMPACT( DM(.FRS5_doe_8_LAUL.sideY1_29.beamY_s1_29a,.FRS5_doe_8_LAUL.upper_drive_shaftF.uscenter), VR(.FRS5_doe_8_LAUL.sideY1_29.beamY_s1_29a,.FRS5_doe_8_LAUL.upper_drive_shaftF.uscenter),10.508, 1E5, 1.5, 1E2, .001 )"
!
force modify direct single_component_force  &
   single_component_force_name = .FRS5_doe_8_LAUL.NoCross5_2  &
   function = "IMPACT( DM(.FRS5_doe_8_LAUL.sideY1_5.cm,.FRS5_doe_8_LAUL.sideY2_5.cm),VR(.FRS5_doe_8_LAUL.sideY1_5.cm,.FRS5_doe_8_LAUL.sideY2_5.cm), 1.016, 1E5, 1.5, 1E2, .001)"
!
force modify direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.selector_arm_slot  &
   x_force_function = "0"  &
   y_force_function = " 1E4 * (STEP( DZ(.FRS5_doe_8_LAUL.selector_spider.pin_center, .FRS5_doe_8_LAUL.feed_selector_arm.step_ref_mark, .FRS5_doe_8_LAUL.feed_selector_arm.step_ref_mark), 3.782, 0, 14.218, 5.660)",  &
              "                     - DY(.FRS5_doe_8_LAUL.selector_spider.pin_center, .FRS5_doe_8_LAUL.feed_selector_arm.step_ref_mark, .FRS5_doe_8_LAUL.feed_selector_arm.step_ref_mark) )",  &
              "                    -10*VY(.FRS5_doe_8_LAUL.selector_spider.pin_center, .FRS5_doe_8_LAUL.feed_selector_arm.step_ref_mark, .FRS5_doe_8_LAUL.feed_selector_arm.step_ref_mark)"  &
   z_force_function = "0"
!
force modify direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.feed_dragU4  &
   x_force_function = "-.005*VX(.FRS5_doe_8_LAUL.linkU4.trailing_center)"  &
   y_force_function = "-.005*VY(.FRS5_doe_8_LAUL.linkU4.trailing_center)"  &
   z_force_function = "-.005*VZ(.FRS5_doe_8_LAUL.linkU4.trailing_center)"
!
force modify direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.BU1_2_s1_26  &
   x_force_function = "0"  &
   y_force_function = "IMPACT( DM(.FRS5_doe_8_LAUL.brassU1.spring_ref,.FRS5_doe_8_LAUL.sideY1_26.beamY_s1_25b),",  &
              "VR(.FRS5_doe_8_LAUL.brassU1.spring_ref,.FRS5_doe_8_LAUL.sideY1_26.beamY_s1_25b),",  &
              "21.165+1.016/2,",  &
              "1E4, 1.25, 1E1, .01)"  &
   z_force_function = "0"
!
force modify direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.BU1_2_s1_27  &
   x_force_function = "0"  &
   y_force_function = "IMPACT( DM(.FRS5_doe_8_LAUL.brassU1.spring_ref,.FRS5_doe_8_LAUL.sideY1_27.beamY_s1_26b),",  &
              "VR(.FRS5_doe_8_LAUL.brassU1.spring_ref,.FRS5_doe_8_LAUL.sideY1_27.beamY_s1_26b),",  &
              "21.165+1.016/2,",  &
              "1E4, 1.25, 1E1, .01)"  &
   z_force_function = "0"
!
force modify direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.BU1_2_s1_28  &
   x_force_function = "0"  &
   y_force_function = "IMPACT( DM(.FRS5_doe_8_LAUL.brassU1.spring_ref,.FRS5_doe_8_LAUL.sideY1_28.beamY_s1_27b),",  &
              "VR(.FRS5_doe_8_LAUL.brassU1.spring_ref,.FRS5_doe_8_LAUL.sideY1_28.beamY_s1_27b),",  &
              "21.165+1.016/2,",  &
              "1E4, 1.25, 1E1, .01)"  &
   z_force_function = "0"
!
force modify direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.BU1_2_s1_29  &
   x_force_function = "0"  &
   y_force_function = "IMPACT( DM(.FRS5_doe_8_LAUL.brassU1.spring_ref,.FRS5_doe_8_LAUL.sideY1_29.beamY_s1_28b),",  &
              "VR(.FRS5_doe_8_LAUL.brassU1.spring_ref,.FRS5_doe_8_LAUL.sideY1_29.beamY_s1_28b),",  &
              "21.165+1.016/2,",  &
              "1E4, 1.25, 1E1, .01)"  &
   z_force_function = "0"
!
force modify direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.BU1_2_s1_30  &
   x_force_function = "0"  &
   y_force_function = "IMPACT( DM(.FRS5_doe_8_LAUL.brassU1.spring_ref,.FRS5_doe_8_LAUL.sideY1_30.beamY_s1_29b),",  &
              "VR(.FRS5_doe_8_LAUL.brassU1.spring_ref,.FRS5_doe_8_LAUL.sideY1_30.beamY_s1_29b),",  &
              "21.165+1.016/2,",  &
              "1E4, 1.25, 1E1, .01)"  &
   z_force_function = "0"
!
force modify direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.BU1_2_s1_31  &
   x_force_function = "0"  &
   y_force_function = "IMPACT( DM(.FRS5_doe_8_LAUL.brassU1.spring_ref,.FRS5_doe_8_LAUL.sideY1_31.beamY_s1_30b),",  &
              "VR(.FRS5_doe_8_LAUL.brassU1.spring_ref,.FRS5_doe_8_LAUL.sideY1_31.beamY_s1_30b),",  &
              "21.165+1.016/2,",  &
              "1E4, 1.25, 1E1, .01)"  &
   z_force_function = "0"
!
force modify direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.BU2_2_s1_26  &
   x_force_function = "0"  &
   y_force_function = "IMPACT( DM(.FRS5_doe_8_LAUL.brassU2.spring_ref,.FRS5_doe_8_LAUL.sideY1_26.beamY_s1_25b),",  &
              "VR(.FRS5_doe_8_LAUL.brassU2.spring_ref,.FRS5_doe_8_LAUL.sideY1_26.beamY_s1_25b),",  &
              "21.165+1.016/2,",  &
              "1E4, 1.25, 1E1, .01)"  &
   z_force_function = "0"
!
force modify direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.BU2_2_s1_27  &
   x_force_function = "0"  &
   y_force_function = "IMPACT( DM(.FRS5_doe_8_LAUL.brassU2.spring_ref,.FRS5_doe_8_LAUL.sideY1_27.beamY_s1_26b),",  &
              "VR(.FRS5_doe_8_LAUL.brassU2.spring_ref,.FRS5_doe_8_LAUL.sideY1_27.beamY_s1_26b),",  &
              "21.165+1.016/2,",  &
              "1E4, 1.25, 1E1, .01)"  &
   z_force_function = "0"
!
force modify direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.BU2_2_s1_28  &
   x_force_function = "0"  &
   y_force_function = "IMPACT( DM(.FRS5_doe_8_LAUL.brassU2.spring_ref,.FRS5_doe_8_LAUL.sideY1_28.beamY_s1_27b),",  &
              "VR(.FRS5_doe_8_LAUL.brassU2.spring_ref,.FRS5_doe_8_LAUL.sideY1_28.beamY_s1_27b),",  &
              "21.165+1.016/2,",  &
              "1E4, 1.25, 1E1, .01)"  &
   z_force_function = "0"
!
force modify direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.BU2_2_s1_29  &
   x_force_function = "0"  &
   y_force_function = "IMPACT( DM(.FRS5_doe_8_LAUL.brassU2.spring_ref,.FRS5_doe_8_LAUL.sideY1_29.beamY_s1_28b),",  &
              "VR(.FRS5_doe_8_LAUL.brassU2.spring_ref,.FRS5_doe_8_LAUL.sideY1_29.beamY_s1_28b),",  &
              "21.165+1.016/2,",  &
              "1E4, 1.25, 1E1, .01)"  &
   z_force_function = "0"
!
force modify direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.BU2_2_s1_30  &
   x_force_function = "0"  &
   y_force_function = "IMPACT( DM(.FRS5_doe_8_LAUL.brassU2.spring_ref,.FRS5_doe_8_LAUL.sideY1_30.beamY_s1_29b),",  &
              "VR(.FRS5_doe_8_LAUL.brassU2.spring_ref,.FRS5_doe_8_LAUL.sideY1_30.beamY_s1_29b),",  &
              "21.165+1.016/2,",  &
              "1E4, 1.25, 1E1, .01)"  &
   z_force_function = "0"
!
force modify direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.BU2_2_s1_31  &
   x_force_function = "0"  &
   y_force_function = "IMPACT( DM(.FRS5_doe_8_LAUL.brassU2.spring_ref,.FRS5_doe_8_LAUL.sideY1_31.beamY_s1_30b),",  &
              "VR(.FRS5_doe_8_LAUL.brassU2.spring_ref,.FRS5_doe_8_LAUL.sideY1_31.beamY_s1_30b),",  &
              "21.165+1.016/2,",  &
              "1E4, 1.25, 1E1, .01)"  &
   z_force_function = "0"
!
force modify direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.BU3_2_s1_26  &
   x_force_function = "0"  &
   y_force_function = "IMPACT( DM(.FRS5_doe_8_LAUL.brassU3.spring_ref,.FRS5_doe_8_LAUL.sideY1_26.beamY_s1_25b),",  &
              "VR(.FRS5_doe_8_LAUL.brassU3.spring_ref,.FRS5_doe_8_LAUL.sideY1_26.beamY_s1_25b),",  &
              "21.165+1.016/2,",  &
              "1E4, 1.25, 1E1, .01)"  &
   z_force_function = "0"
!
force modify direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.BU3_2_s1_27  &
   x_force_function = "0"  &
   y_force_function = "IMPACT( DM(.FRS5_doe_8_LAUL.brassU3.spring_ref,.FRS5_doe_8_LAUL.sideY1_27.beamY_s1_26b),",  &
              "VR(.FRS5_doe_8_LAUL.brassU3.spring_ref,.FRS5_doe_8_LAUL.sideY1_27.beamY_s1_26b),",  &
              "21.165+1.016/2,",  &
              "1E4, 1.25, 1E1, .01)"  &
   z_force_function = "0"
!
force modify direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.BU3_2_s1_28  &
   x_force_function = "0"  &
   y_force_function = "IMPACT( DM(.FRS5_doe_8_LAUL.brassU3.spring_ref,.FRS5_doe_8_LAUL.sideY1_28.beamY_s1_27b),",  &
              "VR(.FRS5_doe_8_LAUL.brassU3.spring_ref,.FRS5_doe_8_LAUL.sideY1_28.beamY_s1_27b),",  &
              "21.165+1.016/2,",  &
              "1E4, 1.25, 1E1, .01)"  &
   z_force_function = "0"
!
force modify direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.BU3_2_s1_29  &
   x_force_function = "0"  &
   y_force_function = "IMPACT( DM(.FRS5_doe_8_LAUL.brassU3.spring_ref,.FRS5_doe_8_LAUL.sideY1_29.beamY_s1_28b),",  &
              "VR(.FRS5_doe_8_LAUL.brassU3.spring_ref,.FRS5_doe_8_LAUL.sideY1_29.beamY_s1_28b),",  &
              "21.165+1.016/2,",  &
              "1E4, 1.25, 1E1, .01)"  &
   z_force_function = "0"
!
force modify direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.BU3_2_s1_30  &
   x_force_function = "0"  &
   y_force_function = "IMPACT( DM(.FRS5_doe_8_LAUL.brassU3.spring_ref,.FRS5_doe_8_LAUL.sideY1_30.beamY_s1_29b),",  &
              "VR(.FRS5_doe_8_LAUL.brassU3.spring_ref,.FRS5_doe_8_LAUL.sideY1_30.beamY_s1_29b),",  &
              "21.165+1.016/2,",  &
              "1E4, 1.25, 1E1, .01)"  &
   z_force_function = "0"
!
force modify direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.BU3_2_s1_31  &
   x_force_function = "0"  &
   y_force_function = "IMPACT( DM(.FRS5_doe_8_LAUL.brassU3.spring_ref,.FRS5_doe_8_LAUL.sideY1_31.beamY_s1_30b),",  &
              "VR(.FRS5_doe_8_LAUL.brassU3.spring_ref,.FRS5_doe_8_LAUL.sideY1_31.beamY_s1_30b),",  &
              "21.165+1.016/2,",  &
              "1E4, 1.25, 1E1, .01)"  &
   z_force_function = "0"
!
force modify direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.tongueU4  &
   x_force_function = "0"  &
   y_force_function = "IMPACT( DY(.FRS5_doe_8_LAUL.linkU4.tongue, .FRS5_doe_8_LAUL.brassU4.channel_ref, .FRS5_doe_8_LAUL.linkU4.tongue),",  &
              "  VY(.FRS5_doe_8_LAUL.linkU4.tongue, .FRS5_doe_8_LAUL.brassU4.channel_ref, .FRS5_doe_8_LAUL.linkU4.tongue),",  &
              "  17, 1.0, 1.25, .04, .01) ",  &
              "* IF( DZ(.FRS5_doe_8_LAUL.brassU4.fc,.FRS5_doe_8_LAUL.linkU4.fwd_center,.FRS5_doe_8_LAUL.linkU4.fwd_center)+20: 0,0,1)"  &
   z_force_function = "0"
!
force modify direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.tongueU3  &
   x_force_function = "0"  &
   y_force_function = "IMPACT( DY(.FRS5_doe_8_LAUL.linkU3.tongue, .FRS5_doe_8_LAUL.brassU3.channel_ref, .FRS5_doe_8_LAUL.linkU3.tongue),",  &
              "  VY(.FRS5_doe_8_LAUL.linkU3.tongue, .FRS5_doe_8_LAUL.brassU3.channel_ref, .FRS5_doe_8_LAUL.linkU3.tongue),",  &
              " 17, 1.0, 1.25, .04, .01) ",  &
              "* IF( DZ(.FRS5_doe_8_LAUL.brassU3.fc,.FRS5_doe_8_LAUL.linkU3.fwd_center,.FRS5_doe_8_LAUL.linkU3.fwd_center)+20: 0,0,1)"  &
   z_force_function = "0"
!
force modify direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.tongueU2  &
   x_force_function = "0"  &
   y_force_function = "IMPACT( DY(.FRS5_doe_8_LAUL.linkU2.tongue, .FRS5_doe_8_LAUL.brassU2.channel_ref, .FRS5_doe_8_LAUL.linkU2.tongue),",  &
              "  VY(.FRS5_doe_8_LAUL.linkU2.tongue, .FRS5_doe_8_LAUL.brassU2.channel_ref, .FRS5_doe_8_LAUL.linkU2.tongue),",  &
              "  17,1, 1.25, .04, .01) ",  &
              "* IF( DZ(.FRS5_doe_8_LAUL.brassU2.fc,.FRS5_doe_8_LAUL.linkU2.fwd_center,.FRS5_doe_8_LAUL.linkU2.fwd_center)+20: 0,0,1)"  &
   z_force_function = "0"
!
force modify direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.tongueU1  &
   x_force_function = "0"  &
   y_force_function = "IMPACT( DY(.FRS5_doe_8_LAUL.linkU1.tongue, .FRS5_doe_8_LAUL.brassU1.channel_ref,.FRS5_doe_8_LAUL.linkU1.tongue),",  &
              "  VY(.FRS5_doe_8_LAUL.linkU1.tongue, .FRS5_doe_8_LAUL.brassU1.channel_ref, .FRS5_doe_8_LAUL.linkU1.tongue),",  &
              "  17.0, 1, 1.25, .04, .01) ",  &
              "* IF( DZ(.FRS5_doe_8_LAUL.brassU1.fc,.FRS5_doe_8_LAUL.linkU1.fwd_center,.FRS5_doe_8_LAUL.linkU1.fwd_center)+20: 0,0,1)"  &
   z_force_function = "0"
!
force modify direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.popU1f  &
   x_force_function = "-VARVAL(.FRS5_doe_8_LAUL.KU1fwd) *20* DX(.FRS5_doe_8_LAUL.brassU1.fc, .FRS5_doe_8_LAUL.linkU1.fwd_center, .FRS5_doe_8_LAUL.linkU1.fwd_center)"  &
   y_force_function = "-VARVAL(.FRS5_doe_8_LAUL.KU1fwd) * DY(.FRS5_doe_8_LAUL.brassU1.fc, .FRS5_doe_8_LAUL.linkU1.fwd_center, .FRS5_doe_8_LAUL.linkU1.fwd_center)"  &
   z_force_function = "-VARVAL(.FRS5_doe_8_LAUL.KU1fwd)* DZ(.FRS5_doe_8_LAUL.brassU1.fc, .FRS5_doe_8_LAUL.linkU1.fwd_center, .FRS5_doe_8_LAUL.linkU1.fwd_center)"
!
force modify direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.popU2f  &
   x_force_function = "-VARVAL(.FRS5_doe_8_LAUL.KU2fwd)*20 * DX(.FRS5_doe_8_LAUL.brassU2.fc, .FRS5_doe_8_LAUL.linkU2.fwd_center, .FRS5_doe_8_LAUL.linkU2.fwd_center)"  &
   y_force_function = "-VARVAL(.FRS5_doe_8_LAUL.KU2fwd) * DY(.FRS5_doe_8_LAUL.brassU2.fc, .FRS5_doe_8_LAUL.linkU2.fwd_center, .FRS5_doe_8_LAUL.linkU2.fwd_center)"  &
   z_force_function = "-VARVAL(.FRS5_doe_8_LAUL.KU2fwd) * DZ(.FRS5_doe_8_LAUL.brassU2.fc, .FRS5_doe_8_LAUL.linkU2.fwd_center, .FRS5_doe_8_LAUL.linkU2.fwd_center)"
!
force modify direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.popU3f  &
   x_force_function = "-VARVAL(.FRS5_doe_8_LAUL.KU3fwd)*20 * DX(.FRS5_doe_8_LAUL.brassU3.fc, .FRS5_doe_8_LAUL.linkU3.fwd_center, .FRS5_doe_8_LAUL.linkU3.fwd_center)"  &
   y_force_function = "-VARVAL(.FRS5_doe_8_LAUL.KU3fwd) * DY(.FRS5_doe_8_LAUL.brassU3.fc, .FRS5_doe_8_LAUL.linkU3.fwd_center, .FRS5_doe_8_LAUL.linkU3.fwd_center)"  &
   z_force_function = "-VARVAL(.FRS5_doe_8_LAUL.KU3fwd) * DZ(.FRS5_doe_8_LAUL.brassU3.fc, .FRS5_doe_8_LAUL.linkU3.fwd_center, .FRS5_doe_8_LAUL.linkU3.fwd_center)"
!
force modify direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.popU4f  &
   x_force_function = "-VARVAL(.FRS5_doe_8_LAUL.KU4fwd)*20 * DX(.FRS5_doe_8_LAUL.brassU4.fc, .FRS5_doe_8_LAUL.linkU4.fwd_center, .FRS5_doe_8_LAUL.linkU4.fwd_center)"  &
   y_force_function = "-VARVAL(.FRS5_doe_8_LAUL.KU4fwd) * DY(.FRS5_doe_8_LAUL.brassU4.fc, .FRS5_doe_8_LAUL.linkU4.fwd_center, .FRS5_doe_8_LAUL.linkU4.fwd_center)"  &
   z_force_function = "-VARVAL(.FRS5_doe_8_LAUL.KU4fwd) * DZ(.FRS5_doe_8_LAUL.brassU4.fc, .FRS5_doe_8_LAUL.linkU4.fwd_center, .FRS5_doe_8_LAUL.linkU4.fwd_center)"
!
force modify direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.popU4a  &
   x_force_function = "-VARVAL(.FRS5_doe_8_LAUL.KU4aft)*20 * DX(.FRS5_doe_8_LAUL.brassU4.ac, .FRS5_doe_8_LAUL.linkU4.aft_center, .FRS5_doe_8_LAUL.linkU4.aft_center)"  &
   y_force_function = "-VARVAL(.FRS5_doe_8_LAUL.KU4aft) * DY(.FRS5_doe_8_LAUL.brassU4.ac, .FRS5_doe_8_LAUL.linkU4.aft_center, .FRS5_doe_8_LAUL.linkU4.aft_center)"  &
   z_force_function = "-VARVAL(.FRS5_doe_8_LAUL.KU4aft) * DZ(.FRS5_doe_8_LAUL.brassU4.ac, .FRS5_doe_8_LAUL.linkU4.aft_center, .FRS5_doe_8_LAUL.linkU4.aft_center)"
!
force modify direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.popU3a  &
   x_force_function = "-VARVAL(.FRS5_doe_8_LAUL.KU3aft)*20 * DX(.FRS5_doe_8_LAUL.brassU3.ac, .FRS5_doe_8_LAUL.linkU3.aft_center, .FRS5_doe_8_LAUL.linkU3.aft_center)"  &
   y_force_function = "-VARVAL(.FRS5_doe_8_LAUL.KU3aft) * DY(.FRS5_doe_8_LAUL.brassU3.ac, .FRS5_doe_8_LAUL.linkU3.aft_center, .FRS5_doe_8_LAUL.linkU3.aft_center)"  &
   z_force_function = "-VARVAL(.FRS5_doe_8_LAUL.KU3aft) * DZ(.FRS5_doe_8_LAUL.brassU3.ac, .FRS5_doe_8_LAUL.linkU3.aft_center, .FRS5_doe_8_LAUL.linkU3.aft_center)"
!
force modify direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.popU2a  &
   x_force_function = "-VARVAL(.FRS5_doe_8_LAUL.KU2aft)*20 * DX(.FRS5_doe_8_LAUL.brassU2.ac, .FRS5_doe_8_LAUL.linkU2.aft_center, .FRS5_doe_8_LAUL.linkU2.aft_center)"  &
   y_force_function = "-VARVAL(.FRS5_doe_8_LAUL.KU2aft) * DY(.FRS5_doe_8_LAUL.brassU2.ac, .FRS5_doe_8_LAUL.linkU2.aft_center, .FRS5_doe_8_LAUL.linkU2.aft_center)"  &
   z_force_function = "-VARVAL(.FRS5_doe_8_LAUL.KU2aft) * DZ(.FRS5_doe_8_LAUL.brassU2.ac, .FRS5_doe_8_LAUL.linkU2.aft_center, .FRS5_doe_8_LAUL.linkU2.aft_center)"
!
force modify direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.popU1a  &
   x_force_function = "-VARVAL(.FRS5_doe_8_LAUL.KU1aft)*20 * DX(.FRS5_doe_8_LAUL.brassU1.ac, .FRS5_doe_8_LAUL.linkU1.aft_center, .FRS5_doe_8_LAUL.linkU1.aft_center)"  &
   y_force_function = "-VARVAL(.FRS5_doe_8_LAUL.KU1aft) * DY(.FRS5_doe_8_LAUL.brassU1.ac, .FRS5_doe_8_LAUL.linkU1.aft_center, .FRS5_doe_8_LAUL.linkU1.aft_center)"  &
   z_force_function = "-VARVAL(.FRS5_doe_8_LAUL.KU1aft) * DZ(.FRS5_doe_8_LAUL.brassU1.ac, .FRS5_doe_8_LAUL.linkU1.aft_center, .FRS5_doe_8_LAUL.linkU1.aft_center)"
!
force modify direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.popU3t  &
   x_force_function = "-VARVAL(.FRS5_doe_8_LAUL.KU3trail)*20 * DX(.FRS5_doe_8_LAUL.brassU4.tc, .FRS5_doe_8_LAUL.linkU3.trailing_center, .FRS5_doe_8_LAUL.linkU3.trailing_center)"  &
   y_force_function = "-VARVAL(.FRS5_doe_8_LAUL.KU3trail) * DY(.FRS5_doe_8_LAUL.brassU4.tc, .FRS5_doe_8_LAUL.linkU3.trailing_center, .FRS5_doe_8_LAUL.linkU3.trailing_center)"  &
   z_force_function = "-VARVAL(.FRS5_doe_8_LAUL.KU3trail) * DZ(.FRS5_doe_8_LAUL.brassU4.tc, .FRS5_doe_8_LAUL.linkU3.trailing_center, .FRS5_doe_8_LAUL.linkU3.trailing_center)"
!
force modify direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.popU2t  &
   x_force_function = "-VARVAL(.FRS5_doe_8_LAUL.KU2trail)*20 * DX(.FRS5_doe_8_LAUL.brassU3.tc, .FRS5_doe_8_LAUL.linkU2.trailing_center, .FRS5_doe_8_LAUL.linkU2.trailing_center)"  &
   y_force_function = "-VARVAL(.FRS5_doe_8_LAUL.KU2trail) * DY(.FRS5_doe_8_LAUL.brassU3.tc, .FRS5_doe_8_LAUL.linkU2.trailing_center, .FRS5_doe_8_LAUL.linkU2.trailing_center)"  &
   z_force_function = "-VARVAL(.FRS5_doe_8_LAUL.KU2trail) * DZ(.FRS5_doe_8_LAUL.brassU3.tc, .FRS5_doe_8_LAUL.linkU2.trailing_center, .FRS5_doe_8_LAUL.linkU2.trailing_center)"
!
force modify direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.popU1t  &
   x_force_function = "-VARVAL(.FRS5_doe_8_LAUL.KU1trail)*20 * DX(.FRS5_doe_8_LAUL.brassU2.tc, .FRS5_doe_8_LAUL.linkU1.trailing_center, .FRS5_doe_8_LAUL.linkU1.trailing_center)"  &
   y_force_function = "-VARVAL(.FRS5_doe_8_LAUL.KU1trail) * DY(.FRS5_doe_8_LAUL.brassU2.tc, .FRS5_doe_8_LAUL.linkU1.trailing_center, .FRS5_doe_8_LAUL.linkU1.trailing_center)"  &
   z_force_function = "-VARVAL(.FRS5_doe_8_LAUL.KU1trail) * DZ(.FRS5_doe_8_LAUL.brassU2.tc, .FRS5_doe_8_LAUL.linkU1.trailing_center, .FRS5_doe_8_LAUL.linkU1.trailing_center)"
!
force modify direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.BU4_2_s1_26  &
   x_force_function = "0"  &
   y_force_function = "IMPACT( DM(.FRS5_doe_8_LAUL.brassU4.spring_ref,.FRS5_doe_8_LAUL.sideY1_26.beamY_s1_25b),",  &
              "VR(.FRS5_doe_8_LAUL.brassU4.spring_ref,.FRS5_doe_8_LAUL.sideY1_26.beamY_s1_25b),",  &
              "21.165+1.016/2,",  &
              "1E4, 1.25, 1E1, .01)"  &
   z_force_function = "0"
!
force modify direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.BU4_2_s1_27  &
   x_force_function = "0"  &
   y_force_function = "IMPACT( DM(.FRS5_doe_8_LAUL.brassU4.spring_ref,.FRS5_doe_8_LAUL.sideY1_27.beamY_s1_26b),",  &
              "VR(.FRS5_doe_8_LAUL.brassU4.spring_ref,.FRS5_doe_8_LAUL.sideY1_27.beamY_s1_26b),",  &
              "21.165+1.016/2,",  &
              "1E4, 1.25, 1E1, .01)"  &
   z_force_function = "0"
!
force modify direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.BU4_2_s1_28  &
   x_force_function = "0"  &
   y_force_function = "IMPACT( DM(.FRS5_doe_8_LAUL.brassU4.spring_ref,.FRS5_doe_8_LAUL.sideY1_28.beamY_s1_27b),",  &
              "VR(.FRS5_doe_8_LAUL.brassU4.spring_ref,.FRS5_doe_8_LAUL.sideY1_28.beamY_s1_27b),",  &
              "21.165+1.016/2,",  &
              "1E4, 1.25, 1E1, .01)"  &
   z_force_function = "0"
!
force modify direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.BU4_2_s1_29  &
   x_force_function = "0"  &
   y_force_function = "IMPACT( DM(.FRS5_doe_8_LAUL.brassU4.spring_ref,.FRS5_doe_8_LAUL.sideY1_29.beamY_s1_28b),",  &
              "VR(.FRS5_doe_8_LAUL.brassU4.spring_ref,.FRS5_doe_8_LAUL.sideY1_29.beamY_s1_28b),",  &
              "21.165+1.016/2,",  &
              "1E4, 1.25, 1E1, .01)"  &
   z_force_function = "0"
!
force modify direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.BU4_2_s1_30  &
   x_force_function = "0"  &
   y_force_function = "IMPACT( DM(.FRS5_doe_8_LAUL.brassU4.spring_ref,.FRS5_doe_8_LAUL.sideY1_30.beamY_s1_29b),",  &
              "VR(.FRS5_doe_8_LAUL.brassU4.spring_ref,.FRS5_doe_8_LAUL.sideY1_30.beamY_s1_29b),",  &
              "21.165+1.016/2,",  &
              "1E4, 1.25, 1E1, .01)"  &
   z_force_function = "0"
!
force modify direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.BU4_2_s1_31  &
   x_force_function = "0"  &
   y_force_function = "IMPACT( DM(.FRS5_doe_8_LAUL.brassU4.spring_ref,.FRS5_doe_8_LAUL.sideY1_31.beamY_s1_30b),",  &
              "VR(.FRS5_doe_8_LAUL.brassU4.spring_ref,.FRS5_doe_8_LAUL.sideY1_31.beamY_s1_30b),",  &
              "21.165+1.016/2,",  &
              "1E4, 1.25, 1E1, .01)"  &
   z_force_function = "0"
!
force modify direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.feed_dragU1  &
   x_force_function = "-.005*VX(.FRS5_doe_8_LAUL.linkU1.trailing_center)"  &
   y_force_function = "-.005*VY(.FRS5_doe_8_LAUL.linkU1.trailing_center)"  &
   z_force_function = "-.005*VZ(.FRS5_doe_8_LAUL.linkU1.trailing_center)"
!
force modify direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.feed_dragU2  &
   x_force_function = "-.005*VX(.FRS5_doe_8_LAUL.linkU2.trailing_center)"  &
   y_force_function = "-.005*VY(.FRS5_doe_8_LAUL.linkU2.trailing_center)"  &
   z_force_function = "-.005*VZ(.FRS5_doe_8_LAUL.linkU2.trailing_center)"
!
force modify direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.feed_dragU3  &
   x_force_function = "-.005*VX(.FRS5_doe_8_LAUL.linkU3.trailing_center)"  &
   y_force_function = "-.005*VY(.FRS5_doe_8_LAUL.linkU3.trailing_center)"  &
   z_force_function = "-.005*VZ(.FRS5_doe_8_LAUL.linkU3.trailing_center)"
!
force modify direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.feed_dragL2  &
   x_force_function = "-.005*VX(.FRS5_doe_8_LAUL.linkL2.trailing_center)"  &
   y_force_function = "-.005*VY(.FRS5_doe_8_LAUL.linkL2.trailing_center)"  &
   z_force_function = "-.005*VZ(.FRS5_doe_8_LAUL.linkL2.trailing_center)"
!
force modify direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.feed_dragL3  &
   x_force_function = "-.005*VX(.FRS5_doe_8_LAUL.linkL3.trailing_center)"  &
   y_force_function = "-.005*VY(.FRS5_doe_8_LAUL.linkL3.trailing_center)"  &
   z_force_function = "-.005*VZ(.FRS5_doe_8_LAUL.linkL3.trailing_center)"
!
force modify direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.feed_dragL4  &
   x_force_function = "-.005*VX(.FRS5_doe_8_LAUL.linkL4.trailing_center)"  &
   y_force_function = "-.005*VY(.FRS5_doe_8_LAUL.linkL4.trailing_center)"  &
   z_force_function = "-.005*VZ(.FRS5_doe_8_LAUL.linkL4.trailing_center)"
!
force modify direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.feed_dragL5  &
   x_force_function = "-.005*VX(.FRS5_doe_8_LAUL.linkL5.trailing_center)"  &
   y_force_function = "-.005*VY(.FRS5_doe_8_LAUL.linkL5.trailing_center)"  &
   z_force_function = "-.005*VZ(.FRS5_doe_8_LAUL.linkL5.trailing_center)"
!
force modify direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.tongueL2  &
   x_force_function = "0.0"  &
   y_force_function = "IMPACT( DY(.FRS5_doe_8_LAUL.linkL2.tongue, .FRS5_doe_8_LAUL.brassL2.channel_ref, .FRS5_doe_8_LAUL.brassL2.channel_ref),",  &
              "VY(.FRS5_doe_8_LAUL.linkL2.tongue, .FRS5_doe_8_LAUL.brassL2.channel_ref, .FRS5_doe_8_LAUL.brassL2.channel_ref),",  &
              " 15.0, 4.0, 1.25, .04, .01)"  &
   z_force_function = "0.0"
!
force modify direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.tongueL3  &
   x_force_function = "0.0"  &
   y_force_function = "IMPACT( DY(.FRS5_doe_8_LAUL.linkL3.tongue, .FRS5_doe_8_LAUL.brassL3.channel_ref, .FRS5_doe_8_LAUL.brassL3.channel_ref),",  &
              "VY(.FRS5_doe_8_LAUL.linkL3.tongue, .FRS5_doe_8_LAUL.brassL3.channel_ref, .FRS5_doe_8_LAUL.brassL3.channel_ref),",  &
              " 15.0, 4.0, 1.25, .04, .01)"  &
   z_force_function = "0.0"
!
force modify direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.tongueL4  &
   x_force_function = "0.0"  &
   y_force_function = "IMPACT( DY(.FRS5_doe_8_LAUL.linkL4.tongue, .FRS5_doe_8_LAUL.brassL4.channel_ref, .FRS5_doe_8_LAUL.brassL4.channel_ref),",  &
              "VY(.FRS5_doe_8_LAUL.linkL4.tongue, .FRS5_doe_8_LAUL.brassL4.channel_ref, .FRS5_doe_8_LAUL.brassL4.channel_ref),",  &
              " 15.0, 4.0, 1.25, .04, .01)"  &
   z_force_function = "0.0"
!
force modify direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.tongueL5  &
   x_force_function = "0.0"  &
   y_force_function = "IMPACT( DY(.FRS5_doe_8_LAUL.linkL5.tongue, .FRS5_doe_8_LAUL.brassL5.channel_ref, .FRS5_doe_8_LAUL.brassL5.channel_ref),",  &
              "VY(.FRS5_doe_8_LAUL.linkL5.tongue, .FRS5_doe_8_LAUL.brassL5.channel_ref, .FRS5_doe_8_LAUL.brassL5.channel_ref),",  &
              " 15.0, 4.0, 1.25, .04, .01)"  &
   z_force_function = "0.0"
!
force modify direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.popL2f  &
   x_force_function = "-VARVAL(.FRS5_doe_8_LAUL.KL2fwd) *20* DX(.FRS5_doe_8_LAUL.brassL2.fc, .FRS5_doe_8_LAUL.linkL2.fwd_center, .FRS5_doe_8_LAUL.linkL2.fwd_center)"  &
   y_force_function = "-VARVAL(.FRS5_doe_8_LAUL.KL2fwd) * DY(.FRS5_doe_8_LAUL.brassL2.fc, .FRS5_doe_8_LAUL.linkL2.fwd_center, .FRS5_doe_8_LAUL.linkL2.fwd_center)"  &
   z_force_function = "-VARVAL(.FRS5_doe_8_LAUL.KL2fwd) * DZ(.FRS5_doe_8_LAUL.brassL2.fc, .FRS5_doe_8_LAUL.linkL2.fwd_center, .FRS5_doe_8_LAUL.linkL2.fwd_center)"
!
force modify direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.popL3f  &
   x_force_function = "-VARVAL(.FRS5_doe_8_LAUL.KL3fwd) *20* DX(.FRS5_doe_8_LAUL.brassL3.fc, .FRS5_doe_8_LAUL.linkL3.fwd_center, .FRS5_doe_8_LAUL.linkL3.fwd_center)"  &
   y_force_function = "-VARVAL(.FRS5_doe_8_LAUL.KL3fwd) * DY(.FRS5_doe_8_LAUL.brassL3.fc, .FRS5_doe_8_LAUL.linkL3.fwd_center, .FRS5_doe_8_LAUL.linkL3.fwd_center)"  &
   z_force_function = "-VARVAL(.FRS5_doe_8_LAUL.KL3fwd) * DZ(.FRS5_doe_8_LAUL.brassL3.fc, .FRS5_doe_8_LAUL.linkL3.fwd_center, .FRS5_doe_8_LAUL.linkL3.fwd_center)"
!
force modify direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.popL4f  &
   x_force_function = "-VARVAL(.FRS5_doe_8_LAUL.KL4fwd) *20* DX(.FRS5_doe_8_LAUL.brassL4.fc, .FRS5_doe_8_LAUL.linkL4.fwd_center, .FRS5_doe_8_LAUL.linkL4.fwd_center)"  &
   y_force_function = "-VARVAL(.FRS5_doe_8_LAUL.KL4fwd) * DY(.FRS5_doe_8_LAUL.brassL4.fc, .FRS5_doe_8_LAUL.linkL4.fwd_center, .FRS5_doe_8_LAUL.linkL4.fwd_center)"  &
   z_force_function = "-VARVAL(.FRS5_doe_8_LAUL.KL4fwd) * DZ(.FRS5_doe_8_LAUL.brassL4.fc, .FRS5_doe_8_LAUL.linkL4.fwd_center, .FRS5_doe_8_LAUL.linkL4.fwd_center)"
!
force modify direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.popL5f  &
   x_force_function = "-VARVAL(.FRS5_doe_8_LAUL.KL5fwd) *20* DX(.FRS5_doe_8_LAUL.brassL5.fc, .FRS5_doe_8_LAUL.linkL5.fwd_center, .FRS5_doe_8_LAUL.linkL5.fwd_center)"  &
   y_force_function = "-VARVAL(.FRS5_doe_8_LAUL.KL5fwd) * DY(.FRS5_doe_8_LAUL.brassL5.fc, .FRS5_doe_8_LAUL.linkL5.fwd_center, .FRS5_doe_8_LAUL.linkL5.fwd_center)"  &
   z_force_function = "-VARVAL(.FRS5_doe_8_LAUL.KL5fwd) * DZ(.FRS5_doe_8_LAUL.brassL5.fc, .FRS5_doe_8_LAUL.linkL5.fwd_center, .FRS5_doe_8_LAUL.linkL5.fwd_center)"
!
force modify direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.BU1_2_s1_25  &
   x_force_function = "0"  &
   y_force_function = "IMPACT( DM(.FRS5_doe_8_LAUL.brassU1.spring_ref,.FRS5_doe_8_LAUL.sideY1_25.beamY_s1_24b),",  &
              "VR(.FRS5_doe_8_LAUL.brassU1.spring_ref,.FRS5_doe_8_LAUL.sideY1_25.beamY_s1_24b),",  &
              "21.165+1.016/2,",  &
              "1E4, 1.25, 1E1, .01)"  &
   z_force_function = "0"
!
force modify direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.BU2_2_s1_25  &
   x_force_function = "0"  &
   y_force_function = "IMPACT( DM(.FRS5_doe_8_LAUL.brassU2.spring_ref,.FRS5_doe_8_LAUL.sideY1_25.beamY_s1_24b),",  &
              "VR(.FRS5_doe_8_LAUL.brassU2.spring_ref,.FRS5_doe_8_LAUL.sideY1_25.beamY_s1_24b),",  &
              "21.165+1.016/2,",  &
              "1E4, 1.25, 1E1, .01)"  &
   z_force_function = "0"
!
force modify direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.BU3_2_s1_25  &
   x_force_function = "0"  &
   y_force_function = "IMPACT( DM(.FRS5_doe_8_LAUL.brassU3.spring_ref,.FRS5_doe_8_LAUL.sideY1_25.beamY_s1_24b),",  &
              "VR(.FRS5_doe_8_LAUL.brassU3.spring_ref,.FRS5_doe_8_LAUL.sideY1_25.beamY_s1_24b),",  &
              "21.165+1.016/2,",  &
              "1E4, 1.25, 1E1, .01)"  &
   z_force_function = "0"
!
force modify direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.BU4_2_s1_25  &
   x_force_function = "0"  &
   y_force_function = "IMPACT( DM(.FRS5_doe_8_LAUL.brassU4.spring_ref,.FRS5_doe_8_LAUL.sideY1_25.beamY_s1_24b),",  &
              "VR(.FRS5_doe_8_LAUL.brassU4.spring_ref,.FRS5_doe_8_LAUL.sideY1_25.beamY_s1_24b),",  &
              "21.165+1.016/2,",  &
              "1E4, 1.25, 1E1, .01)"  &
   z_force_function = "0"
!
force modify direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.BU1_2_s1_24  &
   x_force_function = "0"  &
   y_force_function = "IMPACT( DM(.FRS5_doe_8_LAUL.brassU1.spring_ref,.FRS5_doe_8_LAUL.sideY1_24.beamY_s1_23b),",  &
              "VR(.FRS5_doe_8_LAUL.brassU1.spring_ref,.FRS5_doe_8_LAUL.sideY1_24.beamY_s1_23b),",  &
              "21.165+1.016/2,",  &
              "1E4, 1.25, 1E1, .01)"  &
   z_force_function = "0"
!
force modify direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.BU2_2_s1_24  &
   x_force_function = "0"  &
   y_force_function = "IMPACT( DM(.FRS5_doe_8_LAUL.brassU2.spring_ref,.FRS5_doe_8_LAUL.sideY1_24.beamY_s1_23b),",  &
              "VR(.FRS5_doe_8_LAUL.brassU2.spring_ref,.FRS5_doe_8_LAUL.sideY1_24.beamY_s1_23b),",  &
              "21.165+1.016/2,",  &
              "1E4, 1.25, 1E1, .01)"  &
   z_force_function = "0"
!
force modify direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.BU3_2_s1_24  &
   x_force_function = "0"  &
   y_force_function = "IMPACT( DM(.FRS5_doe_8_LAUL.brassU3.spring_ref,.FRS5_doe_8_LAUL.sideY1_24.beamY_s1_23b),",  &
              "VR(.FRS5_doe_8_LAUL.brassU3.spring_ref,.FRS5_doe_8_LAUL.sideY1_24.beamY_s1_23b),",  &
              "21.165+1.016/2,",  &
              "1E4, 1.25, 1E1, .01)"  &
   z_force_function = "0"
!
force modify direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.BU4_2_s1_24  &
   x_force_function = "0"  &
   y_force_function = "IMPACT( DM(.FRS5_doe_8_LAUL.brassU4.spring_ref,.FRS5_doe_8_LAUL.sideY1_24.beamY_s1_23b),",  &
              "VR(.FRS5_doe_8_LAUL.brassU4.spring_ref,.FRS5_doe_8_LAUL.sideY1_24.beamY_s1_23b),",  &
              "21.165+1.016/2,",  &
              "1E4, 1.25, 1E1, .01)"  &
   z_force_function = "0"
!
force modify direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.BU1_2_s1_23  &
   x_force_function = "0"  &
   y_force_function = "IMPACT( DM(.FRS5_doe_8_LAUL.brassU1.spring_ref,.FRS5_doe_8_LAUL.sideY1_23.beamY_s1_22b),",  &
              "VR(.FRS5_doe_8_LAUL.brassU1.spring_ref,.FRS5_doe_8_LAUL.sideY1_23.beamY_s1_22b),",  &
              "21.165+1.016/2,",  &
              "1E4, 1.25, 1E1, .01)"  &
   z_force_function = "0"
!
force modify direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.BU2_2_s1_23  &
   x_force_function = "0"  &
   y_force_function = "IMPACT( DM(.FRS5_doe_8_LAUL.brassU2.spring_ref,.FRS5_doe_8_LAUL.sideY1_23.beamY_s1_22b),",  &
              "VR(.FRS5_doe_8_LAUL.brassU2.spring_ref,.FRS5_doe_8_LAUL.sideY1_23.beamY_s1_22b),",  &
              "21.165+1.016/2,",  &
              "1E4, 1.25, 1E1, .01)"  &
   z_force_function = "0"
!
force modify direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.BU3_2_s1_23  &
   x_force_function = "0"  &
   y_force_function = "IMPACT( DM(.FRS5_doe_8_LAUL.brassU3.spring_ref,.FRS5_doe_8_LAUL.sideY1_23.beamY_s1_22b),",  &
              "VR(.FRS5_doe_8_LAUL.brassU3.spring_ref,.FRS5_doe_8_LAUL.sideY1_23.beamY_s1_22b),",  &
              "21.165+1.016/2,",  &
              "1E4, 1.25, 1E1, .01)"  &
   z_force_function = "0"
!
force modify direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.BU4_2_s1_23  &
   x_force_function = "0"  &
   y_force_function = "IMPACT( DM(.FRS5_doe_8_LAUL.brassU4.spring_ref,.FRS5_doe_8_LAUL.sideY1_23.beamY_s1_22b),",  &
              "VR(.FRS5_doe_8_LAUL.brassU4.spring_ref,.FRS5_doe_8_LAUL.sideY1_23.beamY_s1_22b),",  &
              "21.165+1.016/2,",  &
              "1E4, 1.25, 1E1, .01)"  &
   z_force_function = "0"
!
force modify direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.BU1_2_s1_22  &
   x_force_function = "0"  &
   y_force_function = "IMPACT( DM(.FRS5_doe_8_LAUL.brassU1.spring_ref,.FRS5_doe_8_LAUL.sideY1_22.beamY_s1_21b),",  &
              "VR(.FRS5_doe_8_LAUL.brassU1.spring_ref,.FRS5_doe_8_LAUL.sideY1_22.beamY_s1_21b),",  &
              "21.165+1.016/2,",  &
              "1E4, 1.25, 1E1, .01)"  &
   z_force_function = "0"
!
force modify direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.BU2_2_s1_22  &
   x_force_function = "0"  &
   y_force_function = "IMPACT( DM(.FRS5_doe_8_LAUL.brassU2.spring_ref,.FRS5_doe_8_LAUL.sideY1_22.beamY_s1_21b),",  &
              "VR(.FRS5_doe_8_LAUL.brassU2.spring_ref,.FRS5_doe_8_LAUL.sideY1_22.beamY_s1_21b),",  &
              "21.165+1.016/2,",  &
              "1E4, 1.25, 1E1, .01)"  &
   z_force_function = "0"
!
force modify direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.BU3_2_s1_22  &
   x_force_function = "0"  &
   y_force_function = "IMPACT( DM(.FRS5_doe_8_LAUL.brassU3.spring_ref,.FRS5_doe_8_LAUL.sideY1_22.beamY_s1_21b),",  &
              "VR(.FRS5_doe_8_LAUL.brassU3.spring_ref,.FRS5_doe_8_LAUL.sideY1_22.beamY_s1_21b),",  &
              "21.165+1.016/2,",  &
              "1E4, 1.25, 1E1, .01)"  &
   z_force_function = "0"
!
force modify direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.BU4_2_s1_22  &
   x_force_function = "0"  &
   y_force_function = "IMPACT( DM(.FRS5_doe_8_LAUL.brassU4.spring_ref,.FRS5_doe_8_LAUL.sideY1_22.beamY_s1_21b),",  &
              "VR(.FRS5_doe_8_LAUL.brassU4.spring_ref,.FRS5_doe_8_LAUL.sideY1_22.beamY_s1_21b),",  &
              "21.165+1.016/2,",  &
              "1E4, 1.25, 1E1, .01)"  &
   z_force_function = "0"
!
force modify direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.BU1_2_s1_21  &
   x_force_function = "0"  &
   y_force_function = "IMPACT( DM(.FRS5_doe_8_LAUL.brassU1.spring_ref,.FRS5_doe_8_LAUL.sideY1_21.beamY_s1_20b),",  &
              "VR(.FRS5_doe_8_LAUL.brassU1.spring_ref,.FRS5_doe_8_LAUL.sideY1_21.beamY_s1_20b),",  &
              "21.165+1.016/2,",  &
              "1E4, 1.25, 1E1, .01)"  &
   z_force_function = "0"
!
force modify direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.BU2_2_s1_21  &
   x_force_function = "0"  &
   y_force_function = "IMPACT( DM(.FRS5_doe_8_LAUL.brassU2.spring_ref,.FRS5_doe_8_LAUL.sideY1_21.beamY_s1_20b),",  &
              "VR(.FRS5_doe_8_LAUL.brassU2.spring_ref,.FRS5_doe_8_LAUL.sideY1_21.beamY_s1_20b),",  &
              "21.165+1.016/2,",  &
              "1E4, 1.25, 1E1, .01)"  &
   z_force_function = "0"
!
force modify direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.BU3_2_s1_21  &
   x_force_function = "0"  &
   y_force_function = "IMPACT( DM(.FRS5_doe_8_LAUL.brassU3.spring_ref,.FRS5_doe_8_LAUL.sideY1_21.beamY_s1_20b),",  &
              "VR(.FRS5_doe_8_LAUL.brassU3.spring_ref,.FRS5_doe_8_LAUL.sideY1_21.beamY_s1_20b),",  &
              "21.165+1.016/2,",  &
              "1E4, 1.25, 1E1, .01)"  &
   z_force_function = "0"
!
force modify direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.BU4_2_s1_21  &
   x_force_function = "0"  &
   y_force_function = "IMPACT( DM(.FRS5_doe_8_LAUL.brassU4.spring_ref,.FRS5_doe_8_LAUL.sideY1_21.beamY_s1_20b),",  &
              "VR(.FRS5_doe_8_LAUL.brassU4.spring_ref,.FRS5_doe_8_LAUL.sideY1_21.beamY_s1_20b),",  &
              "21.165+1.016/2,",  &
              "1E4, 1.25, 1E1, .01)"  &
   z_force_function = "0"
!
force modify direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.BU1_2_s1_20  &
   x_force_function = "0"  &
   y_force_function = "IMPACT( DM(.FRS5_doe_8_LAUL.brassU1.spring_ref,.FRS5_doe_8_LAUL.sideY1_20.beamY_s1_19b),",  &
              "VR(.FRS5_doe_8_LAUL.brassU1.spring_ref,.FRS5_doe_8_LAUL.sideY1_20.beamY_s1_19b),",  &
              "21.165+1.016/2,",  &
              "1E4, 1.25, 1E1, .01)"  &
   z_force_function = "0"
!
force modify direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.BU2_2_s1_20  &
   x_force_function = "0"  &
   y_force_function = "IMPACT( DM(.FRS5_doe_8_LAUL.brassU2.spring_ref,.FRS5_doe_8_LAUL.sideY1_20.beamY_s1_19b),",  &
              "VR(.FRS5_doe_8_LAUL.brassU2.spring_ref,.FRS5_doe_8_LAUL.sideY1_20.beamY_s1_19b),",  &
              "21.165+1.016/2,",  &
              "1E4, 1.25, 1E1, .01)"  &
   z_force_function = "0"
!
force modify direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.BU3_2_s1_20  &
   x_force_function = "0"  &
   y_force_function = "IMPACT( DM(.FRS5_doe_8_LAUL.brassU3.spring_ref,.FRS5_doe_8_LAUL.sideY1_20.beamY_s1_19b),",  &
              "VR(.FRS5_doe_8_LAUL.brassU3.spring_ref,.FRS5_doe_8_LAUL.sideY1_20.beamY_s1_19b),",  &
              "21.165+1.016/2,",  &
              "1E4, 1.25, 1E1, .01)"  &
   z_force_function = "0"
!
force modify direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.BU4_2_s1_20  &
   x_force_function = "0"  &
   y_force_function = "IMPACT( DM(.FRS5_doe_8_LAUL.brassU4.spring_ref,.FRS5_doe_8_LAUL.sideY1_20.beamY_s1_19b),",  &
              "VR(.FRS5_doe_8_LAUL.brassU4.spring_ref,.FRS5_doe_8_LAUL.sideY1_20.beamY_s1_19b),",  &
              "21.165+1.016/2,",  &
              "1E4, 1.25, 1E1, .01)"  &
   z_force_function = "0"
!
force modify direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.popU5a  &
   x_force_function = "-VARVAL(.FRS5_doe_8_LAUL.KU5aft) *20* DX(.FRS5_doe_8_LAUL.brassU5.ac, .FRS5_doe_8_LAUL.linkU5.aft_center, .FRS5_doe_8_LAUL.linkU5.aft_center)"  &
   y_force_function = "-VARVAL(.FRS5_doe_8_LAUL.KU5aft) * DY(.FRS5_doe_8_LAUL.brassU5.ac, .FRS5_doe_8_LAUL.linkU5.aft_center, .FRS5_doe_8_LAUL.linkU5.aft_center)"  &
   z_force_function = "-VARVAL(.FRS5_doe_8_LAUL.KU5aft) * DZ(.FRS5_doe_8_LAUL.brassU5.ac, .FRS5_doe_8_LAUL.linkU5.aft_center, .FRS5_doe_8_LAUL.linkU5.aft_center)"
!
force modify direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.popU5f  &
   x_force_function = "-VARVAL(.FRS5_doe_8_LAUL.KU5fwd) *20* DX(.FRS5_doe_8_LAUL.brassU5.fc, .FRS5_doe_8_LAUL.linkU5.fwd_center, .FRS5_doe_8_LAUL.linkU5.fwd_center)"  &
   y_force_function = "-VARVAL(.FRS5_doe_8_LAUL.KU5fwd) * DY(.FRS5_doe_8_LAUL.brassU5.fc, .FRS5_doe_8_LAUL.linkU5.fwd_center, .FRS5_doe_8_LAUL.linkU5.fwd_center)"  &
   z_force_function = "-VARVAL(.FRS5_doe_8_LAUL.KU5fwd) * DZ(.FRS5_doe_8_LAUL.brassU5.fc, .FRS5_doe_8_LAUL.linkU5.fwd_center, .FRS5_doe_8_LAUL.linkU5.fwd_center)"
!
force modify direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.popU4t  &
   x_force_function = "-VARVAL(.FRS5_doe_8_LAUL.KU4trail)*20 * DX(.FRS5_doe_8_LAUL.brassU5.tc, .FRS5_doe_8_LAUL.linkU4.trailing_center, .FRS5_doe_8_LAUL.linkU4.trailing_center)"  &
   y_force_function = "-VARVAL(.FRS5_doe_8_LAUL.KU4trail) * DY(.FRS5_doe_8_LAUL.brassU5.tc, .FRS5_doe_8_LAUL.linkU4.trailing_center, .FRS5_doe_8_LAUL.linkU4.trailing_center)"  &
   z_force_function = "-VARVAL(.FRS5_doe_8_LAUL.KU4trail) * DZ(.FRS5_doe_8_LAUL.brassU5.tc, .FRS5_doe_8_LAUL.linkU4.trailing_center, .FRS5_doe_8_LAUL.linkU4.trailing_center)"
!
force modify direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.tongueU5  &
   x_force_function = "0"  &
   y_force_function = "IMPACT( DY(.FRS5_doe_8_LAUL.linkU5.tongue, .FRS5_doe_8_LAUL.brassU5.channel_ref, .FRS5_doe_8_LAUL.linkU5.tongue),",  &
              "  VY(.FRS5_doe_8_LAUL.linkU5.tongue, .FRS5_doe_8_LAUL.brassU5.channel_ref, .FRS5_doe_8_LAUL.linkU5.tongue),",  &
              "  17, 1.0, 1.25, .04, .01) ",  &
              "* IF( DZ(.FRS5_doe_8_LAUL.brassU5.fc,.FRS5_doe_8_LAUL.linkU5.fwd_center,.FRS5_doe_8_LAUL.linkU5.fwd_center)+20: 0,0,1)"  &
   z_force_function = "0"
!
force modify direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.feed_dragU5  &
   x_force_function = "-.005*VX(.FRS5_doe_8_LAUL.linkU5.trailing_center)"  &
   y_force_function = "-.005*VY(.FRS5_doe_8_LAUL.linkU5.trailing_center)"  &
   z_force_function = "-.005*VZ(.FRS5_doe_8_LAUL.linkU5.trailing_center)"
!
force modify direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.BU5_2_s1_20  &
   x_force_function = "0"  &
   y_force_function = "IMPACT( DM(.FRS5_doe_8_LAUL.brassU5.spring_ref,.FRS5_doe_8_LAUL.sideY1_20.beamY_s1_19b),",  &
              "VR(.FRS5_doe_8_LAUL.brassU5.spring_ref,.FRS5_doe_8_LAUL.sideY1_20.beamY_s1_19b),",  &
              "21.165+1.016/2,",  &
              "1E4, 1.25, 1E1, .01)"  &
   z_force_function = "0"
!
force modify direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.BU5_2_s1_21  &
   x_force_function = "0"  &
   y_force_function = "IMPACT( DM(.FRS5_doe_8_LAUL.brassU5.spring_ref,.FRS5_doe_8_LAUL.sideY1_21.beamY_s1_20b),",  &
              "VR(.FRS5_doe_8_LAUL.brassU5.spring_ref,.FRS5_doe_8_LAUL.sideY1_21.beamY_s1_20b),",  &
              "21.165+1.016/2,",  &
              "1E4, 1.25, 1E1, .01)"  &
   z_force_function = "0"
!
force modify direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.BU5_2_s1_22  &
   x_force_function = "0"  &
   y_force_function = "IMPACT( DM(.FRS5_doe_8_LAUL.brassU5.spring_ref,.FRS5_doe_8_LAUL.sideY1_22.beamY_s1_21b),",  &
              "VR(.FRS5_doe_8_LAUL.brassU5.spring_ref,.FRS5_doe_8_LAUL.sideY1_22.beamY_s1_21b),",  &
              "21.165+1.016/2,",  &
              "1E4, 1.25, 1E1, .01)"  &
   z_force_function = "0"
!
force modify direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.BU5_2_s1_23  &
   x_force_function = "0"  &
   y_force_function = "IMPACT( DM(.FRS5_doe_8_LAUL.brassU5.spring_ref,.FRS5_doe_8_LAUL.sideY1_23.beamY_s1_22b),",  &
              "VR(.FRS5_doe_8_LAUL.brassU5.spring_ref,.FRS5_doe_8_LAUL.sideY1_23.beamY_s1_22b),",  &
              "21.165+1.016/2,",  &
              "1E4, 1.25, 1E1, .01)"  &
   z_force_function = "0"
!
force modify direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.BU5_2_s1_24  &
   x_force_function = "0"  &
   y_force_function = "IMPACT( DM(.FRS5_doe_8_LAUL.brassU5.spring_ref,.FRS5_doe_8_LAUL.sideY1_24.beamY_s1_23b),",  &
              "VR(.FRS5_doe_8_LAUL.brassU5.spring_ref,.FRS5_doe_8_LAUL.sideY1_24.beamY_s1_23b),",  &
              "21.165+1.016/2,",  &
              "1E4, 1.25, 1E1, .01)"  &
   z_force_function = "0"
!
force modify direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.BU5_2_s1_25  &
   x_force_function = "0"  &
   y_force_function = "IMPACT( DM(.FRS5_doe_8_LAUL.brassU5.spring_ref,.FRS5_doe_8_LAUL.sideY1_25.beamY_s1_24b),",  &
              "VR(.FRS5_doe_8_LAUL.brassU5.spring_ref,.FRS5_doe_8_LAUL.sideY1_25.beamY_s1_24b),",  &
              "21.165+1.016/2,",  &
              "1E4, 1.25, 1E1, .01)"  &
   z_force_function = "0"
!
force modify direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.BU5_2_s1_26  &
   x_force_function = "0"  &
   y_force_function = "IMPACT( DM(.FRS5_doe_8_LAUL.brassU5.spring_ref,.FRS5_doe_8_LAUL.sideY1_26.beamY_s1_25b),",  &
              "VR(.FRS5_doe_8_LAUL.brassU5.spring_ref,.FRS5_doe_8_LAUL.sideY1_26.beamY_s1_25b),",  &
              "21.165+1.016/2,",  &
              "1E4, 1.25, 1E1, .01)"  &
   z_force_function = "0"
!
force modify direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.BU5_2_s1_27  &
   x_force_function = "0"  &
   y_force_function = "IMPACT( DM(.FRS5_doe_8_LAUL.brassU5.spring_ref,.FRS5_doe_8_LAUL.sideY1_27.beamY_s1_26b),",  &
              "VR(.FRS5_doe_8_LAUL.brassU5.spring_ref,.FRS5_doe_8_LAUL.sideY1_27.beamY_s1_26b),",  &
              "21.165+1.016/2,",  &
              "1E4, 1.25, 1E1, .01)"  &
   z_force_function = "0"
!
force modify direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.BU5_2_s1_28  &
   x_force_function = "0"  &
   y_force_function = "IMPACT( DM(.FRS5_doe_8_LAUL.brassU5.spring_ref,.FRS5_doe_8_LAUL.sideY1_28.beamY_s1_27b),",  &
              "VR(.FRS5_doe_8_LAUL.brassU5.spring_ref,.FRS5_doe_8_LAUL.sideY1_28.beamY_s1_27b),",  &
              "21.165+1.016/2,",  &
              "1E4, 1.25, 1E1, .01)"  &
   z_force_function = "0"
!
force modify direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.BU5_2_s1_29  &
   x_force_function = "0"  &
   y_force_function = "IMPACT( DM(.FRS5_doe_8_LAUL.brassU5.spring_ref,.FRS5_doe_8_LAUL.sideY1_29.beamY_s1_28b),",  &
              "VR(.FRS5_doe_8_LAUL.brassU5.spring_ref,.FRS5_doe_8_LAUL.sideY1_29.beamY_s1_28b),",  &
              "21.165+1.016/2,",  &
              "1E4, 1.25, 1E1, .01)"  &
   z_force_function = "0"
!
force modify direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.BU5_2_s1_30  &
   x_force_function = "0"  &
   y_force_function = "IMPACT( DM(.FRS5_doe_8_LAUL.brassU5.spring_ref,.FRS5_doe_8_LAUL.sideY1_30.beamY_s1_29b),",  &
              "VR(.FRS5_doe_8_LAUL.brassU5.spring_ref,.FRS5_doe_8_LAUL.sideY1_30.beamY_s1_29b),",  &
              "21.165+1.016/2,",  &
              "1E4, 1.25, 1E1, .01)"  &
   z_force_function = "0"
!
force modify direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.BU5_2_s1_31  &
   x_force_function = "0"  &
   y_force_function = "IMPACT( DM(.FRS5_doe_8_LAUL.brassU5.spring_ref,.FRS5_doe_8_LAUL.sideY1_31.beamY_s1_30b),",  &
              "VR(.FRS5_doe_8_LAUL.brassU5.spring_ref,.FRS5_doe_8_LAUL.sideY1_31.beamY_s1_30b),",  &
              "21.165+1.016/2,",  &
              "1E4, 1.25, 1E1, .01)"  &
   z_force_function = "0"
!
force modify direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.popL2a  &
   x_force_function = "-VARVAL(.FRS5_doe_8_LAUL.KL2aft) *20* DX(.FRS5_doe_8_LAUL.brassL2.ac, .FRS5_doe_8_LAUL.linkL2.aft_center, .FRS5_doe_8_LAUL.linkL2.aft_center)"  &
   y_force_function = "-VARVAL(.FRS5_doe_8_LAUL.KL2aft) * DY(.FRS5_doe_8_LAUL.brassL2.ac, .FRS5_doe_8_LAUL.linkL2.aft_center, .FRS5_doe_8_LAUL.linkL2.aft_center)"  &
   z_force_function = "-VARVAL(.FRS5_doe_8_LAUL.KL2aft) * DZ(.FRS5_doe_8_LAUL.brassL2.ac, .FRS5_doe_8_LAUL.linkL2.aft_center, .FRS5_doe_8_LAUL.linkL2.aft_center)"
!
force modify direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.popL3a  &
   x_force_function = "-VARVAL(.FRS5_doe_8_LAUL.KL3aft) *20* DX(.FRS5_doe_8_LAUL.brassL3.ac, .FRS5_doe_8_LAUL.linkL3.aft_center, .FRS5_doe_8_LAUL.linkL3.aft_center)"  &
   y_force_function = "-VARVAL(.FRS5_doe_8_LAUL.KL3aft) * DY(.FRS5_doe_8_LAUL.brassL3.ac, .FRS5_doe_8_LAUL.linkL3.aft_center, .FRS5_doe_8_LAUL.linkL3.aft_center)"  &
   z_force_function = "-VARVAL(.FRS5_doe_8_LAUL.KL3aft) * DZ(.FRS5_doe_8_LAUL.brassL3.ac, .FRS5_doe_8_LAUL.linkL3.aft_center, .FRS5_doe_8_LAUL.linkL3.aft_center)"
!
force modify direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.popL4a  &
   x_force_function = "-VARVAL(.FRS5_doe_8_LAUL.KL4aft) *20* DX(.FRS5_doe_8_LAUL.brassL4.ac, .FRS5_doe_8_LAUL.linkL4.aft_center, .FRS5_doe_8_LAUL.linkL4.aft_center)"  &
   y_force_function = "-VARVAL(.FRS5_doe_8_LAUL.KL4aft) * DY(.FRS5_doe_8_LAUL.brassL4.ac, .FRS5_doe_8_LAUL.linkL4.aft_center, .FRS5_doe_8_LAUL.linkL4.aft_center)"  &
   z_force_function = "-VARVAL(.FRS5_doe_8_LAUL.KL4aft) * DZ(.FRS5_doe_8_LAUL.brassL4.ac, .FRS5_doe_8_LAUL.linkL4.aft_center, .FRS5_doe_8_LAUL.linkL4.aft_center)"
!
force modify direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.popL5a  &
   x_force_function = "-VARVAL(.FRS5_doe_8_LAUL.KL5aft) *20* DX(.FRS5_doe_8_LAUL.brassL5.ac, .FRS5_doe_8_LAUL.linkL5.aft_center, .FRS5_doe_8_LAUL.linkL5.aft_center)"  &
   y_force_function = "-VARVAL(.FRS5_doe_8_LAUL.KL5aft) * DY(.FRS5_doe_8_LAUL.brassL5.ac, .FRS5_doe_8_LAUL.linkL5.aft_center, .FRS5_doe_8_LAUL.linkL5.aft_center)"  &
   z_force_function = "-VARVAL(.FRS5_doe_8_LAUL.KL5aft) * DZ(.FRS5_doe_8_LAUL.brassL5.ac, .FRS5_doe_8_LAUL.linkL5.aft_center, .FRS5_doe_8_LAUL.linkL5.aft_center)"
!
force modify direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.popL3t  &
   x_force_function = "-VARVAL(.FRS5_doe_8_LAUL.KL3trail) *20* DX(.FRS5_doe_8_LAUL.brassL2.tc, .FRS5_doe_8_LAUL.linkL3.trailing_center, .FRS5_doe_8_LAUL.linkL3.trailing_center)"  &
   y_force_function = "-VARVAL(.FRS5_doe_8_LAUL.KL3trail) * DY(.FRS5_doe_8_LAUL.brassL2.tc, .FRS5_doe_8_LAUL.linkL3.trailing_center, .FRS5_doe_8_LAUL.linkL3.trailing_center)"  &
   z_force_function = "-VARVAL(.FRS5_doe_8_LAUL.KL3trail) * DZ(.FRS5_doe_8_LAUL.brassL2.tc, .FRS5_doe_8_LAUL.linkL3.trailing_center, .FRS5_doe_8_LAUL.linkL3.trailing_center)"
!
force modify direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.popL4t  &
   x_force_function = "-VARVAL(.FRS5_doe_8_LAUL.KL4trail) *20* DX(.FRS5_doe_8_LAUL.brassL3.tc, .FRS5_doe_8_LAUL.linkL4.trailing_center, .FRS5_doe_8_LAUL.linkL4.trailing_center)"  &
   y_force_function = "-VARVAL(.FRS5_doe_8_LAUL.KL4trail) * DY(.FRS5_doe_8_LAUL.brassL3.tc, .FRS5_doe_8_LAUL.linkL4.trailing_center, .FRS5_doe_8_LAUL.linkL4.trailing_center)"  &
   z_force_function = "-VARVAL(.FRS5_doe_8_LAUL.KL4trail) * DZ(.FRS5_doe_8_LAUL.brassL3.tc, .FRS5_doe_8_LAUL.linkL4.trailing_center, .FRS5_doe_8_LAUL.linkL4.trailing_center)"
!
force modify direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.popL5t  &
   x_force_function = "-VARVAL(.FRS5_doe_8_LAUL.KL5trail) *20* DX(.FRS5_doe_8_LAUL.brassL4.tc, .FRS5_doe_8_LAUL.linkL5.trailing_center, .FRS5_doe_8_LAUL.linkL5.trailing_center)"  &
   y_force_function = "-VARVAL(.FRS5_doe_8_LAUL.KL5trail) * DY(.FRS5_doe_8_LAUL.brassL4.tc, .FRS5_doe_8_LAUL.linkL5.trailing_center, .FRS5_doe_8_LAUL.linkL5.trailing_center)"  &
   z_force_function = "-VARVAL(.FRS5_doe_8_LAUL.KL5trail) * DZ(.FRS5_doe_8_LAUL.brassL4.tc, .FRS5_doe_8_LAUL.linkL5.trailing_center, .FRS5_doe_8_LAUL.linkL5.trailing_center)"
!
force modify direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.BL2_2_s2_12  &
   x_force_function = "0.0"  &
   y_force_function = "IMPACT( DM(.FRS5_doe_8_LAUL.brassL2.spring_ref,.FRS5_doe_8_LAUL.sideY2_12.beamY_s2_11b),",  &
              "VR(.FRS5_doe_8_LAUL.brassL2.spring_ref,.FRS5_doe_8_LAUL.sideY2_12.beamY_s2_11b),",  &
              "21.165+1.016/2,",  &
              "1E4, 1.25, 1E1, .01)"  &
   z_force_function = "0.0"
!
force modify direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.BL3_2_s2_12  &
   x_force_function = "0.0"  &
   y_force_function = "IMPACT( DM(.FRS5_doe_8_LAUL.brassL3.spring_ref,.FRS5_doe_8_LAUL.sideY2_12.beamY_s2_11b),",  &
              "VR(.FRS5_doe_8_LAUL.brassL3.spring_ref,.FRS5_doe_8_LAUL.sideY2_12.beamY_s2_11b),",  &
              "21.165+1.016/2,",  &
              "1E4, 1.25, 1E1, .01)"  &
   z_force_function = "0.0"
!
force modify direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.BL4_2_s2_12  &
   x_force_function = "0.0"  &
   y_force_function = "IMPACT( DM(.FRS5_doe_8_LAUL.brassL4.spring_ref,.FRS5_doe_8_LAUL.sideY2_12.beamY_s2_11b),",  &
              "VR(.FRS5_doe_8_LAUL.brassL4.spring_ref,.FRS5_doe_8_LAUL.sideY2_12.beamY_s2_11b),",  &
              "21.165+1.016/2,",  &
              "1E4, 1.25, 1E1, .01)"  &
   z_force_function = "0.0"
!
force modify direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.BL5_2_s2_12  &
   x_force_function = "0.0"  &
   y_force_function = "IMPACT( DM(.FRS5_doe_8_LAUL.brassL5.spring_ref,.FRS5_doe_8_LAUL.sideY2_12.beamY_s2_11b),",  &
              "VR(.FRS5_doe_8_LAUL.brassL5.spring_ref,.FRS5_doe_8_LAUL.sideY2_12.beamY_s2_11b),",  &
              "21.165+1.016/2,",  &
              "1E4, 1.25, 1E1, .01)"  &
   z_force_function = "0.0"
!
force modify direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.BL2_2_s2_13  &
   x_force_function = "0.0"  &
   y_force_function = "IMPACT( DM(.FRS5_doe_8_LAUL.brassL2.spring_ref,.FRS5_doe_8_LAUL.sideY2_13.beamY_s2_12b),",  &
              "VR(.FRS5_doe_8_LAUL.brassL2.spring_ref,.FRS5_doe_8_LAUL.sideY2_13.beamY_s2_12b),",  &
              "21.165+1.016/2,",  &
              "1E4, 1.25, 1E1, .01)"  &
   z_force_function = "0.0"
!
force modify direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.BL3_2_s2_13  &
   x_force_function = "0.0"  &
   y_force_function = "IMPACT( DM(.FRS5_doe_8_LAUL.brassL3.spring_ref,.FRS5_doe_8_LAUL.sideY2_13.beamY_s2_12b),",  &
              "VR(.FRS5_doe_8_LAUL.brassL3.spring_ref,.FRS5_doe_8_LAUL.sideY2_13.beamY_s2_12b),",  &
              "21.165+1.016/2,",  &
              "1E4, 1.25, 1E1, .01)"  &
   z_force_function = "0.0"
!
force modify direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.BL4_2_s2_13  &
   x_force_function = "0.0"  &
   y_force_function = "IMPACT( DM(.FRS5_doe_8_LAUL.brassL4.spring_ref,.FRS5_doe_8_LAUL.sideY2_13.beamY_s2_12b),",  &
              "VR(.FRS5_doe_8_LAUL.brassL4.spring_ref,.FRS5_doe_8_LAUL.sideY2_13.beamY_s2_12b),",  &
              "21.165+1.016/2,",  &
              "1E4, 1.25, 1E1, .01)"  &
   z_force_function = "0.0"
!
force modify direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.BL5_2_s2_13  &
   x_force_function = "0.0"  &
   y_force_function = "IMPACT( DM(.FRS5_doe_8_LAUL.brassL5.spring_ref,.FRS5_doe_8_LAUL.sideY2_13.beamY_s2_12b),",  &
              "VR(.FRS5_doe_8_LAUL.brassL5.spring_ref,.FRS5_doe_8_LAUL.sideY2_13.beamY_s2_12b),",  &
              "21.165+1.016/2,",  &
              "1E4, 1.25, 1E1, .01)"  &
   z_force_function = "0.0"
!
force modify direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.BL2_2_s2_14  &
   x_force_function = "0.0"  &
   y_force_function = "IMPACT( DM(.FRS5_doe_8_LAUL.brassL2.spring_ref,.FRS5_doe_8_LAUL.sideY2_14.beamY_s2_13b),",  &
              "VR(.FRS5_doe_8_LAUL.brassL2.spring_ref,.FRS5_doe_8_LAUL.sideY2_14.beamY_s2_13b),",  &
              "21.165+1.016/2,",  &
              "1E4, 1.25, 1E1, .01)"  &
   z_force_function = "0.0"
!
force modify direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.BL3_2_s2_14  &
   x_force_function = "0.0"  &
   y_force_function = "IMPACT( DM(.FRS5_doe_8_LAUL.brassL3.spring_ref,.FRS5_doe_8_LAUL.sideY2_14.beamY_s2_13b),",  &
              "VR(.FRS5_doe_8_LAUL.brassL3.spring_ref,.FRS5_doe_8_LAUL.sideY2_14.beamY_s2_13b),",  &
              "21.165+1.016/2,",  &
              "1E4, 1.25, 1E1, .01)"  &
   z_force_function = "0.0"
!
force modify direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.BL4_2_s2_14  &
   x_force_function = "0.0"  &
   y_force_function = "IMPACT( DM(.FRS5_doe_8_LAUL.brassL4.spring_ref,.FRS5_doe_8_LAUL.sideY2_14.beamY_s2_13b),",  &
              "VR(.FRS5_doe_8_LAUL.brassL4.spring_ref,.FRS5_doe_8_LAUL.sideY2_14.beamY_s2_13b),",  &
              "21.165+1.016/2,",  &
              "1E4, 1.25, 1E1, .01)"  &
   z_force_function = "0.0"
!
force modify direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.BL5_2_s2_14  &
   x_force_function = "0.0"  &
   y_force_function = "IMPACT( DM(.FRS5_doe_8_LAUL.brassL5.spring_ref,.FRS5_doe_8_LAUL.sideY2_14.beamY_s2_13b),",  &
              "VR(.FRS5_doe_8_LAUL.brassL5.spring_ref,.FRS5_doe_8_LAUL.sideY2_14.beamY_s2_13b),",  &
              "21.165+1.016/2,",  &
              "1E4, 1.25, 1E1, .01)"  &
   z_force_function = "0.0"
!
force modify direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.BL2_2_s2_15  &
   x_force_function = "0.0"  &
   y_force_function = "IMPACT( DM(.FRS5_doe_8_LAUL.brassL2.spring_ref,.FRS5_doe_8_LAUL.sideY2_15.beamY_s2_14b),",  &
              "VR(.FRS5_doe_8_LAUL.brassL2.spring_ref,.FRS5_doe_8_LAUL.sideY2_15.beamY_s2_14b),",  &
              "21.165+1.016/2,",  &
              "1E4, 1.25, 1E1, .01)"  &
   z_force_function = "0.0"
!
force modify direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.BL3_2_s2_15  &
   x_force_function = "0.0"  &
   y_force_function = "IMPACT( DM(.FRS5_doe_8_LAUL.brassL3.spring_ref,.FRS5_doe_8_LAUL.sideY2_15.beamY_s2_14b),",  &
              "VR(.FRS5_doe_8_LAUL.brassL3.spring_ref,.FRS5_doe_8_LAUL.sideY2_15.beamY_s2_14b),",  &
              "21.165+1.016/2,",  &
              "1E4, 1.25, 1E1, .01)"  &
   z_force_function = "0.0"
!
force modify direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.BL4_2_s2_15  &
   x_force_function = "0.0"  &
   y_force_function = "IMPACT( DM(.FRS5_doe_8_LAUL.brassL4.spring_ref,.FRS5_doe_8_LAUL.sideY2_15.beamY_s2_14b),",  &
              "VR(.FRS5_doe_8_LAUL.brassL4.spring_ref,.FRS5_doe_8_LAUL.sideY2_15.beamY_s2_14b),",  &
              "21.165+1.016/2,",  &
              "1E4, 1.25, 1E1, .01)"  &
   z_force_function = "0.0"
!
force modify direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.BL5_2_s2_15  &
   x_force_function = "0.0"  &
   y_force_function = "IMPACT( DM(.FRS5_doe_8_LAUL.brassL5.spring_ref,.FRS5_doe_8_LAUL.sideY2_15.beamY_s2_14b),",  &
              "VR(.FRS5_doe_8_LAUL.brassL5.spring_ref,.FRS5_doe_8_LAUL.sideY2_15.beamY_s2_14b),",  &
              "21.165+1.016/2,",  &
              "1E4, 1.25, 1E1, .01)"  &
   z_force_function = "0.0"
!
force modify direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.BL2_2_s2_16  &
   x_force_function = "0.0"  &
   y_force_function = "IMPACT( DM(.FRS5_doe_8_LAUL.brassL2.spring_ref,.FRS5_doe_8_LAUL.sideY2_16.beamY_s2_15b),",  &
              "VR(.FRS5_doe_8_LAUL.brassL2.spring_ref,.FRS5_doe_8_LAUL.sideY2_16.beamY_s2_15b),",  &
              "21.165+1.016/2,",  &
              "1E4, 1.25, 1E1, .01)"  &
   z_force_function = "0.0"
!
force modify direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.BL3_2_s2_16  &
   x_force_function = "0.0"  &
   y_force_function = "IMPACT( DM(.FRS5_doe_8_LAUL.brassL3.spring_ref,.FRS5_doe_8_LAUL.sideY2_16.beamY_s2_15b),",  &
              "VR(.FRS5_doe_8_LAUL.brassL3.spring_ref,.FRS5_doe_8_LAUL.sideY2_16.beamY_s2_15b),",  &
              "21.165+1.016/2,",  &
              "1E4, 1.25, 1E1, .01)"  &
   z_force_function = "0.0"
!
force modify direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.BL4_2_s2_16  &
   x_force_function = "0.0"  &
   y_force_function = "IMPACT( DM(.FRS5_doe_8_LAUL.brassL4.spring_ref,.FRS5_doe_8_LAUL.sideY2_16.beamY_s2_15b),",  &
              "VR(.FRS5_doe_8_LAUL.brassL4.spring_ref,.FRS5_doe_8_LAUL.sideY2_16.beamY_s2_15b),",  &
              "21.165+1.016/2,",  &
              "1E4, 1.25, 1E1, .01)"  &
   z_force_function = "0.0"
!
force modify direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.BL5_2_s2_16  &
   x_force_function = "0.0"  &
   y_force_function = "IMPACT( DM(.FRS5_doe_8_LAUL.brassL5.spring_ref,.FRS5_doe_8_LAUL.sideY2_16.beamY_s2_15b),",  &
              "VR(.FRS5_doe_8_LAUL.brassL5.spring_ref,.FRS5_doe_8_LAUL.sideY2_16.beamY_s2_15b),",  &
              "21.165+1.016/2,",  &
              "1E4, 1.25, 1E1, .01)"  &
   z_force_function = "0.0"
!
force modify direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.BL2_2_s2_17  &
   x_force_function = "0.0"  &
   y_force_function = "IMPACT( DM(.FRS5_doe_8_LAUL.brassL2.spring_ref,.FRS5_doe_8_LAUL.sideY2_17.beamY_s2_16b),",  &
              "VR(.FRS5_doe_8_LAUL.brassL2.spring_ref,.FRS5_doe_8_LAUL.sideY2_17.beamY_s2_16b),",  &
              "21.165+1.016/2,",  &
              "1E4, 1.25, 1E1, .01)"  &
   z_force_function = "0.0"
!
force modify direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.BL3_2_s2_17  &
   x_force_function = "0.0"  &
   y_force_function = "IMPACT( DM(.FRS5_doe_8_LAUL.brassL3.spring_ref,.FRS5_doe_8_LAUL.sideY2_17.beamY_s2_16b),",  &
              "VR(.FRS5_doe_8_LAUL.brassL3.spring_ref,.FRS5_doe_8_LAUL.sideY2_17.beamY_s2_16b),",  &
              "21.165+1.016/2,",  &
              "1E4, 1.25, 1E1, .01)"  &
   z_force_function = "0.0"
!
force modify direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.BL4_2_s2_17  &
   x_force_function = "0.0"  &
   y_force_function = "IMPACT( DM(.FRS5_doe_8_LAUL.brassL4.spring_ref,.FRS5_doe_8_LAUL.sideY2_17.beamY_s2_16b),",  &
              "VR(.FRS5_doe_8_LAUL.brassL4.spring_ref,.FRS5_doe_8_LAUL.sideY2_17.beamY_s2_16b),",  &
              "21.165+1.016/2,",  &
              "1E4, 1.25, 1E1, .01)"  &
   z_force_function = "0.0"
!
force modify direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.BL5_2_s2_17  &
   x_force_function = "0.0"  &
   y_force_function = "IMPACT( DM(.FRS5_doe_8_LAUL.brassL5.spring_ref,.FRS5_doe_8_LAUL.sideY2_17.beamY_s2_16b),",  &
              "VR(.FRS5_doe_8_LAUL.brassL5.spring_ref,.FRS5_doe_8_LAUL.sideY2_17.beamY_s2_16b),",  &
              "21.165+1.016/2,",  &
              "1E4, 1.25, 1E1, .01)"  &
   z_force_function = "0.0"
!
force modify direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.BL2_2_s2_18  &
   x_force_function = "0.0"  &
   y_force_function = "IMPACT( DM(.FRS5_doe_8_LAUL.brassL2.spring_ref,.FRS5_doe_8_LAUL.sideY2_18.beamY_s2_17b),",  &
              "VR(.FRS5_doe_8_LAUL.brassL2.spring_ref,.FRS5_doe_8_LAUL.sideY2_18.beamY_s2_17b),",  &
              "21.165+1.016/2,",  &
              "1E4, 1.25, 1E1, .01)"  &
   z_force_function = "0.0"
!
force modify direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.BL3_2_s2_18  &
   x_force_function = "0.0"  &
   y_force_function = "IMPACT( DM(.FRS5_doe_8_LAUL.brassL3.spring_ref,.FRS5_doe_8_LAUL.sideY2_18.beamY_s2_17b),",  &
              "VR(.FRS5_doe_8_LAUL.brassL3.spring_ref,.FRS5_doe_8_LAUL.sideY2_18.beamY_s2_17b),",  &
              "21.165+1.016/2,",  &
              "1E4, 1.25, 1E1, .01)"  &
   z_force_function = "0.0"
!
force modify direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.BL4_2_s2_18  &
   x_force_function = "0.0"  &
   y_force_function = "IMPACT( DM(.FRS5_doe_8_LAUL.brassL4.spring_ref,.FRS5_doe_8_LAUL.sideY2_18.beamY_s2_17b),",  &
              "VR(.FRS5_doe_8_LAUL.brassL4.spring_ref,.FRS5_doe_8_LAUL.sideY2_18.beamY_s2_17b),",  &
              "21.165+1.016/2,",  &
              "1E4, 1.25, 1E1, .01)"  &
   z_force_function = "0.0"
!
force modify direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.BL5_2_s2_18  &
   x_force_function = "0.0"  &
   y_force_function = "IMPACT( DM(.FRS5_doe_8_LAUL.brassL5.spring_ref,.FRS5_doe_8_LAUL.sideY2_18.beamY_s2_17b),",  &
              "VR(.FRS5_doe_8_LAUL.brassL5.spring_ref,.FRS5_doe_8_LAUL.sideY2_18.beamY_s2_17b),",  &
              "21.165+1.016/2,",  &
              "1E4, 1.25, 1E1, .01)"  &
   z_force_function = "0.0"
!
force modify direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.BL2_2_s2_19  &
   x_force_function = "0.0"  &
   y_force_function = "IMPACT( DM(.FRS5_doe_8_LAUL.brassL2.spring_ref,.FRS5_doe_8_LAUL.sideY2_19.beamY_s2_18b),",  &
              "VR(.FRS5_doe_8_LAUL.brassL2.spring_ref,.FRS5_doe_8_LAUL.sideY2_19.beamY_s2_18b),",  &
              "21.165+1.016/2,",  &
              "1E4, 1.25, 1E1, .01)"  &
   z_force_function = "0.0"
!
force modify direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.BL3_2_s2_19  &
   x_force_function = "0.0"  &
   y_force_function = "IMPACT( DM(.FRS5_doe_8_LAUL.brassL3.spring_ref,.FRS5_doe_8_LAUL.sideY2_19.beamY_s2_18b),",  &
              "VR(.FRS5_doe_8_LAUL.brassL3.spring_ref,.FRS5_doe_8_LAUL.sideY2_19.beamY_s2_18b),",  &
              "21.165+1.016/2,",  &
              "1E4, 1.25, 1E1, .01)"  &
   z_force_function = "0.0"
!
force modify direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.BL4_2_s2_19  &
   x_force_function = "0.0"  &
   y_force_function = "IMPACT( DM(.FRS5_doe_8_LAUL.brassL4.spring_ref,.FRS5_doe_8_LAUL.sideY2_19.beamY_s2_18b),",  &
              "VR(.FRS5_doe_8_LAUL.brassL4.spring_ref,.FRS5_doe_8_LAUL.sideY2_19.beamY_s2_18b),",  &
              "21.165+1.016/2,",  &
              "1E4, 1.25, 1E1, .01)"  &
   z_force_function = "0.0"
!
force modify direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.BL5_2_s2_19  &
   x_force_function = "0.0"  &
   y_force_function = "IMPACT( DM(.FRS5_doe_8_LAUL.brassL5.spring_ref,.FRS5_doe_8_LAUL.sideY2_19.beamY_s2_18b),",  &
              "VR(.FRS5_doe_8_LAUL.brassL5.spring_ref,.FRS5_doe_8_LAUL.sideY2_19.beamY_s2_18b),",  &
              "21.165+1.016/2,",  &
              "1E4, 1.25, 1E1, .01)"  &
   z_force_function = "0.0"
!
force modify direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.BL2_2_s2_20  &
   x_force_function = "0.0"  &
   y_force_function = "IMPACT( DM(.FRS5_doe_8_LAUL.brassL2.spring_ref,.FRS5_doe_8_LAUL.sideY2_20.beamY_s2_19b),",  &
              "VR(.FRS5_doe_8_LAUL.brassL2.spring_ref,.FRS5_doe_8_LAUL.sideY2_20.beamY_s2_19b),",  &
              "21.165+1.016/2,",  &
              "1E4, 1.25, 1E1, .01)"  &
   z_force_function = "0.0"
!
force modify direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.BL3_2_s2_20  &
   x_force_function = "0.0"  &
   y_force_function = "IMPACT( DM(.FRS5_doe_8_LAUL.brassL3.spring_ref,.FRS5_doe_8_LAUL.sideY2_20.beamY_s2_19b),",  &
              "VR(.FRS5_doe_8_LAUL.brassL3.spring_ref,.FRS5_doe_8_LAUL.sideY2_20.beamY_s2_19b),",  &
              "21.165+1.016/2,",  &
              "1E4, 1.25, 1E1, .01)"  &
   z_force_function = "0.0"
!
force modify direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.BL4_2_s2_20  &
   x_force_function = "0.0"  &
   y_force_function = "IMPACT( DM(.FRS5_doe_8_LAUL.brassL4.spring_ref,.FRS5_doe_8_LAUL.sideY2_20.beamY_s2_19b),",  &
              "VR(.FRS5_doe_8_LAUL.brassL4.spring_ref,.FRS5_doe_8_LAUL.sideY2_20.beamY_s2_19b),",  &
              "21.165+1.016/2,",  &
              "1E4, 1.25, 1E1, .01)"  &
   z_force_function = "0.0"
!
force modify direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.BL5_2_s2_20  &
   x_force_function = "0.0"  &
   y_force_function = "IMPACT( DM(.FRS5_doe_8_LAUL.brassL5.spring_ref,.FRS5_doe_8_LAUL.sideY2_20.beamY_s2_19b),",  &
              "VR(.FRS5_doe_8_LAUL.brassL5.spring_ref,.FRS5_doe_8_LAUL.sideY2_20.beamY_s2_19b),",  &
              "21.165+1.016/2,",  &
              "1E4, 1.25, 1E1, .01)"  &
   z_force_function = "0.0"
!
force modify direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.BL2_2_s2_21  &
   x_force_function = "0.0"  &
   y_force_function = "IMPACT( DM(.FRS5_doe_8_LAUL.brassL2.spring_ref,.FRS5_doe_8_LAUL.sideY2_21.beamY_s2_20b),",  &
              "VR(.FRS5_doe_8_LAUL.brassL2.spring_ref,.FRS5_doe_8_LAUL.sideY2_21.beamY_s2_20b),",  &
              "21.165+1.016/2,",  &
              "1E4, 1.25, 1E1, .01)"  &
   z_force_function = "0.0"
!
force modify direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.BL3_2_s2_21  &
   x_force_function = "0.0"  &
   y_force_function = "IMPACT( DM(.FRS5_doe_8_LAUL.brassL3.spring_ref,.FRS5_doe_8_LAUL.sideY2_21.beamY_s2_20b),",  &
              "VR(.FRS5_doe_8_LAUL.brassL3.spring_ref,.FRS5_doe_8_LAUL.sideY2_21.beamY_s2_20b),",  &
              "21.165+1.016/2,",  &
              "1E4, 1.25, 1E1, .01)"  &
   z_force_function = "0.0"
!
force modify direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.BL4_2_s2_21  &
   x_force_function = "0.0"  &
   y_force_function = "IMPACT( DM(.FRS5_doe_8_LAUL.brassL4.spring_ref,.FRS5_doe_8_LAUL.sideY2_21.beamY_s2_20b),",  &
              "VR(.FRS5_doe_8_LAUL.brassL4.spring_ref,.FRS5_doe_8_LAUL.sideY2_21.beamY_s2_20b),",  &
              "21.165+1.016/2,",  &
              "1E4, 1.25, 1E1, .01)"  &
   z_force_function = "0.0"
!
force modify direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.BL5_2_s2_21  &
   x_force_function = "0.0"  &
   y_force_function = "IMPACT( DM(.FRS5_doe_8_LAUL.brassL5.spring_ref,.FRS5_doe_8_LAUL.sideY2_21.beamY_s2_20b),",  &
              "VR(.FRS5_doe_8_LAUL.brassL5.spring_ref,.FRS5_doe_8_LAUL.sideY2_21.beamY_s2_20b),",  &
              "21.165+1.016/2,",  &
              "1E4, 1.25, 1E1, .01)"  &
   z_force_function = "0.0"
!
force modify direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.BL2_2_s2_22  &
   x_force_function = "0.0"  &
   y_force_function = "IMPACT( DM(.FRS5_doe_8_LAUL.brassL2.spring_ref,.FRS5_doe_8_LAUL.sideY2_22.beamY_s2_21b),",  &
              "VR(.FRS5_doe_8_LAUL.brassL2.spring_ref,.FRS5_doe_8_LAUL.sideY2_22.beamY_s2_21b),",  &
              "21.165+1.016/2,",  &
              "1E4, 1.25, 1E1, .01)"  &
   z_force_function = "0.0"
!
force modify direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.BL3_2_s2_22  &
   x_force_function = "0.0"  &
   y_force_function = "IMPACT( DM(.FRS5_doe_8_LAUL.brassL3.spring_ref,.FRS5_doe_8_LAUL.sideY2_22.beamY_s2_21b),",  &
              "VR(.FRS5_doe_8_LAUL.brassL3.spring_ref,.FRS5_doe_8_LAUL.sideY2_22.beamY_s2_21b),",  &
              "21.165+1.016/2,",  &
              "1E4, 1.25, 1E1, .01)"  &
   z_force_function = "0.0"
!
force modify direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.BL4_2_s2_22  &
   x_force_function = "0.0"  &
   y_force_function = "IMPACT( DM(.FRS5_doe_8_LAUL.brassL4.spring_ref,.FRS5_doe_8_LAUL.sideY2_22.beamY_s2_21b),",  &
              "VR(.FRS5_doe_8_LAUL.brassL4.spring_ref,.FRS5_doe_8_LAUL.sideY2_22.beamY_s2_21b),",  &
              "21.165+1.016/2,",  &
              "1E4, 1.25, 1E1, .01)"  &
   z_force_function = "0.0"
!
force modify direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.BL5_2_s2_22  &
   x_force_function = "0.0"  &
   y_force_function = "IMPACT( DM(.FRS5_doe_8_LAUL.brassL5.spring_ref,.FRS5_doe_8_LAUL.sideY2_22.beamY_s2_21b),",  &
              "VR(.FRS5_doe_8_LAUL.brassL5.spring_ref,.FRS5_doe_8_LAUL.sideY2_22.beamY_s2_21b),",  &
              "21.165+1.016/2,",  &
              "1E4, 1.25, 1E1, .01)"  &
   z_force_function = "0.0"
!
force modify direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.BL2_2_s2_23  &
   x_force_function = "0.0"  &
   y_force_function = "IMPACT( DM(.FRS5_doe_8_LAUL.brassL2.spring_ref,.FRS5_doe_8_LAUL.sideY2_23.beamY_s2_22b),",  &
              "VR(.FRS5_doe_8_LAUL.brassL2.spring_ref,.FRS5_doe_8_LAUL.sideY2_23.beamY_s2_22b),",  &
              "21.165+1.016/2,",  &
              "1E4, 1.25, 1E1, .01)"  &
   z_force_function = "0.0"
!
force modify direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.BL3_2_s2_23  &
   x_force_function = "0.0"  &
   y_force_function = "IMPACT( DM(.FRS5_doe_8_LAUL.brassL3.spring_ref,.FRS5_doe_8_LAUL.sideY2_23.beamY_s2_22b),",  &
              "VR(.FRS5_doe_8_LAUL.brassL3.spring_ref,.FRS5_doe_8_LAUL.sideY2_23.beamY_s2_22b),",  &
              "21.165+1.016/2,",  &
              "1E4, 1.25, 1E1, .01)"  &
   z_force_function = "0.0"
!
force modify direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.BL4_2_s2_23  &
   x_force_function = "0.0"  &
   y_force_function = "IMPACT( DM(.FRS5_doe_8_LAUL.brassL4.spring_ref,.FRS5_doe_8_LAUL.sideY2_23.beamY_s2_22b),",  &
              "VR(.FRS5_doe_8_LAUL.brassL4.spring_ref,.FRS5_doe_8_LAUL.sideY2_23.beamY_s2_22b),",  &
              "21.165+1.016/2,",  &
              "1E4, 1.25, 1E1, .01)"  &
   z_force_function = "0.0"
!
force modify direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.BL5_2_s2_23  &
   x_force_function = "0.0"  &
   y_force_function = "IMPACT( DM(.FRS5_doe_8_LAUL.brassL5.spring_ref,.FRS5_doe_8_LAUL.sideY2_23.beamY_s2_22b),",  &
              "VR(.FRS5_doe_8_LAUL.brassL5.spring_ref,.FRS5_doe_8_LAUL.sideY2_23.beamY_s2_22b),",  &
              "21.165+1.016/2,",  &
              "1E4, 1.25, 1E1, .01)"  &
   z_force_function = "0.0"
!
force modify direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.BL2_2_s2_24  &
   x_force_function = "0.0"  &
   y_force_function = "IMPACT( DM(.FRS5_doe_8_LAUL.brassL2.spring_ref,.FRS5_doe_8_LAUL.sideY2_24.beamY_s2_23b),",  &
              "VR(.FRS5_doe_8_LAUL.brassL2.spring_ref,.FRS5_doe_8_LAUL.sideY2_24.beamY_s2_23b),",  &
              "21.165+1.016/2,",  &
              "1E4, 1.25, 1E1, .01)"  &
   z_force_function = "0.0"
!
force modify direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.BL3_2_s2_24  &
   x_force_function = "0.0"  &
   y_force_function = "IMPACT( DM(.FRS5_doe_8_LAUL.brassL3.spring_ref,.FRS5_doe_8_LAUL.sideY2_24.beamY_s2_23b),",  &
              "VR(.FRS5_doe_8_LAUL.brassL3.spring_ref,.FRS5_doe_8_LAUL.sideY2_24.beamY_s2_23b),",  &
              "21.165+1.016/2,",  &
              "1E4, 1.25, 1E1, .01)"  &
   z_force_function = "0.0"
!
force modify direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.BL4_2_s2_24  &
   x_force_function = "0.0"  &
   y_force_function = "IMPACT( DM(.FRS5_doe_8_LAUL.brassL4.spring_ref,.FRS5_doe_8_LAUL.sideY2_24.beamY_s2_23b),",  &
              "VR(.FRS5_doe_8_LAUL.brassL4.spring_ref,.FRS5_doe_8_LAUL.sideY2_24.beamY_s2_23b),",  &
              "21.165+1.016/2,",  &
              "1E4, 1.25, 1E1, .01)"  &
   z_force_function = "0.0"
!
force modify direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.BL5_2_s2_24  &
   x_force_function = "0.0"  &
   y_force_function = "IMPACT( DM(.FRS5_doe_8_LAUL.brassL5.spring_ref,.FRS5_doe_8_LAUL.sideY2_24.beamY_s2_23b),",  &
              "VR(.FRS5_doe_8_LAUL.brassL5.spring_ref,.FRS5_doe_8_LAUL.sideY2_24.beamY_s2_23b),",  &
              "21.165+1.016/2,",  &
              "1E4, 1.25, 1E1, .01)"  &
   z_force_function = "0.0"
!
force modify direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.BL2_2_s2_25  &
   x_force_function = "0.0"  &
   y_force_function = "IMPACT( DM(.FRS5_doe_8_LAUL.brassL2.spring_ref,.FRS5_doe_8_LAUL.sideY2_25.beamY_s2_24b),",  &
              "VR(.FRS5_doe_8_LAUL.brassL2.spring_ref,.FRS5_doe_8_LAUL.sideY2_25.beamY_s2_24b),",  &
              "21.165+1.016/2,",  &
              "1E4, 1.25, 1E1, .01)"  &
   z_force_function = "0.0"
!
force modify direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.BL3_2_s2_25  &
   x_force_function = "0.0"  &
   y_force_function = "IMPACT( DM(.FRS5_doe_8_LAUL.brassL3.spring_ref,.FRS5_doe_8_LAUL.sideY2_25.beamY_s2_24b),",  &
              "VR(.FRS5_doe_8_LAUL.brassL3.spring_ref,.FRS5_doe_8_LAUL.sideY2_25.beamY_s2_24b),",  &
              "21.165+1.016/2,",  &
              "1E4, 1.25, 1E1, .01)"  &
   z_force_function = "0.0"
!
force modify direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.BL4_2_s2_25  &
   x_force_function = "0.0"  &
   y_force_function = "IMPACT( DM(.FRS5_doe_8_LAUL.brassL4.spring_ref,.FRS5_doe_8_LAUL.sideY2_25.beamY_s2_24b),",  &
              "VR(.FRS5_doe_8_LAUL.brassL4.spring_ref,.FRS5_doe_8_LAUL.sideY2_25.beamY_s2_24b),",  &
              "21.165+1.016/2,",  &
              "1E4, 1.25, 1E1, .01)"  &
   z_force_function = "0.0"
!
force modify direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.BL5_2_s2_25  &
   x_force_function = "0.0"  &
   y_force_function = "IMPACT( DM(.FRS5_doe_8_LAUL.brassL5.spring_ref,.FRS5_doe_8_LAUL.sideY2_25.beamY_s2_24b),",  &
              "VR(.FRS5_doe_8_LAUL.brassL5.spring_ref,.FRS5_doe_8_LAUL.sideY2_25.beamY_s2_24b),",  &
              "21.165+1.016/2,",  &
              "1E4, 1.25, 1E1, .01)"  &
   z_force_function = "0.0"
!
force modify direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.BL2_2_s2_26  &
   x_force_function = "0.0"  &
   y_force_function = "IMPACT( DM(.FRS5_doe_8_LAUL.brassL2.spring_ref,.FRS5_doe_8_LAUL.sideY2_26.beamY_s2_25b),",  &
              "VR(.FRS5_doe_8_LAUL.brassL2.spring_ref,.FRS5_doe_8_LAUL.sideY2_26.beamY_s2_25b),",  &
              "21.165+1.016/2,",  &
              "1E4, 1.25, 1E1, .01)"  &
   z_force_function = "0.0"
!
force modify direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.BL3_2_s2_26  &
   x_force_function = "0.0"  &
   y_force_function = "IMPACT( DM(.FRS5_doe_8_LAUL.brassL3.spring_ref,.FRS5_doe_8_LAUL.sideY2_26.beamY_s2_25b),",  &
              "VR(.FRS5_doe_8_LAUL.brassL3.spring_ref,.FRS5_doe_8_LAUL.sideY2_26.beamY_s2_25b),",  &
              "21.165+1.016/2,",  &
              "1E4, 1.25, 1E1, .01)"  &
   z_force_function = "0.0"
!
force modify direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.BL4_2_s2_26  &
   x_force_function = "0.0"  &
   y_force_function = "IMPACT( DM(.FRS5_doe_8_LAUL.brassL4.spring_ref,.FRS5_doe_8_LAUL.sideY2_26.beamY_s2_25b),",  &
              "VR(.FRS5_doe_8_LAUL.brassL4.spring_ref,.FRS5_doe_8_LAUL.sideY2_26.beamY_s2_25b),",  &
              "21.165+1.016/2,",  &
              "1E4, 1.25, 1E1, .01)"  &
   z_force_function = "0.0"
!
force modify direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.BL5_2_s2_26  &
   x_force_function = "0.0"  &
   y_force_function = "IMPACT( DM(.FRS5_doe_8_LAUL.brassL5.spring_ref,.FRS5_doe_8_LAUL.sideY2_26.beamY_s2_25b),",  &
              "VR(.FRS5_doe_8_LAUL.brassL5.spring_ref,.FRS5_doe_8_LAUL.sideY2_26.beamY_s2_25b),",  &
              "21.165+1.016/2,",  &
              "1E4, 1.25, 1E1, .01)"  &
   z_force_function = "0.0"
!
force modify direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.BL2_2_s2_27  &
   x_force_function = "0.0"  &
   y_force_function = "IMPACT( DM(.FRS5_doe_8_LAUL.brassL2.spring_ref,.FRS5_doe_8_LAUL.sideY2_27.beamY_s2_26b),",  &
              "VR(.FRS5_doe_8_LAUL.brassL2.spring_ref,.FRS5_doe_8_LAUL.sideY2_27.beamY_s2_26b),",  &
              "21.165+1.016/2,",  &
              "1E4, 1.25, 1E1, .01)"  &
   z_force_function = "0.0"
!
force modify direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.BL3_2_s2_27  &
   x_force_function = "0.0"  &
   y_force_function = "IMPACT( DM(.FRS5_doe_8_LAUL.brassL3.spring_ref,.FRS5_doe_8_LAUL.sideY2_27.beamY_s2_26b),",  &
              "VR(.FRS5_doe_8_LAUL.brassL3.spring_ref,.FRS5_doe_8_LAUL.sideY2_27.beamY_s2_26b),",  &
              "21.165+1.016/2,",  &
              "1E4, 1.25, 1E1, .01)"  &
   z_force_function = "0.0"
!
force modify direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.BL4_2_s2_27  &
   x_force_function = "0.0"  &
   y_force_function = "IMPACT( DM(.FRS5_doe_8_LAUL.brassL4.spring_ref,.FRS5_doe_8_LAUL.sideY2_27.beamY_s2_26b),",  &
              "VR(.FRS5_doe_8_LAUL.brassL4.spring_ref,.FRS5_doe_8_LAUL.sideY2_27.beamY_s2_26b),",  &
              "21.165+1.016/2,",  &
              "1E4, 1.25, 1E1, .01)"  &
   z_force_function = "0.0"
!
force modify direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.BL5_2_s2_27  &
   x_force_function = "0.0"  &
   y_force_function = "IMPACT( DM(.FRS5_doe_8_LAUL.brassL5.spring_ref,.FRS5_doe_8_LAUL.sideY2_27.beamY_s2_26b),",  &
              "VR(.FRS5_doe_8_LAUL.brassL5.spring_ref,.FRS5_doe_8_LAUL.sideY2_27.beamY_s2_26b),",  &
              "21.165+1.016/2,",  &
              "1E4, 1.25, 1E1, .01)"  &
   z_force_function = "0.0"
!
force modify direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.BL2_2_s2_28  &
   x_force_function = "0.0"  &
   y_force_function = "IMPACT( DM(.FRS5_doe_8_LAUL.brassL2.spring_ref,.FRS5_doe_8_LAUL.sideY2_28.beamY_s2_27b),",  &
              "VR(.FRS5_doe_8_LAUL.brassL2.spring_ref,.FRS5_doe_8_LAUL.sideY2_28.beamY_s2_27b),",  &
              "21.165+1.016/2,",  &
              "1E4, 1.25, 1E1, .01)"  &
   z_force_function = "0.0"
!
force modify direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.BL3_2_s2_28  &
   x_force_function = "0.0"  &
   y_force_function = "IMPACT( DM(.FRS5_doe_8_LAUL.brassL3.spring_ref,.FRS5_doe_8_LAUL.sideY2_28.beamY_s2_27b),",  &
              "VR(.FRS5_doe_8_LAUL.brassL3.spring_ref,.FRS5_doe_8_LAUL.sideY2_28.beamY_s2_27b),",  &
              "21.165+1.016/2,",  &
              "1E4, 1.25, 1E1, .01)"  &
   z_force_function = "0.0"
!
force modify direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.BL4_2_s2_28  &
   x_force_function = "0.0"  &
   y_force_function = "IMPACT( DM(.FRS5_doe_8_LAUL.brassL4.spring_ref,.FRS5_doe_8_LAUL.sideY2_28.beamY_s2_27b),",  &
              "VR(.FRS5_doe_8_LAUL.brassL4.spring_ref,.FRS5_doe_8_LAUL.sideY2_28.beamY_s2_27b),",  &
              "21.165+1.016/2,",  &
              "1E4, 1.25, 1E1, .01)"  &
   z_force_function = "0.0"
!
force modify direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.BL5_2_s2_28  &
   x_force_function = "0.0"  &
   y_force_function = "IMPACT( DM(.FRS5_doe_8_LAUL.brassL5.spring_ref,.FRS5_doe_8_LAUL.sideY2_28.beamY_s2_27b),",  &
              "VR(.FRS5_doe_8_LAUL.brassL5.spring_ref,.FRS5_doe_8_LAUL.sideY2_28.beamY_s2_27b),",  &
              "21.165+1.016/2,",  &
              "1E4, 1.25, 1E1, .01)"  &
   z_force_function = "0.0"
!
force modify direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.BL2_2_s2_29  &
   x_force_function = "0.0"  &
   y_force_function = "IMPACT( DM(.FRS5_doe_8_LAUL.brassL2.spring_ref,.FRS5_doe_8_LAUL.sideY2_29.beamY_s2_28b),",  &
              "VR(.FRS5_doe_8_LAUL.brassL2.spring_ref,.FRS5_doe_8_LAUL.sideY2_29.beamY_s2_28b),",  &
              "21.165+1.016/2,",  &
              "1E4, 1.25, 1E1, .01)"  &
   z_force_function = "0.0"
!
force modify direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.BL3_2_s2_29  &
   x_force_function = "0.0"  &
   y_force_function = "IMPACT( DM(.FRS5_doe_8_LAUL.brassL3.spring_ref,.FRS5_doe_8_LAUL.sideY2_29.beamY_s2_28b),",  &
              "VR(.FRS5_doe_8_LAUL.brassL3.spring_ref,.FRS5_doe_8_LAUL.sideY2_29.beamY_s2_28b),",  &
              "21.165+1.016/2,",  &
              "1E4, 1.25, 1E1, .01)"  &
   z_force_function = "0.0"
!
force modify direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.BL4_2_s2_29  &
   x_force_function = "0.0"  &
   y_force_function = "IMPACT( DM(.FRS5_doe_8_LAUL.brassL4.spring_ref,.FRS5_doe_8_LAUL.sideY2_29.beamY_s2_28b),",  &
              "VR(.FRS5_doe_8_LAUL.brassL4.spring_ref,.FRS5_doe_8_LAUL.sideY2_29.beamY_s2_28b),",  &
              "21.165+1.016/2,",  &
              "1E4, 1.25, 1E1, .01)"  &
   z_force_function = "0.0"
!
force modify direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.BL5_2_s2_29  &
   x_force_function = "0.0"  &
   y_force_function = "IMPACT( DM(.FRS5_doe_8_LAUL.brassL5.spring_ref,.FRS5_doe_8_LAUL.sideY2_29.beamY_s2_28b),",  &
              "VR(.FRS5_doe_8_LAUL.brassL5.spring_ref,.FRS5_doe_8_LAUL.sideY2_29.beamY_s2_28b),",  &
              "21.165+1.016/2,",  &
              "1E4, 1.25, 1E1, .01)"  &
   z_force_function = "0.0"
!
force modify direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.BL1_2_s2_12  &
   x_force_function = "0.0"  &
   y_force_function = "IMPACT( DM(.FRS5_doe_8_LAUL.brassL1.spring_ref,.FRS5_doe_8_LAUL.sideY2_12.beamY_s2_11b),",  &
              "VR(.FRS5_doe_8_LAUL.brassL1.spring_ref,.FRS5_doe_8_LAUL.sideY2_12.beamY_s2_11b),",  &
              "21.165+1.016/2,",  &
              "1E4, 1.25, 1E1, .01)"  &
   z_force_function = "0.0"
!
force modify direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.BL1_2_s2_13  &
   x_force_function = "0.0"  &
   y_force_function = "IMPACT( DM(.FRS5_doe_8_LAUL.brassL1.spring_ref,.FRS5_doe_8_LAUL.sideY2_13.beamY_s2_12b),",  &
              "VR(.FRS5_doe_8_LAUL.brassL1.spring_ref,.FRS5_doe_8_LAUL.sideY2_13.beamY_s2_12b),",  &
              "21.165+1.016/2,",  &
              "1E4, 1.25, 1E1, .01)"  &
   z_force_function = "0.0"
!
force modify direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.BL1_2_s2_14  &
   x_force_function = "0.0"  &
   y_force_function = "IMPACT( DM(.FRS5_doe_8_LAUL.brassL1.spring_ref,.FRS5_doe_8_LAUL.sideY2_14.beamY_s2_13b),",  &
              "VR(.FRS5_doe_8_LAUL.brassL1.spring_ref,.FRS5_doe_8_LAUL.sideY2_14.beamY_s2_13b),",  &
              "21.165+1.016/2,",  &
              "1E4, 1.25, 1E1, .01)"  &
   z_force_function = "0.0"
!
force modify direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.BL1_2_s2_15  &
   x_force_function = "0.0"  &
   y_force_function = "IMPACT( DM(.FRS5_doe_8_LAUL.brassL1.spring_ref,.FRS5_doe_8_LAUL.sideY2_15.beamY_s2_14b),",  &
              "VR(.FRS5_doe_8_LAUL.brassL1.spring_ref,.FRS5_doe_8_LAUL.sideY2_15.beamY_s2_14b),",  &
              "21.165+1.016/2,",  &
              "1E4, 1.25, 1E1, .01)"  &
   z_force_function = "0.0"
!
force modify direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.BL1_2_s2_16  &
   x_force_function = "0.0"  &
   y_force_function = "IMPACT( DM(.FRS5_doe_8_LAUL.brassL1.spring_ref,.FRS5_doe_8_LAUL.sideY2_16.beamY_s2_15b),",  &
              "VR(.FRS5_doe_8_LAUL.brassL1.spring_ref,.FRS5_doe_8_LAUL.sideY2_16.beamY_s2_15b),",  &
              "21.165+1.016/2,",  &
              "1E4, 1.25, 1E1, .01)"  &
   z_force_function = "0.0"
!
force modify direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.BL1_2_s2_17  &
   x_force_function = "0.0"  &
   y_force_function = "IMPACT( DM(.FRS5_doe_8_LAUL.brassL1.spring_ref,.FRS5_doe_8_LAUL.sideY2_17.beamY_s2_16b),",  &
              "VR(.FRS5_doe_8_LAUL.brassL1.spring_ref,.FRS5_doe_8_LAUL.sideY2_17.beamY_s2_16b),",  &
              "21.165+1.016/2,",  &
              "1E4, 1.25, 1E1, .01)"  &
   z_force_function = "0.0"
!
force modify direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.BL1_2_s2_18  &
   x_force_function = "0.0"  &
   y_force_function = "IMPACT( DM(.FRS5_doe_8_LAUL.brassL1.spring_ref,.FRS5_doe_8_LAUL.sideY2_18.beamY_s2_17b),",  &
              "VR(.FRS5_doe_8_LAUL.brassL1.spring_ref,.FRS5_doe_8_LAUL.sideY2_18.beamY_s2_17b),",  &
              "21.165+1.016/2,",  &
              "1E4, 1.25, 1E1, .01)"  &
   z_force_function = "0.0"
!
force modify direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.BL1_2_s2_19  &
   x_force_function = "0.0"  &
   y_force_function = "IMPACT( DM(.FRS5_doe_8_LAUL.brassL1.spring_ref,.FRS5_doe_8_LAUL.sideY2_19.beamY_s2_18b),",  &
              "VR(.FRS5_doe_8_LAUL.brassL1.spring_ref,.FRS5_doe_8_LAUL.sideY2_19.beamY_s2_18b),",  &
              "21.165+1.016/2,",  &
              "1E4, 1.25, 1E1, .01)"  &
   z_force_function = "0.0"
!
force modify direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.BL1_2_s2_20  &
   x_force_function = "0.0"  &
   y_force_function = "IMPACT( DM(.FRS5_doe_8_LAUL.brassL1.spring_ref,.FRS5_doe_8_LAUL.sideY2_20.beamY_s2_19b),",  &
              "VR(.FRS5_doe_8_LAUL.brassL1.spring_ref,.FRS5_doe_8_LAUL.sideY2_20.beamY_s2_19b),",  &
              "21.165+1.016/2,",  &
              "1E4, 1.25, 1E1, .01)"  &
   z_force_function = "0.0"
!
force modify direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.BL1_2_s2_21  &
   x_force_function = "0.0"  &
   y_force_function = "IMPACT( DM(.FRS5_doe_8_LAUL.brassL1.spring_ref,.FRS5_doe_8_LAUL.sideY2_21.beamY_s2_20b),",  &
              "VR(.FRS5_doe_8_LAUL.brassL1.spring_ref,.FRS5_doe_8_LAUL.sideY2_21.beamY_s2_20b),",  &
              "21.165+1.016/2,",  &
              "1E4, 1.25, 1E1, .01)"  &
   z_force_function = "0.0"
!
force modify direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.BL1_2_s2_22  &
   x_force_function = "0.0"  &
   y_force_function = "IMPACT( DM(.FRS5_doe_8_LAUL.brassL1.spring_ref,.FRS5_doe_8_LAUL.sideY2_22.beamY_s2_21b),",  &
              "VR(.FRS5_doe_8_LAUL.brassL1.spring_ref,.FRS5_doe_8_LAUL.sideY2_22.beamY_s2_21b),",  &
              "21.165+1.016/2,",  &
              "1E4, 1.25, 1E1, .01)"  &
   z_force_function = "0.0"
!
force modify direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.BL1_2_s2_23  &
   x_force_function = "0.0"  &
   y_force_function = "IMPACT( DM(.FRS5_doe_8_LAUL.brassL1.spring_ref,.FRS5_doe_8_LAUL.sideY2_23.beamY_s2_22b),",  &
              "VR(.FRS5_doe_8_LAUL.brassL1.spring_ref,.FRS5_doe_8_LAUL.sideY2_23.beamY_s2_22b),",  &
              "21.165+1.016/2,",  &
              "1E4, 1.25, 1E1, .01)"  &
   z_force_function = "0.0"
!
force modify direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.BL1_2_s2_24  &
   x_force_function = "0.0"  &
   y_force_function = "IMPACT( DM(.FRS5_doe_8_LAUL.brassL1.spring_ref,.FRS5_doe_8_LAUL.sideY2_24.beamY_s2_23b),",  &
              "VR(.FRS5_doe_8_LAUL.brassL1.spring_ref,.FRS5_doe_8_LAUL.sideY2_24.beamY_s2_23b),",  &
              "21.165+1.016/2,",  &
              "1E4, 1.25, 1E1, .01)"  &
   z_force_function = "0.0"
!
force modify direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.BL1_2_s2_25  &
   x_force_function = "0.0"  &
   y_force_function = "IMPACT( DM(.FRS5_doe_8_LAUL.brassL1.spring_ref,.FRS5_doe_8_LAUL.sideY2_25.beamY_s2_24b),",  &
              "VR(.FRS5_doe_8_LAUL.brassL1.spring_ref,.FRS5_doe_8_LAUL.sideY2_25.beamY_s2_24b),",  &
              "21.165+1.016/2,",  &
              "1E4, 1.25, 1E1, .01)"  &
   z_force_function = "0.0"
!
force modify direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.BL1_2_s2_26  &
   x_force_function = "0.0"  &
   y_force_function = "IMPACT( DM(.FRS5_doe_8_LAUL.brassL1.spring_ref,.FRS5_doe_8_LAUL.sideY2_26.beamY_s2_25b),",  &
              "VR(.FRS5_doe_8_LAUL.brassL1.spring_ref,.FRS5_doe_8_LAUL.sideY2_26.beamY_s2_25b),",  &
              "21.165+1.016/2,",  &
              "1E4, 1.25, 1E1, .01)"  &
   z_force_function = "0.0"
!
force modify direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.BL1_2_s2_27  &
   x_force_function = "0.0"  &
   y_force_function = "IMPACT( DM(.FRS5_doe_8_LAUL.brassL1.spring_ref,.FRS5_doe_8_LAUL.sideY2_27.beamY_s2_26b),",  &
              "VR(.FRS5_doe_8_LAUL.brassL1.spring_ref,.FRS5_doe_8_LAUL.sideY2_27.beamY_s2_26b),",  &
              "21.165+1.016/2,",  &
              "1E4, 1.25, 1E1, .01)"  &
   z_force_function = "0.0"
!
force modify direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.BL1_2_s2_28  &
   x_force_function = "0.0"  &
   y_force_function = "IMPACT( DM(.FRS5_doe_8_LAUL.brassL1.spring_ref,.FRS5_doe_8_LAUL.sideY2_28.beamY_s2_27b),",  &
              "VR(.FRS5_doe_8_LAUL.brassL1.spring_ref,.FRS5_doe_8_LAUL.sideY2_28.beamY_s2_27b),",  &
              "21.165+1.016/2,",  &
              "1E4, 1.25, 1E1, .01)"  &
   z_force_function = "0.0"
!
force modify direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.BL1_2_s2_29  &
   x_force_function = "0.0"  &
   y_force_function = "IMPACT( DM(.FRS5_doe_8_LAUL.brassL1.spring_ref,.FRS5_doe_8_LAUL.sideY2_29.beamY_s2_28b),",  &
              "VR(.FRS5_doe_8_LAUL.brassL1.spring_ref,.FRS5_doe_8_LAUL.sideY2_29.beamY_s2_28b),",  &
              "21.165+1.016/2,",  &
              "1E4, 1.25, 1E1, .01)"  &
   z_force_function = "0.0"
!
force modify direct torque_vector  &
   torque_vector_name = .FRS5_doe_8_LAUL.BL1damper  &
   x_torque_function = "-.002*WX(.FRS5_doe_8_LAUL.brassL1.tc)"  &
   y_torque_function = "-.020*WY(.FRS5_doe_8_LAUL.brassL1.tc)"  &
   z_torque_function = "-.002*WZ(.FRS5_doe_8_LAUL.brassL1.tc)"
!
force modify direct torque_vector  &
   torque_vector_name = .FRS5_doe_8_LAUL.BU1damper  &
   x_torque_function = "-.002*WX(.FRS5_doe_8_LAUL.brassU1.tc)"  &
   y_torque_function = "-.020*WY(.FRS5_doe_8_LAUL.brassU1.tc)"  &
   z_torque_function = "-.002*WZ(.FRS5_doe_8_LAUL.brassU1.tc)"
!
force modify direct torque_vector  &
   torque_vector_name = .FRS5_doe_8_LAUL.BL2damper  &
   x_torque_function = "-.002*WX(.FRS5_doe_8_LAUL.brassL2.tc)"  &
   y_torque_function = "-.020*WY(.FRS5_doe_8_LAUL.brassL2.tc)"  &
   z_torque_function = "-.002*WZ(.FRS5_doe_8_LAUL.brassL2.tc)"
!
force modify direct torque_vector  &
   torque_vector_name = .FRS5_doe_8_LAUL.BU2damper  &
   x_torque_function = "-.002*WX(.FRS5_doe_8_LAUL.brassU2.tc)"  &
   y_torque_function = "-.020*WY(.FRS5_doe_8_LAUL.brassU2.tc)"  &
   z_torque_function = "-.002*WZ(.FRS5_doe_8_LAUL.brassU2.tc)"
!
force modify direct torque_vector  &
   torque_vector_name = .FRS5_doe_8_LAUL.BL3damper  &
   x_torque_function = "-.002*WX(.FRS5_doe_8_LAUL.brassL3.tc)"  &
   y_torque_function = "-.020*WY(.FRS5_doe_8_LAUL.brassL3.tc)"  &
   z_torque_function = "-.002*WZ(.FRS5_doe_8_LAUL.brassL3.tc)"
!
force modify direct torque_vector  &
   torque_vector_name = .FRS5_doe_8_LAUL.BU3damper  &
   x_torque_function = "-.002*WX(.FRS5_doe_8_LAUL.brassU3.tc)"  &
   y_torque_function = "-.020*WY(.FRS5_doe_8_LAUL.brassU3.tc)"  &
   z_torque_function = "-.002*WZ(.FRS5_doe_8_LAUL.brassU3.tc)"
!
force modify direct torque_vector  &
   torque_vector_name = .FRS5_doe_8_LAUL.BL4damper  &
   x_torque_function = "-.002*WX(.FRS5_doe_8_LAUL.brassL4.tc)"  &
   y_torque_function = "-.020*WY(.FRS5_doe_8_LAUL.brassL4.tc)"  &
   z_torque_function = "-.002*WZ(.FRS5_doe_8_LAUL.brassL4.tc)"
!
force modify direct torque_vector  &
   torque_vector_name = .FRS5_doe_8_LAUL.BU4damper  &
   x_torque_function = "-.002*WX(.FRS5_doe_8_LAUL.brassU4.tc)"  &
   y_torque_function = "-.020*WY(.FRS5_doe_8_LAUL.brassU4.tc)"  &
   z_torque_function = "-.002*WZ(.FRS5_doe_8_LAUL.brassU4.tc)"
!
force modify direct torque_vector  &
   torque_vector_name = .FRS5_doe_8_LAUL.BL5damper  &
   x_torque_function = "-.002*WX(.FRS5_doe_8_LAUL.brassL5.tc)"  &
   y_torque_function = "-.020*WY(.FRS5_doe_8_LAUL.brassL5.tc)"  &
   z_torque_function = "-.002*WZ(.FRS5_doe_8_LAUL.brassL5.tc)"
!
force modify direct torque_vector  &
   torque_vector_name = .FRS5_doe_8_LAUL.BU5damper  &
   x_torque_function = "-.002*WX(.FRS5_doe_8_LAUL.brassU5.tc)"  &
   y_torque_function = "-.020*WY(.FRS5_doe_8_LAUL.brassU5.tc)"  &
   z_torque_function = "-.002*WZ(.FRS5_doe_8_LAUL.brassU5.tc)"
!
output_control modify request  &
   request_name = .FRS5_doe_8_LAUL.Spring1_Stress_2_9  &
   f1 = "BEAM(.FRS5_doe_8_LAUL.s1_beamY_2, 1, 8, .FRS5_doe_8_LAUL.sideY1_2.beamY_s1_2a) *6/24.0/1.016**2 * 145.03774 "  &
   f2 = "BEAM(.FRS5_doe_8_LAUL.s1_beamY_3, 1, 8, .FRS5_doe_8_LAUL.sideY1_3.beamY_s1_3a) *6/24.0/1.016**2 * 145.03774 "  &
   f3 = "BEAM(.FRS5_doe_8_LAUL.s1_beamY_4, 1, 8, .FRS5_doe_8_LAUL.sideY1_4.beamY_s1_4a) *6/24.0/1.016**2 * 145.03774 "  &
   f4 = "BEAM(.FRS5_doe_8_LAUL.s1_beamY_5, 1, 8, .FRS5_doe_8_LAUL.sideY1_5.beamY_s1_5a) *6/24.0/1.016**2 * 145.03774 "  &
   f5 = "BEAM(.FRS5_doe_8_LAUL.s1_beamY_6, 1, 8, .FRS5_doe_8_LAUL.sideY1_6.beamY_s1_6a) *6/24.0/1.016**2 * 145.03774 "  &
   f6 = "BEAM(.FRS5_doe_8_LAUL.s1_beamY_7, 1, 8, .FRS5_doe_8_LAUL.sideY1_7.beamY_s1_7a) *6/24.0/1.016**2 * 145.03774 "  &
   f7 = "BEAM(.FRS5_doe_8_LAUL.s1_beamY_8, 1, 8, .FRS5_doe_8_LAUL.sideY1_8.beamY_s1_8a) *6/24.0/1.016**2 * 145.03774 "  &
   f8 = "BEAM(.FRS5_doe_8_LAUL.s1_beamY_9, 1, 8, .FRS5_doe_8_LAUL.sideY1_9.beamY_s1_9a) *6/24.0/1.016**2 * 145.03774 "
!
output_control modify request  &
   request_name = .FRS5_doe_8_LAUL.ferguson_data  &
   f2 = "AZ(.FRS5_doe_8_LAUL.ferguson_shaftF.MARKER_19,.FRS5_doe_8_LAUL.rear_housing.MARKER_20)"  &
   f3 = "WZ(.FRS5_doe_8_LAUL.ferguson_shaftF.MARKER_19,.FRS5_doe_8_LAUL.rear_housing.MARKER_20,.FRS5_doe_8_LAUL.rear_housing.MARKER_20)"  &
   f5 = "AY(.FRS5_doe_8_LAUL.rotor_shaftF.MARKER_7,.FRS5_doe_8_LAUL.mid_frameX.MARKER_8)"  &
   f6 = "AY(.FRS5_doe_8_LAUL.rotor_shaftF.MARKER_7,.FRS5_doe_8_LAUL.mid_frameX.MARKER_8)"  &
   f7 = "WY(.FRS5_doe_8_LAUL.rotor_shaftF.MARKER_7,.FRS5_doe_8_LAUL.mid_frameX.MARKER_8,.FRS5_doe_8_LAUL.mid_frameX.MARKER_8)"
!
output_control modify request  &
   request_name = .FRS5_doe_8_LAUL.Spring1_Stress_10_17  &
   f1 = "BEAM(.FRS5_doe_8_LAUL.s1_beamY_10, 1, 8, .FRS5_doe_8_LAUL.sideY1_10.beamY_s1_10a) *6/24.0/1.016**2 * 145.03774 "  &
   f2 = "BEAM(.FRS5_doe_8_LAUL.s1_beamY_11, 1, 8, .FRS5_doe_8_LAUL.sideY1_11.beamY_s1_11a) *6/24.0/1.016**2 * 145.03774 "  &
   f3 = "BEAM(.FRS5_doe_8_LAUL.s1_beamY_12, 1, 8, .FRS5_doe_8_LAUL.sideY1_12.beamY_s1_12a) *6/24.0/1.016**2 * 145.03774 "  &
   f4 = "BEAM(.FRS5_doe_8_LAUL.s1_beamY_13, 1, 8, .FRS5_doe_8_LAUL.sideY1_13.beamY_s1_13a) *6/24.0/1.016**2 * 145.03774 "  &
   f5 = "BEAM(.FRS5_doe_8_LAUL.s1_beamY_14, 1, 8, .FRS5_doe_8_LAUL.sideY1_14.beamY_s1_14a) *6/24.0/1.016**2 * 145.03774 "  &
   f6 = "BEAM(.FRS5_doe_8_LAUL.s1_beamY_15, 1, 8, .FRS5_doe_8_LAUL.sideY1_15.beamY_s1_15a) *6/24.0/1.016**2 * 145.03774 "  &
   f7 = "BEAM(.FRS5_doe_8_LAUL.s1_beamY_16, 1, 8, .FRS5_doe_8_LAUL.sideY1_16.beamY_s1_16a) *6/24.0/1.016**2 * 145.03774 "  &
   f8 = "BEAM(.FRS5_doe_8_LAUL.s1_beamY_17, 1, 8, .FRS5_doe_8_LAUL.sideY1_17.beamY_s1_17a) *6/24.0/1.016**2 * 145.03774 "
!
output_control modify request  &
   request_name = .FRS5_doe_8_LAUL.Spring1_Stress_18_25  &
   f1 = "BEAM(.FRS5_doe_8_LAUL.s1_beamY_18, 1, 8, .FRS5_doe_8_LAUL.sideY1_18.beamY_s1_18a) *6/24.0/1.016**2 * 145.03774 "  &
   f2 = "BEAM(.FRS5_doe_8_LAUL.s1_beamY_19, 1, 8, .FRS5_doe_8_LAUL.sideY1_19.beamY_s1_19a) *6/24.0/1.016**2 * 145.03774 "  &
   f3 = "BEAM(.FRS5_doe_8_LAUL.s1_beamY_20, 1, 8, .FRS5_doe_8_LAUL.sideY1_20.beamY_s1_20a) *6/24.0/1.016**2 * 145.03774 "  &
   f4 = "BEAM(.FRS5_doe_8_LAUL.s1_beamY_21, 1, 8, .FRS5_doe_8_LAUL.sideY1_21.beamY_s1_21a) *6/24.0/1.016**2 * 145.03774 "  &
   f5 = "BEAM(.FRS5_doe_8_LAUL.s1_beamY_22, 1, 8, .FRS5_doe_8_LAUL.sideY1_22.beamY_s1_22a) *6/24.0/1.016**2 * 145.03774 "  &
   f6 = "BEAM(.FRS5_doe_8_LAUL.s1_beamY_23, 1, 8, .FRS5_doe_8_LAUL.sideY1_23.beamY_s1_23a) *6/24.0/1.016**2 * 145.03774 "  &
   f7 = "BEAM(.FRS5_doe_8_LAUL.s1_beamY_24, 1, 8, .FRS5_doe_8_LAUL.sideY1_24.beamY_s1_24a) *6/24.0/1.016**2 * 145.03774 "  &
   f8 = "BEAM(.FRS5_doe_8_LAUL.s1_beamY_25, 1, 8, .FRS5_doe_8_LAUL.sideY1_25.beamY_s1_25a) *6/24.0/1.016**2 * 145.03774 "
!
output_control modify request  &
   request_name = .FRS5_doe_8_LAUL.Spring1_Stress_26_31  &
   f1 = "BEAM(.FRS5_doe_8_LAUL.s1_beamY_26, 1, 8, .FRS5_doe_8_LAUL.sideY1_26.beamY_s1_26a) *6/24.0/1.016**2 * 145.03774 "  &
   f2 = "BEAM(.FRS5_doe_8_LAUL.s1_beamY_27, 1, 8, .FRS5_doe_8_LAUL.sideY1_27.beamY_s1_27a) *6/24.0/1.016**2 * 145.03774 "  &
   f3 = "BEAM(.FRS5_doe_8_LAUL.s1_beamY_28, 1, 8, .FRS5_doe_8_LAUL.sideY1_28.beamY_s1_28a) *6/24.0/1.016**2 * 145.03774 "  &
   f4 = "BEAM(.FRS5_doe_8_LAUL.s1_beamY_29, 1, 8, .FRS5_doe_8_LAUL.sideY1_29.beamY_s1_29a) *6/24.0/1.016**2 * 145.03774 "  &
   f5 = "BEAM(.FRS5_doe_8_LAUL.s1_beamY_30, 1, 8, .FRS5_doe_8_LAUL.sideY1_30.beamY_s1_30a) *6/24.0/1.016**2 * 145.03774 "  &
   f6 = "BEAM(.FRS5_doe_8_LAUL.s1_beamY_31, 1, 8, .FRS5_doe_8_LAUL.sideY1_31.beamY_s1_31a) *6/24.0/1.016**2 * 145.03774 "
!
output_control modify request  &
   request_name = .FRS5_doe_8_LAUL.Spring2_Stress_2_9  &
   f1 = "BEAM(.FRS5_doe_8_LAUL.s2_beamY_2, 1, 8, .FRS5_doe_8_LAUL.sideY2_2.beamY_s2_2a) *6/24.0/1.016**2 * 145.03774 "  &
   f2 = "BEAM(.FRS5_doe_8_LAUL.s2_beamY_3, 1, 8, .FRS5_doe_8_LAUL.sideY2_3.beamY_s2_3a) *6/24.0/1.016**2 * 145.03774 "  &
   f3 = "BEAM(.FRS5_doe_8_LAUL.s2_beamY_4, 1, 8, .FRS5_doe_8_LAUL.sideY2_4.beamY_s2_4a) *6/24.0/1.016**2 * 145.03774 "  &
   f4 = "BEAM(.FRS5_doe_8_LAUL.s2_beamY_5, 1, 8, .FRS5_doe_8_LAUL.sideY2_5.beamY_s2_5a) *6/24.0/1.016**2 * 145.03774 "  &
   f5 = "BEAM(.FRS5_doe_8_LAUL.s2_beamY_6, 1, 8, .FRS5_doe_8_LAUL.sideY2_6.beamY_s2_6a) *6/24.0/1.016**2 * 145.03774 "  &
   f6 = "BEAM(.FRS5_doe_8_LAUL.s2_beamY_7, 1, 8, .FRS5_doe_8_LAUL.sideY2_7.beamY_s2_7a) *6/24.0/1.016**2 * 145.03774 "  &
   f7 = "BEAM(.FRS5_doe_8_LAUL.s2_beamY_8, 1, 8, .FRS5_doe_8_LAUL.sideY2_8.beamY_s2_8a) *6/24.0/1.016**2 * 145.03774 "  &
   f8 = "BEAM(.FRS5_doe_8_LAUL.s2_beamY_9, 1, 8, .FRS5_doe_8_LAUL.sideY2_9.beamY_s2_9a) *6/24.0/1.016**2 * 145.03774 "
!
output_control modify request  &
   request_name = .FRS5_doe_8_LAUL.Spring2_Stress_10_17  &
   f1 = "BEAM(.FRS5_doe_8_LAUL.s2_beamY_10, 1, 8, .FRS5_doe_8_LAUL.sideY2_10.beamY_s2_10a) *6/24.0/1.016**2 * 145.03774 "  &
   f2 = "BEAM(.FRS5_doe_8_LAUL.s2_beamY_11, 1, 8, .FRS5_doe_8_LAUL.sideY2_11.beamY_s2_11a) *6/24.0/1.016**2 * 145.03774 "  &
   f3 = "BEAM(.FRS5_doe_8_LAUL.s2_beamY_12, 1, 8, .FRS5_doe_8_LAUL.sideY2_12.beamY_s2_12a) *6/24.0/1.016**2 * 145.03774 "  &
   f4 = "BEAM(.FRS5_doe_8_LAUL.s2_beamY_13, 1, 8, .FRS5_doe_8_LAUL.sideY2_13.beamY_s2_13a) *6/24.0/1.016**2 * 145.03774 "  &
   f5 = "BEAM(.FRS5_doe_8_LAUL.s2_beamY_14, 1, 8, .FRS5_doe_8_LAUL.sideY2_14.beamY_s2_14a) *6/24.0/1.016**2 * 145.03774 "  &
   f6 = "BEAM(.FRS5_doe_8_LAUL.s2_beamY_15, 1, 8, .FRS5_doe_8_LAUL.sideY2_15.beamY_s2_15a) *6/24.0/1.016**2 * 145.03774 "  &
   f7 = "BEAM(.FRS5_doe_8_LAUL.s2_beamY_16, 1, 8, .FRS5_doe_8_LAUL.sideY2_16.beamY_s2_16a) *6/24.0/1.016**2 * 145.03774 "  &
   f8 = "BEAM(.FRS5_doe_8_LAUL.s2_beamY_17, 1, 8, .FRS5_doe_8_LAUL.sideY2_17.beamY_s2_17a) *6/24.0/1.016**2 * 145.03774 "
!
output_control modify request  &
   request_name = .FRS5_doe_8_LAUL.Spring2_Stress_18_25  &
   f1 = "BEAM(.FRS5_doe_8_LAUL.s2_beamY_18, 1, 8, .FRS5_doe_8_LAUL.sideY2_18.beamY_s2_18a) *6/24.0/1.016**2 * 145.03774 "  &
   f2 = "BEAM(.FRS5_doe_8_LAUL.s2_beamY_19, 1, 8, .FRS5_doe_8_LAUL.sideY2_19.beamY_s2_19a) *6/24.0/1.016**2 * 145.03774 "  &
   f3 = "BEAM(.FRS5_doe_8_LAUL.s2_beamY_20, 1, 8, .FRS5_doe_8_LAUL.sideY2_20.beamY_s2_20a) *6/24.0/1.016**2 * 145.03774 "  &
   f4 = "BEAM(.FRS5_doe_8_LAUL.s2_beamY_21, 1, 8, .FRS5_doe_8_LAUL.sideY2_21.beamY_s2_21a) *6/24.0/1.016**2 * 145.03774 "  &
   f5 = "BEAM(.FRS5_doe_8_LAUL.s2_beamY_22, 1, 8, .FRS5_doe_8_LAUL.sideY2_22.beamY_s2_22a) *6/24.0/1.016**2 * 145.03774 "  &
   f6 = "BEAM(.FRS5_doe_8_LAUL.s2_beamY_23, 1, 8, .FRS5_doe_8_LAUL.sideY2_23.beamY_s2_23a) *6/24.0/1.016**2 * 145.03774 "  &
   f7 = "BEAM(.FRS5_doe_8_LAUL.s2_beamY_24, 1, 8, .FRS5_doe_8_LAUL.sideY2_24.beamY_s2_24a) *6/24.0/1.016**2 * 145.03774 "  &
   f8 = "BEAM(.FRS5_doe_8_LAUL.s2_beamY_25, 1, 8, .FRS5_doe_8_LAUL.sideY2_25.beamY_s2_25a) *6/24.0/1.016**2 * 145.03774 "
!
output_control modify request  &
   request_name = .FRS5_doe_8_LAUL.Spring2_Stress_26_31  &
   f1 = "BEAM(.FRS5_doe_8_LAUL.s2_beamY_26, 1, 8, .FRS5_doe_8_LAUL.sideY2_26.beamY_s2_26a) *6/24.0/1.016**2 * 145.03774 "  &
   f2 = "BEAM(.FRS5_doe_8_LAUL.s2_beamY_27, 1, 8, .FRS5_doe_8_LAUL.sideY2_27.beamY_s2_27a) *6/24.0/1.016**2 * 145.03774 "  &
   f3 = "BEAM(.FRS5_doe_8_LAUL.s2_beamY_28, 1, 8, .FRS5_doe_8_LAUL.sideY2_28.beamY_s2_28a) *6/24.0/1.016**2 * 145.03774 "  &
   f4 = "BEAM(.FRS5_doe_8_LAUL.s2_beamY_29, 1, 8, .FRS5_doe_8_LAUL.sideY2_29.beamY_s2_29a) *6/24.0/1.016**2 * 145.03774 "
!
output_control modify request  &
   request_name = .FRS5_doe_8_LAUL.Clutches  &
   f1 = "TZ(.FRS5_doe_8_LAUL.upper_drivegearF.MARKER_42,.FRS5_doe_8_LAUL.mid_frameX.MARKER_41,.FRS5_doe_8_LAUL.mid_frameX.MARKER_41)/1000/2"  &
   f2 = "TZ(.FRS5_doe_8_LAUL.upper_drivegearF.MARKER_42,.FRS5_doe_8_LAUL.mid_frameX.MARKER_41,.FRS5_doe_8_LAUL.mid_frameX.MARKER_41)*0.000737562149*6"  &
   f3 = "TZ(.FRS5_doe_8_LAUL.mid_frameX.MARKER_43,.FRS5_doe_8_LAUL.lower_drivegearF.MARKER_44,.FRS5_doe_8_LAUL.mid_frameX.MARKER_43)*0.000737562149*6"
!
output_control modify request  &
   request_name = .FRS5_doe_8_LAUL.pocket  &
   f1 = "SQRT((DX(.FRS5_doe_8_LAUL.mid_frameX.pocket_center)-DX(.FRS5_doe_8_LAUL.brassU1.channel_ref))**2+(DZ(.FRS5_doe_8_LAUL.mid_frameX.pocket_center)-DZ(.FRS5_doe_8_LAUL.brassU1.channel_ref))**2)"  &
   f2 = "SQRT((DX(.FRS5_doe_8_LAUL.mid_frameX.pocket_center)-DX(.FRS5_doe_8_LAUL.brassU2.channel_ref))**2+(DZ(.FRS5_doe_8_LAUL.mid_frameX.pocket_center)-DZ(.FRS5_doe_8_LAUL.brassU2.channel_ref))**2)"  &
   f3 = "SQRT((DX(.FRS5_doe_8_LAUL.mid_frameX.pocket_center)-DX(.FRS5_doe_8_LAUL.brassU3.channel_ref))**2+(DZ(.FRS5_doe_8_LAUL.mid_frameX.pocket_center)-DZ(.FRS5_doe_8_LAUL.brassU3.channel_ref))**2)"  &
   f4 = "SQRT((DX(.FRS5_doe_8_LAUL.mid_frameX.pocket_center)-DX(.FRS5_doe_8_LAUL.brassU4.channel_ref))**2+(DZ(.FRS5_doe_8_LAUL.mid_frameX.pocket_center)-DZ(.FRS5_doe_8_LAUL.brassU4.channel_ref))**2)"  &
   f5 = "AZ(.FRS5_doe_8_LAUL.rotor_shaftF.MARKER_7, .FRS5_doe_8_LAUL.mid_frameX.MARKER_8)*RTOD"
!
output_control modify request  &
   request_name = .FRS5_doe_8_LAUL.testing  &
   f2 = "AZ(.FRS5_doe_8_LAUL.lower_drivegearF.aft_center_ref,.FRS5_doe_8_LAUL.lower_dogs.dog_start)"  &
   f3 = "WZ(.FRS5_doe_8_LAUL.lower_drivegearF.MARKER_44,.FRS5_doe_8_LAUL.mid_frameX.MARKER_43,.FRS5_doe_8_LAUL.mid_frameX.MARKER_43)"  &
   f6 = "AZ(.FRS5_doe_8_LAUL.upper_drivegearF.aft_center_ref,.FRS5_doe_8_LAUL.upper_dogs.dog_start)"  &
   f7 = "WZ(.FRS5_doe_8_LAUL.upper_drivegearF.MARKER_42,.FRS5_doe_8_LAUL.mid_frameX.MARKER_41,.FRS5_doe_8_LAUL.mid_frameX.MARKER_41)"
!
output_control modify request  &
   request_name = .FRS5_doe_8_LAUL.dwell_time  &
   f1 = "0"  &
   f2 = "dif(.FRS5_doe_8_LAUL.dwell_time_1_diff)"  &
   f3 = "dif(.FRS5_doe_8_LAUL.dwell_time_2_diff)"  &
   f4 = "dif(.FRS5_doe_8_LAUL.dwell_time_3_diff)"  &
   f5 = "0"  &
   f6 = "dif(.FRS5_doe_8_LAUL.dwell_time_4_diff)"  &
   f7 = "dif(.FRS5_doe_8_LAUL.dwell_time_5_diff)"  &
   f8 = "0"
!
output_control modify request  &
   request_name = .FRS5_doe_8_LAUL.round_control  &
   f1 = "0"  &
   f2 = "dif(.FRS5_doe_8_LAUL.round_control_1_diff)"  &
   f3 = "dif(.FRS5_doe_8_LAUL.round_control_2_diff)"  &
   f4 = "dif(.FRS5_doe_8_LAUL.round_control_3_diff)"  &
   f5 = "0"  &
   f6 = "dif(.FRS5_doe_8_LAUL.round_control_4_diff)"  &
   f7 = "dif(.FRS5_doe_8_LAUL.round_control_5_diff)"  &
   f8 = "0"
!
executive_control modify sensor  &
   sensor_name = .FRS5_doe_8_LAUL.UprStopHit  &
   function = "CONTACT(.FRS5_doe_8_LAUL.UprStopTouch, 0, 1, 0)"  &
   evaluate = "time"
!
executive_control modify sensor  &
   sensor_name = .FRS5_doe_8_LAUL.LwrStopHit  &
   function = "CONTACT(.FRS5_doe_8_LAUL.LwrStopTouch, 0, 1, 0)"  &
   evaluate = "time"
!
!--------------------------- Expression definitions ---------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = ground
!
geometry modify shape cylinder  &
   cylinder_name = .FRS5_doe_8_LAUL.ground.feed_pocket  &
   length = (10.0mm)  &
   radius = (23mm)
!
geometry modify shape cylinder  &
   cylinder_name = .FRS5_doe_8_LAUL.ground.feed_boundary  &
   length = (10.0mm)  &
   radius = (56mm)
!
material modify  &
   material_name = .FRS5_doe_8_LAUL.steel  &
   density = (7801.0(kg/meter**3))  &
   youngs_modulus = (2.07E+11(Newton/meter**2))
!
material modify  &
   material_name = .FRS5_doe_8_LAUL.aluminum  &
   density = (2740.0(kg/meter**3))  &
   youngs_modulus = (7.1705E+10(Newton/meter**2))
!
material modify  &
   material_name = .FRS5_doe_8_LAUL.brass  &
   density = (8545.0(kg/meter**3))  &
   youngs_modulus = (1.06E+11(Newton/meter**2))
!
material modify  &
   material_name = .FRS5_doe_8_LAUL.steel_2  &
   density = (7801.0(kg/meter**3))  &
   youngs_modulus = (2.07E+11(Newton/meter**2))
!
material modify  &
   material_name = .FRS5_doe_8_LAUL.cast_iron  &
   density = (7080.0(kg/meter**3))  &
   youngs_modulus = (1.0E+11(Newton/meter**2))
!
material modify  &
   material_name = .FRS5_doe_8_LAUL.steel_3  &
   density = (7801.0(kg/meter**3))  &
   youngs_modulus = (2.07E+11(Newton/meter**2))
!
material modify  &
   material_name = .FRS5_doe_8_LAUL.wood  &
   density = (438.0(kg/meter**3))  &
   youngs_modulus = (1.1E+10(Newton/meter**2))
!
marker modify  &
   marker_name = .FRS5_doe_8_LAUL.rear_housing.MARKER_2  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .FRS5_doe_8_LAUL.selector_spider.cntrpt_1))  &
   relative_to = .FRS5_doe_8_LAUL.rear_housing
!
defaults coordinate_system  &
   default_coordinate_system = .FRS5_doe_8_LAUL.ground
!
marker modify  &
   marker_name = .FRS5_doe_8_LAUL.positioner.upper_shackle_point  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 12.1}, .FRS5_doe_8_LAUL.positioner.c4))  &
   relative_to = .FRS5_doe_8_LAUL.positioner
!
defaults coordinate_system  &
   default_coordinate_system = .FRS5_doe_8_LAUL.ground
!
marker modify  &
   marker_name = .FRS5_doe_8_LAUL.positioner.lower_shackle_point  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 12.1}, .FRS5_doe_8_LAUL.positioner.c3))  &
   relative_to = .FRS5_doe_8_LAUL.positioner
!
defaults coordinate_system  &
   default_coordinate_system = .FRS5_doe_8_LAUL.ground
!
marker modify  &
   marker_name = .FRS5_doe_8_LAUL.positioner.c1  &
   location =   &
      (LOC_RELATIVE_TO({-.FRS5_doe_8_LAUL.x_roll_1, .FRS5_doe_8_LAUL.y_roll_1 + TAN(.FRS5_doe_8_LAUL.theta_roll_sym) * ABS(.FRS5_doe_8_LAUL.x_roll_1), 0}, .FRS5_doe_8_LAUL.positioner.sym_ref))  &
   relative_to = .FRS5_doe_8_LAUL.positioner
!
defaults coordinate_system  &
   default_coordinate_system = .FRS5_doe_8_LAUL.ground
!
marker modify  &
   marker_name = .FRS5_doe_8_LAUL.positioner.c4  &
   location =   &
      (LOC_RELATIVE_TO({-.FRS5_doe_8_LAUL.x_roll_4, .FRS5_doe_8_LAUL.y_roll_4 + TAN(.FRS5_doe_8_LAUL.theta_roll_sym) * ABS(.FRS5_doe_8_LAUL.x_roll_4), 0}, .FRS5_doe_8_LAUL.positioner.sym_ref))  &
   relative_to = .FRS5_doe_8_LAUL.positioner
!
defaults coordinate_system  &
   default_coordinate_system = .FRS5_doe_8_LAUL.ground
!
marker modify  &
   marker_name = .FRS5_doe_8_LAUL.positioner.c3  &
   location =   &
      (LOC_RELATIVE_TO({-.FRS5_doe_8_LAUL.x_roll_3, -(.FRS5_doe_8_LAUL.y_roll_3 - TAN(.FRS5_doe_8_LAUL.theta_roll_sym) * ABS(.FRS5_doe_8_LAUL.x_roll_3)), 0}, .FRS5_doe_8_LAUL.positioner.sym_ref))  &
   relative_to = .FRS5_doe_8_LAUL.positioner
!
defaults coordinate_system  &
   default_coordinate_system = .FRS5_doe_8_LAUL.ground
!
marker modify  &
   marker_name = .FRS5_doe_8_LAUL.positioner.c2  &
   location =   &
      (LOC_RELATIVE_TO({-.FRS5_doe_8_LAUL.x_roll_2, -(.FRS5_doe_8_LAUL.y_roll_2 - TAN(.FRS5_doe_8_LAUL.theta_roll_sym) * ABS(.FRS5_doe_8_LAUL.x_roll_2)), 0}, .FRS5_doe_8_LAUL.positioner.sym_ref))  &
   relative_to = .FRS5_doe_8_LAUL.positioner
!
defaults coordinate_system  &
   default_coordinate_system = .FRS5_doe_8_LAUL.ground
!
marker modify  &
   marker_name = .FRS5_doe_8_LAUL.positioner.c5  &
   location =   &
      (LOC_RELATIVE_TO({-.FRS5_doe_8_LAUL.x_roll_5, .FRS5_doe_8_LAUL.y_roll_5 + TAN(.FRS5_doe_8_LAUL.theta_roll_sym) * ABS(.FRS5_doe_8_LAUL.x_roll_5), 0}, .FRS5_doe_8_LAUL.positioner.sym_ref))  &
   relative_to = .FRS5_doe_8_LAUL.positioner
!
defaults coordinate_system  &
   default_coordinate_system = .FRS5_doe_8_LAUL.ground
!
marker modify  &
   marker_name = .FRS5_doe_8_LAUL.positioner.sym_rot  &
   orientation =   &
      (ORI_RELATIVE_TO({-.FRS5_doe_8_LAUL.theta_roll_sym, 0, 0}, .FRS5_doe_8_LAUL.positioner.sym_ref))  &
   relative_to = .FRS5_doe_8_LAUL.positioner
!
defaults coordinate_system  &
   default_coordinate_system = .FRS5_doe_8_LAUL.ground
!
geometry modify shape cylinder  &
   cylinder_name = .FRS5_doe_8_LAUL.positioner.c1g  &
   radius = (.FRS5_doe_8_LAUL.r_roll_1)
!
geometry modify shape cylinder  &
   cylinder_name = .FRS5_doe_8_LAUL.positioner.c3g  &
   radius = (.FRS5_doe_8_LAUL.r_roll_3)
!
geometry modify shape cylinder  &
   cylinder_name = .FRS5_doe_8_LAUL.positioner.c4g  &
   radius = (.FRS5_doe_8_LAUL.r_roll_4)
!
geometry modify shape cylinder  &
   cylinder_name = .FRS5_doe_8_LAUL.positioner.c2g  &
   radius = (.FRS5_doe_8_LAUL.r_roll_2)
!
geometry modify shape cylinder  &
   cylinder_name = .FRS5_doe_8_LAUL.positioner.c5g  &
   radius = (.FRS5_doe_8_LAUL.r_roll_5)
!
marker modify  &
   marker_name = .FRS5_doe_8_LAUL.selector_spider.MARKER_1  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .FRS5_doe_8_LAUL.selector_spider.cntrpt_1))  &
   relative_to = .FRS5_doe_8_LAUL.selector_spider
!
defaults coordinate_system  &
   default_coordinate_system = .FRS5_doe_8_LAUL.ground
!
marker modify  &
   marker_name = .FRS5_doe_8_LAUL.linkU4.fc  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .FRS5_doe_8_LAUL.linkU4.cntrpt_4))  &
   relative_to = .FRS5_doe_8_LAUL.linkU4
!
defaults coordinate_system  &
   default_coordinate_system = .FRS5_doe_8_LAUL.ground
!
marker modify  &
   marker_name = .FRS5_doe_8_LAUL.linkU2.fc  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .FRS5_doe_8_LAUL.linkU2.cntrpt_4))  &
   relative_to = .FRS5_doe_8_LAUL.linkU2
!
defaults coordinate_system  &
   default_coordinate_system = .FRS5_doe_8_LAUL.ground
!
marker modify  &
   marker_name = .FRS5_doe_8_LAUL.linkU3.fc  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .FRS5_doe_8_LAUL.linkU3.cntrpt_4))  &
   relative_to = .FRS5_doe_8_LAUL.linkU3
!
defaults coordinate_system  &
   default_coordinate_system = .FRS5_doe_8_LAUL.ground
!
marker modify  &
   marker_name = .FRS5_doe_8_LAUL.linkU1.fc  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .FRS5_doe_8_LAUL.linkU1.cntrpt_4))  &
   relative_to = .FRS5_doe_8_LAUL.linkU1
!
defaults coordinate_system  &
   default_coordinate_system = .FRS5_doe_8_LAUL.ground
!
geometry modify shape cylinder  &
   cylinder_name = .FRS5_doe_8_LAUL.mid_frameX.uprstop  &
   radius = (0.1875in)
!
geometry modify shape cylinder  &
   cylinder_name = .FRS5_doe_8_LAUL.mid_frameX.lwrstop  &
   radius = (0.1875in)
!
marker modify  &
   marker_name = .FRS5_doe_8_LAUL.linkU5.fc  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .FRS5_doe_8_LAUL.linkU5.cntrpt_4))  &
   relative_to = .FRS5_doe_8_LAUL.linkU5
!
defaults coordinate_system  &
   default_coordinate_system = .FRS5_doe_8_LAUL.ground
!
geometry modify shape cylinder  &
   cylinder_name = .FRS5_doe_8_LAUL.upper_drive_shaftF.CSG_4076.CYLINDER_3992  &
   length = (55.1mm)  &
   radius = (10mm)
!
geometry modify shape cylinder  &
   cylinder_name = .FRS5_doe_8_LAUL.upper_drive_shaftF.CSG_4076.CYLINDER_4034  &
   length = (55.1mm)  &
   radius = (6.35mm)
!
geometry modify shape cylinder  &
   cylinder_name = .FRS5_doe_8_LAUL.lower_drive_shaftF.CSG_3959.CYLINDER_3893  &
   length = (55.1mm)  &
   radius = (10mm)
!
geometry modify shape cylinder  &
   cylinder_name = .FRS5_doe_8_LAUL.lower_drive_shaftF.CSG_3959.CYLINDER_3926  &
   length = (55.1mm)  &
   radius = (6.35mm)
!
force modify direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.BU5_2_s1_20  &
   i_marker_name = (.FRS5_doe_8_LAUL.brassU5.spring_ref)
!
force modify direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.BU5_2_s1_21  &
   i_marker_name = (.FRS5_doe_8_LAUL.brassU5.spring_ref)
!
force modify direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.BU5_2_s1_22  &
   i_marker_name = (.FRS5_doe_8_LAUL.brassU5.spring_ref)
!
force modify direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.BU5_2_s1_23  &
   i_marker_name = (.FRS5_doe_8_LAUL.brassU5.spring_ref)
!
force modify direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.BU5_2_s1_24  &
   i_marker_name = (.FRS5_doe_8_LAUL.brassU5.spring_ref)
!
force modify direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.BU5_2_s1_25  &
   i_marker_name = (.FRS5_doe_8_LAUL.brassU5.spring_ref)
!
force modify direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.BU5_2_s1_26  &
   i_marker_name = (.FRS5_doe_8_LAUL.brassU5.spring_ref)
!
force modify direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.BU5_2_s1_27  &
   i_marker_name = (.FRS5_doe_8_LAUL.brassU5.spring_ref)
!
force modify direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.BU5_2_s1_28  &
   i_marker_name = (.FRS5_doe_8_LAUL.brassU5.spring_ref)
!
force modify direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.BU5_2_s1_29  &
   i_marker_name = (.FRS5_doe_8_LAUL.brassU5.spring_ref)
!
force modify direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.BU5_2_s1_30  &
   i_marker_name = (.FRS5_doe_8_LAUL.brassU5.spring_ref)
!
force modify direct force_vector  &
   force_vector_name = .FRS5_doe_8_LAUL.BU5_2_s1_31  &
   i_marker_name = (.FRS5_doe_8_LAUL.brassU5.spring_ref)
!
variable modify  &
   variable_name = .FRS5_doe_8_LAUL.md_dx  &
   real_value = (.FRS5_doe_8_LAUL.md_i[1] - .FRS5_doe_8_LAUL.md_j[1])
!
variable modify  &
   variable_name = .FRS5_doe_8_LAUL.md_dy  &
   real_value = (.FRS5_doe_8_LAUL.md_i[2] - .FRS5_doe_8_LAUL.md_j[2])
!
variable modify  &
   variable_name = .FRS5_doe_8_LAUL.md_dz  &
   real_value = (.FRS5_doe_8_LAUL.md_i[3] - .FRS5_doe_8_LAUL.md_j[3])
!
variable modify  &
   variable_name = .FRS5_doe_8_LAUL.md_dm  &
   real_value = (SQRT(SSQ(.FRS5_doe_8_LAUL.md_i - .FRS5_doe_8_LAUL.md_j)))
!
variable modify  &
   variable_name = .FRS5_doe_8_LAUL.sear_stack_height  &
   real_value = (10 * 1.04 + 1.93)
!
variable modify  &
   variable_name = .FRS5_doe_8_LAUL.sthick  &
   real_value = (4.0E-02 * 25.4)
!
variable modify  &
   variable_name = .FRS5_doe_8_LAUL.oo  &
   object_value = (.FRS5_doe_8_LAUL.selector_slide.i)
!
geometry modify shape cylinder  &
   cylinder_name = .FRS5_doe_8_LAUL.sideY1_32.solid_shackle1a._solid_shackle1a  &
   radius = (15.032 / 2)
!
geometry modify shape cylinder  &
   cylinder_name = .FRS5_doe_8_LAUL.sideY1_32.solid_shackle1a._solid_shackle1a_cut  &
   radius = (13 / 2)
!
material modify  &
   material_name = .FRS5_doe_8_LAUL.steel_4  &
   density = (7801.0(kg/meter**3))  &
   youngs_modulus = (2.07E+11(Newton/meter**2))
!
force modify element_like beam  &
   beam_name = .FRS5_doe_8_LAUL.s1_beamY_2  &
   area_of_cross_section = (1.016 * 24.0)  &
   ixx = (24.0 / 12 * 1.016**3 + 1.016 / 12 * 24.0**3)  &
   iyy = (1.016 / 12 * 24.0**3)  &
   izz = (24.0 / 12 * 1.016**3)
!
force modify element_like beam  &
   beam_name = .FRS5_doe_8_LAUL.s1_beamY_3  &
   area_of_cross_section = (1.016 * 24.0)  &
   ixx = (24.0 / 12 * 1.016**3 + 1.016 / 12 * 24.0**3)  &
   iyy = (1.016 / 12 * 24.0**3)  &
   izz = (24.0 / 12 * 1.016**3)
!
force modify element_like beam  &
   beam_name = .FRS5_doe_8_LAUL.s1_beamY_4  &
   area_of_cross_section = (1.016 * 24.0)  &
   ixx = (24.0 / 12 * 1.016**3 + 1.016 / 12 * 24.0**3)  &
   iyy = (1.016 / 12 * 24.0**3)  &
   izz = (24.0 / 12 * 1.016**3)
!
force modify element_like beam  &
   beam_name = .FRS5_doe_8_LAUL.s1_beamY_5  &
   area_of_cross_section = (1.016 * 24.0)  &
   ixx = (24.0 / 12 * 1.016**3 + 1.016 / 12 * 24.0**3)  &
   iyy = (1.016 / 12 * 24.0**3)  &
   izz = (24.0 / 12 * 1.016**3)
!
force modify element_like beam  &
   beam_name = .FRS5_doe_8_LAUL.s1_beamY_6  &
   area_of_cross_section = (1.016 * 24.0)  &
   ixx = (24.0 / 12 * 1.016**3 + 1.016 / 12 * 24.0**3)  &
   iyy = (1.016 / 12 * 24.0**3)  &
   izz = (24.0 / 12 * 1.016**3)
!
force modify element_like beam  &
   beam_name = .FRS5_doe_8_LAUL.s1_beamY_7  &
   area_of_cross_section = (1.016 * 24.0)  &
   ixx = (24.0 / 12 * 1.016**3 + 1.016 / 12 * 24.0**3)  &
   iyy = (1.016 / 12 * 24.0**3)  &
   izz = (24.0 / 12 * 1.016**3)
!
force modify element_like beam  &
   beam_name = .FRS5_doe_8_LAUL.s1_beamY_8  &
   area_of_cross_section = (1.016 * 24.0)  &
   ixx = (24.0 / 12 * 1.016**3 + 1.016 / 12 * 24.0**3)  &
   iyy = (1.016 / 12 * 24.0**3)  &
   izz = (24.0 / 12 * 1.016**3)
!
force modify element_like beam  &
   beam_name = .FRS5_doe_8_LAUL.s1_beamY_9  &
   area_of_cross_section = (1.016 * 24.0)  &
   ixx = (24.0 / 12 * 1.016**3 + 1.016 / 12 * 24.0**3)  &
   iyy = (1.016 / 12 * 24.0**3)  &
   izz = (24.0 / 12 * 1.016**3)
!
force modify element_like beam  &
   beam_name = .FRS5_doe_8_LAUL.s1_beamY_10  &
   area_of_cross_section = (1.016 * 24.0)  &
   ixx = (24.0 / 12 * 1.016**3 + 1.016 / 12 * 24.0**3)  &
   iyy = (1.016 / 12 * 24.0**3)  &
   izz = (24.0 / 12 * 1.016**3)
!
force modify element_like beam  &
   beam_name = .FRS5_doe_8_LAUL.s1_beamY_11  &
   area_of_cross_section = (1.016 * 24.0)  &
   ixx = (24.0 / 12 * 1.016**3 + 1.016 / 12 * 24.0**3)  &
   iyy = (1.016 / 12 * 24.0**3)  &
   izz = (24.0 / 12 * 1.016**3)
!
force modify element_like beam  &
   beam_name = .FRS5_doe_8_LAUL.s1_beamY_12  &
   area_of_cross_section = (1.016 * 24.0)  &
   ixx = (24.0 / 12 * 1.016**3 + 1.016 / 12 * 24.0**3)  &
   iyy = (1.016 / 12 * 24.0**3)  &
   izz = (24.0 / 12 * 1.016**3)
!
force modify element_like beam  &
   beam_name = .FRS5_doe_8_LAUL.s1_beamY_13  &
   area_of_cross_section = (1.016 * 24.0)  &
   ixx = (24.0 / 12 * 1.016**3 + 1.016 / 12 * 24.0**3)  &
   iyy = (1.016 / 12 * 24.0**3)  &
   izz = (24.0 / 12 * 1.016**3)
!
force modify element_like beam  &
   beam_name = .FRS5_doe_8_LAUL.s1_beamY_14  &
   area_of_cross_section = (1.016 * 24.0)  &
   ixx = (24.0 / 12 * 1.016**3 + 1.016 / 12 * 24.0**3)  &
   iyy = (1.016 / 12 * 24.0**3)  &
   izz = (24.0 / 12 * 1.016**3)
!
force modify element_like beam  &
   beam_name = .FRS5_doe_8_LAUL.s1_beamY_15  &
   area_of_cross_section = (1.016 * 24.0)  &
   ixx = (24.0 / 12 * 1.016**3 + 1.016 / 12 * 24.0**3)  &
   iyy = (1.016 / 12 * 24.0**3)  &
   izz = (24.0 / 12 * 1.016**3)
!
force modify element_like beam  &
   beam_name = .FRS5_doe_8_LAUL.s1_beamY_16  &
   area_of_cross_section = (1.016 * 24.0)  &
   ixx = (24.0 / 12 * 1.016**3 + 1.016 / 12 * 24.0**3)  &
   iyy = (1.016 / 12 * 24.0**3)  &
   izz = (24.0 / 12 * 1.016**3)
!
force modify element_like beam  &
   beam_name = .FRS5_doe_8_LAUL.s1_beamY_17  &
   area_of_cross_section = (1.016 * 24.0)  &
   ixx = (24.0 / 12 * 1.016**3 + 1.016 / 12 * 24.0**3)  &
   iyy = (1.016 / 12 * 24.0**3)  &
   izz = (24.0 / 12 * 1.016**3)
!
force modify element_like beam  &
   beam_name = .FRS5_doe_8_LAUL.s1_beamY_18  &
   area_of_cross_section = (1.016 * 24.0)  &
   ixx = (24.0 / 12 * 1.016**3 + 1.016 / 12 * 24.0**3)  &
   iyy = (1.016 / 12 * 24.0**3)  &
   izz = (24.0 / 12 * 1.016**3)
!
force modify element_like beam  &
   beam_name = .FRS5_doe_8_LAUL.s1_beamY_19  &
   area_of_cross_section = (1.016 * 24.0)  &
   ixx = (24.0 / 12 * 1.016**3 + 1.016 / 12 * 24.0**3)  &
   iyy = (1.016 / 12 * 24.0**3)  &
   izz = (24.0 / 12 * 1.016**3)
!
force modify element_like beam  &
   beam_name = .FRS5_doe_8_LAUL.s1_beamY_20  &
   area_of_cross_section = (1.016 * 24.0)  &
   ixx = (24.0 / 12 * 1.016**3 + 1.016 / 12 * 24.0**3)  &
   iyy = (1.016 / 12 * 24.0**3)  &
   izz = (24.0 / 12 * 1.016**3)
!
force modify element_like beam  &
   beam_name = .FRS5_doe_8_LAUL.s1_beamY_21  &
   area_of_cross_section = (1.016 * 24.0)  &
   ixx = (24.0 / 12 * 1.016**3 + 1.016 / 12 * 24.0**3)  &
   iyy = (1.016 / 12 * 24.0**3)  &
   izz = (24.0 / 12 * 1.016**3)
!
force modify element_like beam  &
   beam_name = .FRS5_doe_8_LAUL.s1_beamY_22  &
   area_of_cross_section = (1.016 * 24.0)  &
   ixx = (24.0 / 12 * 1.016**3 + 1.016 / 12 * 24.0**3)  &
   iyy = (1.016 / 12 * 24.0**3)  &
   izz = (24.0 / 12 * 1.016**3)
!
force modify element_like beam  &
   beam_name = .FRS5_doe_8_LAUL.s1_beamY_23  &
   area_of_cross_section = (1.016 * 24.0)  &
   ixx = (24.0 / 12 * 1.016**3 + 1.016 / 12 * 24.0**3)  &
   iyy = (1.016 / 12 * 24.0**3)  &
   izz = (24.0 / 12 * 1.016**3)
!
force modify element_like beam  &
   beam_name = .FRS5_doe_8_LAUL.s1_beamY_24  &
   area_of_cross_section = (1.016 * 24.0)  &
   ixx = (24.0 / 12 * 1.016**3 + 1.016 / 12 * 24.0**3)  &
   iyy = (1.016 / 12 * 24.0**3)  &
   izz = (24.0 / 12 * 1.016**3)
!
force modify element_like beam  &
   beam_name = .FRS5_doe_8_LAUL.s1_beamY_25  &
   area_of_cross_section = (1.016 * 24.0)  &
   ixx = (24.0 / 12 * 1.016**3 + 1.016 / 12 * 24.0**3)  &
   iyy = (1.016 / 12 * 24.0**3)  &
   izz = (24.0 / 12 * 1.016**3)
!
force modify element_like beam  &
   beam_name = .FRS5_doe_8_LAUL.s1_beamY_26  &
   area_of_cross_section = (1.016 * 24.0)  &
   ixx = (24.0 / 12 * 1.016**3 + 1.016 / 12 * 24.0**3)  &
   iyy = (1.016 / 12 * 24.0**3)  &
   izz = (24.0 / 12 * 1.016**3)
!
force modify element_like beam  &
   beam_name = .FRS5_doe_8_LAUL.s1_beamY_27  &
   area_of_cross_section = (1.016 * 24.0)  &
   ixx = (24.0 / 12 * 1.016**3 + 1.016 / 12 * 24.0**3)  &
   iyy = (1.016 / 12 * 24.0**3)  &
   izz = (24.0 / 12 * 1.016**3)
!
force modify element_like beam  &
   beam_name = .FRS5_doe_8_LAUL.s1_beamY_28  &
   area_of_cross_section = (1.016 * 24.0)  &
   ixx = (24.0 / 12 * 1.016**3 + 1.016 / 12 * 24.0**3)  &
   iyy = (1.016 / 12 * 24.0**3)  &
   izz = (24.0 / 12 * 1.016**3)
!
force modify element_like beam  &
   beam_name = .FRS5_doe_8_LAUL.s1_beamY_29  &
   area_of_cross_section = (1.016 * 24.0)  &
   ixx = (24.0 / 12 * 1.016**3 + 1.016 / 12 * 24.0**3)  &
   iyy = (1.016 / 12 * 24.0**3)  &
   izz = (24.0 / 12 * 1.016**3)
!
force modify element_like beam  &
   beam_name = .FRS5_doe_8_LAUL.s1_beamY_30  &
   area_of_cross_section = (1.016 * 24.0)  &
   ixx = (24.0 / 12 * 1.016**3 + 1.016 / 12 * 24.0**3)  &
   iyy = (1.016 / 12 * 24.0**3)  &
   izz = (24.0 / 12 * 1.016**3)
!
force modify element_like beam  &
   beam_name = .FRS5_doe_8_LAUL.s1_beamY_31  &
   area_of_cross_section = (1.016 * 24.0)  &
   ixx = (24.0 / 12 * 1.016**3 + 1.016 / 12 * 24.0**3)  &
   iyy = (1.016 / 12 * 24.0**3)  &
   izz = (24.0 / 12 * 1.016**3)
!
geometry modify shape cylinder  &
   cylinder_name = .FRS5_doe_8_LAUL.sideY2_30.solid_shackle2a._solid_shackle2a  &
   radius = (15.032 / 2)
!
geometry modify shape cylinder  &
   cylinder_name = .FRS5_doe_8_LAUL.sideY2_30.solid_shackle2a._solid_shackle2a_cut  &
   radius = (13 / 2)
!
force modify element_like beam  &
   beam_name = .FRS5_doe_8_LAUL.s2_beamY_2  &
   area_of_cross_section = (1.016 * 24.0)  &
   ixx = (24.0 / 12 * 1.016**3 + 1.016 / 12 * 24.0**3)  &
   iyy = (1.016 / 12 * 24.0**3)  &
   izz = (24.0 / 12 * 1.016**3)
!
force modify element_like beam  &
   beam_name = .FRS5_doe_8_LAUL.s2_beamY_3  &
   area_of_cross_section = (1.016 * 24.0)  &
   ixx = (24.0 / 12 * 1.016**3 + 1.016 / 12 * 24.0**3)  &
   iyy = (1.016 / 12 * 24.0**3)  &
   izz = (24.0 / 12 * 1.016**3)
!
force modify element_like beam  &
   beam_name = .FRS5_doe_8_LAUL.s2_beamY_4  &
   area_of_cross_section = (1.016 * 24.0)  &
   ixx = (24.0 / 12 * 1.016**3 + 1.016 / 12 * 24.0**3)  &
   iyy = (1.016 / 12 * 24.0**3)  &
   izz = (24.0 / 12 * 1.016**3)
!
force modify element_like beam  &
   beam_name = .FRS5_doe_8_LAUL.s2_beamY_5  &
   area_of_cross_section = (1.016 * 24.0)  &
   ixx = (24.0 / 12 * 1.016**3 + 1.016 / 12 * 24.0**3)  &
   iyy = (1.016 / 12 * 24.0**3)  &
   izz = (24.0 / 12 * 1.016**3)
!
force modify element_like beam  &
   beam_name = .FRS5_doe_8_LAUL.s2_beamY_6  &
   area_of_cross_section = (1.016 * 24.0)  &
   ixx = (24.0 / 12 * 1.016**3 + 1.016 / 12 * 24.0**3)  &
   iyy = (1.016 / 12 * 24.0**3)  &
   izz = (24.0 / 12 * 1.016**3)
!
force modify element_like beam  &
   beam_name = .FRS5_doe_8_LAUL.s2_beamY_7  &
   area_of_cross_section = (1.016 * 24.0)  &
   ixx = (24.0 / 12 * 1.016**3 + 1.016 / 12 * 24.0**3)  &
   iyy = (1.016 / 12 * 24.0**3)  &
   izz = (24.0 / 12 * 1.016**3)
!
force modify element_like beam  &
   beam_name = .FRS5_doe_8_LAUL.s2_beamY_8  &
   area_of_cross_section = (1.016 * 24.0)  &
   ixx = (24.0 / 12 * 1.016**3 + 1.016 / 12 * 24.0**3)  &
   iyy = (1.016 / 12 * 24.0**3)  &
   izz = (24.0 / 12 * 1.016**3)
!
force modify element_like beam  &
   beam_name = .FRS5_doe_8_LAUL.s2_beamY_9  &
   area_of_cross_section = (1.016 * 24.0)  &
   ixx = (24.0 / 12 * 1.016**3 + 1.016 / 12 * 24.0**3)  &
   iyy = (1.016 / 12 * 24.0**3)  &
   izz = (24.0 / 12 * 1.016**3)
!
force modify element_like beam  &
   beam_name = .FRS5_doe_8_LAUL.s2_beamY_10  &
   area_of_cross_section = (1.016 * 24.0)  &
   ixx = (24.0 / 12 * 1.016**3 + 1.016 / 12 * 24.0**3)  &
   iyy = (1.016 / 12 * 24.0**3)  &
   izz = (24.0 / 12 * 1.016**3)
!
force modify element_like beam  &
   beam_name = .FRS5_doe_8_LAUL.s2_beamY_11  &
   area_of_cross_section = (1.016 * 24.0)  &
   ixx = (24.0 / 12 * 1.016**3 + 1.016 / 12 * 24.0**3)  &
   iyy = (1.016 / 12 * 24.0**3)  &
   izz = (24.0 / 12 * 1.016**3)
!
force modify element_like beam  &
   beam_name = .FRS5_doe_8_LAUL.s2_beamY_12  &
   area_of_cross_section = (1.016 * 24.0)  &
   ixx = (24.0 / 12 * 1.016**3 + 1.016 / 12 * 24.0**3)  &
   iyy = (1.016 / 12 * 24.0**3)  &
   izz = (24.0 / 12 * 1.016**3)
!
force modify element_like beam  &
   beam_name = .FRS5_doe_8_LAUL.s2_beamY_13  &
   area_of_cross_section = (1.016 * 24.0)  &
   ixx = (24.0 / 12 * 1.016**3 + 1.016 / 12 * 24.0**3)  &
   iyy = (1.016 / 12 * 24.0**3)  &
   izz = (24.0 / 12 * 1.016**3)
!
force modify element_like beam  &
   beam_name = .FRS5_doe_8_LAUL.s2_beamY_14  &
   area_of_cross_section = (1.016 * 24.0)  &
   ixx = (24.0 / 12 * 1.016**3 + 1.016 / 12 * 24.0**3)  &
   iyy = (1.016 / 12 * 24.0**3)  &
   izz = (24.0 / 12 * 1.016**3)
!
force modify element_like beam  &
   beam_name = .FRS5_doe_8_LAUL.s2_beamY_15  &
   area_of_cross_section = (1.016 * 24.0)  &
   ixx = (24.0 / 12 * 1.016**3 + 1.016 / 12 * 24.0**3)  &
   iyy = (1.016 / 12 * 24.0**3)  &
   izz = (24.0 / 12 * 1.016**3)
!
force modify element_like beam  &
   beam_name = .FRS5_doe_8_LAUL.s2_beamY_16  &
   area_of_cross_section = (1.016 * 24.0)  &
   ixx = (24.0 / 12 * 1.016**3 + 1.016 / 12 * 24.0**3)  &
   iyy = (1.016 / 12 * 24.0**3)  &
   izz = (24.0 / 12 * 1.016**3)
!
force modify element_like beam  &
   beam_name = .FRS5_doe_8_LAUL.s2_beamY_17  &
   area_of_cross_section = (1.016 * 24.0)  &
   ixx = (24.0 / 12 * 1.016**3 + 1.016 / 12 * 24.0**3)  &
   iyy = (1.016 / 12 * 24.0**3)  &
   izz = (24.0 / 12 * 1.016**3)
!
force modify element_like beam  &
   beam_name = .FRS5_doe_8_LAUL.s2_beamY_18  &
   area_of_cross_section = (1.016 * 24.0)  &
   ixx = (24.0 / 12 * 1.016**3 + 1.016 / 12 * 24.0**3)  &
   iyy = (1.016 / 12 * 24.0**3)  &
   izz = (24.0 / 12 * 1.016**3)
!
force modify element_like beam  &
   beam_name = .FRS5_doe_8_LAUL.s2_beamY_19  &
   area_of_cross_section = (1.016 * 24.0)  &
   ixx = (24.0 / 12 * 1.016**3 + 1.016 / 12 * 24.0**3)  &
   iyy = (1.016 / 12 * 24.0**3)  &
   izz = (24.0 / 12 * 1.016**3)
!
force modify element_like beam  &
   beam_name = .FRS5_doe_8_LAUL.s2_beamY_20  &
   area_of_cross_section = (1.016 * 24.0)  &
   ixx = (24.0 / 12 * 1.016**3 + 1.016 / 12 * 24.0**3)  &
   iyy = (1.016 / 12 * 24.0**3)  &
   izz = (24.0 / 12 * 1.016**3)
!
force modify element_like beam  &
   beam_name = .FRS5_doe_8_LAUL.s2_beamY_21  &
   area_of_cross_section = (1.016 * 24.0)  &
   ixx = (24.0 / 12 * 1.016**3 + 1.016 / 12 * 24.0**3)  &
   iyy = (1.016 / 12 * 24.0**3)  &
   izz = (24.0 / 12 * 1.016**3)
!
force modify element_like beam  &
   beam_name = .FRS5_doe_8_LAUL.s2_beamY_22  &
   area_of_cross_section = (1.016 * 24.0)  &
   ixx = (24.0 / 12 * 1.016**3 + 1.016 / 12 * 24.0**3)  &
   iyy = (1.016 / 12 * 24.0**3)  &
   izz = (24.0 / 12 * 1.016**3)
!
force modify element_like beam  &
   beam_name = .FRS5_doe_8_LAUL.s2_beamY_23  &
   area_of_cross_section = (1.016 * 24.0)  &
   ixx = (24.0 / 12 * 1.016**3 + 1.016 / 12 * 24.0**3)  &
   iyy = (1.016 / 12 * 24.0**3)  &
   izz = (24.0 / 12 * 1.016**3)
!
force modify element_like beam  &
   beam_name = .FRS5_doe_8_LAUL.s2_beamY_24  &
   area_of_cross_section = (1.016 * 24.0)  &
   ixx = (24.0 / 12 * 1.016**3 + 1.016 / 12 * 24.0**3)  &
   iyy = (1.016 / 12 * 24.0**3)  &
   izz = (24.0 / 12 * 1.016**3)
!
force modify element_like beam  &
   beam_name = .FRS5_doe_8_LAUL.s2_beamY_25  &
   area_of_cross_section = (1.016 * 24.0)  &
   ixx = (24.0 / 12 * 1.016**3 + 1.016 / 12 * 24.0**3)  &
   iyy = (1.016 / 12 * 24.0**3)  &
   izz = (24.0 / 12 * 1.016**3)
!
force modify element_like beam  &
   beam_name = .FRS5_doe_8_LAUL.s2_beamY_26  &
   area_of_cross_section = (1.016 * 24.0)  &
   ixx = (24.0 / 12 * 1.016**3 + 1.016 / 12 * 24.0**3)  &
   iyy = (1.016 / 12 * 24.0**3)  &
   izz = (24.0 / 12 * 1.016**3)
!
force modify element_like beam  &
   beam_name = .FRS5_doe_8_LAUL.s2_beamY_27  &
   area_of_cross_section = (1.016 * 24.0)  &
   ixx = (24.0 / 12 * 1.016**3 + 1.016 / 12 * 24.0**3)  &
   iyy = (1.016 / 12 * 24.0**3)  &
   izz = (24.0 / 12 * 1.016**3)
!
force modify element_like beam  &
   beam_name = .FRS5_doe_8_LAUL.s2_beamY_28  &
   area_of_cross_section = (1.016 * 24.0)  &
   ixx = (24.0 / 12 * 1.016**3 + 1.016 / 12 * 24.0**3)  &
   iyy = (1.016 / 12 * 24.0**3)  &
   izz = (24.0 / 12 * 1.016**3)
!
force modify element_like beam  &
   beam_name = .FRS5_doe_8_LAUL.s2_beamY_29  &
   area_of_cross_section = (1.016 * 24.0)  &
   ixx = (24.0 / 12 * 1.016**3 + 1.016 / 12 * 24.0**3)  &
   iyy = (1.016 / 12 * 24.0**3)  &
   izz = (24.0 / 12 * 1.016**3)
!
model display  &
   model_name = FRS5_doe_8_LAUL
