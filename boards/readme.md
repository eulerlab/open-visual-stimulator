## LED driver/blanking boards

`lcr_add-on` - KiCad files for board that combines the signals from the LCr and the blanking signals. This board has a 
jumper option to avoid using blanking signal altogether, which may be useful when e.g. using LCrs in MEA setups.

`mosfet_circuit` - KiCad files for the board that uses the signal from the Lcr_addon board to turn LEDs on and off. 
Users need to connect this board to an appropriate power suply (i.e. a power supply the is outputing the LED forward voltage).
