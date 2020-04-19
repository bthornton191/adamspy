
-------------------------------------------------------------------------------
|        ..          ..                                                       |
|       ####*.      ####.                                                     |
|         `###*.       `#.              MSC Software                          |
|            `###.       #.             ------------                          |
|               `##.     ##                                                   |
|                 `##.   ##                                                   |
|                   `## ##'             A d a m s   C++   S o l v e r         |
|                     ####              Build:   2020.0.0-CL711253            |
|                     ###.              Version: Adams 2020                   |
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
|    *   Local Time: 2020-04-18 18:17:43                                 *    |
|    *    Host Name: L010582-2                                           *    |
|    *        Uname: MS Windows NT                                       *    |
|    *      OS Info: 6.2                                                 *    |
|    *         User: bthornt                                             *    |
|    *  Customer ID: 9a3c7a00-G29A2E1D                                   *    |
|    *  Current dir: (See below)                                         *    |
|    *   Process ID: 42168                                               *    |
|    *                                                                   *    |
|    *********************************************************************    |
|                                                                             |
-------------------------------------------------------------------------------

 Current dir:
    C:\Users\bthornt\Hexagon\Eagle NVH Tester - General\adams\eagle_nvh_tester\eagle_nvh_git\sims\eagle_20200418


RELOAD from rpm3500_tqN145_time23p5.sav successful.  System time is now 23.5       

 command: INTEGRATOR/HINIT=0.00005, ERROR=1e-5
 command: SIMULATE/DYNAMIC, END=23.6, DTOUT=0.001


  Begin Simulation

  ****** Performing Dynamic Simulation using HHT I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is HHT, CORRECTOR = original
   Integration error =    1.000000E-05

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   2.35000E+01  5.00000E-05            0            0       2        22:35:36 
   2.35100E+01  6.96520E-05         2030          485       2            3:04 
   2.35200E+01  3.80126E-05         3899          978       2            4:43 
   2.35300E+01  3.81473E-05         5789         1527       2            6:16 
   2.35400E+01  6.91112E-05         7601         1982       2            7:53 
   2.35500E+01  3.97723E-05         9594         2505       2            9:35 
   2.35600E+01  3.43003E-05        11561         3036       2           11:16 
   2.35700E+01  3.26419E-05        13504         3519       2           13:00 
   2.35800E+01  8.57758E-05        15179         3929       2           14:29 
   2.35900E+01  1.06312E-05        17220         4456       2           16:16 
   2.36000E+01  4.67915E-05        19087         4934       2           17:59 

  End Simulation
 command: LINEAR/EIGENSOL, RM=366

  There are 40 zero-mass parts in the model.
  The smallest nonzero mass found in the model is 0.000220.
  A factor 1.000000e-08 times the smallest nonzero mass will be used for the zero-mass parts during linearization.

  Adams Vibration Solver Using: QR eigen solver for 3750 values

  EigenSolution computation started.

  Option RM=366 was used.

  This model has
     3750 kinematic states (displacement and velocities)
        0 differential states ( DIFFs, LSEs, etc.)

  The selected kinematic states are:
        1 Modal generalized coordinate Q7   FLEX_BODY/1
        2 Modal generalized coordinate Q8   FLEX_BODY/1
        3 Modal generalized coordinate Q9   FLEX_BODY/1
        4 Modal generalized coordinate Q10   FLEX_BODY/1
        5 Modal generalized coordinate Q12   FLEX_BODY/1
        6 Modal generalized coordinate Q13   FLEX_BODY/1
        7 Modal generalized coordinate Q14   FLEX_BODY/1
        8 Modal generalized coordinate Q15   FLEX_BODY/1
        9 Modal generalized coordinate Q16   FLEX_BODY/1
       10 Modal generalized coordinate Q17   FLEX_BODY/1
       11 Modal generalized coordinate Q18   FLEX_BODY/1
       12 Modal generalized coordinate Q20   FLEX_BODY/1
       13 Modal generalized coordinate Q21   FLEX_BODY/1
       14 Modal generalized coordinate Q22   FLEX_BODY/1
       15 Modal generalized coordinate Q23   FLEX_BODY/1
       16 Modal generalized coordinate Q24   FLEX_BODY/1
       17 Modal generalized coordinate Q25   FLEX_BODY/1
       18 Modal generalized coordinate Q26   FLEX_BODY/1
       19 Modal generalized coordinate Q29   FLEX_BODY/1
       20 Modal generalized coordinate Q30   FLEX_BODY/1
       21 Modal generalized coordinate Q31   FLEX_BODY/1
       22 Modal generalized coordinate Q32   FLEX_BODY/1
       23 Modal generalized coordinate Q33   FLEX_BODY/1
       24 Modal generalized coordinate Q35   FLEX_BODY/1
       25 Modal generalized coordinate Q36   FLEX_BODY/1
       26 Modal generalized coordinate Q37   FLEX_BODY/1
       27 Modal generalized coordinate Q38   FLEX_BODY/1
       28 Modal generalized coordinate Q39   FLEX_BODY/1
       29 Modal generalized coordinate Q40   FLEX_BODY/1
       30 Modal generalized coordinate Q41   FLEX_BODY/1
       31 Modal generalized coordinate Q42   FLEX_BODY/1
       32 Modal generalized coordinate Q44   FLEX_BODY/1
       33 Modal generalized coordinate Q45   FLEX_BODY/1
       34 Modal generalized coordinate Q46   FLEX_BODY/1
       35 Modal generalized coordinate Q47   FLEX_BODY/1
       36 Modal generalized coordinate Q48   FLEX_BODY/1
       37 Modal generalized coordinate Q49   FLEX_BODY/1
       38 Modal generalized coordinate Q50   FLEX_BODY/1
       39 Modal generalized coordinate Q51   FLEX_BODY/1
       40 Modal generalized coordinate Q52   FLEX_BODY/1
       41 Modal generalized coordinate Q53   FLEX_BODY/1
       42 Modal generalized coordinate Q54   FLEX_BODY/1
       43 Modal generalized coordinate Q55   FLEX_BODY/1
       44 Modal generalized coordinate Q56   FLEX_BODY/1
       45 Modal generalized coordinate Q57   FLEX_BODY/1
       46 Modal generalized coordinate Q58   FLEX_BODY/1
       47 Modal generalized coordinate Q59   FLEX_BODY/1
       48 Modal generalized coordinate Q60   FLEX_BODY/1
       49 Modal generalized coordinate Q61   FLEX_BODY/1
       50 Modal generalized coordinate Q62   FLEX_BODY/1
       51 Modal generalized coordinate Q65   FLEX_BODY/1
       52 Modal generalized coordinate Q71   FLEX_BODY/1
       53 Modal generalized coordinate Q75   FLEX_BODY/1
       54 Modal generalized coordinate Q78   FLEX_BODY/1
       55 Modal generalized coordinate Q82   FLEX_BODY/1
       56 Modal generalized coordinate Q89   FLEX_BODY/1
       57 Modal generalized coordinate Q94   FLEX_BODY/1
       58 Modal generalized coordinate Q98   FLEX_BODY/1
       59 Modal generalized coordinate Q108   FLEX_BODY/1
       60 Modal generalized coordinate Q109   FLEX_BODY/1
       61 Modal generalized coordinate Q110   FLEX_BODY/1
       62 Modal generalized coordinate Q113   FLEX_BODY/1
       63 Modal generalized coordinate Q120   FLEX_BODY/1
       64 Modal generalized coordinate Q124   FLEX_BODY/1
       65 Modal generalized coordinate Q125   FLEX_BODY/1
       66 Modal generalized coordinate Q130   FLEX_BODY/1
       67 Modal generalized coordinate Q135   FLEX_BODY/1
       68 Modal generalized coordinate Q136   FLEX_BODY/1
       69 Modal generalized coordinate Q139   FLEX_BODY/1
       70 Modal generalized coordinate Q141   FLEX_BODY/1
       71 Modal generalized coordinate Q148   FLEX_BODY/1
       72 Modal generalized coordinate Q152   FLEX_BODY/1
       73 Modal generalized coordinate Q153   FLEX_BODY/1
       74 Modal generalized coordinate Q154   FLEX_BODY/1
       75 Modal generalized coordinate Q159   FLEX_BODY/1
       76 Modal generalized coordinate Q161   FLEX_BODY/1
       77 Modal generalized coordinate Q163   FLEX_BODY/1
       78 Modal generalized coordinate Q164   FLEX_BODY/1
       79 Modal generalized coordinate Q166   FLEX_BODY/1
       80 Modal generalized coordinate Q167   FLEX_BODY/1
       81 Modal generalized coordinate Q169   FLEX_BODY/1
       82 Modal generalized coordinate Q171   FLEX_BODY/1
       83 Modal generalized coordinate Q172   FLEX_BODY/1
       84 Modal generalized coordinate Q174   FLEX_BODY/1
       85 Modal generalized coordinate Q176   FLEX_BODY/1
       86 Modal generalized coordinate Q181   FLEX_BODY/1
       87 Modal generalized coordinate Q183   FLEX_BODY/1
       88 Modal generalized coordinate Q187   FLEX_BODY/1
       89 Modal generalized coordinate Q189   FLEX_BODY/1
       90 Modal generalized coordinate Q191   FLEX_BODY/1
       91 Modal generalized coordinate Q194   FLEX_BODY/1
       92 Modal generalized coordinate Q202   FLEX_BODY/1
       93 Modal generalized coordinate Q206   FLEX_BODY/1
       94 Modal generalized coordinate Q207   FLEX_BODY/1
       95 Modal generalized coordinate Q209   FLEX_BODY/1
       96 Modal generalized coordinate Q212   FLEX_BODY/1
       97 Modal generalized coordinate Q215   FLEX_BODY/1
       98 Modal generalized coordinate Q216   FLEX_BODY/1
       99 Modal generalized coordinate Q217   FLEX_BODY/1
      100 Modal generalized coordinate Q219   FLEX_BODY/1
      101 Modal generalized coordinate Q221   FLEX_BODY/1
      102 Modal generalized coordinate Q222   FLEX_BODY/1
      103 Modal generalized coordinate Q223   FLEX_BODY/1
      104 Modal generalized coordinate Q224   FLEX_BODY/1
      105 Modal generalized coordinate Q233   FLEX_BODY/1
      106 Modal generalized coordinate Q234   FLEX_BODY/1
      107 Modal generalized coordinate Q236   FLEX_BODY/1
      108 Modal generalized coordinate Q237   FLEX_BODY/1
      109 Modal generalized coordinate Q239   FLEX_BODY/1
      110 Modal generalized coordinate Q240   FLEX_BODY/1
      111 Modal generalized coordinate Q241   FLEX_BODY/1
      112 Modal generalized coordinate Q242   FLEX_BODY/1
      113 Modal generalized coordinate Q257   FLEX_BODY/1
      114 Modal generalized coordinate Q261   FLEX_BODY/1
      115 Modal generalized coordinate Q263   FLEX_BODY/1
      116 Modal generalized coordinate Q264   FLEX_BODY/1
      117 Modal generalized coordinate Q7   FLEX_BODY/2
      118 Modal generalized coordinate Q8   FLEX_BODY/2
      119 Modal generalized coordinate Q9   FLEX_BODY/2
      120 Modal generalized coordinate Q10   FLEX_BODY/2
      121 Modal generalized coordinate Q11   FLEX_BODY/2
      122 Modal generalized coordinate Q12   FLEX_BODY/2
      123 Modal generalized coordinate Q13   FLEX_BODY/2
      124 Modal generalized coordinate Q14   FLEX_BODY/2
      125 Modal generalized coordinate Q15   FLEX_BODY/2
      126 Modal generalized coordinate Q16   FLEX_BODY/2
      127 Modal generalized coordinate Q17   FLEX_BODY/2
      128 Modal generalized coordinate Q18   FLEX_BODY/2
      129 Modal generalized coordinate Q19   FLEX_BODY/2
      130 Modal generalized coordinate Q20   FLEX_BODY/2
      131 Modal generalized coordinate Q21   FLEX_BODY/2
      132 Modal generalized coordinate Q22   FLEX_BODY/2
      133 Modal generalized coordinate Q23   FLEX_BODY/2
      134 Modal generalized coordinate Q24   FLEX_BODY/2
      135 Modal generalized coordinate Q25   FLEX_BODY/2
      136 Modal generalized coordinate Q26   FLEX_BODY/2
      137 Modal generalized coordinate Q27   FLEX_BODY/2
      138 Modal generalized coordinate Q28   FLEX_BODY/2
      139 Modal generalized coordinate Q29   FLEX_BODY/2
      140 Modal generalized coordinate Q30   FLEX_BODY/2
      141 Modal generalized coordinate Q31   FLEX_BODY/2
      142 Modal generalized coordinate Q32   FLEX_BODY/2
      143 Modal generalized coordinate Q33   FLEX_BODY/2
      144 Modal generalized coordinate Q34   FLEX_BODY/2
      145 Modal generalized coordinate Q35   FLEX_BODY/2
      146 Modal generalized coordinate Q36   FLEX_BODY/2
      147 Modal generalized coordinate Q37   FLEX_BODY/2
      148 Modal generalized coordinate Q38   FLEX_BODY/2
      149 Modal generalized coordinate Q39   FLEX_BODY/2
      150 Modal generalized coordinate Q40   FLEX_BODY/2
      151 Modal generalized coordinate Q41   FLEX_BODY/2
      152 Modal generalized coordinate Q42   FLEX_BODY/2
      153 Modal generalized coordinate Q43   FLEX_BODY/2
      154 Modal generalized coordinate Q44   FLEX_BODY/2
      155 Modal generalized coordinate Q45   FLEX_BODY/2
      156 Modal generalized coordinate Q46   FLEX_BODY/2
      157 Modal generalized coordinate Q47   FLEX_BODY/2
      158 Modal generalized coordinate Q48   FLEX_BODY/2
      159 Modal generalized coordinate Q49   FLEX_BODY/2
      160 Modal generalized coordinate Q50   FLEX_BODY/2
      161 Modal generalized coordinate Q51   FLEX_BODY/2
      162 Modal generalized coordinate Q52   FLEX_BODY/2
      163 Modal generalized coordinate Q53   FLEX_BODY/2
      164 Modal generalized coordinate Q54   FLEX_BODY/2
      165 Modal generalized coordinate Q55   FLEX_BODY/2
      166 Modal generalized coordinate Q56   FLEX_BODY/2
      167 Modal generalized coordinate Q57   FLEX_BODY/2
      168 Modal generalized coordinate Q58   FLEX_BODY/2
      169 Modal generalized coordinate Q59   FLEX_BODY/2
      170 Modal generalized coordinate Q60   FLEX_BODY/2
      171 Modal generalized coordinate Q61   FLEX_BODY/2
      172 Modal generalized coordinate Q62   FLEX_BODY/2
      173 Modal generalized coordinate Q63   FLEX_BODY/2
      174 Modal generalized coordinate Q64   FLEX_BODY/2
      175 Modal generalized coordinate Q65   FLEX_BODY/2
      176 Modal generalized coordinate Q66   FLEX_BODY/2
      177 Modal generalized coordinate Q67   FLEX_BODY/2
      178 Modal generalized coordinate Q68   FLEX_BODY/2
      179 Modal generalized coordinate Q69   FLEX_BODY/2
      180 Modal generalized coordinate Q70   FLEX_BODY/2
      181 Modal generalized coordinate Q71   FLEX_BODY/2
      182 Modal generalized coordinate Q72   FLEX_BODY/2
      183 Modal generalized coordinate Q73   FLEX_BODY/2
      184 Modal generalized coordinate Q74   FLEX_BODY/2
      185 Modal generalized coordinate Q75   FLEX_BODY/2
      186 Modal generalized coordinate Q76   FLEX_BODY/2
      187 Modal generalized coordinate Q77   FLEX_BODY/2
      188 Modal generalized coordinate Q78   FLEX_BODY/2
      189 Modal generalized coordinate Q79   FLEX_BODY/2
      190 Modal generalized coordinate Q80   FLEX_BODY/2
      191 Modal generalized coordinate Q81   FLEX_BODY/2
      192 Modal generalized coordinate Q82   FLEX_BODY/2
      193 Modal generalized coordinate Q83   FLEX_BODY/2
      194 Modal generalized coordinate Q84   FLEX_BODY/2
      195 Modal generalized coordinate Q85   FLEX_BODY/2
      196 Modal generalized coordinate Q86   FLEX_BODY/2
      197 Modal generalized coordinate Q87   FLEX_BODY/2
      198 Modal generalized coordinate Q88   FLEX_BODY/2
      199 Modal generalized coordinate Q89   FLEX_BODY/2
      200 Modal generalized coordinate Q90   FLEX_BODY/2
      201 Modal generalized coordinate Q91   FLEX_BODY/2
      202 Modal generalized coordinate Q92   FLEX_BODY/2
      203 Modal generalized coordinate Q93   FLEX_BODY/2
      204 Modal generalized coordinate Q94   FLEX_BODY/2
      205 Modal generalized coordinate Q95   FLEX_BODY/2
      206 Modal generalized coordinate Q96   FLEX_BODY/2
      207 Modal generalized coordinate Q97   FLEX_BODY/2
      208 Modal generalized coordinate Q98   FLEX_BODY/2
      209 Modal generalized coordinate Q99   FLEX_BODY/2
      210 Modal generalized coordinate Q100   FLEX_BODY/2
      211 Modal generalized coordinate Q101   FLEX_BODY/2
      212 Modal generalized coordinate Q102   FLEX_BODY/2
      213 Modal generalized coordinate Q103   FLEX_BODY/2
      214 Modal generalized coordinate Q104   FLEX_BODY/2
      215 Modal generalized coordinate Q105   FLEX_BODY/2
      216 Modal generalized coordinate Q106   FLEX_BODY/2
      217 Modal generalized coordinate Q107   FLEX_BODY/2
      218 Modal generalized coordinate Q108   FLEX_BODY/2
      219 Modal generalized coordinate Q109   FLEX_BODY/2
      220 Modal generalized coordinate Q110   FLEX_BODY/2
      221 Modal generalized coordinate Q111   FLEX_BODY/2
      222 Modal generalized coordinate Q112   FLEX_BODY/2
      223 Modal generalized coordinate Q113   FLEX_BODY/2
      224 Modal generalized coordinate Q114   FLEX_BODY/2
      225 Modal generalized coordinate Q115   FLEX_BODY/2
      226 Modal generalized coordinate Q116   FLEX_BODY/2
      227 Modal generalized coordinate Q117   FLEX_BODY/2
      228 Modal generalized coordinate Q118   FLEX_BODY/2
      229 Modal generalized coordinate Q119   FLEX_BODY/2
      230 Modal generalized coordinate Q120   FLEX_BODY/2
      231 Modal generalized coordinate Q121   FLEX_BODY/2
      232 Modal generalized coordinate Q122   FLEX_BODY/2
      233 Modal generalized coordinate Q123   FLEX_BODY/2
      234 Modal generalized coordinate Q124   FLEX_BODY/2
      235 Modal generalized coordinate Q125   FLEX_BODY/2
      236 Modal generalized coordinate Q126   FLEX_BODY/2
      237 Modal generalized coordinate Q127   FLEX_BODY/2
      238 Modal generalized coordinate Q128   FLEX_BODY/2
      239 Modal generalized coordinate Q129   FLEX_BODY/2
      240 Modal generalized coordinate Q130   FLEX_BODY/2
      241 Modal generalized coordinate Q131   FLEX_BODY/2
      242 Modal generalized coordinate Q132   FLEX_BODY/2
      243 Modal generalized coordinate Q133   FLEX_BODY/2
      244 Modal generalized coordinate Q134   FLEX_BODY/2
      245 Modal generalized coordinate Q135   FLEX_BODY/2
      246 Modal generalized coordinate Q136   FLEX_BODY/2
      247 Modal generalized coordinate Q137   FLEX_BODY/2
      248 Modal generalized coordinate Q138   FLEX_BODY/2
      249 Modal generalized coordinate Q139   FLEX_BODY/2
      250 Modal generalized coordinate Q140   FLEX_BODY/2
      251 Modal generalized coordinate Q9   FLEX_BODY/3
      252 Modal generalized coordinate Q10   FLEX_BODY/3
      253 Modal generalized coordinate Q11   FLEX_BODY/3
      254 Modal generalized coordinate Q12   FLEX_BODY/3
      255 Modal generalized coordinate Q13   FLEX_BODY/3
      256 Modal generalized coordinate Q14   FLEX_BODY/3
      257 Modal generalized coordinate Q15   FLEX_BODY/3
      258 Modal generalized coordinate Q16   FLEX_BODY/3
      259 Modal generalized coordinate Q20   FLEX_BODY/3
      260 Modal generalized coordinate Q21   FLEX_BODY/3
      261 Modal generalized coordinate Q25   FLEX_BODY/3
      262 Modal generalized coordinate Q26   FLEX_BODY/3
      263 Modal generalized coordinate Q27   FLEX_BODY/3
      264 Modal generalized coordinate Q28   FLEX_BODY/3
      265 Modal generalized coordinate Q29   FLEX_BODY/3
      266 Modal generalized coordinate Q30   FLEX_BODY/3
      267 Modal generalized coordinate Q31   FLEX_BODY/3
      268 Modal generalized coordinate Q34   FLEX_BODY/3
      269 Modal generalized coordinate Q35   FLEX_BODY/3
      270 Modal generalized coordinate Q36   FLEX_BODY/3
      271 Modal generalized coordinate Q37   FLEX_BODY/3
      272 Modal generalized coordinate Q38   FLEX_BODY/3
      273 Modal generalized coordinate Q39   FLEX_BODY/3
      274 Modal generalized coordinate Q40   FLEX_BODY/3
      275 Modal generalized coordinate Q42   FLEX_BODY/3
      276 Modal generalized coordinate Q44   FLEX_BODY/3
      277 Modal generalized coordinate Q45   FLEX_BODY/3
      278 Modal generalized coordinate Q47   FLEX_BODY/3
      279 Modal generalized coordinate Q49   FLEX_BODY/3
      280 Modal generalized coordinate Q52   FLEX_BODY/3
      281 Modal generalized coordinate Q53   FLEX_BODY/3
      282 Modal generalized coordinate Q56   FLEX_BODY/3
      283 Modal generalized coordinate Q57   FLEX_BODY/3
      284 Modal generalized coordinate Q58   FLEX_BODY/3
      285 Modal generalized coordinate Q59   FLEX_BODY/3
      286 Modal generalized coordinate Q61   FLEX_BODY/3
      287 Modal generalized coordinate Q65   FLEX_BODY/3
      288 Modal generalized coordinate Q70   FLEX_BODY/3
      289 Modal generalized coordinate Q72   FLEX_BODY/3
      290 Modal generalized coordinate Q73   FLEX_BODY/3
      291 Modal generalized coordinate Q74   FLEX_BODY/3
      292 Modal generalized coordinate Q76   FLEX_BODY/3
      293 Modal generalized coordinate Q77   FLEX_BODY/3
      294 Modal generalized coordinate Q78   FLEX_BODY/3
      295 Modal generalized coordinate Q84   FLEX_BODY/3
      296 Modal generalized coordinate Q85   FLEX_BODY/3
      297 Modal generalized coordinate Q87   FLEX_BODY/3
      298 Modal generalized coordinate Q88   FLEX_BODY/3
      299 Modal generalized coordinate Q89   FLEX_BODY/3
      300 Modal generalized coordinate Q90   FLEX_BODY/3
      301 Modal generalized coordinate Q91   FLEX_BODY/3
      302 Modal generalized coordinate Q92   FLEX_BODY/3
      303 Modal generalized coordinate Q95   FLEX_BODY/3
      304 Modal generalized coordinate Q96   FLEX_BODY/3
      305 Modal generalized coordinate Q97   FLEX_BODY/3
      306 Modal generalized coordinate Q98   FLEX_BODY/3
      307 Modal generalized coordinate Q99   FLEX_BODY/3
      308 Modal generalized coordinate Q100   FLEX_BODY/3
      309 Modal generalized coordinate Q103   FLEX_BODY/3
      310 Modal generalized coordinate Q105   FLEX_BODY/3
      311 Modal generalized coordinate Q107   FLEX_BODY/3
      312 Modal generalized coordinate Q108   FLEX_BODY/3
      313 Modal generalized coordinate Q109   FLEX_BODY/3
      314 Modal generalized coordinate Q111   FLEX_BODY/3
      315 Modal generalized coordinate Q112   FLEX_BODY/3
      316 Modal generalized coordinate Q113   FLEX_BODY/3
      317 Modal generalized coordinate Q114   FLEX_BODY/3
      318 Modal generalized coordinate Q115   FLEX_BODY/3
      319 Modal generalized coordinate Q116   FLEX_BODY/3
      320 Modal generalized coordinate Q117   FLEX_BODY/3
      321 Modal generalized coordinate Q119   FLEX_BODY/3
      322 Modal generalized coordinate Q120   FLEX_BODY/3
      323 Modal generalized coordinate Q123   FLEX_BODY/3
      324 Modal generalized coordinate Q124   FLEX_BODY/3
      325 Modal generalized coordinate Q128   FLEX_BODY/3
      326 Modal generalized coordinate Q130   FLEX_BODY/3
      327 Modal generalized coordinate Q131   FLEX_BODY/3
      328 Modal generalized coordinate Q132   FLEX_BODY/3
      329 Modal generalized coordinate Q133   FLEX_BODY/3
      330 Modal generalized coordinate Q134   FLEX_BODY/3
      331 Modal generalized coordinate Q137   FLEX_BODY/3
      332 Modal generalized coordinate Q139   FLEX_BODY/3
      333 Modal generalized coordinate Q140   FLEX_BODY/3
      334 Modal generalized coordinate Q141   FLEX_BODY/3
      335 Modal generalized coordinate Q142   FLEX_BODY/3
      336 Modal generalized coordinate Q144   FLEX_BODY/3
      337 Modal generalized coordinate Q147   FLEX_BODY/3
      338 Modal generalized coordinate Q148   FLEX_BODY/3
      339 Modal generalized coordinate Q149   FLEX_BODY/3
      340 Modal generalized coordinate Q154   FLEX_BODY/3
      341 Modal generalized coordinate Q156   FLEX_BODY/3
      342 Modal generalized coordinate Q158   FLEX_BODY/3
      343 Modal generalized coordinate Q159   FLEX_BODY/3
      344 Modal generalized coordinate Q161   FLEX_BODY/3
      345 Modal generalized coordinate Q163   FLEX_BODY/3
      346 Modal generalized coordinate Q165   FLEX_BODY/3
      347 Modal generalized coordinate Q166   FLEX_BODY/3
      348 Modal generalized coordinate Q168   FLEX_BODY/3
      349 Modal generalized coordinate Q169   FLEX_BODY/3
      350 Modal generalized coordinate Q170   FLEX_BODY/3
      351 Modal generalized coordinate Q171   FLEX_BODY/3
      352 Modal generalized coordinate Q172   FLEX_BODY/3
      353 Modal generalized coordinate Q174   FLEX_BODY/3
      354 Modal generalized coordinate Q175   FLEX_BODY/3
      355 Modal generalized coordinate Q176   FLEX_BODY/3
      356 Modal generalized coordinate Q178   FLEX_BODY/3
      357 Relative displacement DX(BCS,366,366)   PART/2
      358 Relative displacement DY(BCS,366,366)   PART/2
      359 Relative displacement DZ(BCS,366,366)   PART/2
      360 Relative rotation AX(BCS,366)   PART/2
      361 Relative rotation AY(BCS,366)   PART/2
      362 Relative rotation AZ(BCS,366)   PART/2
      363 Relative displacement DX(BCS,366,366)   PART/3
      364 Relative displacement DY(BCS,366,366)   PART/3
      365 Relative displacement DZ(BCS,366,366)   PART/3
      366 Relative rotation AX(BCS,366)   PART/3
      367 Relative rotation AY(BCS,366)   PART/3
      368 Relative displacement DX(BCS,366,366)   PART/4
      369 Relative displacement DY(BCS,366,366)   PART/4
      370 Relative displacement DZ(BCS,366,366)   PART/4
      371 Relative rotation AY(BCS,366)   PART/4
      372 Relative rotation AZ(BCS,366)   PART/4
      373 Relative displacement DX(BCS,366,366)   PART/10
      374 Relative displacement DY(BCS,366,366)   PART/10
      375 Relative displacement DZ(BCS,366,366)   PART/10
      376 Relative rotation AX(BCS,366)   PART/10
      377 Relative rotation AY(BCS,366)   PART/10
      378 Relative rotation AZ(BCS,366)   PART/10
      379 Relative displacement DX(BCS,366,366)   PART/11
      380 Relative displacement DY(BCS,366,366)   PART/11
      381 Relative displacement DZ(BCS,366,366)   PART/11
      382 Relative rotation AX(BCS,366)   PART/11
      383 Relative rotation AY(BCS,366)   PART/11
      384 Relative rotation AZ(BCS,366)   PART/11
      385 Relative displacement DX(BCS,366,366)   PART/12
      386 Relative displacement DY(BCS,366,366)   PART/12
      387 Relative displacement DZ(BCS,366,366)   PART/12
      388 Relative rotation AX(BCS,366)   PART/12
      389 Relative rotation AY(BCS,366)   PART/12
      390 Relative rotation AZ(BCS,366)   PART/12
      391 Relative displacement DY(BCS,366,366)   PART/15
      392 Relative displacement DZ(BCS,366,366)   PART/15
      393 Relative rotation AY(BCS,366)   PART/15
      394 Relative displacement DX(BCS,366,366)   PART/16
      395 Relative displacement DY(BCS,366,366)   PART/16
      396 Relative displacement DZ(BCS,366,366)   PART/16
      397 Relative rotation AX(BCS,366)   PART/16
      398 Relative rotation AZ(BCS,366)   PART/16
      399 Relative displacement DZ(BCS,366,366)   PART/18
      400 Relative rotation AX(BCS,366)   PART/18
      401 Relative rotation AY(BCS,366)   PART/18
      402 Relative rotation AZ(BCS,366)   PART/18
      403 Relative displacement DX(BCS,366,366)   PART/19
      404 Relative displacement DZ(BCS,366,366)   PART/19
      405 Relative rotation AY(BCS,366)   PART/19
      406 Relative rotation AZ(BCS,366)   PART/19
      407 Relative displacement DX(BCS,366,366)   PART/20
      408 Relative displacement DY(BCS,366,366)   PART/20
      409 Relative displacement DZ(BCS,366,366)   PART/20
      410 Relative rotation AX(BCS,366)   PART/20
      411 Relative rotation AY(BCS,366)   PART/20
      412 Relative displacement DX(BCS,366,366)   PART/21
      413 Relative displacement DY(BCS,366,366)   PART/21
      414 Relative displacement DZ(BCS,366,366)   PART/21
      415 Relative rotation AX(BCS,366)   PART/21
      416 Relative rotation AY(BCS,366)   PART/21
      417 Relative rotation AZ(BCS,366)   PART/21
      418 Relative rotation AZ(BCS,366)   PART/22
      419 Relative displacement DX(BCS,366,366)   PART/23
      420 Relative displacement DY(BCS,366,366)   PART/23
      421 Relative displacement DZ(BCS,366,366)   PART/23
      422 Relative rotation AX(BCS,366)   PART/23
      423 Relative rotation AY(BCS,366)   PART/23
      424 Relative displacement DX(BCS,366,366)   PART/24
      425 Relative displacement DZ(BCS,366,366)   PART/24
      426 Relative rotation AX(BCS,366)   PART/24
      427 Relative rotation AY(BCS,366)   PART/24
      428 Relative displacement DX(BCS,366,366)   PART/25
      429 Relative displacement DY(BCS,366,366)   PART/25
      430 Relative displacement DZ(BCS,366,366)   PART/25
      431 Relative rotation AX(BCS,366)   PART/25
      432 Relative rotation AY(BCS,366)   PART/25
      433 Relative rotation AZ(BCS,366)   PART/25
      434 Relative rotation AZ(BCS,366)   PART/26
      435 Relative displacement DX(BCS,366,366)   PART/30
      436 Relative displacement DY(BCS,366,366)   PART/30
      437 Relative displacement DZ(BCS,366,366)   PART/30
      438 Relative rotation AX(BCS,366)   PART/30
      439 Relative rotation AZ(BCS,366)   PART/30
      440 Relative displacement DX(BCS,366,366)   PART/31
      441 Relative displacement DY(BCS,366,366)   PART/31
      442 Relative displacement DZ(BCS,366,366)   PART/31
      443 Relative rotation AZ(BCS,366)   PART/31
      444 Relative displacement DX(BCS,366,366)   PART/32
      445 Relative displacement DY(BCS,366,366)   PART/32
      446 Relative displacement DZ(BCS,366,366)   PART/32
      447 Relative rotation AX(BCS,366)   PART/32
      448 Relative rotation AY(BCS,366)   PART/32
      449 Relative rotation AZ(BCS,366)   PART/32
      450 Relative rotation AZ(BCS,366)   PART/33
      451 Relative displacement DX(BCS,366,366)   PART/34
      452 Relative displacement DY(BCS,366,366)   PART/34
      453 Relative displacement DZ(BCS,366,366)   PART/34
      454 Relative rotation AX(BCS,366)   PART/34
      455 Relative rotation AY(BCS,366)   PART/34
      456 Relative rotation AZ(BCS,366)   PART/34
      457 Relative displacement DX(BCS,366,366)   PART/36
      458 Relative displacement DY(BCS,366,366)   PART/36
      459 Relative displacement DZ(BCS,366,366)   PART/36
      460 Relative rotation AX(BCS,366)   PART/36
      461 Relative rotation AY(BCS,366)   PART/36
      462 Relative rotation AZ(BCS,366)   PART/36
      463 Relative rotation AY(BCS,366)   PART/37
      464 Relative displacement DX(BCS,366,366)   PART/38
      465 Relative displacement DY(BCS,366,366)   PART/38
      466 Relative displacement DZ(BCS,366,366)   PART/38
      467 Relative rotation AX(BCS,366)   PART/38
      468 Relative rotation AY(BCS,366)   PART/38
      469 Relative rotation AZ(BCS,366)   PART/38
      470 Relative displacement DX(BCS,366,366)   PART/39
      471 Relative displacement DY(BCS,366,366)   PART/39
      472 Relative displacement DZ(BCS,366,366)   PART/39
      473 Relative rotation AX(BCS,366)   PART/39
      474 Relative rotation AY(BCS,366)   PART/39
      475 Relative rotation AZ(BCS,366)   PART/39
      476 Relative displacement DX(BCS,366,366)   PART/40
      477 Relative displacement DY(BCS,366,366)   PART/40
      478 Relative displacement DZ(BCS,366,366)   PART/40
      479 Relative rotation AX(BCS,366)   PART/40
      480 Relative rotation AZ(BCS,366)   PART/40
      481 Relative displacement DX(BCS,366,366)   PART/41
      482 Relative displacement DY(BCS,366,366)   PART/41
      483 Relative displacement DZ(BCS,366,366)   PART/41
      484 Relative rotation AX(BCS,366)   PART/41
      485 Relative rotation AY(BCS,366)   PART/41
      486 Relative rotation AZ(BCS,366)   PART/41
      487 Relative rotation AX(BCS,366)   PART/42
      488 Relative rotation AY(BCS,366)   PART/42
      489 Relative displacement DX(BCS,366,366)   PART/44
      490 Relative displacement DY(BCS,366,366)   PART/44
      491 Relative displacement DZ(BCS,366,366)   PART/44
      492 Relative rotation AZ(BCS,366)   PART/44
      493 Relative displacement DX(BCS,366,366)   PART/45
      494 Relative displacement DY(BCS,366,366)   PART/45
      495 Relative displacement DZ(BCS,366,366)   PART/45
      496 Relative rotation AX(BCS,366)   PART/45
      497 Relative rotation AY(BCS,366)   PART/45
      498 Relative rotation AZ(BCS,366)   PART/45
      499 Relative displacement DX(BCS,366,366)   PART/47
      500 Relative displacement DY(BCS,366,366)   PART/47
      501 Relative displacement DZ(BCS,366,366)   PART/47
      502 Relative rotation AX(BCS,366)   PART/47
      503 Relative rotation AY(BCS,366)   PART/47
      504 Relative rotation AZ(BCS,366)   PART/47
      505 Relative displacement DX(BCS,366,366)   PART/48
      506 Relative displacement DY(BCS,366,366)   PART/48
      507 Relative displacement DZ(BCS,366,366)   PART/48
      508 Relative rotation AX(BCS,366)   PART/48
      509 Relative rotation AY(BCS,366)   PART/48
      510 Relative rotation AZ(BCS,366)   PART/48
      511 Relative displacement DX(BCS,366,366)   PART/49
      512 Relative displacement DY(BCS,366,366)   PART/49
      513 Relative displacement DZ(BCS,366,366)   PART/49
      514 Relative rotation AX(BCS,366)   PART/49
      515 Relative rotation AY(BCS,366)   PART/49
      516 Relative rotation AZ(BCS,366)   PART/49
      517 Relative rotation AX(BCS,366)   PART/50
      518 Relative rotation AY(BCS,366)   PART/50
      519 Relative displacement DX(BCS,366,366)   PART/51
      520 Relative displacement DY(BCS,366,366)   PART/51
      521 Relative displacement DZ(BCS,366,366)   PART/51
      522 Relative rotation AX(BCS,366)   PART/51
      523 Relative rotation AY(BCS,366)   PART/51
      524 Relative rotation AZ(BCS,366)   PART/51
      525 Relative displacement DX(BCS,366,366)   PART/52
      526 Relative displacement DY(BCS,366,366)   PART/52
      527 Relative displacement DZ(BCS,366,366)   PART/52
      528 Relative rotation AX(BCS,366)   PART/52
      529 Relative rotation AY(BCS,366)   PART/52
      530 Relative rotation AZ(BCS,366)   PART/52
      531 Relative displacement DY(BCS,366,366)   PART/53
      532 Relative displacement DX(BCS,366,366)   PART/54
      533 Relative displacement DY(BCS,366,366)   PART/54
      534 Relative displacement DZ(BCS,366,366)   PART/54
      535 Relative rotation AX(BCS,366)   PART/54
      536 Relative rotation AY(BCS,366)   PART/54
      537 Relative rotation AZ(BCS,366)   PART/54
      538 Relative displacement DX(BCS,366,366)   PART/55
      539 Relative displacement DY(BCS,366,366)   PART/55
      540 Relative displacement DZ(BCS,366,366)   PART/55
      541 Relative rotation AX(BCS,366)   PART/55
      542 Relative rotation AY(BCS,366)   PART/55
      543 Relative rotation AZ(BCS,366)   PART/55
      544 Relative displacement DX(BCS,366,366)   PART/56
      545 Relative rotation AX(BCS,366)   PART/56
      546 Relative rotation AZ(BCS,366)   PART/56
      547 Relative displacement DZ(BCS,366,366)   PART/57
      548 Relative rotation AZ(BCS,366)   PART/57
      549 Relative rotation AY(BCS,366)   PART/58
      550 Relative rotation AY(BCS,366)   PART/60
      551 Relative displacement DX(BCS,366,366)   PART/61
      552 Relative displacement DY(BCS,366,366)   PART/61
      553 Relative displacement DZ(BCS,366,366)   PART/61
      554 Relative rotation AX(BCS,366)   PART/61
      555 Relative rotation AY(BCS,366)   PART/61
      556 Relative rotation AZ(BCS,366)   PART/61
      557 Relative displacement DX(BCS,366,366)   PART/62
      558 Relative displacement DY(BCS,366,366)   PART/62
      559 Relative displacement DZ(BCS,366,366)   PART/62
      560 Relative rotation AX(BCS,366)   PART/62
      561 Relative rotation AY(BCS,366)   PART/62
      562 Relative rotation AZ(BCS,366)   PART/62
      563 Relative displacement DX(BCS,366,366)   PART/63
      564 Relative displacement DY(BCS,366,366)   PART/63
      565 Relative displacement DZ(BCS,366,366)   PART/63
      566 Relative rotation AX(BCS,366)   PART/63
      567 Relative rotation AY(BCS,366)   PART/63
      568 Relative rotation AZ(BCS,366)   PART/63
      569 Relative displacement DX(BCS,366,366)   PART/64
      570 Relative displacement DY(BCS,366,366)   PART/64
      571 Relative displacement DZ(BCS,366,366)   PART/64
      572 Relative rotation AX(BCS,366)   PART/64
      573 Relative rotation AY(BCS,366)   PART/64
      574 Relative rotation AZ(BCS,366)   PART/64
      575 Relative displacement DX(BCS,366,366)   PART/65
      576 Relative displacement DY(BCS,366,366)   PART/65
      577 Relative displacement DZ(BCS,366,366)   PART/65
      578 Relative rotation AX(BCS,366)   PART/65
      579 Relative rotation AY(BCS,366)   PART/65
      580 Relative rotation AZ(BCS,366)   PART/65
      581 Relative displacement DX(BCS,366,366)   PART/66
      582 Relative displacement DY(BCS,366,366)   PART/66
      583 Relative displacement DZ(BCS,366,366)   PART/66
      584 Relative rotation AX(BCS,366)   PART/66
      585 Relative rotation AY(BCS,366)   PART/66
      586 Relative rotation AZ(BCS,366)   PART/66
      587 Relative displacement DX(BCS,366,366)   PART/67
      588 Relative displacement DY(BCS,366,366)   PART/67
      589 Relative displacement DZ(BCS,366,366)   PART/67
      590 Relative rotation AX(BCS,366)   PART/67
      591 Relative rotation AY(BCS,366)   PART/67
      592 Relative rotation AZ(BCS,366)   PART/67
      593 Relative displacement DX(BCS,366,366)   PART/68
      594 Relative displacement DY(BCS,366,366)   PART/68
      595 Relative displacement DZ(BCS,366,366)   PART/68
      596 Relative rotation AX(BCS,366)   PART/68
      597 Relative rotation AY(BCS,366)   PART/68
      598 Relative rotation AZ(BCS,366)   PART/68
      599 Relative displacement DX(BCS,366,366)   PART/69
      600 Relative displacement DY(BCS,366,366)   PART/69
      601 Relative displacement DZ(BCS,366,366)   PART/69
      602 Relative rotation AX(BCS,366)   PART/69
      603 Relative rotation AY(BCS,366)   PART/69
      604 Relative rotation AZ(BCS,366)   PART/69
      605 Relative displacement DX(BCS,366,366)   PART/70
      606 Relative displacement DY(BCS,366,366)   PART/70
      607 Relative displacement DZ(BCS,366,366)   PART/70
      608 Relative rotation AX(BCS,366)   PART/70
      609 Relative rotation AY(BCS,366)   PART/70
      610 Relative rotation AZ(BCS,366)   PART/70
      611 Relative displacement DX(BCS,366,366)   PART/71
      612 Relative displacement DY(BCS,366,366)   PART/71
      613 Relative displacement DZ(BCS,366,366)   PART/71
      614 Relative rotation AX(BCS,366)   PART/71
      615 Relative rotation AY(BCS,366)   PART/71
      616 Relative rotation AZ(BCS,366)   PART/71
      617 Relative displacement DX(BCS,366,366)   PART/73
      618 Relative displacement DY(BCS,366,366)   PART/73
      619 Relative displacement DX(BCS,366,366)   PART/74
      620 Relative displacement DY(BCS,366,366)   PART/74
      621 Relative displacement DZ(BCS,366,366)   PART/74
      622 Relative rotation AX(BCS,366)   PART/74
      623 Relative rotation AY(BCS,366)   PART/74
      624 Relative rotation AZ(BCS,366)   PART/74
      625 Relative displacement DX(BCS,366,366)   PART/75
      626 Relative displacement DY(BCS,366,366)   PART/75
      627 Relative displacement DZ(BCS,366,366)   PART/75
      628 Relative rotation AX(BCS,366)   PART/75
      629 Relative rotation AY(BCS,366)   PART/75
      630 Relative rotation AZ(BCS,366)   PART/75
      631 Relative displacement DX(BCS,366,366)   PART/76
      632 Relative displacement DY(BCS,366,366)   PART/76
      633 Relative displacement DZ(BCS,366,366)   PART/76
      634 Relative rotation AX(BCS,366)   PART/76
      635 Relative rotation AY(BCS,366)   PART/76
      636 Relative rotation AZ(BCS,366)   PART/76
      637 Relative displacement DX(BCS,366,366)   PART/77
      638 Relative displacement DY(BCS,366,366)   PART/77
      639 Relative displacement DZ(BCS,366,366)   PART/77
      640 Relative rotation AX(BCS,366)   PART/77
      641 Relative rotation AY(BCS,366)   PART/77
      642 Relative rotation AZ(BCS,366)   PART/77
      643 Relative displacement DX(BCS,366,366)   PART/78
      644 Relative displacement DY(BCS,366,366)   PART/78
      645 Relative displacement DZ(BCS,366,366)   PART/78
      646 Relative rotation AX(BCS,366)   PART/78
      647 Relative rotation AY(BCS,366)   PART/78
      648 Relative rotation AZ(BCS,366)   PART/78
      649 Relative displacement DX(BCS,366,366)   PART/79
      650 Relative displacement DY(BCS,366,366)   PART/79
      651 Relative displacement DZ(BCS,366,366)   PART/79
      652 Relative rotation AX(BCS,366)   PART/79
      653 Relative rotation AY(BCS,366)   PART/79
      654 Relative rotation AZ(BCS,366)   PART/79
      655 Relative displacement DX(BCS,366,366)   PART/80
      656 Relative displacement DY(BCS,366,366)   PART/80
      657 Relative displacement DZ(BCS,366,366)   PART/80
      658 Relative rotation AX(BCS,366)   PART/80
      659 Relative rotation AY(BCS,366)   PART/80
      660 Relative rotation AZ(BCS,366)   PART/80
      661 Relative displacement DX(BCS,366,366)   PART/81
      662 Relative displacement DY(BCS,366,366)   PART/81
      663 Relative displacement DZ(BCS,366,366)   PART/81
      664 Relative rotation AX(BCS,366)   PART/81
      665 Relative rotation AY(BCS,366)   PART/81
      666 Relative rotation AZ(BCS,366)   PART/81
      667 Relative displacement DX(BCS,366,366)   PART/82
      668 Relative displacement DY(BCS,366,366)   PART/82
      669 Relative displacement DZ(BCS,366,366)   PART/82
      670 Relative rotation AX(BCS,366)   PART/82
      671 Relative rotation AY(BCS,366)   PART/82
      672 Relative rotation AZ(BCS,366)   PART/82
      673 Relative displacement DX(BCS,366,366)   PART/83
      674 Relative displacement DY(BCS,366,366)   PART/83
      675 Relative displacement DZ(BCS,366,366)   PART/83
      676 Relative rotation AY(BCS,366)   PART/83
      677 Relative rotation AZ(BCS,366)   PART/83
      678 Relative rotation AX(BCS,366)   PART/84
      679 Relative displacement DZ(BCS,366,366)   PART/86
      680 Relative rotation AX(BCS,366)   PART/86
      681 Relative rotation AY(BCS,366)   PART/86
      682 Relative rotation AZ(BCS,366)   PART/86
      683 Relative displacement DX(BCS,366,366)   PART/87
      684 Relative displacement DY(BCS,366,366)   PART/87
      685 Relative displacement DZ(BCS,366,366)   PART/87
      686 Relative rotation AY(BCS,366)   PART/87
      687 Relative rotation AZ(BCS,366)   PART/87
      688 Relative displacement DX(BCS,366,366)   PART/88
      689 Relative displacement DZ(BCS,366,366)   PART/88
      690 Relative rotation AZ(BCS,366)   PART/88
      691 Relative displacement DY(BCS,366,366)   PART/89
      692 Relative rotation AZ(BCS,366)   PART/89
      693 Relative displacement DX(BCS,366,366)   PART/90
      694 Relative displacement DY(BCS,366,366)   PART/90
      695 Relative displacement DZ(BCS,366,366)   PART/90
      696 Relative rotation AX(BCS,366)   PART/90
      697 Relative rotation AY(BCS,366)   PART/90
      698 Relative rotation AZ(BCS,366)   PART/90
      699 Relative displacement DX(BCS,366,366)   PART/91
      700 Relative displacement DY(BCS,366,366)   PART/91
      701 Relative displacement DZ(BCS,366,366)   PART/91
      702 Relative rotation AX(BCS,366)   PART/91
      703 Relative rotation AY(BCS,366)   PART/91
      704 Relative rotation AZ(BCS,366)   PART/91
      705 Relative displacement DX(BCS,366,366)   PART/92
      706 Relative displacement DY(BCS,366,366)   PART/92
      707 Relative displacement DZ(BCS,366,366)   PART/92
      708 Relative rotation AX(BCS,366)   PART/92
      709 Relative rotation AY(BCS,366)   PART/92
      710 Relative rotation AZ(BCS,366)   PART/92
      711 Relative displacement DX(BCS,366,366)   PART/93
      712 Relative displacement DY(BCS,366,366)   PART/93
      713 Relative displacement DX(BCS,366,366)   PART/94
      714 Relative displacement DY(BCS,366,366)   PART/94
      715 Relative displacement DZ(BCS,366,366)   PART/94
      716 Relative rotation AX(BCS,366)   PART/94
      717 Relative rotation AY(BCS,366)   PART/94
      718 Relative rotation AZ(BCS,366)   PART/94
      719 Relative displacement DX(BCS,366,366)   PART/95
      720 Relative displacement DY(BCS,366,366)   PART/95
      721 Relative displacement DZ(BCS,366,366)   PART/95
      722 Relative rotation AX(BCS,366)   PART/95
      723 Relative rotation AY(BCS,366)   PART/95
      724 Relative rotation AZ(BCS,366)   PART/95
      725 Relative displacement DY(BCS,366,366)   PART/96
      726 Relative rotation AX(BCS,366)   PART/96
      727 Relative rotation AY(BCS,366)   PART/96
      728 Relative rotation AX(BCS,366)   PART/97
      729 Relative displacement DX(BCS,366,366)   PART/98
      730 Relative displacement DY(BCS,366,366)   PART/98
      731 Relative displacement DZ(BCS,366,366)   PART/98
      732 Relative rotation AX(BCS,366)   PART/98
      733 Relative rotation AY(BCS,366)   PART/98
      734 Relative rotation AZ(BCS,366)   PART/98
      735 Relative displacement DX(BCS,366,366)   PART/99
      736 Relative displacement DY(BCS,366,366)   PART/99
      737 Relative displacement DZ(BCS,366,366)   PART/99
      738 Relative rotation AX(BCS,366)   PART/99
      739 Relative rotation AY(BCS,366)   PART/99
      740 Relative rotation AZ(BCS,366)   PART/99
      741 Relative displacement DY(BCS,366,366)   PART/100
      742 Relative rotation AX(BCS,366)   PART/100
      743 Relative displacement DX(BCS,366,366)   PART/103
      744 Relative displacement DX(BCS,366,366)   PART/105
      745 Relative displacement DY(BCS,366,366)   PART/105
      746 Relative rotation AZ(BCS,366)   PART/105
      747 Relative displacement DX(BCS,366,366)   PART/106
      748 Relative displacement DY(BCS,366,366)   PART/106
      749 Relative rotation AZ(BCS,366)   PART/106
      750 Relative displacement DX(BCS,366,366)   PART/107
      751 Relative displacement DY(BCS,366,366)   PART/107
      752 Relative rotation AZ(BCS,366)   PART/107
      753 Relative displacement DX(BCS,366,366)   PART/108
      754 Relative displacement DY(BCS,366,366)   PART/108
      755 Relative rotation AZ(BCS,366)   PART/108
      756 Relative displacement DX(BCS,366,366)   PART/109
      757 Relative displacement DY(BCS,366,366)   PART/109
      758 Relative rotation AZ(BCS,366)   PART/109
      759 Relative displacement DX(BCS,366,366)   PART/110
      760 Relative displacement DY(BCS,366,366)   PART/110
      761 Relative rotation AZ(BCS,366)   PART/110
      762 Relative displacement DX(BCS,366,366)   PART/111
      763 Relative displacement DY(BCS,366,366)   PART/111
      764 Relative rotation AZ(BCS,366)   PART/111
      765 Relative displacement DX(BCS,366,366)   PART/112
      766 Relative displacement DY(BCS,366,366)   PART/112
      767 Relative rotation AZ(BCS,366)   PART/112
      768 Relative displacement DX(BCS,366,366)   PART/113
      769 Relative displacement DY(BCS,366,366)   PART/113
      770 Relative rotation AZ(BCS,366)   PART/113
      771 Relative displacement DX(BCS,366,366)   PART/114
      772 Relative displacement DY(BCS,366,366)   PART/114
      773 Relative rotation AZ(BCS,366)   PART/114
      774 Relative displacement DX(BCS,366,366)   PART/115
      775 Relative displacement DY(BCS,366,366)   PART/115
      776 Relative rotation AZ(BCS,366)   PART/115
      777 Relative displacement DX(BCS,366,366)   PART/116
      778 Relative displacement DY(BCS,366,366)   PART/116
      779 Relative rotation AZ(BCS,366)   PART/116
      780 Relative displacement DX(BCS,366,366)   PART/117
      781 Relative displacement DY(BCS,366,366)   PART/117
      782 Relative rotation AZ(BCS,366)   PART/117
      783 Relative displacement DX(BCS,366,366)   PART/118
      784 Relative displacement DY(BCS,366,366)   PART/118
      785 Relative rotation AZ(BCS,366)   PART/118
      786 Relative displacement DX(BCS,366,366)   PART/119
      787 Relative displacement DY(BCS,366,366)   PART/119
      788 Relative rotation AZ(BCS,366)   PART/119
      789 Relative displacement DX(BCS,366,366)   PART/120
      790 Relative displacement DY(BCS,366,366)   PART/120
      791 Relative rotation AZ(BCS,366)   PART/120
      792 Relative displacement DX(BCS,366,366)   PART/121
      793 Relative displacement DY(BCS,366,366)   PART/121
      794 Relative rotation AZ(BCS,366)   PART/121
      795 Relative displacement DX(BCS,366,366)   PART/122
      796 Relative displacement DY(BCS,366,366)   PART/122
      797 Relative rotation AZ(BCS,366)   PART/122
      798 Relative displacement DX(BCS,366,366)   PART/123
      799 Relative displacement DY(BCS,366,366)   PART/123
      800 Relative rotation AZ(BCS,366)   PART/123
      801 Relative displacement DX(BCS,366,366)   PART/124
      802 Relative displacement DY(BCS,366,366)   PART/124
      803 Relative rotation AZ(BCS,366)   PART/124
      804 Relative displacement DX(BCS,366,366)   PART/125
      805 Relative displacement DY(BCS,366,366)   PART/125
      806 Relative rotation AZ(BCS,366)   PART/125
      807 Relative displacement DX(BCS,366,366)   PART/126
      808 Relative displacement DY(BCS,366,366)   PART/126
      809 Relative rotation AZ(BCS,366)   PART/126
      810 Relative displacement DX(BCS,366,366)   PART/127
      811 Relative displacement DY(BCS,366,366)   PART/127
      812 Relative rotation AZ(BCS,366)   PART/127
      813 Relative displacement DX(BCS,366,366)   PART/128
      814 Relative displacement DY(BCS,366,366)   PART/128
      815 Relative rotation AZ(BCS,366)   PART/128
      816 Relative displacement DX(BCS,366,366)   PART/129
      817 Relative displacement DY(BCS,366,366)   PART/129
      818 Relative rotation AZ(BCS,366)   PART/129
      819 Relative displacement DX(BCS,366,366)   PART/130
      820 Relative displacement DY(BCS,366,366)   PART/130
      821 Relative rotation AZ(BCS,366)   PART/130
      822 Relative displacement DX(BCS,366,366)   PART/131
      823 Relative displacement DY(BCS,366,366)   PART/131
      824 Relative rotation AZ(BCS,366)   PART/131
      825 Relative displacement DX(BCS,366,366)   PART/132
      826 Relative displacement DY(BCS,366,366)   PART/132
      827 Relative rotation AZ(BCS,366)   PART/132
      828 Relative displacement DX(BCS,366,366)   PART/133
      829 Relative displacement DY(BCS,366,366)   PART/133
      830 Relative rotation AZ(BCS,366)   PART/133
      831 Relative displacement DX(BCS,366,366)   PART/134
      832 Relative displacement DY(BCS,366,366)   PART/134
      833 Relative rotation AZ(BCS,366)   PART/134
      834 Relative displacement DX(BCS,366,366)   PART/135
      835 Relative displacement DY(BCS,366,366)   PART/135
      836 Relative rotation AZ(BCS,366)   PART/135
      837 Relative displacement DX(BCS,366,366)   PART/136
      838 Relative displacement DY(BCS,366,366)   PART/136
      839 Relative rotation AZ(BCS,366)   PART/136
      840 Relative displacement DX(BCS,366,366)   PART/137
      841 Relative displacement DY(BCS,366,366)   PART/137
      842 Relative rotation AZ(BCS,366)   PART/137
      843 Relative displacement DX(BCS,366,366)   PART/138
      844 Relative displacement DY(BCS,366,366)   PART/138
      845 Relative rotation AZ(BCS,366)   PART/138
      846 Relative displacement DX(BCS,366,366)   PART/139
      847 Relative displacement DY(BCS,366,366)   PART/139
      848 Relative rotation AZ(BCS,366)   PART/139
      849 Relative displacement DX(BCS,366,366)   PART/140
      850 Relative displacement DY(BCS,366,366)   PART/140
      851 Relative rotation AZ(BCS,366)   PART/140
      852 Relative displacement DX(BCS,366,366)   PART/141
      853 Relative displacement DY(BCS,366,366)   PART/141
      854 Relative rotation AZ(BCS,366)   PART/141
      855 Relative displacement DX(BCS,366,366)   PART/142
      856 Relative displacement DY(BCS,366,366)   PART/142
      857 Relative rotation AZ(BCS,366)   PART/142
      858 Relative displacement DX(BCS,366,366)   PART/143
      859 Relative displacement DY(BCS,366,366)   PART/143
      860 Relative rotation AZ(BCS,366)   PART/143
      861 Relative displacement DX(BCS,366,366)   PART/144
      862 Relative displacement DY(BCS,366,366)   PART/144
      863 Relative rotation AZ(BCS,366)   PART/144
      864 Relative displacement DX(BCS,366,366)   PART/145
      865 Relative displacement DY(BCS,366,366)   PART/145
      866 Relative rotation AZ(BCS,366)   PART/145
      867 Relative displacement DX(BCS,366,366)   PART/146
      868 Relative displacement DY(BCS,366,366)   PART/146
      869 Relative rotation AZ(BCS,366)   PART/146
      870 Relative displacement DX(BCS,366,366)   PART/147
      871 Relative displacement DY(BCS,366,366)   PART/147
      872 Relative rotation AZ(BCS,366)   PART/147
      873 Relative displacement DX(BCS,366,366)   PART/148
      874 Relative displacement DY(BCS,366,366)   PART/148
      875 Relative rotation AZ(BCS,366)   PART/148
      876 Relative displacement DX(BCS,366,366)   PART/149
      877 Relative displacement DY(BCS,366,366)   PART/149
      878 Relative rotation AZ(BCS,366)   PART/149
      879 Relative displacement DX(BCS,366,366)   PART/150
      880 Relative displacement DY(BCS,366,366)   PART/150
      881 Relative rotation AZ(BCS,366)   PART/150
      882 Relative displacement DX(BCS,366,366)   PART/151
      883 Relative displacement DY(BCS,366,366)   PART/151
      884 Relative rotation AZ(BCS,366)   PART/151
      885 Relative displacement DX(BCS,366,366)   PART/152
      886 Relative displacement DY(BCS,366,366)   PART/152
      887 Relative rotation AZ(BCS,366)   PART/152
      888 Relative displacement DX(BCS,366,366)   PART/153
      889 Relative displacement DY(BCS,366,366)   PART/153
      890 Relative rotation AZ(BCS,366)   PART/153
      891 Relative displacement DX(BCS,366,366)   PART/154
      892 Relative displacement DY(BCS,366,366)   PART/154
      893 Relative rotation AZ(BCS,366)   PART/154
      894 Relative displacement DX(BCS,366,366)   PART/155
      895 Relative displacement DY(BCS,366,366)   PART/155
      896 Relative rotation AZ(BCS,366)   PART/155
      897 Relative displacement DX(BCS,366,366)   PART/156
      898 Relative displacement DY(BCS,366,366)   PART/156
      899 Relative rotation AZ(BCS,366)   PART/156
      900 Relative displacement DX(BCS,366,366)   PART/157
      901 Relative displacement DY(BCS,366,366)   PART/157
      902 Relative rotation AZ(BCS,366)   PART/157
      903 Relative displacement DX(BCS,366,366)   PART/158
      904 Relative displacement DY(BCS,366,366)   PART/158
      905 Relative rotation AZ(BCS,366)   PART/158
      906 Relative displacement DX(BCS,366,366)   PART/159
      907 Relative displacement DY(BCS,366,366)   PART/159
      908 Relative rotation AZ(BCS,366)   PART/159
      909 Relative displacement DX(BCS,366,366)   PART/160
      910 Relative displacement DY(BCS,366,366)   PART/160
      911 Relative rotation AZ(BCS,366)   PART/160
      912 Relative displacement DX(BCS,366,366)   PART/161
      913 Relative displacement DY(BCS,366,366)   PART/161
      914 Relative rotation AZ(BCS,366)   PART/161
      915 Relative displacement DX(BCS,366,366)   PART/162
      916 Relative displacement DY(BCS,366,366)   PART/162
      917 Relative rotation AZ(BCS,366)   PART/162
      918 Relative displacement DX(BCS,366,366)   PART/163
      919 Relative displacement DY(BCS,366,366)   PART/163
      920 Relative rotation AZ(BCS,366)   PART/163
      921 Relative displacement DX(BCS,366,366)   PART/164
      922 Relative displacement DY(BCS,366,366)   PART/164
      923 Relative rotation AZ(BCS,366)   PART/164
      924 Relative displacement DX(BCS,366,366)   PART/165
      925 Relative displacement DY(BCS,366,366)   PART/165
      926 Relative rotation AZ(BCS,366)   PART/165
      927 Relative displacement DX(BCS,366,366)   PART/166
      928 Relative displacement DY(BCS,366,366)   PART/166
      929 Relative rotation AZ(BCS,366)   PART/166
      930 Relative displacement DX(BCS,366,366)   PART/167
      931 Relative displacement DY(BCS,366,366)   PART/167
      932 Relative rotation AZ(BCS,366)   PART/167
      933 Relative displacement DX(BCS,366,366)   PART/168
      934 Relative displacement DY(BCS,366,366)   PART/168
      935 Relative rotation AZ(BCS,366)   PART/168
      936 Relative displacement DX(BCS,366,366)   PART/169
      937 Relative displacement DY(BCS,366,366)   PART/169
      938 Relative rotation AZ(BCS,366)   PART/169
      939 Relative displacement DX(BCS,366,366)   PART/170
      940 Relative displacement DY(BCS,366,366)   PART/170
      941 Relative rotation AZ(BCS,366)   PART/170
      942 Relative displacement DX(BCS,366,366)   PART/171
      943 Relative displacement DY(BCS,366,366)   PART/171
      944 Relative rotation AZ(BCS,366)   PART/171
      945 Relative displacement DX(BCS,366,366)   PART/172
      946 Relative displacement DY(BCS,366,366)   PART/172
      947 Relative rotation AZ(BCS,366)   PART/172
      948 Relative displacement DX(BCS,366,366)   PART/173
      949 Relative displacement DY(BCS,366,366)   PART/173
      950 Relative rotation AZ(BCS,366)   PART/173
      951 Relative displacement DX(BCS,366,366)   PART/174
      952 Relative displacement DY(BCS,366,366)   PART/174
      953 Relative rotation AZ(BCS,366)   PART/174
      954 Relative displacement DX(BCS,366,366)   PART/175
      955 Relative displacement DY(BCS,366,366)   PART/175
      956 Relative rotation AZ(BCS,366)   PART/175
      957 Relative displacement DX(BCS,366,366)   PART/176
      958 Relative displacement DY(BCS,366,366)   PART/176
      959 Relative rotation AZ(BCS,366)   PART/176
      960 Relative displacement DX(BCS,366,366)   PART/177
      961 Relative displacement DY(BCS,366,366)   PART/177
      962 Relative rotation AY(BCS,366)   PART/177
      963 Relative rotation AZ(BCS,366)   PART/177
      964 Relative displacement DX(BCS,366,366)   PART/178
      965 Relative displacement DY(BCS,366,366)   PART/178
      966 Relative rotation AZ(BCS,366)   PART/178
      967 Relative displacement DX(BCS,366,366)   PART/179
      968 Relative displacement DY(BCS,366,366)   PART/179
      969 Relative rotation AZ(BCS,366)   PART/179
      970 Relative displacement DX(BCS,366,366)   PART/180
      971 Relative displacement DY(BCS,366,366)   PART/180
      972 Relative rotation AZ(BCS,366)   PART/180
      973 Relative displacement DX(BCS,366,366)   PART/181
      974 Relative displacement DY(BCS,366,366)   PART/181
      975 Relative rotation AZ(BCS,366)   PART/181
      976 Relative displacement DX(BCS,366,366)   PART/182
      977 Relative displacement DY(BCS,366,366)   PART/182
      978 Relative rotation AZ(BCS,366)   PART/182
      979 Relative displacement DX(BCS,366,366)   PART/183
      980 Relative displacement DY(BCS,366,366)   PART/183
      981 Relative rotation AZ(BCS,366)   PART/183
      982 Relative displacement DX(BCS,366,366)   PART/184
      983 Relative displacement DY(BCS,366,366)   PART/184
      984 Relative rotation AZ(BCS,366)   PART/184
      985 Relative displacement DX(BCS,366,366)   PART/185
      986 Relative displacement DY(BCS,366,366)   PART/185
      987 Relative rotation AZ(BCS,366)   PART/185
      988 Relative displacement DX(BCS,366,366)   PART/186
      989 Relative displacement DY(BCS,366,366)   PART/186
      990 Relative rotation AZ(BCS,366)   PART/186
      991 Relative displacement DX(BCS,366,366)   PART/187
      992 Relative displacement DY(BCS,366,366)   PART/187
      993 Relative rotation AZ(BCS,366)   PART/187
      994 Relative displacement DX(BCS,366,366)   PART/188
      995 Relative displacement DY(BCS,366,366)   PART/188
      996 Relative rotation AZ(BCS,366)   PART/188
      997 Relative displacement DX(BCS,366,366)   PART/189
      998 Relative displacement DY(BCS,366,366)   PART/189
      999 Relative rotation AZ(BCS,366)   PART/189
     1000 Relative displacement DX(BCS,366,366)   PART/190
     1001 Relative displacement DY(BCS,366,366)   PART/190
     1002 Relative rotation AZ(BCS,366)   PART/190
     1003 Relative displacement DX(BCS,366,366)   PART/191
     1004 Relative displacement DY(BCS,366,366)   PART/191
     1005 Relative rotation AZ(BCS,366)   PART/191
     1006 Relative displacement DX(BCS,366,366)   PART/192
     1007 Relative displacement DY(BCS,366,366)   PART/192
     1008 Relative rotation AZ(BCS,366)   PART/192
     1009 Relative displacement DX(BCS,366,366)   PART/193
     1010 Relative displacement DY(BCS,366,366)   PART/193
     1011 Relative rotation AZ(BCS,366)   PART/193
     1012 Relative displacement DX(BCS,366,366)   PART/194
     1013 Relative displacement DY(BCS,366,366)   PART/194
     1014 Relative rotation AZ(BCS,366)   PART/194
     1015 Relative displacement DX(BCS,366,366)   PART/195
     1016 Relative displacement DY(BCS,366,366)   PART/195
     1017 Relative rotation AZ(BCS,366)   PART/195
     1018 Relative displacement DX(BCS,366,366)   PART/196
     1019 Relative displacement DY(BCS,366,366)   PART/196
     1020 Relative rotation AZ(BCS,366)   PART/196
     1021 Relative displacement DX(BCS,366,366)   PART/197
     1022 Relative displacement DY(BCS,366,366)   PART/197
     1023 Relative rotation AZ(BCS,366)   PART/197
     1024 Relative displacement DX(BCS,366,366)   PART/198
     1025 Relative displacement DY(BCS,366,366)   PART/198
     1026 Relative rotation AZ(BCS,366)   PART/198
     1027 Relative displacement DX(BCS,366,366)   PART/199
     1028 Relative displacement DY(BCS,366,366)   PART/199
     1029 Relative rotation AZ(BCS,366)   PART/199
     1030 Relative displacement DX(BCS,366,366)   PART/200
     1031 Relative displacement DY(BCS,366,366)   PART/200
     1032 Relative rotation AZ(BCS,366)   PART/200
     1033 Relative displacement DX(BCS,366,366)   PART/201
     1034 Relative displacement DY(BCS,366,366)   PART/201
     1035 Relative rotation AZ(BCS,366)   PART/201
     1036 Relative displacement DX(BCS,366,366)   PART/202
     1037 Relative displacement DY(BCS,366,366)   PART/202
     1038 Relative rotation AZ(BCS,366)   PART/202
     1039 Relative displacement DX(BCS,366,366)   PART/203
     1040 Relative displacement DY(BCS,366,366)   PART/203
     1041 Relative rotation AZ(BCS,366)   PART/203
     1042 Relative displacement DX(BCS,366,366)   PART/204
     1043 Relative displacement DY(BCS,366,366)   PART/204
     1044 Relative rotation AZ(BCS,366)   PART/204
     1045 Relative displacement DX(BCS,366,366)   PART/205
     1046 Relative displacement DY(BCS,366,366)   PART/205
     1047 Relative rotation AZ(BCS,366)   PART/205
     1048 Relative displacement DX(BCS,366,366)   PART/206
     1049 Relative displacement DY(BCS,366,366)   PART/206
     1050 Relative rotation AZ(BCS,366)   PART/206
     1051 Relative displacement DX(BCS,366,366)   PART/207
     1052 Relative displacement DY(BCS,366,366)   PART/207
     1053 Relative rotation AZ(BCS,366)   PART/207
     1054 Relative displacement DX(BCS,366,366)   PART/208
     1055 Relative displacement DY(BCS,366,366)   PART/208
     1056 Relative rotation AZ(BCS,366)   PART/208
     1057 Relative displacement DX(BCS,366,366)   PART/209
     1058 Relative displacement DY(BCS,366,366)   PART/209
     1059 Relative rotation AX(BCS,366)   PART/209
     1060 Relative rotation AZ(BCS,366)   PART/209
     1061 Relative displacement DX(BCS,366,366)   PART/210
     1062 Relative displacement DY(BCS,366,366)   PART/210
     1063 Relative rotation AZ(BCS,366)   PART/210
     1064 Relative displacement DX(BCS,366,366)   PART/211
     1065 Relative displacement DY(BCS,366,366)   PART/211
     1066 Relative rotation AZ(BCS,366)   PART/211
     1067 Relative displacement DX(BCS,366,366)   PART/212
     1068 Relative displacement DY(BCS,366,366)   PART/212
     1069 Relative rotation AZ(BCS,366)   PART/212
     1070 Relative displacement DX(BCS,366,366)   PART/213
     1071 Relative displacement DY(BCS,366,366)   PART/213
     1072 Relative rotation AZ(BCS,366)   PART/213
     1073 Relative displacement DX(BCS,366,366)   PART/214
     1074 Relative displacement DY(BCS,366,366)   PART/214
     1075 Relative rotation AZ(BCS,366)   PART/214
     1076 Relative displacement DX(BCS,366,366)   PART/215
     1077 Relative displacement DY(BCS,366,366)   PART/215
     1078 Relative rotation AZ(BCS,366)   PART/215
     1079 Relative displacement DX(BCS,366,366)   PART/216
     1080 Relative displacement DY(BCS,366,366)   PART/216
     1081 Relative rotation AZ(BCS,366)   PART/216
     1082 Relative displacement DX(BCS,366,366)   PART/217
     1083 Relative displacement DY(BCS,366,366)   PART/217
     1084 Relative rotation AZ(BCS,366)   PART/217
     1085 Relative displacement DX(BCS,366,366)   PART/218
     1086 Relative displacement DY(BCS,366,366)   PART/218
     1087 Relative rotation AZ(BCS,366)   PART/218
     1088 Relative displacement DX(BCS,366,366)   PART/219
     1089 Relative displacement DY(BCS,366,366)   PART/219
     1090 Relative rotation AZ(BCS,366)   PART/219
     1091 Relative displacement DX(BCS,366,366)   PART/220
     1092 Relative displacement DY(BCS,366,366)   PART/220
     1093 Relative rotation AZ(BCS,366)   PART/220
     1094 Relative displacement DX(BCS,366,366)   PART/221
     1095 Relative displacement DY(BCS,366,366)   PART/221
     1096 Relative rotation AZ(BCS,366)   PART/221
     1097 Relative displacement DX(BCS,366,366)   PART/222
     1098 Relative displacement DY(BCS,366,366)   PART/222
     1099 Relative rotation AZ(BCS,366)   PART/222
     1100 Relative displacement DX(BCS,366,366)   PART/223
     1101 Relative displacement DY(BCS,366,366)   PART/223
     1102 Relative rotation AZ(BCS,366)   PART/223
     1103 Relative displacement DX(BCS,366,366)   PART/224
     1104 Relative displacement DY(BCS,366,366)   PART/224
     1105 Relative rotation AZ(BCS,366)   PART/224
     1106 Relative displacement DX(BCS,366,366)   PART/225
     1107 Relative displacement DY(BCS,366,366)   PART/225
     1108 Relative rotation AZ(BCS,366)   PART/225
     1109 Relative displacement DX(BCS,366,366)   PART/226
     1110 Relative displacement DY(BCS,366,366)   PART/226
     1111 Relative rotation AZ(BCS,366)   PART/226
     1112 Relative displacement DX(BCS,366,366)   PART/227
     1113 Relative displacement DY(BCS,366,366)   PART/227
     1114 Relative rotation AZ(BCS,366)   PART/227
     1115 Relative displacement DX(BCS,366,366)   PART/228
     1116 Relative displacement DY(BCS,366,366)   PART/228
     1117 Relative rotation AZ(BCS,366)   PART/228
     1118 Relative displacement DX(BCS,366,366)   PART/229
     1119 Relative displacement DY(BCS,366,366)   PART/229
     1120 Relative rotation AZ(BCS,366)   PART/229
     1121 Relative displacement DX(BCS,366,366)   PART/230
     1122 Relative displacement DY(BCS,366,366)   PART/230
     1123 Relative rotation AZ(BCS,366)   PART/230
     1124 Relative displacement DX(BCS,366,366)   PART/231
     1125 Relative displacement DY(BCS,366,366)   PART/231
     1126 Relative rotation AZ(BCS,366)   PART/231
     1127 Relative displacement DX(BCS,366,366)   PART/232
     1128 Relative displacement DY(BCS,366,366)   PART/232
     1129 Relative rotation AZ(BCS,366)   PART/232
     1130 Relative displacement DX(BCS,366,366)   PART/233
     1131 Relative displacement DY(BCS,366,366)   PART/233
     1132 Relative rotation AZ(BCS,366)   PART/233
     1133 Relative displacement DX(BCS,366,366)   PART/234
     1134 Relative displacement DY(BCS,366,366)   PART/234
     1135 Relative rotation AZ(BCS,366)   PART/234
     1136 Relative displacement DX(BCS,366,366)   PART/235
     1137 Relative displacement DY(BCS,366,366)   PART/235
     1138 Relative rotation AZ(BCS,366)   PART/235
     1139 Relative displacement DX(BCS,366,366)   PART/236
     1140 Relative displacement DY(BCS,366,366)   PART/236
     1141 Relative rotation AZ(BCS,366)   PART/236
     1142 Relative displacement DX(BCS,366,366)   PART/237
     1143 Relative displacement DY(BCS,366,366)   PART/237
     1144 Relative rotation AZ(BCS,366)   PART/237
     1145 Relative displacement DX(BCS,366,366)   PART/238
     1146 Relative displacement DY(BCS,366,366)   PART/238
     1147 Relative rotation AZ(BCS,366)   PART/238
     1148 Relative displacement DX(BCS,366,366)   PART/239
     1149 Relative displacement DY(BCS,366,366)   PART/239
     1150 Relative rotation AZ(BCS,366)   PART/239
     1151 Relative displacement DX(BCS,366,366)   PART/240
     1152 Relative displacement DY(BCS,366,366)   PART/240
     1153 Relative rotation AZ(BCS,366)   PART/240
     1154 Relative displacement DX(BCS,366,366)   PART/241
     1155 Relative displacement DY(BCS,366,366)   PART/241
     1156 Relative rotation AZ(BCS,366)   PART/241
     1157 Relative displacement DX(BCS,366,366)   PART/242
     1158 Relative displacement DY(BCS,366,366)   PART/242
     1159 Relative rotation AZ(BCS,366)   PART/242
     1160 Relative displacement DX(BCS,366,366)   PART/243
     1161 Relative displacement DY(BCS,366,366)   PART/243
     1162 Relative rotation AZ(BCS,366)   PART/243
     1163 Relative displacement DX(BCS,366,366)   PART/244
     1164 Relative displacement DY(BCS,366,366)   PART/244
     1165 Relative rotation AZ(BCS,366)   PART/244
     1166 Relative displacement DX(BCS,366,366)   PART/245
     1167 Relative displacement DY(BCS,366,366)   PART/245
     1168 Relative rotation AZ(BCS,366)   PART/245
     1169 Relative displacement DX(BCS,366,366)   PART/246
     1170 Relative displacement DY(BCS,366,366)   PART/246
     1171 Relative rotation AZ(BCS,366)   PART/246
     1172 Relative displacement DX(BCS,366,366)   PART/247
     1173 Relative displacement DY(BCS,366,366)   PART/247
     1174 Relative rotation AZ(BCS,366)   PART/247
     1175 Relative displacement DX(BCS,366,366)   PART/248
     1176 Relative displacement DY(BCS,366,366)   PART/248
     1177 Relative rotation AZ(BCS,366)   PART/248
     1178 Relative displacement DX(BCS,366,366)   PART/249
     1179 Relative displacement DY(BCS,366,366)   PART/249
     1180 Relative rotation AZ(BCS,366)   PART/249
     1181 Relative displacement DX(BCS,366,366)   PART/250
     1182 Relative displacement DY(BCS,366,366)   PART/250
     1183 Relative rotation AZ(BCS,366)   PART/250
     1184 Relative displacement DX(BCS,366,366)   PART/251
     1185 Relative displacement DY(BCS,366,366)   PART/251
     1186 Relative rotation AZ(BCS,366)   PART/251
     1187 Relative displacement DX(BCS,366,366)   PART/252
     1188 Relative displacement DY(BCS,366,366)   PART/252
     1189 Relative rotation AZ(BCS,366)   PART/252
     1190 Relative displacement DX(BCS,366,366)   PART/253
     1191 Relative displacement DY(BCS,366,366)   PART/253
     1192 Relative rotation AZ(BCS,366)   PART/253
     1193 Relative displacement DX(BCS,366,366)   PART/254
     1194 Relative displacement DY(BCS,366,366)   PART/254
     1195 Relative rotation AZ(BCS,366)   PART/254
     1196 Relative displacement DX(BCS,366,366)   PART/255
     1197 Relative displacement DY(BCS,366,366)   PART/255
     1198 Relative rotation AZ(BCS,366)   PART/255
     1199 Relative displacement DX(BCS,366,366)   PART/256
     1200 Relative displacement DY(BCS,366,366)   PART/256
     1201 Relative rotation AZ(BCS,366)   PART/256
     1202 Relative displacement DX(BCS,366,366)   PART/257
     1203 Relative displacement DY(BCS,366,366)   PART/257
     1204 Relative rotation AZ(BCS,366)   PART/257
     1205 Relative displacement DX(BCS,366,366)   PART/258
     1206 Relative displacement DY(BCS,366,366)   PART/258
     1207 Relative rotation AZ(BCS,366)   PART/258
     1208 Relative displacement DX(BCS,366,366)   PART/259
     1209 Relative displacement DY(BCS,366,366)   PART/259
     1210 Relative rotation AZ(BCS,366)   PART/259
     1211 Relative displacement DX(BCS,366,366)   PART/260
     1212 Relative displacement DY(BCS,366,366)   PART/260
     1213 Relative rotation AZ(BCS,366)   PART/260
     1214 Relative displacement DX(BCS,366,366)   PART/261
     1215 Relative displacement DY(BCS,366,366)   PART/261
     1216 Relative rotation AZ(BCS,366)   PART/261
     1217 Relative displacement DX(BCS,366,366)   PART/262
     1218 Relative displacement DY(BCS,366,366)   PART/262
     1219 Relative rotation AZ(BCS,366)   PART/262
     1220 Relative displacement DX(BCS,366,366)   PART/263
     1221 Relative displacement DY(BCS,366,366)   PART/263
     1222 Relative rotation AZ(BCS,366)   PART/263
     1223 Relative displacement DX(BCS,366,366)   PART/264
     1224 Relative displacement DY(BCS,366,366)   PART/264
     1225 Relative rotation AZ(BCS,366)   PART/264
     1226 Relative displacement DX(BCS,366,366)   PART/265
     1227 Relative displacement DY(BCS,366,366)   PART/265
     1228 Relative rotation AZ(BCS,366)   PART/265
     1229 Relative displacement DX(BCS,366,366)   PART/266
     1230 Relative displacement DY(BCS,366,366)   PART/266
     1231 Relative rotation AZ(BCS,366)   PART/266
     1232 Relative displacement DX(BCS,366,366)   PART/267
     1233 Relative displacement DY(BCS,366,366)   PART/267
     1234 Relative rotation AZ(BCS,366)   PART/267
     1235 Relative displacement DX(BCS,366,366)   PART/268
     1236 Relative displacement DY(BCS,366,366)   PART/268
     1237 Relative rotation AZ(BCS,366)   PART/268
     1238 Relative displacement DX(BCS,366,366)   PART/269
     1239 Relative displacement DY(BCS,366,366)   PART/269
     1240 Relative rotation AZ(BCS,366)   PART/269
     1241 Relative displacement DX(BCS,366,366)   PART/270
     1242 Relative displacement DY(BCS,366,366)   PART/270
     1243 Relative rotation AZ(BCS,366)   PART/270
     1244 Relative displacement DX(BCS,366,366)   PART/271
     1245 Relative displacement DY(BCS,366,366)   PART/271
     1246 Relative rotation AZ(BCS,366)   PART/271
     1247 Relative displacement DX(BCS,366,366)   PART/272
     1248 Relative displacement DY(BCS,366,366)   PART/272
     1249 Relative rotation AZ(BCS,366)   PART/272
     1250 Relative displacement DX(BCS,366,366)   PART/273
     1251 Relative displacement DY(BCS,366,366)   PART/273
     1252 Relative rotation AZ(BCS,366)   PART/273
     1253 Relative displacement DX(BCS,366,366)   PART/274
     1254 Relative displacement DY(BCS,366,366)   PART/274
     1255 Relative rotation AZ(BCS,366)   PART/274
     1256 Relative displacement DX(BCS,366,366)   PART/275
     1257 Relative displacement DY(BCS,366,366)   PART/275
     1258 Relative rotation AZ(BCS,366)   PART/275
     1259 Relative displacement DX(BCS,366,366)   PART/276
     1260 Relative displacement DY(BCS,366,366)   PART/276
     1261 Relative rotation AZ(BCS,366)   PART/276
     1262 Relative displacement DX(BCS,366,366)   PART/277
     1263 Relative displacement DY(BCS,366,366)   PART/277
     1264 Relative rotation AZ(BCS,366)   PART/277
     1265 Relative displacement DX(BCS,366,366)   PART/278
     1266 Relative displacement DY(BCS,366,366)   PART/278
     1267 Relative rotation AZ(BCS,366)   PART/278
     1268 Relative displacement DX(BCS,366,366)   PART/279
     1269 Relative displacement DY(BCS,366,366)   PART/279
     1270 Relative rotation AZ(BCS,366)   PART/279
     1271 Relative displacement DX(BCS,366,366)   PART/280
     1272 Relative displacement DY(BCS,366,366)   PART/280
     1273 Relative rotation AZ(BCS,366)   PART/280
     1274 Relative displacement DX(BCS,366,366)   PART/281
     1275 Relative displacement DY(BCS,366,366)   PART/281
     1276 Relative rotation AZ(BCS,366)   PART/281
     1277 Relative displacement DX(BCS,366,366)   PART/282
     1278 Relative displacement DY(BCS,366,366)   PART/282
     1279 Relative rotation AZ(BCS,366)   PART/282
     1280 Relative displacement DX(BCS,366,366)   PART/283
     1281 Relative displacement DY(BCS,366,366)   PART/283
     1282 Relative rotation AZ(BCS,366)   PART/283
     1283 Relative displacement DX(BCS,366,366)   PART/284
     1284 Relative displacement DY(BCS,366,366)   PART/284
     1285 Relative rotation AZ(BCS,366)   PART/284
     1286 Relative displacement DX(BCS,366,366)   PART/285
     1287 Relative displacement DY(BCS,366,366)   PART/285
     1288 Relative rotation AZ(BCS,366)   PART/285
     1289 Relative displacement DX(BCS,366,366)   PART/286
     1290 Relative displacement DY(BCS,366,366)   PART/286
     1291 Relative rotation AZ(BCS,366)   PART/286
     1292 Relative displacement DX(BCS,366,366)   PART/287
     1293 Relative displacement DY(BCS,366,366)   PART/287
     1294 Relative rotation AZ(BCS,366)   PART/287
     1295 Relative displacement DX(BCS,366,366)   PART/288
     1296 Relative displacement DY(BCS,366,366)   PART/288
     1297 Relative rotation AZ(BCS,366)   PART/288
     1298 Relative displacement DX(BCS,366,366)   PART/289
     1299 Relative displacement DY(BCS,366,366)   PART/289
     1300 Relative rotation AZ(BCS,366)   PART/289
     1301 Relative displacement DX(BCS,366,366)   PART/290
     1302 Relative displacement DY(BCS,366,366)   PART/290
     1303 Relative rotation AZ(BCS,366)   PART/290
     1304 Relative displacement DX(BCS,366,366)   PART/291
     1305 Relative displacement DY(BCS,366,366)   PART/291
     1306 Relative rotation AZ(BCS,366)   PART/291
     1307 Relative displacement DX(BCS,366,366)   PART/292
     1308 Relative displacement DY(BCS,366,366)   PART/292
     1309 Relative rotation AZ(BCS,366)   PART/292
     1310 Relative displacement DX(BCS,366,366)   PART/293
     1311 Relative displacement DY(BCS,366,366)   PART/293
     1312 Relative rotation AZ(BCS,366)   PART/293
     1313 Relative displacement DX(BCS,366,366)   PART/294
     1314 Relative displacement DY(BCS,366,366)   PART/294
     1315 Relative rotation AZ(BCS,366)   PART/294
     1316 Relative displacement DX(BCS,366,366)   PART/295
     1317 Relative displacement DY(BCS,366,366)   PART/295
     1318 Relative rotation AZ(BCS,366)   PART/295
     1319 Relative displacement DX(BCS,366,366)   PART/296
     1320 Relative displacement DY(BCS,366,366)   PART/296
     1321 Relative rotation AZ(BCS,366)   PART/296
     1322 Relative displacement DX(BCS,366,366)   PART/297
     1323 Relative displacement DY(BCS,366,366)   PART/297
     1324 Relative rotation AZ(BCS,366)   PART/297
     1325 Relative displacement DX(BCS,366,366)   PART/298
     1326 Relative displacement DY(BCS,366,366)   PART/298
     1327 Relative rotation AZ(BCS,366)   PART/298
     1328 Relative displacement DX(BCS,366,366)   PART/299
     1329 Relative displacement DY(BCS,366,366)   PART/299
     1330 Relative rotation AZ(BCS,366)   PART/299
     1331 Relative displacement DX(BCS,366,366)   PART/300
     1332 Relative displacement DY(BCS,366,366)   PART/300
     1333 Relative rotation AZ(BCS,366)   PART/300
     1334 Relative displacement DX(BCS,366,366)   PART/301
     1335 Relative displacement DY(BCS,366,366)   PART/301
     1336 Relative rotation AZ(BCS,366)   PART/301
     1337 Relative displacement DX(BCS,366,366)   PART/302
     1338 Relative displacement DY(BCS,366,366)   PART/302
     1339 Relative rotation AZ(BCS,366)   PART/302
     1340 Relative displacement DX(BCS,366,366)   PART/303
     1341 Relative displacement DY(BCS,366,366)   PART/303
     1342 Relative rotation AZ(BCS,366)   PART/303
     1343 Relative displacement DX(BCS,366,366)   PART/304
     1344 Relative displacement DY(BCS,366,366)   PART/304
     1345 Relative rotation AZ(BCS,366)   PART/304
     1346 Relative displacement DX(BCS,366,366)   PART/305
     1347 Relative displacement DY(BCS,366,366)   PART/305
     1348 Relative rotation AZ(BCS,366)   PART/305
     1349 Relative displacement DX(BCS,366,366)   PART/306
     1350 Relative displacement DY(BCS,366,366)   PART/306
     1351 Relative rotation AZ(BCS,366)   PART/306
     1352 Relative displacement DX(BCS,366,366)   PART/307
     1353 Relative displacement DY(BCS,366,366)   PART/307
     1354 Relative rotation AZ(BCS,366)   PART/307
     1355 Relative displacement DX(BCS,366,366)   PART/308
     1356 Relative displacement DY(BCS,366,366)   PART/308
     1357 Relative rotation AZ(BCS,366)   PART/308
     1358 Relative displacement DX(BCS,366,366)   PART/309
     1359 Relative displacement DY(BCS,366,366)   PART/309
     1360 Relative rotation AZ(BCS,366)   PART/309
     1361 Relative displacement DX(BCS,366,366)   PART/310
     1362 Relative displacement DY(BCS,366,366)   PART/310
     1363 Relative rotation AZ(BCS,366)   PART/310
     1364 Relative displacement DX(BCS,366,366)   PART/311
     1365 Relative displacement DY(BCS,366,366)   PART/311
     1366 Relative rotation AZ(BCS,366)   PART/311
     1367 Relative displacement DX(BCS,366,366)   PART/312
     1368 Relative displacement DY(BCS,366,366)   PART/312
     1369 Relative rotation AZ(BCS,366)   PART/312
     1370 Relative displacement DX(BCS,366,366)   PART/313
     1371 Relative displacement DY(BCS,366,366)   PART/313
     1372 Relative rotation AZ(BCS,366)   PART/313
     1373 Relative displacement DX(BCS,366,366)   PART/314
     1374 Relative displacement DY(BCS,366,366)   PART/314
     1375 Relative rotation AZ(BCS,366)   PART/314
     1376 Relative displacement DX(BCS,366,366)   PART/315
     1377 Relative displacement DY(BCS,366,366)   PART/315
     1378 Relative rotation AZ(BCS,366)   PART/315
     1379 Relative displacement DX(BCS,366,366)   PART/316
     1380 Relative displacement DY(BCS,366,366)   PART/316
     1381 Relative rotation AZ(BCS,366)   PART/316
     1382 Relative displacement DX(BCS,366,366)   PART/317
     1383 Relative displacement DY(BCS,366,366)   PART/317
     1384 Relative rotation AZ(BCS,366)   PART/317
     1385 Relative displacement DX(BCS,366,366)   PART/318
     1386 Relative displacement DY(BCS,366,366)   PART/318
     1387 Relative rotation AZ(BCS,366)   PART/318
     1388 Relative displacement DX(BCS,366,366)   PART/319
     1389 Relative displacement DY(BCS,366,366)   PART/319
     1390 Relative rotation AZ(BCS,366)   PART/319
     1391 Relative displacement DX(BCS,366,366)   PART/320
     1392 Relative displacement DY(BCS,366,366)   PART/320
     1393 Relative rotation AZ(BCS,366)   PART/320
     1394 Relative displacement DX(BCS,366,366)   PART/321
     1395 Relative displacement DY(BCS,366,366)   PART/321
     1396 Relative rotation AZ(BCS,366)   PART/321
     1397 Relative displacement DX(BCS,366,366)   PART/322
     1398 Relative displacement DY(BCS,366,366)   PART/322
     1399 Relative rotation AZ(BCS,366)   PART/322
     1400 Relative displacement DX(BCS,366,366)   PART/323
     1401 Relative displacement DY(BCS,366,366)   PART/323
     1402 Relative rotation AZ(BCS,366)   PART/323
     1403 Relative displacement DX(BCS,366,366)   PART/324
     1404 Relative displacement DY(BCS,366,366)   PART/324
     1405 Relative rotation AZ(BCS,366)   PART/324
     1406 Relative displacement DX(BCS,366,366)   PART/325
     1407 Relative displacement DY(BCS,366,366)   PART/325
     1408 Relative rotation AZ(BCS,366)   PART/325
     1409 Relative displacement DX(BCS,366,366)   PART/326
     1410 Relative displacement DY(BCS,366,366)   PART/326
     1411 Relative rotation AZ(BCS,366)   PART/326
     1412 Relative displacement DX(BCS,366,366)   PART/327
     1413 Relative displacement DY(BCS,366,366)   PART/327
     1414 Relative rotation AZ(BCS,366)   PART/327
     1415 Relative displacement DX(BCS,366,366)   PART/328
     1416 Relative displacement DY(BCS,366,366)   PART/328
     1417 Relative rotation AZ(BCS,366)   PART/328
     1418 Relative displacement DX(BCS,366,366)   PART/329
     1419 Relative displacement DY(BCS,366,366)   PART/329
     1420 Relative rotation AZ(BCS,366)   PART/329
     1421 Relative displacement DX(BCS,366,366)   PART/330
     1422 Relative displacement DY(BCS,366,366)   PART/330
     1423 Relative rotation AZ(BCS,366)   PART/330
     1424 Relative displacement DX(BCS,366,366)   PART/331
     1425 Relative displacement DY(BCS,366,366)   PART/331
     1426 Relative rotation AZ(BCS,366)   PART/331
     1427 Relative displacement DX(BCS,366,366)   PART/332
     1428 Relative displacement DY(BCS,366,366)   PART/332
     1429 Relative rotation AZ(BCS,366)   PART/332
     1430 Relative displacement DX(BCS,366,366)   PART/333
     1431 Relative displacement DY(BCS,366,366)   PART/333
     1432 Relative rotation AZ(BCS,366)   PART/333
     1433 Relative displacement DX(BCS,366,366)   PART/334
     1434 Relative displacement DY(BCS,366,366)   PART/334
     1435 Relative rotation AZ(BCS,366)   PART/334
     1436 Relative displacement DX(BCS,366,366)   PART/335
     1437 Relative displacement DY(BCS,366,366)   PART/335
     1438 Relative rotation AZ(BCS,366)   PART/335
     1439 Relative displacement DX(BCS,366,366)   PART/336
     1440 Relative displacement DY(BCS,366,366)   PART/336
     1441 Relative rotation AZ(BCS,366)   PART/336
     1442 Relative displacement DX(BCS,366,366)   PART/337
     1443 Relative displacement DY(BCS,366,366)   PART/337
     1444 Relative rotation AZ(BCS,366)   PART/337
     1445 Relative displacement DX(BCS,366,366)   PART/338
     1446 Relative displacement DY(BCS,366,366)   PART/338
     1447 Relative rotation AZ(BCS,366)   PART/338
     1448 Relative displacement DX(BCS,366,366)   PART/339
     1449 Relative displacement DY(BCS,366,366)   PART/339
     1450 Relative rotation AZ(BCS,366)   PART/339
     1451 Relative displacement DX(BCS,366,366)   PART/340
     1452 Relative displacement DY(BCS,366,366)   PART/340
     1453 Relative rotation AZ(BCS,366)   PART/340
     1454 Relative displacement DX(BCS,366,366)   PART/341
     1455 Relative displacement DY(BCS,366,366)   PART/341
     1456 Relative rotation AZ(BCS,366)   PART/341
     1457 Relative displacement DX(BCS,366,366)   PART/342
     1458 Relative displacement DY(BCS,366,366)   PART/342
     1459 Relative rotation AZ(BCS,366)   PART/342
     1460 Relative displacement DX(BCS,366,366)   PART/343
     1461 Relative displacement DY(BCS,366,366)   PART/343
     1462 Relative rotation AZ(BCS,366)   PART/343
     1463 Relative displacement DX(BCS,366,366)   PART/344
     1464 Relative displacement DY(BCS,366,366)   PART/344
     1465 Relative rotation AZ(BCS,366)   PART/344
     1466 Relative displacement DX(BCS,366,366)   PART/345
     1467 Relative displacement DY(BCS,366,366)   PART/345
     1468 Relative rotation AZ(BCS,366)   PART/345
     1469 Relative displacement DX(BCS,366,366)   PART/346
     1470 Relative displacement DY(BCS,366,366)   PART/346
     1471 Relative rotation AZ(BCS,366)   PART/346
     1472 Relative displacement DX(BCS,366,366)   PART/347
     1473 Relative displacement DY(BCS,366,366)   PART/347
     1474 Relative rotation AZ(BCS,366)   PART/347
     1475 Relative displacement DX(BCS,366,366)   PART/348
     1476 Relative displacement DY(BCS,366,366)   PART/348
     1477 Relative rotation AZ(BCS,366)   PART/348
     1478 Relative displacement DX(BCS,366,366)   PART/349
     1479 Relative displacement DY(BCS,366,366)   PART/349
     1480 Relative rotation AZ(BCS,366)   PART/349
     1481 Relative displacement DX(BCS,366,366)   PART/350
     1482 Relative displacement DY(BCS,366,366)   PART/350
     1483 Relative rotation AZ(BCS,366)   PART/350
     1484 Relative displacement DX(BCS,366,366)   PART/351
     1485 Relative displacement DY(BCS,366,366)   PART/351
     1486 Relative rotation AZ(BCS,366)   PART/351
     1487 Relative displacement DX(BCS,366,366)   PART/352
     1488 Relative displacement DY(BCS,366,366)   PART/352
     1489 Relative rotation AZ(BCS,366)   PART/352
     1490 Relative displacement DX(BCS,366,366)   PART/353
     1491 Relative displacement DY(BCS,366,366)   PART/353
     1492 Relative rotation AZ(BCS,366)   PART/353
     1493 Relative displacement DX(BCS,366,366)   PART/354
     1494 Relative displacement DY(BCS,366,366)   PART/354
     1495 Relative rotation AZ(BCS,366)   PART/354
     1496 Relative displacement DX(BCS,366,366)   PART/355
     1497 Relative displacement DY(BCS,366,366)   PART/355
     1498 Relative rotation AZ(BCS,366)   PART/355
     1499 Relative displacement DX(BCS,366,366)   PART/356
     1500 Relative displacement DY(BCS,366,366)   PART/356
     1501 Relative rotation AZ(BCS,366)   PART/356
     1502 Relative displacement DX(BCS,366,366)   PART/357
     1503 Relative displacement DY(BCS,366,366)   PART/357
     1504 Relative rotation AZ(BCS,366)   PART/357
     1505 Relative displacement DX(BCS,366,366)   PART/358
     1506 Relative displacement DY(BCS,366,366)   PART/358
     1507 Relative rotation AZ(BCS,366)   PART/358
     1508 Relative displacement DX(BCS,366,366)   PART/359
     1509 Relative displacement DY(BCS,366,366)   PART/359
     1510 Relative rotation AZ(BCS,366)   PART/359
     1511 Relative displacement DX(BCS,366,366)   PART/360
     1512 Relative displacement DY(BCS,366,366)   PART/360
     1513 Relative rotation AZ(BCS,366)   PART/360
     1514 Relative displacement DX(BCS,366,366)   PART/361
     1515 Relative displacement DY(BCS,366,366)   PART/361
     1516 Relative rotation AZ(BCS,366)   PART/361
     1517 Relative displacement DX(BCS,366,366)   PART/362
     1518 Relative displacement DY(BCS,366,366)   PART/362
     1519 Relative rotation AZ(BCS,366)   PART/362
     1520 Relative displacement DX(BCS,366,366)   PART/363
     1521 Relative displacement DY(BCS,366,366)   PART/363
     1522 Relative rotation AZ(BCS,366)   PART/363
     1523 Relative displacement DX(BCS,366,366)   PART/364
     1524 Relative displacement DY(BCS,366,366)   PART/364
     1525 Relative rotation AZ(BCS,366)   PART/364
     1526 Relative displacement DX(BCS,366,366)   PART/365
     1527 Relative displacement DY(BCS,366,366)   PART/365
     1528 Relative rotation AZ(BCS,366)   PART/365
     1529 Relative displacement DX(BCS,366,366)   PART/366
     1530 Relative displacement DY(BCS,366,366)   PART/366
     1531 Relative rotation AZ(BCS,366)   PART/366
     1532 Relative displacement DX(BCS,366,366)   PART/367
     1533 Relative displacement DY(BCS,366,366)   PART/367
     1534 Relative rotation AZ(BCS,366)   PART/367
     1535 Relative displacement DX(BCS,366,366)   PART/368
     1536 Relative displacement DY(BCS,366,366)   PART/368
     1537 Relative rotation AZ(BCS,366)   PART/368
     1538 Relative displacement DX(BCS,366,366)   PART/369
     1539 Relative displacement DY(BCS,366,366)   PART/369
     1540 Relative rotation AZ(BCS,366)   PART/369
     1541 Relative displacement DX(BCS,366,366)   PART/370
     1542 Relative displacement DY(BCS,366,366)   PART/370
     1543 Relative rotation AZ(BCS,366)   PART/370
     1544 Relative displacement DX(BCS,366,366)   PART/371
     1545 Relative displacement DY(BCS,366,366)   PART/371
     1546 Relative rotation AZ(BCS,366)   PART/371
     1547 Relative displacement DX(BCS,366,366)   PART/372
     1548 Relative displacement DY(BCS,366,366)   PART/372
     1549 Relative rotation AZ(BCS,366)   PART/372
     1550 Relative displacement DX(BCS,366,366)   PART/373
     1551 Relative displacement DY(BCS,366,366)   PART/373
     1552 Relative rotation AZ(BCS,366)   PART/373
     1553 Relative displacement DX(BCS,366,366)   PART/374
     1554 Relative displacement DY(BCS,366,366)   PART/374
     1555 Relative rotation AZ(BCS,366)   PART/374
     1556 Relative displacement DX(BCS,366,366)   PART/375
     1557 Relative displacement DY(BCS,366,366)   PART/375
     1558 Relative rotation AZ(BCS,366)   PART/375
     1559 Relative displacement DX(BCS,366,366)   PART/376
     1560 Relative displacement DY(BCS,366,366)   PART/376
     1561 Relative rotation AZ(BCS,366)   PART/376
     1562 Relative displacement DX(BCS,366,366)   PART/377
     1563 Relative displacement DY(BCS,366,366)   PART/377
     1564 Relative rotation AZ(BCS,366)   PART/377
     1565 Relative displacement DX(BCS,366,366)   PART/378
     1566 Relative displacement DY(BCS,366,366)   PART/378
     1567 Relative rotation AZ(BCS,366)   PART/378
     1568 Relative displacement DX(BCS,366,366)   PART/379
     1569 Relative displacement DY(BCS,366,366)   PART/379
     1570 Relative rotation AZ(BCS,366)   PART/379
     1571 Relative displacement DX(BCS,366,366)   PART/380
     1572 Relative displacement DY(BCS,366,366)   PART/380
     1573 Relative rotation AZ(BCS,366)   PART/380
     1574 Relative displacement DX(BCS,366,366)   PART/381
     1575 Relative displacement DY(BCS,366,366)   PART/381
     1576 Relative rotation AZ(BCS,366)   PART/381
     1577 Relative displacement DX(BCS,366,366)   PART/382
     1578 Relative displacement DY(BCS,366,366)   PART/382
     1579 Relative rotation AZ(BCS,366)   PART/382
     1580 Relative displacement DX(BCS,366,366)   PART/383
     1581 Relative displacement DY(BCS,366,366)   PART/383
     1582 Relative rotation AZ(BCS,366)   PART/383
     1583 Relative displacement DX(BCS,366,366)   PART/384
     1584 Relative displacement DY(BCS,366,366)   PART/384
     1585 Relative rotation AZ(BCS,366)   PART/384
     1586 Relative displacement DX(BCS,366,366)   PART/385
     1587 Relative displacement DY(BCS,366,366)   PART/385
     1588 Relative rotation AZ(BCS,366)   PART/385
     1589 Relative displacement DX(BCS,366,366)   PART/386
     1590 Relative displacement DY(BCS,366,366)   PART/386
     1591 Relative rotation AZ(BCS,366)   PART/386
     1592 Relative displacement DX(BCS,366,366)   PART/387
     1593 Relative displacement DY(BCS,366,366)   PART/387
     1594 Relative rotation AZ(BCS,366)   PART/387
     1595 Relative displacement DX(BCS,366,366)   PART/388
     1596 Relative displacement DY(BCS,366,366)   PART/388
     1597 Relative rotation AZ(BCS,366)   PART/388
     1598 Relative displacement DX(BCS,366,366)   PART/389
     1599 Relative displacement DY(BCS,366,366)   PART/389
     1600 Relative rotation AZ(BCS,366)   PART/389
     1601 Relative displacement DX(BCS,366,366)   PART/390
     1602 Relative displacement DY(BCS,366,366)   PART/390
     1603 Relative rotation AZ(BCS,366)   PART/390
     1604 Relative displacement DX(BCS,366,366)   PART/391
     1605 Relative displacement DY(BCS,366,366)   PART/391
     1606 Relative rotation AZ(BCS,366)   PART/391
     1607 Relative displacement DX(BCS,366,366)   PART/392
     1608 Relative displacement DY(BCS,366,366)   PART/392
     1609 Relative rotation AZ(BCS,366)   PART/392
     1610 Relative displacement DX(BCS,366,366)   PART/393
     1611 Relative displacement DY(BCS,366,366)   PART/393
     1612 Relative rotation AZ(BCS,366)   PART/393
     1613 Relative displacement DX(BCS,366,366)   PART/394
     1614 Relative displacement DY(BCS,366,366)   PART/394
     1615 Relative rotation AZ(BCS,366)   PART/394
     1616 Relative displacement DX(BCS,366,366)   PART/395
     1617 Relative displacement DY(BCS,366,366)   PART/395
     1618 Relative rotation AZ(BCS,366)   PART/395
     1619 Relative displacement DX(BCS,366,366)   PART/396
     1620 Relative displacement DY(BCS,366,366)   PART/396
     1621 Relative rotation AZ(BCS,366)   PART/396
     1622 Relative displacement DX(BCS,366,366)   PART/397
     1623 Relative displacement DY(BCS,366,366)   PART/397
     1624 Relative rotation AZ(BCS,366)   PART/397
     1625 Relative displacement DX(BCS,366,366)   PART/398
     1626 Relative displacement DY(BCS,366,366)   PART/398
     1627 Relative rotation AZ(BCS,366)   PART/398
     1628 Relative displacement DX(BCS,366,366)   PART/399
     1629 Relative displacement DY(BCS,366,366)   PART/399
     1630 Relative rotation AZ(BCS,366)   PART/399
     1631 Relative displacement DX(BCS,366,366)   PART/400
     1632 Relative displacement DY(BCS,366,366)   PART/400
     1633 Relative rotation AZ(BCS,366)   PART/400
     1634 Relative displacement DX(BCS,366,366)   PART/401
     1635 Relative displacement DY(BCS,366,366)   PART/401
     1636 Relative rotation AZ(BCS,366)   PART/401
     1637 Relative displacement DX(BCS,366,366)   PART/402
     1638 Relative displacement DY(BCS,366,366)   PART/402
     1639 Relative rotation AZ(BCS,366)   PART/402
     1640 Relative displacement DX(BCS,366,366)   PART/403
     1641 Relative displacement DY(BCS,366,366)   PART/403
     1642 Relative rotation AZ(BCS,366)   PART/403
     1643 Relative displacement DX(BCS,366,366)   PART/404
     1644 Relative displacement DY(BCS,366,366)   PART/404
     1645 Relative rotation AZ(BCS,366)   PART/404
     1646 Relative rotation AX(BCS,366)   PART/408
     1647 Relative displacement DX(BCS,366,366)   PART/409
     1648 Relative displacement DY(BCS,366,366)   PART/409
     1649 Relative rotation AX(BCS,366)   PART/409
     1650 Relative rotation AY(BCS,366)   PART/409
     1651 Relative rotation AZ(BCS,366)   PART/409
     1652 Relative displacement DZ(BCS,366,366)   PART/410
     1653 Relative displacement DX(BCS,366,366)   FLEX_BODY/1
     1654 Relative displacement DY(BCS,366,366)   FLEX_BODY/1
     1655 Relative displacement DZ(BCS,366,366)   FLEX_BODY/1
     1656 Relative rotation AX(BCS,366)   FLEX_BODY/1
     1657 Relative rotation AY(BCS,366)   FLEX_BODY/1
     1658 Relative rotation AZ(BCS,366)   FLEX_BODY/1
     1659 Relative displacement DX(BCS,366,366)   FLEX_BODY/2
     1660 Relative displacement DY(BCS,366,366)   FLEX_BODY/2
     1661 Relative displacement DZ(BCS,366,366)   FLEX_BODY/2
     1662 Relative rotation AX(BCS,366)   FLEX_BODY/2
     1663 Relative rotation AY(BCS,366)   FLEX_BODY/2
     1664 Relative rotation AZ(BCS,366)   FLEX_BODY/2
     1665 Relative displacement DX(BCS,366,366)   FLEX_BODY/3
     1666 Relative displacement DY(BCS,366,366)   FLEX_BODY/3
     1667 Relative displacement DZ(BCS,366,366)   FLEX_BODY/3
     1668 Relative rotation AX(BCS,366)   FLEX_BODY/3
     1669 Relative rotation AY(BCS,366)   FLEX_BODY/3
     1670 Relative rotation AZ(BCS,366)   FLEX_BODY/3
     1671 Relative rotation AZ(BCS,366)   PART/-1
     1672 Relative displacement DX(BCS,366,366)   PART/-3
     1673 Relative displacement DY(BCS,366,366)   PART/-3
     1674 Relative displacement DZ(BCS,366,366)   PART/-3
     1675 Relative rotation AX(BCS,366)   PART/-3
     1676 Relative rotation AY(BCS,366)   PART/-3
     1677 Relative rotation AZ(BCS,366)   PART/-3
     1678 Relative displacement DX(BCS,366,366)   PART/-4
     1679 Relative displacement DY(BCS,366,366)   PART/-4
     1680 Relative displacement DZ(BCS,366,366)   PART/-4
     1681 Relative rotation AX(BCS,366)   PART/-4
     1682 Relative rotation AY(BCS,366)   PART/-4
     1683 Relative rotation AZ(BCS,366)   PART/-4
     1684 Relative displacement DX(BCS,366,366)   PART/-5
     1685 Relative displacement DY(BCS,366,366)   PART/-5
     1686 Relative displacement DZ(BCS,366,366)   PART/-5
     1687 Relative rotation AX(BCS,366)   PART/-5
     1688 Relative rotation AY(BCS,366)   PART/-5
     1689 Relative rotation AZ(BCS,366)   PART/-5
     1690 Relative displacement DX(BCS,366,366)   PART/-6
     1691 Relative displacement DY(BCS,366,366)   PART/-6
     1692 Relative displacement DZ(BCS,366,366)   PART/-6
     1693 Relative rotation AX(BCS,366)   PART/-6
     1694 Relative rotation AY(BCS,366)   PART/-6
     1695 Relative rotation AZ(BCS,366)   PART/-6
     1696 Relative displacement DX(BCS,366,366)   PART/-7
     1697 Relative displacement DY(BCS,366,366)   PART/-7
     1698 Relative displacement DZ(BCS,366,366)   PART/-7
     1699 Relative rotation AX(BCS,366)   PART/-7
     1700 Relative rotation AY(BCS,366)   PART/-7
     1701 Relative rotation AZ(BCS,366)   PART/-7
     1702 Relative displacement DX(BCS,366,366)   PART/-8
     1703 Relative displacement DY(BCS,366,366)   PART/-8
     1704 Relative displacement DZ(BCS,366,366)   PART/-8
     1705 Relative rotation AX(BCS,366)   PART/-8
     1706 Relative rotation AY(BCS,366)   PART/-8
     1707 Relative rotation AZ(BCS,366)   PART/-8
     1708 Relative displacement DX(BCS,366,366)   PART/-9
     1709 Relative displacement DY(BCS,366,366)   PART/-9
     1710 Relative displacement DZ(BCS,366,366)   PART/-9
     1711 Relative rotation AX(BCS,366)   PART/-9
     1712 Relative rotation AY(BCS,366)   PART/-9
     1713 Relative rotation AZ(BCS,366)   PART/-9
     1714 Relative displacement DX(BCS,366,366)   PART/-10
     1715 Relative displacement DY(BCS,366,366)   PART/-10
     1716 Relative displacement DZ(BCS,366,366)   PART/-10
     1717 Relative rotation AX(BCS,366)   PART/-10
     1718 Relative rotation AY(BCS,366)   PART/-10
     1719 Relative rotation AZ(BCS,366)   PART/-10
     1720 Relative rotation AX(BCS,366)   PART/-2
     1721 Relative rotation AY(BCS,366)   PART/-2
     1722 Relative rotation AZ(BCS,366)   PART/-2
     1723 Relative displacement DX(BCS,366,366)   PART/-11
     1724 Relative displacement DY(BCS,366,366)   PART/-11
     1725 Relative displacement DZ(BCS,366,366)   PART/-11
     1726 Relative rotation AY(BCS,366)   PART/-11
     1727 Relative rotation AX(BCS,366)   PART/-12
     1728 Relative rotation AZ(BCS,366)   PART/-12
     1729 Relative displacement DX(BCS,366,366)   PART/-13
     1730 Relative displacement DY(BCS,366,366)   PART/-13
     1731 Relative displacement DZ(BCS,366,366)   PART/-13
     1732 Relative displacement DX(BCS,366,366)   PART/-14
     1733 Relative displacement DY(BCS,366,366)   PART/-14
     1734 Relative displacement DZ(BCS,366,366)   PART/-14
     1735 Relative rotation AX(BCS,366)   PART/-14
     1736 Relative rotation AY(BCS,366)   PART/-14
     1737 Relative rotation AZ(BCS,366)   PART/-14
     1738 Relative displacement DX(BCS,366,366)   PART/-15
     1739 Relative displacement DY(BCS,366,366)   PART/-15
     1740 Relative displacement DZ(BCS,366,366)   PART/-15
     1741 Relative rotation AX(BCS,366)   PART/-15
     1742 Relative rotation AY(BCS,366)   PART/-15
     1743 Relative rotation AZ(BCS,366)   PART/-15
     1744 Relative displacement DX(BCS,366,366)   PART/-16
     1745 Relative displacement DY(BCS,366,366)   PART/-16
     1746 Relative displacement DZ(BCS,366,366)   PART/-16
     1747 Relative rotation AX(BCS,366)   PART/-16
     1748 Relative rotation AY(BCS,366)   PART/-16
     1749 Relative rotation AZ(BCS,366)   PART/-16
     1750 Relative displacement DX(BCS,366,366)   PART/-17
     1751 Relative displacement DY(BCS,366,366)   PART/-17
     1752 Relative displacement DZ(BCS,366,366)   PART/-17
     1753 Relative rotation AX(BCS,366)   PART/-17
     1754 Relative rotation AY(BCS,366)   PART/-17
     1755 Relative rotation AZ(BCS,366)   PART/-17
     1756 Relative displacement DX(BCS,366,366)   PART/-18
     1757 Relative displacement DY(BCS,366,366)   PART/-18
     1758 Relative displacement DZ(BCS,366,366)   PART/-18
     1759 Relative rotation AX(BCS,366)   PART/-18
     1760 Relative rotation AY(BCS,366)   PART/-18
     1761 Relative rotation AZ(BCS,366)   PART/-18
     1762 Relative displacement DX(BCS,366,366)   PART/-19
     1763 Relative displacement DY(BCS,366,366)   PART/-19
     1764 Relative displacement DZ(BCS,366,366)   PART/-19
     1765 Relative rotation AX(BCS,366)   PART/-19
     1766 Relative rotation AY(BCS,366)   PART/-19
     1767 Relative rotation AZ(BCS,366)   PART/-19
     1768 Relative displacement DX(BCS,366,366)   PART/-20
     1769 Relative displacement DY(BCS,366,366)   PART/-20
     1770 Relative displacement DZ(BCS,366,366)   PART/-20
     1771 Relative rotation AX(BCS,366)   PART/-20
     1772 Relative rotation AY(BCS,366)   PART/-20
     1773 Relative rotation AZ(BCS,366)   PART/-20
     1774 Relative displacement DX(BCS,366,366)   PART/-21
     1775 Relative displacement DY(BCS,366,366)   PART/-21
     1776 Relative displacement DZ(BCS,366,366)   PART/-21
     1777 Relative rotation AX(BCS,366)   PART/-21
     1778 Relative rotation AY(BCS,366)   PART/-21
     1779 Relative rotation AZ(BCS,366)   PART/-21
     1780 Relative displacement DX(BCS,366,366)   PART/-22
     1781 Relative displacement DY(BCS,366,366)   PART/-22
     1782 Relative displacement DZ(BCS,366,366)   PART/-22
     1783 Relative rotation AX(BCS,366)   PART/-22
     1784 Relative rotation AY(BCS,366)   PART/-22
     1785 Relative rotation AZ(BCS,366)   PART/-22
     1786 Relative displacement DX(BCS,366,366)   PART/-23
     1787 Relative displacement DY(BCS,366,366)   PART/-23
     1788 Relative displacement DZ(BCS,366,366)   PART/-23
     1789 Relative rotation AX(BCS,366)   PART/-23
     1790 Relative rotation AY(BCS,366)   PART/-23
     1791 Relative rotation AZ(BCS,366)   PART/-23
     1792 Relative displacement DX(BCS,366,366)   PART/-24
     1793 Relative displacement DY(BCS,366,366)   PART/-24
     1794 Relative displacement DZ(BCS,366,366)   PART/-24
     1795 Relative rotation AX(BCS,366)   PART/-24
     1796 Relative rotation AY(BCS,366)   PART/-24
     1797 Relative rotation AZ(BCS,366)   PART/-24
     1798 Relative displacement DX(BCS,366,366)   PART/-25
     1799 Relative displacement DY(BCS,366,366)   PART/-25
     1800 Relative displacement DZ(BCS,366,366)   PART/-25
     1801 Relative rotation AX(BCS,366)   PART/-25
     1802 Relative rotation AY(BCS,366)   PART/-25
     1803 Relative rotation AZ(BCS,366)   PART/-25
     1804 Relative displacement DX(BCS,366,366)   PART/-26
     1805 Relative displacement DY(BCS,366,366)   PART/-26
     1806 Relative displacement DZ(BCS,366,366)   PART/-26
     1807 Relative rotation AX(BCS,366)   PART/-26
     1808 Relative rotation AY(BCS,366)   PART/-26
     1809 Relative rotation AZ(BCS,366)   PART/-26
     1810 Relative displacement DX(BCS,366,366)   PART/-27
     1811 Relative displacement DY(BCS,366,366)   PART/-27
     1812 Relative displacement DZ(BCS,366,366)   PART/-27
     1813 Relative rotation AX(BCS,366)   PART/-27
     1814 Relative rotation AY(BCS,366)   PART/-27
     1815 Relative rotation AZ(BCS,366)   PART/-27
     1816 Relative displacement DX(BCS,366,366)   PART/-28
     1817 Relative displacement DY(BCS,366,366)   PART/-28
     1818 Relative displacement DZ(BCS,366,366)   PART/-28
     1819 Relative rotation AX(BCS,366)   PART/-28
     1820 Relative rotation AY(BCS,366)   PART/-28
     1821 Relative rotation AZ(BCS,366)   PART/-28
     1822 Relative displacement DX(BCS,366,366)   PART/-29
     1823 Relative displacement DY(BCS,366,366)   PART/-29
     1824 Relative displacement DZ(BCS,366,366)   PART/-29
     1825 Relative rotation AX(BCS,366)   PART/-29
     1826 Relative rotation AY(BCS,366)   PART/-29
     1827 Relative rotation AZ(BCS,366)   PART/-29
     1828 Relative displacement DX(BCS,366,366)   PART/-30
     1829 Relative displacement DY(BCS,366,366)   PART/-30
     1830 Relative displacement DZ(BCS,366,366)   PART/-30
     1831 Relative rotation AX(BCS,366)   PART/-30
     1832 Relative rotation AY(BCS,366)   PART/-30
     1833 Relative rotation AZ(BCS,366)   PART/-30
     1834 Relative displacement DX(BCS,366,366)   PART/-31
     1835 Relative displacement DY(BCS,366,366)   PART/-31
     1836 Relative displacement DZ(BCS,366,366)   PART/-31
     1837 Relative rotation AX(BCS,366)   PART/-31
     1838 Relative rotation AY(BCS,366)   PART/-31
     1839 Relative rotation AZ(BCS,366)   PART/-31
     1840 Relative displacement DX(BCS,366,366)   PART/-32
     1841 Relative displacement DY(BCS,366,366)   PART/-32
     1842 Relative displacement DZ(BCS,366,366)   PART/-32
     1843 Relative rotation AX(BCS,366)   PART/-32
     1844 Relative rotation AY(BCS,366)   PART/-32
     1845 Relative rotation AZ(BCS,366)   PART/-32
     1846 Relative displacement DX(BCS,366,366)   PART/-33
     1847 Relative displacement DY(BCS,366,366)   PART/-33
     1848 Relative displacement DZ(BCS,366,366)   PART/-33
     1849 Relative rotation AX(BCS,366)   PART/-33
     1850 Relative rotation AY(BCS,366)   PART/-33
     1851 Relative rotation AZ(BCS,366)   PART/-33
     1852 Relative displacement DX(BCS,366,366)   PART/-34
     1853 Relative displacement DY(BCS,366,366)   PART/-34
     1854 Relative displacement DZ(BCS,366,366)   PART/-34
     1855 Relative rotation AX(BCS,366)   PART/-34
     1856 Relative rotation AY(BCS,366)   PART/-34
     1857 Relative rotation AZ(BCS,366)   PART/-34
     1858 Relative displacement DX(BCS,366,366)   PART/-35
     1859 Relative displacement DY(BCS,366,366)   PART/-35
     1860 Relative displacement DZ(BCS,366,366)   PART/-35
     1861 Relative rotation AX(BCS,366)   PART/-35
     1862 Relative rotation AY(BCS,366)   PART/-35
     1863 Relative rotation AZ(BCS,366)   PART/-35
     1864 Relative displacement DX(BCS,366,366)   PART/-36
     1865 Relative displacement DY(BCS,366,366)   PART/-36
     1866 Relative displacement DZ(BCS,366,366)   PART/-36
     1867 Relative rotation AX(BCS,366)   PART/-36
     1868 Relative rotation AY(BCS,366)   PART/-36
     1869 Relative rotation AZ(BCS,366)   PART/-36
     1870 Relative displacement DX(BCS,366,366)   PART/-37
     1871 Relative displacement DY(BCS,366,366)   PART/-37
     1872 Relative displacement DZ(BCS,366,366)   PART/-37
     1873 Relative rotation AX(BCS,366)   PART/-37
     1874 Relative rotation AY(BCS,366)   PART/-37
     1875 Relative rotation AZ(BCS,366)   PART/-37

  The other kinematic states are the respective derivatives.

                 E I G E N V A L U E S  at time = 2.36000E+01
      Number    Real(cycles/second)      Imag.(cycles/second) 
         1              4.32782E+00
         2              7.56550E+00
         3             -8.63392E+00
         4             -1.20591E+01
         5             -1.23835E+01
         6             -1.23848E+01
         7             -1.25394E+01
         8             -1.26904E+01
         9             -1.27002E+01
        10             -1.28625E+01
        11             -1.29579E+01
        12             -1.30223E+01
        13             -1.31639E+01
        14             -1.31755E+01
        15             -1.32337E+01
        16             -1.32743E+01
        17             -1.33178E+01
        18             -1.33225E+01
        19             -1.33843E+01
        20             -1.34456E+01
        21             -1.34546E+01
        22             -1.35332E+01
        23             -1.35555E+01
        24             -1.36203E+01
        25             -1.36475E+01
        26             -1.37163E+01
        27             -1.37270E+01
        28             -1.38031E+01
        29             -1.38216E+01
        30             -1.38824E+01
        31             -1.39368E+01
        32             -1.39676E+01
        33             -1.40601E+01
        34             -1.40624E+01
        35             -1.41608E+01
        36             -1.41989E+01
        37             -1.42704E+01
        38             -1.43469E+01
        39             -1.43897E+01
        40             -1.45068E+01
        41             -1.45193E+01
        42             -1.46598E+01
        43             -1.46791E+01
        44             -1.48118E+01
        45             -1.48640E+01
        46             -1.49759E+01
        47             -1.50620E+01
        48             -1.51524E+01
        49             -1.52731E+01
        50             -1.53420E+01
        51             -1.54971E+01
        52             -1.55448E+01
        53             -1.56211E+01
        54             -1.57337E+01
        55             -1.57577E+01
        56             -1.57611E+01
        57             -1.58268E+01
        58             -1.58627E+01
        59             -1.59166E+01
        60             -1.59279E+01
        61             -1.59823E+01
        62             -1.59908E+01
        63             -1.60276E+01
        64             -1.61133E+01
        65             -1.61918E+01
        66             -1.62338E+01
        67             -1.62420E+01
        68             -1.63057E+01
        69             -1.64892E+01
        70             -1.65117E+01
        71             -1.67565E+01
        72             -1.67880E+01
        73             -1.70348E+01
        74             -1.70739E+01
        75             -1.73218E+01
        76             -1.73572E+01
        77             -1.76161E+01
        78             -1.76524E+01
        79             -1.78747E+01
        80             -1.79148E+01
        81             -1.79416E+01
        82             -1.82155E+01
        83             -1.82410E+01
        84             -1.85138E+01
        85             -1.87348E+01
        86             -1.88081E+01
        87             -1.90026E+01
        88             -1.90943E+01
        89             -1.92825E+01
        90             -1.93863E+01
        91             -1.94384E+01
        92             -1.96482E+01
        93             -1.97563E+01
        94             -1.98896E+01
        95             -2.03119E+01
        96             -2.04122E+01
        97             -2.04440E+01
        98             -2.05823E+01
        99             -2.05926E+01
       100             -2.06373E+01
       101             -2.06427E+01
       102             -2.07032E+01
       103             -2.07143E+01
       104             -2.07704E+01
       105             -2.07814E+01
       106             -2.08129E+01
       107             -2.08418E+01
       108             -2.08475E+01
       109             -2.08862E+01
       110             -2.09197E+01
       111             -2.09312E+01
       112             -2.09416E+01
       113             -2.09690E+01
       114             -2.09897E+01
       115             -2.09938E+01
       116             -2.09995E+01
       117             -2.10072E+01
       118             -2.10162E+01
       119             -2.10229E+01
       120             -2.10357E+01
       121             -2.10518E+01
       122             -2.10526E+01
       123             -2.10583E+01
       124             -2.10679E+01
       125             -2.10680E+01
       126             -2.10733E+01
       127             -2.10775E+01
       128             -2.10812E+01
       129             -2.10873E+01
       130             -2.10886E+01
       131             -2.10925E+01
       132             -2.10997E+01
       133             -2.11048E+01
       134             -2.11079E+01
       135             -2.11142E+01
       136             -2.11245E+01
       137             -2.11305E+01
       138             -2.11366E+01
       139             -2.11492E+01
       140             -2.11495E+01
       141             -2.11649E+01
       142             -2.11744E+01
       143             -2.11807E+01
       144             -2.11976E+01
       145             -2.12062E+01
       146             -2.12201E+01
       147             -2.12280E+01
       148             -2.12362E+01
       149             -2.15194E+01
       150             -2.17219E+01
       151             -2.17312E+01
       152             -2.19173E+01
       153             -2.20460E+01
       154             -2.21614E+01
       155             -2.21821E+01
       156             -2.23949E+01
       157             -2.24423E+01
       158             -2.25250E+01
       159             -2.27137E+01
       160             -2.27376E+01
       161             -2.29954E+01
       162             -2.30050E+01
       163             -2.33674E+01
       164             -2.33720E+01
       165             -2.35818E+01
       166             -2.38335E+01
       167             -2.38623E+01
       168             -2.42875E+01
       169             -2.44358E+01
       170             -2.48300E+01
       171             -2.49871E+01
       172             -2.52589E+01
       173             -2.55313E+01
       174             -2.58767E+01
       175             -2.60239E+01
       176             -2.67266E+01
       177             -2.68652E+01
       178             -2.75023E+01
       179             -2.83646E+01
       180             -2.87464E+01
       181             -2.89596E+01
       182             -2.94660E+01
       183             -2.97219E+01
       184             -2.99677E+01
       185             -3.08662E+01
       186             -3.13846E+01
       187             -3.14341E+01
       188             -3.17175E+01
       189             -3.23921E+01
       190             -3.26899E+01
       191             -3.28818E+01
       192             -3.31615E+01
       193             -3.32255E+01
       194             -3.34625E+01
       195             -3.38273E+01
       196             -3.40050E+01
       197             -3.40389E+01
       198             -3.41095E+01
       199             -3.42113E+01
       200             -3.42590E+01
       201             -3.43315E+01
       202             -3.45042E+01
       203             -3.45475E+01
       204             -3.47002E+01
       205             -3.48201E+01
       206             -3.49347E+01
       207             -3.51397E+01
       208             -3.52088E+01
       209             -3.54785E+01
       210             -3.55519E+01
       211             -3.59257E+01
       212             -3.60502E+01
       213             -3.62778E+01
       214             -3.63349E+01
       215             -3.64814E+01
       216             -3.65996E+01
       217             -3.67113E+01
       218             -3.67394E+01
       219             -3.68902E+01
       220             -3.70606E+01
       221             -3.72950E+01
       222             -3.74310E+01
       223             -3.75057E+01
       224             -3.77760E+01
       225             -3.82234E+01
       226             -3.88584E+01
       227             -3.97041E+01
       228             -4.04913E+01
       229             -4.20463E+01
       230             -4.32427E+01
       231             -4.60093E+01
       232             -4.70864E+01
       233             -5.15547E+01
       234             -5.79305E+01
       235             -6.02845E+01
       236             -6.46863E+01
       237              6.66222E+01
       238             -6.72518E+01
       239             -6.96158E+01
       240             -7.90146E+01
       241              8.04613E+01
       242             -9.81923E+01
       243             -1.02394E+02
       244             -1.28694E+02
       245             -1.31921E+02
       246             -1.45441E+02
       247             -1.48203E+02
       248             -1.52394E+02
       249             -1.55163E+02
       250             -1.55989E+02
       251             -1.56872E+02
       252             -1.57602E+02
       253             -1.57847E+02
       254             -1.58258E+02
       255             -1.58779E+02
       256             -1.58868E+02
       257             -1.58870E+02
       258             -1.58940E+02
       259             -1.58949E+02
       260             -1.58966E+02
       261             -1.58984E+02
       262             -1.59046E+02
       263             -1.59080E+02
       264             -1.59086E+02
       265             -1.59094E+02
       266             -1.59097E+02
       267             -1.59101E+02
       268             -1.59112E+02
       269             -1.59116E+02
       270             -1.59119E+02
       271             -1.59132E+02
       272             -1.59139E+02
       273             -1.59144E+02
       274             -1.59148E+02
       275             -1.59151E+02
       276             -1.59152E+02
       277             -1.59152E+02
       278             -1.59153E+02
       279             -1.59155E+02
       280             -1.59155E+02
       281             -1.59155E+02
       282             -1.59155E+02
       283             -1.59156E+02
       284             -1.59158E+02
       285             -1.59159E+02
       286             -1.59160E+02
       287             -1.59160E+02
       288             -1.59161E+02
       289             -1.59162E+02
       290             -1.59162E+02
       291             -1.59164E+02
       292             -1.59169E+02
       293             -1.59191E+02
       294             -1.59199E+02
       295             -1.59225E+02
       296             -1.59228E+02
       297             -1.59250E+02
       298             -1.59262E+02
       299             -1.59297E+02
       300             -1.59309E+02
       301             -1.59386E+02
       302             -1.59466E+02
       303             -1.59483E+02
       304             -1.59499E+02
       305             -1.59601E+02
       306             -1.59660E+02
       307             -1.59678E+02
       308             -1.59824E+02
       309             -1.59825E+02
       310             -1.59900E+02
       311             -1.59983E+02
       312             -1.60071E+02
       313             -1.60094E+02
       314             -1.60120E+02
       315             -1.60244E+02
       316             -1.60666E+02
       317             -1.60758E+02
       318             -1.61052E+02
       319             -1.61357E+02
       320             -1.61501E+02
       321             -1.62617E+02
       322             -1.63245E+02
       323             -1.64333E+02
       324             -1.67154E+02
       325             -1.67219E+02
       326             -1.69489E+02
       327             -1.72927E+02
       328             -1.74669E+02
       329             -1.84212E+02
       330             -1.84556E+02
       331             -1.84916E+02
       332             -1.87242E+02
       333             -1.87403E+02
       334             -1.89660E+02
       335             -1.89742E+02
       336             -1.91888E+02
       337             -1.91982E+02
       338             -1.93952E+02
       339             -1.94205E+02
       340             -1.95879E+02
       341             -1.96378E+02
       342             -1.97679E+02
       343             -1.98420E+02
       344             -1.99362E+02
       345             -2.00367E+02
       346             -2.00935E+02
       347             -2.02250E+02
       348             -2.02402E+02
       349             -2.03770E+02
       350             -2.04068E+02
       351             -2.05045E+02
       352             -2.05813E+02
       353             -2.06233E+02
       354             -2.07340E+02
       355             -2.07482E+02
       356             -2.08370E+02
       357             -2.09077E+02
       358             -2.09329E+02
       359             -2.10221E+02
       360             -2.10602E+02
       361             -2.10849E+02
       362             -2.11049E+02
       363             -2.11817E+02
       364             -2.12073E+02
       365             -2.12524E+02
       366             -2.13168E+02
       367             -2.13487E+02
       368             -2.13744E+02
       369             -2.14263E+02
       370             -2.14617E+02
       371             -2.14857E+02
       372             -2.14892E+02
       373             -2.16167E+02
       374             -2.16193E+02
       375             -2.17514E+02
       376             -2.18150E+02
       377             -2.18851E+02
       378             -2.19020E+02
       379             -2.20280E+02
       380             -2.20536E+02
       381             -2.21948E+02
       382             -2.23409E+02
       383             -2.24117E+02
       384             -2.27347E+02
       385              2.28593E+02
       386             -2.31255E+02
       387             -2.34726E+02
       388             -2.42844E+02
       389             -2.45795E+02
       390             -2.46280E+02
       391             -2.47827E+02
       392             -2.49570E+02
       393             -2.50491E+02
       394             -2.51261E+02
       395             -2.52982E+02
       396             -2.54198E+02
       397             -2.54769E+02
       398             -2.54862E+02
       399             -2.56647E+02
       400             -2.57882E+02
       401             -2.58376E+02
       402             -2.58635E+02
       403             -2.59080E+02
       404             -2.59843E+02
       405             -2.60757E+02
       406             -2.60765E+02
       407             -2.61829E+02
       408             -2.63035E+02
       409             -2.63041E+02
       410             -2.64402E+02
       411             -2.65534E+02
       412             -2.65968E+02
       413             -2.67798E+02
       414             -2.68335E+02
       415             -2.70038E+02
       416             -2.71755E+02
       417             -2.73164E+02
       418             -2.73267E+02
       419             -2.78303E+02
       420             -2.78870E+02
       421             -2.79519E+02
       422             -2.80000E+02
       423             -2.80617E+02
       424             -2.80780E+02
       425             -2.81182E+02
       426             -2.81358E+02
       427             -2.81498E+02
       428             -2.81655E+02
       429             -2.81943E+02
       430             -2.82007E+02
       431             -2.82106E+02
       432             -2.82339E+02
       433             -2.82401E+02
       434             -2.82467E+02
       435             -2.82783E+02
       436             -2.82910E+02
       437             -2.83134E+02
       438             -2.83279E+02
       439             -2.83451E+02
       440             -2.83582E+02
       441             -2.83733E+02
       442             -2.83828E+02
       443             -2.83983E+02
       444             -2.84022E+02
       445             -2.84173E+02
       446             -2.84205E+02
       447             -2.84236E+02
       448             -2.84410E+02
       449             -2.84568E+02
       450             -2.84621E+02
       451             -2.84908E+02
       452             -2.85376E+02
       453             -2.85662E+02
       454             -2.86152E+02
       455             -2.87435E+02
       456             -2.87445E+02
       457             -2.87903E+02
       458             -2.89622E+02
       459             -2.91009E+02
       460             -2.93418E+02
       461             -2.94264E+02
       462             -2.94648E+02
       463             -2.95082E+02
       464             -2.95152E+02
       465             -2.95377E+02
       466             -2.95502E+02
       467             -2.95870E+02
       468             -2.96096E+02
       469             -2.96144E+02
       470             -2.96376E+02
       471             -2.96543E+02
       472             -2.96625E+02
       473             -2.96703E+02
       474             -2.96712E+02
       475             -2.96718E+02
       476             -2.96789E+02
       477             -2.96846E+02
       478             -2.96848E+02
       479             -2.96903E+02
       480             -2.96983E+02
       481             -2.96996E+02
       482             -2.97035E+02
       483             -2.97077E+02
       484             -2.97110E+02
       485             -2.97171E+02
       486             -2.97212E+02
       487             -2.97247E+02
       488             -2.97299E+02
       489             -2.97342E+02
       490             -2.97399E+02
       491             -2.97459E+02
       492             -2.97521E+02
       493             -2.97588E+02
       494             -2.97656E+02
       495             -2.97749E+02
       496             -2.97772E+02
       497             -2.97799E+02
       498             -2.97919E+02
       499             -2.98042E+02
       500             -2.98082E+02
       501             -2.98147E+02
       502             -2.98514E+02
       503             -2.98825E+02
       504             -2.98934E+02
       505             -2.99049E+02
       506             -2.99233E+02
       507             -2.99319E+02
       508             -2.99322E+02
       509             -2.99428E+02
       510             -2.99510E+02
       511             -2.99592E+02
       512             -2.99674E+02
       513             -2.99763E+02
       514             -2.99881E+02
       515             -3.00612E+02
       516             -3.02286E+02
       517             -3.06213E+02
       518             -3.09177E+02
       519             -3.10782E+02
       520             -3.11509E+02
       521             -3.16505E+02
       522             -3.32280E+02
       523             -3.36073E+02
       524             -3.66334E+02
       525             -3.74165E+02
       526             -3.90710E+02
       527             -4.14733E+02
       528             -4.27353E+02
       529             -4.43745E+02
       530             -5.02676E+02
       531             -6.08183E+02
       532             -6.46849E+02
       533             -6.86356E+02
       534             -7.27880E+02
       535             -9.22016E+02
       536             -9.29482E+02
       537             -1.11962E+03
       538             -1.38033E+03
       539             -1.48384E+03
       540             -1.65086E+03
       541             -1.90056E+03
       542             -2.11932E+03
       543             -2.42757E+03
       544             -2.99410E+03
       545             -3.28136E+03
       546             -3.47949E+03
       547             -3.63411E+03
       548             -3.79163E+03
       549             -3.89822E+03
       550             -4.25996E+03
       551             -4.51638E+03
       552             -4.71467E+03
       553             -5.37984E+03
       554             -5.71213E+03
       555             -6.44138E+03
       556             -6.47768E+03
       557             -6.98992E+03
       558             -7.95073E+03
       559             -8.44487E+03
       560             -8.85176E+03
       561             -9.29700E+03
       562             -9.95426E+03
       563             -1.29788E+04
       564             -1.36564E+04
       565             -1.39405E+04
       566             -1.60175E+04
       567             -1.80749E+04
       568             -1.87820E+04
       569             -1.92913E+04
       570             -1.93970E+04
       571             -1.94049E+04
       572             -1.95654E+04
       573             -1.98185E+04
       574             -2.01523E+04
       575             -2.10439E+04
       576             -2.10802E+04
       577             -2.11889E+04
       578             -2.23854E+04
       579             -2.48195E+04
       580             -2.53647E+04
       581             -2.60065E+04
       582             -2.64682E+04
       583             -2.73808E+04
       584             -2.80213E+04
       585             -2.81245E+04
       586             -3.06215E+04
       587             -3.30701E+04
       588             -3.51688E+04
       589             -3.58229E+04
       590             -3.65954E+04
       591             -3.74196E+04
       592             -3.75989E+04
       593             -3.78532E+04
       594             -3.98733E+04
       595             -4.09096E+04
       596             -4.10508E+04
       597             -4.17490E+04
       598             -4.17528E+04
       599             -4.24546E+04
       600             -4.27064E+04
       601             -4.30333E+04
       602             -4.39955E+04
       603             -4.43142E+04
       604             -4.80507E+04
       605             -5.00653E+04
       606             -5.09883E+04
       607             -5.25055E+04
       608             -5.52074E+04
       609             -5.83864E+04
       610             -5.86937E+04
       611             -6.35792E+04
       612             -6.39333E+04
       613             -6.49464E+04
       614             -6.92195E+04
       615             -7.00892E+04
       616             -7.28437E+04
       617             -7.44576E+04
       618             -7.51791E+04
       619             -7.57007E+04
       620             -7.79708E+04
       621             -8.02442E+04
       622             -8.08103E+04
       623             -8.23861E+04
       624             -8.60009E+04
       625             -8.70620E+04
       626             -8.74062E+04
       627             -8.83793E+04
       628             -8.85057E+04
       629             -8.86700E+04
       630             -9.20450E+04
       631             -1.02210E+05
       632             -1.03297E+05
       633             -1.04307E+05
       634             -1.07921E+05
       635             -1.13174E+05
       636             -1.17230E+05
       637             -1.26104E+05
       638             -1.29364E+05
       639             -1.30929E+05
       640             -1.32645E+05
       641             -1.33218E+05
       642             -1.36203E+05
       643             -1.36729E+05
       644             -1.38652E+05
       645             -1.46179E+05
       646             -1.51094E+05
       647             -1.51316E+05
       648             -1.60144E+05
       649             -1.63092E+05
       650             -1.64280E+05
       651             -1.64311E+05
       652             -1.67052E+05
       653             -1.72178E+05
       654             -1.76294E+05
       655             -1.80731E+05
       656             -1.86947E+05
       657             -1.92983E+05
       658             -2.02239E+05
       659             -2.05680E+05
       660             -2.06166E+05
       661             -2.07341E+05
       662             -2.13776E+05
       663             -2.27490E+05
       664             -2.31741E+05
       665             -2.35697E+05
       666             -2.39852E+05
       667             -2.41656E+05
       668             -2.44893E+05
       669             -2.46374E+05
       670             -2.50306E+05
       671             -2.52550E+05
       672             -2.53528E+05
       673             -2.59768E+05
       674             -2.60469E+05
       675             -2.60987E+05
       676             -2.63411E+05
       677             -2.75687E+05
       678             -2.75788E+05
       679             -2.80513E+05
       680             -2.96722E+05
       681             -3.01471E+05
       682             -3.05296E+05
       683             -3.10337E+05
       684             -3.16103E+05
       685             -3.29292E+05
       686             -3.30589E+05
       687             -3.36545E+05
       688             -3.55563E+05
       689             -3.57031E+05
       690             -3.57229E+05
       691             -3.57853E+05
       692             -3.65615E+05
       693             -3.83341E+05
       694             -3.84903E+05
       695             -3.87163E+05
       696             -3.92867E+05
       697             -3.94104E+05
       698             -3.97235E+05
       699             -4.03519E+05
       700             -4.15123E+05
       701             -4.16041E+05
       702             -4.23306E+05
       703             -4.29634E+05
       704             -4.44370E+05
       705             -4.46909E+05
       706             -4.54644E+05
       707             -4.65415E+05
       708             -4.66282E+05
       709             -4.76056E+05
       710             -4.77312E+05
       711             -4.94170E+05
       712             -4.97500E+05
       713             -4.98158E+05
       714             -5.03074E+05
       715             -5.08003E+05
       716             -5.09059E+05
       717             -5.14077E+05
       718             -5.17546E+05
       719             -5.21098E+05
       720             -5.39687E+05
       721             -5.41468E+05
       722             -5.52444E+05
       723             -5.72853E+05
       724             -5.73785E+05
       725             -5.76132E+05
       726             -6.01006E+05
       727             -6.05726E+05
       728             -6.07115E+05
       729             -6.14042E+05
       730             -6.14298E+05
       731             -6.31075E+05
       732             -6.39085E+05
       733             -6.40296E+05
       734             -6.49277E+05
       735             -6.53401E+05
       736             -6.60809E+05
       737             -6.72858E+05
       738             -6.73880E+05
       739             -6.86373E+05
       740             -6.86377E+05
       741             -7.06263E+05
       742             -7.07814E+05
       743             -7.12492E+05
       744             -7.20163E+05
       745             -7.35005E+05
       746             -7.40188E+05
       747             -7.41129E+05
       748             -7.73673E+05
       749             -7.74966E+05
       750             -7.77471E+05
       751             -8.06962E+05
       752             -8.08515E+05
       753             -8.22972E+05
       754             -8.23450E+05
       755             -8.40539E+05
       756             -8.41239E+05
       757             -8.53268E+05
       758             -8.72001E+05
       759             -8.72971E+05
       760             -8.74508E+05
       761             -9.05292E+05
       762             -9.06500E+05
       763             -9.06908E+05
       764             -9.37583E+05
       765             -9.37600E+05
       766             -9.38212E+05
       767             -9.44919E+05
       768             -9.45574E+05
       769             -9.61185E+05
       770             -9.62483E+05
       771             -9.68324E+05
       772             -9.69963E+05
       773             -9.84846E+05
       774             -9.85878E+05
       775             -9.89739E+05
       776             -9.90384E+05
       777             -9.98863E+05
       778             -1.00038E+06
       779             -1.00067E+06
       780             -1.00584E+06
       781             -1.00649E+06
       782             -1.02900E+06
       783             -1.02975E+06
       784             -1.05741E+06
       785             -1.05912E+06
       786             -1.07133E+06
       787             -1.07184E+06
       788             -1.08545E+06
       789             -1.08697E+06
       790             -1.09794E+06
       791             -1.09958E+06
       792             -1.11270E+06
       793             -1.11350E+06
       794             -1.11357E+06
       795             -1.11691E+06
       796             -1.13815E+06
       797             -1.13989E+06
       798             -1.16300E+06
       799             -1.16451E+06
       800             -1.18679E+06
       801             -1.18772E+06
       802             -1.19296E+06
       803             -1.19371E+06
       804             -1.20873E+06
       805             -1.20899E+06
       806             -1.21045E+06
       807             -1.21131E+06
       808             -1.21235E+06
       809             -1.21529E+06
       810             -1.22982E+06
       811             -1.23130E+06
       812             -1.24961E+06
       813             -1.25076E+06
       814             -1.25455E+06
       815             -1.26460E+06
       816             -1.26754E+06
       817             -1.26927E+06
       818             -1.28073E+06
       819             -1.28445E+06
       820             -1.28590E+06
       821             -1.28873E+06
       822             -1.29980E+06
       823             -1.30113E+06
       824             -1.30872E+06
       825             -1.31335E+06
       826             -1.31511E+06
       827             -1.32569E+06
       828             -1.32718E+06
       829             -1.33599E+06
       830             -1.33634E+06
       831             -1.33779E+06
       832             -1.34524E+06
       833             -1.34692E+06
       834             -1.35271E+06
       835             -1.35418E+06
       836             -1.35846E+06
       837             -1.35980E+06
       838             -1.36255E+06
       839             -1.36355E+06
       840             -1.36507E+06
       841             -1.36622E+06
       842             -1.37590E+06
       843             -1.37662E+06
       844             -1.37867E+06
       845             -1.38554E+06
       846             -1.38849E+06
       847             -1.41749E+06
       848             -1.43519E+06
       849             -1.43845E+06
       850             -1.54735E+06
       851             -1.55020E+06
       852             -1.56323E+06
       853             -1.57116E+06
       854             -1.70250E+06
       855             -1.70588E+06
       856             -1.83606E+06
       857             -1.83972E+06
       858             -1.84335E+06
       859             -1.84989E+06
       860             -1.95985E+06
       861             -1.96496E+06
       862             -2.01113E+06
       863             -2.02874E+06
       864             -2.03290E+06
       865             -2.05161E+06
       866             -2.05399E+06
       867             -2.06797E+06
       868             -2.07250E+06
       869             -2.08752E+06
       870             -2.09171E+06
       871             -2.13191E+06
       872             -2.14015E+06
       873             -2.16617E+06
       874             -2.16856E+06
       875             -2.16896E+06
       876             -2.17043E+06
       877             -2.18783E+06
       878             -2.20481E+06
       879             -2.21463E+06
       880             -2.23643E+06
       881             -2.25592E+06
       882             -2.26091E+06
       883             -2.27213E+06
       884             -2.27470E+06
       885             -2.30286E+06
       886             -2.31846E+06
       887             -2.33183E+06
       888             -2.34753E+06
       889             -2.35706E+06
       890             -2.37438E+06
       891             -2.38366E+06
       892             -2.39302E+06
       893             -2.41347E+06
       894             -2.43457E+06
       895             -2.44405E+06
       896             -2.48405E+06
       897             -2.50930E+06
       898             -2.52094E+06
       899             -2.53677E+06
       900             -2.60311E+06
       901             -2.60513E+06
       902             -2.62016E+06
       903             -2.65557E+06
       904             -2.69070E+06
       905             -2.69717E+06
       906             -2.77298E+06
       907             -2.77766E+06
       908             -2.79195E+06
       909             -2.81728E+06
       910             -2.86188E+06
       911             -2.87434E+06
       912             -2.94727E+06
       913             -2.95077E+06
       914             -3.00247E+06
       915             -3.02607E+06
       916             -3.03723E+06
       917             -3.04694E+06
       918             -3.12582E+06
       919             -3.13520E+06
       920             -3.21386E+06
       921             -3.21776E+06
       922             -3.26566E+06
       923             -3.28537E+06
       924             -3.30714E+06
       925             -3.31646E+06
       926             -3.39889E+06
       927             -3.40729E+06
       928             -3.49206E+06
       929             -3.49716E+06
       930             -3.57117E+06
       931             -3.58321E+06
       932             -3.59076E+06
       933             -3.60093E+06
       934             -3.68186E+06
       935             -3.69054E+06
       936             -3.74416E+06
       937             -3.77848E+06
       938             -3.78389E+06
       939             -3.87525E+06
       940             -3.88129E+06
       941             -3.92229E+06
       942             -3.92883E+06
       943             -3.93931E+06
       944             -3.97378E+06
       945             -3.98476E+06
       946             -3.99650E+06
       947             -4.07236E+06
       948             -4.07756E+06
       949             -4.09847E+06
       950             -4.17138E+06
       951             -4.17699E+06
       952             -4.27033E+06
       953             -4.27452E+06
       954             -4.27821E+06
       955             -4.32246E+06
       956             -4.32652E+06
       957             -4.33734E+06
       958             -4.37170E+06
       959             -4.37700E+06
       960             -4.47159E+06
       961             -4.47688E+06
       962             -4.57151E+06
       963             -4.57659E+06
       964             -4.67295E+06
       965             -4.67611E+06
       966             -4.75821E+06
       967             -4.76251E+06
       968             -4.77436E+06
       969             -4.78390E+06
       970             -4.87231E+06
       971             -4.87703E+06
       972             -4.97301E+06
       973             -4.97578E+06
       974             -5.07122E+06
       975             -5.07410E+06
       976             -5.16898E+06
       977             -5.17190E+06
       978             -5.21948E+06
       979             -5.22639E+06
       980             -5.23571E+06
       981             -5.26760E+06
       982             -5.27053E+06
       983             -5.36216E+06
       984             -5.36479E+06
       985             -5.45612E+06
       986             -5.45892E+06
       987             -5.54975E+06
       988             -5.55021E+06
       989             -5.63944E+06
       990             -5.64194E+06
       991             -5.72233E+06
       992             -5.72541E+06
       993             -5.73274E+06
       994             -5.73967E+06
       995             -5.81520E+06
       996             -5.81599E+06
       997             -5.89802E+06
       998             -5.90070E+06
       999             -5.97866E+06
      1000             -5.98055E+06
      1001             -6.05664E+06
      1002             -6.05850E+06
      1003             -6.12967E+06
      1004             -6.13437E+06
      1005             -6.20074E+06
      1006             -6.20394E+06
      1007             -6.25637E+06
      1008             -6.25773E+06
      1009             -6.27107E+06
      1010             -6.27335E+06
      1011             -6.33101E+06
      1012             -6.33569E+06
      1013             -6.38929E+06
      1014             -6.39375E+06
      1015             -6.44427E+06
      1016             -6.44624E+06
      1017             -6.49406E+06
      1018             -6.49609E+06
      1019             -6.53604E+06
      1020             -6.54179E+06
      1021             -6.57416E+06
      1022             -6.58159E+06
      1023             -6.60932E+06
      1024             -6.61509E+06
      1025             -6.63664E+06
      1026             -6.64362E+06
      1027             -6.65641E+06
      1028             -6.65953E+06
      1029             -6.66338E+06
      1030             -6.67108E+06
      1031             -6.68316E+06
      1032             -6.68539E+06
      1033             -6.69358E+06
      1034             -6.69570E+06
      1035             -6.73116E+06
      1036             -6.78464E+06
      1037             -6.81312E+06
      1038             -6.82346E+06
      1039             -6.89870E+06
      1040             -7.10582E+06
      1041             -7.39734E+06
      1042             -7.40292E+06
      1043             -8.00544E+06
      1044             -8.00858E+06
      1045             -8.63523E+06
      1046             -8.64138E+06
      1047             -9.28982E+06
      1048             -9.29521E+06
      1049             -9.96743E+06
      1050             -9.96970E+06
      1051             -1.06638E+07
      1052             -1.06671E+07
      1053             -1.07874E+07
      1054             -1.13802E+07
      1055             -1.13840E+07
      1056             -1.21164E+07
      1057             -1.21187E+07
      1058             -1.22286E+07
      1059             -1.28443E+07
      1060             -1.28700E+07
      1061             -1.28717E+07
      1062             -1.36397E+07
      1063             -1.36422E+07
      1064             -1.36455E+07
      1065             -1.44259E+07
      1066             -1.44276E+07
      1067             -1.52266E+07
      1068             -1.52279E+07
      1069             -1.60404E+07
      1070             -1.60421E+07
      1071             -1.68672E+07
      1072             -1.68682E+07
      1073             -1.77049E+07
      1074             -1.77058E+07
      1075             -1.79942E+07
      1076             -1.80228E+07
      1077             -1.83109E+07
      1078             -1.85526E+07
      1079             -1.85535E+07
      1080             -2.02732E+07
      1081             -2.02737E+07
      1082             -2.09514E+07
      1083             -2.11433E+07
      1084             -2.11438E+07
      1085             -2.20180E+07
      1086             -2.20188E+07
      1087             -2.28961E+07
      1088             -2.28971E+07
      1089             -2.37762E+07
      1090             -2.37772E+07
      1091             -2.46566E+07
      1092             -2.46577E+07
      1093             -2.55356E+07
      1094             -2.55373E+07
      1095             -2.64122E+07
      1096             -2.64138E+07
      1097             -2.72845E+07
      1098             -2.72859E+07
      1099             -2.81500E+07
      1100             -2.81525E+07
      1101             -2.90081E+07
      1102             -2.90111E+07
      1103             -2.98572E+07
      1104             -2.98595E+07
      1105             -3.06944E+07
      1106             -3.06972E+07
      1107             -3.15182E+07
      1108             -3.15221E+07
      1109             -3.22607E+07
      1110             -3.23275E+07
      1111             -3.23313E+07
      1112             -3.31204E+07
      1113             -3.31232E+07
      1114             -3.34040E+07
      1115             -3.38932E+07
      1116             -3.38975E+07
      1117             -3.46456E+07
      1118             -3.46508E+07
      1119             -3.53763E+07
      1120             -3.53804E+07
      1121             -3.60815E+07
      1122             -3.60861E+07
      1123             -3.67597E+07
      1124             -3.67656E+07
      1125             -3.74100E+07
      1126             -3.74157E+07
      1127             -3.80300E+07
      1128             -3.80352E+07
      1129             -3.86171E+07
      1130             -3.86225E+07
      1131             -3.91694E+07
      1132             -3.91760E+07
      1133             -3.94151E+07
      1134             -3.96859E+07
      1135             -3.96928E+07
      1136             -4.01653E+07
      1137             -4.01708E+07
      1138             -4.06024E+07
      1139             -4.06117E+07
      1140             -4.09902E+07
      1141             -4.10001E+07
      1142             -4.10092E+07
      1143             -4.13564E+07
      1144             -4.13623E+07
      1145             -4.16627E+07
      1146             -4.16768E+07
      1147             -4.19291E+07
      1148             -4.19397E+07
      1149             -4.21488E+07
      1150             -4.21545E+07
      1151             -4.23087E+07
      1152             -4.23319E+07
      1153             -4.24195E+07
      1154             -4.24671E+07
      1155             -4.25027E+07
      1156             -4.25630E+07
      1157             -4.25696E+07
      1158             -5.06049E+07
      1159             -6.60697E+07
      1160             -6.77015E+07
      1161             -6.77026E+07
      1162             -6.77464E+07
      1163             -6.77532E+07
      1164             -6.78021E+07
      1165             -6.78315E+07
      1166             -6.78493E+07
      1167             -6.79108E+07
      1168             -6.79261E+07
      1169             -6.80158E+07
      1170             -6.80261E+07
      1171             -6.81435E+07
      1172             -6.81488E+07
      1173             -6.82899E+07
      1174             -6.82972E+07
      1175             -6.84619E+07
      1176             -6.84628E+07
      1177             -6.86499E+07
      1178             -6.86539E+07
      1179             -6.88605E+07
      1180             -6.88628E+07
      1181             -6.90903E+07
      1182             -6.90912E+07
      1183             -6.93378E+07
      1184             -6.93395E+07
      1185             -6.96046E+07
      1186             -6.96046E+07
      1187             -6.98873E+07
      1188             -6.98884E+07
      1189             -7.01872E+07
      1190             -7.01882E+07
      1191             -7.05028E+07
      1192             -7.05040E+07
      1193             -7.08337E+07
      1194             -7.08348E+07
      1195             -7.11789E+07
      1196             -7.11799E+07
      1197             -7.15375E+07
      1198             -7.15387E+07
      1199             -7.19092E+07
      1200             -7.19102E+07
      1201             -7.22927E+07
      1202             -7.22939E+07
      1203             -7.26875E+07
      1204             -7.26889E+07
      1205             -7.30931E+07
      1206             -7.30940E+07
      1207             -7.35081E+07
      1208             -7.35093E+07
      1209             -7.39321E+07
      1210             -7.39333E+07
      1211             -7.43644E+07
      1212             -7.43654E+07
      1213             -7.48038E+07
      1214             -7.48052E+07
      1215             -7.52499E+07
      1216             -7.52513E+07
      1217             -7.57020E+07
      1218             -7.57030E+07
      1219             -7.61587E+07
      1220             -7.61600E+07
      1221             -7.66199E+07
      1222             -7.66210E+07
      1223             -7.70845E+07
      1224             -7.70853E+07
      1225             -7.75514E+07
      1226             -7.75526E+07
      1227             -7.80204E+07
      1228             -7.80214E+07
      1229             -7.84906E+07
      1230             -7.84911E+07
      1231             -7.89606E+07
      1232             -7.89615E+07
      1233             -7.94306E+07
      1234             -7.94309E+07
      1235             -7.98989E+07
      1236             -7.98994E+07
      1237             -8.03651E+07
      1238             -8.03659E+07
      1239             -8.08290E+07
      1240             -8.08293E+07
      1241             -8.12887E+07
      1242             -8.12896E+07
      1243             -8.17445E+07
      1244             -8.17453E+07
      1245             -8.21954E+07
      1246             -8.21960E+07
      1247             -8.26401E+07
      1248             -8.26414E+07
      1249             -8.30789E+07
      1250             -8.30800E+07
      1251             -8.34791E+07
      1252             -8.35105E+07
      1253             -8.35116E+07
      1254             -8.39339E+07
      1255             -8.39357E+07
      1256             -8.43493E+07
      1257             -8.43510E+07
      1258             -8.47554E+07
      1259             -8.47574E+07
      1260             -8.51515E+07
      1261             -8.51545E+07
      1262             -8.55378E+07
      1263             -8.55407E+07
      1264             -8.59132E+07
      1265             -8.59159E+07
      1266             -8.62767E+07
      1267             -8.62801E+07
      1268             -8.66284E+07
      1269             -8.66319E+07
      1270             -8.69678E+07
      1271             -8.69709E+07
      1272             -8.72932E+07
      1273             -8.72976E+07
      1274             -8.76056E+07
      1275             -8.76101E+07
      1276             -8.79042E+07
      1277             -8.79082E+07
      1278             -8.81874E+07
      1279             -8.81927E+07
      1280             -8.84563E+07
      1281             -8.84615E+07
      1282             -8.87102E+07
      1283             -8.87145E+07
      1284             -8.89471E+07
      1285             -8.89530E+07
      1286             -8.91687E+07
      1287             -8.91744E+07
      1288             -8.93740E+07
      1289             -8.93792E+07
      1290             -8.95613E+07
      1291             -8.95685E+07
      1292             -8.97329E+07
      1293             -8.97394E+07
      1294             -8.98869E+07
      1295             -8.98931E+07
      1296             -9.00216E+07
      1297             -9.00311E+07
      1298             -9.01405E+07
      1299             -9.01492E+07
      1300             -9.02417E+07
      1301             -9.02491E+07
      1302             -9.03230E+07
      1303             -9.03325E+07
      1304             -9.03879E+07
      1305             -9.03953E+07
      1306             -9.04327E+07
      1307             -9.04396E+07
      1308             -9.04568E+07
      1309             -9.04674E+07
      1310             -9.05060E+07
      1311             -9.19791E+07
      1312             -9.62724E+07
      1313             -9.70411E+07
      1314             -1.37738E+08
      1315             -1.41085E+08
      1316             -1.87859E+08
      1317             -1.87956E+08
      1318             -1.88010E+08
      1319             -1.88049E+08
      1320             -1.88068E+08
      1321             -1.88159E+08
      1322             -1.88186E+08
      1323             -1.88326E+08
      1324             -1.88350E+08
      1325             -1.88543E+08
      1326             -1.88555E+08
      1327             -1.88801E+08
      1328             -1.88807E+08
      1329             -1.89101E+08
      1330             -1.89107E+08
      1331             -1.89447E+08
      1332             -1.89449E+08
      1333             -1.89831E+08
      1334             -1.89836E+08
      1335             -1.90256E+08
      1336             -1.90264E+08
      1337             -1.90722E+08
      1338             -1.90731E+08
      1339             -1.91225E+08
      1340             -1.91237E+08
      1341             -1.91765E+08
      1342             -1.91779E+08
      1343             -1.92341E+08
      1344             -1.92354E+08
      1345             -1.92949E+08
      1346             -1.92962E+08
      1347             -1.93587E+08
      1348             -1.93603E+08
      1349             -1.94256E+08
      1350             -1.94272E+08
      1351             -1.94953E+08
      1352             -1.94966E+08
      1353             -1.95674E+08
      1354             -1.95689E+08
      1355             -1.96418E+08
      1356             -1.96435E+08
      1357             -1.97186E+08
      1358             -1.97200E+08
      1359             -1.97974E+08
      1360             -1.97985E+08
      1361             -1.98777E+08
      1362             -1.98790E+08
      1363             -1.99598E+08
      1364             -1.99610E+08
      1365             -2.00434E+08
      1366             -2.00443E+08
      1367             -2.01281E+08
      1368             -2.01289E+08
      1369             -2.02137E+08
      1370             -2.02146E+08
      1371             -2.03004E+08
      1372             -2.03011E+08
      1373             -2.03878E+08
      1374             -2.03882E+08
      1375             -2.04756E+08
      1376             -2.04760E+08
      1377             -2.05637E+08
      1378             -2.05642E+08
      1379             -2.06521E+08
      1380             -2.06524E+08
      1381             -2.07405E+08
      1382             -2.07407E+08
      1383             -2.08287E+08
      1384             -2.08290E+08
      1385             -2.09167E+08
      1386             -2.09169E+08
      1387             -2.10043E+08
      1388             -2.10044E+08
      1389             -2.10912E+08
      1390             -2.10916E+08
      1391             -2.11776E+08
      1392             -2.11779E+08
      1393             -2.12632E+08
      1394             -2.12632E+08
      1395             -2.13477E+08
      1396             -2.13479E+08
      1397             -2.14311E+08
      1398             -2.14314E+08
      1399             -2.15944E+08
      1400             -2.15947E+08
      1401             -2.16739E+08
      1402             -2.16744E+08
      1403             -2.17521E+08
      1404             -2.17524E+08
      1405             -2.18284E+08
      1406             -2.18289E+08
      1407             -2.19030E+08
      1408             -2.19038E+08
      1409             -2.19760E+08
      1410             -2.19767E+08
      1411             -2.20470E+08
      1412             -2.20477E+08
      1413             -2.21158E+08
      1414             -2.21170E+08
      1415             -2.21828E+08
      1416             -2.21840E+08
      1417             -2.22477E+08
      1418             -2.22487E+08
      1419             -2.23102E+08
      1420             -2.23114E+08
      1421             -2.23704E+08
      1422             -2.23718E+08
      1423             -2.24184E+08
      1424             -2.24283E+08
      1425             -2.24297E+08
      1426             -2.24839E+08
      1427             -2.24852E+08
      1428             -2.25368E+08
      1429             -2.25383E+08
      1430             -2.25873E+08
      1431             -2.25888E+08
      1432             -2.26353E+08
      1433             -2.26365E+08
      1434             -2.26805E+08
      1435             -2.26817E+08
      1436             -2.27229E+08
      1437             -2.27243E+08
      1438             -2.27627E+08
      1439             -2.27640E+08
      1440             -2.27998E+08
      1441             -2.28008E+08
      1442             -2.28340E+08
      1443             -2.28349E+08
      1444             -2.28652E+08
      1445             -2.28661E+08
      1446             -2.28937E+08
      1447             -2.28941E+08
      1448             -2.29191E+08
      1449             -2.29193E+08
      1450             -2.29408E+08
      1451             -2.29419E+08
      1452             -2.29587E+08
      1453             -2.29623E+08
      1454             -2.29745E+08
      1455             -2.29784E+08
      1456             -2.29883E+08
      1457             -2.29905E+08
      1458             -2.29969E+08
      1459             -2.30066E+08
      1460             -2.30077E+08
      1461             -2.30208E+08
      1462             -2.30211E+08
      1463             -2.30242E+08
      1464             -2.30307E+08
      1465             -2.30310E+08
      1466             -2.68875E+08
      1467             -2.78032E+08
      1468             -4.64751E+08
      1469             -6.20954E+08
      1470             -1.59426E+09
      1471             -1.59467E+09
      1472             -1.59505E+09
      1473             -1.59535E+09
      1474             -1.59539E+09
      1475             -1.59544E+09
      1476             -1.59552E+09
      1477             -1.59553E+09
      1478             -1.59565E+09
      1479             -1.59578E+09
      1480             -1.59590E+09
      1481             -1.59604E+09
      1482             -1.59615E+09
      1483             -1.59622E+09
      1484             -1.59637E+09
      1485             -1.59653E+09
      1486             -1.59669E+09
      1487             -1.59682E+09
      1488             -1.59697E+09
      1489             -1.59714E+09
      1490             -1.59731E+09
      1491             -1.59749E+09
      1492             -1.59766E+09
      1493             -1.59785E+09
      1494             -1.59804E+09
      1495             -1.59823E+09
      1496             -1.59842E+09
      1497             -1.59862E+09
      1498             -1.59882E+09
      1499             -1.59903E+09
      1500             -1.59923E+09
      1501             -1.59944E+09
      1502             -1.59965E+09
      1503             -1.59986E+09
      1504             -1.60008E+09
      1505             -1.60030E+09
      1506             -1.60051E+09
      1507             -1.60073E+09
      1508             -1.60095E+09
      1509             -1.60117E+09
      1510             -1.60139E+09
      1511             -1.60161E+09
      1512             -1.60183E+09
      1513             -1.60205E+09
      1514             -1.60226E+09
      1515             -1.60248E+09
      1516             -1.60269E+09
      1517             -1.60291E+09
      1518             -1.60312E+09
      1519             -1.60332E+09
      1520             -1.60352E+09
      1521             -1.60372E+09
      1522             -1.60392E+09
      1523             -1.60411E+09
      1524             -1.60430E+09
      1525             -1.60448E+09
      1526             -1.60464E+09
      1527             -1.60478E+09
      1528             -1.60485E+09
      1529             -1.60495E+09
      1530             -1.60497E+09
      1531             -1.60514E+09
      1532             -1.60516E+09
      1533             -1.60536E+09
      1534             -1.60538E+09
      1535             -1.60561E+09
      1536             -1.60562E+09
      1537             -1.60587E+09
      1538             -1.60588E+09
      1539             -1.60614E+09
      1540             -1.60615E+09
      1541             -1.60642E+09
      1542             -1.60643E+09
      1543             -1.60671E+09
      1544             -1.60671E+09
      1545             -1.60699E+09
      1546             -1.60700E+09
      1547             -1.60728E+09
      1548             -1.60729E+09
      1549             -1.60757E+09
      1550             -1.60758E+09
      1551             -1.60786E+09
      1552             -1.60787E+09
      1553             -1.60815E+09
      1554             -1.60815E+09
      1555             -1.60844E+09
      1556             -1.60844E+09
      1557             -1.60872E+09
      1558             -1.60872E+09
      1559             -1.60899E+09
      1560             -1.60899E+09
      1561             -1.60926E+09
      1562             -1.60926E+09
      1563             -1.60952E+09
      1564             -1.60952E+09
      1565             -1.60977E+09
      1566             -1.60978E+09
      1567             -1.61001E+09
      1568             -1.61002E+09
      1569             -1.61023E+09
      1570             -1.61025E+09
      1571             -1.61043E+09
      1572             -1.61046E+09
      1573             -1.61060E+09
      1574             -1.61067E+09
      1575             -1.61078E+09
      1576             -1.61088E+09
      1577             -1.61098E+09
      1578             -1.61108E+09
      1579             -1.61118E+09
      1580             -1.61127E+09
      1581             -1.61137E+09
      1582             -1.61146E+09
      1583             -1.61152E+09
      1584             -1.61163E+09
      1585             -1.61169E+09
      1586             -1.61173E+09
      1587             -1.61178E+09
      1588             -1.61181E+09
      1589             -1.61196E+09
      1590             -1.61224E+09
      1591             -1.61236E+09
      1592             -1.61255E+09
      1593             -1.61287E+09
      1594             -1.61321E+09
      1595             -1.61355E+09
      1596             -1.61390E+09
      1597             -1.61426E+09
      1598             -1.61463E+09
      1599             -1.61501E+09
      1600             -1.61539E+09
      1601             -1.61577E+09
      1602             -1.61616E+09
      1603             -1.61654E+09
      1604             -1.61693E+09
      1605             -1.61732E+09
      1606             -1.61770E+09
      1607             -1.61807E+09
      1608             -1.61843E+09
      1609             -1.61879E+09
      1610             -1.61914E+09
      1611             -1.61948E+09
      1612             -1.61980E+09
      1613             -1.62011E+09
      1614             -1.62039E+09
      1615             -1.62064E+09
      1616             -1.62087E+09
      1617             -1.62106E+09
      1618             -1.62120E+09
      1619             -1.62130E+09
      1620             -2.02323E+09
      1621             -2.30570E+09
      1622             -3.16582E+09
      1623             -1.59155E+02    +/-        4.58859E-05
      1624             -1.59152E+02    +/-        6.44601E-05
      1625             -1.59156E+02    +/-        1.01522E-04
      1626             -1.59152E+02    +/-        1.70806E-04
      1627             -1.59152E+02    +/-        3.31318E-04
      1628             -2.09645E+01    +/-        3.69841E-04
      1629             -1.59129E+02    +/-        4.31213E-04
      1630             -1.59151E+02    +/-        5.15036E-04
      1631             -1.59149E+02    +/-        6.82083E-04
      1632             -1.59152E+02    +/-        7.60608E-04
      1633             -2.10139E+01    +/-        8.89731E-04
      1634             -1.59151E+02    +/-        8.93449E-04
      1635             -1.59106E+01    +/-        1.06557E-03
      1636             -2.10368E+01    +/-        1.16480E-03
      1637             -1.59132E+02    +/-        1.17896E-03
      1638             -1.59136E+01    +/-        1.20659E-03
      1639             -1.59137E+02    +/-        1.36488E-03
      1640             -1.59152E+02    +/-        1.37721E-03
      1641             -1.59151E+02    +/-        1.38912E-03
      1642             -1.59156E+02    +/-        1.50548E-03
      1643             -1.59149E+02    +/-        1.59982E-03
      1644             -1.59202E+01    +/-        1.81922E-03
      1645             -1.59151E+02    +/-        1.98136E-03
      1646             -2.98728E+02    +/-        2.06813E-03
      1647             -1.59148E+02    +/-        2.13423E-03
      1648             -1.59149E+02    +/-        2.15121E-03
      1649             -1.59048E+01    +/-        2.26905E-03
      1650             -1.59096E+02    +/-        2.35970E-03
      1651             -1.59144E+02    +/-        2.47699E-03
      1652             -1.59062E+02    +/-        2.76759E-03
      1653             -1.59153E+02    +/-        3.26641E-03
      1654             -1.59142E+02    +/-        3.52578E-03
      1655             -1.59005E+01    +/-        4.41575E-03
      1656             -1.59151E+02    +/-        5.37850E-03
      1657             -1.59129E+02    +/-        5.71629E-03
      1658             -2.01388E+01    +/-        6.08826E-03
      1659             -1.59156E+02    +/-        6.79077E-03
      1660             -1.59159E+02    +/-        7.47394E-03
      1661             -1.59100E+01    +/-        7.56506E-03
      1662             -1.58918E+01    +/-        8.14972E-03
      1663             -1.59290E+01    +/-        8.65073E-03
      1664             -2.96328E+02    +/-        8.68057E-03
      1665             -1.59159E+02    +/-        9.06441E-03
      1666             -1.59156E+01    +/-        9.21354E-03
      1667             -1.59264E+01    +/-        9.36021E-03
      1668             -1.59099E+02    +/-        1.04017E-02
      1669             -1.59150E+02    +/-        1.23363E-02
      1670             -1.60416E+02    +/-        1.30077E-02
      1671             -1.59167E+02    +/-        1.49196E-02
      1672             -1.59019E+02    +/-        1.58041E-02
      1673             -1.59172E+02    +/-        1.69484E-02
      1674             -1.59030E+02    +/-        1.93953E-02
      1675             -2.07403E+01    +/-        2.01799E-02
      1676             -1.59166E+02    +/-        2.12244E-02
      1677             -3.36606E+01    +/-        2.31233E-02
      1678             -3.04440E+02    +/-        2.32245E-02
      1679             -1.58903E+01    +/-        2.34038E-02
      1680             -2.97025E+02    +/-        2.70839E-02
      1681             -1.59181E+02    +/-        2.77162E-02
      1682             -1.59159E+02    +/-        2.77399E-02
      1683             -1.59627E+01    +/-        2.93699E-02
      1684             -1.60067E+01    +/-        2.96606E-02
      1685             -1.82392E+02    +/-        3.20207E-02
      1686             -1.59036E+01    +/-        3.47136E-02
      1687             -1.59377E+01    +/-        4.43635E-02
      1688             -1.98823E+01    +/-        4.59919E-02
      1689             -1.59199E+02    +/-        4.91648E-02
      1690             -1.96401E+01    +/-        5.25713E-02
      1691             -1.61665E+02    +/-        5.27902E-02
      1692             -1.58965E+02    +/-        5.97083E-02
      1693             -1.77488E+02    +/-        6.05487E-02
      1694             -1.59219E+02    +/-        6.11517E-02
      1695             -1.80191E+02    +/-        6.27910E-02
      1696             -1.58739E+02    +/-        6.49124E-02
      1697             -1.58611E+02    +/-        6.60892E-02
      1698             -3.84527E+01    +/-        7.55180E-02
      1699             -1.59410E+02    +/-        7.79247E-02
      1700             -3.57565E+01    +/-        7.90249E-02
      1701             -3.00068E+02    +/-        8.81868E-02
      1702             -1.66429E+02    +/-        1.03553E-01
      1703             -1.58961E+02    +/-        1.09189E-01
      1704             -1.62464E+02    +/-        1.13146E-01
      1705             -3.00208E+02    +/-        1.15504E-01
      1706             -1.63394E+01    +/-        1.29833E-01
      1707             -3.19991E+01    +/-        1.35692E-01
      1708             -1.85445E+01    +/-        1.49991E-01
      1709             -3.42610E+01    +/-        1.53874E-01
      1710             -3.01112E+02    +/-        1.58026E-01
      1711             -2.77027E+01    +/-        1.59566E-01
      1712             -2.99283E+02    +/-        1.80108E-01
      1713             -2.84362E+02    +/-        1.83826E-01
      1714             -1.60026E+01    +/-        2.50767E-01
      1715             -1.58143E+02    +/-        2.51542E-01
      1716             -3.00681E+02    +/-        2.65962E-01
      1717             -3.01300E+02    +/-        2.66138E-01
      1718             -1.58833E+02    +/-        2.69007E-01
      1719             -8.96722E+01    +/-        2.71461E-01
      1720             -3.52013E+01    +/-        2.76657E-01
      1721             -4.95964E+01    +/-        2.94152E-01
      1722             -1.60831E+02    +/-        3.16495E-01
      1723             -4.01166E+01    +/-        3.26756E-01
      1724             -1.59456E+02    +/-        3.28815E-01
      1725             -1.59753E+02    +/-        4.07124E-01
      1726             -1.59040E+02    +/-        4.29810E-01
      1727             -2.99774E+02    +/-        5.08687E-01
      1728             -2.95540E+02    +/-        5.28906E-01
      1729             -2.91635E+02    +/-        5.39826E-01
      1730             -5.32752E+01    +/-        5.49909E-01
      1731             -3.44785E+01    +/-        5.53983E-01
      1732             -1.36777E+02    +/-        5.96041E-01
      1733             -2.96457E+01    +/-        6.47414E-01
      1734             -2.95789E+02    +/-        6.90614E-01
      1735             -3.02512E+02    +/-        8.05122E-01
      1736             -1.58667E+02    +/-        8.72456E-01
      1737             -2.97764E+02    +/-        8.84841E-01
      1738             -1.60328E+02    +/-        8.87342E-01
      1739             -3.06545E+02    +/-        9.54653E-01
      1740             -1.68170E+02    +/-        1.06955E+00
      1741             -4.22265E+01    +/-        1.08253E+00
      1742             -2.95230E+02    +/-        1.12543E+00
      1743             -1.74248E+02    +/-        1.21831E+00
      1744             -2.96336E+02    +/-        1.26084E+00
      1745              3.03308E+01    +/-        1.32594E+00
      1746             -4.48203E+01    +/-        1.41133E+00
      1747             -1.48298E+01    +/-        1.45496E+00
      1748             -2.98397E+02    +/-        1.58967E+00
      1749             -3.21663E+02    +/-        1.78705E+00
      1750             -1.58183E+02    +/-        1.82669E+00
      1751             -1.90014E+01    +/-        1.89106E+00
      1752             -1.59716E+02    +/-        1.91094E+00
      1753             -6.20336E+01    +/-        1.94113E+00
      1754             -3.02356E+02    +/-        2.18729E+00
      1755             -3.03591E+01    +/-        2.22679E+00
      1756             -3.49903E+02    +/-        2.26602E+00
      1757             -3.14237E+02    +/-        2.43126E+00
      1758             -2.76838E+02    +/-        2.51730E+00
      1759             -1.48784E+02    +/-        2.57334E+00
      1760             -3.29189E+02    +/-        2.62369E+00
      1761             -2.92434E+02    +/-        2.63584E+00
      1762             -1.18583E+02    +/-        2.77174E+00
      1763             -2.94750E+02    +/-        2.77579E+00
      1764             -2.35245E+02    +/-        2.85864E+00
      1765             -1.68460E+02    +/-        3.05302E+00
      1766             -1.28241E+01    +/-        3.06526E+00
      1767             -4.32853E+01    +/-        3.10744E+00
      1768             -1.58167E+01    +/-        3.13474E+00
      1769             -3.90053E+01    +/-        3.34226E+00
      1770             -1.63036E+02    +/-        3.40793E+00
      1771             -1.59864E+03    +/-        3.46868E+00
      1772             -2.76598E+02    +/-        3.59487E+00
      1773             -7.62168E+01    +/-        3.79704E+00
      1774             -2.91394E+02    +/-        3.95925E+00
      1775             -9.79875E+01    +/-        4.18232E+00
      1776             -4.53406E+01    +/-        4.33358E+00
      1777             -2.88806E+02    +/-        4.88065E+00
      1778             -3.05509E+02    +/-        5.05120E+00
      1779             -2.78029E+02    +/-        5.05374E+00
      1780             -1.59559E+02    +/-        5.31327E+00
      1781             -2.84861E+02    +/-        5.64685E+00
      1782             -1.61188E+02    +/-        5.70994E+00
      1783             -2.77470E+02    +/-        5.72148E+00
      1784             -1.08210E+02    +/-        6.05477E+00
      1785             -2.84127E+02    +/-        6.42283E+00
      1786             -2.79355E+02    +/-        6.58608E+00
      1787             -7.40773E+00    +/-        7.17817E+00
      1788             -2.78408E+02    +/-        7.26834E+00
      1789             -3.04088E+02    +/-        7.57364E+00
      1790             -1.59776E+02    +/-        7.62916E+00
      1791             -2.87682E+02    +/-        8.03139E+00
      1792             -2.80016E+02    +/-        8.18835E+00
      1793             -2.79420E+02    +/-        8.54834E+00
      1794             -2.81021E+02    +/-        8.81701E+00
      1795             -2.35354E+02    +/-        9.36718E+00
      1796             -2.80505E+02    +/-        9.65313E+00
      1797             -3.24612E+02    +/-        9.88866E+00
      1798             -2.88148E+02    +/-        1.04028E+01
      1799             -2.81726E+02    +/-        1.05913E+01
      1800             -1.80012E+01    +/-        1.11526E+01
      1801             -2.82963E+02    +/-        1.14377E+01
      1802             -1.59551E+02    +/-        1.16384E+01
      1803             -3.03199E+02    +/-        1.18444E+01
      1804             -2.38483E+02    +/-        1.20126E+01
      1805             -2.84188E+02    +/-        1.21199E+01
      1806             -2.82986E+02    +/-        1.21557E+01
      1807             -4.01252E+01    +/-        1.24890E+01
      1808             -2.11025E+04    +/-        1.26967E+01
      1809             -2.84350E+02    +/-        1.28925E+01
      1810             -2.11025E+04    +/-        1.30265E+01
      1811             -3.00813E+02    +/-        1.31432E+01
      1812             -2.85846E+02    +/-        1.32097E+01
      1813             -2.35409E+02    +/-        1.33073E+01
      1814             -2.87632E+02    +/-        1.40009E+01
      1815             -2.79273E+02    +/-        1.40249E+01
      1816             -2.96910E+02    +/-        1.47851E+01
      1817             -2.90342E+02    +/-        1.49264E+01
      1818             -1.39801E+02    +/-        1.49458E+01
      1819             -2.92989E+02    +/-        1.52333E+01
      1820             -2.85496E+01    +/-        1.57237E+01
      1821             -8.16802E+01    +/-        1.58904E+01
      1822             -2.89594E+02    +/-        1.60604E+01
      1823             -2.92117E+02    +/-        1.62534E+01
      1824             -2.35410E+02    +/-        1.65471E+01
      1825              1.32236E+02    +/-        1.75006E+01
      1826             -2.38028E+02    +/-        1.86814E+01
      1827             -2.35360E+02    +/-        1.93717E+01
      1828             -4.84681E+01    +/-        1.95041E+01
      1829             -2.35260E+02    +/-        2.18685E+01
      1830             -2.37454E+02    +/-        2.33268E+01
      1831             -2.35118E+02    +/-        2.40751E+01
      1832             -1.53885E+02    +/-        2.49503E+01
      1833             -7.44701E+01    +/-        2.51812E+01
      1834             -2.34941E+02    +/-        2.60131E+01
      1835              7.83054E+01    +/-        2.68161E+01
      1836             -2.34732E+02    +/-        2.76941E+01
      1837             -2.34496E+02    +/-        2.91256E+01
      1838             -2.81789E+02    +/-        2.91950E+01
      1839             -1.47520E+02    +/-        3.03776E+01
      1840             -2.38673E+04    +/-        3.13486E+01
      1841             -2.38667E+04    +/-        3.24368E+01
      1842             -1.94095E+07    +/-        3.29260E+01
      1843             -1.84873E+01    +/-        3.32731E+01
      1844             -1.02316E+05    +/-        3.50717E+01
      1845             -1.53433E+02    +/-        3.64626E+01
      1846             -6.47499E+04    +/-        3.93580E+01
      1847             -6.47499E+04    +/-        3.96754E+01
      1848             -1.51966E+02    +/-        3.99771E+01
      1849             -1.66820E+00    +/-        4.14843E+01
      1850             -1.10853E+03    +/-        4.62213E+01
      1851             -1.53183E+02    +/-        4.78605E+01
      1852             -4.12578E+02    +/-        4.96015E+01
      1853             -2.47809E+08    +/-        5.06103E+01
      1854             -2.22393E+02    +/-        5.09826E+01
      1855              2.98020E+01    +/-        5.10155E+01
      1856             -1.54281E+02    +/-        5.12385E+01
      1857             -1.54945E+03    +/-        5.32348E+01
      1858             -1.36579E+02    +/-        5.35327E+01
      1859             -2.54313E+01    +/-        5.44816E+01
      1860             -1.16468E+03    +/-        5.44984E+01
      1861             -1.01221E+03    +/-        5.48873E+01
      1862             -1.56093E+02    +/-        5.49668E+01
      1863             -8.70826E+02    +/-        5.52320E+01
      1864             -1.66234E+01    +/-        5.57909E+01
      1865             -1.62778E+01    +/-        5.68280E+01
      1866             -2.11805E+02    +/-        5.68307E+01
      1867             -1.60995E+01    +/-        5.70106E+01
      1868             -1.28462E+03    +/-        5.74908E+01
      1869             -1.70238E+01    +/-        5.77667E+01
      1870             -1.87627E+01    +/-        5.78403E+01
      1871             -1.56698E+01    +/-        5.78415E+01
      1872             -1.59435E+01    +/-        5.80729E+01
      1873             -1.55884E+01    +/-        5.80880E+01
      1874             -1.60578E+01    +/-        5.80901E+01
      1875             -1.59836E+01    +/-        5.80911E+01
      1876             -1.59917E+01    +/-        5.81134E+01
      1877             -1.59114E+01    +/-        5.81338E+01
      1878             -1.59192E+01    +/-        5.81452E+01
      1879             -1.59146E+01    +/-        5.81452E+01
      1880             -1.59172E+01    +/-        5.81471E+01
      1881             -1.58832E+01    +/-        5.81474E+01
      1882             -1.59265E+01    +/-        5.81580E+01
      1883             -1.59373E+01    +/-        5.81875E+01
      1884             -1.59511E+01    +/-        5.81886E+01
      1885             -1.58111E+02    +/-        5.82637E+01
      1886             -1.57622E+02    +/-        5.83892E+01
      1887             -1.67163E+01    +/-        5.88097E+01
      1888             -2.20361E+04    +/-        5.95332E+01
      1889             -1.55727E+01    +/-        5.96703E+01
      1890             -6.67693E+02    +/-        6.08633E+01
      1891             -4.77699E+04    +/-        6.33370E+01
      1892             -6.93180E+02    +/-        6.34079E+01
      1893             -1.50143E+03    +/-        6.37010E+01
      1894             -4.77727E+04    +/-        6.44254E+01
      1895             -1.69610E+03    +/-        6.51877E+01
      1896             -7.59579E-01    +/-        6.60225E+01
      1897             -7.03930E+02    +/-        6.64558E+01
      1898             -1.82398E+03    +/-        6.75759E+01
      1899             -6.64045E+01    +/-        7.21632E+01
      1900             -1.46019E+02    +/-        7.29158E+01
      1901             -1.27357E+03    +/-        7.36135E+01
      1902             -3.27793E+03    +/-        7.45843E+01
      1903             -1.66871E+03    +/-        7.53468E+01
      1904              2.02848E+01    +/-        7.69504E+01
      1905             -1.03342E+03    +/-        8.45642E+01
      1906             -3.57144E+01    +/-        8.64729E+01
      1907             -9.98356E+01    +/-        8.84376E+01
      1908             -1.42704E+03    +/-        9.21414E+01
      1909             -2.55750E+03    +/-        9.21982E+01
      1910             -2.28008E+03    +/-        9.24369E+01
      1911             -2.52704E+03    +/-        9.27817E+01
      1912             -5.95086E+02    +/-        9.28023E+01
      1913             -6.41295E+03    +/-        9.37886E+01
      1914             -1.45454E+02    +/-        9.75810E+01
      1915             -1.78666E+03    +/-        9.88050E+01
      1916             -1.34059E+03    +/-        1.00355E+02
      1917             -2.89283E+03    +/-        1.01646E+02
      1918             -1.21261E+03    +/-        1.05772E+02
      1919             -9.91948E+03    +/-        1.10540E+02
      1920             -1.60783E+03    +/-        1.14342E+02
      1921             -2.15136E+08    +/-        1.15153E+02
      1922             -2.68130E+04    +/-        1.17226E+02
      1923             -5.11998E+03    +/-        1.18254E+02
      1924             -1.74476E+03    +/-        1.18435E+02
      1925             -1.03029E+03    +/-        1.20207E+02
      1926             -8.86196E+00    +/-        1.20754E+02
      1927             -1.57423E+03    +/-        1.23640E+02
      1928             -2.06907E+03    +/-        1.27838E+02
      1929              6.56507E+00    +/-        1.29692E+02
      1930             -5.21166E+02    +/-        1.29934E+02
      1931             -3.33000E+01    +/-        1.32629E+02
      1932             -3.54884E+01    +/-        1.35950E+02
      1933             -1.47636E+03    +/-        1.36358E+02
      1934             -1.85972E+03    +/-        1.37646E+02
      1935             -1.36568E+03    +/-        1.40628E+02
      1936             -1.12107E+03    +/-        1.44858E+02
      1937             -3.93638E+04    +/-        1.48878E+02
      1938             -5.71771E+04    +/-        1.52091E+02
      1939             -1.47260E+03    +/-        1.57419E+02
      1940             -1.07927E+03    +/-        1.59933E+02
      1941             -1.27330E+03    +/-        1.68332E+02
      1942             -2.77610E+03    +/-        1.69417E+02
      1943             -5.47675E+03    +/-        1.71808E+02
      1944              2.70317E+01    +/-        1.75900E+02
      1945             -4.42549E+01    +/-        1.76383E+02
      1946             -6.58326E+03    +/-        1.77151E+02
      1947             -1.15397E+03    +/-        1.78792E+02
      1948             -7.08802E+00    +/-        1.78972E+02
      1949             -1.83937E+03    +/-        1.79092E+02
      1950             -2.84127E+03    +/-        1.79444E+02
      1951             -1.54688E+03    +/-        1.81857E+02
      1952             -4.50663E+03    +/-        1.82352E+02
      1953             -9.57023E+01    +/-        1.82844E+02
      1954             -3.11452E+03    +/-        1.84364E+02
      1955             -4.08405E+00    +/-        1.84610E+02
      1956             -1.05398E+03    +/-        1.86512E+02
      1957             -2.68500E+03    +/-        1.93921E+02
      1958             -2.36787E+03    +/-        1.97703E+02
      1959             -1.26928E+03    +/-        2.03748E+02
      1960             -2.23823E+01    +/-        2.06180E+02
      1961             -2.47665E+01    +/-        2.07279E+02
      1962             -5.70922E+03    +/-        2.21641E+02
      1963              5.66183E+00    +/-        2.24901E+02
      1964             -4.08287E+01    +/-        2.25889E+02
      1965              3.32034E+01    +/-        2.30852E+02
      1966             -6.50362E+03    +/-        2.33784E+02
      1967             -4.96521E+01    +/-        2.34776E+02
      1968             -2.21683E+03    +/-        2.37596E+02
      1969             -1.74759E+03    +/-        2.43354E+02
      1970             -3.78776E+03    +/-        2.45616E+02
      1971             -6.03063E+01    +/-        2.45732E+02
      1972             -2.73185E+01    +/-        2.50428E+02
      1973             -3.34523E+03    +/-        2.51434E+02
      1974             -1.34355E+03    +/-        2.53502E+02
      1975             -2.19264E+03    +/-        2.55709E+02
      1976             -2.82550E+01    +/-        2.66135E+02
      1977             -1.44648E+03    +/-        2.67480E+02
      1978             -4.16799E+03    +/-        2.72704E+02
      1979             -1.12988E+03    +/-        2.73259E+02
      1980             -2.77873E+03    +/-        2.74288E+02
      1981             -2.94054E+03    +/-        2.74780E+02
      1982             -1.20158E+03    +/-        2.77533E+02
      1983             -4.04634E+03    +/-        2.78005E+02
      1984             -1.97482E+03    +/-        2.79980E+02
      1985             -2.52049E+03    +/-        2.89201E+02
      1986             -1.77676E+03    +/-        2.96469E+02
      1987             -7.52652E+01    +/-        2.98337E+02
      1988             -4.84273E+03    +/-        3.01018E+02
      1989             -2.93320E+04    +/-        3.02020E+02
      1990             -1.78617E+01    +/-        3.02735E+02
      1991             -4.55792E+01    +/-        3.06075E+02
      1992             -1.29753E+03    +/-        3.07113E+02
      1993             -4.00588E+03    +/-        3.08022E+02
      1994             -1.62182E+03    +/-        3.08158E+02
      1995             -7.80571E+01    +/-        3.11584E+02
      1996             -8.27363E+00    +/-        3.11638E+02
      1997             -2.70809E+02    +/-        3.17015E+02
      1998             -3.88457E+03    +/-        3.25944E+02
      1999             -7.30018E+03    +/-        3.26378E+02
      2000             -2.88503E+01    +/-        3.28350E+02
      2001             -4.62606E+01    +/-        3.32839E+02
      2002             -3.04079E+03    +/-        3.39906E+02
      2003             -2.11951E+03    +/-        3.40145E+02
      2004             -3.46060E+01    +/-        3.40642E+02
      2005             -5.22268E+03    +/-        3.41163E+02
      2006             -4.70427E+03    +/-        3.45563E+02
      2007             -1.32509E+03    +/-        3.46072E+02
      2008             -2.40086E+03    +/-        3.51993E+02
      2009             -1.65933E+03    +/-        3.52205E+02
      2010             -1.95562E+01    +/-        3.52584E+02
      2011             -4.93512E+03    +/-        3.53248E+02
      2012             -3.47776E+04    +/-        3.58429E+02
      2013             -9.31060E+01    +/-        3.61857E+02
      2014             -5.55420E+03    +/-        3.73517E+02
      2015             -2.14030E+03    +/-        3.74467E+02
      2016             -6.65960E+03    +/-        3.75817E+02
      2017             -1.09941E+03    +/-        3.79300E+02
      2018             -3.08514E+01    +/-        3.79465E+02
      2019             -6.00575E+01    +/-        3.80868E+02
      2020             -1.49455E+03    +/-        3.83438E+02
      2021             -6.17181E+03    +/-        3.86944E+02
      2022             -2.82885E+03    +/-        3.86983E+02
      2023             -3.05474E+03    +/-        3.95454E+02
      2024             -6.33488E+01    +/-        4.00226E+02
      2025             -9.01355E+02    +/-        4.03094E+02
      2026             -1.07052E+04    +/-        4.03683E+02
      2027             -1.57044E+04    +/-        4.04128E+02
      2028             -4.35176E+03    +/-        4.05433E+02
      2029             -3.93499E+03    +/-        4.06313E+02
      2030             -3.53845E+03    +/-        4.07037E+02
      2031             -2.51713E+03    +/-        4.14839E+02
      2032             -2.66158E+03    +/-        4.15771E+02
      2033             -1.94344E+03    +/-        4.22021E+02
      2034             -4.96827E+01    +/-        4.23498E+02
      2035             -2.24248E+02    +/-        4.23935E+02
      2036             -4.34108E+01    +/-        4.23976E+02
      2037             -3.30593E+03    +/-        4.35470E+02
      2038             -9.47915E+01    +/-        4.36649E+02
      2039             -6.74078E+03    +/-        4.39496E+02
      2040             -3.90442E+02    +/-        4.40156E+02
      2041             -1.96104E+04    +/-        4.43354E+02
      2042             -2.98590E+03    +/-        4.44104E+02
      2043             -3.60193E+02    +/-        4.44586E+02
      2044             -4.53564E+03    +/-        4.44763E+02
      2045             -3.61348E+03    +/-        4.45612E+02
      2046             -1.88617E+01    +/-        4.58772E+02
      2047             -5.31360E+01    +/-        4.61993E+02
      2048             -1.14613E+03    +/-        4.65616E+02
      2049             -8.39759E+01    +/-        4.68841E+02
      2050             -2.02616E+03    +/-        4.70495E+02
      2051             -2.58515E+03    +/-        4.71221E+02
      2052             -4.89481E+01    +/-        4.79735E+02
      2053             -2.23465E+03    +/-        4.79970E+02
      2054             -1.62501E+02    +/-        4.93644E+02
      2055             -8.66859E+03    +/-        4.94140E+02
      2056             -4.62241E+03    +/-        4.99778E+02
      2057             -1.57011E+01    +/-        5.00417E+02
      2058             -1.82071E+03    +/-        5.02245E+02
      2059             -5.80566E+01    +/-        5.10511E+02
      2060             -8.01973E+01    +/-        5.11139E+02
      2061             -6.44285E+03    +/-        5.11302E+02
      2062             -1.04298E+04    +/-        5.13152E+02
      2063             -7.58909E+03    +/-        5.14243E+02
      2064             -2.45504E+03    +/-        5.22395E+02
      2065             -1.07865E+04    +/-        5.30506E+02
      2066             -5.96172E+01    +/-        5.31296E+02
      2067             -4.77063E+03    +/-        5.31551E+02
      2068             -5.50715E+03    +/-        5.40353E+02
      2069             -6.68160E+01    +/-        5.40794E+02
      2070             -4.37300E+03    +/-        5.43684E+02
      2071             -1.19180E+04    +/-        5.44518E+02
      2072             -8.94337E+03    +/-        5.46821E+02
      2073             -5.77440E+01    +/-        5.49714E+02
      2074             -3.62572E+03    +/-        5.50140E+02
      2075             -4.28603E+02    +/-        5.54985E+02
      2076             -6.96814E+01    +/-        5.60700E+02
      2077             -5.62014E+01    +/-        5.61522E+02
      2078             -5.61052E+01    +/-        5.68246E+02
      2079             -2.02578E+03    +/-        5.68283E+02
      2080             -6.04225E+03    +/-        5.68745E+02
      2081             -1.35444E+03    +/-        5.70697E+02
      2082             -5.85576E+01    +/-        5.73819E+02
      2083             -6.25335E+03    +/-        5.74016E+02
      2084              1.48027E+02    +/-        5.75929E+02
      2085             -2.20127E+04    +/-        5.77700E+02
      2086             -1.35094E+02    +/-        5.83569E+02
      2087             -5.88125E+03    +/-        5.83787E+02
      2088             -2.72874E+03    +/-        5.85087E+02
      2089             -4.22028E+03    +/-        5.86313E+02
      2090             -1.65055E+03    +/-        5.90888E+02
      2091             -6.17288E+03    +/-        5.91898E+02
      2092             -6.69805E+01    +/-        5.92248E+02
      2093             -1.25427E+04    +/-        5.95993E+02
      2094             -9.14243E+03    +/-        5.97857E+02
      2095             -1.25229E+02    +/-        5.98448E+02
      2096             -5.11667E+03    +/-        5.99407E+02
      2097             -6.88999E+03    +/-        5.99793E+02
      2098             -6.74746E+01    +/-        6.05082E+02
      2099             -5.73094E+03    +/-        6.08143E+02
      2100             -9.95769E+03    +/-        6.15774E+02
      2101             -6.36643E+01    +/-        6.21911E+02
      2102             -3.01036E+02    +/-        6.22622E+02
      2103             -1.57138E+04    +/-        6.23624E+02
      2104             -1.50116E+03    +/-        6.23819E+02
      2105             -6.76541E+01    +/-        6.26961E+02
      2106             -3.37724E+03    +/-        6.30212E+02
      2107             -1.05917E+04    +/-        6.38393E+02
      2108             -3.05421E+03    +/-        6.42071E+02
      2109             -1.72279E+03    +/-        6.43662E+02
      2110             -6.66213E+01    +/-        6.44046E+02
      2111             -3.41055E+03    +/-        6.49520E+02
      2112             -1.10588E+02    +/-        6.55107E+02
      2113             -6.56480E+01    +/-        6.60038E+02
      2114             -1.20997E+03    +/-        6.62109E+02
      2115             -7.80347E+01    +/-        6.63687E+02
      2116             -1.79086E+01    +/-        6.72815E+02
      2117             -2.42216E+03    +/-        6.77893E+02
      2118             -2.03319E+02    +/-        6.79163E+02
      2119             -1.09320E+04    +/-        6.79646E+02
      2120             -1.23412E+04    +/-        6.80484E+02
      2121             -4.90004E+03    +/-        6.82798E+02
      2122             -8.06839E+02    +/-        6.86341E+02
      2123             -1.54565E+04    +/-        6.89615E+02
      2124             -1.68609E+02    +/-        6.91527E+02
      2125             -7.17718E+03    +/-        6.93319E+02
      2126             -7.43649E+01    +/-        6.99143E+02
      2127             -8.30168E+01    +/-        7.00618E+02
      2128             -9.81360E+01    +/-        7.02023E+02
      2129             -9.60464E+03    +/-        7.03711E+02
      2130              5.34362E+01    +/-        7.09653E+02
      2131             -1.14939E+04    +/-        7.17125E+02
      2132             -1.31151E+02    +/-        7.19062E+02
      2133             -9.93372E+01    +/-        7.21092E+02
      2134             -7.71196E+02    +/-        7.21918E+02
      2135             -4.66045E+02    +/-        7.22881E+02
      2136             -8.50450E+03    +/-        7.23285E+02
      2137             -1.77701E+03    +/-        7.25465E+02
      2138             -9.30526E+03    +/-        7.27359E+02
      2139             -4.48820E+03    +/-        7.29570E+02
      2140             -1.38327E+04    +/-        7.30952E+02
      2141             -6.00175E+03    +/-        7.31736E+02
      2142             -4.14397E+03    +/-        7.32146E+02
      2143             -6.48509E+03    +/-        7.34680E+02
      2144             -2.09731E+03    +/-        7.39581E+02
      2145             -7.67604E+01    +/-        7.43337E+02
      2146             -7.57324E+01    +/-        7.54461E+02
      2147             -1.31100E+03    +/-        7.54966E+02
      2148             -1.90171E+03    +/-        7.60269E+02
      2149             -1.21197E+02    +/-        7.62391E+02
      2150             -9.19909E+01    +/-        7.62398E+02
      2151             -2.89319E+03    +/-        7.64196E+02
      2152             -1.69138E+03    +/-        7.77884E+02
      2153             -3.06640E+02    +/-        7.79117E+02
      2154             -1.09251E+02    +/-        7.80739E+02
      2155             -1.54744E+02    +/-        7.86605E+02
      2156             -2.22370E+03    +/-        7.87037E+02
      2157             -8.63727E+01    +/-        7.88582E+02
      2158             -1.07847E+02    +/-        7.96837E+02
      2159             -1.24840E+04    +/-        8.04398E+02
      2160             -1.08890E+04    +/-        8.04749E+02
      2161             -9.41088E+02    +/-        8.05930E+02
      2162             -8.82135E+03    +/-        8.06572E+02
      2163             -3.58492E+03    +/-        8.12475E+02
      2164             -1.16246E+02    +/-        8.13798E+02
      2165             -1.80497E+02    +/-        8.17635E+02
      2166             -3.34831E+03    +/-        8.18456E+02
      2167             -1.30343E+05    +/-        8.18676E+02
      2168             -1.49015E+03    +/-        8.19163E+02
      2169             -6.71243E+03    +/-        8.24533E+02
      2170             -4.72795E+03    +/-        8.28221E+02
      2171             -8.79779E+01    +/-        8.28969E+02
      2172             -2.60435E+02    +/-        8.33614E+02
      2173             -5.93719E+03    +/-        8.41859E+02
      2174             -9.81049E+01    +/-        8.42884E+02
      2175             -8.81047E+01    +/-        8.47600E+02
      2176             -7.61854E+03    +/-        8.51407E+02
      2177             -4.64366E+02    +/-        8.52304E+02
      2178             -5.47985E+02    +/-        8.56541E+02
      2179             -5.52702E+03    +/-        8.57229E+02
      2180             -1.82350E+02    +/-        8.60700E+02
      2181             -2.73887E+03    +/-        8.61497E+02
      2182             -4.02698E+03    +/-        8.66340E+02
      2183             -8.97603E+01    +/-        8.67535E+02
      2184             -1.47329E+04    +/-        8.70782E+02
      2185             -9.83440E+01    +/-        8.71425E+02
      2186             -3.73248E+03    +/-        8.77282E+02
      2187             -6.27806E+03    +/-        8.77802E+02
      2188             -1.23905E+02    +/-        8.78142E+02
      2189             -3.53394E+03    +/-        8.79276E+02
      2190             -9.91650E+01    +/-        8.84946E+02
      2191             -8.36372E+03    +/-        8.91454E+02
      2192             -9.35796E+01    +/-        8.93384E+02
      2193             -4.81909E+02    +/-        8.99346E+02
      2194             -1.81724E+04    +/-        9.00035E+02
      2195             -5.11545E+03    +/-        9.04836E+02
      2196             -8.13314E+01    +/-        9.04862E+02
      2197             -9.56991E+01    +/-        9.05761E+02
      2198             -1.03186E+02    +/-        9.06039E+02
      2199             -1.06104E+02    +/-        9.14455E+02
      2200             -3.87506E+03    +/-        9.18448E+02
      2201             -6.46736E+03    +/-        9.18821E+02
      2202             -9.28882E+01    +/-        9.19998E+02
      2203             -3.66899E+03    +/-        9.21179E+02
      2204             -1.02790E+02    +/-        9.23350E+02
      2205             -1.46662E+02    +/-        9.30945E+02
      2206             -2.87243E+02    +/-        9.30998E+02
      2207             -1.59500E+03    +/-        9.31663E+02
      2208             -3.12551E+03    +/-        9.33274E+02
      2209             -1.01546E+02    +/-        9.37907E+02
      2210             -1.87717E+02    +/-        9.42599E+02
      2211             -1.00967E+02    +/-        9.43869E+02
      2212             -1.15813E+02    +/-        9.46596E+02
      2213             -1.11894E+02    +/-        9.51496E+02
      2214             -1.50220E+04    +/-        9.59964E+02
      2215             -1.03058E+04    +/-        9.62822E+02
      2216             -1.85062E+03    +/-        9.64321E+02
      2217             -2.59167E+03    +/-        9.64397E+02
      2218             -3.13404E+02    +/-        9.68746E+02
      2219             -9.36507E+01    +/-        9.73968E+02
      2220             -9.80391E+03    +/-        9.81161E+02
      2221             -1.27352E+04    +/-        9.94119E+02
      2222             -5.79931E+03    +/-        9.95821E+02
      2223             -1.40241E+02    +/-        9.96928E+02
      2224             -9.13955E+01    +/-        9.99816E+02
      2225             -2.29057E+03    +/-        1.00061E+03
      2226             -9.04177E+03    +/-        1.00347E+03
      2227             -2.01876E+03    +/-        1.00369E+03
      2228             -7.33833E+02    +/-        1.01235E+03
      2229             -3.36352E+02    +/-        1.01358E+03
      2230             -1.04587E+04    +/-        1.01542E+03
      2231             -2.19312E+04    +/-        1.02023E+03
      2232             -1.94070E+02    +/-        1.02073E+03
      2233             -4.83743E+02    +/-        1.02947E+03
      2234             -1.41221E+02    +/-        1.03636E+03
      2235             -1.71022E+04    +/-        1.03702E+03
      2236             -4.22362E+03    +/-        1.03748E+03
      2237             -1.29437E+04    +/-        1.04476E+03
      2238             -9.65940E+03    +/-        1.05899E+03
      2239             -1.95022E+03    +/-        1.06584E+03
      2240             -8.89613E+03    +/-        1.06656E+03
      2241             -1.57716E+03    +/-        1.06850E+03
      2242             -1.17905E+04    +/-        1.06855E+03
      2243             -9.26303E+03    +/-        1.07042E+03
      2244             -3.99096E+02    +/-        1.09106E+03
      2245             -2.87535E+02    +/-        1.09291E+03
      2246             -5.25907E+03    +/-        1.09931E+03
      2247             -3.37418E+03    +/-        1.10993E+03
      2248             -8.38583E+03    +/-        1.11184E+03
      2249             -6.50894E+02    +/-        1.11598E+03
      2250             -1.37605E+04    +/-        1.11656E+03
      2251             -2.43619E+03    +/-        1.11903E+03
      2252             -1.96766E+02    +/-        1.12596E+03
      2253             -1.53150E+04    +/-        1.12967E+03
      2254             -1.22462E+04    +/-        1.13042E+03
      2255             -5.39691E+02    +/-        1.14576E+03
      2256             -1.13499E+04    +/-        1.15050E+03
      2257             -7.32672E+03    +/-        1.15272E+03
      2258             -3.45430E+03    +/-        1.15662E+03
      2259             -4.48701E+03    +/-        1.16678E+03
      2260             -3.89097E+02    +/-        1.17636E+03
      2261             -1.01045E+03    +/-        1.18126E+03
      2262             -4.95952E+03    +/-        1.19502E+03
      2263             -3.19365E+04    +/-        1.19917E+03
      2264             -1.90476E+02    +/-        1.21081E+03
      2265             -1.55258E+04    +/-        1.21888E+03
      2266             -1.23705E+04    +/-        1.22218E+03
      2267             -5.77327E+02    +/-        1.22327E+03
      2268             -6.25273E+03    +/-        1.22447E+03
      2269             -1.56913E+03    +/-        1.22843E+03
      2270             -5.76056E+02    +/-        1.23467E+03
      2271             -1.40569E+04    +/-        1.24820E+03
      2272             -8.46256E+03    +/-        1.26539E+03
      2273             -5.42249E+03    +/-        1.26804E+03
      2274             -1.28240E+03    +/-        1.27164E+03
      2275             -3.57984E+03    +/-        1.27593E+03
      2276             -6.80768E+03    +/-        1.27648E+03
      2277             -1.19019E+02    +/-        1.27938E+03
      2278             -6.62874E+01    +/-        1.29252E+03
      2279             -3.53932E+02    +/-        1.31046E+03
      2280             -1.86143E+03    +/-        1.31524E+03
      2281             -1.10792E+04    +/-        1.33680E+03
      2282             -1.51156E+04    +/-        1.33715E+03
      2283             -1.81667E+04    +/-        1.34006E+03
      2284             -2.17482E+03    +/-        1.34446E+03
      2285             -2.32200E+03    +/-        1.34970E+03
      2286             -7.22798E+01    +/-        1.36065E+03
      2287             -4.30743E+03    +/-        1.37657E+03
      2288             -3.38026E+04    +/-        1.39626E+03
      2289             -3.08211E+04    +/-        1.39836E+03
      2290             -7.91798E+03    +/-        1.40623E+03
      2291             -7.68504E+03    +/-        1.41201E+03
      2292             -6.45072E+02    +/-        1.41244E+03
      2293             -2.77720E+04    +/-        1.42155E+03
      2294             -1.07754E+04    +/-        1.44525E+03
      2295             -3.29619E+03    +/-        1.47230E+03
      2296             -8.77283E+03    +/-        1.48991E+03
      2297             -2.03061E+02    +/-        1.49785E+03
      2298             -3.92837E+03    +/-        1.50586E+03
      2299             -7.97356E+03    +/-        1.51112E+03
      2300             -3.87654E+03    +/-        1.51963E+03
      2301             -6.97840E+03    +/-        1.52979E+03
      2302             -1.47387E+04    +/-        1.55414E+03
      2303             -2.50023E+04    +/-        1.56369E+03
      2304             -3.07429E+03    +/-        1.58079E+03
      2305             -1.06341E+04    +/-        1.58586E+03
      2306             -3.50614E+03    +/-        1.58842E+03
      2307             -5.32907E+03    +/-        1.59096E+03
      2308             -1.63772E+04    +/-        1.59499E+03
      2309             -2.49502E+02    +/-        1.59633E+03
      2310             -6.27055E+03    +/-        1.59840E+03
      2311             -7.55075E+03    +/-        1.60345E+03
      2312             -1.53969E+03    +/-        1.60908E+03
      2313             -1.14265E+04    +/-        1.60932E+03
      2314             -2.10002E+03    +/-        1.61548E+03
      2315             -1.18180E+04    +/-        1.61725E+03
      2316             -3.99014E+03    +/-        1.61871E+03
      2317             -9.09096E+03    +/-        1.62282E+03
      2318             -1.51189E+04    +/-        1.64663E+03
      2319             -5.74980E+03    +/-        1.65034E+03
      2320             -2.88777E+04    +/-        1.65889E+03
      2321             -8.36718E+03    +/-        1.66457E+03
      2322             -2.61935E+02    +/-        1.71266E+03
      2323             -4.69552E+03    +/-        1.71719E+03
      2324             -4.24385E+03    +/-        1.75652E+03
      2325             -2.49864E+04    +/-        1.75709E+03
      2326             -9.89806E+03    +/-        1.76175E+03
      2327             -2.45976E+04    +/-        1.80626E+03
      2328             -3.71899E+03    +/-        1.81406E+03
      2329             -1.79127E+02    +/-        1.83349E+03
      2330             -9.99810E+03    +/-        1.83391E+03
      2331             -3.43071E+04    +/-        1.86221E+03
      2332             -3.62242E+03    +/-        1.87775E+03
      2333             -9.06253E+03    +/-        1.88811E+03
      2334             -1.68205E+04    +/-        1.89027E+03
      2335             -5.75900E+03    +/-        1.90688E+03
      2336             -6.86187E+03    +/-        1.91453E+03
      2337             -1.88982E+02    +/-        1.91937E+03
      2338             -2.43011E+04    +/-        1.93301E+03
      2339             -2.74378E+03    +/-        1.94583E+03
      2340             -2.37379E+04    +/-        1.95320E+03
      2341             -1.52863E+04    +/-        1.95755E+03
      2342             -1.24967E+04    +/-        1.95864E+03
      2343             -1.28085E+02    +/-        1.99942E+03
      2344             -1.35865E+04    +/-        2.03811E+03
      2345             -2.89571E+03    +/-        2.06604E+03
      2346             -6.68168E+03    +/-        2.06777E+03
      2347             -1.21070E+03    +/-        2.08921E+03
      2348             -1.20037E+04    +/-        2.10982E+03
      2349             -3.94769E+03    +/-        2.11237E+03
      2350             -2.97656E+04    +/-        2.11453E+03
      2351             -6.30556E+03    +/-        2.13444E+03
      2352             -3.74111E+03    +/-        2.13871E+03
      2353             -1.48272E+04    +/-        2.15780E+03
      2354             -3.21186E+02    +/-        2.19947E+03
      2355             -4.66809E+03    +/-        2.21652E+03
      2356             -3.39817E+03    +/-        2.22946E+03
      2357             -2.94110E+04    +/-        2.23357E+03
      2358             -4.82754E+03    +/-        2.25103E+03
      2359             -3.32935E+02    +/-        2.27890E+03
      2360             -1.01112E+04    +/-        2.28780E+03
      2361             -7.32737E+03    +/-        2.30307E+03
      2362             -2.18222E+04    +/-        2.31015E+03
      2363             -8.97415E+03    +/-        2.31849E+03
      2364             -8.04307E+03    +/-        2.33261E+03
      2365             -2.16728E+02    +/-        2.34111E+03
      2366             -1.78440E+04    +/-        2.37693E+03
      2367             -2.75875E+04    +/-        2.37789E+03
      2368             -1.10893E+04    +/-        2.40140E+03
      2369             -5.52917E+03    +/-        2.43837E+03
      2370             -1.82954E+04    +/-        2.44257E+03
      2371             -2.62204E+03    +/-        2.44316E+03
      2372             -9.97831E+03    +/-        2.47895E+03
      2373             -8.51551E+03    +/-        2.56508E+03
      2374             -2.73442E+04    +/-        2.59607E+03
      2375             -6.62916E+03    +/-        2.59616E+03
      2376             -2.38076E+04    +/-        2.63401E+03
      2377             -1.56696E+04    +/-        2.66493E+03
      2378             -2.60379E+02    +/-        2.67336E+03
      2379             -5.06425E+03    +/-        2.70056E+03
      2380             -1.46389E+04    +/-        2.71968E+03
      2381             -2.44878E+02    +/-        2.77149E+03
      2382             -1.69785E+04    +/-        2.80974E+03
      2383             -2.80411E+02    +/-        2.83057E+03
      2384             -5.86476E+02    +/-        2.85373E+03
      2385             -6.17236E+03    +/-        2.86693E+03
      2386             -2.42982E+04    +/-        2.89927E+03
      2387             -5.94290E+02    +/-        2.90198E+03
      2388             -1.75826E+04    +/-        2.91996E+03
      2389             -8.95322E+03    +/-        2.92610E+03
      2390             -4.05697E+02    +/-        2.92844E+03
      2391             -3.56743E+02    +/-        2.96244E+03
      2392             -2.28050E+04    +/-        2.96923E+03
      2393             -2.49498E+04    +/-        3.00037E+03
      2394             -3.64862E+02    +/-        3.01399E+03
      2395             -5.69702E+03    +/-        3.03966E+03
      2396             -2.03800E+04    +/-        3.05078E+03
      2397             -3.64198E+02    +/-        3.05235E+03
      2398             -2.27524E+04    +/-        3.08753E+03
      2399             -1.50503E+04    +/-        3.09008E+03
      2400             -7.56760E+03    +/-        3.09565E+03
      2401             -8.47883E+03    +/-        3.10416E+03
      2402             -1.05820E+03    +/-        3.16259E+03
      2403             -6.47354E+03    +/-        3.16487E+03
      2404             -2.37038E+04    +/-        3.22421E+03
      2405             -4.15164E+02    +/-        3.23967E+03
      2406             -1.23631E+04    +/-        3.23969E+03
      2407             -2.53247E+04    +/-        3.25769E+03
      2408             -3.13438E+04    +/-        3.29845E+03
      2409             -6.07028E+03    +/-        3.34036E+03
      2410             -9.98065E+03    +/-        3.38229E+03
      2411             -4.51746E+02    +/-        3.38339E+03
      2412             -8.67002E+03    +/-        3.46412E+03
      2413             -1.10030E+04    +/-        3.49113E+03
      2414             -5.86091E+02    +/-        3.52332E+03
      2415             -9.18468E+03    +/-        3.58314E+03
      2416             -6.73745E+03    +/-        3.58497E+03
      2417             -2.25000E+04    +/-        3.59524E+03
      2418             -1.08661E+04    +/-        3.61445E+03
      2419             -3.15389E+04    +/-        3.61651E+03
      2420             -9.62685E+03    +/-        3.62588E+03
      2421             -2.43647E+04    +/-        3.64314E+03
      2422             -5.74141E+02    +/-        3.64568E+03
      2423             -4.79565E+02    +/-        3.67330E+03
      2424             -1.56831E+04    +/-        3.75827E+03
      2425             -2.14733E+04    +/-        3.77124E+03
      2426             -7.13001E+03    +/-        3.80107E+03
      2427             -8.08631E+02    +/-        3.88882E+03
      2428             -7.81098E+03    +/-        3.89395E+03
      2429             -1.27434E+04    +/-        3.92347E+03
      2430             -9.09890E+03    +/-        3.95085E+03
      2431             -2.26460E+04    +/-        3.96786E+03
      2432             -5.93270E+02    +/-        3.99257E+03
      2433             -8.20232E+02    +/-        3.99585E+03
      2434             -1.72859E+04    +/-        4.02702E+03
      2435             -5.20810E+02    +/-        4.03424E+03
      2436             -1.44730E+04    +/-        4.08090E+03
      2437             -1.98838E+04    +/-        4.08503E+03
      2438             -5.93129E+02    +/-        4.08939E+03
      2439             -8.84956E+03    +/-        4.09285E+03
      2440             -2.60688E+04    +/-        4.11434E+03
      2441             -1.00017E+03    +/-        4.23296E+03
      2442             -6.10716E+03    +/-        4.25141E+03
      2443             -1.10471E+04    +/-        4.30519E+03
      2444             -9.75940E+03    +/-        4.32599E+03
      2445             -1.75545E+04    +/-        4.32871E+03
      2446             -6.40985E+02    +/-        4.33072E+03
      2447             -1.01138E+03    +/-        4.34727E+03
      2448             -7.63542E+02    +/-        4.38729E+03
      2449             -2.08518E+04    +/-        4.40414E+03
      2450             -3.60371E+02    +/-        4.48666E+03
      2451             -8.84985E+03    +/-        4.54997E+03
      2452             -9.40050E+02    +/-        4.66032E+03
      2453             -2.75256E+04    +/-        4.68378E+03
      2454             -6.96745E+02    +/-        4.75673E+03
      2455             -1.47325E+03    +/-        4.82932E+03
      2456             -8.22816E+02    +/-        4.95438E+03
      2457             -3.08759E+04    +/-        5.03035E+03
      2458             -3.11323E+04    +/-        5.07116E+03
      2459             -3.08522E+04    +/-        5.13217E+03
      2460             -3.10932E+04    +/-        5.17245E+03
      2461             -1.23742E+04    +/-        5.24619E+03
      2462             -1.02717E+03    +/-        5.35693E+03
      2463             -8.86221E+03    +/-        5.37977E+03
      2464             -1.05108E+04    +/-        5.41508E+03
      2465             -9.58079E+02    +/-        5.43403E+03
      2466             -1.03929E+03    +/-        5.44010E+03
      2467             -9.60896E+02    +/-        5.44318E+03
      2468             -9.70060E+02    +/-        5.44384E+03
      2469             -1.11330E+03    +/-        5.45713E+03
      2470             -1.02186E+03    +/-        5.46763E+03
      2471             -3.62495E+04    +/-        5.50342E+03
      2472             -1.10557E+03    +/-        5.54773E+03
      2473             -2.05940E+04    +/-        5.63539E+03
      2474             -2.51730E+04    +/-        5.64215E+03
      2475             -1.10262E+03    +/-        5.64219E+03
      2476             -1.15505E+04    +/-        5.82741E+03
      2477             -3.79400E+04    +/-        5.82897E+03
      2478             -1.25341E+03    +/-        5.88034E+03
      2479             -3.85941E+04    +/-        5.93961E+03
      2480             -1.27762E+03    +/-        5.99376E+03
      2481             -3.03961E+04    +/-        6.18435E+03
      2482             -1.27255E+03    +/-        6.21162E+03
      2483             -3.06698E+04    +/-        6.23851E+03
      2484             -1.50113E+03    +/-        6.60962E+03
      2485             -3.03768E+04    +/-        6.62782E+03
      2486             -1.45265E+03    +/-        6.64436E+03
      2487             -1.65029E+03    +/-        6.64509E+03
      2488             -1.67025E+03    +/-        6.66375E+03
      2489             -1.52265E+03    +/-        6.69053E+03
      2490             -1.50900E+03    +/-        6.76281E+03
      2491             -1.70467E+03    +/-        6.77643E+03
      2492             -1.55157E+03    +/-        6.80776E+03
      2493             -1.99263E+04    +/-        6.82565E+03
      2494             -1.58994E+03    +/-        6.84684E+03
      2495             -1.79035E+03    +/-        6.97037E+03
      2496             -1.67595E+04    +/-        6.99894E+03
      2497             -1.80949E+03    +/-        7.05697E+03
      2498             -1.38054E+04    +/-        7.11820E+03
      2499             -2.06389E+03    +/-        7.17405E+03
      2500             -2.46199E+04    +/-        7.23055E+03
      2501             -2.09615E+03    +/-        7.28155E+03
      2502             -2.97492E+04    +/-        7.58831E+03
      2503             -2.99944E+04    +/-        7.65087E+03
      2504             -2.12021E+03    +/-        7.66601E+03
      2505             -2.07716E+03    +/-        7.79449E+03
      2506             -1.47760E+04    +/-        7.81880E+03
      2507             -2.10296E+03    +/-        7.89463E+03
      2508             -2.10027E+03    +/-        7.90068E+03
      2509             -2.52863E+03    +/-        8.07917E+03
      2510             -2.36758E+03    +/-        8.22908E+03
      2511             -2.42615E+03    +/-        8.30818E+03
      2512             -2.61238E+03    +/-        8.30916E+03
      2513             -2.47392E+03    +/-        8.38421E+03
      2514             -2.63877E+03    +/-        8.39324E+03
      2515             -2.50156E+03    +/-        8.48925E+03
      2516             -2.49234E+03    +/-        8.54403E+03
      2517             -2.92976E+04    +/-        8.60847E+03
      2518             -2.77335E+03    +/-        8.85689E+03
      2519             -2.80900E+03    +/-        8.96840E+03
      2520             -3.00368E+03    +/-        9.11338E+03
      2521             -2.88943E+04    +/-        9.20002E+03
      2522             -3.03870E+03    +/-        9.21170E+03
      2523             -3.32719E+03    +/-        9.51439E+03
      2524             -1.71684E+04    +/-        9.69113E+03
      2525             -3.47913E+03    +/-        9.72562E+03
      2526             -3.50065E+03    +/-        9.91245E+03
      2527             -3.53396E+03    +/-        1.00080E+04
      2528             -3.61883E+03    +/-        1.00949E+04
      2529             -3.63133E+03    +/-        1.01128E+04
      2530             -3.77094E+03    +/-        1.01163E+04
      2531             -3.80947E+03    +/-        1.02035E+04
      2532             -3.85543E+03    +/-        1.02967E+04
      2533             -3.88373E+03    +/-        1.03706E+04
      2534             -4.00334E+03    +/-        1.04915E+04
      2535             -4.01216E+03    +/-        1.05617E+04
      2536             -4.01613E+03    +/-        1.05670E+04
      2537             -4.12662E+03    +/-        1.06678E+04
      2538             -4.41430E+03    +/-        1.08685E+04
      2539             -4.45870E+03    +/-        1.09771E+04
      2540             -4.55472E+03    +/-        1.11445E+04
      2541             -5.01685E+03    +/-        1.11955E+04
      2542             -2.69559E+04    +/-        1.13809E+04
      2543             -4.80710E+03    +/-        1.13968E+04
      2544             -4.83490E+03    +/-        1.14241E+04
      2545             -5.30285E+03    +/-        1.17309E+04
      2546             -5.17750E+03    +/-        1.17458E+04
      2547             -5.31801E+03    +/-        1.18169E+04
      2548             -5.73465E+03    +/-        1.18665E+04
      2549             -5.36701E+03    +/-        1.19206E+04
      2550             -2.62839E+04    +/-        1.20713E+04
      2551             -5.66288E+03    +/-        1.21344E+04
      2552             -5.71067E+03    +/-        1.22369E+04
      2553             -2.59043E+04    +/-        1.23185E+04
      2554             -5.87768E+03    +/-        1.23307E+04
      2555             -2.58890E+04    +/-        1.23346E+04
      2556             -2.60054E+04    +/-        1.23661E+04
      2557             -2.59895E+04    +/-        1.23826E+04
      2558             -2.57766E+04    +/-        1.24308E+04
      2559             -2.58716E+04    +/-        1.24767E+04
      2560             -6.07088E+03    +/-        1.25050E+04
      2561             -6.08981E+03    +/-        1.25126E+04
      2562             -6.44906E+03    +/-        1.27289E+04
      2563             -6.46266E+03    +/-        1.28043E+04
      2564             -2.52748E+04    +/-        1.28256E+04
      2565             -6.67201E+03    +/-        1.29213E+04
      2566             -7.03361E+03    +/-        1.29373E+04
      2567             -6.72415E+03    +/-        1.30221E+04
      2568             -6.81094E+03    +/-        1.30286E+04
      2569             -7.08498E+03    +/-        1.30453E+04
      2570             -2.49233E+04    +/-        1.30640E+04
      2571             -2.49209E+04    +/-        1.30670E+04
      2572             -2.50107E+04    +/-        1.31096E+04
      2573             -2.50081E+04    +/-        1.31131E+04
      2574             -6.93193E+03    +/-        1.31555E+04
      2575             -7.13837E+03    +/-        1.32208E+04
      2576             -2.45596E+04    +/-        1.33076E+04
      2577             -7.19770E+03    +/-        1.33309E+04
      2578             -2.46421E+04    +/-        1.33485E+04
      2579             -7.99048E+03    +/-        1.34415E+04
      2580             -7.58200E+03    +/-        1.35024E+04
      2581             -8.05675E+03    +/-        1.35565E+04
      2582             -7.64511E+03    +/-        1.36148E+04
      2583             -7.69431E+03    +/-        1.36174E+04
      2584             -7.69584E+03    +/-        1.36250E+04
      2585             -2.79061E+04    +/-        1.36545E+04
      2586             -7.92168E+03    +/-        1.37266E+04
      2587             -7.97328E+03    +/-        1.38162E+04
      2588             -8.14481E+03    +/-        1.38262E+04
      2589             -8.13970E+03    +/-        1.38864E+04
      2590             -8.20060E+03    +/-        1.39023E+04
      2591             -8.33640E+03    +/-        1.39864E+04
      2592             -8.43411E+03    +/-        1.40136E+04
      2593             -8.49008E+03    +/-        1.41067E+04
      2594             -2.19083E+04    +/-        1.42046E+04
      2595             -8.98507E+03    +/-        1.42597E+04
      2596             -9.05480E+03    +/-        1.43703E+04
      2597             -2.21402E+04    +/-        1.43727E+04
      2598             -9.10020E+03    +/-        1.43824E+04
      2599             -9.24171E+03    +/-        1.43849E+04
      2600             -9.31191E+03    +/-        1.44921E+04
      2601             -2.19885E+04    +/-        1.46607E+04
      2602             -2.19243E+04    +/-        1.46933E+04
      2603             -9.80101E+03    +/-        1.46940E+04
      2604             -9.92799E+03    +/-        1.46976E+04
      2605             -2.20621E+04    +/-        1.47097E+04
      2606             -9.87689E+03    +/-        1.47193E+04
      2607             -2.20007E+04    +/-        1.47444E+04
      2608             -1.00032E+04    +/-        1.48044E+04
      2609             -1.00814E+04    +/-        1.48075E+04
      2610             -1.02691E+04    +/-        1.48794E+04
      2611             -1.02689E+04    +/-        1.48796E+04
      2612             -2.88471E+04    +/-        1.49641E+04
      2613             -1.05211E+04    +/-        1.49657E+04
      2614             -1.18581E+04    +/-        1.49807E+04
      2615             -2.03918E+04    +/-        1.50164E+04
      2616             -1.06599E+04    +/-        1.50225E+04
      2617             -1.15288E+04    +/-        1.51113E+04
      2618             -1.90813E+04    +/-        1.52227E+04
      2619             -2.03470E+04    +/-        1.52493E+04
      2620             -1.14252E+04    +/-        1.52690E+04
      2621             -1.14921E+04    +/-        1.52832E+04
      2622             -1.15035E+04    +/-        1.52881E+04
      2623             -2.04173E+04    +/-        1.53012E+04
      2624             -1.99622E+04    +/-        1.53529E+04
      2625             -1.24678E+04    +/-        1.53640E+04
      2626             -1.19792E+04    +/-        1.53759E+04
      2627             -1.99059E+04    +/-        1.54021E+04
      2628             -1.88508E+04    +/-        1.54055E+04
      2629             -2.00350E+04    +/-        1.54089E+04
      2630             -1.21301E+04    +/-        1.54173E+04
      2631             -1.25132E+04    +/-        1.54210E+04
      2632             -1.96311E+04    +/-        1.54757E+04
      2633             -1.96311E+04    +/-        1.54757E+04
      2634             -1.20585E+04    +/-        1.54781E+04
      2635             -1.93115E+04    +/-        1.54937E+04
      2636             -1.93068E+04    +/-        1.54947E+04
      2637             -1.23149E+04    +/-        1.55025E+04
      2638             -1.22051E+04    +/-        1.55124E+04
      2639             -1.92827E+04    +/-        1.55152E+04
      2640             -1.92139E+04    +/-        1.55311E+04
      2641             -1.93167E+04    +/-        1.55467E+04
      2642             -1.93128E+04    +/-        1.55470E+04
      2643             -1.92414E+04    +/-        1.55593E+04
      2644             -1.89553E+04    +/-        1.55649E+04
      2645             -1.28075E+04    +/-        1.55653E+04
      2646             -1.93514E+04    +/-        1.55703E+04
      2647             -1.92738E+04    +/-        1.55792E+04
      2648             -1.94201E+04    +/-        1.55808E+04
      2649             -1.94150E+04    +/-        1.55816E+04
      2650             -1.26966E+04    +/-        1.55854E+04
      2651             -1.88320E+04    +/-        1.56047E+04
      2652             -1.88754E+04    +/-        1.56055E+04
      2653             -1.44924E+04    +/-        1.56067E+04
      2654             -1.90158E+04    +/-        1.56093E+04
      2655             -1.85629E+04    +/-        1.56491E+04
      2656             -1.89331E+04    +/-        1.56519E+04
      2657             -1.28816E+04    +/-        1.56553E+04
      2658             -1.88966E+04    +/-        1.56578E+04
      2659             -1.31319E+04    +/-        1.56694E+04
      2660             -1.86340E+04    +/-        1.57089E+04
      2661             -1.37002E+04    +/-        1.57196E+04
      2662             -1.79224E+04    +/-        1.57286E+04
      2663             -1.79692E+04    +/-        1.57689E+04
      2664             -1.42793E+04    +/-        1.57747E+04
      2665             -1.38108E+04    +/-        1.57752E+04
      2666             -1.38106E+04    +/-        1.57753E+04
      2667             -1.68861E+04    +/-        1.57841E+04
      2668             -1.37795E+04    +/-        1.58106E+04
      2669             -1.61643E+04    +/-        1.58113E+04
      2670             -1.50986E+04    +/-        1.58281E+04
      2671             -1.52359E+04    +/-        1.58349E+04
      2672             -1.43376E+04    +/-        1.58397E+04
      2673             -1.49349E+04    +/-        1.58512E+04
      2674             -1.50425E+04    +/-        1.58538E+04
      2675             -1.62227E+04    +/-        1.58684E+04
      2676             -1.51456E+04    +/-        1.58774E+04
      2677             -1.58333E+04    +/-        1.58787E+04
      2678             -1.58447E+04    +/-        1.58789E+04
      2679             -1.63294E+04    +/-        1.58822E+04
      2680             -1.63444E+04    +/-        1.58878E+04
      2681             -1.53111E+04    +/-        1.59015E+04
      2682             -1.50019E+04    +/-        1.59223E+04
      2683             -1.51178E+04    +/-        1.59332E+04
      2684             -1.63829E+04    +/-        1.59341E+04
      2685             -1.59170E+04    +/-        1.59511E+04
      2686             -1.59054E+04    +/-        1.59512E+04


  Simulation CPU time for eigenSolution computation = 8.941484E+03 seconds.

  Eigensolution computation finished.

 command: equil/list
Current EQUILIBRIUM settings are:
   ALIMIT    = 0.008727 (rad)
   ERROR     = 0.500000
   IMBALANCE = 0.010000
   MAXIT     = 20
   PATTERN   = TTTTTTTTTT
   STABILITY = 10.000000
   TLIMIT    = 1.000000
   METHOD    = ORIGINAL
   ATOL      = 0.000001
   RTOL      = 0.000000
   MAXITL    = 40
   ETAMAX    = 0.900000
   ETA       = 0.000100

 command: inte/list
Current INTEGRATOR settings are:
   TYPE        = HHT
   FORMULATION = I3
   CORRECTOR   = ORIGINAL
   ERROR       =    1.000000e-05
   HINIT       = 5e-05
   HMAX        = 0.001
   HMIN        = 1e-14
   INTERPOLATE = OFF
   MAXIT       = 10
   KMAX        = 2
   ALPHA       =   -3.000000e-01
   BETA        =    4.225000e-01
   GAMMA       =    8.000000e-01
   PATTERN     = F
   FIXIT       = 0
   HRATIO      = 0
   MAXERR      =    0.000000e+00

 command: sho stat=sim
                     Simulation Statistics 
                     ========== ========== 
          Simulation start time              ----   23.5
          Current simulation time            ----   23.6
          Simulation end time                ----   23.6
          Output steps requested             ----   100
          Actual number of output records    ----   101
          Number of equations in the system  ----   9666
          Number of requests in the data set ----   86
          Simulation elapsed time (seconds)  ----   9638.35
          Simulation CPU time (seconds)      ----   10270.3
          Current integrator                 ----   HHT
          Formulation of the equations       ----   I3
          Integrator corrector               ----   ORIGINAL
          Number of integration steps        ----   427873
          Number of function evaluations     ----   1553540
          Number of Jacobian evaluations     ----   2897
          Relative error tolerance           ----   1e-05
          Absolute error tolerance           ----   1e-05
          Current order of the integrator    ----   2
          Current integration step size      ----   4.67915e-05

 command: 
 command: ! RELOAD/SYSTEM, FILE=rpm3500_tqN145_time23p5.sav, output_prefix=LC_4_drn_modal
 command: ! INTEGRATOR/HINIT=0.00005, ERROR=1e-5
 command: ! SIMULATE/DYNAMIC, END=23.6, DTOUT=0.001
 command: ! LINEAR/EIGENSOL, RM=304
 command: ! equil/list
 command: ! inte/list
 command: ! sho stat=sim
 command: 
 command: stop


Finished -----
Elapsed time = 9639.31s,  CPU time = 10271.20s,  106.56%

