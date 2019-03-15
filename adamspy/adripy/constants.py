"""Contains some constant values used through out the adripy package.
"""
import re

# Define regular expressions
TO_PARAMETER_PATTERN = re.compile('^ [_0-9a-zA-Z]+\\s+=\\s+((\'[-:_0-9a-zA-Z<>\\\\/\\.]+\')|(-?[\\+-\\.e0-9]+))\\s*$')

# Dictionary of TO tool length parameters
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