"""Contains the DrillEvent class
"""
import os
import copy
import thornpy
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
    """

    _SCALAR_PARAMETERS = [
        'Units',
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
    
    _DEFAULT_PARAMETER_SCALARS = {
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

    _TABLE_PARAMETERS = [
        'ROTARY_RPM',
        'MOTOR',
        'PUMP_FLOW',
        'WOB',
        'ROP',
        'NPERREV',
        'DYNAMICS'
    ]

    _DEFAULT_PARAMETER_TABLES = {
        'ROTARY_RPM': ((),(),()),
        'MOTOR': ((0,), (1,), (1,)),
        'PUMP_FLOW': ((),(),()),
        'WOB': ((),(),()),
        'ROP': ((),(),()),
        'NPERREV': ((0,),(1,)),
        'DYNAMICS': ((), ())
    }

    _CDB_TABLE = 'events.tbl'
    _EXT = 'evt'

    def __init__(self, event_name, start_depth, off_bottom, **kwargs):
        """Initializes the :class:`DrillEvent` class.
        
        Parameters
        ----------
        event_name : str
            Name of the event.
        start_depth : float
            Start depth of the event in feet.
        off_bottom : float
            Starting distance from bottom.
        
        """
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
        output_step_size : float
            Output step size of the step in seconds. (defaults is 0.05)

        """
        if clear_existing:
            self.parameters['DYNAMICS'] = [[],[]]
        self.parameters['DYNAMICS'][0].append(end_time)
        self.parameters['DYNAMICS'][1].append(output_step_size)
        self.parameters['_DYNAMICS'] = zip(*self.parameters['DYNAMICS'])
    
    def add_ramp(self, parameter, start_time, ramp_duration, delta, clear_existing=False):
        """Adds a ramp to the specified ramp parameter.
        
        Parameters
        ----------
        parameter : str
            ramp parameter, options are 'TOP_DRIVE', 'WOB', 'PUMP_FLOW', or 'ROP'
        start_time : float
            Start time of the ramp.
        ramp_duration : float
            Duration of the ramp.
        delta : float
            Delta of the ramp.  Units should be in **rpm**, **lbf**, **gpm**, or **ft/sec**.
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
                filename = os.path.split(filename)[-1].replace(f'.{self._EXT}','')
            
            # Set the filepath to the filename in the given directory
            filepath = os.path.join(directory, f'{filename}.{self._EXT}')

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
                filename = os.path.split(filename)[-1].replace(f'.{self._EXT}','')
            
            # Set the filepath to the file in the cdb
            filepath = get_full_path(os.path.join(f'<{cdb}>', self._CDB_TABLE, f'{filename}.{self._EXT}'))
        
        elif filename is not None:
            # If the filename argument is given
            filepath = thornpy.utilities.convert_path(filename)
        
        else:
            # Raise an error if none of the arguments are provided
            raise ValueError('Ether directory, filename, or cdb must be passed.')  
                      
        event_template = TMPLT_ENV.from_string(open(os.path.join(os.path.dirname(__file__), 'templates', f'template.{self._EXT}')).read())
        
        with open(filepath, 'w') as fid:
            fid.write(event_template.render(self.parameters))

        self.filename = get_cdb_path(filepath)

        return self.filename

    
    def validate(self):
        """
        Determines if all parameters have been set
        
        Returns
        -------
        bool
            `True` if all parameters have been set. Otherwise `False`.

        """
        validated = True        
        # Check that all parameters exist in the self.parameters dictionary
        for param_name in self._SCALAR_PARAMETERS:
            if param_name not in self.parameters:
                validated = False        
        
        for param_name in self._TABLE_PARAMETERS:
            if not all([elem for elem in self.parameters[param_name]]):
                validated = False
            
        return validated          

    @classmethod
    def read_from_file(cls, filename):
        """Reads an Adams Drill event (.evt) file and sets :attr:`DrillEvent.parameters` based on data in the file.
        
        Parameters
        ----------
        filename : str
            Filename of an Adams Drill event (.evt) file.

        """
        # Read the TO data into a dictionary
        tiem_orbit_data = read_TO_file(get_full_path(filename))

        # Create an empty event object
        event = cls('','','')
        
        # Extract the DrillEvent parameters from the TO dictionary        
        event._get_params_from_TO_data(tiem_orbit_data) #pylint: disable=protected-access
        
        # Set the filename attribute
        event.filename = filename

        return event

    def _apply_defaults(self):
        """
        Applies defaults from class variables

        """
        # Applies normal parameter defaults
        for scalar_parameter, value in self._DEFAULT_PARAMETER_SCALARS.items():
            if scalar_parameter not in self.parameters:
                self.parameters[scalar_parameter] = copy.copy(value)

        # Applies defaults to all ramp parameters
        for table_parameter, table in self._DEFAULT_PARAMETER_TABLES.items():
            self.parameters[table_parameter] = [list(tup) for tup in table]
            self.parameters['_' + table_parameter] = zip(*self.parameters[table_parameter])
    
    def _get_params_from_TO_data(self, tiem_orbit_data):
        """Reads the event parameters out of a dictoinary of Tiem Orbit data generated by :func:`adamspy.adripy.utilities.read_TO_file`
        
        Parameters
        ----------
        tiem_orbit_data : dict
            Dictionary of Tiem Orbit data
        
        Raises
        ------
        ValueError
            An event parameter could not be found

        """
        for param in self._SCALAR_PARAMETERS:
            # For each event parameter initialize a found flag
            found = False
        
            for block in tiem_orbit_data:
                # For each block in the TO file

                if param.lower() in ['start_time', 'end_time']:
                    # If finding the End_Time, or Start_Time parameters, only look in the PLOT_4D block
                    if block.lower() == 'plot_4d':                        
                        self.parameters[param] = tiem_orbit_data[block][param.lower()]
                        found = True
                        break

                elif param.lower() in tiem_orbit_data[block]:
                    # If the parameter is in this block, set the parameter and break the loop
                    self.parameters[param] = tiem_orbit_data[block][param.lower()]
                    found = True
                    break

                elif param.lower() != 'end_time':
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
        
        for param in self._TABLE_PARAMETERS:
            # For each event parameter initialize a found flag
            found = False

            blocks = [header for header in tiem_orbit_data if isinstance(tiem_orbit_data[header], dict)]
        
            for block in blocks:
                # For each block in the TO file, get the sub blocks
                sub_blocks = [header for header in tiem_orbit_data[block] if isinstance(tiem_orbit_data[block][header], dict)]
                
                # vvvvvvvvvvvv This is a bandaid to make this code backward compatible vvvvvvvvvvvv
                if 'TOP_DRIVE' in sub_blocks:
                    
                    # Replace 'TOP_DRIVE' with 'ROTARY_RPM'
                    for _i in range(len(sub_blocks)):
                        if sub_blocks[_i] == 'TOP_DRIVE':
                            sub_blocks[_i] = 'ROTARY_RPM'
                            break                   

                    tiem_orbit_data[block]['ROTARY_RPM'] = tiem_orbit_data[block].pop('TOP_DRIVE')
                # ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

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

                    if 'ramp_duration' in tiem_orbit_data[block][param.upper()]:
                        # If the .evt file uses the 2018 notation
                        self.parameters[param][1] = tiem_orbit_data[block][param.upper()]['ramp_duration']
                    elif 'end_time' in tiem_orbit_data[block][param.upper()]:
                        # If the .evt file uses the 2019 notation
                        self.parameters[param][1] = [end - start for end, start in zip(tiem_orbit_data[block][param.upper()]['end_time'], tiem_orbit_data[block][param.upper()]['start_time'])]

                    if len(self.parameters[param])>2:
                        list_params = [par for par in tiem_orbit_data[block][param.upper()] if isinstance(tiem_orbit_data[block][param.upper()][par], list)]
                        last_col = [col for col in list_params if col not in ['start_time','ramp_duration', 'end_time']][0]
                                                
                        if 'delta' in last_col:
                            # If .evt file uses 2018 notation (delta)
                            self.parameters[param][2] = tiem_orbit_data[block][param.upper()][last_col]
                        
                        elif 'at_end' in last_col:
                            # If .evt file uses 2019 notation (value at end)
                            at_end_values = tiem_orbit_data[block][param.upper()][last_col]

                            if len(at_end_values) < 2:                                
                                # If there is only one value (the delta and the end value are the same)
                                self.parameters[param][2] = at_end_values
                            
                            else:
                                # If there are multiple values, calculate the deltas                                
                                # The first "delta" value is the same as the first "at end" value
                                delta_values = at_end_values[:1]

                                # Loop over the "at end" values to calculate the "delta" values
                                for at_end_value, prev_at_end_value in zip(at_end_values[1:], at_end_values[:-1]):
                                    delta_values.append(at_end_value - prev_at_end_value)

                                self.parameters[param][2] = delta_values

                    found = True
                    break
                
            if not found:
                raise ValueError(f'{param} not found!')
            
            self.parameters['_' + param] = zip(*self.parameters[param])
