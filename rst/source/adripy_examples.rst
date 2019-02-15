========
Examples
========

This example shows how to create an adams drill input deck (acf, adm, and cmd files).

.. code-block:: python

    import os
    os.environ['ADRILL_USER_CFG'] = 'C:\\users\\bthornt\\.adrill.cfg'
    os.environ['ADRILL_SHARED_CFG'] = 'C:\\MSC.Software\\Adams\\2018\\adrill\\adrill.cfg'
    os.environ['ADAMS_LAUNCH_COMMAND'] = 'C:\\MSC.Software\\Adams\\2018\\common\\mdi.bat'
        
    # Import the adripy module from the adamspy package
    from adamspy import adripy                                          

    # --------------------------
    # Create a DrillEvent object
    # --------------------------    
    # Instance the DrillEvent class
    my_event = adripy.DrillEvent('My_Event', 1300, 5)

    # Add simulations steps to the event file
    my_event.add_simulation_step(10)
    my_event.add_simulation_step(200, output_step_size=.1)

    # Add drilling parameter ramps to the event file
    my_event.add_ramp('PUMP_FLOW', 0, 15, 500, clear_existing=True)    
    my_event.add_ramp('TOP_DRIVE', 15, 15, 50, clear_existing=True)
    my_event.add_ramp('WOB', 40, 15, 50, clear_existing=True)
    my_event.add_ramp('ROP', 45, 15, 100, clear_existing=True)

    # Write event to an event file (.evt)
    my_event.write_to_file(directory=os.getcwd())

    # --------------------------
    # Build a DrillString object
    # --------------------------
    # Set the path to a hole file
    hole_file = os.path.join('<adrill_shared>', 'holes.tbl', 'SmoothCurve_hole.hol')

    # Instance the DrillString class
    my_string = adripy.DrillString('MyString', hole_file, '')

    # Create some tools and add them to the drill string
    pdc = adripy.DrillTool(os.path.join('<adrill_shared>', 'pdc_bits.tbl', 'SC_Acme_Co_695b.pdc'))
    my_string.add_tool(pdc)

    motor = adripy.DrillTool(os.path.join('<adrill_shared>', 'motors.tbl', 'SS_M567833.mot'))
    my_string.add_tool(motor, measure=True)

    stab = adripy.DrillTool(os.path.join('<adrill_shared>', 'stabilizers.tbl', 'SC_lower_stab.sta'))
    my_string.add_tool(stab, measure=True)

    drillpipe = adripy.DrillTool(os.path.join('<adrill_shared>', 'drill_pipes.tbl', 'SC_drillpipe17.pip'))
    my_string.add_tool(drillpipe, measure=False, joints=20, group_name='physical_drillpipe')

    eus = adripy.DrillTool(os.path.join('<adrill_shared>', 'drill_pipes.tbl', 'SC_NC50_5in.pip'))
    my_string.add_tool(eus, measure=False, joints=23, group_name='equivalent_drillpipe' ,equivalent=True)

    top_drive = adripy.DrillTool(os.path.join('<adrill_shared>', 'top_drives.tbl', 'SmoothCurve_TopDrive.tdr'))
    my_string.add_tool(top_drive)

    # ----------------------------------
    # Build a DrillSolverSettings object
    # ----------------------------------
    # Instance the DrillSolverSettings class
    my_solversettings = adripy.DrillSolverSettings('MySolverSettings')

    # ------------------------------------------
    # Create a DrillSim object and build a model
    # ------------------------------------------
    # Instance the DrillSim class
    sim_directory = os.path.join(os.getcwd(), 'drillsim')

    my_drillsim = adripy.DrillSim(my_string, my_event, my_solversettings, sim_directory, 'MyAnalysis')

    # Build Input Deck (adm, acf, cmd files)
    my_drillsim.build()