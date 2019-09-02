## Calibration scripts (mouse)

`stimulator_calibration.ipynb` - This iPython notebook allows estimating photoceptor excitation caused by a combination of light sources (e.g. LEDs) and dichroic filters used in a visual stimulator. To this end, spectral data from an Ocean Optics spectometer is recorded via USB (i.e. with the USB2000+ spectrometer, Ocean Optics) and converted into photoisomerization rates per cone photoreceptor type and LED. 

It demonstrates the calibration of a dichromatic stimulator with green/UV LEDs for mice, but it can be easily adapted to other light sources, as well as more and different spectral opsin sensitivities. For more details, see documentation in the notebook.

`opsin_spectra.ipynb` - This iPython notebook calculates opsin spectra as described in [Stockman and Sharpe (2000)](https://www.sciencedirect.com/science/article/pii/S0042698900000213).
