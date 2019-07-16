plugin load plugin_name = .MDI.plugins.adrill
ds TOStart string_cfg_file = "c:/Users/bthornt/Code/adamspy/test/existing_unbuilt_drillsim/test_analysis_1.str"
adrill build acf ssf="test_analysis_1.ssf" evt="test_analysis_1.evt"
file adams write file="test_analysis_1.adm"
simulation script write_acf sim_script_name = "test_analysis_1" file_name = "test_analysis_1.acf"
file command write entity_name = "test_analysis_1" file_name = "test_analysis_1.cmd"