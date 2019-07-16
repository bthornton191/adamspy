
-------------------------------------------------------------------------------
|        ..          ..                                                       |
|       ####*.      ####.                                                     |
|         `###*.       `#.              MSC Software                          |
|            `###.       #.             ------------                          |
|               `##.     ##                                                   |
|                 `##.   ##                                                   |
|                   `## ##'             A d a m s   C++   S o l v e r         |
|                     ####              Build:   2019.2.0-CL661333            |
|                     ###.              Version: Adams 2019.2                 |
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
|    *   Local Time: 2019-07-16 12:59:07                                 *    |
|    *    Host Name: L010582-2                                           *    |
|    *        Uname: MS Windows NT                                       *    |
|    *      OS Info: 6.2                                                 *    |
|    *         User: bthornt                                             *    |
|    *  Customer ID: c8591feb-GFD942CA                                   *    |
|    *  Current dir: C:\Users\bthornt\Code\adamspy\test\files            *    |
|    *   Process ID: 3088                                                *    |
|    *                                                                   *    |
|    *********************************************************************    |
|                                                                             |
-------------------------------------------------------------------------------

 command: FILE/COMMAND=C:\Users\bthornt\Code\adamspy\test\files\test_analysis_1.acf
 command: 
 command: file/model=test_analysis_1
The number of parallel threads has been set to 4.


 *** Spline setup complete. Hole arc length =   2287.40

  Creating new Sensor in service of discrete GSE/990 to manage its sampling time.
  The name of this Sensor is set to (GSE/990)/Sensor/1.
  (This Sensor is custom created and it is not to be found in the database.)

 *** Calling FindBit--

 *** List of slider CM offsets complete., nCM=   44

 *** List of Fixed joint J offsets complete., nJ=   21

 *** DGSE update rate modified.

---- START: WARNING ----
DIFF/9000304 is equivalent to a VARIABLE definition - It is IMPLICIT and the function
expression does not depend on its derivative. This DIFF will not contribute with 
an independent state for linearization.
---- END: WARNING ----


-------------------------------------------------------------------------------
|                                 Model Title                                 |
|=============================================================================|
|                                                                             |
|                   Adams View model name: test_analysis_1                    |
|                                                                             |
-------------------------------------------------------------------------------

 command: !
 command: ! Integrator Settings:
 command: INTEGRATOR/ &
 command: , HHT &
 command: , ERROR = 1.0E-05
 command: !
 command: ! Command String Speed:
 command: ! Note: Factors of PI/30 used to convert from RPM 
 command: ! commands to internal modeling units of rad/sec
 command: VARIABLE/9105 &
 command: , FUNCTION=STEP(TIME,15.0,0.0,15.0+15.0,60.0*PI/30)
 command: !
 command: ! Motor GPM:
 command: VARIABLE/1102 &
 command: , FUNCTION=VARVAL(11021) * &
 command: , (STEP(TIME,0.0,0.0,0.0+15.0,500.0))
 command: !
 command: ! Command WOB:
 command: ! Note: Unit of weight is lbf 
 command: VARIABLE/9106 &
 command: , FUNCTION=STEP(TIME,30.0,0,30.0+15.0,50.0)
 command: !
 command: ! Command ROP:
 command: ! Note: Factors of 1/3600 used to convert from ft/hr 
 command: ! commands to internal modeling units of ft/sec
 command: VARIABLE/9104 &
 command: , FUNCTION=STEP(TIME,30.0,0,30.0+15.0,100.0/3600)
 command: !
 command: !
 command: equil/maxit=500, stab=0.1, error=0.1, imbal=0.1, tlim=1.0, alim=2.0D
 command: sim/stat


  Begin Static Solution


 STATICS: Original static solver will be used with the Sparse linear solver.

  Static Solution converged in 41 iterations
  Residual imbalance is less than 3.65312E-08

  End Static Solution
 command: equil/maxit=500, stab=5.0, error=1.0, imbal=1.0, tlim=0.5, alim=1.0D
 command: sim/stat


  Begin Static Solution


 STATICS: Original static solver will be used with the Sparse linear solver.

  Static Solution converged in 1 iterations
  Residual imbalance is less than 5.79013E-04

  End Static Solution
 command: equil/maxit=51, stab=0.5, error=0.3, imbal=0.3, tlim=0.5, alim=1.0D
 command: sim/stat


  Begin Static Solution


 STATICS: Original static solver will be used with the Sparse linear solver.

  Static Solution converged in 1 iterations
  Residual imbalance is less than 1.92942E-04

  End Static Solution
 command: equil/maxit=52, stab=0.5, error=0.3, imbal=0.2, tlim=0.5, alim=1.0D
 command: sim/stat


  Begin Static Solution


 STATICS: Original static solver will be used with the Sparse linear solver.

  Static Solution converged in 1 iterations
  Residual imbalance is less than 9.18574E-06

  End Static Solution
 command: equil/maxit=53, stab=0.5, error=0.2, imbal=0.2, tlim=0.5, alim=1.0D
 command: sim/stat


  Begin Static Solution


 STATICS: Original static solver will be used with the Sparse linear solver.

  Static Solution converged in 1 iterations
  Residual imbalance is less than 4.34690E-07

  End Static Solution
 command: equil/maxit=54, stab=0.5, error=0.2, imbal=0.1, tlim=0.5, alim=1.0D
 command: sim/stat


  Begin Static Solution


 STATICS: Original static solver will be used with the Sparse linear solver.

  Static Solution converged in 1 iterations
  Residual imbalance is less than 1.91061E-08

  End Static Solution
 command: equil/maxit=55, stab=0.5, error=0.1, imbal=0.1, tlim=0.5, alim=1.0D
 command: sim/stat


  Begin Static Solution


 STATICS: Original static solver will be used with the Sparse linear solver.

  Static Solution converged in 1 iterations
  Residual imbalance is less than 9.53124E-09

  End Static Solution
 command: equil/maxit=56, stab=0.5, error=0.1, imbal=5.0E-02, tlim=0.5, alim=1.0D
 command: sim/stat


  Begin Static Solution


 STATICS: Original static solver will be used with the Sparse linear solver.

  Static Solution converged in 1 iterations
  Residual imbalance is less than 8.81437E-09

  End Static Solution
 command: equil/maxit=57, stab=0.5, error=5.0E-02, imbal=5.0E-02, tlim=0.5, alim=1.0D
 command: sim/stat


  Begin Static Solution


 STATICS: Original static solver will be used with the Sparse linear solver.

  Static Solution converged in 1 iterations
  Residual imbalance is less than 9.05973E-09

  End Static Solution
 command: equil/maxit=58, stab=0.5, error=5.0E-02, imbal=1.0E-02, tlim=0.5, alim=1.0D
 command: sim/stat


  Begin Static Solution


 STATICS: Original static solver will be used with the Sparse linear solver.

  Static Solution converged in 1 iterations
  Residual imbalance is less than 9.05973E-09

  End Static Solution
 command: equil/maxit=59, stab=0.5, error=1.0E-02, imbal=1.0E-02, tlim=0.5, alim=1.0D
 command: sim/stat


  Begin Static Solution


 STATICS: Original static solver will be used with the Sparse linear solver.

  Static Solution converged in 1 iterations
  Residual imbalance is less than 1.01494E-08

  End Static Solution
 command: equil/maxit=60, stab=0.5, error=1.0E-02, imbal=5.0E-03, tlim=0.5, alim=1.0D
 command: sim/stat


  Begin Static Solution


 STATICS: Original static solver will be used with the Sparse linear solver.

  Static Solution converged in 1 iterations
  Residual imbalance is less than 1.01550E-08

  End Static Solution
 command: equil/maxit=61, stab=0.5, error=5.0E-03, imbal=5.0E-03, tlim=0.5, alim=1.0D
 command: sim/stat


  Begin Static Solution


 STATICS: Original static solver will be used with the Sparse linear solver.

  Static Solution converged in 1 iterations
  Residual imbalance is less than 1.06559E-08

  End Static Solution
 command: equil/maxit=62, stab=0.5, error=5.0E-03, imbal=1.0E-03, tlim=0.5, alim=1.0D
 command: sim/stat


  Begin Static Solution


 STATICS: Original static solver will be used with the Sparse linear solver.

  Static Solution converged in 1 iterations
  Residual imbalance is less than 1.03298E-08

  End Static Solution
 command: equil/maxit=63, stab=0.5, error=5.0E-03, imbal=5.0E-04, tlim=0.5, alim=1.0D
 command: sim/stat


  Begin Static Solution


 STATICS: Original static solver will be used with the Sparse linear solver.

  Static Solution converged in 1 iterations
  Residual imbalance is less than 1.12223E-08

  End Static Solution
 command: equil/maxit=100, stab=0.5, error=5.0E-03, imbal=5.0E-03, tlim=0.5, alim=1.0D
 command: sim/stat


  Begin Static Solution


 STATICS: Original static solver will be used with the Sparse linear solver.

  Static Solution converged in 1 iterations
  Residual imbalance is less than 9.20965E-09

  End Static Solution
 command: !
 command: sim/dyn, end=10.0, dtout=5.0E-02


  Begin Simulation

  ****** Performing Dynamic Simulation using HHT I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is HHT, CORRECTOR = modified
   Integration error =    1.000000E-05

   * List of serial objects (not threadsafe) for equation set: Dynamics Second Order *
   GSE/990:  model.dummy_DGSE


   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   0.00000E+00  2.50000E-04            0            0       1            1.13 
   1.00000E+00  5.00000E-03          436          215       2            1.75 
   2.00000E+00  5.00000E-03          876          435       2            2.33 
   3.00000E+00  5.00000E-03         1316          655       2            2.73 
   4.00000E+00  5.00000E-03         1756          875       2            3.25 
   5.00000E+00  5.00000E-03         2196         1095       2            3.89 
   6.00000E+00  5.00000E-03         2636         1315       2            4.47 
   7.00000E+00  5.00000E-03         3076         1535       2            4.95 
   8.00000E+00  5.00000E-03         3516         1755       2            5.47 
   9.00000E+00  5.00000E-03         3916         1955       2            5.78 
   1.00000E+01  5.00000E-03         4316         2155       2            6.16 

  End Simulation
 command: sim/dyn, end=100.0, dtout=5.0E-02


  Begin Simulation

  ****** Performing Dynamic Simulation using HHT I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is HHT, CORRECTOR = modified
   Integration error =    1.000000E-05

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   1.00000E+01  5.00000E-03         4316         2155       2            6.16 
   1.90000E+01  5.00000E-03         9304         4077       2           10.80 
   2.80000E+01  5.00000E-03        19167         6608       2           23.56 
   3.70000E+01  5.00000E-03        27379         8692       2           32.61 
   4.60000E+01  4.73321E-03        35792        10814       2           42.47 
   5.50000E+01  1.11111E-03        44081        12902       2           51.94 
   6.40000E+01  5.00000E-03        52294        14980       2            1:02 
   7.30000E+01  5.00000E-03        60684        17135       2            1:12 
   8.20000E+01  5.00000E-03        69198        19298       2            1:23 
   9.10000E+01  5.00000E-03        77634        21461       2            1:33 
   1.00000E+02  5.00000E-03        86064        23606       2            1:42 

  End Simulation
 command: !
 command: 
 command: stop


Finished -----
Elapsed time = 41.95s,  CPU time = 102.98s,  245.48%

