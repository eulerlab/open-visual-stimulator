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
def getPeak_in_nm(wavelengths, curve):
    from numpy import argmax
    return wavelengths[argmax(curve)]

# ---------------------------------------------------------------------
def saveSpectData(fName, wavLen, bkgSpect, intSpect, intens):
    # Saves the spectral data for a light source via pandas into a .csv 
    # file. The arrays `wavlen`, `bkgspect` and all datasets in `spect` 
    # must have the same length.
    #
    #   fName,     path and name of the target file w/extention
    #   wavLen,    wavelength array 
    #   bkgSpect,  (mean) background spectrum
    #   intSpect,  as many (mean) spectra as `len(intens)`
    #   intens,    list with intensities for `spect`
    # 
    import numpy as np
    import pandas as pd

    # Combine all spectra into one array
    #
    length      = len(wavLen)
    _wLen       = np.copy(wavLen)
    _wLen.shape = (1, length)
    _bkg        = np.copy(bkgSpect)
    _bkg.shape  = (1, length)
    _int        = np.copy(intSpect)
    data        = np.concatenate((_wLen, _bkg, _int), axis=0)
    
    # Generate column labels
    #
    colLabels   = ["wavelength", "raw_bkg"]
    for i in intens:
        colLabels.append("raw_avg{0}".format(i))
        
    # Generate pandas dataframe and write to file
    #
    df = pd.DataFrame(np.transpose(data), columns=colLabels)
    df.to_csv(fName)

# ---------------------------------------------------------------------
def saveAllSpectData(fNameMask, fDataPath, wavLen, LEDs, intens):
    # Saves all measured spectral data in `LEDs`via pandas into 
    # separate .csv files.  
    #
    #   fNameMask, mask of the target file name w/o extention
    #   fDataPath, path to data folder
    #   wavLen,    wavelength array 
    #   LEDs,      LED dictionary 
    #   intens,    list with intensities for `spect`
    # 
    import os
    
    for iLED, LED in enumerate(LEDs):
        fName = "{0}{1}_{2}.csv".format(fDataPath, fNameMask, LED["name"])
        if not os.path.isfile(fName):
            saveSpectData(fName, wavLen, LED["spect_raw_bkg"], 
                          LED["spect_raw_avg"], intens)
            print("`{0}` saved.".format(fName))
        else:
            print("ERROR: File `{0}` already exists".format(fName))

# ---------------------------------------------------------------------
def loadSpectData(fName):
    # Loads spectral data for a light source, returns `wavLen`, 
    # `bkgSpect`, `intSpect`, and `intens`. See `saveSpectData()` for 
    # details.
    #
    import numpy as np
    import pandas as pd
    import os

    wavLen   = []
    bkgSpect = []
    intSpect = []
    intens   = []
    
    if not os.path.isfile(fName):
        print("ERROR: File `{0}` not found".format(fName))

    else:
        df       = pd.read_csv(fName)
        wavLen   = np.array(df["wavelength"])
        bkgSpect = np.array(df["raw_bkg"])
        for iCol, col in enumerate(df.columns):
            if iCol > 2:
                intSpect.append(np.array(df[col]))
                intens.append(int(df.columns[iCol].split("avg")[1]))
        print("`{0}` loaded.".format(fName))

    return wavLen, bkgSpect, intSpect, intens

# ---------------------------------------------------------------------
