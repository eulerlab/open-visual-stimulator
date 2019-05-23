## Open Visual Stimulator

This repository holds the resources for a flexible, spatial visual stimulator with up to 6 chromatic channels. It combines commercial digital light processing (DLP) devices with open hard- and software components that can be easily adapted to the experimentalist’s specific needs. With this we intend to start a community effort of sharing and further developing a common stimulator design.

Please find more details on the stimulator in the following preprint:

Franke K*, Maia Chagas A*, Zhao Z, Zimmermann MJY, Qiu Y, Szatko K, Baden T, Euler T# (2019). An arbitrary-spectrum spatial visual stimulator for vision research. xxx

## Repository structure

```
├───boards                              LED driver/blanking boards
│   ├───lcr_add-on                      - KiCad files for board that combines LCr and blanking signals
|   |   ├───connector_coaxial.pretty      - BNC connector description (KiCad)
|   |   └───gerber                        - Gerber files for circuit board
│   └───mosfet_circuit                  - KiCad files for board that switches switch LEDs
|   |   ├───connector_coaxial.pretty      - BNC connector description (KiCad)
|   |   └───gerber                        - Gerber files for circuit board
|   └───arduino_code_for_testing_circuits - Arduino code to emulate blanking and LCr signals
|
├───printed_parts                       OpenSCAD and STL files for 3D printed parts
|   |                                   (e.g. fish "cinema")
│   └───optical_components              - optomechanical parts
|
├───calibration_mouse                   Calibration of dichroic mouse stimulator
│   ├───data                            - recorded calibration data (custom LEDs and TFT monitor)
│   ├───datasheets                      - spectrometer data sheet, etc.
│   ├───filters                         - dichroic filter spectra
│   ├───light-sources                   - spectra of LEDs
│   ├───opsins                          - mouse opsin sensitivity curves
│   ├───scripts                         - Python scripts used in iPython notebooks
|   └───spectrometer-calibration-files  - USB2+ calibration data
|
└───calibration_zebrafish               Calibration of tetrachromatic zebrafish stimulator
    ├───data                            - recorded calibration data
    ├───datasheets                      - spectrometer data sheet, etc.
    └───led_spectra_after_teflon        - LED spectra measured behind the teflon screen
```
