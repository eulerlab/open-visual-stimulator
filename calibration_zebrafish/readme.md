## Calibration scripts (fish)

`ZebraFish_calibration_notebook.ipynb` - This iPython notebook allows estimating photoceptor excitation caused by a combination of light sources (e.g. LEDs) and dichroic filters used in a visual stimulator. To this end, spectral data is recorded with Thorlabs spectometer (model CCS200/M) and the power of each LED is measured with a thorlabs powermeter (PM100D) and accompanying sensor (S130VC). These data are combined and converted into photoisomerization rates per cone photoreceptor type and LED.

It demonstrates the calibration of a tetrachromatic stimulator with red, blue, green and UV LEDs for Zebrafish larvae, but it can be easily adapted to other light sources, as well as more and different spectral opsin sensitivities. For more details, see documentation in the notebook.

`opsin_spectra_zebrafish.ipynb` - This iPython notebook calculates opsin absorbance spectra as described in [Govardovskii *et al.* (2000)](https://www.cambridge.org/core/journals/visual-neuroscience/article/in-search-of-the-visual-pigment-template/A4738E821720092B7F5A233C4AB4962B).
