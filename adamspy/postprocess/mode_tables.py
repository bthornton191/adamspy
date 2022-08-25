from __future__ import annotations
import re
from io import StringIO
from typing import Dict, Tuple

from numpy import ceil, sqrt, linalg
import pandas as pd


MODE_LABEL = re.compile('^\\s*Energy table for MODE\\s*\\d+$', flags=re.MULTILINE)
MODAL_SCALAR_LABELS = {
    'zeta': re.compile('^\\s*Damping ratio\\s*=.*$', flags=re.MULTILINE),
    'w_n': re.compile('^\\s*Undamped natural freq\\.\\s*=.*$', flags=re.MULTILINE),
    'K': re.compile('^\\s*Generalized stiffness\\s*=.*$', flags=re.MULTILINE),
    'E': re.compile('^\\s*Kinetic energy\\s*=.*$', flags=re.MULTILINE)
}

MODAL_TABLE_LABELS = {
    'coords': re.compile('^\\s*Normalized coordinates.*$', flags=re.MULTILINE),
    'KE': re.compile('^\\s*Percentage distribution of Kinetic energy.*$', flags=re.MULTILINE),
    'SE': re.compile('^\\s*Percentage distribution of strain energy.*$', flags=re.MULTILINE),
    'DE': re.compile('^\\s*Percentage distribution of dissipative energy.*$', flags=re.MULTILINE)
}

# MODE_TABLE_HORIZ_SEP = re.compile('^\\s*\\+-+\\+\\s*$', flags=re.MULTILINE)
MODE_TABLE_HORIZ_SEP = re.compile('^\\s*[\\+-]+\\s*$', flags=re.MULTILINE)

MODE_TABLE_NAME_MAP = {
    **{f'{d}_mag.': f'{d}_magnitude' for d in ['X', 'Y', 'Z', 'RX', 'RY', 'RZ']},
    **{f'{d}_ph.': f'{d}_phase' for d in ['X', 'Y', 'Z', 'RX', 'RY', 'RZ']},
}


class Mode():
    def __init__(self, scalars: dict, tables: dict):
        self.zeta = scalars['zeta']
        self.w_n = scalars['w_n']
        self.K = scalars['K']
        self.E = scalars['E']
        self.coords: pd.DataFrame = tables['coords'] if 'coords' in tables else None
        self.kinetic_energy: pd.DataFrame = tables['KE'] if 'KE' in tables else None
        self.strain_energy: pd.DataFrame = tables['SE'] if 'SE' in tables else None
        self.dissipative_energy: pd.DataFrame = tables['DE'] if 'DE' in tables else None

        if self.coords is not None:
            self._add_mag_to_coords()
    
    def __repr__(self) -> str:

        text = ' | '.join([
            super(Mode, self).__repr__(),
            f'w_n = {self.w_n}',
            f'K = {self.K}',
            f'E = {self.E}',
            f'zeta = {self.zeta}',
        ])

        return text

    def _add_mag_to_coords(self):
        trans = pd.DataFrame(self.coords[['X_magnitude', 'Y_magnitude', 'Z_magnitude']]).dropna()
        M_magnitude = sqrt(trans['X_magnitude']**2
                           + trans['Y_magnitude']**2
                           + trans['Z_magnitude']**2).rename('M_magnitude')

        rot = pd.DataFrame(self.coords[['RX_magnitude', 'RY_magnitude', 'RZ_magnitude']]).dropna()
        RM_magnitude = sqrt(rot['RX_magnitude']**2
                            + rot['RY_magnitude']**2
                            + rot['RZ_magnitude']**2).rename('RM_Magnitude')

        self.coords = (self.coords
                       .merge(M_magnitude, left_index=True, right_index=True, how='left')
                       .merge(RM_magnitude, left_index=True, right_index=True, how='left'))

    def compare_coords(self, other_mode: Mode):
        err = pd.DataFrame(self.coords.set_index('solver_name')[[f'{d}_magnitude' for d in ('X', 'Y', 'Z')]]
                           - other_mode.coords.set_index('solver_name')[[f'{d}_magnitude' for d in ('X', 'Y', 'Z')]])

        err = (err
               .apply(linalg.norm, axis=1)
               .sum())

        return err


class Modal():

    def __init__(self, modes: Dict[int, Mode]):
        self.modes = modes

        self.w_n = {i: m.w_n for i, m in self.modes.items()}
        self.E = {i: m.E for i, m in self.modes.items()}
        self.K = {i: m.K for i, m in self.modes.items()}
        self.zeta = {i: m.zeta for i, m in self.modes.items()}
        self.scalars = pd.DataFrame({
            'w_n': self.w_n,
            'E': self.E,
            'K': self.K,
            'zeta': self.zeta,
        })

    def filter_eigs(self, wn_min, wn_max):
        for num in list(self.modes):
            if self.modes[num].w_n < wn_min or self.modes[num].w_n > wn_max:
                _ = self.modes.pop(num)

    def remove_zero_eigs(self, threshold=.5):
        for num in list(self.modes):
            if self.modes[num].w_n < threshold:
                _ = self.modes.pop(num)

    def remove_duplicate_eigs(self, tolerance=.001):
        unique = {}

        for num, mode in self.modes.items():
            if all([mode.w_n - w_n > tolerance for w_n in unique.values()]) or unique == {}:
                unique[num] = mode.w_n

        self.modes = {num: self.modes[num] for num in unique}

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

    def find_pairs(self, other: Modal):
        pairs = {}
        errors = {}
        for num_a, mode_a in self.modes.items():
            self._find_pair(other.modes, mode_a, pairs, errors, num_a)

        return pairs

    def _find_pair(self, other_modes: Dict[int, Mode], mode_a, pairs, errors, num_a):
        errs = (pd.Series([mode_a.compare_coords(mode_b) for mode_b in other_modes.values()])
                .set_axis(list(other_modes)))

        for num_b, err in errs.sort_values().iteritems():
            
            if num_b in pairs.values():
                # If this mode is already paired
                current_num_a = [na for na, nb in pairs.items() if nb == num_b][0]
                current_err = errors[current_num_a]

                # If the new pairing is better
                if err < current_err:
                    pairs[num_a] = num_b
                    errors[num_a] = err
                    self._find_pair(other_modes, self.modes[current_num_a], pairs, errors, current_num_a)
                    return

            else:
                pairs[num_a] = num_b
                errors[num_a] = err
                return
        

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
            mode_number = int(line.strip().replace('\n', '').split(' ')[-1])
            start_line = i_line - 1

            modes.append(mode_number)
            start_lines.append(start_line)

    # Create a dictionary of lists of lines for each mode
    mode_lines = {}
    for mode, start_line, stop_line in zip(modes, start_lines, [sl for sl in start_lines[1:]]+[-1]):
        mode_lines[mode] = lines[start_line:stop_line]

    return mode_lines


def _parse_mode_lines(mode_lines: list) -> Tuple[dict, Dict[str, pd.DataFrame]]:
    """Given a list of strings representing lines in an Adams/Linear modal output file for a single
    mode, returns dictionaries of the modal information.

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
    """Given a list of strings representing lines in an Adams/Linear modal output file for a single
    mode, returns a pandas table of the data


    Parameters
    ----------
    table_lines : list
        list of strings representing lines in an Adams/Linear modal output file for a single mode

    Returns
    -------
    pd.DataFrame
        Pandas `:obj:pd.DataFrame` representing the mode table

    """
    idx_horiz_sep = [i for i, line in enumerate(table_lines) if MODE_TABLE_HORIZ_SEP.match(line)][:3]

    # Get the header lines should be one or two lines
    header_lines = table_lines[idx_horiz_sep[0]+1:idx_horiz_sep[1]]

    # Get the column names
    column_names = _get_column_names(header_lines)
    matches = list(re.finditer('\\s\\w', header_lines[-1].replace('|', '')))
    colspecs = [(0, matches[0].end()-2)]
    for last_match, match in zip(matches[:-1], matches[1:]):
        colspecs += [(last_match.end()-2, match.end()-2)]

    # Prep lines for input to read csv by removing | and replaceing white space with commas
    prepped_lines = []
    for line in table_lines[idx_horiz_sep[1]+1:idx_horiz_sep[2]]:
        prepped_line = line.replace('|', '')
        # prepped_line = prepped_line.strip()
        # prepped_line = re.sub('(?<=|.*)  (?=|.*)', ',', prepped_line)
        # prepped_line = re.sub('\\s{1,11}', ',', prepped_line)
        # prepped_line = re.sub('(?<=\\d)-', ',-', prepped_line)
        prepped_lines.append(prepped_line)
    table_text = '\n'.join(prepped_lines)

    # Get the table as a dataframe
    return pd.read_fwf(StringIO(table_text), colspecs=colspecs, names=column_names).rename(columns=MODE_TABLE_NAME_MAP)


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
