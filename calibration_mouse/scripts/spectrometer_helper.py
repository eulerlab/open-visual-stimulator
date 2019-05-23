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
    
__spectrometer = None
__trigger_mode = 0

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
def connect(devType, serialNum, int_time_s, trigger_mode=0):
    global __spectrometer, __trigger_mode
    
    if devType == devType.OO_USB2000:
        import seabreeze.spectrometers as sb
        try:
            # Connect to device and set it up
            # trigger_mode : 0=no wait, 1=wait for trigger on pin 7
            #
            __spectrometer = sb.Spectrometer.from_serial_number(serialNum)
            __spectrometer.integration_time_micros(int_time_s *1E6)
            __trigger_mode = trigger_mode
            __spectrometer.trigger_mode(trigger_mode)  
            print("SUCCESS")
            print("{0:.6f} s integration time, trigger is{1}used"
                  .format(int_time_s, " " if trigger_mode else " NOT "))
    
        except sb.SeaBreezeError as Err:
            print("ERROR:", Err)
        except NameError:
            print("Could not connect to spectrometer")

    else:
        print("ERROR: Device not recognized")

# ---------------------------------------------------------------------
def grabSpectrum(devType, trigger_mode_override=-1):
    global __spectrometer, __trigger_mode
    
    if __spectrometer == None:
        print("ERROR: No spectrometer connected")
        return ([], [])
    
    if devType == devType.OO_USB2000:
        try:
            override = ((trigger_mode_override in [0,1]) and 
                        (trigger_mode_override != __trigger_mode))
            if override:
                __spectrometer.trigger_mode(trigger_mode_override)
            wavelengths, intensities = __spectrometer.spectrum()
            if override:
                __spectrometer.trigger_mode(__trigger_mode)
            return (wavelengths, intensities)
    
        except sb.SeaBreezeError as Err:
            print("ERROR:", Err)

    else:
        print("ERROR: Device not recognized")
        

# ---------------------------------------------------------------------
def disconnect(devType):
    global __spectrometer
    
    if __spectrometer == None:
        print("ERROR: No spectrometer connected")
        return
    
    if devType == devType.OO_USB2000:
        import seabreeze.spectrometers as sb
        __spectrometer.close()
        __spectrometer = None

    else:
        print("ERROR: Device not recognized")

# ---------------------------------------------------------------------        

            

