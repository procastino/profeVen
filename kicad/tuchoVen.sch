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
L MCU_Microchip_ATtiny:ATtiny85-20PU U1
U 1 1 61929EFA
P 4200 4000
F 0 "U1" H 3671 4046 50  0000 R CNN
F 1 "ATtiny85-20PU" H 3671 3955 50  0000 R CNN
F 2 "Package_DIP:DIP-8_W7.62mm" H 4200 4000 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/atmel-2586-avr-8-bit-microcontroller-attiny25-attiny45-attiny85_datasheet.pdf" H 4200 4000 50  0001 C CNN
	1    4200 4000
	1    0    0    -1  
$EndComp
$Comp
L Device:LED_BGCR D1
U 1 1 6192B196
P 6000 3900
F 0 "D1" H 6000 4397 50  0000 C CNN
F 1 "LED_BGCR" H 6000 4306 50  0000 C CNN
F 2 "LED_THT:LED_D5.0mm-4_RGB" H 6000 3850 50  0001 C CNN
F 3 "~" H 6000 3850 50  0001 C CNN
	1    6000 3900
	-1   0    0    -1  
$EndComp
$Comp
L Device:R R2
U 1 1 6192E0BF
P 5400 3900
F 0 "R2" V 5193 3900 50  0000 C CNN
F 1 "330" V 5284 3900 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 5330 3900 50  0001 C CNN
F 3 "~" H 5400 3900 50  0001 C CNN
	1    5400 3900
	0    1    1    0   
$EndComp
$Comp
L Device:R R3
U 1 1 6192F3DC
P 5650 3700
F 0 "R3" V 5450 3700 50  0000 C CNN
F 1 "330" V 5550 3700 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 5580 3700 50  0001 C CNN
F 3 "~" H 5650 3700 50  0001 C CNN
	1    5650 3700
	0    1    1    0   
$EndComp
$Comp
L Device:R R1
U 1 1 6192F6F4
P 5250 4100
F 0 "R1" V 5043 4100 50  0000 C CNN
F 1 "220" V 5134 4100 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 5180 4100 50  0001 C CNN
F 3 "~" H 5250 4100 50  0001 C CNN
	1    5250 4100
	0    1    1    0   
$EndComp
Wire Wire Line
	4800 3800 4850 3800
Wire Wire Line
	5250 3800 5250 3900
Wire Wire Line
	4800 3900 4900 3900
Wire Wire Line
	5100 3900 5100 4100
$Comp
L Switch:SW_DIP_x01 SW1
U 1 1 6192BF98
P 4200 5000
F 0 "SW1" V 4154 4870 50  0000 R CNN
F 1 "SW_DIP_x01" V 4245 4870 50  0000 R CNN
F 2 "Button_Switch_THT:SW_CuK_OS102011MA1QN1_SPDT_Angled" H 4200 5000 50  0001 C CNN
F 3 "~" H 4200 5000 50  0001 C CNN
	1    4200 5000
	0    -1   1    0   
$EndComp
Wire Wire Line
	4200 4600 4200 4700
Wire Wire Line
	4800 4000 5050 4000
Wire Wire Line
	4800 4100 4950 4100
Wire Wire Line
	4200 4700 4500 4700
Connection ~ 4200 4700
Text Label 4500 4700 0    50   ~ 0
g0
Text Label 6350 3900 0    50   ~ 0
g0
Wire Wire Line
	4950 4100 4950 5500
Wire Wire Line
	5050 4000 5050 4550
Wire Wire Line
	5500 6150 5600 6150
Wire Wire Line
	5500 6050 5500 6150
Text Label 5600 6150 0    50   ~ 0
g0
Wire Wire Line
	5500 5100 5550 5100
Wire Wire Line
	5500 5050 5500 5100
Text Label 5550 5100 0    50   ~ 0
g0
Connection ~ 6350 4550
Wire Wire Line
	6350 5500 6350 4550
Wire Wire Line
	5900 5500 6350 5500
Wire Wire Line
	6350 4550 6350 4500
Wire Wire Line
	5900 4550 6350 4550
Wire Wire Line
	4950 5500 5500 5500
Wire Wire Line
	5050 4550 5500 4550
$Comp
L Device:R R5
U 1 1 6193C7F7
P 5500 5900
F 0 "R5" H 5570 5946 50  0000 L CNN
F 1 "10K" H 5570 5855 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 5430 5900 50  0001 C CNN
F 3 "~" H 5500 5900 50  0001 C CNN
	1    5500 5900
	1    0    0    -1  
$EndComp
$Comp
L Device:R R4
U 1 1 6193C1A6
P 5500 4900
F 0 "R4" H 5570 4946 50  0000 L CNN
F 1 "10K" H 5570 4855 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 5430 4900 50  0001 C CNN
F 3 "~" H 5500 4900 50  0001 C CNN
	1    5500 4900
	1    0    0    -1  
$EndComp
Wire Wire Line
	6200 3900 6300 3900
Wire Wire Line
	4800 3700 5500 3700
Wire Wire Line
	5550 3900 5800 3900
Wire Wire Line
	5400 4100 5800 4100
$Comp
L Connector:Conn_01x06_Female J1
U 1 1 619370B0
P 2900 4800
F 0 "J1" H 2792 5185 50  0000 C CNN
F 1 "Conn_01x06_Female" H 2792 5094 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x06_P2.54mm_Horizontal" H 2900 4800 50  0001 C CNN
F 3 "~" H 2900 4800 50  0001 C CNN
	1    2900 4800
	-1   0    0    -1  
$EndComp
Wire Wire Line
	3100 4600 3450 4600
Wire Wire Line
	3450 4600 3450 3100
Wire Wire Line
	3450 3100 3750 3100
Connection ~ 4200 3100
Wire Wire Line
	3100 5100 3950 5100
Wire Wire Line
	3950 5100 3950 4700
Wire Wire Line
	3950 4700 4200 4700
Wire Wire Line
	3100 5000 4800 5000
Wire Wire Line
	4800 5000 4800 4200
Wire Wire Line
	3100 4900 3600 4900
Connection ~ 4800 3700
Wire Wire Line
	3100 4800 3550 4800
Connection ~ 4850 3800
Wire Wire Line
	4850 3800 5250 3800
Wire Wire Line
	3100 4700 3500 4700
Connection ~ 4900 3900
Wire Wire Line
	4900 3900 5100 3900
Text Label 4600 3100 0    50   ~ 0
v0
Text Label 6350 4500 0    50   ~ 0
v0
Wire Wire Line
	4200 3100 4600 3100
$Comp
L power:PWR_FLAG #FLG01
U 1 1 6194AB4F
P 3750 3100
F 0 "#FLG01" H 3750 3175 50  0001 C CNN
F 1 "PWR_FLAG" H 3750 3273 50  0000 C CNN
F 2 "" H 3750 3100 50  0001 C CNN
F 3 "~" H 3750 3100 50  0001 C CNN
	1    3750 3100
	1    0    0    -1  
$EndComp
Connection ~ 3750 3100
Wire Wire Line
	3750 3100 4200 3100
$Comp
L power:PWR_FLAG #FLG03
U 1 1 6194C8AD
P 6300 3900
F 0 "#FLG03" H 6300 3975 50  0001 C CNN
F 1 "PWR_FLAG" H 6300 4073 50  0000 C CNN
F 2 "" H 6300 3900 50  0001 C CNN
F 3 "~" H 6300 3900 50  0001 C CNN
	1    6300 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	4200 3400 4200 3100
Wire Wire Line
	3500 3250 4900 3250
Wire Wire Line
	3500 3250 3500 4700
Wire Wire Line
	4900 3250 4900 3900
Wire Wire Line
	4850 3300 3550 3300
Wire Wire Line
	3550 3300 3550 4800
Wire Wire Line
	4850 3300 4850 3800
Wire Wire Line
	3600 3350 4800 3350
Wire Wire Line
	3600 3350 3600 4900
Wire Wire Line
	4800 3350 4800 3700
Connection ~ 6300 3900
Wire Wire Line
	6300 3900 6350 3900
$Comp
L power:PWR_FLAG #FLG02
U 1 1 61962946
P 4500 5400
F 0 "#FLG02" H 4500 5475 50  0001 C CNN
F 1 "PWR_FLAG" H 4500 5573 50  0000 C CNN
F 2 "" H 4500 5400 50  0001 C CNN
F 3 "~" H 4500 5400 50  0001 C CNN
	1    4500 5400
	1    0    0    -1  
$EndComp
Wire Wire Line
	4500 5400 4200 5400
Wire Wire Line
	5500 4550 5500 4750
Wire Wire Line
	5500 5500 5500 5750
$Comp
L Switch:SW_SPST SW2
U 1 1 619899CD
P 5700 4550
F 0 "SW2" H 5700 4785 50  0000 C CNN
F 1 "SW_SPST" H 5700 4694 50  0000 C CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm" H 5700 4550 50  0001 C CNN
F 3 "~" H 5700 4550 50  0001 C CNN
	1    5700 4550
	1    0    0    -1  
$EndComp
Connection ~ 5500 4550
$Comp
L Switch:SW_SPST SW3
U 1 1 6198A13A
P 5700 5500
F 0 "SW3" H 5700 5735 50  0000 C CNN
F 1 "SW_SPST" H 5700 5644 50  0000 C CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm" H 5700 5500 50  0001 C CNN
F 3 "~" H 5700 5500 50  0001 C CNN
	1    5700 5500
	1    0    0    -1  
$EndComp
Connection ~ 5500 5500
$Comp
L Connector:Conn_01x01_Female J2
U 1 1 61943CB4
P 4200 2600
F 0 "J2" V 4138 2512 50  0000 R CNN
F 1 "Conn_01x01_Female" V 4047 2512 50  0000 R CNN
F 2 "Connector_Wire:SolderWire-0.25sqmm_1x01_D0.65mm_OD1.7mm_Relief" H 4200 2600 50  0001 C CNN
F 3 "~" H 4200 2600 50  0001 C CNN
	1    4200 2600
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4200 3100 4200 2800
$Comp
L Connector:Conn_01x01_Female J3
U 1 1 619519A2
P 4200 5600
F 0 "J3" V 4046 5648 50  0000 L CNN
F 1 "Conn_01x01_Female" V 4137 5648 50  0000 L CNN
F 2 "Connector_Wire:SolderWire-0.25sqmm_1x01_D0.65mm_OD1.7mm_Relief" H 4200 5600 50  0001 C CNN
F 3 "~" H 4200 5600 50  0001 C CNN
	1    4200 5600
	0    1    1    0   
$EndComp
Connection ~ 4200 5400
Wire Wire Line
	4200 5300 4200 5400
$EndSCHEMATC