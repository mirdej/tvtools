EESchema Schematic File Version 4
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
L power:GND #PWR01
U 1 1 5E328B56
P 1150 1900
F 0 "#PWR01" H 1150 1650 50  0001 C CNN
F 1 "GND" V 1155 1772 50  0000 R CNN
F 2 "" H 1150 1900 50  0001 C CNN
F 3 "" H 1150 1900 50  0001 C CNN
	1    1150 1900
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR02
U 1 1 5E328B9E
P 1150 2350
F 0 "#PWR02" H 1150 2100 50  0001 C CNN
F 1 "GND" V 1155 2222 50  0000 R CNN
F 2 "" H 1150 2350 50  0001 C CNN
F 3 "" H 1150 2350 50  0001 C CNN
	1    1150 2350
	0    1    1    0   
$EndComp
Text Label 1550 1900 0    50   ~ 0
up
$Comp
L Switch:SW_Push SW1
U 1 1 5E328D31
P 1350 1900
F 0 "SW1" H 1350 2185 50  0000 C CNN
F 1 "SW_Push" H 1350 2094 50  0000 C CNN
F 2 "synkie_footprints:Alps_Tactile_Switch" H 1350 2100 50  0001 C CNN
F 3 "" H 1350 2100 50  0001 C CNN
	1    1350 1900
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW2
U 1 1 5E328DA2
P 1350 2350
F 0 "SW2" H 1350 2635 50  0000 C CNN
F 1 "SW_Push" H 1350 2544 50  0000 C CNN
F 2 "synkie_footprints:Alps_Tactile_Switch" H 1350 2550 50  0001 C CNN
F 3 "" H 1350 2550 50  0001 C CNN
	1    1350 2350
	1    0    0    -1  
$EndComp
Text Label 1550 2350 0    50   ~ 0
down
$Comp
L power:GND #PWR03
U 1 1 5E32916D
P 1200 3000
F 0 "#PWR03" H 1200 2750 50  0001 C CNN
F 1 "GND" V 1205 2872 50  0000 R CNN
F 2 "" H 1200 3000 50  0001 C CNN
F 3 "" H 1200 3000 50  0001 C CNN
	1    1200 3000
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR04
U 1 1 5E329173
P 1200 3450
F 0 "#PWR04" H 1200 3200 50  0001 C CNN
F 1 "GND" V 1205 3322 50  0000 R CNN
F 2 "" H 1200 3450 50  0001 C CNN
F 3 "" H 1200 3450 50  0001 C CNN
	1    1200 3450
	0    1    1    0   
$EndComp
$Comp
L Switch:SW_Push SW3
U 1 1 5E32917A
P 1400 3000
F 0 "SW3" H 1400 3285 50  0000 C CNN
F 1 "SW_Push" H 1400 3194 50  0000 C CNN
F 2 "synkie_footprints:Alps_Tactile_Switch" H 1400 3200 50  0001 C CNN
F 3 "" H 1400 3200 50  0001 C CNN
	1    1400 3000
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW4
U 1 1 5E329180
P 1400 3450
F 0 "SW4" H 1400 3735 50  0000 C CNN
F 1 "SW_Push" H 1400 3644 50  0000 C CNN
F 2 "synkie_footprints:Alps_Tactile_Switch" H 1400 3650 50  0001 C CNN
F 3 "" H 1400 3650 50  0001 C CNN
	1    1400 3450
	1    0    0    -1  
$EndComp
Text Label 1600 3000 0    50   ~ 0
beginning
$Comp
L power:GND #PWR05
U 1 1 5E329692
P 1250 4050
F 0 "#PWR05" H 1250 3800 50  0001 C CNN
F 1 "GND" V 1255 3922 50  0000 R CNN
F 2 "" H 1250 4050 50  0001 C CNN
F 3 "" H 1250 4050 50  0001 C CNN
	1    1250 4050
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR06
U 1 1 5E329698
P 1250 4500
F 0 "#PWR06" H 1250 4250 50  0001 C CNN
F 1 "GND" V 1255 4372 50  0000 R CNN
F 2 "" H 1250 4500 50  0001 C CNN
F 3 "" H 1250 4500 50  0001 C CNN
	1    1250 4500
	0    1    1    0   
$EndComp
$Comp
L Switch:SW_Push SW5
U 1 1 5E32969E
P 1450 4050
F 0 "SW5" H 1450 4335 50  0000 C CNN
F 1 "SW_Push" H 1450 4244 50  0000 C CNN
F 2 "synkie_footprints:Alps_Tactile_Switch" H 1450 4250 50  0001 C CNN
F 3 "" H 1450 4250 50  0001 C CNN
	1    1450 4050
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW6
U 1 1 5E3296A4
P 1450 4500
F 0 "SW6" H 1450 4785 50  0000 C CNN
F 1 "SW_Push" H 1450 4694 50  0000 C CNN
F 2 "synkie_footprints:Alps_Tactile_Switch" H 1450 4700 50  0001 C CNN
F 3 "" H 1450 4700 50  0001 C CNN
	1    1450 4500
	1    0    0    -1  
$EndComp
Text Label 1600 3450 0    50   ~ 0
end-20
Text Label 1650 4050 0    50   ~ 0
playpause
Text Label 1650 4500 0    50   ~ 0
on_air
$Comp
L LED:SK6812MINI D1
U 1 1 5E32A161
P 2950 1150
F 0 "D1" H 3291 1196 50  0000 L CNN
F 1 "SK6812MINI" H 3291 1105 50  0000 L CNN
F 2 "LED_SMD:LED_SK6812MINI_PLCC4_3.5x3.5mm_P1.75mm" H 3000 850 50  0001 L TNN
F 3 "https://cdn-shop.adafruit.com/product-files/2686/SK6812MINI_REV.01-1-2.pdf" H 3050 775 50  0001 L TNN
	1    2950 1150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR08
U 1 1 5E32A3DF
P 2950 1450
F 0 "#PWR08" H 2950 1200 50  0001 C CNN
F 1 "GND" H 2955 1277 50  0000 C CNN
F 2 "" H 2950 1450 50  0001 C CNN
F 3 "" H 2950 1450 50  0001 C CNN
	1    2950 1450
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR07
U 1 1 5E32A5EB
P 2950 850
F 0 "#PWR07" H 2950 700 50  0001 C CNN
F 1 "VCC" H 2967 1023 50  0000 C CNN
F 2 "" H 2950 850 50  0001 C CNN
F 3 "" H 2950 850 50  0001 C CNN
	1    2950 850 
	1    0    0    -1  
$EndComp
$Comp
L LED:SK6812MINI D2
U 1 1 5E32ABAC
P 3550 1150
F 0 "D2" H 3891 1196 50  0000 L CNN
F 1 "SK6812MINI" H 3891 1105 50  0000 L CNN
F 2 "LED_SMD:LED_SK6812MINI_PLCC4_3.5x3.5mm_P1.75mm" H 3600 850 50  0001 L TNN
F 3 "https://cdn-shop.adafruit.com/product-files/2686/SK6812MINI_REV.01-1-2.pdf" H 3650 775 50  0001 L TNN
	1    3550 1150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR010
U 1 1 5E32ABB2
P 3550 1450
F 0 "#PWR010" H 3550 1200 50  0001 C CNN
F 1 "GND" H 3555 1277 50  0000 C CNN
F 2 "" H 3550 1450 50  0001 C CNN
F 3 "" H 3550 1450 50  0001 C CNN
	1    3550 1450
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR09
U 1 1 5E32ABB8
P 3550 850
F 0 "#PWR09" H 3550 700 50  0001 C CNN
F 1 "VCC" H 3567 1023 50  0000 C CNN
F 2 "" H 3550 850 50  0001 C CNN
F 3 "" H 3550 850 50  0001 C CNN
	1    3550 850 
	1    0    0    -1  
$EndComp
$Comp
L LED:SK6812MINI D3
U 1 1 5E32AF06
P 4150 1150
F 0 "D3" H 4491 1196 50  0000 L CNN
F 1 "SK6812MINI" H 4491 1105 50  0000 L CNN
F 2 "LED_SMD:LED_SK6812MINI_PLCC4_3.5x3.5mm_P1.75mm" H 4200 850 50  0001 L TNN
F 3 "https://cdn-shop.adafruit.com/product-files/2686/SK6812MINI_REV.01-1-2.pdf" H 4250 775 50  0001 L TNN
	1    4150 1150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR012
U 1 1 5E32AF0C
P 4150 1450
F 0 "#PWR012" H 4150 1200 50  0001 C CNN
F 1 "GND" H 4155 1277 50  0000 C CNN
F 2 "" H 4150 1450 50  0001 C CNN
F 3 "" H 4150 1450 50  0001 C CNN
	1    4150 1450
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR011
U 1 1 5E32AF12
P 4150 850
F 0 "#PWR011" H 4150 700 50  0001 C CNN
F 1 "VCC" H 4167 1023 50  0000 C CNN
F 2 "" H 4150 850 50  0001 C CNN
F 3 "" H 4150 850 50  0001 C CNN
	1    4150 850 
	1    0    0    -1  
$EndComp
$Comp
L LED:SK6812MINI D4
U 1 1 5E32AF18
P 4750 1150
F 0 "D4" H 5091 1196 50  0000 L CNN
F 1 "SK6812MINI" H 5091 1105 50  0000 L CNN
F 2 "LED_SMD:LED_SK6812MINI_PLCC4_3.5x3.5mm_P1.75mm" H 4800 850 50  0001 L TNN
F 3 "https://cdn-shop.adafruit.com/product-files/2686/SK6812MINI_REV.01-1-2.pdf" H 4850 775 50  0001 L TNN
	1    4750 1150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR017
U 1 1 5E32AF1E
P 4750 1450
F 0 "#PWR017" H 4750 1200 50  0001 C CNN
F 1 "GND" H 4755 1277 50  0000 C CNN
F 2 "" H 4750 1450 50  0001 C CNN
F 3 "" H 4750 1450 50  0001 C CNN
	1    4750 1450
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR016
U 1 1 5E32AF24
P 4750 850
F 0 "#PWR016" H 4750 700 50  0001 C CNN
F 1 "VCC" H 4767 1023 50  0000 C CNN
F 2 "" H 4750 850 50  0001 C CNN
F 3 "" H 4750 850 50  0001 C CNN
	1    4750 850 
	1    0    0    -1  
$EndComp
$Comp
L LED:SK6812MINI D5
U 1 1 5E32B3DC
P 5350 1150
F 0 "D5" H 5691 1196 50  0000 L CNN
F 1 "SK6812MINI" H 5691 1105 50  0000 L CNN
F 2 "LED_SMD:LED_SK6812MINI_PLCC4_3.5x3.5mm_P1.75mm" H 5400 850 50  0001 L TNN
F 3 "https://cdn-shop.adafruit.com/product-files/2686/SK6812MINI_REV.01-1-2.pdf" H 5450 775 50  0001 L TNN
	1    5350 1150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR019
U 1 1 5E32B3E2
P 5350 1450
F 0 "#PWR019" H 5350 1200 50  0001 C CNN
F 1 "GND" H 5355 1277 50  0000 C CNN
F 2 "" H 5350 1450 50  0001 C CNN
F 3 "" H 5350 1450 50  0001 C CNN
	1    5350 1450
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR018
U 1 1 5E32B3E8
P 5350 850
F 0 "#PWR018" H 5350 700 50  0001 C CNN
F 1 "VCC" H 5367 1023 50  0000 C CNN
F 2 "" H 5350 850 50  0001 C CNN
F 3 "" H 5350 850 50  0001 C CNN
	1    5350 850 
	1    0    0    -1  
$EndComp
$Comp
L LED:SK6812MINI D6
U 1 1 5E32B3EE
P 5950 1150
F 0 "D6" H 6291 1196 50  0000 L CNN
F 1 "SK6812MINI" H 6291 1105 50  0000 L CNN
F 2 "LED_SMD:LED_SK6812MINI_PLCC4_3.5x3.5mm_P1.75mm" H 6000 850 50  0001 L TNN
F 3 "https://cdn-shop.adafruit.com/product-files/2686/SK6812MINI_REV.01-1-2.pdf" H 6050 775 50  0001 L TNN
	1    5950 1150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR021
U 1 1 5E32B3F4
P 5950 1450
F 0 "#PWR021" H 5950 1200 50  0001 C CNN
F 1 "GND" H 5955 1277 50  0000 C CNN
F 2 "" H 5950 1450 50  0001 C CNN
F 3 "" H 5950 1450 50  0001 C CNN
	1    5950 1450
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR020
U 1 1 5E32B3FA
P 5950 850
F 0 "#PWR020" H 5950 700 50  0001 C CNN
F 1 "VCC" H 5967 1023 50  0000 C CNN
F 2 "" H 5950 850 50  0001 C CNN
F 3 "" H 5950 850 50  0001 C CNN
	1    5950 850 
	1    0    0    -1  
$EndComp
Text Label 2650 1150 2    50   ~ 0
pix
$Comp
L Connector:Conn_01x10_Male J1
U 1 1 5E32C4A4
P 4400 3150
F 0 "J1" H 4506 3728 50  0000 C CNN
F 1 "Conn_01x10_Male" H 4506 3637 50  0000 C CNN
F 2 "synkie_footprints:IDC-Header_2x05_P2.54mm_Vertical" H 4400 3150 50  0001 C CNN
F 3 "~" H 4400 3150 50  0001 C CNN
	1    4400 3150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR015
U 1 1 5E32CDAF
P 4600 3650
F 0 "#PWR015" H 4600 3400 50  0001 C CNN
F 1 "GND" H 4605 3477 50  0000 C CNN
F 2 "" H 4600 3650 50  0001 C CNN
F 3 "" H 4600 3650 50  0001 C CNN
	1    4600 3650
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR013
U 1 1 5E32D1F1
P 4600 2750
F 0 "#PWR013" H 4600 2600 50  0001 C CNN
F 1 "VCC" H 4617 2923 50  0000 C CNN
F 2 "" H 4600 2750 50  0001 C CNN
F 3 "" H 4600 2750 50  0001 C CNN
	1    4600 2750
	1    0    0    -1  
$EndComp
Text Label 4600 2850 0    50   ~ 0
pix
$Comp
L power:GND #PWR014
U 1 1 5E32DA6C
P 4600 2950
F 0 "#PWR014" H 4600 2700 50  0001 C CNN
F 1 "GND" V 4605 2822 50  0000 R CNN
F 2 "" H 4600 2950 50  0001 C CNN
F 3 "" H 4600 2950 50  0001 C CNN
	1    4600 2950
	0    -1   -1   0   
$EndComp
Text Label 4600 3050 0    50   ~ 0
up
Text Label 4600 3150 0    50   ~ 0
down
Text Label 4600 3250 0    50   ~ 0
beginning
Text Label 4600 3350 0    50   ~ 0
end-20
Text Label 4600 3450 0    50   ~ 0
playpause
Text Label 4600 3550 0    50   ~ 0
on_air
$EndSCHEMATC