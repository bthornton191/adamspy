"""Module for the DrillSim class
"""
import os
from .utilities import build

class DrillSim(): #pylint: disable=too-many-instance-attributes
    """Contains data defining the files that make up an Adams Drill input deck.
    

    Attributes
    ----------
    string : DrillString
        DrillString object representing the string to be used in the simulation
    event : DrillEvent
        DrillEvent object representing the string to be used in the simulation
    solver_settings : DrillSolverSettings
        DrillSolverSettings object representing the string to be used in the simulation
    directory : str
        Path to the directory in which to put the simulation files
    analysis_name : str
        Name of the analysis.  Used for all file prefixes
    string_filename : str
        Filename of the analysis' string file 
    adm_filename : str
        Filename of the analysis' adm file 
    acf_filename : str
        Filename of the analysis' acf file
    cmd_filename : str
        Filename of the analysis' cmd file
    res_filename : str
        Filename of the analysis' res file
    built : bool
        Indicates whether the input deck (adm, acf, and cmd files) has been built yet for this DrillSim
        
    Example
    -------
    >>> my_drillsim = adripy.DrillSim(my_string, my_event, my_solversettings, os.getcwd(), 'MyAnalysis')
    """
    def __init__(self, string, event, solver_settings, directory, analysis_name): #pylint: disable=too-many-arguments
        """Sets instance attributes and writes the string, event, and solver settings files to `directory`.

        Parameters
        ----------
        string : DrillString
            :obj:`DrillString` object representing the string to be used in the simulation
        event : DrillEvent
            :obj:`DrillEvent` object representing the string to be used in the simulation
        solver_settings : DrillSolverSettings
            :obj:`DrillSolverSettings` object representing the string to be used in the simulation
        directory : str
            Path to the directory in which to put the simulation files
        analysis_name : str
            Name of the analysis.  Used for all file prefixes
        
        """

        self.string = string
        self.event = event
        self.solver_settings = solver_settings
        self.directory = directory
        self.analysis_name = analysis_name
        self.string_filename = ''
        self.adm_filename = ''
        self.acf_filename = ''
        self.cmd_filename = ''
        self.res_filename = ''        
        
        # Write the TO files to the working directory
        self._write_tiem_orbit_files()
        
        self.built = False

    def build(self):
        """This method builds the input deck.  It launches Adams View in batch, reads in the `self.string.filename` and `self.solver_settings.filename` files, and runs the Adams Drill macro ``ds tostart`` to build a drill string model.  Then it saves the model files (.acf, .adm, and .cmd) to the `self.directory` directory.
        """
        # Build the model
        adm, acf, cmd = build(self.string_filename, self.solver_settings.filename, self.directory)  

        # store the new filenames as attributes
        self.adm_filename = adm
        self.acf_filename = acf
        self.cmd_filename = cmd

        # Flag this simulation as built
        self.built = True

    def run(self): #pylint: disable=no-self-use
        """Run the simulation
        """
        # -------------------
        # Run Logic
        # -------------------
        return
    
    def _write_tiem_orbit_files(self):
        """Writes the solver settings and event files and publishes the string file to the simulation directory.

        Note
        ----
        When the string file gets published, all the supporting tool files and the hole file are copied to the simulation directory.
        """     
        # solver settings file
        self.solver_settings.write_to_file(self.analysis_name, directory=self.directory)        

        # event file
        self.event.parameters['Event_Name'] = self.analysis_name
        self.event.write_to_file(directory=self.directory)
        
        # string file
        self.string.parameters['Event_Property_File'] = os.path.split(self.event.filename)[1]
        self.string.parameters['ModelName'] = self.analysis_name
        self.string.parameters['OutputName'] = self.analysis_name
        self.string_filename = self.string.write_to_file(directory=self.directory, publish=True)   
