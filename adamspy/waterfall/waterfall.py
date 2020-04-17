import matplotlib.pyplot as plt
from matplotlib import cm  
import numpy as np
from scipy.signal.windows import hann, hamming, blackman, boxcar

from . import get_res_data

def fft_watefall(res_file, res, comp, percent_overlap=50, n_fft=1024, t_min=None, t_max=None, input_res=None, input_comp=None, input_conversion_factor=60/360, input_unit='RPM', response_unit=None, response_conversion_factor=1, psd=False, z_scale='linear'):
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
    
    Returns
    -------
    Figure
        Waterfall plot

    """
    
    
    time, sig, num = get_res_data(res_file, res, comp, t_min=t_min, t_max=t_max)

    # Convert to other unis (for converting to Gs)
    if response_conversion_factor is not None:
        sig = [v*response_conversion_factor for v in sig]
    
    check_num_points(num, n_fft)

    t_s = (time[-1] - time[0])/(len(time) - 1)
    f_s = 1/t_s
    
    _fig, (ax1, ax2) = plt.subplots(nrows=2)
    ax1.plot(time, sig)
    # plt.grid()

    # Pxx, freqs, bins, im = ax2.specgram(sig, NFFT=n_fft, Fs=f_s, noverlap=percent_overlap/100*n_fft, window=get_window(window))
    Pxx, freqs, bins, im = ax2.specgram(sig, NFFT=n_fft, Fs=f_s, noverlap=percent_overlap/100*n_fft, detrend='mean', mode='magnitude' if psd is False else 'psd', scale=z_scale, cmap='nipy_spectral')
    # The `specgram` method returns 4 objects. They are:
    # - Pxx: the periodogram
    # - freqs: the frequency vector
    # - bins: the centers of the time bins
    # - im: the matplotlib.image.AxesImage instance representing the data in the plot
    _fig.colorbar(im)
    plt.grid()
    plt.close()

    # ----------------
    # Signal
    # ----------------
    x_wtrfl, y_wtrfl = np.meshgrid(bins+time[0], freqs)
    fig, axes = plt.subplots(nrows=2 if input_res is None else 3)
    axes[0].plot(time, sig)
    axes[0].set_xlim(time[0], time[-1])
    if response_unit is None:
        axes[0].set_ylabel('{} | {}'.format(res.replace('cust_','').replace('_',' '), comp))
    else:
        axes[0].set_ylabel(response_unit)
    axes[0].grid()        
    axes[0].set_title('{} | {}'.format(res.replace('cust_','').replace('_',' ').upper(), comp))    

    if input_res is None:
        # ----------------
        # 3D FFT
        # ----------------        
        wtrfl_surf = axes[1].contourf(x_wtrfl, y_wtrfl, Pxx, 250, cmap=cm.get_cmap('nipy_spectral'), extend='min')
        axes[1].set_xlim(time[0], time[-1])
        axes[1].set_xlabel('Time (s)')
        axes[1].set_ylabel('Frequency (Hz)')
        axes[1].set_grid(True)
        # wtrfl_fig.colorbar(wtrfl_surf)

    else:        
        # ----------------
        # Order Chart
        # ----------------
        _t, input_sig, _n = get_res_data(res_file, input_res, input_comp, t_min=t_min, t_max=t_max)
        input_sig_rpm = [abs(v*input_conversion_factor) for v in input_sig]
        input_bins = [abs(input_sig_rpm[np.argmax(time>=t_bn+time[0])]) for t_bn in bins]
        x_order, y_order = np.meshgrid(input_bins, freqs)
        
        # Plot Input Signal
        axes[1].plot(time, input_sig_rpm)
        axes[1].set_xlim(time[0], time[-1])
        axes[1].set_xlabel('Time (s)')
        axes[1].set_ylabel(input_unit)
        axes[1].set_title('Input Speed')

        axes[1].grid(True)

        # Plot Order Waterfall
        wtrfl_surf = axes[2].contourf(x_order, y_order, Pxx, 250, cmap=cm.get_cmap('nipy_spectral', 100), extend='min')
        axes[2].set_xlabel(input_unit)
        axes[2].set_ylabel('Frequency (Hz)')
        axes[2].grid(True)
        
        if psd is True:
            cbar = fig.colorbar(wtrfl_surf)
            cbar.set_label(f'{response_unit}^2/Hz')

        if response_unit is not None:
            cbar = fig.colorbar(wtrfl_surf)
            cbar.set_label(response_unit)

    fig.set_size_inches(10,10)
    plt.tight_layout()

    print(f'dt: {n_fft*t_s}')
    return fig

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
