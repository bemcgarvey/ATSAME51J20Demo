EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr USLetter 11000 8500
encoding utf-8
Sheet 3 3
Title "SAMduino"
Date "2021-10-22"
Rev "1.0"
Comp "Quantum Embedded Systems"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L SamacSys_Parts:MCP2221-I_SL IC3
U 1 1 616206CE
P 7000 1650
F 0 "IC3" H 7550 1915 50  0000 C CNN
F 1 "MCP2221-I_SL" H 7550 1824 50  0000 C CNN
F 2 "SamacSys_Parts:SOIC127P600X175-14N" H 7950 1750 50  0001 L CNN
F 3 "" H 7950 1650 50  0001 L CNN
F 4 "USB 2.0 to I2C/UART Converter GPIO SO14 Microchip MCP2221-I/SL, USB Converter, USB 2.0 at 12Mbit/s, 3  5.5 V, 14-Pin SOIC" H 7950 1550 50  0001 L CNN "Description"
F 5 "1.75" H 7950 1450 50  0001 L CNN "Height"
F 6 "579-MCP2221-I/SL" H 7950 1350 50  0001 L CNN "Mouser Part Number"
F 7 "https://www.mouser.co.uk/ProductDetail/Microchip-Technology/MCP2221-I-SL?qs=wzzOUr4NhYrXnl%252BgbTV6ag%3D%3D" H 7950 1250 50  0001 L CNN "Mouser Price/Stock"
F 8 "Microchip" H 7950 1150 50  0001 L CNN "Manufacturer_Name"
F 9 "MCP2221-I/SL" H 7950 1050 50  0001 L CNN "Manufacturer_Part_Number"
	1    7000 1650
	1    0    0    -1  
$EndComp
$Comp
L Device:C C17
U 1 1 616AABD0
P 8650 2400
F 0 "C17" H 8765 2446 50  0000 L CNN
F 1 "220n" H 8765 2355 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 8688 2250 50  0001 C CNN
F 3 "~" H 8650 2400 50  0001 C CNN
	1    8650 2400
	1    0    0    -1  
$EndComp
$Comp
L Device:C C16
U 1 1 616ABA21
P 6700 1150
F 0 "C16" V 6448 1150 50  0000 C CNN
F 1 "100n" V 6539 1150 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 6738 1000 50  0001 C CNN
F 3 "~" H 6700 1150 50  0001 C CNN
	1    6700 1150
	-1   0    0    1   
$EndComp
$Comp
L Device:R R19
U 1 1 616AC1B1
P 6300 2750
F 0 "R19" H 6370 2796 50  0000 L CNN
F 1 "220R" H 6370 2705 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 6230 2750 50  0001 C CNN
F 3 "~" H 6300 2750 50  0001 C CNN
	1    6300 2750
	1    0    0    -1  
$EndComp
$Comp
L Device:R R20
U 1 1 616AC7F4
P 6700 2750
F 0 "R20" H 6770 2796 50  0000 L CNN
F 1 "220R" H 6770 2705 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 6630 2750 50  0001 C CNN
F 3 "~" H 6700 2750 50  0001 C CNN
	1    6700 2750
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D8
U 1 1 616AD36C
P 6300 3250
F 0 "D8" V 6247 3330 50  0000 L CNN
F 1 "Green" V 6338 3330 50  0000 L CNN
F 2 "LED_SMD:LED_0603_1608Metric" H 6300 3250 50  0001 C CNN
F 3 "~" H 6300 3250 50  0001 C CNN
	1    6300 3250
	0    1    1    0   
$EndComp
$Comp
L Device:LED D9
U 1 1 616ADE58
P 6700 3250
F 0 "D9" V 6647 3330 50  0000 L CNN
F 1 "Yellow" V 6738 3330 50  0000 L CNN
F 2 "LED_SMD:LED_0603_1608Metric" H 6700 3250 50  0001 C CNN
F 3 "~" H 6700 3250 50  0001 C CNN
	1    6700 3250
	0    1    1    0   
$EndComp
Wire Wire Line
	8100 1950 8650 1950
$Comp
L power:GND #PWR039
U 1 1 616B00B3
P 8650 2550
F 0 "#PWR039" H 8650 2300 50  0001 C CNN
F 1 "GND" H 8655 2377 50  0000 C CNN
F 2 "" H 8650 2550 50  0001 C CNN
F 3 "" H 8650 2550 50  0001 C CNN
	1    8650 2550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR036
U 1 1 616B0724
P 6700 1300
F 0 "#PWR036" H 6700 1050 50  0001 C CNN
F 1 "GND" H 6705 1127 50  0000 C CNN
F 2 "" H 6700 1300 50  0001 C CNN
F 3 "" H 6700 1300 50  0001 C CNN
	1    6700 1300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR038
U 1 1 616B0DF5
P 8200 1650
F 0 "#PWR038" H 8200 1400 50  0001 C CNN
F 1 "GND" V 8205 1522 50  0000 R CNN
F 2 "" H 8200 1650 50  0001 C CNN
F 3 "" H 8200 1650 50  0001 C CNN
	1    8200 1650
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7000 1750 6600 1750
Wire Wire Line
	6600 1750 6600 2300
Wire Wire Line
	6600 2300 6300 2300
Wire Wire Line
	6300 2300 6300 2600
Wire Wire Line
	7000 1850 6700 1850
Wire Wire Line
	6700 1850 6700 2600
Wire Wire Line
	6700 2900 6700 3100
Wire Wire Line
	6300 2900 6300 3100
Text GLabel 7100 3500 2    50   Input ~ 0
VCC3V3
Wire Wire Line
	6300 3400 6300 3500
Wire Wire Line
	6300 3500 6700 3500
Wire Wire Line
	6700 3400 6700 3500
Connection ~ 6700 3500
Wire Wire Line
	6700 3500 7100 3500
Wire Wire Line
	8200 1650 8100 1650
Text GLabel 6450 900  1    50   Input ~ 0
VCC3V3
Text GLabel 8850 1750 2    50   Input ~ 0
Serial_D+
Text GLabel 8850 1850 2    50   Input ~ 0
Serial_D-
Wire Wire Line
	8100 1750 8850 1750
Wire Wire Line
	8850 1850 8100 1850
Text GLabel 5850 2150 0    50   Input ~ 0
RX0
Text GLabel 5850 2050 0    50   Input ~ 0
TX0
Wire Wire Line
	5850 2050 7000 2050
Wire Wire Line
	5850 2150 7000 2150
$Comp
L power:GND #PWR030
U 1 1 616BDAE8
P 3500 1700
F 0 "#PWR030" H 3500 1450 50  0001 C CNN
F 1 "GND" H 3505 1527 50  0000 C CNN
F 2 "" H 3500 1700 50  0001 C CNN
F 3 "" H 3500 1700 50  0001 C CNN
	1    3500 1700
	1    0    0    -1  
$EndComp
$Comp
L Device:C C14
U 1 1 616BE1BB
P 3500 1400
F 0 "C14" V 3250 1300 50  0000 L CNN
F 1 "100n" V 3350 1300 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 3538 1250 50  0001 C CNN
F 3 "~" H 3500 1400 50  0001 C CNN
	1    3500 1400
	-1   0    0    1   
$EndComp
Text GLabel 3200 900  1    50   Input ~ 0
VCC3V3
Text Notes 7150 2550 0    50   ~ 0
USB to Serial Bridge
Wire Wire Line
	3500 1550 3500 1700
Wire Wire Line
	3200 900  3200 1200
NoConn ~ 7000 2250
NoConn ~ 8100 2050
NoConn ~ 8100 2150
NoConn ~ 8100 2250
Text GLabel 8750 2100 2    50   Input ~ 0
VCC3V3
Wire Wire Line
	8650 1950 8650 2100
Wire Wire Line
	8750 2100 8650 2100
Connection ~ 8650 2100
Wire Wire Line
	8650 2100 8650 2250
Text Notes 5850 3300 0    50   ~ 0
MCU Tx\nindicator
Text Notes 7050 3300 0    50   ~ 0
MCU Rx\nindicator
$Comp
L Device:R R18
U 1 1 616A637E
P 6050 1800
F 0 "R18" H 6120 1846 50  0000 L CNN
F 1 "10k" H 6120 1755 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 5980 1800 50  0001 C CNN
F 3 "~" H 6050 1800 50  0001 C CNN
	1    6050 1800
	1    0    0    -1  
$EndComp
Wire Wire Line
	7000 1950 6050 1950
Wire Wire Line
	7000 1650 6450 1650
Wire Wire Line
	6450 1650 6450 1000
Wire Wire Line
	6700 1000 6450 1000
Connection ~ 6450 1000
Wire Wire Line
	6450 1000 6450 900 
Wire Wire Line
	6050 1650 6450 1650
Connection ~ 6450 1650
Connection ~ 3200 1200
$Comp
L Device:C C15
U 1 1 61759C89
P 3950 1400
F 0 "C15" H 4065 1446 50  0000 L CNN
F 1 "10uF" H 4065 1355 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 3988 1250 50  0001 C CNN
F 3 "~" H 3950 1400 50  0001 C CNN
	1    3950 1400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR032
U 1 1 6175A72F
P 3950 1700
F 0 "#PWR032" H 3950 1450 50  0001 C CNN
F 1 "GND" H 3955 1527 50  0000 C CNN
F 2 "" H 3950 1700 50  0001 C CNN
F 3 "" H 3950 1700 50  0001 C CNN
	1    3950 1700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR031
U 1 1 6175AE16
P 3600 2650
F 0 "#PWR031" H 3600 2400 50  0001 C CNN
F 1 "GND" H 3605 2477 50  0000 C CNN
F 2 "" H 3600 2650 50  0001 C CNN
F 3 "" H 3600 2650 50  0001 C CNN
	1    3600 2650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR029
U 1 1 6175B456
P 2250 2600
F 0 "#PWR029" H 2250 2350 50  0001 C CNN
F 1 "GND" V 2255 2472 50  0000 R CNN
F 2 "" H 2250 2600 50  0001 C CNN
F 3 "" H 2250 2600 50  0001 C CNN
	1    2250 2600
	0    1    1    0   
$EndComp
Wire Wire Line
	3950 1200 3950 1250
Wire Wire Line
	3200 1200 3500 1200
Wire Wire Line
	3950 1700 3950 1550
Wire Wire Line
	3500 1250 3500 1200
Connection ~ 3500 1200
Wire Wire Line
	3500 1200 3950 1200
$Comp
L SamacSys_Parts:MEM2075-00-140-01-A J9
U 1 1 6175BBB2
P 2250 2100
F 0 "J9" H 2900 2365 50  0000 C CNN
F 1 "Micro SD Card" H 2900 2250 50  0000 C CNN
F 2 "SamacSys_Parts:MEM20750014001A" H 3400 2200 50  0001 L CNN
F 3 "" H 3400 2100 50  0001 L CNN
F 4 "GCT (GLOBAL CONNECTOR TECHNOLOGY) - MEM2075-00-140-01-A - MICRO SD CARD CONN, PUSH-PUSH, 9POS, SMT" H 3400 2000 50  0001 L CNN "Description"
F 5 "1.45" H 3400 1900 50  0001 L CNN "Height"
F 6 "640-MEM20750014001A" H 3400 1800 50  0001 L CNN "Mouser Part Number"
F 7 "https://www.mouser.co.uk/ProductDetail/GCT/MEM2075-00-140-01-A?qs=KUoIvG%2F9IlZvfWpeERlq3Q%3D%3D" H 3400 1700 50  0001 L CNN "Mouser Price/Stock"
F 8 "GCT (GLOBAL CONNECTOR TECHNOLOGY)" H 3400 1600 50  0001 L CNN "Manufacturer_Name"
F 9 "MEM2075-00-140-01-A" H 3400 1500 50  0001 L CNN "Manufacturer_Part_Number"
	1    2250 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	3550 2300 3600 2300
Wire Wire Line
	3600 2300 3600 2400
Wire Wire Line
	3550 2600 3600 2600
Connection ~ 3600 2600
Wire Wire Line
	3600 2600 3600 2650
Wire Wire Line
	3550 2500 3600 2500
Connection ~ 3600 2500
Wire Wire Line
	3600 2500 3600 2600
Wire Wire Line
	3550 2400 3600 2400
Connection ~ 3600 2400
Wire Wire Line
	3600 2400 3600 2500
Text GLabel 1150 2100 0    50   Input ~ 0
SD_DAT2
Text GLabel 1150 2200 0    50   Input ~ 0
SD_DAT3
Text GLabel 1150 2300 0    50   Input ~ 0
SD_CMD
Text GLabel 1150 2500 0    50   Input ~ 0
SD_CLK
Text GLabel 1150 2700 0    50   Input ~ 0
SD_DAT0
Text GLabel 4350 2100 2    50   Input ~ 0
SD_DAT1
Text GLabel 4350 2200 2    50   Input ~ 0
SD_CD
Text Notes 1000 6250 0    50   ~ 0
SERCOM1
$Comp
L Device:R R11
U 1 1 6180DE82
P 1650 6150
F 0 "R11" H 1720 6196 50  0000 L CNN
F 1 "4k7" H 1720 6105 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 1580 6150 50  0001 C CNN
F 3 "~" H 1650 6150 50  0001 C CNN
	1    1650 6150
	1    0    0    -1  
$EndComp
$Comp
L Device:R R14
U 1 1 6180E62C
P 2250 6150
F 0 "R14" H 2320 6196 50  0000 L CNN
F 1 "4k7" H 2320 6105 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 2180 6150 50  0001 C CNN
F 3 "~" H 2250 6150 50  0001 C CNN
	1    2250 6150
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x07_Odd_Even J11
U 1 1 61811994
P 4100 5300
F 0 "J11" H 4150 5817 50  0000 C CNN
F 1 "Conn_02x07_Odd_Even" H 4150 5726 50  0001 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x07_P2.54mm_Vertical" H 4100 5300 50  0001 C CNN
F 3 "~" H 4100 5300 50  0001 C CNN
	1    4100 5300
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x02_Odd_Even J7
U 1 1 6175F2EC
P 1900 5750
F 0 "J7" H 1950 5875 50  0000 C CNN
F 1 "Conn_02x02_Odd_Even" H 1950 5876 50  0001 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x02_P2.54mm_Vertical" H 1900 5750 50  0001 C CNN
F 3 "~" H 1900 5750 50  0001 C CNN
	1    1900 5750
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x02_Odd_Even J8
U 1 1 6175FDD7
P 1900 6900
F 0 "J8" V 1950 6712 50  0000 R CNN
F 1 "Conn_02x02_Odd_Even" H 1950 7026 50  0001 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x02_P2.54mm_Vertical" H 1900 6900 50  0001 C CNN
F 3 "~" H 1900 6900 50  0001 C CNN
	1    1900 6900
	0    -1   -1   0   
$EndComp
Text GLabel 1550 7100 0    50   Input ~ 0
VCC3V3
$Comp
L Device:R R9
U 1 1 6176130E
P 1250 3350
F 0 "R9" H 1100 3400 50  0000 L CNN
F 1 "100k" H 1000 3300 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 1180 3350 50  0001 C CNN
F 3 "~" H 1250 3350 50  0001 C CNN
	1    1250 3350
	1    0    0    -1  
$EndComp
$Comp
L Device:R R16
U 1 1 617619BD
P 4150 3350
F 0 "R16" H 4220 3396 50  0000 L CNN
F 1 "10k" H 4220 3305 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 4080 3350 50  0001 C CNN
F 3 "~" H 4150 3350 50  0001 C CNN
	1    4150 3350
	1    0    0    -1  
$EndComp
$Comp
L Device:R R10
U 1 1 61763599
P 1500 3350
F 0 "R10" H 1350 3500 50  0000 L CNN
F 1 "100k" V 1400 3250 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 1430 3350 50  0001 C CNN
F 3 "~" H 1500 3350 50  0001 C CNN
	1    1500 3350
	1    0    0    -1  
$EndComp
$Comp
L Device:R R12
U 1 1 617645A3
P 1750 3350
F 0 "R12" H 1600 3500 50  0000 L CNN
F 1 "100k" V 1650 3250 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 1680 3350 50  0001 C CNN
F 3 "~" H 1750 3350 50  0001 C CNN
	1    1750 3350
	1    0    0    -1  
$EndComp
$Comp
L Device:R R13
U 1 1 6176566F
P 2000 3350
F 0 "R13" H 2070 3396 50  0000 L CNN
F 1 "10k" H 2050 3300 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 1930 3350 50  0001 C CNN
F 3 "~" H 2000 3350 50  0001 C CNN
	1    2000 3350
	1    0    0    -1  
$EndComp
$Comp
L Device:R R15
U 1 1 61766629
P 3850 3350
F 0 "R15" H 3700 3400 50  0000 L CNN
F 1 "100k" H 3600 3300 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 3780 3350 50  0001 C CNN
F 3 "~" H 3850 3350 50  0001 C CNN
	1    3850 3350
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x06_Odd_Even J10
U 1 1 61767510
P 2800 4200
F 0 "J10" V 2850 3812 50  0000 R CNN
F 1 "Conn_02x06_Odd_Even" V 2805 3812 50  0001 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x06_P2.54mm_Vertical" H 2800 4200 50  0001 C CNN
F 3 "~" H 2800 4200 50  0001 C CNN
	1    2800 4200
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2250 2400 2100 2400
Wire Wire Line
	2100 2400 2100 1200
Wire Wire Line
	2100 1200 3200 1200
Wire Wire Line
	1150 2100 1500 2100
Wire Wire Line
	1150 2200 1750 2200
Wire Wire Line
	1150 2500 2250 2500
Wire Wire Line
	1150 2700 1250 2700
Wire Wire Line
	1250 3200 1250 2700
Connection ~ 1250 2700
Wire Wire Line
	1250 2700 2250 2700
Wire Wire Line
	1250 3500 1250 3900
Wire Wire Line
	1250 3900 2600 3900
Wire Wire Line
	1500 3500 1500 3800
Wire Wire Line
	1500 3800 2800 3800
Wire Wire Line
	2800 3800 2800 3900
Wire Wire Line
	1750 3500 1750 3700
Wire Wire Line
	1750 3700 2900 3700
Wire Wire Line
	2900 3700 2900 3900
Wire Wire Line
	2000 3500 2000 3600
Wire Wire Line
	2000 3600 3000 3600
Wire Wire Line
	3000 3600 3000 3900
Wire Wire Line
	1500 3200 1500 2100
Connection ~ 1500 2100
Wire Wire Line
	1500 2100 2250 2100
Wire Wire Line
	1750 3200 1750 2200
Connection ~ 1750 2200
Wire Wire Line
	1750 2200 2250 2200
Wire Wire Line
	2000 3200 2000 3100
Wire Wire Line
	2000 3100 1900 3100
Wire Wire Line
	1900 3100 1900 2300
Wire Wire Line
	1150 2300 1900 2300
Connection ~ 1900 2300
Wire Wire Line
	1900 2300 2250 2300
Wire Wire Line
	3550 2100 3850 2100
Wire Wire Line
	3550 2200 4150 2200
Wire Wire Line
	3850 3200 3850 2100
Connection ~ 3850 2100
Wire Wire Line
	3850 2100 4350 2100
Wire Wire Line
	4150 3200 4150 2200
Connection ~ 4150 2200
Wire Wire Line
	4150 2200 4350 2200
Wire Wire Line
	3850 3500 2700 3500
Wire Wire Line
	2700 3500 2700 3900
Wire Wire Line
	3100 3900 4150 3900
Wire Wire Line
	4150 3900 4150 3500
Wire Wire Line
	2600 4400 2600 4500
Wire Wire Line
	2600 4500 2700 4500
Wire Wire Line
	3100 4500 3100 4400
Wire Wire Line
	3000 4400 3000 4500
Connection ~ 3000 4500
Wire Wire Line
	3000 4500 3100 4500
Wire Wire Line
	2900 4400 2900 4500
Connection ~ 2900 4500
Wire Wire Line
	2900 4500 3000 4500
Wire Wire Line
	2800 4400 2800 4500
Connection ~ 2800 4500
Wire Wire Line
	2800 4500 2900 4500
Wire Wire Line
	2700 4400 2700 4500
Connection ~ 2700 4500
Wire Wire Line
	2700 4500 2800 4500
Text GLabel 2400 4500 0    50   Input ~ 0
VCC3V3
Connection ~ 2600 4500
Wire Wire Line
	2400 4500 2600 4500
Text GLabel 1500 5750 0    50   Input ~ 0
VCC3V3
$Comp
L power:GND #PWR028
U 1 1 6181EDC9
P 2200 5750
F 0 "#PWR028" H 2200 5500 50  0001 C CNN
F 1 "GND" V 2205 5622 50  0000 R CNN
F 2 "" H 2200 5750 50  0001 C CNN
F 3 "" H 2200 5750 50  0001 C CNN
	1    2200 5750
	0    -1   -1   0   
$EndComp
Text GLabel 1500 5850 0    50   Input ~ 0
SERCOM1_PAD0
Text GLabel 2400 5850 2    50   Input ~ 0
SERCOM1_PAD1
Wire Wire Line
	1500 5750 1700 5750
Wire Wire Line
	2200 5850 2250 5850
Wire Wire Line
	1500 5850 1650 5850
Wire Wire Line
	1650 6000 1650 5850
Connection ~ 1650 5850
Wire Wire Line
	1650 5850 1700 5850
Wire Wire Line
	2250 6000 2250 5850
Connection ~ 2250 5850
Wire Wire Line
	2250 5850 2400 5850
Wire Wire Line
	1650 6300 1650 6500
Wire Wire Line
	1650 6500 1900 6500
Wire Wire Line
	1900 6500 1900 6600
Wire Wire Line
	2250 6300 2250 6500
Wire Wire Line
	2250 6500 2000 6500
Wire Wire Line
	2000 6500 2000 6600
Wire Wire Line
	2000 7100 1900 7100
Wire Wire Line
	1900 7100 1550 7100
Connection ~ 1900 7100
Text GLabel 3800 5000 0    50   Input ~ 0
VCC3V3
$Comp
L power:GND #PWR033
U 1 1 6179550E
P 4400 5000
F 0 "#PWR033" H 4400 4750 50  0001 C CNN
F 1 "GND" V 4405 4872 50  0000 R CNN
F 2 "" H 4400 5000 50  0001 C CNN
F 3 "" H 4400 5000 50  0001 C CNN
	1    4400 5000
	0    -1   -1   0   
$EndComp
$Comp
L Connector_Generic:Conn_02x08_Odd_Even J14
U 1 1 61797A30
P 5700 5300
F 0 "J14" H 5750 5725 50  0000 C CNN
F 1 "Conn_02x08_Odd_Even" H 5750 5726 50  0001 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x08_P2.54mm_Vertical" H 5700 5300 50  0001 C CNN
F 3 "~" H 5700 5300 50  0001 C CNN
	1    5700 5300
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x06_Odd_Even J15
U 1 1 61799C22
P 7550 5200
F 0 "J15" H 7600 5525 50  0000 C CNN
F 1 "Conn_02x06_Odd_Even" H 7600 5526 50  0001 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x06_P2.54mm_Vertical" H 7550 5200 50  0001 C CNN
F 3 "~" H 7550 5200 50  0001 C CNN
	1    7550 5200
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x06_Odd_Even J16
U 1 1 6179D1B9
P 9350 5200
F 0 "J16" H 9400 5525 50  0000 C CNN
F 1 "Conn_02x06_Odd_Even" H 9400 5526 50  0001 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x06_P2.54mm_Vertical" H 9350 5200 50  0001 C CNN
F 3 "~" H 9350 5200 50  0001 C CNN
	1    9350 5200
	1    0    0    -1  
$EndComp
Text GLabel 5400 5000 0    50   Input ~ 0
VCC3V3
Text GLabel 7250 5000 0    50   Input ~ 0
VCC3V3
Text GLabel 9050 5000 0    50   Input ~ 0
VCC3V3
$Comp
L power:GND #PWR035
U 1 1 617AC5C9
P 6000 5000
F 0 "#PWR035" H 6000 4750 50  0001 C CNN
F 1 "GND" V 6005 4872 50  0000 R CNN
F 2 "" H 6000 5000 50  0001 C CNN
F 3 "" H 6000 5000 50  0001 C CNN
	1    6000 5000
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR037
U 1 1 617B03D0
P 7850 5000
F 0 "#PWR037" H 7850 4750 50  0001 C CNN
F 1 "GND" V 7855 4872 50  0000 R CNN
F 2 "" H 7850 5000 50  0001 C CNN
F 3 "" H 7850 5000 50  0001 C CNN
	1    7850 5000
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR040
U 1 1 617B4203
P 9650 5000
F 0 "#PWR040" H 9650 4750 50  0001 C CNN
F 1 "GND" V 9655 4872 50  0000 R CNN
F 2 "" H 9650 5000 50  0001 C CNN
F 3 "" H 9650 5000 50  0001 C CNN
	1    9650 5000
	0    -1   -1   0   
$EndComp
Text GLabel 3800 5100 0    50   Input ~ 0
PA02
Text GLabel 4500 5100 2    50   Input ~ 0
PA03
Text GLabel 3800 5200 0    50   Input ~ 0
PB04
Text GLabel 4500 5200 2    50   Input ~ 0
PB05
Text GLabel 3800 5300 0    50   Input ~ 0
PB06
Text GLabel 4500 5300 2    50   Input ~ 0
PB07
Text GLabel 3800 5400 0    50   Input ~ 0
PB08
Text GLabel 4500 5400 2    50   Input ~ 0
PB09
Text GLabel 3800 5500 0    50   Input ~ 0
TX0
Text GLabel 4500 5500 2    50   Input ~ 0
RX0
Text GLabel 3800 5600 0    50   Input ~ 0
PA06
Text GLabel 4500 5600 2    50   Input ~ 0
PA07
Wire Wire Line
	3800 5000 3900 5000
Wire Wire Line
	3800 5100 3900 5100
Wire Wire Line
	3800 5200 3900 5200
Wire Wire Line
	3800 5300 3900 5300
Wire Wire Line
	3900 5400 3800 5400
Wire Wire Line
	3800 5500 3900 5500
Wire Wire Line
	3900 5600 3800 5600
Wire Wire Line
	4400 5600 4500 5600
Wire Wire Line
	4500 5500 4400 5500
Wire Wire Line
	4400 5400 4500 5400
Wire Wire Line
	4500 5300 4400 5300
Wire Wire Line
	4400 5200 4500 5200
Wire Wire Line
	4500 5100 4400 5100
Text GLabel 5400 5100 0    50   Input ~ 0
SD_CMD
Text GLabel 6100 5100 2    50   Input ~ 0
SD_DAT0
Text GLabel 5400 5200 0    50   Input ~ 0
SD_DAT1
Text GLabel 6100 5200 2    50   Input ~ 0
SD_DAT2
Text GLabel 5400 5300 0    50   Input ~ 0
SD_DAT3
Text GLabel 6100 5300 2    50   Input ~ 0
SD_CLK
Text GLabel 5400 5400 0    50   Input ~ 0
SD_CD
Text GLabel 6100 5400 2    50   Input ~ 0
PB13
Text GLabel 5400 5500 0    50   Input ~ 0
PB14
Text GLabel 6100 5500 2    50   Input ~ 0
PB15
Text GLabel 5400 5600 0    50   Input ~ 0
PA12
Text GLabel 6100 5600 2    50   Input ~ 0
PA13
Text GLabel 5400 5700 0    50   Input ~ 0
PA15
Wire Wire Line
	5400 5000 5500 5000
Wire Wire Line
	5500 5100 5400 5100
Wire Wire Line
	5400 5200 5500 5200
Wire Wire Line
	5500 5300 5400 5300
Wire Wire Line
	5400 5400 5500 5400
Wire Wire Line
	5500 5500 5400 5500
Wire Wire Line
	5400 5600 5500 5600
Wire Wire Line
	5500 5700 5400 5700
Wire Wire Line
	6000 5600 6100 5600
Wire Wire Line
	6100 5500 6000 5500
Wire Wire Line
	6000 5400 6100 5400
Wire Wire Line
	6100 5300 6000 5300
Wire Wire Line
	6000 5200 6100 5200
Wire Wire Line
	6100 5100 6000 5100
Text GLabel 7250 5100 0    50   Input ~ 0
SERCOM1_PAD0
Text GLabel 7950 5100 2    50   Input ~ 0
SERCOM1_PAD1
Text GLabel 7250 5200 0    50   Input ~ 0
PA18
Text GLabel 7950 5200 2    50   Input ~ 0
PA19
Text GLabel 7250 5300 0    50   Input ~ 0
PB16
Text GLabel 7950 5300 2    50   Input ~ 0
PB17
Text GLabel 7250 5400 0    50   Input ~ 0
PA20
Text GLabel 7950 5400 2    50   Input ~ 0
PA21
Text GLabel 7250 5500 0    50   Input ~ 0
PA22
Text GLabel 7950 5500 2    50   Input ~ 0
PA23
Wire Wire Line
	7250 5000 7350 5000
Wire Wire Line
	7350 5100 7250 5100
Wire Wire Line
	7250 5200 7350 5200
Wire Wire Line
	7350 5300 7250 5300
Wire Wire Line
	7250 5400 7350 5400
Wire Wire Line
	7250 5500 7350 5500
Wire Wire Line
	7850 5500 7950 5500
Wire Wire Line
	7950 5400 7850 5400
Wire Wire Line
	7850 5300 7950 5300
Wire Wire Line
	7950 5200 7850 5200
Wire Wire Line
	7850 5100 7950 5100
Text GLabel 9050 5100 0    50   Input ~ 0
PB22
Text GLabel 9750 5100 2    50   Input ~ 0
PB23
Text GLabel 9050 5200 0    50   Input ~ 0
SWCLK
Text GLabel 9750 5200 2    50   Input ~ 0
SWDIO
Text GLabel 9050 5300 0    50   Input ~ 0
PB30
Text GLabel 9750 5300 2    50   Input ~ 0
PB31
Text GLabel 9050 5400 0    50   Input ~ 0
PB00
Text GLabel 9750 5400 2    50   Input ~ 0
PB01
Text GLabel 9050 5500 0    50   Input ~ 0
PB02
Text GLabel 9750 5500 2    50   Input ~ 0
PB03
Wire Wire Line
	9150 5000 9050 5000
Wire Wire Line
	9050 5100 9150 5100
Wire Wire Line
	9150 5200 9050 5200
Wire Wire Line
	9050 5300 9150 5300
Wire Wire Line
	9150 5400 9050 5400
Wire Wire Line
	9050 5500 9150 5500
Wire Wire Line
	9650 5500 9750 5500
Wire Wire Line
	9750 5400 9650 5400
Wire Wire Line
	9650 5300 9750 5300
Wire Wire Line
	9750 5200 9650 5200
Wire Wire Line
	9650 5100 9750 5100
$Comp
L Connector_Generic:Conn_01x08 J13
U 1 1 618F687B
P 5100 7200
F 0 "J13" H 5180 7146 50  0000 L CNN
F 1 "Conn_01x08" H 5180 7101 50  0001 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x08_P2.54mm_Horizontal" H 5100 7200 50  0001 C CNN
F 3 "~" H 5100 7200 50  0001 C CNN
	1    5100 7200
	1    0    0    -1  
$EndComp
Text GLabel 4450 7600 0    50   Input ~ 0
RESETN
Text GLabel 4450 7500 0    50   Input ~ 0
VCC3V3
$Comp
L power:GND #PWR034
U 1 1 618F92B8
P 4750 7400
F 0 "#PWR034" H 4750 7150 50  0001 C CNN
F 1 "GND" V 4755 7272 50  0000 R CNN
F 2 "" H 4750 7400 50  0001 C CNN
F 3 "" H 4750 7400 50  0001 C CNN
	1    4750 7400
	0    1    1    0   
$EndComp
Text GLabel 4450 7200 0    50   Input ~ 0
SWCLK
Text GLabel 4450 6900 0    50   Input ~ 0
SWDIO
$Comp
L Device:R R17
U 1 1 61916009
P 4600 6550
F 0 "R17" H 4670 6596 50  0000 L CNN
F 1 "10k" H 4670 6505 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 4530 6550 50  0001 C CNN
F 3 "~" H 4600 6550 50  0001 C CNN
	1    4600 6550
	1    0    0    -1  
$EndComp
Text GLabel 4900 6300 2    50   Input ~ 0
VCC3V3
Wire Wire Line
	4450 7600 4900 7600
Wire Wire Line
	4900 7500 4450 7500
Wire Wire Line
	4900 7200 4600 7200
Wire Wire Line
	4450 6900 4900 6900
Wire Wire Line
	4600 6700 4600 7200
Connection ~ 4600 7200
Wire Wire Line
	4600 7200 4450 7200
Wire Wire Line
	4600 6400 4600 6300
Wire Wire Line
	4900 7400 4750 7400
$Comp
L Connector_Generic:Conn_01x02 J12
U 1 1 61966AE0
P 4600 6100
F 0 "J12" V 4518 5912 50  0000 R CNN
F 1 "Conn_01x02" V 4473 5912 50  0001 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 4600 6100 50  0001 C CNN
F 3 "~" H 4600 6100 50  0001 C CNN
	1    4600 6100
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4700 6300 4900 6300
NoConn ~ 4900 7000
NoConn ~ 4900 7100
NoConn ~ 4900 7300
NoConn ~ 6000 5700
Text Notes 4500 7800 0    50   ~ 0
Program/Debug
$EndSCHEMATC
