
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
|    *   Local Time: 2020-02-28 09:50:27                                 *    |
|    *    Host Name: L010582-2                                           *    |
|    *        Uname: MS Windows NT                                       *    |
|    *      OS Info: 6.2                                                 *    |
|    *         User: bthornt                                             *    |
|    *  Customer ID: c8591feb-G13BA7C1                                   *    |
|    *  Current dir: (See below)                                         *    |
|    *   Process ID: 18936                                               *    |
|    *                                                                   *    |
|    *********************************************************************    |
|                                                                             |
-------------------------------------------------------------------------------

 Current dir:
    C:\Users\bthornt\Code\adamspy\test\files\generic_model

  OS-environment variable
  MSC_ADAMS_OPENMP=ON
  Enforces Adams Solver (C++) to enable or disable OpenMP usage. Values are ON or OFF.


 command: FILE/COMMAND=generic_model.acf
 command: 
 command: file/model=generic_model

-------------------------------------------------------------------------------
|                                 Model Title                                 |
|=============================================================================|
|                                                                             |
|                    Adams View model name: generic_model                     |
|                                                                             |
-------------------------------------------------------------------------------

 command: ! Insert ACF commands here:
 command: SIMULATE/DYNAMIC, END=20.0, DTOUT=0.1


  Begin Simulation

  ****** Performing Dynamic Simulation using Gstiff I3 Integrator ******
  Time T=0.000000000E+00.
  Degree-of-freedom analysis identified redundant constraints in the model:
  -------------------------------------------------------------------------
   -  deactivating constraint equation  Zi.Xj in model.JOINT_2

---- START: WARNING ----
The data set is kinematically determinate.  However, a dynamic analysis
has been requested.  A kinematic analysis with the SIMULATE/KINEMATICS
command would be more efficient and possibly more accurate for some of
the computed quantities.
As requested, the simulation will continue with a dynamic analysis.
---- END: WARNING ----

   The system is modelled with INDEX-3 DAEs.
   The integrator is GSTIFF, CORRECTOR = original
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   0.00000E+00  5.00000E-03            0            0       1            0.02 
   2.00000E+00  1.00000E-01           56           27       2            0.05 
   4.00000E+00  1.00000E-01           96           47       2            0.05 
   6.00000E+00  1.00000E-01          136           67       2            0.05 
   8.00000E+00  1.00000E-01          176           87       2            0.05 
   1.00000E+01  1.00000E-01          216          107       2            0.06 
   1.20000E+01  1.00000E-01          256          127       2            0.06 
   1.40000E+01  1.00000E-01          296          147       2            0.06 
   1.60000E+01  1.00000E-01          336          167       2            0.06 
   1.80000E+01  1.00000E-01          376          187       2            0.06 
   2.00000E+01  1.00000E-01          416          207       2            0.09 

  End Simulation
 command: stop


Finished -----
Elapsed time = 0.06s,  CPU time = 0.09s,  156.25%

