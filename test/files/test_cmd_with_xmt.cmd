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
   model_name = FRS3EQ_case1_LAUL
!
model attributes  &
   model_name = .FRS3EQ_case1_LAUL  &
   size_of_icons = 7.0
!
view erase
!
!-------------------------------- Data storage --------------------------------!
! ****** Graphics from Parasolid file ******
!
file parasolid read  &
   file_name = "FRS3EQ_case1_LAUL.xmt_txt"  &
   model_name = .FRS3EQ_case1_LAUL
!
geometry attributes  &
   geometry_name = .FRS3EQ_case1_LAUL.fwd_housing.SOLID8  &
   color = ClayRed  &
   render = wireframe
!
geometry attributes  &
   geometry_name = .FRS3EQ_case1_LAUL.fwd_housing.SOLID18  &
   color = ClayRed  &
   render = wireframe
!