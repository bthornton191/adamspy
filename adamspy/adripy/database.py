"""Tools for working with Adams Drill Databases

"""
import glob
import os

from .utilities import fullNotation_to_cdbNotation

def fix_strings_in_cdb(cdb_path, old_cdb_path=None, cdb_name=None):
    """Finds all the string files in the Adams Drill Database given in `cdb_path` and converts all cdb references in the string files to cdb notation.  If `old_cdb_path` and `cdb_name` are given, replaces any references to `old_cdb_path` with references to `cdb_name` using cdb notation.
    
    Parameters
    ----------
    cdb_path : str
        Path to an Adams Drill Database
    old_cdb_path : str
        Filepath to a cdb which should be replaced. (default is None)
    cdb_name : str
        Name of the cdb with which to replace the old file path. (default is None)

    """
    for string_file in glob.glob(os.path.join(cdb_path, '**', '*.str'), recursive=True):
        # For each string file in the database
        
        # If an old_cdb_path is given, replace it with the new cdb notation
        if old_cdb_path is not None and cdb_name is not None:
            replace_old_cdb_paths_in_string(string_file, old_cdb_path, cdb_name)

        # Convert full notation to cdb notation
        fullNotation_to_cdbNotation(string_file)

def replace_old_cdb_paths_in_string(string_file, old_cdb_path, cdb_name):
    """Replaces all occurences of `old_cdb_path` with '<`cdb_name`>' in `string_file`.
    
    Parameters
    ----------
    string_file : str
        String file
    old_cdb_path : str
        Filepath to a cdb which should be replaced.
    cdb_name : str
        Name of the cdb with which to replace the old file path.

    """
    # remove the cdb extension from cdb_name
    cdb_name = cdb_name.replace('.cdb', '')

    # Open the string file for reading and a temporary string file for writing
    with open(string_file, 'r') as fid, open(string_file + '.tmp', 'w') as fid_new:
        
        for line in fid:
            # For each line check if the line has the erroneous path and replace it
            line = line.replace(old_cdb_path.replace('/', '\\'), f'<{cdb_name}>').replace(old_cdb_path.replace('\\', '/'), f'<{cdb_name}>')            
            fid_new.write(line)
    
    # Replace the original file with the temp file
    os.remove(string_file)
    os.rename(string_file + '.tmp', string_file)
