
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
|    *   Local Time: 2019-08-11 13:52:24                                 *    |
|    *    Host Name: L010582-2                                           *    |
|    *        Uname: MS Windows NT                                       *    |
|    *      OS Info: 6.2                                                 *    |
|    *         User: bthornt                                             *    |
|    *  Customer ID: c8591feb-GC424248                                   *    |
|    *  Current dir: c:\Users\bthornt\Code\adamspy\test\existing_model   *    |
|    *   Process ID: 24452                                               *    |
|    *                                                                   *    |
|    *********************************************************************    |
|                                                                             |
-------------------------------------------------------------------------------

 command: FILE/COMMAND=camelot_1_pull0_offset0.acf
 command: 
 command: file/model=camelot_1_pull0_offset0
The number of parallel threads has been set to 8.


  The model has CONTACT elements, switching to the MODIFIED corrector.


-------------------------------------------------------------------------------
|                                 Model Title                                 |
|=============================================================================|
|                                                                             |
|                      Adams View model name: camelot_1                       |
|                                                                             |
-------------------------------------------------------------------------------

 command: ! Insert ACF commands here:
 command: !DEACTIVATE/CONTACT, ID=10,9
 command: ACTIVATE/JOINT, ID=12

---- START: WARNING ----
model.JOINT_12 is already activated. Activation ignored.
---- END: WARNING ----

 command: SIMULATE/STATIC


  Begin Static Solution


 STATICS: Original static solver will be used with the Sparse linear solver.

  Static Solution converged in 17 iterations
  Residual imbalance is less than 2.61830E-07

  End Static Solution
 command: DEACTIVATE/JOINT, ID=12
   Deactivated model.JOINT_12, force/torque values will be zero in function-expression references.
 command: SIMULATE/DYNAMIC, END=1.5, DTOUT=1.0E-03


  Begin Simulation

  ****** Performing Dynamic Simulation using Gstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is GSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   0.00000E+00  5.00000E-05            0            0       1            1.45 
   1.50000E-01  1.00000E-03          330          159       2            2.14 
   3.00000E-01  1.00000E-03          584          309       2            2.84 
   4.50000E-01  1.00000E-03          753          459       2            3.69 
   6.00000E-01  1.00000E-03          914          609       2            4.41 
   7.50000E-01  1.00000E-03         1064          759       2            5.17 
   9.00000E-01  1.00000E-03         1230          909       2            6.27 
   1.05000E+00  1.00000E-03         1450         1061       3            7.13 
   1.20000E+00  1.00000E-03         2331         1332       1            9.16 
   1.35000E+00  1.61125E-05         6046         2375       1           14.94 
