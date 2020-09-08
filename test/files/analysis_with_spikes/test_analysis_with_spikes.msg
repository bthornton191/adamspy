
-------------------------------------------------------------------------------
|        ..          ..                                                       |
|       ####*.      ####.                                                     |
|         `###*.       `#.              MSC Software                          |
|            `###.       #.             ------------                          |
|               `##.     ##                                                   |
|                 `##.   ##                                                   |
|                   `## ##'             A d a m s   C++   S o l v e r         |
|                     ####              Build:   2020.1.0-CL748966            |
|                     ###.              Version: Adams 2020 FP1               |
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
|    *  Copyright (C) 2020 MSC Software Corporation and  its licensors.  *    |
|    *                        All rights reserved.                       *    |
|    *                                                                   *    |
|    *********************************************************************    |
|                                                                             |
|-----------------------------------------------------------------------------|
|                                                                             |
|    *********************************************************************    |
|    *                                                                   *    |
|    *   Local Time: 2020-09-04 15:52:26                                 *    |
|    *    Host Name: L010582-2                                           *    |
|    *        Uname: MS Windows NT                                       *    |
|    *      OS Info: 6.2                                                 *    |
|    *         User: bthornt                                             *    |
|    *  Customer ID: 9a3c7a00-G7686D34                                   *    |
|    *  Current dir: (See below)                                         *    |
|    *   Process ID: 36244                                               *    |
|    *                                                                   *    |
|    *********************************************************************    |
|                                                                             |
-------------------------------------------------------------------------------

 Current dir:
    C:\Users\bthornt\Code\adamspy\test\files\test_analysis_with_spikes

 command: FILE/COMMAND=C:\Users\bthornt\Code\adamspy\test\files\test_analysis_with_spikes\test_analysis_with_spikes.acf
 command: 
 command: file/model=test_analysis_with_spikes

-------------------------------------------------------------------------------
|                                 Model Title                                 |
|=============================================================================|
|                                                                             |
|              Adams View model name: test_analysis_with_spikes               |
|                                                                             |
-------------------------------------------------------------------------------

 command: ! Insert ACF commands here:
 command: SIMULATE/DYNAMIC, END=2.0, DTOUT=1.0E-02


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
   0.00000E+00  5.00000E-04            0            0       1            0.06 
   2.00000E-01  1.00000E-02           50           25       1            0.08 
   4.00000E-01  1.00000E-02           90           45       1            0.09 
   6.00000E-01  1.00000E-02          130           65       1            0.09 
   8.00000E-01  1.00000E-02          170           85       1            0.11 
   1.00000E+00  1.00000E-02          210          105       1            0.11 
   1.20000E+00  1.00000E-02          250          125       1            0.14 
   1.40000E+00  1.00000E-02          290          145       1            0.14 
   1.60000E+00  1.00000E-02          330          165       1            0.14 
   1.80000E+00  1.00000E-02          370          185       1            0.14 
   2.00000E+00  1.00000E-02          410          205       1            0.16 

  End Simulation
 command: stop


Finished -----
Elapsed time = 0.19s,  CPU time = 0.16s,  81.81%

