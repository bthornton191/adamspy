




   *********************************************************************
   *                                                                   *
   *                      MSC Software Corporation                     *
   *                                                                   *
   *                             A d a m s                             *
   *                                                                   *
   *          Automatic Dynamic Analysis of Mechanical Systems         *
   *                                                                   *
   *********************************************************************
   *                                                                   *
   *                         LEGAL INFORMATION                         *
   *                                                                   *
   *  Warning:  This computer  program is protected  by copyright law  *
   *  and  international  treaties.    Unauthorized  reproduction  or  *
   *  distribution  of this  computer program, or any  portion of it,  *
   *  may result in severe civil and criminal penalties.               *
   *                                                                   *
   *  Copyright (C) 2021 MSC Software Corporation  and its licensors.  *
   *                        All rights reserved.                       *
   *                                                                   *
   *  This computer program may contain certain  third-party software  *
   *  that is protected by  copyright and licensed from  MSC Software  *
   *  suppliers.  Portions of this  software are owned by Siemens Pro  *
   *  duct Lifecycle Management, Inc. (C) Copyright 2018.  All Rights  *
   *  Reserved.                                                        *
   *                                                                   *
   *  The MSC Software logo,  MSC,  MSC Adams,  MD Adams, and  Adams   *
   *  are  trademarks  or  registered  trademarks  of  MSC  Software   *
   *  Corporation  or its  subsidiaries in  the United States  and or  *
   *  other  countries.  FLEXlm and FlexNet Publisher are  trademarks  *
   *  or registered trademarks  of  Flexera Software.  Parasolid is a  *
   *  registered trademark  of  Siemens Product Lifecycle Management,  *
   *  Inc.  All other trademarks are the property of their respective  *
   *  owners.                                                          *
   *********************************************************************
   *                                                                   *
   *                      A d a m s   S o l v e r                      *
   *                    (Build: 2021.1.0-CL801488)                     *
   *                                                                   *
   *      Version:                       Adams 2021.1                  *
   *      Customer Entitlement ID:       042718AA-779156FF             *
   *      2022-09-04 20:14:57                                          *
   *                                                                   *
   *********************************************************************
  

OUTFOP:IN_FILENM
     Adams model file .. bearing.adm

OUTFOP:OUT_FILES
  
   Default file names for output files
  
     Tabular output file:
     sim_std.out
  
     Diagnostic file    :
     sim_std.msg
  
     Message Database file    :
     sim_std.mdb
  
     Graphics file      :
     sim_std.gra
  
     Request file       :
     sim_std.req
  
     Results file       :
     sim_std.res
  

INVIEW:READMDL
   Input Phase - Reading in Model
  

INVIEW:MESSAGE91
   ***********************************************************
   Adams Solver dataset Title:
   Adams View model name: bearing
   ***********************************************************

INVIEW:READ_MDL
   Reading of model complete.
  

INBASE:DATABASE
   Input Phase - Populating Solver database
  

DPMOTF:MOT_VEL
   For MOTION model.mot_ir_shaft_spin, internal DIFF/89999998 was created.
  
   Adams creates an internal DIFF statement for each VELOCITY based MOTION
   statement.

INBASE:INP_DONE
   Input Phase Complete.
  

MEKINP:CPUTIME
   CPU time is 3.1250E-02 seconds.

VERINP:END_INPUT
   Input and Input Check Phase complete.

GTMODE:NUMB_DOFS
   The system has 189 kinematic degrees of freedom.

GLGETL:USER_CMND
   SIMULATE/DYNAMIC, END=1.0, STEPS=100

DBANNR:BDF
   Begin the dynamic analysis.
  
   The system is modelled with INDEX-3 DAEs.
   The integrator is GSTIFF, CORRECTOR=original.
   Integration error = 1.0E-03
  

ICCALC:DISPL
   Displacement initial condition analysis...

CODGEN:JAC_STAT
  
   Jacobian Matrix Statistics for the Initial Conditions
   ======================================================
   Number of equations ............. = 243
   Number of non-zero entries ...... = 518
   Percentage of matrix non-zero ... = 0.87724
   Total space used in MD array .... = 282012
  

ICCALC:VELO
   Velocity initial condition analysis...

CODGEN:JAC_STAT
  
   Jacobian Matrix Statistics for the Initial Conditions
   ======================================================
   Number of equations ............. = 243
   Number of non-zero entries ...... = 734
   Percentage of matrix non-zero ... = 1.2430
   Total space used in MD array .... = 284104
  

ICCALC:ACCEL
   Acceleration initial condition analysis...

CODGEN:JAC_STAT
  
   Jacobian Matrix Statistics for the Initial Conditions
   ======================================================
   Number of equations ............. = 1162
   Number of non-zero entries ...... = 9816
   Percentage of matrix non-zero ... = 0.72698
   Total space used in MD array .... = 382486
  

SYMBLU:DISP_VELO
   Generating the Jacobian matrix for the displacements and velocities.

CODGEN:JAC_STAT
  
   Jacobian Matrix Statistics for the Initial Conditions
   ======================================================
   Number of equations ............. = 243
   Number of non-zero entries ...... = 518
   Percentage of matrix non-zero ... = 0.87724
   Total space used in MD array .... = 282202
  

SYMBLU:ACCELRATN
   Generating the Jacobian matrix for the accelerations and forces.

CODGEN:JAC_STAT
  
   Jacobian Matrix Statistics for the Initial Conditions
   ======================================================
   Number of equations ............. = 1162
   Number of non-zero entries ...... = 9816
   Percentage of matrix non-zero ... = 0.72698
   Total space used in MD array .... = 390624
  

SYMBLU:DYNAMICS
   Generating the Jacobian matrix for the dynamics problem.

CODGEN:JAC_STAT
  
   Jacobian Matrix Statistics for a Dynamic Analysis
   ======================================================
   Number of equations ............. = 1486
   Number of non-zero entries ...... = 52324
   Percentage of matrix non-zero ... = 2.3695
   Total space used in MD array .... = 1121910
  
    Simulation         Time         Cumulative    Cumulative     Integrator
       Time            Step         Iterations    Steps Taken      Order
    ___________      ___________    __________    ___________    __________
    0.00000E+00      5.00000E-04           0              0           1
    5.00000E-04      5.00000E-04           2              1           1

ROTAXS:PART
   The reference axes of PART model.ball_1 are being rotated to prevent a singularity
   in the body Euler angles. Theta = 5.27760E-02.  Time = 5.02795E-02.

ROTAXS:PART
   The reference axes of PART model.ball_1 are being rotated to prevent a singularity
   in the body Euler angles. Theta = 5.86310E-02.  Time = 5.95987E-02.

STFINT:RSTRTFAIL

 ---- WARNING ----
   The corrector has not converged after 1 attempts. No. of iterations = 10.
   Note that the corrector may not attempt to take the maximum number of
   iterations on each attempt.   The corrector algorithm stops  if there
   are indications that the solution is diverging.

GTMODE:NUMB_DOFS
   The system has 189 kinematic degrees of freedom.

GSTIFF:RESTART
   At time 6.97474E-02 and step 4783 , Adams is adjusting solver and integrator
   parameters to attempt an integration restart.

ICCALC:DISPL
   Displacement initial condition analysis...

CODGEN:JAC_STAT
  
   Jacobian Matrix Statistics for the Initial Conditions
   ======================================================
   Number of equations ............. = 243
   Number of non-zero entries ...... = 518
   Percentage of matrix non-zero ... = 0.87724
   Total space used in MD array .... = 282014
  

ICCALC:VELO
   Velocity initial condition analysis...

CODGEN:JAC_STAT
  
   Jacobian Matrix Statistics for the Initial Conditions
   ======================================================
   Number of equations ............. = 243
   Number of non-zero entries ...... = 518
   Percentage of matrix non-zero ... = 0.87724
   Total space used in MD array .... = 282014
  

ICCALC:ACCEL
   Acceleration initial condition analysis...

CODGEN:JAC_STAT
  
   Jacobian Matrix Statistics for the Initial Conditions
   ======================================================
   Number of equations ............. = 1162
   Number of non-zero entries ...... = 9816
   Percentage of matrix non-zero ... = 0.72698
   Total space used in MD array .... = 383080
  

SYMBLU:DISP_VELO
   Generating the Jacobian matrix for the displacements and velocities.

CODGEN:JAC_STAT
  
   Jacobian Matrix Statistics for the Initial Conditions
   ======================================================
   Number of equations ............. = 243
   Number of non-zero entries ...... = 518
   Percentage of matrix non-zero ... = 0.87724
   Total space used in MD array .... = 282204
  

SYMBLU:ACCELRATN
   Generating the Jacobian matrix for the accelerations and forces.

CODGEN:JAC_STAT
  
   Jacobian Matrix Statistics for the Initial Conditions
   ======================================================
   Number of equations ............. = 1162
   Number of non-zero entries ...... = 9816
   Percentage of matrix non-zero ... = 0.72698
   Total space used in MD array .... = 391220
  

SYMBLU:DYNAMICS
   Generating the Jacobian matrix for the dynamics problem.

CODGEN:JAC_STAT
  
   Jacobian Matrix Statistics for a Dynamic Analysis
   ======================================================
   Number of equations ............. = 1486
   Number of non-zero entries ...... = 52324
   Percentage of matrix non-zero ... = 2.3695
   Total space used in MD array .... = 1114678
  
    Simulation         Time         Cumulative    Cumulative     Integrator
       Time            Step         Iterations    Steps Taken      Order
    ___________      ___________    __________    ___________    __________
    6.97474E-02      1.00000E-08       26602           4782           1

STFINT:RSTRTFAIL

 ---- WARNING ----
   The corrector has not converged after 1 attempts. No. of iterations = 10.
   Note that the corrector may not attempt to take the maximum number of
   iterations on each attempt.   The corrector algorithm stops  if there
   are indications that the solution is diverging.

GTMODE:NUMB_DOFS
   The system has 189 kinematic degrees of freedom.

GSTIFF:RESTART
   At time 6.97474E-02 and step 4783 , Adams is adjusting solver and integrator
   parameters to attempt an integration restart.

GSTIFF:MOD_CORCT
   At integration time 6.97474E-02 , the simulation is switching to a
   modified corrector algorithm.  The error norm will control integration
   variables only.

GSTIFF:XTP_CORCT
   At integration time 6.97474E-02 , an Aitken formula over 5 previous
   iterations will be used to accelerate the convergence of the corrector.

ICCALC:DISPL
   Displacement initial condition analysis...

CODGEN:JAC_STAT
  
   Jacobian Matrix Statistics for the Initial Conditions
   ======================================================
   Number of equations ............. = 243
   Number of non-zero entries ...... = 518
   Percentage of matrix non-zero ... = 0.87724
   Total space used in MD array .... = 282014
  

ICCALC:VELO
   Velocity initial condition analysis...

CODGEN:JAC_STAT
  
   Jacobian Matrix Statistics for the Initial Conditions
   ======================================================
   Number of equations ............. = 243
   Number of non-zero entries ...... = 518
   Percentage of matrix non-zero ... = 0.87724
   Total space used in MD array .... = 282014
  

ICCALC:ACCEL
   Acceleration initial condition analysis...

CODGEN:JAC_STAT
  
   Jacobian Matrix Statistics for the Initial Conditions
   ======================================================
   Number of equations ............. = 1162
   Number of non-zero entries ...... = 9816
   Percentage of matrix non-zero ... = 0.72698
   Total space used in MD array .... = 383080
  

SYMBLU:DISP_VELO
   Generating the Jacobian matrix for the displacements and velocities.

CODGEN:JAC_STAT
  
   Jacobian Matrix Statistics for the Initial Conditions
   ======================================================
   Number of equations ............. = 243
   Number of non-zero entries ...... = 518
   Percentage of matrix non-zero ... = 0.87724
   Total space used in MD array .... = 282204
  

SYMBLU:ACCELRATN
   Generating the Jacobian matrix for the accelerations and forces.

CODGEN:JAC_STAT
  
   Jacobian Matrix Statistics for the Initial Conditions
   ======================================================
   Number of equations ............. = 1162
   Number of non-zero entries ...... = 9816
   Percentage of matrix non-zero ... = 0.72698
   Total space used in MD array .... = 391220
  

SYMBLU:DYNAMICS
   Generating the Jacobian matrix for the dynamics problem.

CODGEN:JAC_STAT
  
   Jacobian Matrix Statistics for a Dynamic Analysis
   ======================================================
   Number of equations ............. = 1486
   Number of non-zero entries ...... = 52324
   Percentage of matrix non-zero ... = 2.3695
   Total space used in MD array .... = 1114678
  
    Simulation         Time         Cumulative    Cumulative     Integrator
       Time            Step         Iterations    Steps Taken      Order
    ___________      ___________    __________    ___________    __________
    6.97474E-02      1.00000E-08       26613           4782           1

STFINT:RSTRTFAIL

 ---- WARNING ----
   The corrector has not converged after 1 attempts. No. of iterations = 20.
   Note that the corrector may not attempt to take the maximum number of
   iterations on each attempt.   The corrector algorithm stops  if there
   are indications that the solution is diverging.

GTMODE:NUMB_DOFS
   The system has 189 kinematic degrees of freedom.

KFMESG:FATCORFAI

 ---- ERROR ----
   The simulation stopped at time = 6.97474E-02 .  Adams cannot solve
   the equations of motion.
  
   The greatest error in an equation is 6708.4 in the
   equation for GFORCE model.GFO_ball_26_OR_negative .
  
   The greatest change in a variable is 3.30696E-08 in the
   variable for PART model.ball_26 .
  
   Try the following in this order:
       1.  Use the MAXIT argument on the EQUILIBRIUM, IC, KINEMATICS,
           or INTEGRATOR command to increase the maximum number of
           iterations.
       2.  Temporarily change the value of the PATTERN argument on the
           EQUILIBRIUM, IC, KINEMATICS, or INTEGRATOR command to
           PATTERN = T.
       3.  Temporarily increase the value of the ERROR argument on the
           EQUILIBRIUM, IC, KINEMATICS, or INTEGRATOR command at
           time = 6.97474E-02 .
       4.  If one or more forces change rapidly or sharply near
           time = 6.97474E-02, modify the force or forces.
  
  
   Do the following to ensure that the number of iterations are
   sufficiently large for the Newton-Raphson solver to converge:
       1.  If you did not have DEBUG/EPRINT in your data set, add the
           DEBUG statement with the EPRINT argument and rerun your data
           set.
       2.  Check the EPRINT information at the end of the message file.
       3.  If both error numbers are below 1.0 and decreasing, increase
           the value of the MAXIT argument on the EQUILIBRIUM, IC,
           KINEMATICS, or INTEGRATOR command.
       4.  Rerun your data set.
  
   If the corrector still fails, do the following to force Adams to
   update the Jacobian matrix more frequently:
       1.  Check the error numbers on lines with NEW JAC set to YES.
       2.  If these numbers decrease significantly after a new Jacobian,
           change the value of the PATTERN argument on the KINEMATIC,
           EQUILIBRIUM, or IC command to PATTERN = T at time = 6.97474E-02.
       3.  Rerun your data set.
  
   If the corrector still fails, temporarily increase the error
   tolerance by doing the following:
       1.  Issue a SIMULATE command to run until time = 6.97474E-02 .
       2.  Increase the value of the ERROR argument on the INTEGRATOR
           command.
       3.  Issue a second SIMULATE command to run until a time shortly
           after time = 6.97474E-02 .
       4.  Decrease the value of the ERROR argument on the INTEGRATOR
           command to the value you prefer.
       5.  Issue a third SIMULATE command to run until the end of the
           simulation.
   The five steps in the above procedure will allow you to complete the
   simulation although the results in the vicinity of time = 6.97474E-02
   may be less accurate than at other times during the simulation.
   The ERROR argument on the INTEGRATOR command determines the
   convergence criterion for the corrector as well as the tolerance for
   the integration error.
  
   If the corrector still fails, it probably means that this variable is
   changing too rapidly or sharply.  Do the following:
       1.  Add the statement
              MREQ/id, FORCE, APPFOR = ALL
           to your data set.
       2.  If your data set does not already have it, add the statement
           OUTPUT/REQSAVE
       3.  Rerun the your data set.
       4.  Read the request file into an Adams postprocessor.
       5.  Plot the magnitudes of the forces versus simulation time.
       6.  If one or more forces change rapidly or sharply near
           time = 6.97474E-02, modify the force or forces.

ALVSIM:STATUS
   Simulate status=-124

GLGETL:USER_CMND
   STOP

A3TERM:STATUS
   Termination status=0

TERM0:EXE_TERM
  
      Adams Solver execution terminated by subprogram A3TERM
  

TERM0:CP_TIME
   CPU time used = 66.734 seconds
