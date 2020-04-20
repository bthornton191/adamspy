import matplotlib.pyplot as plt
from matplotlib import cm  
import numpy as np
from scipy.signal.windows import hann, hamming, blackman, boxcar
from scipy.signal import find_peaks
from . import get_res_data

from thornpy.signal import fft_watefall as _fft_waterfall

def fft_watefall(res_file, res, comp, percent_overlap=50, n_fft=1024, t_min=None, t_max=None, input_res=None, input_comp=None, input_conversion_factor=60/360, input_unit='RPM', response_unit=None, response_conversion_factor=1, psd=False, z_scale='linear', order_lines=None, f_range=None, clean_sig=None, return_order_cuts=None, title=None):
    """Genenerates a waterfall plot from data in an Adams result or request file.
    
    Parameters
    ----------
    res_file : str
        File name of Adams result (.res) or request (.req) file.
    res : str
        Name of the result in the adams dataset
    comp : str
        Name of the result component in the Adams dataset
    percent_overlap : int, optional
        Percent overlap for the FFT waterfall, by default 50
    n_fft : int, optional
        Number of points used in each FFT, by default 1024
    window : str, optional
        Type of window used for each FFT, by default 'hanning'
    t_min : float, optional
        Start time if cropping data, by default None
    t_max : float, optional
        End time if cropping data, by default None
    input_res : str, optional
        Name of the result to use as the input speed.  If none is given the x axis of the waterfall plot will be time, by default None
    input_comp : str, optional
        Name of the result component to use as the input speed., by default None
    input_conversion_factor : float, optional
        Conversion factor applied to input signal, by default 60/360 (deg/s to RPM)
    response_unit : str, optional
        Text to display on the response signal y axis, by default None
    input_unit : str, optional
        Text to display on the input signal y axis, by default None
    conversion_factor : float, optional
        Conversion factor applied to response signal, by default 1
    psd : bool, optional
        If True FFT will output in PSD. If False FFT will output Magnitude , by default False
    z_scale : str, optional
        The scaling of the values in the spec. 'linear' is no scaling. 'dB' returns the values in dB scale. `psd` is True, this is dB power (10 * log10). Otherwise this is dB amplitude (20 * log10). by default 'linear'
    orders : list, optional
        Adds order fans to the waterfall plots at each order in the list.  Only used if `input_comp` is given.
    f_range : list, optional
        [mininum frequency, maximum frequency].  Only affects plot limits
    clean_sig : float, optional
        If given, removes data points that exceed `clean_sig` multiplied by the standard deviation of the signal.
    
    Returns
    -------

    """    
    time, sig, _ = get_res_data(res_file, res, comp, t_min=t_min, t_max=t_max)

    if input_res is not None:
        _, input_sig, _ = get_res_data(res_file, input_res, input_comp, t_min=t_min, t_max=t_max)
    else:
        input_sig = None
        
    waterfall = _fft_waterfall(time, sig, percent_overlap=percent_overlap, n_fft=n_fft, title=title, t_min=t_min, t_max=t_max, input_sig=input_sig, input_conversion_factor=input_conversion_factor, input_unit=input_unit, response_unit=response_unit, response_conversion_factor=response_conversion_factor, psd=psd, z_scale=z_scale, order_lines=order_lines, f_range=f_range, clean_sig=clean_sig, return_order_cuts=return_order_cuts)

    # if input_sig is None:
    #     return fig, time, sig        
    # elif return_order_cuts is None:
    #     return fig, time, sig, input_sig_rpm
    # else:
    #     return fig, time, sig, input_sig_rpm, order_cuts

    return waterfall
        
def check_num_points(num, n_fft):    
    if num < n_fft:
        for pow_2 in [2**e for e in range(100)][::-1]:
            if num >= pow_2:
                suggested_n = pow_2
                raise ValueError(f'n_fft ({n_fft}) must be less than the number of points in the signal ({num}). Try {suggested_n}.')        
        
        raise ValueError(f'n_fft ({n_fft}) must be less than the number of points in the signal ({num}).')

def get_window(window):
    if window == 'hanning':
        win = hann
    elif window == 'hamming':
        win = hamming
    elif window == 'blackman':
        win = blackman
    elif window in ['rectangular', 'boxcar', None]:
        win = boxcar
    else:
        raise ValueError(f'{window} not recognized as a window!')    
    return win

def _add_order_lines(ax, orders, input_unit):
    """Adds order fan lines to ax at each order in `orders`.
    
    Parameters
    ----------
    ax : axes
        An axes object with a order waterfall countour plot
    orders : list
        List of orders to put lines at.
    input_to_hz : float, optional
        Value to scale the x value by to convert to hz, by default 1/60 (rpm to hz)

    """
    input_to_hz = _get_conversion_to_hz(input_unit)
    ax.autoscale(False)

    for order in orders:        
        x_coords = [0, ax.get_xlim()[-1]]
        y_coords = [0, x_coords[-1]*input_to_hz*order]

        if y_coords[-1] > ax.get_ylim()[-1]:
            y_coords[-1] = ax.get_ylim()[-1]
            x_coords[-1] = y_coords[-1]/input_to_hz/order

        # Add line
        ax.plot(x_coords, y_coords, color='white', linestyle='-', linewidth=2, alpha=.75)

        # Add annotation
        box_props = dict(boxstyle='round', pad=.3, fc='white', ec='black')
        ax.annotate(f'{order:.1f}', (x_coords[-1], y_coords[-1]), bbox=box_props)

def _get_conversion_to_hz(input_unit):
    """Given a unit returns the factor to convert to Hz.
    
    Parameters
    ----------
    input_unit : str
        Unit to be converted to Hz.  Must be 'rpm', 'hz', 'deg/s', 'degs/s', 'deg/sec', or 'degs/sec'.
    
    Returns
    -------
    float
        conversion factor

    """
    # Get conversion factor
    if input_unit.lower() == 'rpm':
        input_to_hz = 1/60
    elif input_unit.lower() == 'hz':
        input_to_hz = 1
    elif input_unit.lower().startswith('deg') and (input_unit.lower().endswith('/s') or input_unit.lower().endswith('/sec')):
        input_to_hz = 1/360

    return input_to_hz

def _clean_sig(sig, n_sigma):
    sig = np.array(sig)
    i_pks, _ = find_peaks(np.abs(sig), threshold=np.std(sig)*n_sigma)

    for i_pk in i_pks:
        sig[i_pk] = np.mean([sig[i_pk-1], sig[i_pk+1]])

    return list(sig), list(i_pks)
