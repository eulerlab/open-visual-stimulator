#!/usr/bin/env python
# -*- coding: utf-8 -*-
"""
Helper functions (spectral data)
MIT License, copyright (c) 2018 Andre Maia Chagas, Thomas Euler
"""
# ---------------------------------------------------------------------
__author__ = "code@eulerlab.de"

# ---------------------------------------------------------------------
def load_calibration_curves(fileName, serialNumber):
    import numpy as np
    
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

# ---------------------------------------------------------------------

