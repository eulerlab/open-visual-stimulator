#!/usr/bin/env python
# -*- coding: utf-8 -*-
"""
Fitting functions
MIT License, copyright (c) 2018 Thomas Euler
"""
# ---------------------------------------------------------------------
__author__ = "code@eulerlab.de"

# ---------------------------------------------------------------------
def Gauss(x, h, x0, sigma):
    # h     := height (amplitude) of Gaussian
    # x0    := mean of Gaussian
    # sigma := (sigma)**2 variance of Gaussian
    #
    import numpy as np
    
    x = np.array(x)
    return h *np.exp(-(x -x0)**2 / (2 *sigma**2))


def EMG(x, h, x0, sigma, tau):
    # h     := height (amplitude) of Gaussian
    # x0    := mean of Gaussian
    # sigma := (sigma)**2 variance of Gaussian
    # tau   := 1/lamda, exponent relaxation time
    #
    import numpy as np
    import scipy.special as sse    
    
    s_t  = sigma/tau
    srph = np.sqrt(np.pi/2)
    x    = np.array(x)
    return h *s_t *srph *np.exp(0.5 *s_t**2 -(x -x0)/tau) *sse.erfc(1/np.sqrt(2) +(sigma/tau -(x -x0)/sigma))


def removeShotNoise(data, lim):
    import numpy as np
    
    temp     = [0.0] *len(data)
    temp[0]  = data[0]
    temp[-1] = data[-1]
    for iv, v in enumerate(data):
        if (iv > 0) and (iv < len(data)-1):
            if not((abs(data[iv] -data[iv-1]) > lim) and (abs(data[iv] -data[iv+1]) > lim)):
                temp[iv] = data[iv]
            else:
                temp[iv] = (data[iv-1] +data[iv+1])/2
                
    return np.array(temp)       


def Sigmoid(x, a, b, c, d):
    # General sigmoid function
    # a  := amplitude
    # b  := y offset
    # c  := x offset
    # d  := slope
    #
    import numpy as np
    
    return ((a-b) /(1 + np.exp(x-(c/2))**d)) + b

# ---------------------------------------------------------------------
