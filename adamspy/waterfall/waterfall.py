import matplotlib.pyplot as plt
from matplotlib import cm  
import numpy as np
from scipy.signal.windows import hann, hamming, blackman, boxcar
from scipy.signal import find_peaks
from . import get_res_data

from thornpy.signal import fft_watefall as _fft_waterfall

def fft_watefall(res_file, res, comp, percent_overlap=50, n_fft=1024, t_min=None, t_max=None, input_res=None, input_comp=None, input_conversion_factor=60/360, input_unit='RPM', response_unit=None, response_conversion_factor=1, psd=False, z_scale='linear', order_lines=None, f_range=None, clean_sig=None, return_order_cuts=None, title=None, vmin=None, vmax=None):
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
    Figure
        Waterfall plot
        
    """    
    time, sig, _ = get_res_data(res_file, res, comp, t_min=t_min, t_max=t_max)

    if input_res is not None:
        _, input_sig, _ = get_res_data(res_file, input_res, input_comp, t_min=t_min, t_max=t_max)
    else:
        input_sig = None
        
    waterfall = _fft_waterfall(time, sig, percent_overlap=percent_overlap, n_fft=n_fft, title=title, t_min=t_min, t_max=t_max, input_sig=input_sig, input_conversion_factor=input_conversion_factor, input_unit=input_unit, response_unit=response_unit, response_conversion_factor=response_conversion_factor, psd=psd, z_scale=z_scale, order_lines=order_lines, f_range=f_range, clean_sig=clean_sig, return_order_cuts=return_order_cuts, vmin=vmin, vmax=vmax)

    return waterfall
