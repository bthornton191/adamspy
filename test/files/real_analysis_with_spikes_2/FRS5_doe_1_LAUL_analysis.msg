
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
|    *   Local Time: 2020-12-18 13:55:58                                 *    |
|    *    Host Name: NA-TR-5TYG0N2                                       *    |
|    *        Uname: MS Windows NT                                       *    |
|    *      OS Info: 6.2                                                 *    |
|    *         User: Training                                            *    |
|    *  Customer ID: 66fee1a5-G94F7391                                   *    |
|    *  Current dir: Z:\doe_20201215\FRS5\doe_1_LAUL                     *    |
|    *   Process ID: 6252                                                *    |
|    *                                                                   *    |
|    *********************************************************************    |
|                                                                             |
-------------------------------------------------------------------------------

 command: FILE/COMMAND=FRS5_doe_1_LAUL_analysis.acf
 command: 
 command: file/model=FRS5_doe_1_LAUL_analysis

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
|                   Adams View model name: FRS5_doe_1_LAUL                    |
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

  Static Solution converged in 53 iterations
  Residual imbalance is less than 1.13848E+00

  End Static Solution
 command: equil/stab=10, err=1, imb=1, tlim=2, alim=2D, maxit=500
 command: sim/stat


  Begin Static Solution


 STATICS: Original static solver will be used with the Sparse linear solver.

  Static Solution converged in 20 iterations
  Residual imbalance is less than 8.40863E-03

  End Static Solution
 command: equil/stab=1, err=1, imb=1, tlim=2, alim=2D, maxit=500
 command: sim/stat


  Begin Static Solution


 STATICS: Original static solver will be used with the Sparse linear solver.

  Static Solution converged in 7 iterations
  Residual imbalance is less than 7.68692E-01

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
   0.00000E+00  1.25000E-05            0            0       1           14.14 
   1.50000E-01  2.50000E-04         1371          645       2           24.55 
   3.00000E-01  2.50000E-04         2578         1245       2           34.17 
   4.50000E-01  2.50000E-04         3807         1845       2           43.97 
   6.00000E-01  2.50000E-04         5656         2452       2           55.59 
   7.50000E-01  2.50000E-04         6868         3052       2            1:05 
   9.00000E-01  2.50000E-04         9231         3759       2            1:23 
   1.05000E+00  2.33692E-04        11660         4512       2            1:41 
   1.20000E+00  2.50000E-04        13369         5194       2            1:55 
   1.35000E+00  1.14658E-05        31301         8786       2            5:01 
   1.50000E+00  1.49206E-05        64781        16301       2           11:47 

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
   1.50000E+00  1.49206E-05        64781        16301       2           11:47 
   1.55000E+00  1.20170E-05        76022        18860       2           14:01 
Sensor/1000 has become active at time = 1.552119.
Current sensed value = 4.211559e+01.
   Triggered action RETURN.

---- START: WARNING ----
model.UprStopHit halting simulation at time 1.552119e+00

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
   1.55212E+00  1.25000E-05            0            0       1           14:08 
   1.59712E+00  1.20729E-05         9963         2326       2           15:34 
   1.64212E+00  1.77858E-05        22786         5293       2           17:28 
   1.68712E+00  1.53592E-05        30370         7137       2           18:29 
   1.73212E+00  2.75440E-05        45306        10589       2           20:37 
   1.77712E+00  1.09896E-05        51803        12091       2           21:34 
   1.82212E+00  1.04167E-04        64141        15058       2           23:26 
   1.86712E+00  4.05209E-05        77565        18219       2           25:24 
   1.91212E+00  1.07312E-05        86765        20417       2           26:45 
   1.95712E+00  2.50000E-04        97357        22771       2           28:10 
   2.00000E+00  2.37755E-04       107853        25154       2           29:41 

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
   2.00000E+00  1.25000E-05            0            0       1           29:41 
   2.15000E+00  4.63571E-05        34688         8081       2           34:13 
   2.30000E+00  1.18391E-05        71393        16236       2           39:01 
   2.45000E+00  2.49723E-04        98343        21643       2           42:36 
   2.60000E+00  2.50000E-04        99890        22281       2           42:53 
   2.75000E+00  2.10279E-04       101716        23011       2           43:15 
   2.90000E+00  2.28113E-04       104187        23754       2           43:40 
   3.05000E+00  1.91421E-04       106932        24564       2           44:11 
   3.20000E+00  4.82745E-05       111161        25968       2           45:02 
   3.35000E+00  1.91865E-04       115235        27348       2           45:51 
Sensor/2001 has become active at time = 3.438604.
Current sensed value = 1.215209e+03.
   Triggered action RETURN.

---- START: WARNING ----
model.LwrStopHit halting simulation at time 3.438604e+00

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
   3.43860E+00  2.56357E-05       116133        27724       2           45:51 
Sensor/2001 has become active at time = 3.438684.
Current sensed value = 1.304741e+02.
   Triggered action RETURN.

---- START: WARNING ----
model.LwrStopHit halting simulation at time 3.438684e+00

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
   3.43868E+00  1.25000E-05            0            0       1           46:09 
   3.49368E+00  1.14139E-04         2154          685       2           46:28 
   3.54868E+00  1.27157E-04         3391         1157       2           46:40 
   3.60368E+00  2.04956E-04         4437         1558       2           46:51 
   3.65868E+00  2.50000E-04         5084         1856       2           46:58 
   3.71368E+00  2.50000E-04         5600         2085       2           47:03 
   3.76868E+00  2.12646E-04         6287         2337       2           47:09 
   3.82368E+00  2.50000E-04         7016         2621       2           47:17 
   3.87868E+00  1.40978E-04         7740         2910       2           47:24 
   3.93368E+00  2.50000E-04         8279         3161       2           47:30 
   3.98868E+00  2.08971E-04         8786         3390       2           47:35 
   4.00000E+00  2.05414E-04         8924         3445       2           47:37 
   4.00000E+00  2.25022E-04         8920         3445       2           47:37 

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
   4.00000E+00  1.25000E-05            0            0       1           47:37 
   4.05000E+00  2.48933E-04          766          277       2           47:45 
   4.10000E+00  8.14843E-06        14500         2993       2           49:24 
   4.15000E+00  5.12519E-05        33710         6959       2           51:49 
   4.20000E+00  1.02110E-04        40022         8287       2           52:43 
   4.25000E+00  8.98072E-05        42618         8902       2           53:07 
   4.30000E+00  6.82128E-05        45207         9666       2           53:31 
   4.35000E+00  9.03118E-05        47442        10367       2           53:52 
   4.40000E+00  7.95961E-06        63136        13506       2           55:40 
   4.45000E+00  1.41926E-05        83265        17580       2           57:58 
   4.50000E+00  7.20345E-05        89675        18923       2           58:49 

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
   4.50000E+00  7.20345E-05        89675        18923       2           58:49 
   4.55000E+00  3.34736E-05        92001        19493       2           59:09 
   4.60000E+00  4.41679E-05        94479        20220       2           59:31 
   4.65000E+00  9.68506E-05        96838        20856       2           59:50 
   4.70000E+00  1.39969E-05       109410        23487       2         1:01:13 
   4.75000E+00  8.13692E-05       119838        25491       2         1:02:13 
   4.80000E+00  1.37843E-04       126272        26757       2         1:02:52 
   4.85000E+00  1.39828E-04       128646        27245       2         1:03:09 
   4.90000E+00  1.06727E-04       131219        27945       2         1:03:30 
   4.95000E+00  5.75632E-05       133235        28505       2         1:03:45 
   5.00000E+00  1.07964E-05       146330        31273       2         1:05:11 

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
   5.00000E+00  1.07964E-05       146330        31273       2         1:05:11 
   5.05000E+00  2.43653E-05       169277        35645       2         1:07:52 
   5.10000E+00  9.51040E-05       176494        37120       2         1:08:49 
   5.15000E+00  1.46263E-04       178767        37595       2         1:09:07 
   5.20000E+00  1.87704E-04       181568        38333       2         1:09:27 
   5.25000E+00  2.45345E-04       182638        38690       2         1:09:35 
   5.30000E+00  2.31337E-05       194161        40848       2         1:10:43 
   5.35000E+00  1.17805E-04       210486        43836       2         1:12:18 
   5.40000E+00  1.68910E-05       222489        46478       2         1:13:32 
   5.45000E+00  1.06150E-04       232256        48810       2         1:14:28 
   5.50000E+00  1.50979E-04       244400        51601       2         1:15:31 

  End Simulation
 command: stop


Finished -----
Elapsed time = 4648.09s,  CPU time = 4531.77s,  97.50%

