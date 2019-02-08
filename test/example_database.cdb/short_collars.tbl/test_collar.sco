$ NOTE: Block and subblock titles MUST begin in column 1
$       Comment lines MUST also begin in column 1
$------------------------------------------------------------ADAMS_DRILL_HEADER
[ADAMS_DRILL_HEADER]
 File_Type              =  'short_collar'
 File_Version           =  1.0
 Name                   =  'test_collar'
 Tool_Name	            =  'test_collar'
 Manufacturer           =  ''
$-------------------------------------------------------------------------UNITS
[UNITS]
 Length                 =  'foot'
 Mass                   =  'pound_mass'
$----------------------------------------------------------------------GEOMETRY
[GEOMETRY] 
  Collar_OD             = 0.6875
  Collar_ID             = 0.2500
  Collar_Length         = 5.0000
$---------------------------------------------------------------MASS_PROPERTIES
[MASS_PROPERTIES]
$ If known, specify Mass to define the actual component mass, otherwise set=0
$ and either let Adams compute it based on the density (units: slug/ft^3), or
$ let Adams compute it based on a selected material from the Adams database.
$ Young's Modulus is also defined by the material if a material is specified. 
  Mass                  = 960.0
  Density               = 0.0
  Youngs_Modulus        = 4.32E9
  Material              = '.materials.null'