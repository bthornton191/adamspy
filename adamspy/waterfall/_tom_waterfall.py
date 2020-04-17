"""Contains functions for generating waterfall plots from Adams results.

"""
################################################################################
#
# program: waterfall_FFT.py
# author: Tom Irvine
# version: 1.6
# date: July 24, 2014
# description:  Waterfall FFT of a signal.
#               The file must have two columns: time(sec) & amplitude
#
################################################################################
# pylint: disable=invalid-name
from __future__ import print_function
from sys import stdin
import os

from tompy import read_two_columns, signal_stats
from tompy import enter_float
from tompy import enter_int
from tompy import GetInteger2

import matplotlib.pyplot as plt
from mpl_toolkits.mplot3d.art3d import Poly3DCollection
from matplotlib.colors import colorConverter
from matplotlib import cm  
from numpy import meshgrid  
from numpy import array, zeros, log
from numpy import sqrt, std, mean, var
from scipy.fftpack import fft
from scipy.signal.windows import hann, hamming, blackman
from scipy import stats

from . import get_res_data

DT_MIN = 1e+50
DT_MAX = 0

OVERLAP = True

def get_n_segments(n_seg_options, ddf_options, desired):
    """Selects the option closest to the desired
    
    Parameters
    ----------
    options : list
        List of options for n segments
    desired : int
        Desired number of segments.

    """
    i = min(range(len(n_seg_options)), key=lambda i: abs(n_seg_options[i]-desired))
    n_seg = int(n_seg_options[i])
    ddf = ddf_options[i]
    
    return n_seg

def _signal_stats(time, signal):
    """
    a is the time column.
    b is the amplitude column.
    num is the number of coordinates
    Return
          sr - sample rate
          dt - time step
        mean - average
          sd - standard deviation
         rms - root mean square
        skew - skewness
    kurtosis - peakedness
         dur - duration

    """
    ave = mean(signal)
    duration = time[-1] - time[0]
    t_sample = duration/float(len(time)-1)
    f_sample = 1/t_sample
    rms = sqrt(var(signal))
    stdev = std(signal)
    skewness = stats.skew(signal)
    kurtosis = stats.kurtosis(signal, fisher=False)

    return f_sample, t_sample, ave, stdev, rms, skewness, kurtosis, duration

def fft_waterfall(res_file, res, comp, desired_n_segs, f_min=0, f_max=500, window=None, t_min=None, t_max=None, input_res=None, input_comp=None):
    """[summary]
    
    Notes
    -----
    Uses a 50% overlap

    Parameters
    ----------
    res_file : [type]
        [description]
    res : [type]
        [description]
    comp : [type]
        [description]
    desired_n_segs : [type]
        [description]
    window : [type], optional
        [description], by default None
    t_min : [type], optional
        [description], by default None
    t_max : [type], optional
        [description], by default None

    """
    _t_raw, _sig_raw, num = get_res_data(res_file, res, comp, t_min=t_min, t_max=t_max)

    sr, dt, mean, sd, rms, skew, kurtosis, dur = _signal_stats(_t_raw, _sig_raw)

    tmi=_t_raw[0]
    tme=_t_raw[len(_t_raw)-1]
    time=_t_raw
    sig=_sig_raw

    # Adjust time if outside of min/max dt
    dt_min = DT_MIN
    dt_max = DT_MAX
    for i in range(1, num-1):
        if (time[i]-time[i-1]) < dt_min:
            dt_min = time[i] - time[i-1]
        if (time[i] - time[i-1]) > dt_max:
            dt_max = time[i] - time[i-1]

    time=array(time)
    sig=array(sig)

    sig -= sum(sig)/len(sig)  # demean

    n_pts=len(sig)

    ss=zeros(n_pts)
    seg=zeros(n_pts,'f')
    i_seg=zeros(n_pts)

    NC=0
    for i in range (0,1000):
        nmp = 2**i
        if nmp <= n_pts:
            ss[i] = 2**i
            seg[i] =float(n_pts)/float(ss[i])
            i_seg[i] = int(seg[i])
            NC=NC+1
        else:
            break
    
    n_seg_options = []
    ddf_options = []

    for i in range (1,NC+1):
        j=NC+1-i
        if j>0:
            if( i_seg[j]>0 ):
                tseg=dt*ss[j]
                ddf=1./tseg
                print ('%8d  %6.3f  %d' %(i_seg[j], ddf, 2*i_seg[j]))

                n_seg_options.append(i_seg[j])
                ddf_options.append(ddf)

        if i==12:
            break    
    # ----------------------
    # Get number of segments
    # ----------------------
    n_segments = get_n_segments(n_seg_options, ddf_options, desired_n_segs)

    mmm = 2**int(log(float(n_pts)/float(n_segments))/log(2))
    df=1/(mmm*dt)
    md2=mmm/2

    print('\n======================================================')
    print(f'Number of Points:   {mmm}')
    print(f'Delta Frequency:    {df} Hz')

    freq=zeros(int(md2),'f')

    for i in range (0, int(md2)): 
        freq[i] = i*df
        if freq[i] > f_max:
            break

    mk = i
    t1 = tmi+(dt*mmm)

    if OVERLAP is False:
        time_a=zeros(n_segments, 'f')
        time_a[0] = t1
        
        for i in range(1,n_segments):
            time_a[i]=time_a[i-1]+dt*mmm
        
    else:
        n_segments=2*n_segments-1
        time_a=zeros(n_segments, 'f')
        time_a[0]=t1     
        dt=dt/2
        for i in range(1,n_segments):
            time_a[i]=time_a[i-1]+dt*mmm
        
    print(f'Time Slice Size:    {time_a[1] - time_a[0]}')
    print('\n======================================================')

    # -----------------------------------------------------------
    # waterfall_FFT_core
    # -----------------------------------------------------------
    freq_p=[]

    for k in range(0,int(mk)):
                            
        if freq[k]>=f_min and freq[k]<=f_max:
            freq_p.append(freq[k])

    freq_p=array(freq_p)
            
    nfreq=len(freq_p)
            
    last_freq=nfreq-1        
            
    mk=nfreq
            
    ###############################################################################
            
    LF=len(freq)     
        
    print('\n NW=%d  LF=%d   mk=%d   \n' %(n_segments,LF,mk))    
            
    store=zeros((n_segments,LF),'f')
    store_p=zeros((n_segments,mk),'f')    
        
            
    jk=int(0)
        
    for ij in range(0,int(n_segments)):

        sa=zeros(mmm,'f')
                

        if OVERLAP is False:   
            for k in range(0,int(mmm)):                
                sa[k]=sig[jk]
                jk=int(jk+1)
                
        else:
            for k in range(0,int(mmm)):
                sa[k]=sig[jk]
                jk=int(jk+1)
                
            jk=int(jk-mmm/2)            

        Y = windowed_fft(sa, mmm, window)

        j=0                     
                
        for k in range(0,LF):      
                
            if k==0:
                store[ij][k] = abs(Y[0])/mmm           
            else:    
                store[ij][k] =2.*abs(Y[k])/mmm    
                
            if freq[k]>f_max:
                break
                
            if freq[k]>=f_min and freq[k]<=f_max and j<mk:
                store_p[ij][j]=store[ij][k]                    
                last_freq=j    
                j=j+1
                    
    mk=last_freq+1
        
    # -------------------
    # waterfall_FFT_plots         
    # -------------------
    #  waterfall(freq_p,time_a,store_p)  

    # --------
    # Figure 1
    # --------
    fig = plt.figure(1)

    plt.plot(time,sig, linewidth=1.0,color='b')       
    plt.grid(True)
    plt.xlabel('Time (sec)')
    plt.title('Input Time History')

    # --------
    # Figure 2
    # --------
    fig = plt.figure(2)
    ax = fig.gca(projection='3d')

    cc = lambda arg: colorConverter.to_rgba(arg, alpha=0.6)

    verts = []

    ys = zeros(mk, 'f')
    zs=zeros(mk, 'f')
    maxz=0

    for i in range(0,n_segments):
        for j in range(0,mk):
            zs[j] = store_p[i][j]
            
            if zs[j]>maxz:
                maxz=zs[j]
            
        for j in range(0,mk):        
            ys[j]=time_a[i]
            
        verts.append(list(zip(freq_p, ys, zs)))

    ax.add_collection3d(Poly3DCollection(verts, facecolors = 'r'))

    ax.view_init(elev=45, azim=-100)

    ax.set_xlabel('Frequency (Hz)')
    ax.set_ylabel('Time (sec)')
    ax.set_zlabel('Magnitude')

    ax.set_xlim3d(f_min, f_max)
    ax.set_ylim3d(time[0], time[len(time)-1])
    ax.set_zlim3d(0, maxz)

    # --------
    # Figure 3
    # -------- 
    fig=plt.figure(3)

    X,Y = meshgrid(freq_p,time_a)

    ax = fig.gca(projection='3d')
            
    surf = ax.plot_surface(X, Y, store_p, rstride=1, cstride=1, cmap=cm.viridis, linewidth=0, antialiased=False)

    ax.set_xlim3d(f_min, f_max)

    ax.set_zlim3d(0, maxz)

    ax.view_init(elev=45, azim=-100)

    ax.set_xlabel('Frequency (Hz)')
    ax.set_ylabel('Time (sec)')
    ax.set_zlabel('Magnitude')

    # --------
    # Figure 4
    # --------
    plt.close(4)
    fig=plt.figure(4)

    X,Y = meshgrid(freq_p,time_a)

    ax = fig.gca(projection='3d')
            
    surf = ax.plot_surface(X, Y, store_p, rstride=1, cstride=1, cmap=cm.viridis, linewidth=0, antialiased=False)

    # ax.set_xlim3d(minf, maxf)

    ax.set_zlim3d(0, maxz)
    ax.set_zticks((0, maxz))
    ax.set_zticklabels((' ',' '))      
    ax.view_init(elev=89.9, azim=-90.1)
    ax.set_xlabel('Frequency (Hz)')
    ax.set_ylabel('Time (sec)')

    plt.show() 

def order_plot(freq_p, time_a, store_p, maxz, f_min, f_max):
    fig=plt.figure()

    X,Y = meshgrid(freq_p,time_a)

    ax = fig.gca(projection='3d')
            
    surf = ax.plot_surface(X, Y, store_p, rstride=1, cstride=1, cmap=cm.viridis, linewidth=0, antialiased=False)

    ax.set_xlim3d(f_min, f_max)

    ax.set_zlim3d(0, maxz)

    ax.view_init(elev=45, azim=-100)

    ax.set_xlabel('Frequency (Hz)')
    ax.set_ylabel('Time (sec)')
    ax.set_zlabel('Magnitude')

    return fig

def windowed_fft(signal, n_points, window):
    """Takes a discretized fft and ahhples the window specified in `window`.
    
    Parameters
    ----------
    window : str
        Name of a window
    sa : list
        list of values
    mmm : int
        Number of points
    
    Raises
    ------
    ValueError
        Raised if window string not recognized

    """
    if window == 'hanning':                        
        sig_fft = fft(signal*hann(n_points), n_points)
    elif window == 'hamming':
        sig_fft = fft(signal*hamming(n_points), n_points)
    elif window == 'blackman':
        sig_fft = fft(signal*blackman(n_points), n_points)
    elif window is None:
        sig_fft= fft(signal,n_points)            
    else:
        raise ValueError(f'Window {window} not recognized!')

    return sig_fft
