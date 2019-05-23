## Open Visual Stimulator

A chromatic stimulator for the vertebrate visual system ...  
(Repository for all documents related to the stimulator manuscript)


## Structure of this repository 

```
├───boards                            LED driver/blanking boards
│   ├───lcr_add-on                    - KiCad files for board that combines LCr signals and blanking signal
|   |   ├───connector_coaxial.pretty    - BNC connector description (KiCad)
|   |   ├───gerber                      - Gerber files for circuit board
│   ├───lm2596_cc_vc                  - KiCad files for alternative board (not yet fully tested)
|   |   ├───connector_coaxial.pretty    - BNC connector description (KiCad)
|   |   ├───gerber                      - Gerber files for circuit board
│   └───mosfet_circuit                - KiCad files for board that uses signal from LCr add-on board to switch LEDs
|       ├───connector_coaxial.pretty    - BNC connector description (KiCad)
|       └───gerber                      - Gerber files for circuit board
|
├───printed_parts                     OpenSCAD and STL files for 3D printed parts
|   |                                 (e.g. fish "cinema")
│   └───optical_components            - optomechanical parts



└───..
```
