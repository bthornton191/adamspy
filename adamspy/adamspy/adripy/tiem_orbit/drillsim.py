"""Module for the DrillSim class
"""
import os
from ..adripy import build

class DrillSim():
    """Contains data defining the files that make up an Adams
    Drill input deck.
    """
    def __init__(self, string, event, solver_settings, directory, analysis_name):
        self.string = string
        self.event = event
        self.solver_settings = solver_settings
        self.directory = directory
        self.analysis_name = analysis_name
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
        build(self.string, self.solver_settings, self.directory)
        
        self.built = True

    def run(self):
        """Run the simulation
        """

        return
    
    def build_from_similar(self, similar_drill_sim, wob=None, rpm=None, gpm=None, rop=None):
        """Copies an input deck with an identical adm file then
        changes the drilling parameters in the acf file.
        """       
        
        self.built = True
    
    def _write_tiem_orbit_files(self):
        """Writes the three Tiem Orbit files (str, evt, ssf) to
        the simulation directory.
        """     
        self.solver_settings.write_to_file(write_directory=self.directory)
        self.string.parameters['Event_Property_File'] = os.path.split(self.event.filename)[1]
        self.string.parameters['ModelName'] = self.analysis_name
        self.string.parameters['OutputName'] = self.analysis_name
        self.string.write_to_file(directory=self.directory, publish=True)   
    
    def add_sim_info(self, adm_file, wob, rpm, gpm, md):
        """Add the SimManager info block to the top of the adm file
        
        Arguments:
            adm_file {str} -- adm filename
            wob {float} -- WOB in the simulation
            rpm {float} -- RPM in the simulation
            gpm {float} -- GPM in the simulation
            md {float} -- Starting Measured Depth in the simulation
        """

        with open(adm_file, 'r') as fid:
            lines = fid.readlines()

        with open(adm_file + '.tmp', 'w') as fid:
            for line in lines:
                if 'file/model' in line:
                    fid.write(line)
                    fid.write(f'!INFO SM Simulation: ADRILL/StdRun\n')
                    fid.write(f'!INFO RPM={rpm}\n')
                    fid.write(f'!INFO Flow={gpm}\n')
                    fid.write(f'!INFO WOB={wob}\n')
                    fid.write(f'!INFO MeasuredDepth={md}\n')
        
        os.remove(adm_file)
        os.rename(adm_file + '.tmp', adm_file)
        