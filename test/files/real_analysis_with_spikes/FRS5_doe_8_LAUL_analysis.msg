
-------------------------------------------------------------------------------
|        ..          ..                                                       |
|       ####*.      ####.                                                     |
|         `###*.       `#.              MSC Software                          |
|            `###.       #.             ------------                          |
|               `##.     ##                                                   |
|                 `##.   ##                                                   |
|                   `## ##'             A d a m s   C++   S o l v e r         |
|                     ####              Build:   2019.0.0-CL639814            |
|                     ###.              Version: Adams 2019                   |
|                    ###`#.                                                   |
|                  .###  `#                                                   |
|                 ####    `#                                                  |
|                ####      #.                                                 |
|              #####       `#           http://www.mscsoftware.com            |
|            .#####                                                           |
|           #####'                                                            |
|           ####                                                              |
|                                                                             |
|    *********************************************************************    |
|    *                                                                   *    |
|    *                      MSC Software Corporation                     *    |
|    *                                                                   *    |
|    *                             A d a m s                             *    |
|    *                                                                   *    |
|    *          Automatic Dynamic Analysis of Mechanical Systems         *    |
|    *                                                                   *    |
|    *********************************************************************    |
|    *                                                                   *    |
|    *                         LEGAL INFORMATION                         *    |
|    *                                                                   *    |
|    *  Warning:  This computer  program is protected  by copyright law  *    |
|    *  and  international  treaties.    Unauthorized  reproduction  or  *    |
|    *  distribution  of this  computer program, or any  portion of it,  *    |
|    *  may result in severe civil and criminal penalties.               *    |
|    *                                                                   *    |
|    *  Copyright (C) 2019 MSC Software Corporation and  its licensors.  *    |
|    *                        All rights reserved.                       *    |
|    *                                                                   *    |
|    *********************************************************************    |
|                                                                             |
|-----------------------------------------------------------------------------|
|                                                                             |
|    *********************************************************************    |
|    *                                                                   *    |
|    *   Local Time: 2020-12-18 16:09:34                                 *    |
|    *    Host Name: NA-TR-2XSJ0N2                                       *    |
|    *        Uname: MS Windows NT                                       *    |
|    *      OS Info: 6.2                                                 *    |
|    *         User: Training                                            *    |
|    *  Customer ID: 66feea60-G10DA133                                   *    |
|    *  Current dir: Z:\doe_20201215\FRS5\doe_8_LAUL                     *    |
|    *   Process ID: 8868                                                *    |
|    *                                                                   *    |
|    *********************************************************************    |
|                                                                             |
-------------------------------------------------------------------------------

 command: FILE/COMMAND=FRS5_doe_8_LAUL_analysis.acf
 command: 
 command: file/model=FRS5_doe_8_LAUL_analysis

---- START: WARNING ----
The markers for model.CrimpU1 are not initially coincident.
The relative displacement between the markers, expressed in the
J marker coordinate frame is:
Delta X =  -0.0996   Delta Y =  -0.0001  Delta Z =  -0.0161.

---- END: WARNING ----

---- START: WARNING ----
The markers for model.CrimpU2 are not initially coincident.
The relative displacement between the markers, expressed in the
J marker coordinate frame is:
Delta X =  -0.2834   Delta Y =  -0.2785  Delta Z =  -0.0161.

---- END: WARNING ----

---- START: WARNING ----
The markers for model.CrimpU3 are not initially coincident.
The relative displacement between the markers, expressed in the
J marker coordinate frame is:
Delta X =  -0.1800   Delta Y =  -0.5047  Delta Z =  -0.0161.

---- END: WARNING ----

---- START: WARNING ----
The markers for model.CrimpU4 are not initially coincident.
The relative displacement between the markers, expressed in the
J marker coordinate frame is:
Delta X =  -0.1958   Delta Y =  -0.5071  Delta Z =  -0.0161.

---- END: WARNING ----

---- START: WARNING ----
The markers for model.CrimpU5 are not initially coincident.
The relative displacement between the markers, expressed in the
J marker coordinate frame is:
Delta X =  -0.1958   Delta Y =  -0.5071  Delta Z =  -0.0161.

---- END: WARNING ----

---- START: WARNING ----
The I marker of model.TrailPlaneU1 is not in the
x-y plane of the J marker. The relative displacement along
the z-axis of the J marker is: Delta Z =  -0.0028.

---- END: WARNING ----

---- START: WARNING ----
The I marker of model.TrailPlaneU2 is not in the
x-y plane of the J marker. The relative displacement along
the z-axis of the J marker is: Delta Z =   0.0030.

---- END: WARNING ----

---- START: WARNING ----
The I marker of model.TrailPlaneU3 is not in the
x-y plane of the J marker. The relative displacement along
the z-axis of the J marker is: Delta Z =   0.0086.

---- END: WARNING ----

---- START: WARNING ----
The I marker of model.TrailPlaneU4 is not in the
x-y plane of the J marker. The relative displacement along
the z-axis of the J marker is: Delta Z =  -0.0044.

---- END: WARNING ----

---- START: WARNING ----
The I marker of model.TrailPlaneU5 is not in the
x-y plane of the J marker. The relative displacement along
the z-axis of the J marker is: Delta Z =  -0.0044.

---- END: WARNING ----

-------------------------------------------------------------------------------
|                                 Model Title                                 |
|=============================================================================|
|                                                                             |
|                   Adams View model name: FRS5_doe_8_LAUL                    |
|                                                                             |
-------------------------------------------------------------------------------

 command: accg/kgrav=0
 command: ENVIRONMENT/NAME=MDI_ADAMS_CONTACT_OUT, VALUE=off

  User-environment variable
  MDI_ADAMS_CONTACT_OUT=off
  Enforces Adams Solver (C++) to controls the export of intermediate contact events in data for a contact model.
  Options are ON, OFF.

 command: equil/stab=10, err=10, imb=10, tlim=2, alim=2D, maxit=1000
 command: sim/stat


  Begin Static Solution


 STATICS: Original static solver will be used with the Sparse linear solver.

  Static Solution converged in 63 iterations
  Residual imbalance is less than 4.64042E-01

  End Static Solution
 command: equil/stab=10, err=1, imb=1, tlim=2, alim=2D, maxit=500
 command: sim/stat


  Begin Static Solution


 STATICS: Original static solver will be used with the Sparse linear solver.

  Static Solution converged in 11 iterations
  Residual imbalance is less than 1.62324E-01

  End Static Solution
 command: equil/stab=1, err=1, imb=1, tlim=2, alim=2D, maxit=500
 command: sim/stat


  Begin Static Solution


 STATICS: Original static solver will be used with the Sparse linear solver.

  Static Solution converged in 11 iterations
  Residual imbalance is less than 2.64828E-03

  End Static Solution
 command: !
 command: VARIABLE/1001, FUNC= -step5(time,0,0,2,20*PI)
 command: int/hht, err=1E-7, hmax=2.5E-4, INTERPOLATE=on
 command: sim/dyn, end=1.5, dtout=.005


  Begin Simulation

  ****** Performing Dynamic Simulation using HHT I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is HHT, CORRECTOR = modified
   Integration error =    1.000000E-07

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   0.00000E+00  1.25000E-05            0            0       1           11.97 
   1.50000E-01  2.50000E-04         1321          638       2           19.47 
   3.00000E-01  2.50000E-04         2530         1238       2           26.50 
   4.50000E-01  2.50000E-04         3802         1839       2           33.77 
   6.00000E-01  2.50000E-04         5089         2447       2           41.62 
   7.50000E-01  2.50000E-04         6312         3047       2           49.12 
   9.00000E-01  2.40689E-04         8469         3729       2            1:00 
   1.05000E+00  2.22686E-04        11046         4483       2            1:14 
   1.20000E+00  2.50000E-04        12564         5136       2            1:24 
   1.35000E+00  8.81661E-05        14132         5787       2            1:35 
   1.50000E+00  3.10730E-05        28955         9040       2            3:09 

  End Simulation
 command: sim/dyn, end=2.0, dtout=.005


  Begin Simulation

  ****** Performing Dynamic Simulation using HHT I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is HHT, CORRECTOR = modified
   Integration error =    1.000000E-07

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   1.50000E+00  3.10730E-05        28955         9040       2            3:09 
Sensor/1000 has become active at time = 1.543154.
Current sensed value = 5.049530e+00.
   Triggered action RETURN.

---- START: WARNING ----
model.UprStopHit halting simulation at time 1.543154e+00

---- END: WARNING ----
   Triggered action EVALUATE=TIME.

  Dynamic Solution stopped.


  End Simulation
 command: !
 command: deactivate/sensor, ID=1000
   Deactivated model.UprStopHit, SENVAL value will be zero in function-expression references.
 command: !deactivate/contact, ID=57
 command: ! load upper input shaft rotation
 command: VARIABLE/1001, FUNC= -step5(SENVAL(1000),0,0,2,20*PI)
 command: ! sin-up input shaft rotation
 command: VARIABLE/1002, func=0
 command: ! move the feed selector to the lower position, throw=16mm
 command: MOTION/4, FUNC = -16+STEP5(time,1.9,0,2,16)
 command: !
 command: sim/dyn, end=2.0, dtout=.005


  Begin Simulation

  ****** Performing Dynamic Simulation using HHT I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is HHT, CORRECTOR = modified
   Integration error =    1.000000E-07

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   1.54315E+00  1.25000E-05            0            0       1            4:39 
   1.58815E+00  1.09432E-05        13708         3138       2            6:19 
   1.63315E+00  1.46869E-05        29005         6487       2            8:11 
   1.67815E+00  1.30058E-05        43345         9691       2            9:59 
   1.72315E+00  1.18174E-05        57327        12843       2           11:38 
   1.76815E+00  1.31862E-05        73081        16271       2           13:38 
   1.81315E+00  1.56364E-05        86952        19419       2           15:12 
   1.85815E+00  1.70568E-05       102331        22772       2           17:00 
   1.90315E+00  1.71440E-05       116876        26024       2           18:48 
   1.94815E+00  3.09244E-05       131147        29215       2           20:21 
   1.99315E+00  1.59980E-05       147013        32649       2           22:20 
   2.00000E+00  9.30893E-06       149457        33171       2           22:38 
   2.00000E+00  1.41044E-05       149436        33168       2           22:38 

  End Simulation
 command: !
 command: VARIABLE/1001, FUNC= -step5(SENVAL(1000),0,0,2,20*PI) &
 command:  -STEP5(TIME,2.0,0,4,20*PI)
 command: sim/dyn, end=3.5, dtout=.005


  Begin Simulation

  ****** Performing Dynamic Simulation using HHT I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is HHT, CORRECTOR = modified
   Integration error =    1.000000E-07

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   2.00000E+00  1.25000E-05            0            0       1           22:38 
   2.15000E+00  1.27714E-05        50315        11024       2           28:43 
   2.30000E+00  1.06136E-05       101032        22077       2           35:02 
   2.45000E+00  1.60259E-05       151573        33178       2           41:40 
   2.60000E+00  1.28889E-05       203412        44370       2           48:15 
   2.75000E+00  1.13710E-05       256473        55658       2           55:11 
   2.90000E+00  2.75503E-05       311617        67001       2         1:03:01 
   3.05000E+00  1.69139E-05       363332        77446       2         1:10:31 
   3.20000E+00  2.50000E-04       385030        81551       2         1:13:35 
   3.35000E+00  2.50000E-04       386345        82153       2         1:13:51 
Sensor/2001 has become active at time = 3.468145.
Current sensed value = 1.302148e+01.
   Triggered action RETURN.

---- START: WARNING ----
model.LwrStopHit halting simulation at time 3.468145e+00

---- END: WARNING ----
   Triggered action EVALUATE=TIME.

  Dynamic Solution stopped.


  End Simulation
 command: sim/dyn, end=4.0, dtout=.005


  Begin Simulation

  ****** Performing Dynamic Simulation using HHT I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is HHT, CORRECTOR = modified
   Integration error =    1.000000E-07

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   3.46814E+00  4.00000E-07       387628        82623       2         1:13:51 
Sensor/2001 has become active at time = 3.468150.
Current sensed value = 6.301421e+02.
   Triggered action RETURN.

---- START: WARNING ----
model.LwrStopHit halting simulation at time 3.468150e+00

---- END: WARNING ----
   Triggered action EVALUATE=TIME.

  Dynamic Solution stopped.


  End Simulation
 command: !
 command: deactivate/sensor, ID=2001
   Deactivated model.LwrStopHit, SENVAL value will be zero in function-expression references.
 command: !deactivate/contact, ID=58
 command: !  upper + lower input shaft load rotation
 command: VARIABLE/1001, FUNC= -step5(SENVAL(1000),0,0,2,20*PI) &
 command:  -STEP5(SENVAL(2001),2.0,0,4,20*PI)
 command: !
 command: !
 command: ! CONTINUE on lower side => no change to feed selector
 command: !                           deactivate the lower stop
 command: sim/dyn, end=4.0, dtout=.005


  Begin Simulation

  ****** Performing Dynamic Simulation using HHT I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is HHT, CORRECTOR = modified
   Integration error =    1.000000E-07

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   3.46815E+00  1.25000E-05            0            0       1         1:14:04 
   3.51815E+00  1.98963E-04          778          326       2         1:14:12 
   3.56815E+00  2.50000E-04         1281          536       2         1:14:17 
   3.61815E+00  2.50000E-04         1776          761       2         1:14:23 
   3.66815E+00  2.50000E-04         2186          961       2         1:14:27 
   3.71815E+00  2.50000E-04         2623         1174       2         1:14:32 
   3.76815E+00  2.50000E-04         3113         1405       2         1:14:38 
   3.81815E+00  2.50000E-04         3538         1612       2         1:14:43 
   3.86815E+00  2.50000E-04         3950         1812       2         1:14:48 
   3.91815E+00  2.50000E-04         4552         2025       2         1:14:53 
   3.96815E+00  2.36479E-04         5096         2267       2         1:14:59 
   4.00000E+00  2.29830E-04         5468         2397       2         1:15:03 
   4.00000E+00  2.50000E-04         5462         2397       2         1:15:03 

  End Simulation
 command: deactivate/contact, ID=58
   Deactivated model.LwrStopTouch, force/torque values will be zero in function-expression references.
 command: ! OR
 command: ! switch back to upper side => move the feed selector
 command: !                           deactivate the upper stop
 command: !deactivate/contact, ID=57
 command: !MOTION/4, FUNC = STEP5(time,3.9,0,4,-16)
 command: !sim/dyn, end=4.0, dtout=.005
 command: !
 command: !  SpinUp to 200 rounds/minute over 0.1 secs!
 command: VARIABLE/1002, FUNCTION = IF(TIME-4.0: 0, 0, &
 command:  -PI*IF((TIME-4.0-.1):-3E4*(TIME-4.0)**4 + &
 command:   6E3*(TIME-4.0)**3, 3, 3+60*(TIME-4.0-.1)))
 command: !
 command: sim/dyn, dur=.5, dtout=.001


  Begin Simulation

  ****** Performing Dynamic Simulation using HHT I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is HHT, CORRECTOR = modified
   Integration error =    1.000000E-07

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   4.00000E+00  1.25000E-05            0            0       1         1:15:03 
   4.05000E+00  2.30348E-04          830          280       2         1:15:12 
   4.10000E+00  1.04533E-04         6110         1567       2         1:15:57 
   4.15000E+00  1.41648E-05        21626         4835       2         1:17:49 
   4.20000E+00  1.73460E-05        35312         7904       2         1:19:46 
   4.25000E+00  6.71546E-05        45805        10160       2         1:21:11 
   4.30000E+00  1.05234E-04        49531        11033       2         1:21:44 
   4.35000E+00  1.02489E-04        50627        11462       2         1:21:56 
   4.40000E+00  6.97053E-05        56471        12925       2         1:22:45 
   4.45000E+00  1.33173E-05        69837        15846       2         1:24:24 
   4.50000E+00  4.07123E-05        82264        18631       2         1:26:14 

  End Simulation
 command: sim/dyn, dur=.5, dtout=.001


  Begin Simulation

  ****** Performing Dynamic Simulation using HHT I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is HHT, CORRECTOR = modified
   Integration error =    1.000000E-07

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   4.50000E+00  4.07123E-05        82264        18631       2         1:26:14 
   4.55000E+00  6.32292E-05        92963        20956       2         1:27:46 
   4.60000E+00  8.14439E-05        96572        21937       2         1:28:18 
   4.65000E+00  1.20940E-04        98014        22467       2         1:28:33 
   4.70000E+00  1.33667E-04       102122        23527       2         1:29:07 
   4.75000E+00  1.10491E-05       116511        26615       2         1:30:52 
   4.80000E+00  1.40957E-05       130931        29952       2         1:32:54 
   4.85000E+00  2.46717E-05       141350        32213       2         1:34:22 
   4.90000E+00  9.47081E-05       145822        33305       2         1:34:59 
   4.95000E+00  7.99612E-05       147184        33815       2         1:35:13 
   5.00000E+00  1.37227E-05       151461        34893       2         1:35:47 

  End Simulation
 command: sim/dyn, dur=.5, dtout=.001


  Begin Simulation

  ****** Performing Dynamic Simulation using HHT I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is HHT, CORRECTOR = modified
   Integration error =    1.000000E-07

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   5.00000E+00  1.37227E-05       151461        34893       2         1:35:47 
   5.05000E+00  2.29717E-05       163714        37458       2         1:37:11 
   5.10000E+00  1.32228E-05       178621        40774       2         1:39:06 
   5.15000E+00  4.64365E-05       187867        42777       2         1:40:13 
   5.20000E+00  7.81586E-05       191951        43819       2         1:40:45 
   5.25000E+00  7.49294E-05       193577        44427       2         1:40:59 
   5.30000E+00  1.84691E-05       198297        45675       2         1:41:29 
   5.35000E+00  1.01267E-04       213856        49078       2         1:43:01 
   5.40000E+00  4.26172E-05       229889        52636       2         1:44:45 
   5.45000E+00  1.12051E-05       240079        54995       2         1:45:49 
   5.50000E+00  2.18798E-05       251194        57483       2         1:46:57 

  End Simulation
 command: stop


Finished -----
Elapsed time = 6515.88s,  CPU time = 6417.39s,  98.49%

