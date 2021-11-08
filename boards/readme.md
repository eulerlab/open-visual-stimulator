## LED driver/blanking boards

LED blanking circuits were inspired by earlier devices designed and built by R. Berndt (HIH Tübingen).

`lcr_add-on` - KiCad and Gerber files for the "logic board". This board combines the signals from the LCr with an external "blanking signal" to independently control up to three 3 LEDs per lightcrafter device. This board has a jumper option to disable the blanking signal altogether, which may be useful when e.g. using LCrs in MEA setups.

`mosfet_circuit` - KiCad and Gerber files for "LED driver board". This board uses the 5V logic signal from Lcr_addon ("logic board") to turn LEDs on and off. Users need to connect this board to an appropriate power suply (i.e. a power supply the is outputing the LED forward voltage).

`mosfet_circuit_plus_voltage_regulator` - KiCad and Gerber files for "LED driver board". This board uses the 5V logic signal from Lcr_addon ("logic board") to turn LEDs on and off. This board has a stepdown voltage regulator built-in. It is capable of 20V and 1.5A max output with the components present in its "1-click-bom.csv" file. (see "Components to populate the boards" for more details).

`ssr_board` - This board controls the LED power lines from the Lightcrafter by opening and closing them using solid state relays. The relays are controlled by a 5V signal (in this case the inverted blanking signal).


### General information about the printed circuit boards:

- For details on the design and function of the boards, see [preprint](https://www.biorxiv.org/content/10.1101/649566v1)).

- The boards were designed using [KiCad 5](http://www.kicad.org/) and can be ordered using the `Gerber.zip` file located in each board's `gerber` subfolder.

- Several "board on demand" companies are available, and the process of ordering is pretty much the same. A more detailed tutorial on how to do so can be found [here](https://www.youtube.com/watch?v=ENmDnoKs2hM) (for simply using the already available compressed files, go to minute 7 of the video).

- Companies providing "board on demand" service include:

   - [JLCPCB](https://jlcpcb.com/)
   - [PCBWAY](https://www.pcbway.com)
   - [OSH PARK](https://oshpark.com/)
   - [AISLER](https://aisler.net/)


### Components to populate the boards:

Components are listed on each board folder on a "comma separated value" file named `1-click-bom.csv`. Listed in the file are the quantity, identification and supplier of each component. They can also be ordered using [KitSpace](kitspace.org):

 - [LCr_addon on kitspace](https://kitspace.org/boards/github.com/eulerlab/open-visual-stimulator/boards/lcr_add-on/)
 - [mosfet circuit on kitspace](https://kitspace.org/boards/github.com/eulerlab/open-visual-stimulator/boards/mosfet_circuit/)
 - [mosfet  plus voltage regulator circuit on kitspace](https://kitspace.org/boards/github.com/eulerlab/open-visual-stimulator/boards/mosfet_circuit_plus_voltage_regulator/)
