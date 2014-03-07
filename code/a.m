from __future__ import division

from scipy.signal import fft, ifft
import numpy as np

def approximate(signal, cutoff):
    fourier = fft(signal)
    size = len(signal)
    # remove all frequencies except ground + offset positive, and offset negative:
    fourier[1+cutoff:-cutoff] = 0
    return ifft(fourier)

def quad(x):
    return x**2

from pylab import plot

X = np.arange(-4096,4096)/64
Y = quad(X)

plot(X,Y)
plot(X,approximate(Y,3))