EESchema Schematic File Version 4
LIBS:blanking_new-cache
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
L Connector:Conn_01x06_Female J5
U 1 1 5C101E63
P 2900 1950
F 0 "J5" H 2794 1425 50  0000 C CNN
F 1 "pos_neg_tolcr_red" H 2794 1516 50  0000 C CNN
F 2 "Connector_Molex:Molex_SPOX_5267-06A_1x06_P2.50mm_Vertical" H 2900 1950 50  0001 C CNN
F 3 "~" H 2900 1950 50  0001 C CNN
	1    2900 1950
	-1   0    0    1   
$EndComp
Wire Wire Line
	3100 1650 3350 1650
Wire Wire Line
	3350 1650 3350 1750
Wire Wire Line
	3350 1750 3100 1750
Wire Wire Line
	3350 1750 3350 1850
Wire Wire Line
	3350 1850 3100 1850
Connection ~ 3350 1750
Wire Wire Line
	3100 1950 3350 1950
Wire Wire Line
	3350 1950 3350 2050
Wire Wire Line
	3350 2150 3100 2150
Wire Wire Line
	3100 2050 3350 2050
Connection ~ 3350 2050
Wire Wire Line
	3350 2050 3350 2150
$Comp
L Transistor_FET:IRF7404 Q1
U 1 1 5C102A16
P 4200 1900
F 0 "Q1" H 4406 1946 50  0000 L CNN
F 1 "IRF7404" H 4406 1855 50  0000 L CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 4400 1825 50  0001 L CIN
F 3 "http://www.infineon.com/dgdl/irf7404.pdf?fileId=5546d462533600a4015355fa2b5b1b9e" V 4200 1900 50  0001 L CNN
	1    4200 1900
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_Coaxial J9
U 1 1 5C102E87
P 4050 1300
F 0 "J9" H 4149 1276 50  0000 L CNN
F 1 "Conn_Coaxial" H 4149 1185 50  0000 L CNN
F 2 "Connector_Coaxial:SMB_Jack_Vertical" H 4050 1300 50  0001 C CNN
F 3 " ~" H 4050 1300 50  0001 C CNN
	1    4050 1300
	1    0    0    -1  
$EndComp
Wire Wire Line
	3850 1900 4000 1900
Wire Wire Line
	3600 2050 3350 2050
Wire Wire Line
	3350 1750 3400 1750
Wire Wire Line
	4050 1500 3650 1500
Wire Wire Line
	3350 1000 3350 1050
$Comp
L Connector:Conn_01x06_Female J7
U 1 1 5C106071
P 2950 3450
F 0 "J7" H 2844 2925 50  0000 C CNN
F 1 "pos_neg_tolcr_green" H 2844 3016 50  0000 C CNN
F 2 "Connector_Molex:Molex_SPOX_5267-06A_1x06_P2.50mm_Vertical" H 2950 3450 50  0001 C CNN
F 3 "~" H 2950 3450 50  0001 C CNN
	1    2950 3450
	-1   0    0    1   
$EndComp
Wire Wire Line
	3150 3150 3400 3150
Wire Wire Line
	3400 3150 3400 3250
Wire Wire Line
	3400 3250 3150 3250
Wire Wire Line
	3400 3250 3400 3350
Wire Wire Line
	3400 3350 3150 3350
Connection ~ 3400 3250
Wire Wire Line
	3150 3450 3400 3450
Wire Wire Line
	3400 3450 3400 3550
Wire Wire Line
	3400 3650 3150 3650
Wire Wire Line
	3150 3550 3400 3550
Connection ~ 3400 3550
Wire Wire Line
	3400 3550 3400 3650
$Comp
L Transistor_FET:IRF7404 Q3
U 1 1 5C106084
P 4250 3400
F 0 "Q3" H 4456 3446 50  0000 L CNN
F 1 "IRF7404" H 4456 3355 50  0000 L CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 4450 3325 50  0001 L CIN
F 3 "http://www.infineon.com/dgdl/irf7404.pdf?fileId=5546d462533600a4015355fa2b5b1b9e" V 4250 3400 50  0001 L CNN
	1    4250 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	3900 3400 4050 3400
Wire Wire Line
	3650 3550 3400 3550
Wire Wire Line
	3400 3250 3450 3250
Wire Wire Line
	4350 3200 4350 2500
Wire Wire Line
	4350 2500 3400 2500
Wire Wire Line
	3400 2500 3400 2550
Wire Wire Line
	3400 2550 2800 2550
Wire Wire Line
	3450 2750 2600 2750
$Comp
L Connector:Conn_01x06_Female J8
U 1 1 5C106B9F
P 2950 4900
F 0 "J8" H 2844 4375 50  0000 C CNN
F 1 "pos_neg_tolcr_Blue" H 2844 4466 50  0000 C CNN
F 2 "Connector_Molex:Molex_SPOX_5267-06A_1x06_P2.50mm_Vertical" H 2950 4900 50  0001 C CNN
F 3 "~" H 2950 4900 50  0001 C CNN
	1    2950 4900
	-1   0    0    1   
$EndComp
Wire Wire Line
	3150 4600 3400 4600
Wire Wire Line
	3400 4600 3400 4700
Wire Wire Line
	3400 4700 3150 4700
Wire Wire Line
	3400 4700 3400 4800
Wire Wire Line
	3400 4800 3150 4800
Connection ~ 3400 4700
Wire Wire Line
	3150 4900 3400 4900
Wire Wire Line
	3400 4900 3400 5000
Wire Wire Line
	3400 5100 3150 5100
Wire Wire Line
	3150 5000 3400 5000
Connection ~ 3400 5000
Wire Wire Line
	3400 5000 3400 5100
$Comp
L Transistor_FET:IRF7404 Q4
U 1 1 5C106BB2
P 4250 4850
F 0 "Q4" H 4456 4896 50  0000 L CNN
F 1 "IRF7404" H 4456 4805 50  0000 L CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 4450 4775 50  0001 L CIN
F 3 "http://www.infineon.com/dgdl/irf7404.pdf?fileId=5546d462533600a4015355fa2b5b1b9e" V 4250 4850 50  0001 L CNN
	1    4250 4850
	1    0    0    -1  
$EndComp
Wire Wire Line
	3900 4850 4050 4850
Wire Wire Line
	3650 5000 3400 5000
Wire Wire Line
	3400 4700 3450 4700
Wire Wire Line
	4350 4650 4350 3950
Wire Wire Line
	4350 3950 3400 3950
Wire Wire Line
	3400 3950 3400 4000
$Comp
L Connector:Conn_01x06_Female J6
U 1 1 5C1082D8
P 2900 6350
F 0 "J6" H 2794 5825 50  0000 C CNN
F 1 "pos_neg_tolcr_UV" H 2794 5916 50  0000 C CNN
F 2 "Connector_Molex:Molex_SPOX_5267-06A_1x06_P2.50mm_Vertical" H 2900 6350 50  0001 C CNN
F 3 "~" H 2900 6350 50  0001 C CNN
	1    2900 6350
	-1   0    0    1   
$EndComp
Wire Wire Line
	3100 6050 3350 6050
Wire Wire Line
	3350 6050 3350 6150
Wire Wire Line
	3350 6150 3100 6150
Wire Wire Line
	3350 6150 3350 6250
Wire Wire Line
	3350 6250 3100 6250
Connection ~ 3350 6150
Wire Wire Line
	3100 6350 3350 6350
Wire Wire Line
	3350 6350 3350 6450
Wire Wire Line
	3350 6550 3100 6550
Wire Wire Line
	3100 6450 3350 6450
Connection ~ 3350 6450
Wire Wire Line
	3350 6450 3350 6550
$Comp
L Transistor_FET:IRF7404 Q2
U 1 1 5C1082EB
P 4200 6300
F 0 "Q2" H 4406 6346 50  0000 L CNN
F 1 "IRF7404" H 4406 6255 50  0000 L CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 4400 6225 50  0001 L CIN
F 3 "http://www.infineon.com/dgdl/irf7404.pdf?fileId=5546d462533600a4015355fa2b5b1b9e" V 4200 6300 50  0001 L CNN
	1    4200 6300
	1    0    0    -1  
$EndComp
Wire Wire Line
	3850 5700 3850 6300
Wire Wire Line
	3850 6300 4000 6300
Wire Wire Line
	3600 6450 3350 6450
Wire Wire Line
	3350 6150 3400 6150
Wire Wire Line
	4300 6100 4300 5400
Wire Wire Line
	4300 5400 3350 5400
Wire Wire Line
	3350 5400 3350 5450
Wire Wire Line
	3850 1900 3850 2750
Wire Wire Line
	3850 2750 3900 2750
Wire Wire Line
	3900 2750 3900 3400
$Comp
L power:GND #PWR01
U 1 1 5C1129E9
P 3650 1600
F 0 "#PWR01" H 3650 1350 50  0001 C CNN
F 1 "GND" H 3655 1427 50  0000 C CNN
F 2 "" H 3650 1600 50  0001 C CNN
F 3 "" H 3650 1600 50  0001 C CNN
	1    3650 1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	3650 1600 3650 1500
Connection ~ 3900 3400
Wire Wire Line
	3900 3400 3900 4850
Wire Wire Line
	3900 4850 3900 5700
Wire Wire Line
	3900 5700 3850 5700
Connection ~ 3900 4850
$Comp
L Connector:Conn_01x02_Female J10
U 1 1 5C125FED
P 5150 2100
F 0 "J10" H 5177 2076 50  0000 L CNN
F 1 "pot_red" H 5177 1985 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 5150 2100 50  0001 C CNN
F 3 "~" H 5150 2100 50  0001 C CNN
	1    5150 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	3350 1000 4300 1000
Wire Wire Line
	4300 1000 4300 1700
$Comp
L Device:R R2
U 1 1 5C12F4D2
P 4600 2200
F 0 "R2" V 4393 2200 50  0000 C CNN
F 1 "R Red" V 4484 2200 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_Power_L75.0mm_W9.0mm_P86.36mm" V 4530 2200 50  0001 C CNN
F 3 "~" H 4600 2200 50  0001 C CNN
	1    4600 2200
	0    1    1    0   
$EndComp
Wire Wire Line
	3600 2200 4450 2200
Wire Wire Line
	3600 2050 3600 2200
Wire Wire Line
	4950 2200 4750 2200
Wire Wire Line
	4300 2100 4950 2100
$Comp
L Connector:Conn_01x02_Female J12
U 1 1 5C13AD34
P 5250 3600
F 0 "J12" H 5278 3576 50  0000 L CNN
F 1 "pot_Green" H 5278 3485 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 5250 3600 50  0001 C CNN
F 3 "~" H 5250 3600 50  0001 C CNN
	1    5250 3600
	1    0    0    -1  
$EndComp
$Comp
L Device:R R4
U 1 1 5C13AD3B
P 4700 3700
F 0 "R4" V 4493 3700 50  0000 C CNN
F 1 "R Green" V 4584 3700 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_Power_L75.0mm_W9.0mm_P86.36mm" V 4630 3700 50  0001 C CNN
F 3 "~" H 4700 3700 50  0001 C CNN
	1    4700 3700
	0    1    1    0   
$EndComp
Wire Wire Line
	5050 3700 4850 3700
$Comp
L Connector:Conn_01x02_Female J13
U 1 1 5C13DD4D
P 5250 5050
F 0 "J13" H 5278 5026 50  0000 L CNN
F 1 "pot_blue" H 5278 4935 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 5250 5050 50  0001 C CNN
F 3 "~" H 5250 5050 50  0001 C CNN
	1    5250 5050
	1    0    0    -1  
$EndComp
$Comp
L Device:R R5
U 1 1 5C13DD54
P 4700 5150
F 0 "R5" V 4493 5150 50  0000 C CNN
F 1 "R Blue" V 4584 5150 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_Power_L75.0mm_W9.0mm_P86.36mm" V 4630 5150 50  0001 C CNN
F 3 "~" H 4700 5150 50  0001 C CNN
	1    4700 5150
	0    1    1    0   
$EndComp
Wire Wire Line
	5050 5150 4850 5150
$Comp
L Connector:Conn_01x02_Female J11
U 1 1 5C1410AC
P 5200 6500
F 0 "J11" H 5227 6476 50  0000 L CNN
F 1 "pot_UV" H 5227 6385 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 5200 6500 50  0001 C CNN
F 3 "~" H 5200 6500 50  0001 C CNN
	1    5200 6500
	1    0    0    -1  
$EndComp
$Comp
L Device:R R3
U 1 1 5C1410B3
P 4650 6600
F 0 "R3" V 4443 6600 50  0000 C CNN
F 1 "R UV" V 4534 6600 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_Power_L75.0mm_W9.0mm_P86.36mm" V 4580 6600 50  0001 C CNN
F 3 "~" H 4650 6600 50  0001 C CNN
	1    4650 6600
	0    1    1    0   
$EndComp
Wire Wire Line
	5000 6600 4800 6600
Wire Wire Line
	3600 6450 3600 6600
Wire Wire Line
	3600 6600 4500 6600
Wire Wire Line
	4300 6500 5000 6500
Wire Wire Line
	3650 5000 3650 5150
Wire Wire Line
	3650 5150 4550 5150
Wire Wire Line
	4350 5050 5050 5050
Wire Wire Line
	3650 3550 3650 3700
Wire Wire Line
	3650 3700 4550 3700
Wire Wire Line
	4350 3600 5050 3600
$Comp
L Device:R R1
U 1 1 5C1586A2
P 3850 1700
F 0 "R1" H 3780 1654 50  0000 R CNN
F 1 "R blank" H 3780 1745 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P12.70mm_Horizontal" V 3780 1700 50  0001 C CNN
F 3 "~" H 3850 1700 50  0001 C CNN
	1    3850 1700
	-1   0    0    1   
$EndComp
Wire Wire Line
	3850 1300 3850 1550
Wire Wire Line
	3850 1850 3850 1900
Connection ~ 3850 1900
$Comp
L Connector:Screw_Terminal_01x02 J1
U 1 1 5C15EB7C
P 2100 1050
F 0 "J1" H 2020 1267 50  0000 C CNN
F 1 "to_led_red" H 2020 1176 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 2100 1050 50  0001 C CNN
F 3 "~" H 2100 1050 50  0001 C CNN
	1    2100 1050
	-1   0    0    -1  
$EndComp
Wire Wire Line
	2300 1050 3350 1050
Wire Wire Line
	2300 1250 2300 1150
Wire Wire Line
	2300 1250 3400 1250
$Comp
L Connector:Screw_Terminal_01x02 J3
U 1 1 5C168755
P 2200 2500
F 0 "J3" H 2120 2717 50  0000 C CNN
F 1 "to_led_Green" H 2120 2626 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 2200 2500 50  0001 C CNN
F 3 "~" H 2200 2500 50  0001 C CNN
	1    2200 2500
	-1   0    0    -1  
$EndComp
Wire Wire Line
	2800 2550 2800 2500
Wire Wire Line
	2800 2500 2400 2500
Wire Wire Line
	2600 2750 2600 2600
Wire Wire Line
	2600 2600 2400 2600
$Comp
L Connector:Screw_Terminal_01x02 J4
U 1 1 5C1739EC
P 2200 4000
F 0 "J4" H 2120 4217 50  0000 C CNN
F 1 "to_led_blue" H 2120 4126 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 2200 4000 50  0001 C CNN
F 3 "~" H 2200 4000 50  0001 C CNN
	1    2200 4000
	-1   0    0    -1  
$EndComp
Wire Wire Line
	2400 4000 3400 4000
Wire Wire Line
	2400 4200 2400 4100
Wire Wire Line
	2400 4200 3450 4200
$Comp
L Connector:Screw_Terminal_01x02 J2
U 1 1 5C17B435
P 2150 5450
F 0 "J2" H 2070 5667 50  0000 C CNN
F 1 "to_led_UV" H 2070 5576 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 2150 5450 50  0001 C CNN
F 3 "~" H 2150 5450 50  0001 C CNN
	1    2150 5450
	-1   0    0    -1  
$EndComp
Wire Wire Line
	2350 5450 3350 5450
Wire Wire Line
	2350 5650 2350 5550
Wire Wire Line
	2350 5650 3400 5650
Wire Wire Line
	3400 1250 3400 1750
Wire Wire Line
	3450 2750 3450 3250
Wire Wire Line
	3450 4200 3450 4700
Wire Wire Line
	3400 5650 3400 6150
$EndSCHEMATC
