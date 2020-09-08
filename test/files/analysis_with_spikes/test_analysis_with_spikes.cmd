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
   model_name = test_analysis_with_spikes
!
view erase
!
!--------------------------------- Materials ----------------------------------!
!
!
material create  &
   material_name = .test_analysis_with_spikes.steel  &
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
   default_coordinate_system = .test_analysis_with_spikes.ground
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .test_analysis_with_spikes.ground.MARKER_5  &
   adams_id = 5  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .test_analysis_with_spikes.ground.MARKER_10  &
   adams_id = 10  &
   location = 12.0, 0.0, 0.0  &
   orientation = 270.0d, 90.0d, 180.0d
!
marker create  &
   marker_name = .test_analysis_with_spikes.ground.MARKER_14  &
   adams_id = 14  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
!----------------------------------- PART_2 -----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .test_analysis_with_spikes.ground
!
part create rigid_body name_and_position  &
   part_name = .test_analysis_with_spikes.PART_2  &
   adams_id = 2  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .test_analysis_with_spikes.PART_2
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .test_analysis_with_spikes.PART_2.MARKER_1  &
   adams_id = 1  &
   location = 0.0, 0.0, 0.0  &
   orientation = 90.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .test_analysis_with_spikes.PART_2.MARKER_2  &
   adams_id = 2  &
   location = 0.0, 6.0, 0.0  &
   orientation = 90.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .test_analysis_with_spikes.PART_2.cm  &
   adams_id = 11  &
   location = 0.0, 3.0, 0.0  &
   orientation = 180.0d, 90.0d, 90.0d
!
marker create  &
   marker_name = .test_analysis_with_spikes.PART_2.MARKER_6  &
   adams_id = 6  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .test_analysis_with_spikes.PART_2.MARKER_7  &
   adams_id = 7  &
   location = 0.0, 6.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .test_analysis_with_spikes.PART_2.MARKER_13  &
   adams_id = 13  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
part create rigid_body mass_properties  &
   part_name = .test_analysis_with_spikes.PART_2  &
   material_type = .test_analysis_with_spikes.steel
!
! ****** Graphics for current part ******
!
geometry create shape link  &
   link_name = .test_analysis_with_spikes.PART_2.LINK_1  &
   i_marker = .test_analysis_with_spikes.PART_2.MARKER_1  &
   j_marker = .test_analysis_with_spikes.PART_2.MARKER_2  &
   width = 0.5  &
   depth = 0.25
!
part attributes  &
   part_name = .test_analysis_with_spikes.PART_2  &
   color = RED  &
   name_visibility = off
!
!----------------------------------- PART_3 -----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .test_analysis_with_spikes.ground
!
part create rigid_body name_and_position  &
   part_name = .test_analysis_with_spikes.PART_3  &
   adams_id = 3  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .test_analysis_with_spikes.PART_3
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .test_analysis_with_spikes.PART_3.MARKER_3  &
   adams_id = 3  &
   location = 0.0, 6.0, 0.0  &
   orientation = 333.4349488229d, 0.0d, 0.0d
!
marker create  &
   marker_name = .test_analysis_with_spikes.PART_3.MARKER_4  &
   adams_id = 4  &
   location = 12.0, 0.0, 0.0  &
   orientation = 333.4349488229d, 0.0d, 0.0d
!
marker create  &
   marker_name = .test_analysis_with_spikes.PART_3.cm  &
   adams_id = 12  &
   location = 6.0, 3.0, 0.0  &
   orientation = 243.4349488229d, 90.0000000239d, 90.0000004979d
!
marker create  &
   marker_name = .test_analysis_with_spikes.PART_3.MARKER_8  &
   adams_id = 8  &
   location = 0.0, 6.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .test_analysis_with_spikes.PART_3.MARKER_9  &
   adams_id = 9  &
   location = 12.0, 0.0, 0.0  &
   orientation = 270.0d, 90.0d, 180.0d
!
part create rigid_body mass_properties  &
   part_name = .test_analysis_with_spikes.PART_3  &
   material_type = .test_analysis_with_spikes.steel
!
! ****** Graphics for current part ******
!
geometry create shape link  &
   link_name = .test_analysis_with_spikes.PART_3.LINK_2  &
   i_marker = .test_analysis_with_spikes.PART_3.MARKER_3  &
   j_marker = .test_analysis_with_spikes.PART_3.MARKER_4  &
   width = 0.5  &
   depth = 0.25
!
part attributes  &
   part_name = .test_analysis_with_spikes.PART_3  &
   color = GREEN  &
   name_visibility = off
!
!----------------------------------- Joints -----------------------------------!
!
!
constraint create joint revolute  &
   joint_name = .test_analysis_with_spikes.JOINT_1  &
   adams_id = 1  &
   i_marker_name = .test_analysis_with_spikes.ground.MARKER_5  &
   j_marker_name = .test_analysis_with_spikes.PART_2.MARKER_6
!
constraint attributes  &
   constraint_name = .test_analysis_with_spikes.JOINT_1  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .test_analysis_with_spikes.JOINT_2  &
   adams_id = 2  &
   i_marker_name = .test_analysis_with_spikes.PART_2.MARKER_7  &
   j_marker_name = .test_analysis_with_spikes.PART_3.MARKER_8
!
constraint attributes  &
   constraint_name = .test_analysis_with_spikes.JOINT_2  &
   name_visibility = off
!
!------------------------------ Joint Primitives ------------------------------!
!
!
constraint create primitive_joint inline  &
   jprim_name = .test_analysis_with_spikes.JOINT_3  &
   adams_id = 1  &
   i_marker_name = .test_analysis_with_spikes.PART_3.MARKER_9  &
   j_marker_name = .test_analysis_with_spikes.ground.MARKER_10
!
!----------------------------------- Forces -----------------------------------!
!
!
force create direct single_component_force  &
   single_component_force_name = .test_analysis_with_spikes.torque_spike  &
   adams_id = 1  &
   type_of_freedom = rotational  &
   i_marker_name = .test_analysis_with_spikes.PART_2.MARKER_13  &
   j_marker_name = .test_analysis_with_spikes.ground.MARKER_14  &
   action_only = on  &
   function = ""
!
!----------------------------- Simulation Scripts -----------------------------!
!
!
simulation script create  &
   sim_script_name = .test_analysis_with_spikes.Last_Sim  &
   commands =   &
              "simulation single_run scripted sim_script_name=.test_analysis_with_spikes.SIM_SCRIPT_1 reset_before_and_after=yes model_name=.test_analysis_with_spikes"
!
simulation script create  &
   sim_script_name = .test_analysis_with_spikes.analysis_1  &
   solver_commands = "! Insert ACF commands here:",  &
                     "SIMULATE/DYNAMIC, END=20.0, DTOUT=0.1"
!
simulation script create  &
   sim_script_name = .test_analysis_with_spikes.SIM_SCRIPT_1  &
   solver_commands = "! Insert ACF commands here:",  &
                     "SIMULATE/DYNAMIC, END=2.0, DTOUT=1.0E-02"
!
!------------------------------ Dynamic Graphics ------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .test_analysis_with_spikes.ground
!
geometry create shape force  &
   force_name = .test_analysis_with_spikes.SFORCE_1_force_graphic_1  &
   adams_id = 1  &
   force_element_name = .test_analysis_with_spikes.torque_spike  &
   applied_at_marker_name = .test_analysis_with_spikes.PART_2.MARKER_13
!
geometry create shape force  &
   force_name = .test_analysis_with_spikes.JOINT_1_force_graphic_1  &
   adams_id = 2  &
   joint_name = .test_analysis_with_spikes.JOINT_1  &
   applied_at_marker_name = .test_analysis_with_spikes.PART_2.MARKER_6
!
!---------------------------------- Motions -----------------------------------!
!
!
constraint create motion_generator  &
   motion_name = .test_analysis_with_spikes.MOTION_1  &
   adams_id = 1  &
   type_of_freedom = rotational  &
   joint_name = .test_analysis_with_spikes.JOINT_1  &
   function = ""
!
constraint attributes  &
   constraint_name = .test_analysis_with_spikes.MOTION_1  &
   name_visibility = off
!
!----------------------------- Analysis settings ------------------------------!
!
!
!---------------------------------- Measures ----------------------------------!
!
!
measure create object  &
   measure_name = .test_analysis_with_spikes.torque  &
   from_first = yes  &
   object = .test_analysis_with_spikes.MOTION_1  &
   characteristic = element_torque  &
   component = z_component  &
   create_measure_display = no
!
data_element attributes  &
   data_element_name = .test_analysis_with_spikes.torque  &
   color = WHITE
!
!---------------------------- Function definitions ----------------------------!
!
!
constraint modify motion_generator  &
   motion_name = .test_analysis_with_spikes.MOTION_1  &
   function = "30.0d * time"
!
force modify direct single_component_force  &
   single_component_force_name = .test_analysis_with_spikes.torque_spike  &
   function = "(step(time, 1, 0, 1.01, 1) - step(time, 1.01, 0, 1.02, 1))*10"
!
!--------------------------- Expression definitions ---------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = ground
!
material modify  &
   material_name = .test_analysis_with_spikes.steel  &
   density = (7801.0(kg/meter**3))  &
   youngs_modulus = (2.07E+11(Newton/meter**2))
!
marker modify  &
   marker_name = .test_analysis_with_spikes.PART_2.MARKER_2  &
   location =   &
      (LOC_RELATIVE_TO({6inch, 0.0, 0.0}, .test_analysis_with_spikes.PART_2.MARKER_1))  &
   relative_to = .test_analysis_with_spikes.PART_2
!
defaults coordinate_system  &
   default_coordinate_system = .test_analysis_with_spikes.ground
!
geometry modify shape link  &
   link_name = .test_analysis_with_spikes.PART_2.LINK_1  &
   width = (0.5inch)  &
   depth = (0.25inch)
!
geometry modify shape link  &
   link_name = .test_analysis_with_spikes.PART_3.LINK_2  &
   width = (0.5inch)  &
   depth = (0.25inch)
!
geometry modify shape force  &
   force_name = .test_analysis_with_spikes.SFORCE_1_force_graphic_1  &
   applied_at_marker_name = (.test_analysis_with_spikes.torque_spike.i)
!
geometry modify shape force  &
   force_name = .test_analysis_with_spikes.JOINT_1_force_graphic_1  &
   applied_at_marker_name = (.test_analysis_with_spikes.JOINT_1.j)
!
model display  &
   model_name = test_analysis_with_spikes
