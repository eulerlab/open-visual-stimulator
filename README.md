## Open Visual Stimulator

A chromatic stimulator for the vertebrate visual system ...  
(Repository for all documents related to the stimulator manuscript)


## Structure of this repository 

```
├───boards                              LED driver/blanking boards
│   ├───lcr_add-on                      - KiCad files for board that combines LCr and blanking signals
|   |   ├───connector_coaxial.pretty      - BNC connector description (KiCad)
|   |   ├───gerber                        - Gerber files for circuit board
│   └───mosfet_circuit                  - KiCad files for board that switches switch LEDs
|       ├───connector_coaxial.pretty      - BNC connector description (KiCad)
|       └───gerber                        - Gerber files for circuit board
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
├───calibration_zebrafish               Calibration of tetrachromatic zebrafish stimulator
│   ├───data                            - recorded calibration data (custom LEDs)
│   ├───documents                       - spectrometer data sheet, etc.
│   ├───filters                         - dichroic filter spectra
│   ├───light-sources                   - spectra of LEDs
│   ├───opsins                          - mouse opsin sensitivity curves
|   └───spectrometer-calibration-files  - USB2+ calibration data

└───..
```
