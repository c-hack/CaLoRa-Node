EESchema Schematic File Version 4
EELAYER 30 0
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
L Device:Crystal Y2
U 1 1 5F247DB2
P 3300 2500
F 0 "Y2" V 3650 2550 50  0000 R CNN
F 1 "16MHz" V 3550 2600 50  0000 R CNN
F 2 "Crystal:Crystal_SMD_7050-2Pin_7.0x5.0mm_HandSoldering" H 3300 2500 50  0001 C CNN
F 3 "~" H 3300 2500 50  0001 C CNN
	1    3300 2500
	0    -1   -1   0   
$EndComp
$Comp
L Device:C C2
U 1 1 5F248BD9
P 3550 2350
F 0 "C2" V 3802 2350 50  0000 C CNN
F 1 "22p" V 3711 2350 50  0000 C CNN
F 2 "Capacitor_SMD:C_1210_3225Metric_Pad1.42x2.65mm_HandSolder" H 3588 2200 50  0001 C CNN
F 3 "~" H 3550 2350 50  0001 C CNN
	1    3550 2350
	0    -1   -1   0   
$EndComp
$Comp
L Switch:SW_Push_Dual SW2
U 1 1 5F250374
P 5000 3250
F 0 "SW2" H 5000 3535 50  0000 C CNN
F 1 "SW_Push_Dual" H 5000 3444 50  0000 C CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm_H5mm" H 5000 3450 50  0001 C CNN
F 3 "~" H 5000 3450 50  0001 C CNN
	1    5000 3250
	1    0    0    -1  
$EndComp
$Comp
L Device:R R3
U 1 1 5F250CF1
P 4200 2800
F 0 "R3" H 4270 2846 50  0000 L CNN
F 1 "10k" H 4270 2755 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 4130 2800 50  0001 C CNN
F 3 "~" H 4200 2800 50  0001 C CNN
	1    4200 2800
	1    0    0    -1  
$EndComp
$Comp
L RF_Module:RFM95W-868S2 U4
U 1 1 5F256A65
P 6900 2950
F 0 "U4" H 6700 3600 50  0000 C CNN
F 1 "RFM95W-868S2" H 6750 3500 50  0000 R CNN
F 2 "RF_Module:HOPERF_RFM9XW_SMD" H 3600 4600 50  0001 C CNN
F 3 "https://www.hoperf.com/data/upload/portal/20181127/5bfcbea20e9ef.pdf" H 3600 4600 50  0001 C CNN
	1    6900 2950
	1    0    0    -1  
$EndComp
$Comp
L Maxim-Ralf:DS1337 U3
U 1 1 5F251F71
P 5100 6600
F 0 "U3" H 5175 7065 50  0000 C CNN
F 1 "DS1337" H 5175 6974 50  0000 C CNN
F 2 "Package_SO:SO-8_5.3x6.2mm_P1.27mm" H 5300 7000 50  0001 C CNN
F 3 "" H 5300 7000 50  0001 C CNN
	1    5100 6600
	1    0    0    -1  
$EndComp
$Comp
L Device:Crystal Y3
U 1 1 5F25B06B
P 3950 6500
F 0 "Y3" V 3904 6631 50  0000 L CNN
F 1 "32kHz" V 3995 6631 50  0000 L CNN
F 2 "Crystal:Crystal_DS26_D2.0mm_L6.0mm_Horizontal_1EP_style2" H 3950 6500 50  0001 C CNN
F 3 "~" H 3950 6500 50  0001 C CNN
	1    3950 6500
	0    1    1    0   
$EndComp
Wire Wire Line
	3700 2350 3900 2350
Wire Wire Line
	3900 2350 3900 2650
Wire Wire Line
	3900 2650 3700 2650
$Comp
L power:GND #PWR06
U 1 1 5F27DA53
P 3900 2950
F 0 "#PWR06" H 3900 2700 50  0001 C CNN
F 1 "GND" H 3905 2777 50  0000 C CNN
F 2 "" H 3900 2950 50  0001 C CNN
F 3 "" H 3900 2950 50  0001 C CNN
	1    3900 2950
	1    0    0    -1  
$EndComp
Wire Wire Line
	3900 2650 3900 2950
Connection ~ 3900 2650
$Comp
L power:GND #PWR03
U 1 1 5F280613
P 1800 4900
F 0 "#PWR03" H 1800 4650 50  0001 C CNN
F 1 "GND" H 1805 4727 50  0000 C CNN
F 2 "" H 1800 4900 50  0001 C CNN
F 3 "" H 1800 4900 50  0001 C CNN
	1    1800 4900
	1    0    0    -1  
$EndComp
Wire Wire Line
	1800 4450 1800 4900
$Comp
L power:GND #PWR02
U 1 1 5F286723
P 1600 6450
F 0 "#PWR02" H 1600 6200 50  0001 C CNN
F 1 "GND" H 1605 6277 50  0000 C CNN
F 2 "" H 1600 6450 50  0001 C CNN
F 3 "" H 1600 6450 50  0001 C CNN
	1    1600 6450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR015
U 1 1 5F28E43E
P 6900 3950
F 0 "#PWR015" H 6900 3700 50  0001 C CNN
F 1 "GND" H 6905 3777 50  0000 C CNN
F 2 "" H 6900 3950 50  0001 C CNN
F 3 "" H 6900 3950 50  0001 C CNN
	1    6900 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	6800 3550 6800 3750
Wire Wire Line
	6800 3750 6900 3750
Wire Wire Line
	7000 3750 7000 3550
Wire Wire Line
	6900 3550 6900 3750
Connection ~ 6900 3750
Wire Wire Line
	6900 3750 7000 3750
Wire Wire Line
	6900 3750 6900 3950
$Comp
L power:+3.3V #PWR014
U 1 1 5F28FB99
P 6900 1800
F 0 "#PWR014" H 6900 1650 50  0001 C CNN
F 1 "+3.3V" H 6915 1973 50  0000 C CNN
F 2 "" H 6900 1800 50  0001 C CNN
F 3 "" H 6900 1800 50  0001 C CNN
	1    6900 1800
	1    0    0    -1  
$EndComp
Wire Wire Line
	6900 1800 6900 2450
$Comp
L power:+3.3V #PWR04
U 1 1 5F297582
P 1850 1050
F 0 "#PWR04" H 1850 900 50  0001 C CNN
F 1 "+3.3V" H 1865 1223 50  0000 C CNN
F 2 "" H 1850 1050 50  0001 C CNN
F 3 "" H 1850 1050 50  0001 C CNN
	1    1850 1050
	1    0    0    -1  
$EndComp
Wire Wire Line
	1800 1450 1800 1300
Wire Wire Line
	1800 1300 1850 1300
Wire Wire Line
	1900 1300 1900 1450
Connection ~ 1850 1300
Wire Wire Line
	1850 1300 1900 1300
Wire Wire Line
	3950 6350 4400 6350
Wire Wire Line
	4400 6350 4400 6400
Wire Wire Line
	4400 6400 4700 6400
Wire Wire Line
	3950 6650 4400 6650
Wire Wire Line
	4400 6650 4400 6550
Wire Wire Line
	4400 6550 4700 6550
Wire Wire Line
	4700 6700 4550 6700
Wire Wire Line
	4550 6700 4550 6750
$Comp
L power:GND #PWR08
U 1 1 5F2B8EF8
P 4550 7050
F 0 "#PWR08" H 4550 6800 50  0001 C CNN
F 1 "GND" H 4555 6877 50  0000 C CNN
F 2 "" H 4550 7050 50  0001 C CNN
F 3 "" H 4550 7050 50  0001 C CNN
	1    4550 7050
	1    0    0    -1  
$EndComp
Wire Wire Line
	4700 6850 4550 6850
Wire Wire Line
	4550 6850 4550 7050
$Comp
L power:+BATT #PWR012
U 1 1 5F2B9D7F
P 5800 4900
F 0 "#PWR012" H 5800 4750 50  0001 C CNN
F 1 "+BATT" H 5815 5073 50  0000 C CNN
F 2 "" H 5800 4900 50  0001 C CNN
F 3 "" H 5800 4900 50  0001 C CNN
	1    5800 4900
	1    0    0    -1  
$EndComp
Wire Wire Line
	5800 6400 5650 6400
Text GLabel 2800 1950 2    50   Output ~ 0
SS
Text GLabel 2800 2050 2    50   Output ~ 0
MOSI
Text GLabel 2800 2150 2    50   Input ~ 0
MISO
Text GLabel 2800 2250 2    50   Output ~ 0
SCK
Wire Wire Line
	2400 2050 2800 2050
Wire Wire Line
	2400 2150 2800 2150
Wire Wire Line
	2400 2250 2800 2250
Text GLabel 3100 3150 2    50   BiDi ~ 0
SCL
Text GLabel 3100 3050 2    50   BiDi ~ 0
SDA
$Comp
L power:GND #PWR011
U 1 1 5F2AFDD5
P 5350 3550
F 0 "#PWR011" H 5350 3300 50  0001 C CNN
F 1 "GND" H 5355 3377 50  0000 C CNN
F 2 "" H 5350 3550 50  0001 C CNN
F 3 "" H 5350 3550 50  0001 C CNN
	1    5350 3550
	1    0    0    -1  
$EndComp
Wire Wire Line
	2400 3250 4200 3250
Wire Wire Line
	4200 3250 4200 2950
$Comp
L power:+3.3V #PWR07
U 1 1 5F2F39AC
P 4200 2500
F 0 "#PWR07" H 4200 2350 50  0001 C CNN
F 1 "+3.3V" H 4215 2673 50  0000 C CNN
F 2 "" H 4200 2500 50  0001 C CNN
F 3 "" H 4200 2500 50  0001 C CNN
	1    4200 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	4200 2500 4200 2650
Text GLabel 6450 6700 2    50   BiDi ~ 0
SCL
Text GLabel 6450 6850 2    50   BiDi ~ 0
SDA
Wire Wire Line
	5650 6850 6300 6850
$Comp
L Device:R R4
U 1 1 5F31162C
P 6000 6400
F 0 "R4" H 6070 6446 50  0000 L CNN
F 1 "10k" H 6070 6355 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 5930 6400 50  0001 C CNN
F 3 "~" H 6000 6400 50  0001 C CNN
	1    6000 6400
	1    0    0    -1  
$EndComp
$Comp
L Device:R R5
U 1 1 5F311A32
P 6300 6400
F 0 "R5" H 6370 6446 50  0000 L CNN
F 1 "10k" H 6370 6355 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 6230 6400 50  0001 C CNN
F 3 "~" H 6300 6400 50  0001 C CNN
	1    6300 6400
	1    0    0    -1  
$EndComp
Wire Wire Line
	6300 6550 6300 6850
Connection ~ 6300 6850
Wire Wire Line
	6300 6850 6450 6850
Wire Wire Line
	6000 6250 6150 6250
Wire Wire Line
	6150 6250 6150 6100
$Comp
L power:+3.3V #PWR013
U 1 1 5F316640
P 6150 6100
F 0 "#PWR013" H 6150 5950 50  0001 C CNN
F 1 "+3.3V" H 6165 6273 50  0000 C CNN
F 2 "" H 6150 6100 50  0001 C CNN
F 3 "" H 6150 6100 50  0001 C CNN
	1    6150 6100
	1    0    0    -1  
$EndComp
Text GLabel 6150 2950 0    50   Input ~ 0
SS
Text GLabel 6150 2750 0    50   Input ~ 0
MOSI
Text GLabel 5500 2850 0    50   Output ~ 0
MISO
Text GLabel 6150 2650 0    50   Input ~ 0
SCK
Wire Wire Line
	6400 3150 5900 3150
Wire Wire Line
	5900 3150 5900 3950
Wire Wire Line
	5900 3950 2400 3950
Wire Wire Line
	7400 3350 7750 3350
Wire Wire Line
	7750 3350 7750 4200
Wire Wire Line
	7750 4200 3400 4200
Wire Wire Line
	3400 4200 3400 3650
Wire Wire Line
	3400 3650 2400 3650
Wire Wire Line
	7400 3250 7850 3250
Wire Wire Line
	7850 3250 7850 4300
Wire Wire Line
	7850 4300 3300 4300
Wire Wire Line
	3300 4300 3300 4050
Wire Wire Line
	3300 4050 2400 4050
Wire Wire Line
	7400 3150 7950 3150
Wire Wire Line
	7950 3150 7950 4400
Wire Wire Line
	7950 4400 3200 4400
Wire Wire Line
	3200 4400 3200 4150
Wire Wire Line
	3200 4150 2400 4150
$Comp
L Device:C C3
U 1 1 5F24934E
P 3550 2650
F 0 "C3" V 3710 2650 50  0000 C CNN
F 1 "22p" V 3801 2650 50  0000 C CNN
F 2 "Capacitor_SMD:C_1210_3225Metric_Pad1.42x2.65mm_HandSolder" H 3588 2500 50  0001 C CNN
F 3 "~" H 3550 2650 50  0001 C CNN
	1    3550 2650
	0    1    1    0   
$EndComp
Wire Wire Line
	5650 6700 6000 6700
Wire Wire Line
	6000 6550 6000 6700
Connection ~ 6000 6700
Wire Wire Line
	6000 6700 6450 6700
Wire Wire Line
	6150 6250 6300 6250
Connection ~ 6150 6250
$Comp
L Device:Jumper JP2
U 1 1 5F395051
P 2050 6100
F 0 "JP2" H 2050 6364 50  0000 C CNN
F 1 "Jumper" H 2050 6273 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 2050 6100 50  0001 C CNN
F 3 "~" H 2050 6100 50  0001 C CNN
	1    2050 6100
	1    0    0    -1  
$EndComp
Wire Wire Line
	3000 5900 3350 5900
Wire Wire Line
	2800 6200 2800 6750
Wire Wire Line
	2800 6750 3350 6750
$Comp
L Device:R R2
U 1 1 5F3C19FB
P 3350 6350
F 0 "R2" H 3420 6396 50  0000 L CNN
F 1 "22k" H 3420 6305 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 3280 6350 50  0001 C CNN
F 3 "~" H 3350 6350 50  0001 C CNN
	1    3350 6350
	1    0    0    -1  
$EndComp
Wire Wire Line
	3350 6500 3350 6750
Connection ~ 3350 6750
Wire Wire Line
	3350 6750 4550 6750
Wire Wire Line
	3350 6200 3350 5900
Text GLabel 1650 5800 2    50   Output ~ 0
DTR
Text GLabel 1650 6000 2    50   Input ~ 0
TX
Text GLabel 1650 5900 2    50   Output ~ 0
RX
Text GLabel 2600 3450 2    50   Input ~ 0
RX
Text GLabel 2600 3550 2    50   Output ~ 0
TX
Wire Wire Line
	2400 3450 2600 3450
Wire Wire Line
	2400 3550 2600 3550
$Comp
L Device:C C4
U 1 1 5F414463
P 4600 2800
F 0 "C4" H 4715 2846 50  0000 L CNN
F 1 "100n" H 4715 2755 50  0000 L CNN
F 2 "Capacitor_SMD:C_1210_3225Metric_Pad1.42x2.65mm_HandSolder" H 4638 2650 50  0001 C CNN
F 3 "~" H 4600 2800 50  0001 C CNN
	1    4600 2800
	1    0    0    -1  
$EndComp
Wire Wire Line
	4600 2650 4600 2400
Wire Wire Line
	4600 2400 4750 2400
Text GLabel 4750 2400 2    50   Input ~ 0
DTR
$Comp
L Device:C C5
U 1 1 5F428EA5
P 9100 1650
F 0 "C5" H 9215 1696 50  0000 L CNN
F 1 "100n" H 9215 1605 50  0000 L CNN
F 2 "Capacitor_SMD:C_1210_3225Metric_Pad1.42x2.65mm_HandSolder" H 9138 1500 50  0001 C CNN
F 3 "~" H 9100 1650 50  0001 C CNN
	1    9100 1650
	1    0    0    -1  
$EndComp
$Comp
L Device:C C6
U 1 1 5F4295B4
P 9850 1650
F 0 "C6" H 9965 1696 50  0000 L CNN
F 1 "100n" H 9965 1605 50  0000 L CNN
F 2 "Capacitor_SMD:C_1210_3225Metric_Pad1.42x2.65mm_HandSolder" H 9888 1500 50  0001 C CNN
F 3 "~" H 9850 1650 50  0001 C CNN
	1    9850 1650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR020
U 1 1 5F429E28
P 9100 2100
F 0 "#PWR020" H 9100 1850 50  0001 C CNN
F 1 "GND" H 9105 1927 50  0000 C CNN
F 2 "" H 9100 2100 50  0001 C CNN
F 3 "" H 9100 2100 50  0001 C CNN
	1    9100 2100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR022
U 1 1 5F42A700
P 9850 2100
F 0 "#PWR022" H 9850 1850 50  0001 C CNN
F 1 "GND" H 9855 1927 50  0000 C CNN
F 2 "" H 9850 2100 50  0001 C CNN
F 3 "" H 9850 2100 50  0001 C CNN
	1    9850 2100
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR019
U 1 1 5F42AD71
P 9100 1100
F 0 "#PWR019" H 9100 950 50  0001 C CNN
F 1 "+3.3V" H 9115 1273 50  0000 C CNN
F 2 "" H 9100 1100 50  0001 C CNN
F 3 "" H 9100 1100 50  0001 C CNN
	1    9100 1100
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR021
U 1 1 5F42B3D0
P 9850 1100
F 0 "#PWR021" H 9850 950 50  0001 C CNN
F 1 "+3.3V" H 9865 1273 50  0000 C CNN
F 2 "" H 9850 1100 50  0001 C CNN
F 3 "" H 9850 1100 50  0001 C CNN
	1    9850 1100
	1    0    0    -1  
$EndComp
Wire Wire Line
	9100 1100 9100 1500
Wire Wire Line
	9100 1800 9100 2100
Wire Wire Line
	9850 1100 9850 1500
Wire Wire Line
	9850 1800 9850 2100
$Comp
L Connector:Conn_01x04_Male J9
U 1 1 5F44AB3F
P 9550 3200
F 0 "J9" H 9522 3082 50  0000 R CNN
F 1 "Conn_01x04_Male" H 9522 3173 50  0000 R CNN
F 2 "Connector_JST:JST_PH_B4B-PH-K_1x04_P2.00mm_Vertical" H 9550 3200 50  0001 C CNN
F 3 "~" H 9550 3200 50  0001 C CNN
	1    9550 3200
	-1   0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x04_Male J10
U 1 1 5F44B59A
P 9550 3850
F 0 "J10" H 9522 3732 50  0000 R CNN
F 1 "Conn_01x04_Male" H 9522 3823 50  0000 R CNN
F 2 "Connector_JST:JST_PH_B4B-PH-K_1x04_P2.00mm_Vertical" H 9550 3850 50  0001 C CNN
F 3 "~" H 9550 3850 50  0001 C CNN
	1    9550 3850
	-1   0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x04_Male J11
U 1 1 5F44C0F8
P 9550 4500
F 0 "J11" H 9522 4382 50  0000 R CNN
F 1 "Conn_01x04_Male" H 9522 4473 50  0000 R CNN
F 2 "Connector_JST:JST_PH_B4B-PH-K_1x04_P2.00mm_Vertical" H 9550 4500 50  0001 C CNN
F 3 "~" H 9550 4500 50  0001 C CNN
	1    9550 4500
	-1   0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x04_Male J12
U 1 1 5F44D021
P 9550 5200
F 0 "J12" H 9522 5082 50  0000 R CNN
F 1 "Conn_01x04_Male" H 9522 5173 50  0000 R CNN
F 2 "Connector_JST:JST_PH_B4B-PH-K_1x04_P2.00mm_Vertical" H 9550 5200 50  0001 C CNN
F 3 "~" H 9550 5200 50  0001 C CNN
	1    9550 5200
	-1   0    0    -1  
$EndComp
Wire Wire Line
	8750 3100 8750 3750
Wire Wire Line
	8850 3200 8850 2850
Wire Wire Line
	8850 3200 8850 3850
Connection ~ 8850 3200
Connection ~ 8850 3850
Wire Wire Line
	8850 3850 8850 4500
Connection ~ 8850 4500
Wire Wire Line
	8850 4500 8850 5200
Connection ~ 8750 3750
Wire Wire Line
	8750 3750 8750 4400
Connection ~ 8750 4400
Wire Wire Line
	8750 4400 8750 5100
Connection ~ 8750 5100
Wire Wire Line
	8750 5100 8750 5650
Text GLabel 9250 5300 0    50   BiDi ~ 0
SDA
Text GLabel 9250 5400 0    50   BiDi ~ 0
SCL
Text GLabel 9250 4600 0    50   BiDi ~ 0
SDA
Text GLabel 9250 4700 0    50   BiDi ~ 0
SCL
Text Notes 10300 4300 0    50   ~ 0
Grove-compatible\nConnectors\n(JST-PH)
$Comp
L power:GND #PWR017
U 1 1 5F4C2B4C
P 8750 5650
F 0 "#PWR017" H 8750 5400 50  0001 C CNN
F 1 "GND" H 8755 5477 50  0000 C CNN
F 2 "" H 8750 5650 50  0001 C CNN
F 3 "" H 8750 5650 50  0001 C CNN
	1    8750 5650
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR018
U 1 1 5F4C7E1E
P 8850 2850
F 0 "#PWR018" H 8850 2700 50  0001 C CNN
F 1 "+3.3V" H 8865 3023 50  0000 C CNN
F 2 "" H 8850 2850 50  0001 C CNN
F 3 "" H 8850 2850 50  0001 C CNN
	1    8850 2850
	1    0    0    -1  
$EndComp
Connection ~ 3300 2350
Wire Wire Line
	3300 2350 3400 2350
Wire Wire Line
	3300 2650 3400 2650
Wire Wire Line
	2400 2350 3300 2350
Wire Wire Line
	3000 2450 3000 2650
Wire Wire Line
	3000 2650 3300 2650
Wire Wire Line
	2400 2450 3000 2450
Connection ~ 3300 2650
Text GLabel 2650 2650 2    50   BiDi ~ 0
A0
Text GLabel 2650 2750 2    50   BiDi ~ 0
A1
Text GLabel 2650 2850 2    50   BiDi ~ 0
A2
Text GLabel 2650 2950 2    50   BiDi ~ 0
A3
Wire Wire Line
	2400 3050 3100 3050
Wire Wire Line
	2400 3150 3100 3150
Wire Wire Line
	2400 2650 2650 2650
Wire Wire Line
	2400 2750 2650 2750
Wire Wire Line
	2400 2850 2650 2850
Wire Wire Line
	2400 2950 2650 2950
Text GLabel 9250 4050 0    50   BiDi ~ 0
A0
Text GLabel 9250 3950 0    50   BiDi ~ 0
A1
Text GLabel 9250 3400 0    50   BiDi ~ 0
A2
Text GLabel 9250 3300 0    50   BiDi ~ 0
A3
Wire Wire Line
	9250 3300 9350 3300
Wire Wire Line
	9250 3400 9350 3400
Wire Wire Line
	9250 3950 9350 3950
Wire Wire Line
	9250 4050 9350 4050
Wire Wire Line
	9250 4600 9350 4600
Wire Wire Line
	9250 4700 9350 4700
Wire Wire Line
	9250 5300 9350 5300
Wire Wire Line
	9250 5400 9350 5400
Wire Wire Line
	8850 5200 9350 5200
Wire Wire Line
	8750 5100 9350 5100
Wire Wire Line
	8850 4500 9350 4500
Wire Wire Line
	8750 4400 9350 4400
Wire Wire Line
	8850 3850 9350 3850
Wire Wire Line
	8750 3750 9350 3750
Wire Wire Line
	8850 3200 9350 3200
Wire Wire Line
	8750 3100 9350 3100
Text Notes 1200 7000 0    50   ~ 0
Pin Header Female\nEdge Mounted for\nProgramming only
$Comp
L Connector:Screw_Terminal_01x01 J7
U 1 1 5F5CECB8
P 7300 5550
F 0 "J7" H 7380 5592 50  0000 L CNN
F 1 "Screw_Terminal_01x01" H 7380 5501 50  0000 L CNN
F 2 "Connector_Pin:Pin_D1.0mm_L10.0mm_LooseFit" H 7300 5550 50  0001 C CNN
F 3 "~" H 7300 5550 50  0001 C CNN
	1    7300 5550
	1    0    0    -1  
$EndComp
$Comp
L Connector:Screw_Terminal_01x01 J8
U 1 1 5F5CFEA7
P 7300 5850
F 0 "J8" H 7380 5892 50  0000 L CNN
F 1 "Screw_Terminal_01x01" H 7380 5801 50  0000 L CNN
F 2 "Connector_Pin:Pin_D1.0mm_L10.0mm_LooseFit" H 7300 5850 50  0001 C CNN
F 3 "~" H 7300 5850 50  0001 C CNN
	1    7300 5850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR016
U 1 1 5F5D09D2
P 7050 6050
F 0 "#PWR016" H 7050 5800 50  0001 C CNN
F 1 "GND" H 7055 5877 50  0000 C CNN
F 2 "" H 7050 6050 50  0001 C CNN
F 3 "" H 7050 6050 50  0001 C CNN
	1    7050 6050
	1    0    0    -1  
$EndComp
$Comp
L Device:Jumper JP3
U 1 1 5F5DE700
P 4450 5900
F 0 "JP3" H 4450 6164 50  0000 C CNN
F 1 "Jumper" H 4450 6073 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 4450 5900 50  0001 C CNN
F 3 "~" H 4450 5900 50  0001 C CNN
	1    4450 5900
	1    0    0    -1  
$EndComp
Wire Wire Line
	7100 5850 7050 5850
Wire Wire Line
	7050 5850 7050 6050
$Comp
L power:+3.3V #PWR05
U 1 1 5F5FB2B4
P 2450 5350
F 0 "#PWR05" H 2450 5200 50  0001 C CNN
F 1 "+3.3V" H 2465 5523 50  0000 C CNN
F 2 "" H 2450 5350 50  0001 C CNN
F 3 "" H 2450 5350 50  0001 C CNN
	1    2450 5350
	1    0    0    -1  
$EndComp
Wire Wire Line
	2450 5350 2450 5900
Wire Wire Line
	2450 5900 2600 5900
Wire Wire Line
	4200 3250 4400 3250
Connection ~ 4200 3250
Wire Wire Line
	4600 2950 4600 3250
Connection ~ 4600 3250
Wire Wire Line
	4600 3250 4750 3250
Connection ~ 5800 5900
Wire Wire Line
	5800 5900 5800 6400
Wire Wire Line
	4150 5900 3350 5900
Connection ~ 3350 5900
Wire Wire Line
	4750 5900 5800 5900
NoConn ~ 7400 2650
NoConn ~ 7400 2850
NoConn ~ 7400 2950
NoConn ~ 7400 3050
NoConn ~ 1200 1950
NoConn ~ 5650 6550
NoConn ~ 2700 4350
NoConn ~ -3800 -1950
Text Notes 7600 7500 0    50   ~ 0
CaLoRa-Node
Text Notes 8300 7650 0    50   ~ 0
August 2020
$Comp
L Connector:AVR-ISP-6 J6
U 1 1 5F29DFD2
P 5150 1400
F 0 "J6" H 4821 1496 50  0000 R CNN
F 1 "AVR-ISP-6" H 4821 1405 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x03_P2.54mm_Vertical" V 4900 1450 50  0001 C CNN
F 3 " ~" H 3875 850 50  0001 C CNN
	1    5150 1400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR010
U 1 1 5F2C0EEA
P 5050 2000
F 0 "#PWR010" H 5050 1750 50  0001 C CNN
F 1 "GND" H 5055 1827 50  0000 C CNN
F 2 "" H 5050 2000 50  0001 C CNN
F 3 "" H 5050 2000 50  0001 C CNN
	1    5050 2000
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR09
U 1 1 5F2C1959
P 5050 750
F 0 "#PWR09" H 5050 600 50  0001 C CNN
F 1 "+3.3V" H 5065 923 50  0000 C CNN
F 2 "" H 5050 750 50  0001 C CNN
F 3 "" H 5050 750 50  0001 C CNN
	1    5050 750 
	1    0    0    -1  
$EndComp
Wire Wire Line
	5050 750  5050 900 
Wire Wire Line
	5050 1800 5050 2000
Text GLabel 5800 1200 2    50   Output ~ 0
MISO
Text GLabel 5800 1300 2    50   Input ~ 0
MOSI
Text GLabel 5800 1400 2    50   Input ~ 0
SCK
Wire Wire Line
	5550 1500 5700 1500
Wire Wire Line
	5700 1500 5700 2250
Wire Wire Line
	5700 2250 4400 2250
Wire Wire Line
	4400 2250 4400 3250
Connection ~ 4400 3250
Wire Wire Line
	4400 3250 4600 3250
Wire Wire Line
	5550 1200 5800 1200
Wire Wire Line
	5550 1300 5800 1300
Wire Wire Line
	5550 1400 5800 1400
$Comp
L Connector:Conn_01x02_Male J4
U 1 1 5F2FA80A
P 2750 3850
F 0 "J4" H 2722 3732 50  0000 R CNN
F 1 "Conn_01x02_Male" H 2722 3823 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 2750 3850 50  0001 C CNN
F 3 "~" H 2750 3850 50  0001 C CNN
	1    2750 3850
	-1   0    0    1   
$EndComp
$Comp
L Connector:Conn_01x02_Male J5
U 1 1 5F2FB729
P 2800 1850
F 0 "J5" H 2772 1732 50  0000 R CNN
F 1 "Conn_01x02_Male" H 2772 1823 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 2800 1850 50  0001 C CNN
F 3 "~" H 2800 1850 50  0001 C CNN
	1    2800 1850
	-1   0    0    1   
$EndComp
Wire Wire Line
	2400 1950 2550 1950
Wire Wire Line
	2400 1750 2600 1750
Wire Wire Line
	2400 1850 2600 1850
Wire Wire Line
	2400 3750 2550 3750
Wire Wire Line
	2400 3850 2550 3850
$Comp
L Connector:Conn_01x01_Male J2
U 1 1 5F342A2E
P 850 1750
F 0 "J2" H 958 1931 50  0000 C CNN
F 1 "Conn_01x01_Male" H 958 1840 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x01_P2.54mm_Vertical" H 850 1750 50  0001 C CNN
F 3 "~" H 850 1750 50  0001 C CNN
	1    850  1750
	1    0    0    -1  
$EndComp
Wire Wire Line
	2450 6100 2450 5900
Connection ~ 2450 5900
Wire Wire Line
	1600 6300 1600 6450
Wire Wire Line
	1250 6300 1600 6300
Wire Wire Line
	1250 6000 1650 6000
Wire Wire Line
	1250 5900 1650 5900
Wire Wire Line
	1250 5800 1650 5800
$Comp
L Connector:Conn_01x06_Male J1
U 1 1 5F2F30D5
P 1050 6000
F 0 "J1" H 1150 6450 50  0000 C CNN
F 1 "Conn_01x06_Male" H 1150 6350 50  0000 C CNN
F 2 "KiCAD-Ralf:TestPoint_Pad_6x1.5x4.0mm" H 1050 6000 50  0001 C CNN
F 3 "~" H 1050 6000 50  0001 C CNN
	1    1050 6000
	1    0    0    -1  
$EndComp
NoConn ~ 1250 6200
NoConn ~ -1650 3800
Wire Wire Line
	1250 6100 1750 6100
Wire Wire Line
	2350 6100 2450 6100
Wire Wire Line
	6150 2650 6400 2650
Wire Wire Line
	6150 2750 6400 2750
Wire Wire Line
	6150 2950 6400 2950
$Comp
L Jumper:SolderJumper_2_Open JP4
U 1 1 5F36489D
P 5750 2850
F 0 "JP4" H 5600 3100 50  0000 C CNN
F 1 "SolderJumper_2_Open" H 5500 3000 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_Pad1.0x1.5mm" H 5750 2850 50  0001 C CNN
F 3 "~" H 5750 2850 50  0001 C CNN
	1    5750 2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	5900 2850 6400 2850
Wire Wire Line
	5500 2850 5600 2850
$Comp
L Connector:Screw_Terminal_01x01 J3
U 1 1 5F346870
P 7300 5200
F 0 "J3" H 7380 5242 50  0000 L CNN
F 1 "Screw_Terminal_01x01" H 7380 5151 50  0000 L CNN
F 2 "Connector_Pin:Pin_D1.0mm_L10.0mm_LooseFit" H 7300 5200 50  0001 C CNN
F 3 "~" H 7300 5200 50  0001 C CNN
	1    7300 5200
	1    0    0    -1  
$EndComp
$Comp
L Device:Q_PMOS_GSD Q1
U 1 1 5F37ADCF
P 2800 6000
F 0 "Q1" V 3142 6000 50  0000 C CNN
F 1 "Q_PMOS_GSD" V 3051 6000 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23_Handsoldering" H 3000 6100 50  0001 C CNN
F 3 "~" H 2800 6000 50  0001 C CNN
	1    2800 6000
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5800 4900 5800 5200
Wire Wire Line
	5800 5200 7100 5200
Connection ~ 5800 5200
Wire Wire Line
	5800 5200 5800 5900
Wire Wire Line
	7100 5550 7050 5550
Wire Wire Line
	7050 5550 7050 5850
Connection ~ 7050 5850
Wire Wire Line
	4750 3250 4750 3450
Wire Wire Line
	4750 3450 4800 3450
Connection ~ 4750 3250
Wire Wire Line
	4750 3250 4800 3250
Wire Wire Line
	5200 3250 5350 3250
Wire Wire Line
	5350 3250 5350 3450
Wire Wire Line
	5200 3450 5350 3450
Connection ~ 5350 3450
Wire Wire Line
	5350 3450 5350 3550
Wire Wire Line
	1050 1750 1200 1750
$Comp
L Device:R R6
U 1 1 5F2EE358
P 850 2450
F 0 "R6" H 920 2496 50  0000 L CNN
F 1 "100k" H 920 2405 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 780 2450 50  0001 C CNN
F 3 "~" H 850 2450 50  0001 C CNN
	1    850  2450
	1    0    0    -1  
$EndComp
$Comp
L Device:R R7
U 1 1 5F2EEDDB
P 850 2900
F 0 "R7" H 920 2946 50  0000 L CNN
F 1 "100k" H 920 2855 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 780 2900 50  0001 C CNN
F 3 "~" H 850 2900 50  0001 C CNN
	1    850  2900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR024
U 1 1 5F2EF74E
P 850 3200
F 0 "#PWR024" H 850 2950 50  0001 C CNN
F 1 "GND" H 855 3027 50  0000 C CNN
F 2 "" H 850 3200 50  0001 C CNN
F 3 "" H 850 3200 50  0001 C CNN
	1    850  3200
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR023
U 1 1 5F2EFEB8
P 850 2200
F 0 "#PWR023" H 850 2050 50  0001 C CNN
F 1 "+3.3V" H 865 2373 50  0000 C CNN
F 2 "" H 850 2200 50  0001 C CNN
F 3 "" H 850 2200 50  0001 C CNN
	1    850  2200
	1    0    0    -1  
$EndComp
Wire Wire Line
	850  2200 850  2300
Wire Wire Line
	850  3050 850  3200
$Comp
L MCU_Microchip_ATmega:ATmega328-AU U2
U 1 1 5F2468F3
P 1800 2950
F 0 "U2" H 2100 1450 50  0000 C CNN
F 1 "ATmega328-AU" H 2350 1350 50  0000 C CNN
F 2 "Package_QFP:TQFP-32_7x7mm_P0.8mm" H 1800 2950 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/ATmega328_P%20AVR%20MCU%20with%20picoPower%20Technology%20Data%20Sheet%2040001984A.pdf" H 1800 2950 50  0001 C CNN
	1    1800 2950
	1    0    0    -1  
$EndComp
Wire Wire Line
	1200 2050 1100 2050
Wire Wire Line
	1100 2700 850  2700
Wire Wire Line
	850  2600 850  2700
Wire Wire Line
	850  2700 850  2750
Connection ~ 850  2700
Wire Wire Line
	1100 2050 1100 2700
$Comp
L Device:R R1
U 1 1 5F30E323
P 2550 1350
F 0 "R1" H 2620 1396 50  0000 L CNN
F 1 "10k" H 2620 1305 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 2480 1350 50  0001 C CNN
F 3 "~" H 2550 1350 50  0001 C CNN
	1    2550 1350
	1    0    0    -1  
$EndComp
Wire Wire Line
	2550 1500 2550 1950
Connection ~ 2550 1950
Wire Wire Line
	2550 1950 2800 1950
$Comp
L power:+3.3V #PWR01
U 1 1 5F31B056
P 2550 1050
F 0 "#PWR01" H 2550 900 50  0001 C CNN
F 1 "+3.3V" H 2565 1223 50  0000 C CNN
F 2 "" H 2550 1050 50  0001 C CNN
F 3 "" H 2550 1050 50  0001 C CNN
	1    2550 1050
	1    0    0    -1  
$EndComp
Wire Wire Line
	2550 1050 2550 1200
Wire Wire Line
	1850 1050 1850 1300
$EndSCHEMATC
