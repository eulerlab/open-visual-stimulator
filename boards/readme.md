## LED driver/blanking boards

`lcr_add-on` - KiCad files for board that combines the signals from the LCr and the blanking signals. This board has a
jumper option to avoid using blanking signal altogether, which may be useful when e.g. using LCrs in MEA setups.

`mosfet_circuit` - KiCad files for the board that uses the signal from the Lcr_addon board to turn LEDs on and off.
Users need to connect this board to an appropriate power suply (i.e. a power supply the is outputing the LED forward voltage).

### information about the printed circuit boards:

This project contains two boards. One is an add on to the lightcrafter. It mainly combines signals from the lightcrafter with an external "blanking signal" (for details see manuscript), to independently control 3 LEDs per lightcrafter device. The other board takes an logic 5V signal and uses it to turn the power to LEDs on and off.

Both boards:

- have been created using KiCad 5
- Can be ordered using the the Gerber.zip file present on each board subfolder.
 - Several on "board on demand" companies are available, and the process of ordering is pretty much the same. A more detailed tutorial on how to do so can be found [here](https://www.youtube.com/watch?v=ENmDnoKs2hM). For simply using the already available compressed files, go to minute seven of the video.
 - Companies providing this service include:

   - JLCPCB
   - PCBWAY
   - OSH PARK
   - AISLER

### Components to populate the boards:

Components are listed on each board folder on a "comma separated value" file named "1-click-bom.csv" Listed in the file are the quantity, identification and supplier of each component. They can also be ordered using [KitSpace](kitspace.org):

 - Place holder for when the link to board1 is up 
 - Place holder for when the link to board2 is up
