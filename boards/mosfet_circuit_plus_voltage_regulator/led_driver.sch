EESchema Schematic File Version 4
LIBS:led_driver-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Device:R R7
U 1 1 5C3C7D9C
P 9450 3550
F 0 "R7" V 9243 3550 50  0000 C CNN
F 1 "0.5 20W" V 9334 3550 50  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-220-2_Vertical" V 9380 3550 50  0001 C CNN
F 3 "~" H 9450 3550 50  0001 C CNN
	1    9450 3550
	0    1    1    0   
$EndComp
$Comp
L Device:R_POT RV2
U 1 1 5C3C7F63
P 10000 3550
F 0 "RV2" V 9793 3550 50  0000 C CNN
F 1 "pot_min5W" V 9884 3550 50  0000 C CNN
F 2 "Potentiometer_THT:Potentiometer_ACP_CA14-H5_Horizontal" H 10000 3550 50  0001 C CNN
F 3 "~" H 10000 3550 50  0001 C CNN
	1    10000 3550
	0    1    1    0   
$EndComp
$Comp
L Connector:Screw_Terminal_01x02 J2
U 1 1 5C3C8189
P 10650 3550
F 0 "J2" H 10730 3542 50  0000 L CNN
F 1 "LED" H 10730 3451 50  0000 L CNN
F 2 "TerminalBlock:TerminalBlock_Altech_AK300-2_P5.00mm" H 10650 3550 50  0001 C CNN
F 3 "~" H 10650 3550 50  0001 C CNN
	1    10650 3550
	1    0    0    -1  
$EndComp
Wire Wire Line
	9600 3550 9850 3550
Wire Wire Line
	10000 3700 10300 3700
Wire Wire Line
	10300 3700 10300 3550
Wire Wire Line
	10300 3550 10450 3550
$Comp
L Transistor_FET:IRF7404 Q2
U 1 1 5C3CF4F2
P 8100 3650
F 0 "Q2" V 8443 3650 50  0000 C CNN
F 1 "P-Chan_mosfet" V 8352 3650 50  0000 C CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 8300 3575 50  0001 L CIN
F 3 "http://www.infineon.com/dgdl/irf7404.pdf?fileId=5546d462533600a4015355fa2b5b1b9e" V 8100 3650 50  0001 L CNN
	1    8100 3650
	0    1    -1   0   
$EndComp
$Comp
L Transistor_FET:CSD17577Q5A Q1
U 1 1 5C3CF5A5
P 8000 4250
F 0 "Q1" H 8206 4296 50  0000 L CNN
F 1 "N_chan_mosfet" H 8206 4205 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:TDSON-8-1" H 8200 4175 50  0001 L CIN
F 3 "http://www.ti.com/lit/gpn/csd17577q5a" V 8000 4250 50  0001 L CNN
	1    8000 4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	7900 3550 7500 3550
Wire Wire Line
	8100 4050 8100 3950
$Comp
L Device:R R4
U 1 1 5C3DC663
P 7650 3950
F 0 "R4" V 7443 3950 50  0000 C CNN
F 1 "220" V 7534 3950 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 7580 3950 50  0001 C CNN
F 3 "~" H 7650 3950 50  0001 C CNN
	1    7650 3950
	0    1    1    0   
$EndComp
Wire Wire Line
	7800 3950 8100 3950
Connection ~ 8100 3950
Wire Wire Line
	8100 3950 8100 3850
Wire Wire Line
	7500 3950 7500 3650
Wire Wire Line
	8300 3550 8550 3550
$Comp
L power:GND #PWR03
U 1 1 5C3E3FAD
P 8100 4550
F 0 "#PWR03" H 8100 4300 50  0001 C CNN
F 1 "GND" H 8105 4377 50  0000 C CNN
F 2 "" H 8100 4550 50  0001 C CNN
F 3 "" H 8100 4550 50  0001 C CNN
	1    8100 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	8100 4450 8100 4500
$Comp
L power:GND #PWR04
U 1 1 5C3E5534
P 8550 3050
F 0 "#PWR04" H 8550 2800 50  0001 C CNN
F 1 "GND" H 8555 2877 50  0000 C CNN
F 2 "" H 8550 3050 50  0001 C CNN
F 3 "" H 8550 3050 50  0001 C CNN
	1    8550 3050
	-1   0    0    1   
$EndComp
$Comp
L Device:R R6
U 1 1 5C3E558B
P 8550 3300
F 0 "R6" V 8343 3300 50  0000 C CNN
F 1 "1k" V 8434 3300 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 8480 3300 50  0001 C CNN
F 3 "~" H 8550 3300 50  0001 C CNN
	1    8550 3300
	-1   0    0    1   
$EndComp
Wire Wire Line
	8550 3450 8550 3550
Connection ~ 8550 3550
Wire Wire Line
	8550 3550 9300 3550
$Comp
L Device:R R5
U 1 1 5C3E8014
P 7800 4500
F 0 "R5" V 7593 4500 50  0000 C CNN
F 1 "220" V 7684 4500 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 7730 4500 50  0001 C CNN
F 3 "~" H 7800 4500 50  0001 C CNN
	1    7800 4500
	-1   0    0    1   
$EndComp
Wire Wire Line
	7800 4650 8000 4650
Wire Wire Line
	8000 4650 8000 4500
Wire Wire Line
	8000 4500 8100 4500
Connection ~ 8100 4500
Wire Wire Line
	8100 4500 8100 4550
Wire Wire Line
	7800 4350 7800 4250
Wire Wire Line
	7550 4250 7800 4250
Connection ~ 7800 4250
NoConn ~ 10150 3550
$Comp
L power:GND #PWR05
U 1 1 5C418E15
P 10400 3800
F 0 "#PWR05" H 10400 3550 50  0001 C CNN
F 1 "GND" H 10405 3627 50  0000 C CNN
F 2 "" H 10400 3800 50  0001 C CNN
F 3 "" H 10400 3800 50  0001 C CNN
	1    10400 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	10400 3800 10400 3650
Wire Wire Line
	10400 3650 10450 3650
$Comp
L Connector:Conn_Coaxial J3
U 1 1 5C45ED44
P 7000 4550
F 0 "J3" H 6930 4788 50  0000 C CNN
F 1 "control_in" H 6930 4697 50  0000 C CNN
F 2 "Connector_Coaxial_extra:BNC_Amphenol_B6252HB-NPP3G-50_Horizontal" H 7000 4550 50  0001 C CNN
F 3 " ~" H 7000 4550 50  0001 C CNN
	1    7000 4550
	-1   0    0    -1  
$EndComp
Wire Wire Line
	7200 4550 7550 4550
Wire Wire Line
	7550 4550 7550 4250
Wire Wire Line
	7000 4750 8000 4750
Wire Wire Line
	8000 4750 8000 4650
Connection ~ 8000 4650
$Comp
L Connector:Screw_Terminal_01x02 J1
U 1 1 5C51C36B
P 1000 3550
F 0 "J1" H 1080 3542 50  0000 L CNN
F 1 "Vin" H 1080 3451 50  0000 L CNN
F 2 "TerminalBlock:TerminalBlock_Altech_AK300-2_P5.00mm" H 1000 3550 50  0001 C CNN
F 3 "~" H 1000 3550 50  0001 C CNN
	1    1000 3550
	-1   0    0    1   
$EndComp
Connection ~ 7500 3650
Wire Wire Line
	7500 3650 7500 3550
$Comp
L Device:CP C4
U 1 1 5D1FC6EC
P 1500 3750
F 0 "C4" H 1618 3796 50  0000 L CNN
F 1 "220µF" H 1618 3705 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D8.0mm_P5.00mm" H 1538 3600 50  0001 C CNN
F 3 "~" H 1500 3750 50  0001 C CNN
	1    1500 3750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR01
U 1 1 5D1FD0D8
P 1500 3000
F 0 "#PWR01" H 1500 2750 50  0001 C CNN
F 1 "GND" H 1505 2827 50  0000 C CNN
F 2 "" H 1500 3000 50  0001 C CNN
F 3 "" H 1500 3000 50  0001 C CNN
	1    1500 3000
	-1   0    0    1   
$EndComp
Wire Wire Line
	1200 3450 1500 3450
Wire Wire Line
	1200 3550 1250 3550
Wire Wire Line
	1500 3550 1500 3600
$Comp
L power:GND #PWR02
U 1 1 5D1FE1C1
P 1500 4150
F 0 "#PWR02" H 1500 3900 50  0001 C CNN
F 1 "GND" H 1505 3977 50  0000 C CNN
F 2 "" H 1500 4150 50  0001 C CNN
F 3 "" H 1500 4150 50  0001 C CNN
	1    1500 4150
	1    0    0    -1  
$EndComp
Wire Wire Line
	1500 3900 1500 4100
Wire Wire Line
	1500 3550 2000 3550
Wire Wire Line
	2000 3550 2000 3600
Connection ~ 1500 3550
$Comp
L Device:C_Small C5
U 1 1 5D1FF024
P 2000 3700
F 0 "C5" H 2092 3746 50  0000 L CNN
F 1 "100nF" H 2092 3655 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D8.0mm_W5.0mm_P7.50mm" H 2000 3700 50  0001 C CNN
F 3 "~" H 2000 3700 50  0001 C CNN
	1    2000 3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	2000 3800 2000 4100
Wire Wire Line
	2000 4100 1500 4100
Connection ~ 1500 4100
Wire Wire Line
	1500 4100 1500 4150
$Comp
L Regulator_Switching:MC34063AP U1
U 1 1 5D1FF94C
P 3000 3450
F 0 "U1" H 3000 3917 50  0000 C CNN
F 1 "MC34063AP" H 3000 3826 50  0000 C CNN
F 2 "Package_DIP:DIP-8_W7.62mm" H 3050 3000 50  0001 L CNN
F 3 "http://www.onsemi.com/pub_link/Collateral/MC34063A-D.PDF" H 3500 3350 50  0001 C CNN
	1    3000 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	2000 3550 2000 3250
Wire Wire Line
	2000 3250 2600 3250
Connection ~ 2000 3550
$Comp
L Device:R R2
U 1 1 5D2002D5
P 2000 3100
F 0 "R2" V 1793 3100 50  0000 C CNN
F 1 "0.22ohm" V 1884 3100 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0414_L11.9mm_D4.5mm_P15.24mm_Horizontal" V 1930 3100 50  0001 C CNN
F 3 "~" H 2000 3100 50  0001 C CNN
	1    2000 3100
	-1   0    0    1   
$EndComp
Connection ~ 2000 3250
Wire Wire Line
	3550 2950 3550 3250
Wire Wire Line
	3550 3350 3400 3350
Wire Wire Line
	3550 3350 3550 3450
Wire Wire Line
	3550 3450 3400 3450
Connection ~ 3550 3350
Wire Wire Line
	2000 2950 3550 2950
Wire Wire Line
	3400 3250 3550 3250
Connection ~ 3550 3250
Wire Wire Line
	3550 3250 3550 3350
Wire Wire Line
	3000 3950 3000 4100
Wire Wire Line
	3000 4100 2500 4100
Connection ~ 2000 4100
Wire Wire Line
	2600 3650 2500 3650
Wire Wire Line
	2500 3650 2500 3750
$Comp
L Device:C_Small C1
U 1 1 5D204DAA
P 2500 3850
F 0 "C1" H 2592 3896 50  0000 L CNN
F 1 "470pF" H 2592 3805 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D5.0mm_P2.50mm" H 2500 3850 50  0001 C CNN
F 3 "~" H 2500 3850 50  0001 C CNN
	1    2500 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	2500 3950 2500 4100
Connection ~ 2500 4100
Wire Wire Line
	2500 4100 2000 4100
Wire Wire Line
	1500 3000 1500 3450
Wire Wire Line
	3400 3750 3550 3750
$Comp
L Device:R_POT RV1
U 1 1 5D208416
P 3550 4250
F 0 "RV1" V 3436 4250 50  0000 C CNN
F 1 "5kohm" V 3345 4250 50  0000 C CNN
F 2 "Potentiometer_THT:Potentiometer_Vishay_T73YP_Vertical" H 3550 4250 50  0001 C CNN
F 3 "~" H 3550 4250 50  0001 C CNN
	1    3550 4250
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3550 3750 3550 4100
$Comp
L Device:R_Small R1
U 1 1 5D2096EF
P 3100 4250
F 0 "R1" V 3300 4250 50  0000 C CNN
F 1 "1.5kohm" V 3200 4200 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" H 3100 4250 50  0001 C CNN
F 3 "~" H 3100 4250 50  0001 C CNN
	1    3100 4250
	0    1    1    0   
$EndComp
Wire Wire Line
	3200 4250 3400 4250
Wire Wire Line
	3000 4250 3000 4100
Connection ~ 3000 4100
$Comp
L Diode:1N5819 D1
U 1 1 5D20CED9
P 3900 3650
F 0 "D1" H 3900 3866 50  0000 C CNN
F 1 "1N5819" H 3900 3775 50  0000 C CNN
F 2 "Diode_THT:D_DO-41_SOD81_P10.16mm_Horizontal" H 3900 3475 50  0001 C CNN
F 3 "http://www.vishay.com/docs/88525/1n5817.pdf" H 3900 3650 50  0001 C CNN
	1    3900 3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	3400 3650 3750 3650
Connection ~ 3750 3650
$Comp
L Device:L L1
U 1 1 5D20FA24
P 3900 3850
F 0 "L1" V 3750 3850 50  0000 C CNN
F 1 "120µH" V 3850 3850 50  0000 C CNN
F 2 "Inductor_THT:L_Radial_D7.5mm_P5.00mm_Fastron_07P" H 3900 3850 50  0001 C CNN
F 3 "~" H 3900 3850 50  0001 C CNN
	1    3900 3850
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3750 3650 3750 3850
$Comp
L Device:R_Small R3
U 1 1 5D213D56
P 3950 4250
F 0 "R3" V 4150 4250 50  0000 C CNN
F 1 "8.2kohm" V 4050 4200 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" H 3950 4250 50  0001 C CNN
F 3 "~" H 3950 4250 50  0001 C CNN
	1    3950 4250
	0    1    1    0   
$EndComp
Wire Wire Line
	3700 4250 3850 4250
Wire Wire Line
	4050 4250 4200 4250
Wire Wire Line
	4200 4250 4200 3850
Wire Wire Line
	4200 3850 4050 3850
$Comp
L Device:CP C2
U 1 1 5D216679
P 4450 3700
F 0 "C2" H 4332 3654 50  0000 R CNN
F 1 "220µF" H 4332 3745 50  0000 R CNN
F 2 "Capacitor_THT:CP_Radial_D8.0mm_P5.00mm" H 4488 3550 50  0001 C CNN
F 3 "~" H 4450 3700 50  0001 C CNN
	1    4450 3700
	-1   0    0    1   
$EndComp
Wire Wire Line
	4200 3850 4450 3850
Connection ~ 4200 3850
Wire Wire Line
	4050 3650 4050 3550
Wire Wire Line
	4050 3550 4450 3550
$Comp
L power:GND #PWR06
U 1 1 5D21C077
P 4450 3450
F 0 "#PWR06" H 4450 3200 50  0001 C CNN
F 1 "GND" H 4455 3277 50  0000 C CNN
F 2 "" H 4450 3450 50  0001 C CNN
F 3 "" H 4450 3450 50  0001 C CNN
	1    4450 3450
	-1   0    0    1   
$EndComp
Wire Wire Line
	4450 3450 4450 3550
Connection ~ 4450 3550
$Comp
L Device:C_Small C3
U 1 1 5D21D811
P 4850 3700
F 0 "C3" H 4942 3746 50  0000 L CNN
F 1 "100nF" H 4942 3655 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D8.0mm_W5.0mm_P7.50mm" H 4850 3700 50  0001 C CNN
F 3 "~" H 4850 3700 50  0001 C CNN
	1    4850 3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	4450 3850 4850 3850
Wire Wire Line
	4850 3850 4850 3800
Connection ~ 4450 3850
Wire Wire Line
	4850 3600 4850 3550
Wire Wire Line
	4850 3550 4450 3550
Wire Wire Line
	4850 3850 6850 3850
Wire Wire Line
	6850 3850 6850 3650
Wire Wire Line
	6850 3650 7500 3650
Connection ~ 4850 3850
Wire Wire Line
	8550 3050 8550 3150
$Comp
L power:VDD #PWR0101
U 1 1 5D224C0D
P 1250 3550
F 0 "#PWR0101" H 1250 3400 50  0001 C CNN
F 1 "VDD" H 1268 3723 50  0000 C CNN
F 2 "" H 1250 3550 50  0001 C CNN
F 3 "" H 1250 3550 50  0001 C CNN
	1    1250 3550
	-1   0    0    1   
$EndComp
Connection ~ 1250 3550
Wire Wire Line
	1250 3550 1500 3550
$Comp
L Mechanical:MountingHole H1
U 1 1 5D25C7C0
P 4400 2400
F 0 "H1" H 4500 2446 50  0000 L CNN
F 1 "MountingHole" H 4500 2355 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3" H 4400 2400 50  0001 C CNN
F 3 "~" H 4400 2400 50  0001 C CNN
	1    4400 2400
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H3
U 1 1 5D25C83C
P 5500 2350
F 0 "H3" H 5600 2396 50  0000 L CNN
F 1 "MountingHole" H 5600 2305 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3" H 5500 2350 50  0001 C CNN
F 3 "~" H 5500 2350 50  0001 C CNN
	1    5500 2350
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H2
U 1 1 5D25C8A2
P 5350 3050
F 0 "H2" H 5450 3096 50  0000 L CNN
F 1 "MountingHole" H 5450 3005 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3" H 5350 3050 50  0001 C CNN
F 3 "~" H 5350 3050 50  0001 C CNN
	1    5350 3050
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H4
U 1 1 5D2610E5
P 6150 2800
F 0 "H4" H 6250 2846 50  0000 L CNN
F 1 "MountingHole" H 6250 2755 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3" H 6150 2800 50  0001 C CNN
F 3 "~" H 6150 2800 50  0001 C CNN
	1    6150 2800
	1    0    0    -1  
$EndComp
$EndSCHEMATC
