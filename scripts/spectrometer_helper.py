#!/usr/bin/env python
# -*- coding: utf-8 -*-
"""
Helper functions (spectral data)
MIT License, copyright (c) 2018 Andre Maia Chagas, Thomas Euler
"""
# ---------------------------------------------------------------------
__author__ = "code@eulerlab.de"

# ---------------------------------------------------------------------
from enum import Enum


# ---------------------------------------------------------------------
class DevType(Enum):
    OO_USB2000 = 1
    # ...
    
spectrometer = None

# ---------------------------------------------------------------------
def load_calibration_curves(devType, fileName, serialNumber):
    import numpy as np
    
    if devType == DevType.OO_USB2000:
        # Open file and read all lines
        #
        with open(fileName, "r") as dummie:
            parsed = dummie.read().splitlines()

        # Extract the wavelengths and their values
        #
        parsed = parsed[parsed.index("[uJoule/count]")+1:]
        waves  = list()
        values = list()
        for item in parsed:
            waves.append(item[0:item.index("\t")])
            values.append(item[item.index("\t")+1:])

        return (np.array(values ,dtype=float), np.array(waves, dtype=float))
    
    else:
        print("ERROR: Device not recognized")
        return (np.array([]), np.array([]))

# ---------------------------------------------------------------------
def connect(devType, serialNum, int_time_s):
    global spectrometer
    
    if devType == devType.OO_USB2000:
        import seabreeze.spectrometers as sb
        try:
            # Connect to device and set it up
            # (configure device not to wait for triggers)
            #
            spectrometer = sb.Spectrometer.from_serial_number(serialNum)
            spectrometer.integration_time_micros(int_time_s *1E6)
            spectrometer.trigger_mode(0)  
            print("SUCCESS")
    
        except sb.SeaBreezeError as Err:
            print("ERROR:", Err)
        except NameError:
            print("Could not connect to spectrometer")

    else:
        print("ERROR: Device not recognized")

# ---------------------------------------------------------------------
def grabSpectrum(devType):
    global spectrometer
    
    if spectrometer == None:
        print("ERROR: No spectrometer connected")
        return ([], [])
    
    if devType == devType.OO_USB2000:
        try:
            wavelengths, intensities = spectrometer.spectrum()
            return (wavelengths, intensities)
    
        except sb.SeaBreezeError as Err:
            print("ERROR:", Err)

    else:
        print("ERROR: Device not recognized")
        

# ---------------------------------------------------------------------
def disconnect(devType):
    global spectrometer
    
    if spectrometer == None:
        print("ERROR: No spectrometer connected")
        return
    
    if devType == devType.OO_USB2000:
        import seabreeze.spectrometers as sb
        spectrometer.close()
        spectrometer = None

    else:
        print("ERROR: Device not recognized")

# ---------------------------------------------------------------------        

            

