"""Contains the DrillEvent class
"""
import os
from . import TMPLT_ENV
from .utilities import read_TO_file, get_cdb_path, get_full_path

class DrillEvent():
    """
    Creates an object with all data necessary to write a drill event.  Once the DrillEvent is instanced ramp parameters must be defined before the DrillEvent is written to an event file.  

    Note
    ----
    After instancing the class, at least one simulation step must be added using the `add_simulation_step()` method. Also, at least one ramp must be added for each of the four drilling parameters (i.e. wob, rpm, gpm, rop) using the `add_ramp()` method.  All other parameters in the event file can be specified when the DrillEvent is instanced using kwargs or they can be set later using:
        >>> drill_event.parameters[parameter] = value 
    
    Attributes
    ----------
    parameters : dict
        Dictionary of parameters that make up an Adams Drill string and would be found in an Adams Drill String file (.str).  The keys of the dictionary are the parameter names that would be seen in the string file and the values of the dictionary are the values that would be seen in the string file.
    filename : str
        Name of the event file (.evt) in which this event is stored.  This attribute is initially empty and is populated by the `write_to_file()` method.
    SCALAR_PARAMETERS : dict
        A class attribute listing the names of all scalar parameters found in an Adams Drill event file.
    DEFAULT_PARAMETER_SCALARS: dict
        A class attribute defining defaults for some of the event parameters.
    ARRAY_PARAMETERS : list 
        A class attribute listing the names of all array parameters found in an Adams Drill event file.
    DEFAULT_PARAMETER_ARRAYS : dict
        A class attribute defining defaults for some of the event parameters.
    CDB_TABLE : str
        A class attribute defining the cdb table to be used for Adams Drill event files (.str)
    EXT : str
        A class attribute defining the extension of the Adams Drill event files.   
    """

    SCALAR_PARAMETERS = [
        'File_Type',
        'Units',
        'File_Version',
        'Event_Name',
        'Drive_Type',
        'Measurement_Tool',
        'Start_Depth',
        'Off_Bottom',
        'Initial_Drive_Torque',
        'Motor_Type',
        'Filter_Time_Constant',
        'Motor_Bend_Start',
        'Motor_Bend_Ramp',
        'Mud_Density',
        'Impact_Damping_Penetration',
        'Impact_Exponent',
        'MWD_Pulsing',
        'NperRev',
        'N',
        'S_threshold',
        'C_hi',
        'Plotting_4D',
        'Start_Time',
        'End_Time',
        'Plotting_Interval',
        'Start_Distance',
        'End_Distance'
    ]
    DEFAULT_PARAMETER_SCALARS = {
        'File_Type': 'event',
        'File_Version': 1.0,
        'Units': 'Imperial',
        'Drive_Type': 'WITH_MOTOR',
        'Measurement_Tool': 'TOS',
        'Initial_Drive_Torque': 0,
        'Motor_Type': '3D',
        'Filter_Time_Constant': 0.05,
        'Motor_Bend_Start': 1.0,
        'Motor_Bend_Ramp': 9.0,
        'Mud_Density': 75,
        'Impact_Damping_Penetration': 0.005,
        'Impact_Exponent': 1.05,
        'MWD_Pulsing': 'On',
        'NperRev': 'off',
        'N': 1,
        'S_threshold': 0.55,
        'C_hi': 1.05,
        'Plotting_4D': 'off',
        'Start_Time': 160,
        'End_Time': 200,
        'Plotting_Interval': 0.1,
        'Start_Distance': 2.0,
        'End_Distance': 100.0
    }

    ARRAY_PARAMETERS = [
        'TOP_DRIVE',
        'MOTOR',
        'PUMP_FLOW',
        'WOB',
        'ROP',
        'NPERREV',
        'DYNAMICS'
    ]

    DEFAULT_PARAMETER_ARRAYS = {
        'TOP_DRIVE': [[],[],[]],
        'MOTOR': [[0], [1], [1]],
        'PUMP_FLOW': [[],[],[]],
        'WOB': [[],[],[]],
        'ROP': [[],[],[]],
        'NPERREV': [[0],[1]],
        'DYNAMICS': [[], []]
    }

    CDB_TABLE = 'events.tbl'
    EXT = 'evt'

    def __init__(self, event_name, start_depth, off_bottom, **kwargs):
        self.parameters = kwargs
        self.parameters['Event_Name'] = event_name
        self.parameters['Start_Depth'] = start_depth
        self.parameters['Off_Bottom'] = off_bottom        
        
        # Apply default parameters                
        self._apply_defaults()    

        self.filename = ''

    def add_simulation_step(self, end_time, output_step_size=0.05, clear_existing=False):
        """
        Adds a dynamic simulation step.
        
        Parameters
        ----------
        end_time : float
            End time of the step in seconds.
        output_step_size : foat
            Output step size of the step in seconds. (defaults is 0.05)
        """
        if clear_existing:
            self.parameters['DYNAMICS'] = [[],[]]
        self.parameters['DYNAMICS'][0].append(end_time)
        self.parameters['DYNAMICS'][1].append(output_step_size)
        self.parameters['_DYNAMICS'] = zip(*self.parameters['DYNAMICS'])
    
    def add_ramp(self, parameter, start_time, ramp_duration, delta, clear_existing=False):
        """Adds a ramp to the specified ramp parameter
        
        Paramters
        ---------
        parameter : string
            ramp parameter, options are 'TOP_DRIVE', 'WOB', 'PUMP_FLOW', of 'ROP'
        start_time : float
            Start time of the ramp.
        ramp_duration : float
            Duration of the ramp.
        delta : float
            Delta of the ramp.
        clear_existing : bool
            If true, existing ramps for the specified parameter will be deleted.
        """
        if clear_existing:
            self.parameters[parameter] = [[],[],[]]
        self.parameters[parameter][0].append(start_time)
        self.parameters[parameter][1].append(ramp_duration)
        self.parameters[parameter][2].append(delta)
        self.parameters['_' + parameter] = zip(*self.parameters[parameter])  

    def write_to_file(self, directory=None, filename=None, cdb=None):
        """Creates an event file from the DrillEvent object.
        
        Parameters
        ----------
        write_directory : str
            Directory in which to write the file. Defaults to current working directory.
        filename : str
            Name of the file to write.  Defaults to self.parameters['EVENT_NAME']
        cdb : str
            Name of the cdb in which to write the file.  This argument overrides the write_directory.
        
        Raises
        ------
        ValueError
            Raised if not all parameters have been defined.
        """
        # Raise an error if the parameters can't be validated
        if not self.validate():
            raise ValueError('The parameters could not be validated.')
        
        if directory is not None:
            # If the write_directory argument is passed
            if filename is None:
                # If the filename argument is not passed, set the filename
                # as the Event_Name in the file
                filename = self.parameters['Event_Name']
                
            else:
                # If the filename argument is passed, strip the path and the 
                # extension
                filename = os.path.split(filename)[-1].replace(f'.{self.EXT}','')
            
            # Set the filepath to the filename in the given directory
            filepath = os.path.join(directory, f'{filename}.{self.EXT}')

        elif cdb is not None:
            # If the write_directory argument is not passed, but the cdb
            # argument is

            if filename is None:
                # If the filename argument is not passed, set the filename
                # as the Event_Name in the file
                filename = self.parameters['Event_Name']
            
            else:
                # If the filename argument is passed, strip the path and the 
                # extension
                filename = os.path.split(filename)[-1].replace(f'.{self.EXT}','')
            
            # Set the filepath to the file in the cdb
            filepath = get_full_path(os.path.join(f'<{cdb}>', self.CDB_TABLE, f'{filename}.{self.EXT}'))
                      
        event_template = TMPLT_ENV.get_template(f'template.{self.EXT}')
        
        with open(filepath, 'w') as fid:
            fid.write(event_template.render(self.parameters))

        self.filename = get_cdb_path(filepath)

        return self.filename

    
    def validate(self):
        """
        Determines if all parameters have been set
        
        Returns:
            Bool -- True if all parameters have been set. Otherwise False
        """
        validated = True        
        # Check that all parameters exist in the self.parameters dictionary
        for param_name in self.SCALAR_PARAMETERS:
            if param_name not in self.parameters:
                validated = False        
        
        for param_name in self.ARRAY_PARAMETERS:
            if not self.parameters[param_name]:
                validated = False
            
        return validated          

    @classmethod
    def read_from_file(cls, filename):
        """Reads an event file and sets self.parameters based on data in the event file.
        
        Arguments:
            filename {str} -- Filename of a .evt file.
        """
        # Read the TO data into a dictionary
        tiem_orbit_data = read_TO_file(get_full_path(filename))

        event = cls('','','')
        
        # Extract the DrillEvent parameters from the TO dictionary        
        event._get_params_from_TO_data(tiem_orbit_data) #pylint: disable=protected-access

        return event

    def _apply_defaults(self):
        """
        Applies defaults from class variables
        """
        # Applies normal parameter defaults
        for scalar_parameter, value in self.DEFAULT_PARAMETER_SCALARS.items():
            if scalar_parameter not in self.parameters:
                self.parameters[scalar_parameter] = value

        # Applies defaults to all ramp parameters
        for array_parameter, array in self.DEFAULT_PARAMETER_ARRAYS.items():
            # self.parameters[array_parameter] = {}
            self.parameters[array_parameter] = array.copy()
            self.parameters['_' + array_parameter] = zip(*self.parameters[array_parameter])
    
    def _get_params_from_TO_data(self, tiem_orbit_data):
        """Reads the event parameters out of a dictoinary of Tiem Orbit
        data generated by adripy.utilities.read_TO_file()
        
        Arguments:
            tiem_orbit_data {dict} -- Dictionary of Tiem Orbit data
        
        Raises:
            ValueError -- An event parameter could not be found
        """

        for param in self.SCALAR_PARAMETERS:
            # For each event parameter initialize a found flag
            found = False
        
            for block in tiem_orbit_data:
                # For each block in the TO file

                if param.lower() in tiem_orbit_data[block]:
                    # If the parameter is in this block, set the parameter and break the loop
                    self.parameters[param] = tiem_orbit_data[block][param.lower()]
                    found = True
                    break

                else:
                    # If the parameter is not in this block, find all the sub blocks 
                    # and look for the parameter inside each sub block
                    sub_blocks = [header for header in tiem_orbit_data[block] if isinstance(tiem_orbit_data[block][header], dict)]
                    
                    for sub_block in sub_blocks:
                        # For each sub_block in the block

                        if param.lower() in tiem_orbit_data[block][sub_block]:
                            # If the parameter is in the sub block, set the parameter and break the loop
                            self.parameters[param] = tiem_orbit_data[block][sub_block][param.lower()]
                            found = True
                            break
                    
                    if found:
                        break
            
            # Raise a value error if the parameter isn't found.
            if not found:
                raise ValueError(f'{param} not found!')
        
        for param in self.ARRAY_PARAMETERS:
            # For each event parameter initialize a found flag
            found = False

            blocks = [header for header in tiem_orbit_data if isinstance(tiem_orbit_data[header], dict)]
        
            for block in blocks:
                # For each block in the TO file, get the sub blocks
                sub_blocks = [header for header in tiem_orbit_data[block] if isinstance(tiem_orbit_data[block][header], dict)]

                if param.upper()==block and block=='DYNAMICS':
                    # If the parameter is DYNAMICS and so is the current block
                    self.parameters[param][0] = tiem_orbit_data[block]['end_time']
                    self.parameters[param][1] = tiem_orbit_data[block]['output_step_size']
                    found = True
                    break

                elif param.upper()==block and param.upper():
                    # If the current parameter is the block, add to the parameters dictionary
                    self.parameters[param][0] = tiem_orbit_data[block]['start_time']
                    self.parameters[param][1] = tiem_orbit_data[block]['ramp_duration']
                    if len(self.parameters[param])>2:
                        last_col = [col for col in tiem_orbit_data[block] if col not in ['start_time','ramp_duration']][0]
                        self.parameters[param][2] = tiem_orbit_data[block][last_col]
                    found = True
                    break
                
                elif param.upper() in sub_blocks:
                    # If the current parameter is in this sub block, add to the parameters dictionary
                    self.parameters[param][0] = tiem_orbit_data[block][param.upper()]['start_time']
                    self.parameters[param][1] = tiem_orbit_data[block][param.upper()]['ramp_duration']
                    if len(self.parameters[param])>2:
                        list_params = [par for par in tiem_orbit_data[block][param.upper()] if isinstance(tiem_orbit_data[block][param.upper()][par], list)]
                        last_col = [col for col in list_params if col not in ['start_time','ramp_duration']][0]
                        self.parameters[param][2] = tiem_orbit_data[block][param.upper()][last_col]
                    found = True
                    break
                
            if not found:
                raise ValueError(f'{param} not found!')
            
            self.parameters['_' + param] = zip(*self.parameters[param])
