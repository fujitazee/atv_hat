EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 4
Title "Raspberry Pi Zero (W) uHAT Template Board"
Date "2019-02-28"
Rev "1.0"
Comp ""
Comment1 "This Schematic is licensed under MIT Open Source License."
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Connector_Generic:Conn_02x20_Odd_Even J65
U 1 1 5C77771F
P 7900 2400
F 0 "J65" H 7950 3517 50  0000 C CNN
F 1 "GPIO_CONNECTOR" H 7950 3426 50  0000 C CNN
F 2 "lib:PinSocket_2x20_P2.54mm_Vertical_Centered_Anchor" H 7900 2400 50  0001 C CNN
F 3 "https://media.digikey.com/pdf/Data%20Sheets/Sullins%20PDFs/Female_Headers.100_DS.pdf" H 7900 2400 50  0001 C CNN
F 4 "S6104-ND" H 7900 2400 50  0001 C CNN "DPN"
F 5 "PPTC202LFBN-RC" H 7900 2400 50  0001 C CNN "MPN"
F 6 "https://www.digikey.com/product-detail/en/sullins-connector-solutions/PPTC202LFBN-RC/S6104-ND/807240" H 7900 2400 50  0001 C CNN "URL"
	1    7900 2400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0199
U 1 1 5C777805
P 7500 3550
F 0 "#PWR0199" H 7500 3300 50  0001 C CNN
F 1 "GND" H 7505 3377 50  0001 C CNN
F 2 "" H 7500 3550 50  0001 C CNN
F 3 "" H 7500 3550 50  0001 C CNN
	1    7500 3550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0200
U 1 1 5C777838
P 8400 3550
F 0 "#PWR0200" H 8400 3300 50  0001 C CNN
F 1 "GND" H 8405 3377 50  0001 C CNN
F 2 "" H 8400 3550 50  0001 C CNN
F 3 "" H 8400 3550 50  0001 C CNN
	1    8400 3550
	1    0    0    -1  
$EndComp
Wire Wire Line
	7700 1900 7500 1900
Wire Wire Line
	7500 1900 7500 2700
Wire Wire Line
	7700 2700 7500 2700
Connection ~ 7500 2700
Wire Wire Line
	7500 2700 7500 3400
Wire Wire Line
	7700 3400 7500 3400
Connection ~ 7500 3400
Wire Wire Line
	7500 3400 7500 3550
Wire Wire Line
	8200 1700 8400 1700
Wire Wire Line
	8400 1700 8400 2100
Wire Wire Line
	8200 2100 8400 2100
Connection ~ 8400 2100
Wire Wire Line
	8400 2100 8400 2400
Wire Wire Line
	8200 2400 8400 2400
Connection ~ 8400 2400
Wire Wire Line
	8200 2900 8400 2900
Wire Wire Line
	8400 2400 8400 2900
Connection ~ 8400 2900
Wire Wire Line
	8400 2900 8400 3100
Wire Wire Line
	8200 3100 8400 3100
Connection ~ 8400 3100
Wire Wire Line
	8400 3100 8400 3550
$Comp
L power:+3.3V #PWR0196
U 1 1 5C777AB0
P 7450 1400
F 0 "#PWR0196" H 7450 1250 50  0001 C CNN
F 1 "+3.3V" H 7465 1573 50  0000 C CNN
F 2 "" H 7450 1400 50  0001 C CNN
F 3 "" H 7450 1400 50  0001 C CNN
	1    7450 1400
	1    0    0    -1  
$EndComp
Wire Wire Line
	7450 1500 7450 1400
Wire Wire Line
	7700 2300 7450 2300
Wire Wire Line
	7450 2300 7450 1500
Connection ~ 7450 1500
$Comp
L power:+5V #PWR0197
U 1 1 5C777E01
P 8500 1400
F 0 "#PWR0197" H 8500 1250 50  0001 C CNN
F 1 "+5V" H 8515 1573 50  0000 C CNN
F 2 "" H 8500 1400 50  0001 C CNN
F 3 "" H 8500 1400 50  0001 C CNN
	1    8500 1400
	1    0    0    -1  
$EndComp
Wire Wire Line
	8200 1500 8500 1500
Wire Wire Line
	8500 1500 8500 1400
Wire Wire Line
	8200 1600 8500 1600
Wire Wire Line
	8500 1600 8500 1500
Connection ~ 8500 1500
$Comp
L power:PWR_FLAG #FLG01
U 1 1 5C77824A
P 7050 1400
F 0 "#FLG01" H 7050 1475 50  0001 C CNN
F 1 "PWR_FLAG" H 7050 1574 50  0000 C CNN
F 2 "" H 7050 1400 50  0001 C CNN
F 3 "~" H 7050 1400 50  0001 C CNN
	1    7050 1400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0202
U 1 1 5C778504
P 7100 3650
F 0 "#PWR0202" H 7100 3400 50  0001 C CNN
F 1 "GND" H 7105 3477 50  0001 C CNN
F 2 "" H 7100 3650 50  0001 C CNN
F 3 "" H 7100 3650 50  0001 C CNN
	1    7100 3650
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG03
U 1 1 5C778511
P 7100 3600
F 0 "#FLG03" H 7100 3675 50  0001 C CNN
F 1 "PWR_FLAG" H 7100 3774 50  0000 C CNN
F 2 "" H 7100 3600 50  0001 C CNN
F 3 "~" H 7100 3600 50  0001 C CNN
	1    7100 3600
	1    0    0    -1  
$EndComp
Wire Wire Line
	7100 3600 7100 3650
Wire Wire Line
	7450 1500 7700 1500
Wire Wire Line
	7050 1500 7050 1400
Wire Wire Line
	7050 1500 7450 1500
$Comp
L power:PWR_FLAG #FLG02
U 1 1 5C77CEFA
P 8850 1400
F 0 "#FLG02" H 8850 1475 50  0001 C CNN
F 1 "PWR_FLAG" H 8850 1574 50  0000 C CNN
F 2 "" H 8850 1400 50  0001 C CNN
F 3 "~" H 8850 1400 50  0001 C CNN
	1    8850 1400
	1    0    0    -1  
$EndComp
Wire Wire Line
	8500 1500 8850 1500
Wire Wire Line
	8850 1400 8850 1500
Text Label 6750 1800 0    50   ~ 0
GPIO4_GPIO_GCLK
Text Label 6750 2000 0    50   ~ 0
GPIO17_GEN0
Text Label 6750 2100 0    50   ~ 0
GPIO27_GEN2
Text Label 6750 2200 0    50   ~ 0
GPIO22_GEN3
Text Label 6750 2400 0    50   ~ 0
GPIO10_SPI_MOSI
Wire Wire Line
	6650 2800 7700 2800
Text Label 6750 2500 0    50   ~ 0
GPIO9_SPI_MISO
Text Label 6750 2600 0    50   ~ 0
GPIO11_SPI_SCLK
Text Label 6750 2800 0    50   ~ 0
ID_SD
Text Label 6750 2900 0    50   ~ 0
GPIO5
Text Label 6750 3000 0    50   ~ 0
GPIO6
Text Label 6750 3100 0    50   ~ 0
GPIO13
Text Label 6750 3200 0    50   ~ 0
GPIO19
Text Label 6750 3300 0    50   ~ 0
GPIO26
NoConn ~ 6650 2800
Text Label 8550 1800 0    50   ~ 0
GPIO14_TXD0
Text Label 8550 1900 0    50   ~ 0
GPIO15_RXD0
Text Label 8550 2000 0    50   ~ 0
GPIO18_GEN1
Text Label 8550 2200 0    50   ~ 0
GPIO23_GEN4
Text Label 8550 2300 0    50   ~ 0
GPIO24_GEN5
Text Label 8550 2500 0    50   ~ 0
GPIO25_GEN6
Text Label 8550 2600 0    50   ~ 0
GPIO8_SPI_CE0_N
Text Label 8550 2700 0    50   ~ 0
GPIO7_SPI_CE1_N
Wire Wire Line
	8200 2700 9250 2700
Text Label 8550 2800 0    50   ~ 0
ID_SC
Text Label 9830 2170 3    50   ~ 0
bank_0_led
Text Label 8550 3200 0    50   ~ 0
GPIO16
Text Label 8550 3300 0    50   ~ 0
GPIO20
Wire Wire Line
	8200 1800 9250 1800
Wire Wire Line
	8200 1900 9250 1900
Wire Wire Line
	8200 2800 9250 2800
NoConn ~ 9250 1800
NoConn ~ 9250 1900
NoConn ~ 9250 2700
NoConn ~ 9250 2800
$Comp
L Mechanical:MountingHole H1
U 1 1 5C7C4C81
P 10150 750
F 0 "H1" H 10250 796 50  0000 L CNN
F 1 "MountingHole" H 10250 705 50  0000 L CNN
F 2 "lib:MountingHole_2.7mm_M2.5_uHAT_RPi" H 10150 750 50  0001 C CNN
F 3 "~" H 10150 750 50  0001 C CNN
	1    10150 750 
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H2
U 1 1 5C7C7FBC
P 10150 950
F 0 "H2" H 10250 996 50  0000 L CNN
F 1 "MountingHole" H 10250 905 50  0000 L CNN
F 2 "lib:MountingHole_2.7mm_M2.5_uHAT_RPi" H 10150 950 50  0001 C CNN
F 3 "~" H 10150 950 50  0001 C CNN
	1    10150 950 
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0194
U 1 1 5EDEE3FC
P 2700 700
F 0 "#PWR0194" H 2700 450 50  0001 C CNN
F 1 "GND" V 2705 572 50  0000 R CNN
F 2 "" H 2700 700 50  0001 C CNN
F 3 "" H 2700 700 50  0001 C CNN
	1    2700 700 
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2600 800  2600 700 
Wire Wire Line
	2600 700  2700 700 
$Comp
L power:+5V #PWR0193
U 1 1 5EDEFE8A
P 2500 700
F 0 "#PWR0193" H 2500 550 50  0001 C CNN
F 1 "+5V" H 2515 873 50  0000 C CNN
F 2 "" H 2500 700 50  0001 C CNN
F 3 "" H 2500 700 50  0001 C CNN
	1    2500 700 
	1    0    0    -1  
$EndComp
Wire Wire Line
	2500 800  2500 750 
$Comp
L Device:D_Zener D1
U 1 1 5EDF62AF
P 2050 1050
F 0 "D1" V 2004 1129 50  0000 L CNN
F 1 "5.6v" V 2095 1129 50  0000 L CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 2050 1050 50  0001 C CNN
F 3 "~" H 2050 1050 50  0001 C CNN
F 4 "1727-6245-1-ND" V 2050 1050 50  0001 C CNN "DPN"
	1    2050 1050
	0    1    1    0   
$EndComp
$Comp
L Device:CP C2
U 1 1 5EDF81EA
P 1650 1050
F 0 "C2" H 1768 1096 50  0000 L CNN
F 1 "100u" H 1768 1005 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D6.3mm_P2.50mm" H 1688 900 50  0001 C CNN
F 3 "~" H 1650 1050 50  0001 C CNN
F 4 "732-8630-1-ND" H 1650 1050 50  0001 C CNN "DPN"
	1    1650 1050
	1    0    0    -1  
$EndComp
$Comp
L Device:C C1
U 1 1 5EDF8878
P 1350 1050
F 0 "C1" H 1235 1004 50  0000 R CNN
F 1 "100n" H 1235 1095 50  0000 R CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 1388 900 50  0001 C CNN
F 3 "~" H 1350 1050 50  0001 C CNN
F 4 "732-8109-1-ND" H 1350 1050 50  0001 C CNN "DPN"
	1    1350 1050
	1    0    0    1   
$EndComp
$Comp
L power:GND #PWR0198
U 1 1 5EDF94F4
P 1650 1750
F 0 "#PWR0198" H 1650 1500 50  0001 C CNN
F 1 "GND" H 1655 1577 50  0000 C CNN
F 2 "" H 1650 1750 50  0001 C CNN
F 3 "" H 1650 1750 50  0001 C CNN
	1    1650 1750
	1    0    0    -1  
$EndComp
Wire Wire Line
	1650 1200 1650 1350
Wire Wire Line
	1350 1200 1350 1350
Wire Wire Line
	1350 1350 1650 1350
Connection ~ 1650 1350
Wire Wire Line
	1650 1350 1650 1650
Wire Wire Line
	2050 1200 2050 1350
Wire Wire Line
	2050 1350 1650 1350
Wire Wire Line
	2500 750  2050 750 
Wire Wire Line
	1650 750  1650 900 
Connection ~ 2500 750 
Wire Wire Line
	2500 750  2500 700 
Wire Wire Line
	1350 900  1350 750 
Wire Wire Line
	1350 750  1650 750 
Connection ~ 1650 750 
Wire Wire Line
	2050 900  2050 750 
Connection ~ 2050 750 
Wire Wire Line
	2050 750  1650 750 
$Comp
L Device:LED D2
U 1 1 5EE0CB33
P 950 1400
F 0 "D2" H 943 1616 50  0000 C CNN
F 1 "Blue" H 943 1525 50  0000 C CNN
F 2 "LED_SMD:LED_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 950 1400 50  0001 C CNN
F 3 "~" H 950 1400 50  0001 C CNN
F 4 "732-4989-1-ND" H 950 1400 50  0001 C CNN "DPN"
	1    950  1400
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1350 750  950  750 
Wire Wire Line
	950  750  950  850 
Connection ~ 1350 750 
Wire Wire Line
	950  1150 950  1250
Wire Wire Line
	950  1550 950  1650
Wire Wire Line
	950  1650 1650 1650
Connection ~ 1650 1650
Wire Wire Line
	1650 1650 1650 1750
$Comp
L Device:R R64
U 1 1 5F048AA4
P 950 1000
F 0 "R64" V 1000 1150 50  0000 C CNN
F 1 "220" V 950 1000 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 880 1000 50  0001 C CNN
F 3 "~" H 950 1000 50  0001 C CNN
F 4 "P220ECT-ND" V 950 1000 50  0001 C CNN "DPN"
	1    950  1000
	1    0    0    -1  
$EndComp
$Comp
L atv_cluster_hat:phoenix_1935161 J64
U 1 1 5EFF67DE
P 2600 1000
F 0 "J64" V 2518 1080 50  0000 L CNN
F 1 "phoenix_1935161" H 2600 800 50  0001 C CNN
F 2 "lib:SolderWirePad_1x02_P9.0mm_Drill4.5mm" H 2600 700 50  0001 C CNN
F 3 "~" H 2600 1000 50  0001 C CNN
F 4 "" H 2600 500 50  0001 C CNN "DPN"
F 5 "" H 2600 400 50  0001 C CNN "PN"
F 6 "" H 2600 600 50  0001 C CNN "URL"
	1    2600 1000
	0    1    1    0   
$EndComp
$Sheet
S 4350 4400 2000 1325
U 5EFF957B
F0 "power_ports" 50
F1 "power_ports.sch" 50
$EndSheet
Text Notes 3225 6200 0    50   ~ 0
GPIO/LED nets are managed globally
$Sheet
S 1325 4450 2000 1250
U 5F028404
F0 "gpio_exp_led" 50
F1 "gpio_exp_led.sch" 50
$EndSheet
Wire Wire Line
	8200 2200 8550 2200
Wire Wire Line
	8200 2300 8550 2300
Wire Wire Line
	7700 1800 6750 1800
Wire Wire Line
	7700 2900 6750 2900
Wire Wire Line
	6750 3000 7700 3000
Wire Wire Line
	7700 3100 6750 3100
Wire Wire Line
	6750 3200 7700 3200
Wire Wire Line
	7700 3300 6750 3300
Wire Wire Line
	8200 3200 9100 3200
Wire Wire Line
	8200 3300 8975 3300
Wire Wire Line
	8200 3400 8975 3400
$Comp
L Device:R R66
U 1 1 5F242181
P 6425 1325
AR Path="/5F242181" Ref="R66"  Part="1" 
AR Path="/5EFF957B/5F242181" Ref="R?"  Part="1" 
AR Path="/5F028404/5F242181" Ref="R?"  Part="1" 
F 0 "R66" H 6495 1371 50  0000 L CNN
F 1 "10k" H 6495 1280 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 6355 1325 50  0001 C CNN
F 3 "~" H 6425 1325 50  0001 C CNN
F 4 "P10.0KFCT-ND" H 6425 1325 50  0001 C CNN "DPN"
	1    6425 1325
	-1   0    0    1   
$EndComp
$Comp
L Device:R R65
U 1 1 5F245109
P 6125 1325
AR Path="/5F245109" Ref="R65"  Part="1" 
AR Path="/5EFF957B/5F245109" Ref="R?"  Part="1" 
AR Path="/5F028404/5F245109" Ref="R?"  Part="1" 
F 0 "R65" H 6195 1371 50  0000 L CNN
F 1 "10k" H 6195 1280 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 6055 1325 50  0001 C CNN
F 3 "~" H 6125 1325 50  0001 C CNN
F 4 "P10.0KFCT-ND" H 6125 1325 50  0001 C CNN "DPN"
	1    6125 1325
	-1   0    0    1   
$EndComp
Wire Wire Line
	6125 1700 6125 1475
Wire Wire Line
	6425 1600 6425 1475
$Comp
L power:+3.3V #PWR0195
U 1 1 5F24BF13
P 6275 1050
F 0 "#PWR0195" H 6275 900 50  0001 C CNN
F 1 "+3.3V" H 6290 1223 50  0000 C CNN
F 2 "" H 6275 1050 50  0001 C CNN
F 3 "" H 6275 1050 50  0001 C CNN
	1    6275 1050
	1    0    0    -1  
$EndComp
Wire Wire Line
	6125 1125 6275 1125
Wire Wire Line
	6275 1125 6275 1050
Wire Wire Line
	6125 1125 6125 1175
Wire Wire Line
	6425 1175 6425 1125
Wire Wire Line
	6425 1125 6275 1125
Connection ~ 6275 1125
$Sheet
S 2825 2350 2050 1275
U 5F208EA9
F0 "ethernet" 50
F1 "ethernet.sch" 50
$EndSheet
Text GLabel 9240 2600 2    20   Input ~ 0
GPIO8_SPI_CE0_N
Text GLabel 6715 2600 0    20   Input ~ 0
GPIO11_SPI_SCLK
Text GLabel 6715 2500 0    20   Input ~ 0
GPIO9_SPI_MISO
Text GLabel 6715 2400 0    20   Input ~ 0
GPIO10_SPI_MOSI
Text GLabel 9240 2500 2    20   Input ~ 0
GPIO25_GEN6
Wire Wire Line
	8200 2500 9240 2500
Wire Wire Line
	8200 2600 9240 2600
Wire Wire Line
	6715 2400 7700 2400
Wire Wire Line
	6715 2500 7700 2500
Wire Wire Line
	6715 2600 7700 2600
Text GLabel 6375 1600 0    20   Input ~ 0
SDA
Wire Wire Line
	6425 1600 7700 1600
Wire Wire Line
	6375 1600 6425 1600
Connection ~ 6425 1600
Text GLabel 6070 1700 0    20   Input ~ 0
SCL
Wire Wire Line
	6070 1700 6125 1700
Connection ~ 6125 1700
Wire Wire Line
	6125 1700 7700 1700
Text GLabel 6750 3300 0    20   Input ~ 0
GPIO_RST_0
Text GLabel 6750 3100 0    20   Input ~ 0
GPIO_RST_1
Text GLabel 6640 2100 0    20   Input ~ 0
GPIO_RST_2
Text GLabel 9070 2000 2    20   Input ~ 0
GPIO_RST_3
Wire Wire Line
	6640 2000 7700 2000
Wire Wire Line
	6640 2100 7700 2100
Wire Wire Line
	6640 2200 7700 2200
Wire Wire Line
	8200 2000 9070 2000
Text Label 8550 3400 0    50   ~ 0
GPIO21
Wire Wire Line
	10035 3425 10035 3675
Wire Wire Line
	9830 3420 9830 3670
$Comp
L Device:R R?
U 1 1 5F0A1736
P 10035 2875
AR Path="/5F028404/5F0A1736" Ref="R?"  Part="1" 
AR Path="/5F0A1736" Ref="R68"  Part="1" 
F 0 "R68" V 10085 3025 50  0000 C CNN
F 1 "220" V 10035 2875 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 9965 2875 50  0001 C CNN
F 3 "~" H 10035 2875 50  0001 C CNN
F 4 "P220ECT-ND" V 10035 2875 50  0001 C CNN "DPN"
	1    10035 2875
	1    0    0    -1  
$EndComp
Wire Wire Line
	10035 3025 10035 3125
$Comp
L Device:LED D?
U 1 1 5F0A172E
P 10035 3275
AR Path="/5F028404/5F0A172E" Ref="D?"  Part="1" 
AR Path="/5F0A172E" Ref="D4"  Part="1" 
F 0 "D4" H 10135 3250 50  0000 C CNN
F 1 "Green" H 10210 3325 50  0000 C CNN
F 2 "LED_SMD:LED_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 10035 3275 50  0001 C CNN
F 3 "~" H 10035 3275 50  0001 C CNN
F 4 "732-4990-1-ND" H 10035 3275 50  0001 C CNN "DPN"
	1    10035 3275
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R?
U 1 1 5F09E9E1
P 9830 2870
AR Path="/5F028404/5F09E9E1" Ref="R?"  Part="1" 
AR Path="/5F09E9E1" Ref="R67"  Part="1" 
F 0 "R67" V 9880 3020 50  0000 C CNN
F 1 "220" V 9830 2870 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 9760 2870 50  0001 C CNN
F 3 "~" H 9830 2870 50  0001 C CNN
F 4 "P220ECT-ND" V 9830 2870 50  0001 C CNN "DPN"
	1    9830 2870
	1    0    0    -1  
$EndComp
Wire Wire Line
	9830 3020 9830 3120
$Comp
L Device:LED D?
U 1 1 5F09E9D9
P 9830 3270
AR Path="/5F028404/5F09E9D9" Ref="D?"  Part="1" 
AR Path="/5F09E9D9" Ref="D3"  Part="1" 
F 0 "D3" H 9930 3245 50  0000 C CNN
F 1 "Green" H 10005 3320 50  0000 C CNN
F 2 "LED_SMD:LED_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 9830 3270 50  0001 C CNN
F 3 "~" H 9830 3270 50  0001 C CNN
F 4 "732-4990-1-ND" H 9830 3270 50  0001 C CNN "DPN"
	1    9830 3270
	0    -1   -1   0   
$EndComp
Text Label 8975 3400 0    50   ~ 0
bank_0_led
Wire Wire Line
	9830 2720 9830 2170
$Comp
L power:GND #PWR0201
U 1 1 5F16F56A
P 9830 3670
F 0 "#PWR0201" H 9830 3420 50  0001 C CNN
F 1 "GND" H 9835 3497 50  0001 C CNN
F 2 "" H 9830 3670 50  0001 C CNN
F 3 "" H 9830 3670 50  0001 C CNN
	1    9830 3670
	1    0    0    -1  
$EndComp
Wire Wire Line
	8200 3000 8755 3000
Text Label 8455 3000 0    50   ~ 0
GPIO12
$Comp
L Device:LED D?
U 1 1 5F0A41D6
P 10235 3275
AR Path="/5F028404/5F0A41D6" Ref="D?"  Part="1" 
AR Path="/5F0A41D6" Ref="D5"  Part="1" 
F 0 "D5" H 10335 3250 50  0000 C CNN
F 1 "Green" H 10410 3325 50  0000 C CNN
F 2 "LED_SMD:LED_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 10235 3275 50  0001 C CNN
F 3 "~" H 10235 3275 50  0001 C CNN
F 4 "732-4990-1-ND" H 10235 3275 50  0001 C CNN "DPN"
	1    10235 3275
	0    -1   -1   0   
$EndComp
Wire Wire Line
	10235 3025 10235 3125
$Comp
L Device:R R?
U 1 1 5F0A41DE
P 10235 2875
AR Path="/5F028404/5F0A41DE" Ref="R?"  Part="1" 
AR Path="/5F0A41DE" Ref="R69"  Part="1" 
F 0 "R69" V 10285 3025 50  0000 C CNN
F 1 "220" V 10235 2875 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 10165 2875 50  0001 C CNN
F 3 "~" H 10235 2875 50  0001 C CNN
F 4 "P220ECT-ND" V 10235 2875 50  0001 C CNN "DPN"
	1    10235 2875
	1    0    0    -1  
$EndComp
Wire Wire Line
	10235 3425 10235 3675
Text Label 10035 2245 3    50   ~ 0
bank_1_led
Wire Wire Line
	10035 2245 10035 2725
$Comp
L power:GND #PWR0252
U 1 1 5F184995
P 10035 3675
F 0 "#PWR0252" H 10035 3425 50  0001 C CNN
F 1 "GND" H 10040 3502 50  0001 C CNN
F 2 "" H 10035 3675 50  0001 C CNN
F 3 "" H 10035 3675 50  0001 C CNN
	1    10035 3675
	1    0    0    -1  
$EndComp
Text Label 6750 3200 2    50   ~ 0
bank_1_led
$Comp
L power:GND #PWR0253
U 1 1 5F18CA70
P 10235 3675
F 0 "#PWR0253" H 10235 3425 50  0001 C CNN
F 1 "GND" H 10240 3502 50  0001 C CNN
F 2 "" H 10235 3675 50  0001 C CNN
F 3 "" H 10235 3675 50  0001 C CNN
	1    10235 3675
	1    0    0    -1  
$EndComp
Text Label 10235 2250 3    50   ~ 0
bank_2_led
Wire Wire Line
	10235 2250 10235 2725
Text Label 6640 2200 2    50   ~ 0
bank_2_led
Text Label 9350 1815 0    50   ~ 0
bank_3_led
Text Label 6640 2000 2    50   ~ 0
bank_3_led
$EndSCHEMATC
