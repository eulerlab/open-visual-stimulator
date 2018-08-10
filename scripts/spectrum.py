#!/usr/bin/env python
# -*- coding: utf-8 -*-
"""
Helper functions (spectral data)
MIT License, copyright (c) 2018 Thomas Euler
"""
# ---------------------------------------------------------------------
__author__ = "code@eulerlab.de"

# ---------------------------------------------------------------------
def wavelength_to_rgb(wavelength, gamma=0.8, darker=1.0):
    ''' This converts a given wavelength of light to an approximate 
        RGB color value. The wavelength must be given in nanometers 
        in the range from 380 nm through 750 nm. 
        Based on code by Dan Bruton
        http://www.physics.sfasu.edu/astro/color/spectra.html
    '''
    wavelength = float(wavelength)
    if wavelength >= 350 and wavelength <= 440:
        attenuation = 0.3 + 0.7 * (wavelength - 350) / (440 - 350)
        R = ((-(wavelength - 440) / (440 - 350)) * attenuation) ** gamma
        G = 0.0
        B = (1.0 * attenuation) ** gamma
    elif wavelength >= 440 and wavelength <= 490:
        R = 0.0
        G = ((wavelength - 440) / (490 - 440)) ** gamma
        B = 1.0
    elif wavelength >= 490 and wavelength <= 510:
        R = 0.0
        G = 1.0
        B = (-(wavelength - 510) / (510 - 490)) ** gamma
    elif wavelength >= 510 and wavelength <= 580:
        R = ((wavelength - 510) / (580 - 510)) ** gamma
        G = 1.0
        B = 0.0
    elif wavelength >= 580 and wavelength <= 645:
        R = 1.0
        G = (-(wavelength - 645) / (645 - 580)) ** gamma
        B = 0.0
    elif wavelength >= 645 and wavelength <= 750:
        attenuation = 0.3 + 0.7 * (750 - wavelength) / (750 - 645)
        R = (1.0 * attenuation) ** gamma
        G = 0.0
        B = 0.0
    else:
        R = 0.0
        G = 0.0
        B = 0.0
    return (R *darker, G *darker, B *darker)
    
# ---------------------------------------------------------------------
