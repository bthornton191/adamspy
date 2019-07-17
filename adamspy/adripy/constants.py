"""Contains some constant values used through out the adripy package.

Attributes
----------
TO_PARAMETER_PATTERN : :obj:`SRE_Pattern`
    Regular expression used to find a parameter definition line in a tiem orbit file
TO_LENGTH_PARAM : dict
    Defines for each type of Adams Drill tool what tiem orbit parameter to use to get the length of the tool.
ADRILL_IDS : :obj:`dict` of :obj:`dict`
    Defines the spline id and the variable id for wob, rpm, rop, and gpm in an Adams Drill dataset (.adm) file.
DATABASE_INFO : :obj:`dict` of :obj:`dict`
    Defines the structure of an Adams Drill database (.cdb).

"""
import re

TO_PARAMETER_PATTERN = re.compile('^ *[_0-9a-zA-Z]+\\s*=\\s*((\'[-:_0-9a-zA-Z<>\\\\/\\.\\s]*\')|(-?[\\+-\\.e0-9]+))\\s*$')

TO_LENGTH_PARAM = {}
TO_LENGTH_PARAM['accelerator'] = ['Accelerator_Length']
TO_LENGTH_PARAM['agitator'] = ['Power_Body_Length', 'Shock_Stub_Length']
TO_LENGTH_PARAM['blade_reamer'] = ['Reamer_Length']
TO_LENGTH_PARAM['crossover'] = ['Crossover_Length']
TO_LENGTH_PARAM['dart'] = ['Dart_Length']
TO_LENGTH_PARAM['drill_collar'] = ['Drillcollar_Length']
TO_LENGTH_PARAM['drillpipe'] = ['Pipe_Length']
TO_LENGTH_PARAM['flex_pipe'] = ['Flex_Length']
TO_LENGTH_PARAM['generic_long'] = ['Tool_Length']
TO_LENGTH_PARAM['generic_short'] = ['GenericShort_Length']
TO_LENGTH_PARAM['hw_pipe'] = ['Pipe_Length']
TO_LENGTH_PARAM['instrumentation_sub'] = ['ISUB_Length']
TO_LENGTH_PARAM['jar'] = ['Body_Length', 'Stub_Length']
TO_LENGTH_PARAM['mfr_tool'] = ['Tool_Length']
TO_LENGTH_PARAM['motor'] = ['Motor_Length']
TO_LENGTH_PARAM['mwd_tool'] = ['Tool_Length']
TO_LENGTH_PARAM['pdc_bit'] = ['Bit_Length']
TO_LENGTH_PARAM['single_point'] = ['Bit_Length']
TO_LENGTH_PARAM['roller_cone_bit'] = ['Bit_Length']
TO_LENGTH_PARAM['shock_sub'] = ['Installed_Length']
TO_LENGTH_PARAM['short_collar'] = ['Collar_Length']
TO_LENGTH_PARAM['stabilizer'] = ['Stabilizer_Length']

ADRILL_IDS = {
    'rop': {
        'spline': 10000,
        'variable': 9104
    },
    'wob': {
        'spline': 10001,
        'variable': 9106
    },
    'rpm': {
        'spline': 10002,
        'variable': 9105
    },
    'gpm': {
        'spline': 10003,
        'variable': 1102
    }
}


DATABASE_INFO = {
    'assembly': {'table': 'drill_strings.tbl', 'extension': 'str'},
    'hole': {'table': 'holes.tbl', 'extension': 'hol'},
    'drillpipe': {'table': 'drill_pipes.tbl', 'extension': 'pip'},
    'drill_collar': {'table': 'drill_collars.tbl', 'extension': 'col'},
    'accelerator': {'table': 'accelerators.tbl', 'extension': 'acc'},
    'stabilizer': {'table': 'stabilizers.tbl', 'extension': 'sta'},
    'short_collar': {'table': 'short_collars.tbl', 'extension': 'sco'},
    'dart': {'table': 'darts.tbl', 'extension': 'drt'},
    'jar': {'table': 'jars.tbl', 'extension': 'djr'},
    'agitator': {'table': 'agitators.tbl', 'extension': 'agn'},
    'blade_reamer': {'table': 'blade_reamers.tbl', 'extension': 'bre'},
    'crossover': {'table': 'crossovers.tbl', 'extension': 'crs'},
    'darts': {'table': 'darts.tbl', 'extension': 'drt'},
    'event': {'table': 'events.tbl', 'extension': 'evt'},
    'flex_pipe': {'table': 'flex_pipes.tbl', 'extension': 'flp'},
    'hw_pipe': {'table': 'hw_pipes.tbl', 'extension': 'hwp'},
    'pdc_bit': {'table': 'pdc_bits.tbl', 'extension': 'pdc'},
    'motor': {'table': 'motors.tbl', 'extension': 'mot'},
    'shock_sub': {'table': 'shock_subs.tbl', 'extension': 'shk'},
    'lwd_tool': {'table': 'lwd_tools.tbl', 'extension': 'lwd'},
    'mfr_tool': {'table': 'mfr_tools.tbl', 'extension': 'mfr'},
    'mwd_tool': {'table': 'mwd_tools.tbl', 'extension': 'mwd'},
    'rss': {'table': 'rss.tbl', 'extension': 'rsd'},
    'instrumentation_sub': {'table': 'instrumentation_subs.tbl', 'extension': 'ins'},
    'generic_long': {'table': 'generic_longs.tbl', 'extension': 'gnl'},
    'generic_short': {'table': 'generic_shorts.tbl', 'extension': 'gns'},
    'roller_cone_bit': {'table': 'roller_cone_bits.tbl', 'extension': 'rcb'},
    'solver_settings': {'table': 'solver_settings.tbl', 'extension': 'ssf'},
    'plot_config': {'table': 'plot_configs.tbl', 'extension': 'plt'},
    'top_drive': {'table': 'top_drives.tbl', 'extension': 'tdr'},
    'equivalent_upper_string': {'table': 'drill_pipes.tbl', 'extension': 'pip'}
}

ADRILL_PLUGIN_VAR = '.MDI.plugins.adrill'