
Stimulator Calibration
v2.0 | by André Maia Chagas, Katrin Franke, and Thomas Euler

This script allows estimating photoceptor excitation caused by a combination of light sources (e.g. LEDs) and dichroic filters used in a visual stimulator. To this end, spectral data from an Ocean Optics spectometer is recorded via USB (i.e. with the USB2000+ spectrometer, Ocean Optics) and converted into photoisomerization rates per cone photoreceptor type and LED. For details, see xxxx.

The spectrometer measurements rely on the open source library python-seabreeze written by Andreas Pohlmann. This library is a wrapper for the C++ API provided by Ocean Optics. For installation instructions and further support, see there.

This script calculates opsin spectra as described in Stockman and Sharpe (2000).
