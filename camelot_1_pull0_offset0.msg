
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
|    *   Local Time: 2019-08-08 19:44:30                                 *    |
|    *    Host Name: L010582-2                                           *    |
|    *        Uname: MS Windows NT                                       *    |
|    *      OS Info: 6.2                                                 *    |
|    *         User: bthornt                                             *    |
|    *  Customer ID: c8591feb-G6465A32                                   *    |
|    *  Current dir: c:\Users\bthornt\Code\adamspy                       *    |
|    *   Process ID: 4604                                                *    |
|    *                                                                   *    |
|    *********************************************************************    |
|                                                                             |
-------------------------------------------------------------------------------

 command: FILE/COMMAND=c:\Users\bthornt\Code\adamspy\test\existing_model\camelot_1_pull0_offset0.acf
 command: 
 command: file/model=camelot_1_pull0_offset0
ERROR:  Could not open the dataset file.


---- START: ERROR ----
Attempt to read in model into AMD was unsuccessful.
---- END: ERROR ----

 command: ! Insert ACF commands here:
 command: !DEACTIVATE/CONTACT, ID=10,9
 command: ACTIVATE/JOINT, ID=12


---- START: ERROR ----
This command cannot be processed until a model has been defined.
Maybe you need to add a FILE/MODEL=pathname, OUTPUT=prefix command to the command (*.acf) file.
---- END: ERROR ----

 command: SIMULATE/STATIC


---- START: ERROR ----
This command cannot be processed until a model has been defined.
Maybe you need to add a FILE/MODEL=pathname, OUTPUT=prefix command to the command (*.acf) file.
---- END: ERROR ----

 command: DEACTIVATE/JOINT, ID=12


---- START: ERROR ----
This command cannot be processed until a model has been defined.
Maybe you need to add a FILE/MODEL=pathname, OUTPUT=prefix command to the command (*.acf) file.
---- END: ERROR ----

 command: SIMULATE/DYNAMIC, END=1.5, DTOUT=1.0E-03


---- START: ERROR ----
This command cannot be processed until a model has been defined.
Maybe you need to add a FILE/MODEL=pathname, OUTPUT=prefix command to the command (*.acf) file.
---- END: ERROR ----

 command: stop


Finished -----
Elapsed time = 0.00s,  CPU time = 0.00s,  0.00%

