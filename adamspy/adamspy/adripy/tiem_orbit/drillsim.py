"""Module for the DrillSim class
"""
import os
from ..adripy import build

class DrillSim(): #pylint: disable=too-many-instance-attributes
    """Contains data defining the files that make up an Adams
    Drill input deck.
    """
    def __init__(self, string, event, solver_settings, directory, analysis_name): #pylint: disable=too-many-arguments
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
        """Builds the input deck
        """
        # Build the model
        adm, acf, cmd = build(self.string.filename, self.solver_settings.filename, self.directory)  

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
        """Writes the three Tiem Orbit files (str, evt, ssf) to
        the simulation directory.
        """     
        self.solver_settings.write_to_file(self.analysis_name, write_directory=self.directory)        

        self.event.parameters['Event_Name'] = self.analysis_name
        self.event.write_to_file(write_directory=self.directory)
        
        self.string.parameters['Event_Property_File'] = self.event.filename        
        self.string.parameters['ModelName'] = self.analysis_name
        self.string.parameters['OutputName'] = self.analysis_name
        self.string_filename = self.string.write_to_file(directory=self.directory, publish=True)   
