EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr USLetter 11000 8500
encoding utf-8
Sheet 1 3
Title "ATSAME51 Demo Board"
Date ""
Rev "1.0"
Comp "Quantum Embedded Systems"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L SamacSys_Parts:ATSAME51J20A-AU IC1
U 1 1 6173DE44
P 4450 2650
F 0 "IC1" H 5450 2200 50  0000 L CNN
F 1 "ATSAME51J20A-AU" H 5150 2400 50  0000 L CNN
F 2 "QFP50P1200X1200X120-64N" H 6400 3250 50  0001 L CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/SAM-D5xE5x-Family-Datasheet-01507B.pdf" H 6400 3150 50  0001 L CNN
F 4 "MICROCHIP - ATSAME51J20A-AU - MCU, ARM CORTEX-M4F, 120MHZ, TQFP-64" H 6400 3050 50  0001 L CNN "Description"
F 5 "1.2" H 6400 2950 50  0001 L CNN "Height"
F 6 "556-ATSAME51J20A-AU" H 6400 2850 50  0001 L CNN "Mouser Part Number"
F 7 "https://www.mouser.co.uk/ProductDetail/Microchip-Technology-Atmel/ATSAME51J20A-AU?qs=YCa%2FAAYMW00gAweaUvOoIg%3D%3D" H 6400 2750 50  0001 L CNN "Mouser Price/Stock"
F 8 "Microchip" H 6400 2650 50  0001 L CNN "Manufacturer_Name"
F 9 "ATSAME51J20A-AU" H 6400 2550 50  0001 L CNN "Manufacturer_Part_Number"
	1    4450 2650
	1    0    0    -1  
$EndComp
$Sheet
S 650  800  800  800 
U 6175619B
F0 "Power and USB" 50
F1 "power.sch" 50
$EndSheet
$Sheet
S 650  1950 800  800 
U 6175569F
F0 "External ICs" 50
F1 "external.sch" 50
$EndSheet
$Comp
L power:GND #PWR05
U 1 1 6176C8DC
P 4450 3250
F 0 "#PWR05" H 4450 3000 50  0001 C CNN
F 1 "GND" V 4455 3122 50  0000 R CNN
F 2 "" H 4450 3250 50  0001 C CNN
F 3 "" H 4450 3250 50  0001 C CNN
	1    4450 3250
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR06
U 1 1 6176D6E2
P 5250 4950
F 0 "#PWR06" H 5250 4700 50  0001 C CNN
F 1 "GND" H 5255 4777 50  0000 C CNN
F 2 "" H 5250 4950 50  0001 C CNN
F 3 "" H 5250 4950 50  0001 C CNN
	1    5250 4950
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR09
U 1 1 6176DF01
P 6550 4150
F 0 "#PWR09" H 6550 3900 50  0001 C CNN
F 1 "GND" V 6555 4022 50  0000 R CNN
F 2 "" H 6550 4150 50  0001 C CNN
F 3 "" H 6550 4150 50  0001 C CNN
	1    6550 4150
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR08
U 1 1 6176E9C7
P 6550 2750
F 0 "#PWR08" H 6550 2500 50  0001 C CNN
F 1 "GND" V 6555 2622 50  0000 R CNN
F 2 "" H 6550 2750 50  0001 C CNN
F 3 "" H 6550 2750 50  0001 C CNN
	1    6550 2750
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR07
U 1 1 6176F245
P 5750 1850
F 0 "#PWR07" H 5750 1600 50  0001 C CNN
F 1 "GND" H 5755 1677 50  0000 C CNN
F 2 "" H 5750 1850 50  0001 C CNN
F 3 "" H 5750 1850 50  0001 C CNN
	1    5750 1850
	-1   0    0    1   
$EndComp
Text GLabel 4000 3350 0    50   Input ~ 0
VDDANA
Text GLabel 5550 1400 1    50   Input ~ 0
VCC3V3
Text GLabel 5850 1400 1    50   Input ~ 0
VDDCORE
Text GLabel 5950 1400 1    50   Input ~ 0
RESETN
Text GLabel 7100 2650 2    50   Input ~ 0
VCC3V3
Text GLabel 7100 4050 2    50   Input ~ 0
VCC3V3
Text GLabel 5150 5450 3    50   Input ~ 0
VCC3V3
Wire Wire Line
	6550 2650 7100 2650
Wire Wire Line
	6550 4050 7100 4050
Wire Wire Line
	5150 5450 5150 4950
Wire Wire Line
	4000 3350 4450 3350
Wire Wire Line
	5550 1850 5550 1400
Wire Wire Line
	5850 1850 5850 1400
Wire Wire Line
	5950 1850 5950 1400
Text GLabel 7100 2850 2    50   Input ~ 0
D+
Text GLabel 7100 2950 2    50   Input ~ 0
D-
Text GLabel 6150 5450 3    50   Input ~ 0
XIN
Text GLabel 4000 2650 0    50   Input ~ 0
XIN32
Text GLabel 4000 2750 0    50   Input ~ 0
XOUT32
Text GLabel 4000 3850 0    50   Input ~ 0
TX0
Text GLabel 4000 3950 0    50   Input ~ 0
RX0
Text GLabel 5450 1400 1    50   Input ~ 0
SWCLK
Text GLabel 5350 1400 1    50   Input ~ 0
SWDIO
Wire Wire Line
	5350 1400 5350 1850
Wire Wire Line
	5450 1850 5450 1400
Wire Wire Line
	6550 2850 7100 2850
Wire Wire Line
	6550 2950 7100 2950
Wire Wire Line
	4450 2650 4000 2650
Wire Wire Line
	4450 2750 4000 2750
Wire Wire Line
	4450 3850 4000 3850
Wire Wire Line
	4450 3950 4000 3950
Wire Wire Line
	6150 5450 6150 4950
Text GLabel 5650 1400 1    50   Input ~ 0
VSW
Wire Wire Line
	5650 1850 5650 1400
Text GLabel 4750 5450 3    50   Input ~ 0
SD_CMD
Text GLabel 4850 5450 3    50   Input ~ 0
SD_DAT0
Text GLabel 4950 5450 3    50   Input ~ 0
SD_DAT1
Text GLabel 5050 5450 3    50   Input ~ 0
SD_DAT2
Text GLabel 5350 5450 3    50   Input ~ 0
SD_DAT3
Text GLabel 5450 5450 3    50   Input ~ 0
SD_CLK
Text GLabel 5550 5450 3    50   Input ~ 0
SD_CD
Wire Wire Line
	4750 4950 4750 5450
Wire Wire Line
	4850 4950 4850 5450
Wire Wire Line
	4950 4950 4950 5450
Wire Wire Line
	5050 4950 5050 5450
Wire Wire Line
	5350 4950 5350 5450
Wire Wire Line
	5450 4950 5450 5450
Wire Wire Line
	5550 4950 5550 5450
$Comp
L SamacSys_Parts:ASTMUPCE-33-12.000MHZ-LJ-E-T X1
U 1 1 6177A473
P 1450 6850
F 0 "X1" H 1950 7115 50  0000 C CNN
F 1 "12 MHz" H 1950 7024 50  0000 C CNN
F 2 "SamacSys_Parts:ASTMUPCE3312000MHZLJET" H 2300 6950 50  0001 L CNN
F 3 "https://abracon.com/Oscillators/ASTMUPC.pdf" H 2300 6850 50  0001 L CNN
F 4 "Standard Clock Oscillators MEMS OSC XO 12.0000MHZ LVCMOS" H 2300 6750 50  0001 L CNN "Description"
F 5 "0.8" H 2300 6650 50  0001 L CNN "Height"
F 6 "815-UPCE3312LJET" H 2300 6550 50  0001 L CNN "Mouser Part Number"
F 7 "https://www.mouser.co.uk/ProductDetail/ABRACON/ASTMUPCE-33-12000MHZ-LJ-E-T?qs=%2FPOkb%252BiDxRX9piuXNFIeDg%3D%3D" H 2300 6450 50  0001 L CNN "Mouser Price/Stock"
F 8 "ABRACON" H 2300 6350 50  0001 L CNN "Manufacturer_Name"
F 9 "ASTMUPCE-33-12.000MHZ-LJ-E-T" H 2300 6250 50  0001 L CNN "Manufacturer_Part_Number"
	1    1450 6850
	1    0    0    -1  
$EndComp
$Comp
L Device:C C2
U 1 1 6177C03F
P 1500 5250
F 0 "C2" H 1615 5296 50  0000 L CNN
F 1 "20p" H 1615 5205 50  0000 L CNN
F 2 "" H 1538 5100 50  0001 C CNN
F 3 "~" H 1500 5250 50  0001 C CNN
	1    1500 5250
	1    0    0    -1  
$EndComp
$Comp
L Device:C C3
U 1 1 6177C7BA
P 2150 5250
F 0 "C3" H 2265 5296 50  0000 L CNN
F 1 "20p" H 2265 5205 50  0000 L CNN
F 2 "" H 2188 5100 50  0001 C CNN
F 3 "~" H 2150 5250 50  0001 C CNN
	1    2150 5250
	1    0    0    -1  
$EndComp
$Comp
L Device:C C1
U 1 1 6177D183
P 1150 7200
F 0 "C1" H 1265 7246 50  0000 L CNN
F 1 "100n" H 1265 7155 50  0000 L CNN
F 2 "" H 1188 7050 50  0001 C CNN
F 3 "~" H 1150 7200 50  0001 C CNN
	1    1150 7200
	1    0    0    -1  
$EndComp
Text GLabel 1150 6550 1    50   Input ~ 0
VCC3V3
Wire Wire Line
	1150 6550 1150 6850
Wire Wire Line
	1150 6850 1450 6850
Wire Wire Line
	1150 7050 1150 6950
Connection ~ 1150 6850
Wire Wire Line
	1450 6950 1150 6950
Connection ~ 1150 6950
Wire Wire Line
	1150 6950 1150 6850
$Comp
L power:GND #PWR01
U 1 1 6177F3CA
P 1150 7350
F 0 "#PWR01" H 1150 7100 50  0001 C CNN
F 1 "GND" H 1155 7177 50  0000 C CNN
F 2 "" H 1150 7350 50  0001 C CNN
F 3 "" H 1150 7350 50  0001 C CNN
	1    1150 7350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR04
U 1 1 6177F846
P 2450 7050
F 0 "#PWR04" H 2450 6800 50  0001 C CNN
F 1 "GND" H 2455 6877 50  0000 C CNN
F 2 "" H 2450 7050 50  0001 C CNN
F 3 "" H 2450 7050 50  0001 C CNN
	1    2450 7050
	1    0    0    -1  
$EndComp
Text GLabel 2550 6850 2    50   Input ~ 0
XIN
Wire Wire Line
	2450 6850 2550 6850
Wire Wire Line
	2450 6950 2450 7050
$Comp
L Device:Crystal X2
U 1 1 617830A7
P 1850 4900
F 0 "X2" H 1850 5168 50  0000 C CNN
F 1 "32.768 kHz 12.5 pF" H 1850 5077 50  0000 C CNN
F 2 "SamacSys_Parts:CM9VT1A" H 1850 4900 50  0001 C CNN
F 3 "~" H 1850 4900 50  0001 C CNN
	1    1850 4900
	1    0    0    -1  
$EndComp
Wire Wire Line
	2000 4900 2150 4900
Wire Wire Line
	2150 4900 2150 5100
Wire Wire Line
	1700 4900 1500 4900
Wire Wire Line
	1500 4900 1500 5100
$Comp
L power:GND #PWR02
U 1 1 61784B49
P 1500 5400
F 0 "#PWR02" H 1500 5150 50  0001 C CNN
F 1 "GND" H 1505 5227 50  0000 C CNN
F 2 "" H 1500 5400 50  0001 C CNN
F 3 "" H 1500 5400 50  0001 C CNN
	1    1500 5400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR03
U 1 1 61785046
P 2150 5400
F 0 "#PWR03" H 2150 5150 50  0001 C CNN
F 1 "GND" H 2155 5227 50  0000 C CNN
F 2 "" H 2150 5400 50  0001 C CNN
F 3 "" H 2150 5400 50  0001 C CNN
	1    2150 5400
	1    0    0    -1  
$EndComp
Text GLabel 1350 4900 0    50   Input ~ 0
XIN32
Text GLabel 2300 4900 2    50   Input ~ 0
XOUT32
Wire Wire Line
	2300 4900 2150 4900
Connection ~ 2150 4900
Wire Wire Line
	1350 4900 1500 4900
Connection ~ 1500 4900
Text GLabel 7100 3950 2    50   Input ~ 0
SERCOM1_PAD0
Text GLabel 7100 3850 2    50   Input ~ 0
SERCOM1_PAD1
Wire Wire Line
	6550 3850 7100 3850
Wire Wire Line
	6550 3950 7100 3950
Text GLabel 4000 2850 0    50   Input ~ 0
PA02
Text GLabel 4000 2950 0    50   Input ~ 0
PA03
Text GLabel 4000 3050 0    50   Input ~ 0
PB04
Text GLabel 4000 3150 0    50   Input ~ 0
PB05
Text GLabel 4000 3450 0    50   Input ~ 0
PB06
Text GLabel 4000 3550 0    50   Input ~ 0
PB07
Text GLabel 4000 3650 0    50   Input ~ 0
PB08
Text GLabel 4000 3750 0    50   Input ~ 0
PB09
Text GLabel 4000 4050 0    50   Input ~ 0
PA06
Text GLabel 4000 4150 0    50   Input ~ 0
PA07
Wire Wire Line
	4000 2850 4450 2850
Wire Wire Line
	4000 2950 4450 2950
Wire Wire Line
	4000 3050 4450 3050
Wire Wire Line
	4000 3150 4450 3150
Wire Wire Line
	4000 3450 4450 3450
Wire Wire Line
	4000 3550 4450 3550
Wire Wire Line
	4000 3650 4450 3650
Wire Wire Line
	4000 3750 4450 3750
Wire Wire Line
	4000 4050 4450 4050
Wire Wire Line
	4000 4150 4450 4150
Text GLabel 5650 5450 3    50   Input ~ 0
PB13
Text GLabel 5750 5450 3    50   Input ~ 0
PB14
Text GLabel 5850 5450 3    50   Input ~ 0
PB15
Text GLabel 5950 5450 3    50   Input ~ 0
PA12
Text GLabel 6050 5450 3    50   Input ~ 0
PA13
Text GLabel 6250 5450 3    50   Input ~ 0
PA15
Text GLabel 7100 3750 2    50   Input ~ 0
PA18
Text GLabel 7100 3650 2    50   Input ~ 0
PA19
Text GLabel 7100 3550 2    50   Input ~ 0
PB16
Text GLabel 7100 3450 2    50   Input ~ 0
PB17
Text GLabel 7100 3350 2    50   Input ~ 0
PA20
Text GLabel 7100 3250 2    50   Input ~ 0
PA21
Text GLabel 7100 3150 2    50   Input ~ 0
PA22
Text GLabel 7100 3050 2    50   Input ~ 0
PA23
Wire Wire Line
	5650 5450 5650 4950
Wire Wire Line
	5750 4950 5750 5450
Wire Wire Line
	5850 5450 5850 4950
Wire Wire Line
	5950 4950 5950 5450
Wire Wire Line
	6050 5450 6050 4950
Wire Wire Line
	6250 4950 6250 5450
Wire Wire Line
	6550 3750 7100 3750
Wire Wire Line
	7100 3650 6550 3650
Wire Wire Line
	6550 3550 7100 3550
Wire Wire Line
	7100 3450 6550 3450
Wire Wire Line
	6550 3350 7100 3350
Wire Wire Line
	7100 3250 6550 3250
Wire Wire Line
	6550 3150 7100 3150
Wire Wire Line
	7100 3050 6550 3050
Text GLabel 6250 1400 1    50   Input ~ 0
PB22
Text GLabel 6150 1400 1    50   Input ~ 0
PB23
Text GLabel 6050 1400 1    50   Input ~ 0
VUSB_Detect
Text GLabel 5250 1400 1    50   Input ~ 0
PB30
Text GLabel 5150 1400 1    50   Input ~ 0
PB31
Text GLabel 5050 1400 1    50   Input ~ 0
PB00
Text GLabel 4950 1400 1    50   Input ~ 0
PB01
Text GLabel 4850 1400 1    50   Input ~ 0
PB02
Text GLabel 4750 1400 1    50   Input ~ 0
PB03
Wire Wire Line
	6250 1850 6250 1400
Wire Wire Line
	6150 1850 6150 1400
Wire Wire Line
	6050 1850 6050 1400
Wire Wire Line
	5250 1400 5250 1850
Wire Wire Line
	5150 1850 5150 1400
Wire Wire Line
	5050 1400 5050 1850
Wire Wire Line
	4950 1850 4950 1400
Wire Wire Line
	4850 1400 4850 1850
Wire Wire Line
	4750 1850 4750 1400
Text Notes 800  1250 0    50   ~ 10
Power, USB, \nButtons, LEDs
Text Notes 800  2450 0    50   ~ 10
SD Card, \nUSB to Serial,\nHeaders
$EndSCHEMATC
