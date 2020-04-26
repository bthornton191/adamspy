import re
from io import StringIO

from numpy import ceil, sqrt
import pandas as pd


MODE_LABEL = re.compile('^\\s*Energy table for MODE\\s*\\d+$', flags=re.MULTILINE)
MODAL_SCALAR_LABELS = {
    'zeta': re.compile('^\\s*Damping ratio\\s*=.*$', flags=re.MULTILINE),
    'w_n': re.compile('^\\s*Undamped natural freq\\.\\s*=.*$', flags=re.MULTILINE),
    'K': re.compile('^\\s*Generalized stiffness\\s*=.*$', flags=re.MULTILINE),
    'E': re.compile('^\\s*Kinetic energy\\s*=.*$', flags=re.MULTILINE)
}

MODAL_TABLE_LABELS = {
    'coords': re.compile('^\\s*Normalized coordinates in this mode\\s*$', flags=re.MULTILINE),
    'KE': re.compile('^\\s*Percentage distribution of Kinetic energy\\s*$', flags=re.MULTILINE),
    'SE': re.compile('^\\s*Percentage distribution of strain energy\\s*$', flags=re.MULTILINE),
    'DE': re.compile('^\\s*Percentage distribution of dissipative energy\\s*$', flags=re.MULTILINE)    
}

# MODE_TABLE_HORIZ_SEP = re.compile('^\\s*\\+-+\\+\\s*$', flags=re.MULTILINE)
MODE_TABLE_HORIZ_SEP = re.compile('^\\s*[\\+-]+\\s*$', flags=re.MULTILINE)

class Modal():

    def __init__(self, modes: dict):
        self.modes = modes

    def get_modes_where_parts_participate(self, part_suffix, table, column, threshold=.9, sum_or_max='max'):
        """Returns a dictionary where the keys are mode numbers and the values are `:obj:Mode` objects in which any part with the suffix `part_suffix` has at least `threshold` percent of the total.

        Parameters
        ----------
        part_suffix : str
            Suffix of parts to check for
        table : str
            Table type. Options are 'coords', 'kinetic_energy', 'strain_energy', 'dissipative_energy'
        column : str
            Column name from the table
        threshold : float
            Part's value must be greater than `threshold` multiplied the sum or max (depending on `sum_or_max` value) of the column in the table to be considered participating
        sum_or_max : str
            Must be 'sum' or 'max'

        Returns
        -------
        dict
            Dictionary where the keys are mode numbers and the values are `:obj:Mode` objects

        """ 
        modes_with_participation = {}

        for mode_number, mode in self.modes.items():
            
            # Sort the kinetic energy table by decending sum
            tbl_obj = getattr(mode, table)
            sorted_tbl = tbl_obj.sort_values(column, ascending=False).reset_index(drop=True)              
            
            # Get the value to compare against
            value = sorted_tbl[column].max() if sum_or_max.lower() == 'max' else sorted_tbl[column].sum()
            
            filtered_tbl = sorted_tbl[sorted_tbl['view_name'].str.split('.', expand=True)[1].str.startswith(part_suffix)].reset_index(drop=True)

            if filtered_tbl[column][0] >= value*threshold:
                modes_with_participation[mode_number] = mode
            
        return modes_with_participation

class Mode():
    def __init__(self, scalars: dict, tables: dict):
        self.zeta = scalars['zeta']
        self.w_n = scalars['w_n']
        self.K = scalars['K']
        self.E = scalars['E']
        self.coords = tables['coords'] if 'coords' in tables else None
        self.kinetic_energy = tables['KE'] if 'KE' in tables else None
        self.strain_energy = tables['SE'] if 'SE' in tables else None
        self.dissipative_energy = tables['DE'] if 'DE' in tables else None

        if self.coords is not None:
            self._add_mag_to_coords()

    def _add_mag_to_coords(self):
        self.coords['M_magnitude'] = sqrt(self.coords['X_magnitude']**2 + self.coords['Y_magnitude']**2 + self.coords['Z_magnitude']**2)
        self.coords['RM_magnitude'] = sqrt(self.coords['RX_magnitude']**2 + self.coords['RY_magnitude']**2 + self.coords['RZ_magnitude']**2)

def parse_table_file(filename):
    with open(filename, 'r') as fid:
        lines = fid.readlines()
    
    mode_lines_dict = _split_by_mode(lines)

    modes_dict = {}
    for mode_number, mode_lines in mode_lines_dict.items():
        scalars_dict, tables_dict = _parse_mode_lines(mode_lines)
        modes_dict[mode_number] = Mode(scalars_dict, tables_dict)
    
    return Modal(modes_dict)
    
def _split_by_mode(lines: list) -> dict:    
    
    modes = []
    start_lines = []

    # Get the mode numbers and the start lines
    for i_line, line in enumerate(lines):
        if MODE_LABEL.match(line):
            mode_number = int(line.strip().replace('\n','').split(' ')[-1])
            start_line = i_line - 1

            modes.append(mode_number)
            start_lines.append(start_line)

    # Create a dictionary of lists of lines for each mode
    mode_lines = {}
    for mode, start_line, stop_line in zip(modes, start_lines, [sl for sl in start_lines[1:]]+[-1]):
        mode_lines[mode] = lines[start_line:stop_line]
    
    return mode_lines

def _parse_mode_lines(mode_lines: list) -> (dict, dict):
    """Given a list of strings representing lines in an Adams/Linear modal output file for a single mode, returns dictionaries of the modal information.

    Parameters
    ----------
    mode_lines : list
        List of strings representing lines in an Adams/Linear modal output file for a single mode.

    Returns
    -------
    dict
        Dictinary of the scalars that describe the mode
    dict
        Dictionary of dataframes of the the lines for each mode table. 

    """    
    mode_scalars_dict = {}
    table_names = []
    tbl_st_ln_nums = []

    for i_line, line in enumerate(mode_lines):
        for scalar_name, pattern in MODAL_SCALAR_LABELS.items():
            if pattern.match(line):
                mode_scalars_dict[scalar_name] = float(line.split('=')[-1].strip().split(' ')[0])
                break
        
        for table_name, pattern in MODAL_TABLE_LABELS.items():
            if pattern.match(line):
                table_names.append(table_name)
                tbl_st_ln_nums.append(i_line)
                break
            
    # Create a dictionary of pandas dataframes
    tbl_dict = {}
    for tbl_name, st_ln_num, sp_ln_num in zip(table_names, tbl_st_ln_nums, [sl for sl in tbl_st_ln_nums[1:]]+[None]):

        # Get a pandas dataframe of the table
        tbl_dict[tbl_name] = _parse_table_lines(mode_lines[st_ln_num:sp_ln_num]) if sp_ln_num is not None else _parse_table_lines(mode_lines[st_ln_num:])

    return mode_scalars_dict, tbl_dict

def _parse_table_lines(table_lines: list):
    """Given a list of strings representing lines in an Adams/Linear modal output file for a single mode, returns a pandas table of the data


    Parameters
    ----------
    table_lines : list
        list of strings representing lines in an Adams/Linear modal output file for a single mode

    Returns
    -------
    pd.DataFrame
        Pandas `:obj:pd.DataFrame` representing the mode table

    """    
    idx_horiz_sep = [i for i,line in enumerate(table_lines) if MODE_TABLE_HORIZ_SEP.match(line)][:3]

    # Get the header lines should be one or two lines
    header_lines = table_lines[idx_horiz_sep[0]+1:idx_horiz_sep[1]]

    # Get the column names
    column_names = _get_column_names(header_lines)

    # Prep lines for input to read csv by removing | and replaceing white space with commas
    prepped_lines = [re.sub('\\s{1,11}', ',', line.replace('|', '').strip()) for line in table_lines[idx_horiz_sep[1]+1:idx_horiz_sep[2]]]
    table_text = '\n'.join(prepped_lines)

    # Get the table as a dataframe
    table = pd.read_csv(StringIO(table_text), names=column_names)

    return table

def _get_column_names(header_lines):    
    if len(header_lines) == 2:
        # If the header has two lines
        first_headers_list = re.split('\\s+', header_lines[0].replace('|', '').strip())
        second_headers_list = re.split('\\s+', header_lines[1].replace('|', '').strip())

        column_names = ['solver_name'] + ['{}_{}'.format(first_headers_list[int(ceil((i+1)/2)-1)], sec_head) for i, sec_head in enumerate(second_headers_list)] + ['view_name']

    elif len(header_lines) == 1:
        # If the header has one line
        column_names = ['solver_name'] + re.split('\\s+', header_lines[0].replace('|', '').strip()) + ['view_name']
    
    return column_names