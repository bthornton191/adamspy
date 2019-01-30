"""Tools for manipulating Tiem Orbit files
"""
import re
import os
from thornpy import numtype
from ..adripy import get_full_path

TO_PARAMETER_PATTERN = re.compile('^ [_a-zA-Z]+ += +((\'[-_0-9a-zA-Z<>\\\\/\\.]+\')|(-?[\\.0-9]+)) *$')
TO_BLOCK_HEADER_PATTERN = re.compile('^\\[[_0-9a-zA-Z]+\\] *$') 
TO_SUBBLOCK_HEADER_PATTERN = re.compile('^\\([_0-9a-zA-Z]+\\) *$') 
TO_TABLE_HEADER_PATTERN = re.compile('^\\{( *[_a-zA-Z])+ *\\} *$')
TO_TABLE_LINE_PATTERN = re.compile("^(( *\\'[_a-zA-Z]+\\')+)|(( *-?[\\.0-9]+)+) *$")


def read_TO_file(filename):
    """Reads a Tiem Orbit file into a dictionary of parameters
    
    Arguments:
        filename {string} -- Filename of the Tiem Orbit file
    
    Raises:
        TiemOrbitSyntaxError -- Raised if the Tiem Orbit syntax is not recognized
    """
    filename = get_full_path(os.path.normpath(filename))
    
    if not os.path.exists(filename):
        raise FileNotFoundError(f'{filename} does not exist!')
    
    # Read in the TO file
    with open(filename, 'r') as fid:
        lines = fid.readlines()    

    current_block = None
    current_subblock = None
    current_table_headers = []
    current_table_data = {}
    parameters = {}
    for line in lines:
        # For each line determine if we are at a new Block, new SubBlock, or Table
        
        if TO_BLOCK_HEADER_PATTERN.match(line):
            # if a block is encountered, reset currents
            current_block = line.replace('[','').replace(']','').replace(' ','').replace('\n','')            
            current_subblock = None
            current_table_headers = []
            current_table_data = {}

            # Create a new parameters dictionary entry
            parameters[current_block] = {}

        elif TO_SUBBLOCK_HEADER_PATTERN.match(line):
            # If a subblock is encountered, reset currents
            current_subblock = line.replace('(','').replace(')','').replace(' ','').replace('\n','')
            current_table_headers = []
            current_table_data = {}
            
            # Create a new parameters dictionary entry
            parameters[current_block][current_subblock] = {}

        elif TO_TABLE_HEADER_PATTERN.match(line):
            # If a table is encountered, get the table headers            
            current_table_headers = re.split(' +', line.replace('{','').replace('}','').strip())
            
            # Make a dictionary of empty lists to put the table data in
            current_table_data = {header: [] for header in current_table_headers}
        
        elif TO_PARAMETER_PATTERN.match(line):
            [parameter, value] = line.replace(' ','').replace('\n','').split('=')

            # Format the value 
            if "'" in value:
                # If value is an adams string
                value = value.replace("'",'')
            else:
                # If value is a number                
                value = int(value) if numtype.str_is_int(value) else float(value)

            # Add parameter to parameters dictionary
            if current_subblock is not None:
                parameters[current_block][current_subblock][parameter] = value
            else:
                parameters[current_block][parameter.lower()] = value

        elif current_table_headers != []:
            # If already at a table

            if TO_TABLE_LINE_PATTERN.match(line):
                # If the current line looks like a table entry
                values = re.split(' +', line.strip())
                
                if len(values) != len(current_table_headers):
                    # If the number of values doesn't match the number of table headers raise an error
                    raise TiemOrbitSyntaxError(f'Incorrect syntax found while processing a table in the {current_block} block of {filename}!')
                
                # Add the value to the table data dictionary
                for value, header in zip(values, current_table_headers):
                    if "'" in value:
                        # If value is an adams string
                        current_table_data[header].append(value.replace("'",''))
                    else:
                        # If value is a number
                        current_table_data[header].append(int(value) if numtype.str_is_int(value) else float(value))

                # Add table data to parameters dictionary
                for header in current_table_headers:
                    if current_subblock is not None:
                        parameters[current_block][current_subblock][header.lower()] = current_table_data[header]
                    else:
                        parameters[current_block][header.lower()] = current_table_data[header]

    return parameters

class TiemOrbitSyntaxError(Exception):
    pass
