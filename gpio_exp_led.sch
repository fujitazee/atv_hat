EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 3 4
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
L atv_cluster_hat:PCA9552PW,118 U1
U 1 1 5F02E15B
P 3775 2225
F 0 "U1" H 3775 3390 50  0000 C CNN
F 1 "PCA9552PW,118" H 3775 3299 50  0000 C CNN
F 2 "lib:SOP65P640X110-24N" H 3275 875 50  0001 L BNN
F 3 "https://www.nxp.com/docs/en/data-sheet/PCA9552.pdf" H 3575 775 50  0001 L BNN
F 4 "568-11924-1-ND" H 3775 725 50  0001 C CNN "DPN"
F 5 "PCA9552PW,118" H 3775 625 50  0001 C CNN "PN"
F 6 "https://www.digikey.com/product-detail/en/nxp-usa-inc/PCA9552PW-118/568-11924-1-ND/5221886" H 3775 825 50  0001 C CNN "URL"
	1    3775 2225
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5F035111
P 2700 2775
AR Path="/5F035111" Ref="C?"  Part="1" 
AR Path="/5F028404/5F035111" Ref="C3"  Part="1" 
F 0 "C3" H 2585 2729 50  0000 R CNN
F 1 "100n" H 2585 2820 50  0000 R CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 2738 2625 50  0001 C CNN
F 3 "~" H 2700 2775 50  0001 C CNN
F 4 "732-8109-1-ND" H 2700 2775 50  0001 C CNN "DPN"
	1    2700 2775
	1    0    0    1   
$EndComp
$Comp
L Device:C C?
U 1 1 5F03512E
P 2925 2775
AR Path="/5F03512E" Ref="C?"  Part="1" 
AR Path="/5F028404/5F03512E" Ref="C4"  Part="1" 
F 0 "C4" H 2810 2729 50  0000 R CNN
F 1 "10u" H 2810 2820 50  0000 R CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 2963 2625 50  0001 C CNN
F 3 "~" H 2925 2775 50  0001 C CNN
F 4 "1276-1055-1-ND" H 2925 2775 50  0001 C CNN "DPN"
	1    2925 2775
	-1   0    0    1   
$EndComp
$Comp
L Device:R R?
U 1 1 5F0399FD
P 2675 1725
AR Path="/5F0399FD" Ref="R?"  Part="1" 
AR Path="/5EFF957B/5F0399FD" Ref="R?"  Part="1" 
AR Path="/5F028404/5F0399FD" Ref="R75"  Part="1" 
F 0 "R75" H 2745 1771 50  0000 L CNN
F 1 "10k" H 2745 1680 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 2605 1725 50  0001 C CNN
F 3 "~" H 2675 1725 50  0001 C CNN
F 4 "P10.0KFCT-ND" H 2675 1725 50  0001 C CNN "DPN"
	1    2675 1725
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R?
U 1 1 5F039A14
P 2675 1450
AR Path="/5F039A14" Ref="R?"  Part="1" 
AR Path="/5EFF957B/5F039A14" Ref="R?"  Part="1" 
AR Path="/5F028404/5F039A14" Ref="R73"  Part="1" 
F 0 "R73" H 2745 1496 50  0000 L CNN
F 1 "10k" H 2745 1405 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 2605 1450 50  0001 C CNN
F 3 "~" H 2675 1450 50  0001 C CNN
F 4 "P10.0KFCT-ND" H 2675 1450 50  0001 C CNN "DPN"
	1    2675 1450
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R?
U 1 1 5F039C8F
P 2675 1175
AR Path="/5F039C8F" Ref="R?"  Part="1" 
AR Path="/5EFF957B/5F039C8F" Ref="R?"  Part="1" 
AR Path="/5F028404/5F039C8F" Ref="R71"  Part="1" 
F 0 "R71" H 2745 1221 50  0000 L CNN
F 1 "10k" H 2745 1130 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 2605 1175 50  0001 C CNN
F 3 "~" H 2675 1175 50  0001 C CNN
F 4 "P10.0KFCT-ND" H 2675 1175 50  0001 C CNN "DPN"
	1    2675 1175
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R?
U 1 1 5F039EE2
P 2700 2025
AR Path="/5F039EE2" Ref="R?"  Part="1" 
AR Path="/5EFF957B/5F039EE2" Ref="R?"  Part="1" 
AR Path="/5F028404/5F039EE2" Ref="R77"  Part="1" 
F 0 "R77" H 2770 2071 50  0000 L CNN
F 1 "10k" H 2770 1980 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 2630 2025 50  0001 C CNN
F 3 "~" H 2700 2025 50  0001 C CNN
F 4 "P10.0KFCT-ND" H 2700 2025 50  0001 C CNN "DPN"
	1    2700 2025
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0214
U 1 1 5F04037C
P 4550 3375
F 0 "#PWR0214" H 4550 3125 50  0001 C CNN
F 1 "GND" H 4555 3202 50  0000 C CNN
F 2 "" H 4550 3375 50  0001 C CNN
F 3 "" H 4550 3375 50  0001 C CNN
	1    4550 3375
	1    0    0    -1  
$EndComp
Wire Wire Line
	4475 3225 4550 3225
Wire Wire Line
	4550 3225 4550 3375
Wire Wire Line
	4475 1325 4575 1325
Wire Wire Line
	2525 2575 2700 2575
Wire Wire Line
	2700 2575 2700 2625
Wire Wire Line
	2700 2575 2925 2575
Wire Wire Line
	2925 2575 2925 2625
Connection ~ 2700 2575
$Comp
L power:GND #PWR0212
U 1 1 5F0424E7
P 2925 3050
F 0 "#PWR0212" H 2925 2800 50  0001 C CNN
F 1 "GND" H 2930 2877 50  0000 C CNN
F 2 "" H 2925 3050 50  0001 C CNN
F 3 "" H 2925 3050 50  0001 C CNN
	1    2925 3050
	1    0    0    -1  
$EndComp
Wire Wire Line
	2700 2925 2700 3000
Wire Wire Line
	2700 3000 2925 3000
Wire Wire Line
	2925 3000 2925 3050
Wire Wire Line
	2925 2925 2925 3000
Connection ~ 2925 3000
$Comp
L power:+3.3V #PWR?
U 1 1 5F05008F
P 4575 1150
AR Path="/5F05008F" Ref="#PWR?"  Part="1" 
AR Path="/5F028404/5F05008F" Ref="#PWR0203"  Part="1" 
F 0 "#PWR0203" H 4575 1000 50  0001 C CNN
F 1 "+3.3V" H 4590 1323 50  0000 C CNN
F 2 "" H 4575 1150 50  0001 C CNN
F 3 "" H 4575 1150 50  0001 C CNN
	1    4575 1150
	1    0    0    -1  
$EndComp
Wire Wire Line
	4575 1150 4575 1325
$Comp
L power:+3.3V #PWR?
U 1 1 5F050328
P 2525 2575
AR Path="/5F050328" Ref="#PWR?"  Part="1" 
AR Path="/5F028404/5F050328" Ref="#PWR0210"  Part="1" 
F 0 "#PWR0210" H 2525 2425 50  0001 C CNN
F 1 "+3.3V" H 2540 2748 50  0000 C CNN
F 2 "" H 2525 2575 50  0001 C CNN
F 3 "" H 2525 2575 50  0001 C CNN
	1    2525 2575
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0206
U 1 1 5F050F32
P 2250 1450
F 0 "#PWR0206" H 2250 1200 50  0001 C CNN
F 1 "GND" H 2255 1277 50  0000 C CNN
F 2 "" H 2250 1450 50  0001 C CNN
F 3 "" H 2250 1450 50  0001 C CNN
	1    2250 1450
	0    1    1    0   
$EndComp
Wire Wire Line
	3075 1525 2975 1525
Wire Wire Line
	2525 1175 2400 1175
Wire Wire Line
	2400 1175 2400 1450
Wire Wire Line
	2400 1450 2250 1450
Wire Wire Line
	2525 1450 2400 1450
Connection ~ 2400 1450
Wire Wire Line
	2525 1725 2400 1725
Wire Wire Line
	2400 1725 2400 1450
$Comp
L power:+3.3V #PWR?
U 1 1 5F0572B8
P 2425 2025
AR Path="/5F0572B8" Ref="#PWR?"  Part="1" 
AR Path="/5F028404/5F0572B8" Ref="#PWR0208"  Part="1" 
F 0 "#PWR0208" H 2425 1875 50  0001 C CNN
F 1 "+3.3V" H 2440 2198 50  0000 C CNN
F 2 "" H 2425 2025 50  0001 C CNN
F 3 "" H 2425 2025 50  0001 C CNN
	1    2425 2025
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2425 2025 2550 2025
Text Notes 3275 625  0    50   ~ 0
time to copy and create nets
Wire Wire Line
	2825 1725 3075 1725
Wire Wire Line
	3075 1625 2875 1625
Wire Wire Line
	2875 1625 2875 1450
Wire Wire Line
	2875 1450 2825 1450
Wire Wire Line
	2975 1175 2825 1175
Wire Wire Line
	2975 1175 2975 1525
Wire Wire Line
	2850 2025 2975 2025
$Comp
L atv_cluster_hat:PCA9552PW,118 U2
U 1 1 5F0D4B2A
P 7050 2250
F 0 "U2" H 7050 3415 50  0000 C CNN
F 1 "PCA9552PW,118" H 7050 3324 50  0000 C CNN
F 2 "lib:SOP65P640X110-24N" H 6550 900 50  0001 L BNN
F 3 "https://www.nxp.com/docs/en/data-sheet/PCA9552.pdf" H 6850 800 50  0001 L BNN
F 4 "568-11924-1-ND" H 7050 750 50  0001 C CNN "DPN"
F 5 "PCA9552PW,118" H 7050 650 50  0001 C CNN "PN"
F 6 "https://www.digikey.com/product-detail/en/nxp-usa-inc/PCA9552PW-118/568-11924-1-ND/5221886" H 7050 850 50  0001 C CNN "URL"
	1    7050 2250
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5F0D4B35
P 5975 2800
AR Path="/5F0D4B35" Ref="C?"  Part="1" 
AR Path="/5F028404/5F0D4B35" Ref="C5"  Part="1" 
F 0 "C5" H 5860 2754 50  0000 R CNN
F 1 "100n" H 5860 2845 50  0000 R CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 6013 2650 50  0001 C CNN
F 3 "~" H 5975 2800 50  0001 C CNN
F 4 "732-8109-1-ND" H 5975 2800 50  0001 C CNN "DPN"
	1    5975 2800
	1    0    0    1   
$EndComp
$Comp
L Device:C C?
U 1 1 5F0D4B40
P 6200 2800
AR Path="/5F0D4B40" Ref="C?"  Part="1" 
AR Path="/5F028404/5F0D4B40" Ref="C6"  Part="1" 
F 0 "C6" H 6085 2754 50  0000 R CNN
F 1 "10u" H 6085 2845 50  0000 R CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 6238 2650 50  0001 C CNN
F 3 "~" H 6200 2800 50  0001 C CNN
F 4 "1276-1055-1-ND" H 6200 2800 50  0001 C CNN "DPN"
	1    6200 2800
	-1   0    0    1   
$EndComp
$Comp
L Device:R R?
U 1 1 5F0D4B4B
P 5950 1750
AR Path="/5F0D4B4B" Ref="R?"  Part="1" 
AR Path="/5EFF957B/5F0D4B4B" Ref="R?"  Part="1" 
AR Path="/5F028404/5F0D4B4B" Ref="R76"  Part="1" 
F 0 "R76" H 6020 1796 50  0000 L CNN
F 1 "10k" H 6020 1705 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 5880 1750 50  0001 C CNN
F 3 "~" H 5950 1750 50  0001 C CNN
F 4 "P10.0KFCT-ND" H 5950 1750 50  0001 C CNN "DPN"
	1    5950 1750
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R?
U 1 1 5F0D4B56
P 5950 1475
AR Path="/5F0D4B56" Ref="R?"  Part="1" 
AR Path="/5EFF957B/5F0D4B56" Ref="R?"  Part="1" 
AR Path="/5F028404/5F0D4B56" Ref="R74"  Part="1" 
F 0 "R74" H 6020 1521 50  0000 L CNN
F 1 "10k" H 6020 1430 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 5880 1475 50  0001 C CNN
F 3 "~" H 5950 1475 50  0001 C CNN
F 4 "P10.0KFCT-ND" H 5950 1475 50  0001 C CNN "DPN"
	1    5950 1475
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R?
U 1 1 5F0D4B61
P 5950 1200
AR Path="/5F0D4B61" Ref="R?"  Part="1" 
AR Path="/5EFF957B/5F0D4B61" Ref="R?"  Part="1" 
AR Path="/5F028404/5F0D4B61" Ref="R72"  Part="1" 
F 0 "R72" H 6020 1246 50  0000 L CNN
F 1 "10k" H 6020 1155 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 5880 1200 50  0001 C CNN
F 3 "~" H 5950 1200 50  0001 C CNN
F 4 "P10.0KFCT-ND" H 5950 1200 50  0001 C CNN "DPN"
	1    5950 1200
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R?
U 1 1 5F0D4B6C
P 5975 2050
AR Path="/5F0D4B6C" Ref="R?"  Part="1" 
AR Path="/5EFF957B/5F0D4B6C" Ref="R?"  Part="1" 
AR Path="/5F028404/5F0D4B6C" Ref="R78"  Part="1" 
F 0 "R78" H 6045 2096 50  0000 L CNN
F 1 "10k" H 6045 2005 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 5905 2050 50  0001 C CNN
F 3 "~" H 5975 2050 50  0001 C CNN
F 4 "P10.0KFCT-ND" H 5975 2050 50  0001 C CNN "DPN"
	1    5975 2050
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0215
U 1 1 5F0D4B76
P 7825 3400
F 0 "#PWR0215" H 7825 3150 50  0001 C CNN
F 1 "GND" H 7830 3227 50  0000 C CNN
F 2 "" H 7825 3400 50  0001 C CNN
F 3 "" H 7825 3400 50  0001 C CNN
	1    7825 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	7750 3250 7825 3250
Wire Wire Line
	7825 3250 7825 3400
Wire Wire Line
	7750 1350 7850 1350
Wire Wire Line
	5800 2600 5975 2600
Wire Wire Line
	5975 2600 5975 2650
Wire Wire Line
	5975 2600 6200 2600
Wire Wire Line
	6200 2600 6200 2650
Connection ~ 5975 2600
$Comp
L power:GND #PWR0213
U 1 1 5F0D4B88
P 6200 3075
F 0 "#PWR0213" H 6200 2825 50  0001 C CNN
F 1 "GND" H 6205 2902 50  0000 C CNN
F 2 "" H 6200 3075 50  0001 C CNN
F 3 "" H 6200 3075 50  0001 C CNN
	1    6200 3075
	1    0    0    -1  
$EndComp
Wire Wire Line
	5975 2950 5975 3025
Wire Wire Line
	5975 3025 6200 3025
Wire Wire Line
	6200 3025 6200 3075
Wire Wire Line
	6200 2950 6200 3025
Connection ~ 6200 3025
$Comp
L power:+3.3V #PWR?
U 1 1 5F0D4B97
P 7850 1175
AR Path="/5F0D4B97" Ref="#PWR?"  Part="1" 
AR Path="/5F028404/5F0D4B97" Ref="#PWR0204"  Part="1" 
F 0 "#PWR0204" H 7850 1025 50  0001 C CNN
F 1 "+3.3V" H 7865 1348 50  0000 C CNN
F 2 "" H 7850 1175 50  0001 C CNN
F 3 "" H 7850 1175 50  0001 C CNN
	1    7850 1175
	1    0    0    -1  
$EndComp
Wire Wire Line
	7850 1175 7850 1350
$Comp
L power:+3.3V #PWR?
U 1 1 5F0D4BA2
P 5800 2600
AR Path="/5F0D4BA2" Ref="#PWR?"  Part="1" 
AR Path="/5F028404/5F0D4BA2" Ref="#PWR0211"  Part="1" 
F 0 "#PWR0211" H 5800 2450 50  0001 C CNN
F 1 "+3.3V" H 5815 2773 50  0000 C CNN
F 2 "" H 5800 2600 50  0001 C CNN
F 3 "" H 5800 2600 50  0001 C CNN
	1    5800 2600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0207
U 1 1 5F0D4BAC
P 5525 1475
F 0 "#PWR0207" H 5525 1225 50  0001 C CNN
F 1 "GND" H 5530 1302 50  0000 C CNN
F 2 "" H 5525 1475 50  0001 C CNN
F 3 "" H 5525 1475 50  0001 C CNN
	1    5525 1475
	0    1    1    0   
$EndComp
Wire Wire Line
	6350 1550 6250 1550
Wire Wire Line
	5675 1475 5525 1475
Wire Wire Line
	5800 1475 5675 1475
Connection ~ 5675 1475
Wire Wire Line
	5800 1750 5675 1750
Wire Wire Line
	5675 1750 5675 1475
$Comp
L power:+3.3V #PWR?
U 1 1 5F0D4BBE
P 5700 2050
AR Path="/5F0D4BBE" Ref="#PWR?"  Part="1" 
AR Path="/5F028404/5F0D4BBE" Ref="#PWR0209"  Part="1" 
F 0 "#PWR0209" H 5700 1900 50  0001 C CNN
F 1 "+3.3V" H 5715 2223 50  0000 C CNN
F 2 "" H 5700 2050 50  0001 C CNN
F 3 "" H 5700 2050 50  0001 C CNN
	1    5700 2050
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5700 2050 5825 2050
Wire Wire Line
	6100 1750 6350 1750
Wire Wire Line
	6350 1650 6150 1650
Wire Wire Line
	6150 1650 6150 1475
Wire Wire Line
	6150 1475 6100 1475
Wire Wire Line
	6250 1200 6100 1200
Wire Wire Line
	6250 1200 6250 1550
Wire Wire Line
	6125 2050 6180 2050
Wire Wire Line
	6350 2350 6125 2350
Wire Wire Line
	6125 2250 6350 2250
$Comp
L atv_cluster_hat:PCA9552PW,118 U3
U 1 1 5F0E5AE5
P 3850 5075
F 0 "U3" H 3850 6240 50  0000 C CNN
F 1 "PCA9552PW,118" H 3850 6149 50  0000 C CNN
F 2 "lib:SOP65P640X110-24N" H 3350 3725 50  0001 L BNN
F 3 "https://www.nxp.com/docs/en/data-sheet/PCA9552.pdf" H 3650 3625 50  0001 L BNN
F 4 "568-11924-1-ND" H 3850 3575 50  0001 C CNN "DPN"
F 5 "PCA9552PW,118" H 3850 3475 50  0001 C CNN "PN"
F 6 "https://www.digikey.com/product-detail/en/nxp-usa-inc/PCA9552PW-118/568-11924-1-ND/5221886" H 3850 3675 50  0001 C CNN "URL"
	1    3850 5075
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5F0E5AF0
P 2775 5625
AR Path="/5F0E5AF0" Ref="C?"  Part="1" 
AR Path="/5F028404/5F0E5AF0" Ref="C7"  Part="1" 
F 0 "C7" H 2660 5579 50  0000 R CNN
F 1 "100n" H 2660 5670 50  0000 R CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 2813 5475 50  0001 C CNN
F 3 "~" H 2775 5625 50  0001 C CNN
F 4 "732-8109-1-ND" H 2775 5625 50  0001 C CNN "DPN"
	1    2775 5625
	1    0    0    1   
$EndComp
$Comp
L Device:C C?
U 1 1 5F0E5AFB
P 3000 5625
AR Path="/5F0E5AFB" Ref="C?"  Part="1" 
AR Path="/5F028404/5F0E5AFB" Ref="C8"  Part="1" 
F 0 "C8" H 2885 5579 50  0000 R CNN
F 1 "10u" H 2885 5670 50  0000 R CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 3038 5475 50  0001 C CNN
F 3 "~" H 3000 5625 50  0001 C CNN
F 4 "1276-1055-1-ND" H 3000 5625 50  0001 C CNN "DPN"
	1    3000 5625
	-1   0    0    1   
$EndComp
$Comp
L Device:R R?
U 1 1 5F0E5B06
P 2750 4575
AR Path="/5F0E5B06" Ref="R?"  Part="1" 
AR Path="/5EFF957B/5F0E5B06" Ref="R?"  Part="1" 
AR Path="/5F028404/5F0E5B06" Ref="R83"  Part="1" 
F 0 "R83" H 2820 4621 50  0000 L CNN
F 1 "10k" H 2820 4530 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 2680 4575 50  0001 C CNN
F 3 "~" H 2750 4575 50  0001 C CNN
F 4 "P10.0KFCT-ND" H 2750 4575 50  0001 C CNN "DPN"
	1    2750 4575
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R?
U 1 1 5F0E5B11
P 2750 4300
AR Path="/5F0E5B11" Ref="R?"  Part="1" 
AR Path="/5EFF957B/5F0E5B11" Ref="R?"  Part="1" 
AR Path="/5F028404/5F0E5B11" Ref="R81"  Part="1" 
F 0 "R81" H 2820 4346 50  0000 L CNN
F 1 "10k" H 2820 4255 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 2680 4300 50  0001 C CNN
F 3 "~" H 2750 4300 50  0001 C CNN
F 4 "P10.0KFCT-ND" H 2750 4300 50  0001 C CNN "DPN"
	1    2750 4300
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R?
U 1 1 5F0E5B1C
P 2750 4025
AR Path="/5F0E5B1C" Ref="R?"  Part="1" 
AR Path="/5EFF957B/5F0E5B1C" Ref="R?"  Part="1" 
AR Path="/5F028404/5F0E5B1C" Ref="R79"  Part="1" 
F 0 "R79" H 2820 4071 50  0000 L CNN
F 1 "10k" H 2820 3980 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 2680 4025 50  0001 C CNN
F 3 "~" H 2750 4025 50  0001 C CNN
F 4 "P10.0KFCT-ND" H 2750 4025 50  0001 C CNN "DPN"
	1    2750 4025
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R?
U 1 1 5F0E5B27
P 2775 4875
AR Path="/5F0E5B27" Ref="R?"  Part="1" 
AR Path="/5EFF957B/5F0E5B27" Ref="R?"  Part="1" 
AR Path="/5F028404/5F0E5B27" Ref="R85"  Part="1" 
F 0 "R85" H 2845 4921 50  0000 L CNN
F 1 "10k" H 2845 4830 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 2705 4875 50  0001 C CNN
F 3 "~" H 2775 4875 50  0001 C CNN
F 4 "P10.0KFCT-ND" H 2775 4875 50  0001 C CNN "DPN"
	1    2775 4875
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0230
U 1 1 5F0E5B31
P 4625 6225
F 0 "#PWR0230" H 4625 5975 50  0001 C CNN
F 1 "GND" H 4630 6052 50  0000 C CNN
F 2 "" H 4625 6225 50  0001 C CNN
F 3 "" H 4625 6225 50  0001 C CNN
	1    4625 6225
	1    0    0    -1  
$EndComp
Wire Wire Line
	4550 6075 4625 6075
Wire Wire Line
	4625 6075 4625 6225
Wire Wire Line
	4550 4175 4650 4175
Wire Wire Line
	2600 5425 2775 5425
Wire Wire Line
	2775 5425 2775 5475
Wire Wire Line
	2775 5425 3000 5425
Wire Wire Line
	3000 5425 3000 5475
Connection ~ 2775 5425
$Comp
L power:GND #PWR0228
U 1 1 5F0E5B43
P 3000 5900
F 0 "#PWR0228" H 3000 5650 50  0001 C CNN
F 1 "GND" H 3005 5727 50  0000 C CNN
F 2 "" H 3000 5900 50  0001 C CNN
F 3 "" H 3000 5900 50  0001 C CNN
	1    3000 5900
	1    0    0    -1  
$EndComp
Wire Wire Line
	2775 5775 2775 5850
Wire Wire Line
	2775 5850 3000 5850
Wire Wire Line
	3000 5850 3000 5900
Wire Wire Line
	3000 5775 3000 5850
Connection ~ 3000 5850
$Comp
L power:+3.3V #PWR?
U 1 1 5F0E5B52
P 4650 4000
AR Path="/5F0E5B52" Ref="#PWR?"  Part="1" 
AR Path="/5F028404/5F0E5B52" Ref="#PWR0216"  Part="1" 
F 0 "#PWR0216" H 4650 3850 50  0001 C CNN
F 1 "+3.3V" H 4665 4173 50  0000 C CNN
F 2 "" H 4650 4000 50  0001 C CNN
F 3 "" H 4650 4000 50  0001 C CNN
	1    4650 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	4650 4000 4650 4175
$Comp
L power:+3.3V #PWR?
U 1 1 5F0E5B5D
P 2600 5425
AR Path="/5F0E5B5D" Ref="#PWR?"  Part="1" 
AR Path="/5F028404/5F0E5B5D" Ref="#PWR0226"  Part="1" 
F 0 "#PWR0226" H 2600 5275 50  0001 C CNN
F 1 "+3.3V" H 2615 5598 50  0000 C CNN
F 2 "" H 2600 5425 50  0001 C CNN
F 3 "" H 2600 5425 50  0001 C CNN
	1    2600 5425
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0217
U 1 1 5F0E5B67
P 2375 4025
F 0 "#PWR0217" H 2375 3775 50  0001 C CNN
F 1 "GND" H 2380 3852 50  0000 C CNN
F 2 "" H 2375 4025 50  0001 C CNN
F 3 "" H 2375 4025 50  0001 C CNN
	1    2375 4025
	0    1    1    0   
$EndComp
Wire Wire Line
	3150 4375 3050 4375
$Comp
L power:+3.3V #PWR?
U 1 1 5F0E5B79
P 2500 4875
AR Path="/5F0E5B79" Ref="#PWR?"  Part="1" 
AR Path="/5F028404/5F0E5B79" Ref="#PWR0224"  Part="1" 
F 0 "#PWR0224" H 2500 4725 50  0001 C CNN
F 1 "+3.3V" H 2515 5048 50  0000 C CNN
F 2 "" H 2500 4875 50  0001 C CNN
F 3 "" H 2500 4875 50  0001 C CNN
	1    2500 4875
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2500 4875 2625 4875
Wire Wire Line
	2900 4575 3150 4575
Wire Wire Line
	3150 4475 2950 4475
Wire Wire Line
	2950 4475 2950 4300
Wire Wire Line
	2950 4300 2900 4300
Wire Wire Line
	3050 4025 2900 4025
Wire Wire Line
	3050 4025 3050 4375
Wire Wire Line
	3150 5175 2925 5175
Wire Wire Line
	2925 5075 3150 5075
$Comp
L atv_cluster_hat:PCA9552PW,118 U4
U 1 1 5F0E5BB2
P 7125 5100
F 0 "U4" H 7125 6265 50  0000 C CNN
F 1 "PCA9552PW,118" H 7125 6174 50  0000 C CNN
F 2 "lib:SOP65P640X110-24N" H 6625 3750 50  0001 L BNN
F 3 "https://www.nxp.com/docs/en/data-sheet/PCA9552.pdf" H 6925 3650 50  0001 L BNN
F 4 "568-11924-1-ND" H 7125 3600 50  0001 C CNN "DPN"
F 5 "PCA9552PW,118" H 7125 3500 50  0001 C CNN "PN"
F 6 "https://www.digikey.com/product-detail/en/nxp-usa-inc/PCA9552PW-118/568-11924-1-ND/5221886" H 7125 3700 50  0001 C CNN "URL"
	1    7125 5100
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5F0E5BBD
P 6050 5650
AR Path="/5F0E5BBD" Ref="C?"  Part="1" 
AR Path="/5F028404/5F0E5BBD" Ref="C9"  Part="1" 
F 0 "C9" H 5935 5604 50  0000 R CNN
F 1 "100n" H 5935 5695 50  0000 R CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 6088 5500 50  0001 C CNN
F 3 "~" H 6050 5650 50  0001 C CNN
F 4 "732-8109-1-ND" H 6050 5650 50  0001 C CNN "DPN"
	1    6050 5650
	1    0    0    1   
$EndComp
$Comp
L Device:C C?
U 1 1 5F0E5BC8
P 6275 5650
AR Path="/5F0E5BC8" Ref="C?"  Part="1" 
AR Path="/5F028404/5F0E5BC8" Ref="C10"  Part="1" 
F 0 "C10" H 6160 5604 50  0000 R CNN
F 1 "10u" H 6160 5695 50  0000 R CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 6313 5500 50  0001 C CNN
F 3 "~" H 6275 5650 50  0001 C CNN
F 4 "1276-1055-1-ND" H 6275 5650 50  0001 C CNN "DPN"
	1    6275 5650
	-1   0    0    1   
$EndComp
$Comp
L Device:R R?
U 1 1 5F0E5BD3
P 6025 4600
AR Path="/5F0E5BD3" Ref="R?"  Part="1" 
AR Path="/5EFF957B/5F0E5BD3" Ref="R?"  Part="1" 
AR Path="/5F028404/5F0E5BD3" Ref="R84"  Part="1" 
F 0 "R84" H 6095 4646 50  0000 L CNN
F 1 "10k" H 6095 4555 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 5955 4600 50  0001 C CNN
F 3 "~" H 6025 4600 50  0001 C CNN
F 4 "P10.0KFCT-ND" H 6025 4600 50  0001 C CNN "DPN"
	1    6025 4600
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R?
U 1 1 5F0E5BDE
P 6025 4325
AR Path="/5F0E5BDE" Ref="R?"  Part="1" 
AR Path="/5EFF957B/5F0E5BDE" Ref="R?"  Part="1" 
AR Path="/5F028404/5F0E5BDE" Ref="R82"  Part="1" 
F 0 "R82" H 6095 4371 50  0000 L CNN
F 1 "10k" H 6095 4280 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 5955 4325 50  0001 C CNN
F 3 "~" H 6025 4325 50  0001 C CNN
F 4 "P10.0KFCT-ND" H 6025 4325 50  0001 C CNN "DPN"
	1    6025 4325
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R?
U 1 1 5F0E5BE9
P 6025 4050
AR Path="/5F0E5BE9" Ref="R?"  Part="1" 
AR Path="/5EFF957B/5F0E5BE9" Ref="R?"  Part="1" 
AR Path="/5F028404/5F0E5BE9" Ref="R80"  Part="1" 
F 0 "R80" H 6095 4096 50  0000 L CNN
F 1 "10k" H 6095 4005 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 5955 4050 50  0001 C CNN
F 3 "~" H 6025 4050 50  0001 C CNN
F 4 "P10.0KFCT-ND" H 6025 4050 50  0001 C CNN "DPN"
	1    6025 4050
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R?
U 1 1 5F0E5BF4
P 6050 4900
AR Path="/5F0E5BF4" Ref="R?"  Part="1" 
AR Path="/5EFF957B/5F0E5BF4" Ref="R?"  Part="1" 
AR Path="/5F028404/5F0E5BF4" Ref="R86"  Part="1" 
F 0 "R86" H 6120 4946 50  0000 L CNN
F 1 "10k" H 6120 4855 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 5980 4900 50  0001 C CNN
F 3 "~" H 6050 4900 50  0001 C CNN
F 4 "P10.0KFCT-ND" H 6050 4900 50  0001 C CNN "DPN"
	1    6050 4900
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0231
U 1 1 5F0E5BFE
P 7900 6250
F 0 "#PWR0231" H 7900 6000 50  0001 C CNN
F 1 "GND" H 7905 6077 50  0000 C CNN
F 2 "" H 7900 6250 50  0001 C CNN
F 3 "" H 7900 6250 50  0001 C CNN
	1    7900 6250
	1    0    0    -1  
$EndComp
Wire Wire Line
	7825 6100 7900 6100
Wire Wire Line
	7900 6100 7900 6250
Wire Wire Line
	7825 4200 7925 4200
Wire Wire Line
	5875 5450 6050 5450
Wire Wire Line
	6050 5450 6050 5500
Wire Wire Line
	6050 5450 6275 5450
Wire Wire Line
	6275 5450 6275 5500
Connection ~ 6050 5450
$Comp
L power:GND #PWR0229
U 1 1 5F0E5C10
P 6275 5925
F 0 "#PWR0229" H 6275 5675 50  0001 C CNN
F 1 "GND" H 6280 5752 50  0000 C CNN
F 2 "" H 6275 5925 50  0001 C CNN
F 3 "" H 6275 5925 50  0001 C CNN
	1    6275 5925
	1    0    0    -1  
$EndComp
Wire Wire Line
	6050 5800 6050 5875
Wire Wire Line
	6050 5875 6275 5875
Wire Wire Line
	6275 5875 6275 5925
Wire Wire Line
	6275 5800 6275 5875
Connection ~ 6275 5875
$Comp
L power:+3.3V #PWR?
U 1 1 5F0E5C1F
P 7925 4025
AR Path="/5F0E5C1F" Ref="#PWR?"  Part="1" 
AR Path="/5F028404/5F0E5C1F" Ref="#PWR0218"  Part="1" 
F 0 "#PWR0218" H 7925 3875 50  0001 C CNN
F 1 "+3.3V" H 7940 4198 50  0000 C CNN
F 2 "" H 7925 4025 50  0001 C CNN
F 3 "" H 7925 4025 50  0001 C CNN
	1    7925 4025
	1    0    0    -1  
$EndComp
Wire Wire Line
	7925 4025 7925 4200
$Comp
L power:+3.3V #PWR?
U 1 1 5F0E5C2A
P 5875 5450
AR Path="/5F0E5C2A" Ref="#PWR?"  Part="1" 
AR Path="/5F028404/5F0E5C2A" Ref="#PWR0227"  Part="1" 
F 0 "#PWR0227" H 5875 5300 50  0001 C CNN
F 1 "+3.3V" H 5890 5623 50  0000 C CNN
F 2 "" H 5875 5450 50  0001 C CNN
F 3 "" H 5875 5450 50  0001 C CNN
	1    5875 5450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0222
U 1 1 5F0E5C34
P 5625 4600
F 0 "#PWR0222" H 5625 4350 50  0001 C CNN
F 1 "GND" H 5630 4427 50  0000 C CNN
F 2 "" H 5625 4600 50  0001 C CNN
F 3 "" H 5625 4600 50  0001 C CNN
	1    5625 4600
	0    1    1    0   
$EndComp
Wire Wire Line
	6425 4400 6325 4400
Wire Wire Line
	5875 4050 5750 4050
Wire Wire Line
	5750 4050 5750 4325
Wire Wire Line
	5750 4325 5600 4325
Wire Wire Line
	5875 4325 5750 4325
Connection ~ 5750 4325
$Comp
L power:+3.3V #PWR?
U 1 1 5F0E5C46
P 5775 4900
AR Path="/5F0E5C46" Ref="#PWR?"  Part="1" 
AR Path="/5F028404/5F0E5C46" Ref="#PWR0225"  Part="1" 
F 0 "#PWR0225" H 5775 4750 50  0001 C CNN
F 1 "+3.3V" H 5790 5073 50  0000 C CNN
F 2 "" H 5775 4900 50  0001 C CNN
F 3 "" H 5775 4900 50  0001 C CNN
	1    5775 4900
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5775 4900 5900 4900
Wire Wire Line
	6175 4600 6425 4600
Wire Wire Line
	6425 4500 6225 4500
Wire Wire Line
	6225 4500 6225 4325
Wire Wire Line
	6225 4325 6175 4325
Wire Wire Line
	6325 4050 6175 4050
Wire Wire Line
	6325 4050 6325 4400
Wire Wire Line
	6200 4900 6300 4900
Wire Wire Line
	6425 5200 6200 5200
Wire Wire Line
	6200 5100 6425 5100
$Comp
L power:+3.3V #PWR?
U 1 1 5F12CB68
P 5475 1200
AR Path="/5F12CB68" Ref="#PWR?"  Part="1" 
AR Path="/5F028404/5F12CB68" Ref="#PWR0205"  Part="1" 
F 0 "#PWR0205" H 5475 1050 50  0001 C CNN
F 1 "+3.3V" H 5490 1373 50  0000 C CNN
F 2 "" H 5475 1200 50  0001 C CNN
F 3 "" H 5475 1200 50  0001 C CNN
	1    5475 1200
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5475 1200 5800 1200
$Comp
L power:+3.3V #PWR?
U 1 1 5F137196
P 2375 4300
AR Path="/5F137196" Ref="#PWR?"  Part="1" 
AR Path="/5F028404/5F137196" Ref="#PWR0219"  Part="1" 
F 0 "#PWR0219" H 2375 4150 50  0001 C CNN
F 1 "+3.3V" H 2390 4473 50  0000 C CNN
F 2 "" H 2375 4300 50  0001 C CNN
F 3 "" H 2375 4300 50  0001 C CNN
	1    2375 4300
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2600 4300 2375 4300
Wire Wire Line
	2375 4025 2600 4025
$Comp
L power:GND #PWR0221
U 1 1 5F14A474
P 2375 4575
F 0 "#PWR0221" H 2375 4325 50  0001 C CNN
F 1 "GND" H 2380 4402 50  0000 C CNN
F 2 "" H 2375 4575 50  0001 C CNN
F 3 "" H 2375 4575 50  0001 C CNN
	1    2375 4575
	0    1    1    0   
$EndComp
Wire Wire Line
	2375 4575 2600 4575
$Comp
L power:+3.3V #PWR?
U 1 1 5F1540F2
P 5600 4325
AR Path="/5F1540F2" Ref="#PWR?"  Part="1" 
AR Path="/5F028404/5F1540F2" Ref="#PWR0220"  Part="1" 
F 0 "#PWR0220" H 5600 4175 50  0001 C CNN
F 1 "+3.3V" H 5615 4498 50  0000 C CNN
F 2 "" H 5600 4325 50  0001 C CNN
F 3 "" H 5600 4325 50  0001 C CNN
	1    5600 4325
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5625 4600 5875 4600
Wire Wire Line
	2650 2150 2650 2100
Wire Wire Line
	2650 2100 2975 2100
Wire Wire Line
	2975 2100 2975 2025
Connection ~ 2975 2025
Wire Wire Line
	2975 2025 3075 2025
Wire Wire Line
	6075 5100 6075 5000
Wire Wire Line
	6075 5000 6300 5000
Wire Wire Line
	6300 5000 6300 4900
Connection ~ 6300 4900
Wire Wire Line
	6300 4900 6425 4900
$Comp
L Device:R R?
U 1 1 5F1FB8A0
P 9300 5000
AR Path="/5F1FB8A0" Ref="R?"  Part="1" 
AR Path="/5EFF957B/5F1FB8A0" Ref="R?"  Part="1" 
AR Path="/5F028404/5F1FB8A0" Ref="R87"  Part="1" 
F 0 "R87" H 9370 5046 50  0000 L CNN
F 1 "10k" H 9370 4955 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 9230 5000 50  0001 C CNN
F 3 "~" H 9300 5000 50  0001 C CNN
F 4 "P10.0KFCT-ND" H 9300 5000 50  0001 C CNN "DPN"
	1    9300 5000
	-1   0    0    1   
$EndComp
$Comp
L Device:R R?
U 1 1 5F1FC001
P 9600 5000
AR Path="/5F1FC001" Ref="R?"  Part="1" 
AR Path="/5EFF957B/5F1FC001" Ref="R?"  Part="1" 
AR Path="/5F028404/5F1FC001" Ref="R88"  Part="1" 
F 0 "R88" H 9670 5046 50  0000 L CNN
F 1 "10k" H 9670 4955 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 9530 5000 50  0001 C CNN
F 3 "~" H 9600 5000 50  0001 C CNN
F 4 "P10.0KFCT-ND" H 9600 5000 50  0001 C CNN "DPN"
	1    9600 5000
	-1   0    0    1   
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 5F1FC1A5
P 9450 4750
AR Path="/5F1FC1A5" Ref="#PWR?"  Part="1" 
AR Path="/5F028404/5F1FC1A5" Ref="#PWR0223"  Part="1" 
F 0 "#PWR0223" H 9450 4600 50  0001 C CNN
F 1 "+3.3V" H 9465 4923 50  0000 C CNN
F 2 "" H 9450 4750 50  0001 C CNN
F 3 "" H 9450 4750 50  0001 C CNN
	1    9450 4750
	1    0    0    -1  
$EndComp
Wire Wire Line
	9300 5150 9300 5200
Wire Wire Line
	8925 5200 9300 5200
Wire Wire Line
	9600 5300 9600 5150
Wire Wire Line
	8925 5300 9600 5300
Wire Wire Line
	9300 4850 9300 4800
Wire Wire Line
	9300 4800 9450 4800
Wire Wire Line
	9450 4800 9450 4750
Wire Wire Line
	9600 4850 9600 4800
Wire Wire Line
	9600 4800 9450 4800
Connection ~ 9450 4800
Text Notes 8775 5500 0    50   ~ 0
Place second set of pull ups\n at final gpio expander
Text GLabel 4550 2225 2    20   Input ~ 0
pwr_toggle_00
Text GLabel 4550 2125 2    20   Input ~ 0
pwr_toggle_01
Text GLabel 4550 2025 2    20   Input ~ 0
pwr_toggle_02
Text GLabel 4550 1925 2    20   Input ~ 0
pwr_toggle_03
Text GLabel 4550 1825 2    20   Input ~ 0
pwr_toggle_04
Text GLabel 4550 1725 2    20   Input ~ 0
pwr_toggle_05
Text GLabel 4550 1625 2    20   Input ~ 0
pwr_toggle_06
Text GLabel 4550 1525 2    20   Input ~ 0
pwr_toggle_07
Text GLabel 4550 2325 2    20   Input ~ 0
pwr_toggle_08
Text GLabel 4550 2425 2    20   Input ~ 0
pwr_toggle_09
Text GLabel 4550 2525 2    20   Input ~ 0
pwr_toggle_10
Text GLabel 4550 2625 2    20   Input ~ 0
pwr_toggle_11
Text GLabel 4550 2725 2    20   Input ~ 0
pwr_toggle_12
Text GLabel 4550 2825 2    20   Input ~ 0
pwr_toggle_13
Text GLabel 4550 2925 2    20   Input ~ 0
pwr_toggle_14
Text GLabel 4550 3025 2    20   Input ~ 0
pwr_toggle_15
Wire Wire Line
	4475 1525 4550 1525
Wire Wire Line
	4550 1625 4475 1625
Wire Wire Line
	4475 1725 4550 1725
Wire Wire Line
	4475 1825 4550 1825
Wire Wire Line
	4475 1925 4550 1925
Wire Wire Line
	4475 2025 4550 2025
Wire Wire Line
	4475 2125 4550 2125
Wire Wire Line
	4475 2225 4550 2225
Wire Wire Line
	4475 2325 4550 2325
Wire Wire Line
	4475 2425 4550 2425
Wire Wire Line
	4475 2525 4550 2525
Wire Wire Line
	4475 2625 4550 2625
Wire Wire Line
	4475 2725 4550 2725
Wire Wire Line
	4475 2825 4550 2825
Wire Wire Line
	4475 2925 4550 2925
Wire Wire Line
	4475 3025 4550 3025
Text GLabel 7825 2250 2    20   Input ~ 0
pwr_toggle_16
Text GLabel 7825 2150 2    20   Input ~ 0
pwr_toggle_17
Text GLabel 7825 2050 2    20   Input ~ 0
pwr_toggle_18
Text GLabel 7825 1950 2    20   Input ~ 0
pwr_toggle_19
Text GLabel 7825 1850 2    20   Input ~ 0
pwr_toggle_20
Text GLabel 7825 1750 2    20   Input ~ 0
pwr_toggle_21
Text GLabel 7825 1650 2    20   Input ~ 0
pwr_toggle_22
Text GLabel 7825 1550 2    20   Input ~ 0
pwr_toggle_23
Text GLabel 7825 2350 2    20   Input ~ 0
pwr_toggle_24
Text GLabel 7825 2450 2    20   Input ~ 0
pwr_toggle_25
Text GLabel 7825 2550 2    20   Input ~ 0
pwr_toggle_26
Text GLabel 7825 2650 2    20   Input ~ 0
pwr_toggle_27
Text GLabel 7825 2750 2    20   Input ~ 0
pwr_toggle_28
Text GLabel 7825 2850 2    20   Input ~ 0
pwr_toggle_29
Text GLabel 7825 2950 2    20   Input ~ 0
pwr_toggle_30
Text GLabel 7825 3050 2    20   Input ~ 0
pwr_toggle_31
Wire Wire Line
	7750 1550 7825 1550
Wire Wire Line
	7825 1650 7750 1650
Wire Wire Line
	7750 1750 7825 1750
Wire Wire Line
	7750 1850 7825 1850
Wire Wire Line
	7750 1950 7825 1950
Wire Wire Line
	7750 2050 7825 2050
Wire Wire Line
	7750 2150 7825 2150
Wire Wire Line
	7750 2250 7825 2250
Wire Wire Line
	7750 2350 7825 2350
Wire Wire Line
	7750 2450 7825 2450
Wire Wire Line
	7750 2550 7825 2550
Wire Wire Line
	7750 2650 7825 2650
Wire Wire Line
	7750 2750 7825 2750
Wire Wire Line
	7750 2850 7825 2850
Wire Wire Line
	7750 2950 7825 2950
Wire Wire Line
	7750 3050 7825 3050
Text GLabel 4625 5075 2    20   Input ~ 0
pwr_toggle_32
Text GLabel 4625 4975 2    20   Input ~ 0
pwr_toggle_33
Text GLabel 4625 4875 2    20   Input ~ 0
pwr_toggle_34
Text GLabel 4625 4775 2    20   Input ~ 0
pwr_toggle_35
Text GLabel 4625 4675 2    20   Input ~ 0
pwr_toggle_36
Text GLabel 4625 4575 2    20   Input ~ 0
pwr_toggle_37
Text GLabel 4625 4475 2    20   Input ~ 0
pwr_toggle_38
Text GLabel 4625 4375 2    20   Input ~ 0
pwr_toggle_39
Text GLabel 4625 5175 2    20   Input ~ 0
pwr_toggle_40
Text GLabel 4625 5275 2    20   Input ~ 0
pwr_toggle_41
Text GLabel 4625 5375 2    20   Input ~ 0
pwr_toggle_42
Text GLabel 4625 5475 2    20   Input ~ 0
pwr_toggle_43
Text GLabel 4625 5575 2    20   Input ~ 0
pwr_toggle_44
Text GLabel 4625 5675 2    20   Input ~ 0
pwr_toggle_45
Text GLabel 4625 5775 2    20   Input ~ 0
pwr_toggle_46
Text GLabel 4625 5875 2    20   Input ~ 0
pwr_toggle_47
Wire Wire Line
	4550 4375 4625 4375
Wire Wire Line
	4625 4475 4550 4475
Wire Wire Line
	4550 4575 4625 4575
Wire Wire Line
	4550 4675 4625 4675
Wire Wire Line
	4550 4775 4625 4775
Wire Wire Line
	4550 4875 4625 4875
Wire Wire Line
	4550 4975 4625 4975
Wire Wire Line
	4550 5075 4625 5075
Wire Wire Line
	4550 5175 4625 5175
Wire Wire Line
	4550 5275 4625 5275
Wire Wire Line
	4550 5375 4625 5375
Wire Wire Line
	4550 5475 4625 5475
Wire Wire Line
	4550 5575 4625 5575
Wire Wire Line
	4550 5675 4625 5675
Wire Wire Line
	4550 5775 4625 5775
Wire Wire Line
	4550 5875 4625 5875
Text GLabel 7900 5100 2    20   Input ~ 0
pwr_toggle_48
Text GLabel 7900 5000 2    20   Input ~ 0
pwr_toggle_49
Text GLabel 7900 4900 2    20   Input ~ 0
pwr_toggle_50
Text GLabel 7900 4800 2    20   Input ~ 0
pwr_toggle_51
Text GLabel 7900 4700 2    20   Input ~ 0
pwr_toggle_52
Text GLabel 7900 4600 2    20   Input ~ 0
pwr_toggle_53
Text GLabel 7900 4500 2    20   Input ~ 0
pwr_toggle_54
Text GLabel 7900 4400 2    20   Input ~ 0
pwr_toggle_55
Text GLabel 7900 5200 2    20   Input ~ 0
pwr_toggle_56
Text GLabel 7900 5300 2    20   Input ~ 0
pwr_toggle_57
Text GLabel 7900 5400 2    20   Input ~ 0
pwr_toggle_58
Text GLabel 7900 5500 2    20   Input ~ 0
pwr_toggle_59
Text GLabel 7900 5600 2    20   Input ~ 0
pwr_toggle_60
Text GLabel 7900 5700 2    20   Input ~ 0
pwr_toggle_61
Text GLabel 7900 5800 2    20   Input ~ 0
pwr_toggle_62
Text GLabel 7900 5900 2    20   Input ~ 0
pwr_toggle_63
Wire Wire Line
	7825 4400 7900 4400
Wire Wire Line
	7900 4500 7825 4500
Wire Wire Line
	7825 4600 7900 4600
Wire Wire Line
	7825 4700 7900 4700
Wire Wire Line
	7825 4800 7900 4800
Wire Wire Line
	7825 4900 7900 4900
Wire Wire Line
	7825 5000 7900 5000
Wire Wire Line
	7825 5100 7900 5100
Wire Wire Line
	7825 5200 7900 5200
Wire Wire Line
	7825 5300 7900 5300
Wire Wire Line
	7825 5400 7900 5400
Wire Wire Line
	7825 5500 7900 5500
Wire Wire Line
	7825 5600 7900 5600
Wire Wire Line
	7825 5700 7900 5700
Wire Wire Line
	7825 5800 7900 5800
Wire Wire Line
	7825 5900 7900 5900
Text GLabel 2600 2150 0    20   Input ~ 0
GPIO_RST_0
Text GLabel 5920 2170 0    20   Input ~ 0
GPIO_RST_1
Text GLabel 5980 5100 0    20   Input ~ 0
GPIO_RST_3
Wire Wire Line
	2600 2150 2650 2150
Wire Wire Line
	5920 2170 6180 2170
Wire Wire Line
	6180 2170 6180 2050
Connection ~ 6180 2050
Wire Wire Line
	6180 2050 6350 2050
Text GLabel 2730 4970 0    20   Input ~ 0
GPIO_RST_2
Wire Wire Line
	2925 4875 2990 4875
Wire Wire Line
	2730 4970 2990 4970
Wire Wire Line
	2990 4970 2990 4875
Connection ~ 2990 4875
Wire Wire Line
	2990 4875 3150 4875
Wire Wire Line
	5980 5100 6075 5100
Text GLabel 2835 2225 0    20   Input ~ 0
SDA
Wire Wire Line
	2835 2225 3075 2225
Text GLabel 2835 2325 0    20   Input ~ 0
SCL
Wire Wire Line
	2835 2325 3075 2325
Text GLabel 6125 2250 0    20   Input ~ 0
SDA
Text GLabel 6125 2350 0    20   Input ~ 0
SCL
Text GLabel 2925 5075 0    20   Input ~ 0
SDA
Text GLabel 2925 5175 0    20   Input ~ 0
SCL
Text GLabel 6200 5100 0    20   Input ~ 0
SDA
Text GLabel 6200 5200 0    20   Input ~ 0
SCL
Text GLabel 8925 5200 0    20   Input ~ 0
SDA
Text GLabel 8925 5300 0    20   Input ~ 0
SCL
$EndSCHEMATC
