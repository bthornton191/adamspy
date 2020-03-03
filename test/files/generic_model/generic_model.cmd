!
!-------------------------- Default Units for Model ---------------------------!
!
!
defaults units  &
   length = inch  &
   angle = deg  &
   force = pound_force  &
   mass = pound_mass  &
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
   icon_visibility = on  &
   grid_visibility = off  &
   size_of_icons = 7.874E-02  &
   spacing_for_grid = 39.3700787402
!
!------------------------------ Adams View Model ------------------------------!
!
!
model create  &
   model_name = generic_model
!
view erase
!
!--------------------------------- Materials ----------------------------------!
!
!
material create  &
   material_name = .generic_model.steel  &
   adams_id = 1  &
   density = 0.2818290049  &
   youngs_modulus = 3.002281171E+07  &
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
   default_coordinate_system = .generic_model.ground
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .generic_model.ground.MARKER_5  &
   adams_id = 5  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .generic_model.ground.MARKER_10  &
   adams_id = 10  &
   location = 12.0, 0.0, 0.0  &
   orientation = 270.0d, 90.0d, 180.0d
!
!----------------------------------- PART_2 -----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .generic_model.ground
!
part create rigid_body name_and_position  &
   part_name = .generic_model.PART_2  &
   adams_id = 2  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .generic_model.PART_2
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .generic_model.PART_2.MARKER_1  &
   adams_id = 1  &
   location = 0.0, 0.0, 0.0  &
   orientation = 90.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .generic_model.PART_2.MARKER_2  &
   adams_id = 2  &
   location = 0.0, 6.0, 0.0  &
   orientation = 90.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .generic_model.PART_2.cm  &
   adams_id = 11  &
   location = 0.0, 3.0, 0.0  &
   orientation = 180.0d, 90.0d, 90.0d
!
marker create  &
   marker_name = .generic_model.PART_2.MARKER_6  &
   adams_id = 6  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .generic_model.PART_2.MARKER_7  &
   adams_id = 7  &
   location = 0.0, 6.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
part create rigid_body mass_properties  &
   part_name = .generic_model.PART_2  &
   material_type = .generic_model.steel
!
! ****** Graphics for current part ******
!
geometry create shape link  &
   link_name = .generic_model.PART_2.LINK_1  &
   i_marker = .generic_model.PART_2.MARKER_1  &
   j_marker = .generic_model.PART_2.MARKER_2  &
   width = 0.5  &
   depth = 0.25
!
part attributes  &
   part_name = .generic_model.PART_2  &
   color = RED  &
   name_visibility = off
!
!----------------------------------- PART_3 -----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .generic_model.ground
!
part create rigid_body name_and_position  &
   part_name = .generic_model.PART_3  &
   adams_id = 3  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .generic_model.PART_3
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .generic_model.PART_3.MARKER_3  &
   adams_id = 3  &
   location = 0.0, 6.0, 0.0  &
   orientation = 333.4349488229d, 0.0d, 0.0d
!
marker create  &
   marker_name = .generic_model.PART_3.MARKER_4  &
   adams_id = 4  &
   location = 12.0, 0.0, 0.0  &
   orientation = 333.4349488229d, 0.0d, 0.0d
!
marker create  &
   marker_name = .generic_model.PART_3.cm  &
   adams_id = 12  &
   location = 6.0, 3.0, 0.0  &
   orientation = 243.4349488229d, 90.0000000239d, 90.0000004979d
!
marker create  &
   marker_name = .generic_model.PART_3.MARKER_8  &
   adams_id = 8  &
   location = 0.0, 6.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .generic_model.PART_3.MARKER_9  &
   adams_id = 9  &
   location = 12.0, 0.0, 0.0  &
   orientation = 270.0d, 90.0d, 180.0d
!
part create rigid_body mass_properties  &
   part_name = .generic_model.PART_3  &
   material_type = .generic_model.steel
!
! ****** Graphics for current part ******
!
geometry create shape link  &
   link_name = .generic_model.PART_3.LINK_2  &
   i_marker = .generic_model.PART_3.MARKER_3  &
   j_marker = .generic_model.PART_3.MARKER_4  &
   width = 0.5  &
   depth = 0.25
!
part attributes  &
   part_name = .generic_model.PART_3  &
   color = GREEN  &
   name_visibility = off
!
!----------------------------------- Joints -----------------------------------!
!
!
constraint create joint revolute  &
   joint_name = .generic_model.JOINT_1  &
   adams_id = 1  &
   i_marker_name = .generic_model.ground.MARKER_5  &
   j_marker_name = .generic_model.PART_2.MARKER_6
!
constraint attributes  &
   constraint_name = .generic_model.JOINT_1  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .generic_model.JOINT_2  &
   adams_id = 2  &
   i_marker_name = .generic_model.PART_2.MARKER_7  &
   j_marker_name = .generic_model.PART_3.MARKER_8
!
constraint attributes  &
   constraint_name = .generic_model.JOINT_2  &
   name_visibility = off
!
!------------------------------ Joint Primitives ------------------------------!
!
!
constraint create primitive_joint inline  &
   jprim_name = .generic_model.JOINT_3  &
   adams_id = 1  &
   i_marker_name = .generic_model.PART_3.MARKER_9  &
   j_marker_name = .generic_model.ground.MARKER_10
!
!----------------------------- Simulation Scripts -----------------------------!
!
!
simulation script create  &
   sim_script_name = .generic_model.Last_Sim  &
   commands =   &
              "simulation single_run scripted sim_script_name=.generic_model.analysis_1 reset_before_and_after=yes model_name=.generic_model"
!
simulation script create  &
   sim_script_name = .generic_model.analysis_1  &
   solver_commands = "! Insert ACF commands here:",  &
                     "SIMULATE/DYNAMIC, END=20.0, DTOUT=0.1"
!
!---------------------------------- Motions -----------------------------------!
!
!
constraint create motion_generator  &
   motion_name = .generic_model.MOTION_1  &
   adams_id = 1  &
   type_of_freedom = rotational  &
   joint_name = .generic_model.JOINT_1  &
   function = ""
!
constraint attributes  &
   constraint_name = .generic_model.MOTION_1  &
   name_visibility = off
!
!----------------------------- Analysis settings ------------------------------!
!
!
!---------------------------- Function definitions ----------------------------!
!
!
constraint modify motion_generator  &
   motion_name = .generic_model.MOTION_1  &
   function = "30.0d * time"
!
!--------------------------- Expression definitions ---------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = ground
!
marker modify  &
   marker_name = .generic_model.PART_2.MARKER_2  &
   location =   &
      (LOC_RELATIVE_TO({6inch, 0.0, 0.0}, .generic_model.PART_2.MARKER_1))  &
   relative_to = .generic_model.PART_2
!
defaults coordinate_system  &
   default_coordinate_system = .generic_model.ground
!
geometry modify shape link  &
   link_name = .generic_model.PART_2.LINK_1  &
   width = (0.5inch)  &
   depth = (0.25inch)
!
geometry modify shape link  &
   link_name = .generic_model.PART_3.LINK_2  &
   width = (0.5inch)  &
   depth = (0.25inch)
!
material modify  &
   material_name = .generic_model.steel  &
   density = (7801.0(kg/meter**3))  &
   youngs_modulus = (2.07E+11(Newton/meter**2))
!
model display  &
   model_name = generic_model
