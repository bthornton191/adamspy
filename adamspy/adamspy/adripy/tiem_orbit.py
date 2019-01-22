"""
--------------------------------------------------------------------------
Description
--------------------------------------------------------------------------
tiem_orbit is a set of python tools for manipulating MSC Adams Drill Tiem
Orbit files.
--------------------------------------------------------------------------
Author
--------------------------------------------------------------------------
Ben Thornton (ben.thornton@mscsofware.com)
Simulation Consultant - MSC Software
"""
import os
import jinja2
from .adripy import get_cdb_location

env = jinja2.Environment(
    loader=jinja2.PackageLoader('adamspy.adripy', 'templates'),
    autoescape=jinja2.select_autoescape(['evt','str']),
    keep_trailing_newline=True,
    trim_blocks=True,
    lstrip_blocks=True
)

class DrillEvent():
    """
    Creates an object with all data necessary to write a drill event.  Once the DrillEvent is instanced
    ramp parameters must be defined before the DrillEvent is written to an event file.  
    
    All parameters in the event file can be specified when the DrillEvent is instanced 
    using **kwargs or they can be set later using: 
        
        DrillEvent.parameters[parameter] = value    
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
        'End_Distance',
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
        'End_Distance': 100.0,
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
    EXT = '.evt'

    def __init__(self, event_name, start_depth, off_bottom, **kwargs):
        self.parameters = kwargs
        self.parameters['Event_Name'] = event_name
        self.parameters['Start_Depth'] = start_depth
        self.parameters['Off_Bottom'] = off_bottom        
                
        self._apply_defaults()        

    def add_simulation_step(self, end_time, output_step_size=0.05, clear_existing=False):
        """
        Adds a dynamic simulation step.
        
        Arguments:
            end_time {float} -- End time of the step.
            output_step_size {foat} -- Output step size of the step. Defaults to 0.05.
        """
        if clear_existing:
            self.parameters['DYNAMICS'] = [[],[]]
        self.parameters['DYNAMICS'][0].append(end_time)
        self.parameters['DYNAMICS'][1].append(output_step_size)
        self.parameters['_DYNAMICS'] = zip(*self.parameters['DYNAMICS'])
    
    def add_ramp(self, parameter, start_time, ramp_duration, delta, clear_existing=False):
        """Adds a ramp to the specified ramp parameter
        
        Arguments:
            parameter {string} -- ramp parameter, options are 'TOP_DRIVE', 'WOB', 'PUMP_FLOW', of 'ROP'
            start_time {float} -- Start time of the ramp.
            ramp_duration {float} -- Duration of the ramp.
            delta {float} -- Delta of the ramp.
            clear_existing {bool} -- If true, existing ramps for the specified parameter will be deleted.
        """
        if clear_existing:
            self.parameters[parameter] = [[],[],[]]
        self.parameters[parameter][0].append(start_time)
        self.parameters[parameter][1].append(ramp_duration)
        self.parameters[parameter][2].append(delta)
        self.parameters['_' + parameter] = zip(*self.parameters[parameter])    

    def write_to_file(self, write_directory=None, filename=None, cdb=None):
        """Creates an event file from the DrillEvent object.
        
        Keyword Arguments:
            write_directory {string} -- (OPTIONAL) Directory in which to write the file. Defaults to current working directory.
            filename {string} -- (OPTIONAL) Name of the file to write.  Defaults to self.parameters['EVENT_NAME']
            cdb {string} -- (OPTIONAL) Name of the cdb in which to write the file.  This argument overrides the write_directory.
        
        Raises:
            ValueError -- Raised if not all parameters have been defined.
        """
        if not self.validate():
            raise ValueError('The parameters could not be validated.')
        
        if write_directory is None and cdb is None:
            write_directory = os.getcwd()
        elif cdb is not None:
            write_directory = get_cdb_location(cdb)        
        if filename is None:
            filename = self.parameters['Event_Name']
        if not filename.endswith(self.EXT):
            filename += self.EXT
                      
        event_template = env.get_template(f'template{self.EXT}')
        
        with open(os.path.join(write_directory, self.CDB_TABLE, filename), 'w') as fid:
            fid.write(event_template.render(self.parameters))
    
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
            self.parameters[array_parameter] = {}
            self.parameters[array_parameter] = array
            self.parameters['_' + array_parameter] = zip(*self.parameters[array_parameter])
