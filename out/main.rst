                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.0.0 #11528 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module main
                                      6 	.optsdcc -mmcs51 --model-large
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _main
                                     12 	.globl _tempGet
                                     13 	.globl _tempFetch
                                     14 	.globl _sprintf
                                     15 	.globl _memmove
                                     16 	.globl _oledPrintfc
                                     17 	.globl _oledPrint
                                     18 	.globl _oledClear
                                     19 	.globl _oledInit
                                     20 	.globl _lut
                                     21 	.globl _adcGet
                                     22 	.globl _adcInit
                                     23 	.globl _pwm3Duty
                                     24 	.globl _pwm3Init
                                     25 	.globl _uart1Write
                                     26 	.globl _uart1Config
                                     27 	.globl _delay
                                     28 	.globl _sysClockConfig
                                     29 	.globl _UIF_BUS_RST
                                     30 	.globl _UIF_TRANSFER
                                     31 	.globl _UIF_SUSPEND
                                     32 	.globl _UIF_FIFO_OV
                                     33 	.globl _U_SIE_FREE
                                     34 	.globl _U_TOG_OK
                                     35 	.globl _U_IS_NAK
                                     36 	.globl _S0_R_FIFO0
                                     37 	.globl _S0_R_FIFO1
                                     38 	.globl _S0_T_FIFO
                                     39 	.globl _S0_FREE
                                     40 	.globl _S0_IF_BYTE
                                     41 	.globl _S0_IF_FIRST
                                     42 	.globl _S0_IF_OV
                                     43 	.globl _S0_FST_ACT
                                     44 	.globl _CP_RL2
                                     45 	.globl _C_T2
                                     46 	.globl _TR2
                                     47 	.globl _EXEN2
                                     48 	.globl _TCLK
                                     49 	.globl _RCLK
                                     50 	.globl _EXF2
                                     51 	.globl _CAP1F
                                     52 	.globl _TF2
                                     53 	.globl _RI
                                     54 	.globl _TI
                                     55 	.globl _RB8
                                     56 	.globl _TB8
                                     57 	.globl _REN
                                     58 	.globl _SM2
                                     59 	.globl _SM1
                                     60 	.globl _SM0
                                     61 	.globl _IT0
                                     62 	.globl _IE0
                                     63 	.globl _IT1
                                     64 	.globl _IE1
                                     65 	.globl _TR0
                                     66 	.globl _TF0
                                     67 	.globl _TR1
                                     68 	.globl _TF1
                                     69 	.globl _RXD1_
                                     70 	.globl _LED2
                                     71 	.globl _CAP3_
                                     72 	.globl _PWM3_
                                     73 	.globl _TXD1_
                                     74 	.globl _TNOW_
                                     75 	.globl _LED3
                                     76 	.globl _SCS_
                                     77 	.globl _SCK_
                                     78 	.globl _P40
                                     79 	.globl _P41
                                     80 	.globl _P42
                                     81 	.globl _P43
                                     82 	.globl _P44
                                     83 	.globl _P45
                                     84 	.globl _P46
                                     85 	.globl _P47
                                     86 	.globl _RXD
                                     87 	.globl _TXD
                                     88 	.globl _INT0
                                     89 	.globl _LED0
                                     90 	.globl _INT1
                                     91 	.globl _LED1
                                     92 	.globl _T0
                                     93 	.globl _XCS0
                                     94 	.globl _LEDC
                                     95 	.globl _T1
                                     96 	.globl _DA6
                                     97 	.globl _WR
                                     98 	.globl _RD
                                     99 	.globl _P30
                                    100 	.globl _P31
                                    101 	.globl _P32
                                    102 	.globl _P33
                                    103 	.globl _P34
                                    104 	.globl _P35
                                    105 	.globl _P36
                                    106 	.globl _P37
                                    107 	.globl _CAP2_
                                    108 	.globl _T2EX_
                                    109 	.globl _TNOW
                                    110 	.globl _RXD1
                                    111 	.globl _DA7
                                    112 	.globl _TXD1
                                    113 	.globl _P20
                                    114 	.globl _P21
                                    115 	.globl _P22
                                    116 	.globl _P23
                                    117 	.globl _P24
                                    118 	.globl _P25
                                    119 	.globl _P26
                                    120 	.globl _P27
                                    121 	.globl _CAP1
                                    122 	.globl _T2
                                    123 	.globl _CAP2
                                    124 	.globl _T2EX
                                    125 	.globl _CAP3
                                    126 	.globl _PWM3
                                    127 	.globl _SCS
                                    128 	.globl _MOSI
                                    129 	.globl _MISO
                                    130 	.globl _SCK
                                    131 	.globl _AIN0
                                    132 	.globl _AIN1
                                    133 	.globl _AIN2
                                    134 	.globl _AIN3
                                    135 	.globl _AIN4
                                    136 	.globl _AIN5
                                    137 	.globl _AIN6
                                    138 	.globl _AIN7
                                    139 	.globl _P10
                                    140 	.globl _P11
                                    141 	.globl _P12
                                    142 	.globl _P13
                                    143 	.globl _P14
                                    144 	.globl _P15
                                    145 	.globl _P16
                                    146 	.globl _P17
                                    147 	.globl _UDTR
                                    148 	.globl _URTS
                                    149 	.globl _RXD_
                                    150 	.globl _TXD_
                                    151 	.globl _UCTS
                                    152 	.globl _UDSR
                                    153 	.globl _URI
                                    154 	.globl _UDCD
                                    155 	.globl _P00
                                    156 	.globl _P01
                                    157 	.globl _P02
                                    158 	.globl _P03
                                    159 	.globl _P04
                                    160 	.globl _P05
                                    161 	.globl _P06
                                    162 	.globl _P07
                                    163 	.globl _IE_SPI0
                                    164 	.globl _IE_TMR3
                                    165 	.globl _IE_USB
                                    166 	.globl _IE_ADC
                                    167 	.globl _IE_UART1
                                    168 	.globl _IE_GPIO
                                    169 	.globl _IE_WDOG
                                    170 	.globl _PX0
                                    171 	.globl _PT0
                                    172 	.globl _PX1
                                    173 	.globl _PT1
                                    174 	.globl _PS
                                    175 	.globl _PT2
                                    176 	.globl _PL_FLAG
                                    177 	.globl _PH_FLAG
                                    178 	.globl _EX0
                                    179 	.globl _ET0
                                    180 	.globl _EX1
                                    181 	.globl _ET1
                                    182 	.globl _ES
                                    183 	.globl _ET2
                                    184 	.globl _E_DIS
                                    185 	.globl _EA
                                    186 	.globl _P
                                    187 	.globl _F1
                                    188 	.globl _OV
                                    189 	.globl _RS0
                                    190 	.globl _RS1
                                    191 	.globl _F0
                                    192 	.globl _AC
                                    193 	.globl _CY
                                    194 	.globl _USB_DMA_AH
                                    195 	.globl _USB_DMA_AL
                                    196 	.globl _USB_DMA
                                    197 	.globl _UDEV_CTRL
                                    198 	.globl _USB_DEV_AD
                                    199 	.globl _USB_CTRL
                                    200 	.globl _USB_INT_EN
                                    201 	.globl _UEP4_T_LEN
                                    202 	.globl _UEP4_CTRL
                                    203 	.globl _UEP0_T_LEN
                                    204 	.globl _UEP0_CTRL
                                    205 	.globl _USB_MIS_ST
                                    206 	.globl _USB_INT_ST
                                    207 	.globl _USB_INT_FG
                                    208 	.globl _UEP3_T_LEN
                                    209 	.globl _UEP3_CTRL
                                    210 	.globl _UEP2_T_LEN
                                    211 	.globl _UEP2_CTRL
                                    212 	.globl _UEP1_T_LEN
                                    213 	.globl _UEP1_CTRL
                                    214 	.globl _USB_RX_LEN
                                    215 	.globl _ADC_EX_SW
                                    216 	.globl _ADC_SETUP
                                    217 	.globl _ADC_FIFO_H
                                    218 	.globl _ADC_FIFO_L
                                    219 	.globl _ADC_FIFO
                                    220 	.globl _ADC_CHANN
                                    221 	.globl _ADC_CTRL
                                    222 	.globl _ADC_STAT
                                    223 	.globl _ADC_CK_SE
                                    224 	.globl _ADC_DMA_CN
                                    225 	.globl _ADC_DMA_AH
                                    226 	.globl _ADC_DMA_AL
                                    227 	.globl _ADC_DMA
                                    228 	.globl _SER1_ADDR
                                    229 	.globl _SER1_MSR
                                    230 	.globl _SER1_LSR
                                    231 	.globl _SER1_MCR
                                    232 	.globl _SER1_LCR
                                    233 	.globl _SER1_IIR
                                    234 	.globl _SER1_IER
                                    235 	.globl _SER1_FIFO
                                    236 	.globl _SPI0_SETUP
                                    237 	.globl _SPI0_CK_SE
                                    238 	.globl _SPI0_CTRL
                                    239 	.globl _SPI0_DATA
                                    240 	.globl _SPI0_STAT
                                    241 	.globl _T3_FIFO_H
                                    242 	.globl _T3_FIFO_L
                                    243 	.globl _T3_FIFO
                                    244 	.globl _T3_DMA_AH
                                    245 	.globl _T3_DMA_AL
                                    246 	.globl _T3_DMA
                                    247 	.globl _T3_DMA_CN
                                    248 	.globl _T3_CTRL
                                    249 	.globl _T3_STAT
                                    250 	.globl _T3_END_H
                                    251 	.globl _T3_END_L
                                    252 	.globl _T3_END
                                    253 	.globl _T3_COUNT_H
                                    254 	.globl _T3_COUNT_L
                                    255 	.globl _T3_COUNT
                                    256 	.globl _T3_SETUP
                                    257 	.globl _TH2
                                    258 	.globl _TL2
                                    259 	.globl _T2COUNT
                                    260 	.globl _RCAP2H
                                    261 	.globl _RCAP2L
                                    262 	.globl _RCAP2
                                    263 	.globl _T2MOD
                                    264 	.globl _T2CON
                                    265 	.globl _SBUF
                                    266 	.globl _SCON
                                    267 	.globl _TH1
                                    268 	.globl _TH0
                                    269 	.globl _TL1
                                    270 	.globl _TL0
                                    271 	.globl _TMOD
                                    272 	.globl _TCON
                                    273 	.globl _XBUS_SPEED
                                    274 	.globl _XBUS_AUX
                                    275 	.globl _PIN_FUNC
                                    276 	.globl _PORT_CFG
                                    277 	.globl _P5_IN
                                    278 	.globl _P4_PU
                                    279 	.globl _P4_DIR
                                    280 	.globl _P4_IN
                                    281 	.globl _P4_OUT
                                    282 	.globl _P3_PU
                                    283 	.globl _P3_DIR
                                    284 	.globl _P3
                                    285 	.globl _P2_PU
                                    286 	.globl _P2_DIR
                                    287 	.globl _P2
                                    288 	.globl _P1_PU
                                    289 	.globl _P1_DIR
                                    290 	.globl _P1_IE
                                    291 	.globl _P1
                                    292 	.globl _P0_PU
                                    293 	.globl _P0_DIR
                                    294 	.globl _P0
                                    295 	.globl _ROM_CTRL
                                    296 	.globl _ROM_DATA_H
                                    297 	.globl _ROM_DATA_L
                                    298 	.globl _ROM_DATA
                                    299 	.globl _ROM_ADDR_H
                                    300 	.globl _ROM_ADDR_L
                                    301 	.globl _ROM_ADDR
                                    302 	.globl _GPIO_IE
                                    303 	.globl _IP_EX
                                    304 	.globl _IE_EX
                                    305 	.globl _IP
                                    306 	.globl _IE
                                    307 	.globl _WDOG_COUNT
                                    308 	.globl _RESET_KEEP
                                    309 	.globl _WAKE_CTRL
                                    310 	.globl _SLEEP_CTRL
                                    311 	.globl _CLOCK_CFG
                                    312 	.globl _PLL_CFG
                                    313 	.globl _PCON
                                    314 	.globl _GLOBAL_CFG
                                    315 	.globl _SAFE_MOD
                                    316 	.globl _DPH
                                    317 	.globl _DPL
                                    318 	.globl _SP
                                    319 	.globl _B
                                    320 	.globl _ACC
                                    321 	.globl _PSW
                                    322 	.globl _wcounter
                                    323 	.globl _k
                                    324 	.globl _sum
                                    325 	.globl _run
                                    326 	.globl _counter
                                    327 	.globl _tbuf
                                    328 	.globl _str
                                    329 	.globl _now
                                    330 	.globl _set
                                    331 	.globl _LED_DMA_X
                                    332 	.globl _LED_DMA_XL
                                    333 	.globl _LED_DMA_XH
                                    334 	.globl _LED_DMA_CN
                                    335 	.globl _LED_DMA
                                    336 	.globl _LED_DMA_AL
                                    337 	.globl _LED_DMA_AH
                                    338 	.globl _LED_CK_SE
                                    339 	.globl _LED_DATA
                                    340 	.globl _LED_CTRL
                                    341 	.globl _LED_STAT
                                    342 	.globl _UEP3_DMA
                                    343 	.globl _UEP3_DMA_L
                                    344 	.globl _UEP3_DMA_H
                                    345 	.globl _UEP2_DMA
                                    346 	.globl _UEP2_DMA_L
                                    347 	.globl _UEP2_DMA_H
                                    348 	.globl _UEP1_DMA
                                    349 	.globl _UEP1_DMA_L
                                    350 	.globl _UEP1_DMA_H
                                    351 	.globl _UEP0_DMA
                                    352 	.globl _UEP0_DMA_L
                                    353 	.globl _UEP0_DMA_H
                                    354 	.globl _UEP2_3_MOD
                                    355 	.globl _UEP4_1_MOD
                                    356 	.globl _pLED_DMA_X
                                    357 	.globl _pLED_DMA_XL
                                    358 	.globl _pLED_DMA_XH
                                    359 	.globl _pLED_DMA_CN
                                    360 	.globl _pLED_DMA
                                    361 	.globl _pLED_DMA_AL
                                    362 	.globl _pLED_DMA_AH
                                    363 	.globl _pLED_CK_SE
                                    364 	.globl _pLED_DATA
                                    365 	.globl _pLED_CTRL
                                    366 	.globl _pLED_STAT
                                    367 	.globl _pUEP3_DMA
                                    368 	.globl _pUEP3_DMA_L
                                    369 	.globl _pUEP3_DMA_H
                                    370 	.globl _pUEP2_DMA
                                    371 	.globl _pUEP2_DMA_L
                                    372 	.globl _pUEP2_DMA_H
                                    373 	.globl _pUEP1_DMA
                                    374 	.globl _pUEP1_DMA_L
                                    375 	.globl _pUEP1_DMA_H
                                    376 	.globl _pUEP0_DMA
                                    377 	.globl _pUEP0_DMA_L
                                    378 	.globl _pUEP0_DMA_H
                                    379 	.globl _pUEP2_3_MOD
                                    380 	.globl _pUEP4_1_MOD
                                    381 ;--------------------------------------------------------
                                    382 ; special function registers
                                    383 ;--------------------------------------------------------
                                    384 	.area RSEG    (ABS,DATA)
      000000                        385 	.org 0x0000
                           0000D0   386 _PSW	=	0x00d0
                           0000E0   387 _ACC	=	0x00e0
                           0000F0   388 _B	=	0x00f0
                           000081   389 _SP	=	0x0081
                           000082   390 _DPL	=	0x0082
                           000083   391 _DPH	=	0x0083
                           0000A1   392 _SAFE_MOD	=	0x00a1
                           0000B1   393 _GLOBAL_CFG	=	0x00b1
                           000087   394 _PCON	=	0x0087
                           0000B2   395 _PLL_CFG	=	0x00b2
                           0000B3   396 _CLOCK_CFG	=	0x00b3
                           0000EA   397 _SLEEP_CTRL	=	0x00ea
                           0000EB   398 _WAKE_CTRL	=	0x00eb
                           0000FE   399 _RESET_KEEP	=	0x00fe
                           0000FF   400 _WDOG_COUNT	=	0x00ff
                           0000A8   401 _IE	=	0x00a8
                           0000B8   402 _IP	=	0x00b8
                           0000E8   403 _IE_EX	=	0x00e8
                           0000E9   404 _IP_EX	=	0x00e9
                           0000CF   405 _GPIO_IE	=	0x00cf
                           008584   406 _ROM_ADDR	=	0x8584
                           000084   407 _ROM_ADDR_L	=	0x0084
                           000085   408 _ROM_ADDR_H	=	0x0085
                           008F8E   409 _ROM_DATA	=	0x8f8e
                           00008E   410 _ROM_DATA_L	=	0x008e
                           00008F   411 _ROM_DATA_H	=	0x008f
                           000086   412 _ROM_CTRL	=	0x0086
                           000080   413 _P0	=	0x0080
                           0000C4   414 _P0_DIR	=	0x00c4
                           0000C5   415 _P0_PU	=	0x00c5
                           000090   416 _P1	=	0x0090
                           0000B9   417 _P1_IE	=	0x00b9
                           0000BA   418 _P1_DIR	=	0x00ba
                           0000BB   419 _P1_PU	=	0x00bb
                           0000A0   420 _P2	=	0x00a0
                           0000BC   421 _P2_DIR	=	0x00bc
                           0000BD   422 _P2_PU	=	0x00bd
                           0000B0   423 _P3	=	0x00b0
                           0000BE   424 _P3_DIR	=	0x00be
                           0000BF   425 _P3_PU	=	0x00bf
                           0000C0   426 _P4_OUT	=	0x00c0
                           0000C1   427 _P4_IN	=	0x00c1
                           0000C2   428 _P4_DIR	=	0x00c2
                           0000C3   429 _P4_PU	=	0x00c3
                           0000C7   430 _P5_IN	=	0x00c7
                           0000C6   431 _PORT_CFG	=	0x00c6
                           0000CE   432 _PIN_FUNC	=	0x00ce
                           0000A2   433 _XBUS_AUX	=	0x00a2
                           0000FD   434 _XBUS_SPEED	=	0x00fd
                           000088   435 _TCON	=	0x0088
                           000089   436 _TMOD	=	0x0089
                           00008A   437 _TL0	=	0x008a
                           00008B   438 _TL1	=	0x008b
                           00008C   439 _TH0	=	0x008c
                           00008D   440 _TH1	=	0x008d
                           000098   441 _SCON	=	0x0098
                           000099   442 _SBUF	=	0x0099
                           0000C8   443 _T2CON	=	0x00c8
                           0000C9   444 _T2MOD	=	0x00c9
                           00CBCA   445 _RCAP2	=	0xcbca
                           0000CA   446 _RCAP2L	=	0x00ca
                           0000CB   447 _RCAP2H	=	0x00cb
                           00CDCC   448 _T2COUNT	=	0xcdcc
                           0000CC   449 _TL2	=	0x00cc
                           0000CD   450 _TH2	=	0x00cd
                           0000A3   451 _T3_SETUP	=	0x00a3
                           00A5A4   452 _T3_COUNT	=	0xa5a4
                           0000A4   453 _T3_COUNT_L	=	0x00a4
                           0000A5   454 _T3_COUNT_H	=	0x00a5
                           00A7A6   455 _T3_END	=	0xa7a6
                           0000A6   456 _T3_END_L	=	0x00a6
                           0000A7   457 _T3_END_H	=	0x00a7
                           0000A9   458 _T3_STAT	=	0x00a9
                           0000AA   459 _T3_CTRL	=	0x00aa
                           0000AB   460 _T3_DMA_CN	=	0x00ab
                           00ADAC   461 _T3_DMA	=	0xadac
                           0000AC   462 _T3_DMA_AL	=	0x00ac
                           0000AD   463 _T3_DMA_AH	=	0x00ad
                           00AFAE   464 _T3_FIFO	=	0xafae
                           0000AE   465 _T3_FIFO_L	=	0x00ae
                           0000AF   466 _T3_FIFO_H	=	0x00af
                           0000F8   467 _SPI0_STAT	=	0x00f8
                           0000F9   468 _SPI0_DATA	=	0x00f9
                           0000FA   469 _SPI0_CTRL	=	0x00fa
                           0000FB   470 _SPI0_CK_SE	=	0x00fb
                           0000FC   471 _SPI0_SETUP	=	0x00fc
                           00009A   472 _SER1_FIFO	=	0x009a
                           000091   473 _SER1_IER	=	0x0091
                           000092   474 _SER1_IIR	=	0x0092
                           000093   475 _SER1_LCR	=	0x0093
                           000094   476 _SER1_MCR	=	0x0094
                           000095   477 _SER1_LSR	=	0x0095
                           000096   478 _SER1_MSR	=	0x0096
                           000097   479 _SER1_ADDR	=	0x0097
                           00EDEC   480 _ADC_DMA	=	0xedec
                           0000EC   481 _ADC_DMA_AL	=	0x00ec
                           0000ED   482 _ADC_DMA_AH	=	0x00ed
                           0000EE   483 _ADC_DMA_CN	=	0x00ee
                           0000EF   484 _ADC_CK_SE	=	0x00ef
                           0000F1   485 _ADC_STAT	=	0x00f1
                           0000F2   486 _ADC_CTRL	=	0x00f2
                           0000F3   487 _ADC_CHANN	=	0x00f3
                           00F5F4   488 _ADC_FIFO	=	0xf5f4
                           0000F4   489 _ADC_FIFO_L	=	0x00f4
                           0000F5   490 _ADC_FIFO_H	=	0x00f5
                           0000F6   491 _ADC_SETUP	=	0x00f6
                           0000F7   492 _ADC_EX_SW	=	0x00f7
                           0000D1   493 _USB_RX_LEN	=	0x00d1
                           0000D2   494 _UEP1_CTRL	=	0x00d2
                           0000D3   495 _UEP1_T_LEN	=	0x00d3
                           0000D4   496 _UEP2_CTRL	=	0x00d4
                           0000D5   497 _UEP2_T_LEN	=	0x00d5
                           0000D6   498 _UEP3_CTRL	=	0x00d6
                           0000D7   499 _UEP3_T_LEN	=	0x00d7
                           0000D8   500 _USB_INT_FG	=	0x00d8
                           0000D9   501 _USB_INT_ST	=	0x00d9
                           0000DA   502 _USB_MIS_ST	=	0x00da
                           0000DC   503 _UEP0_CTRL	=	0x00dc
                           0000DD   504 _UEP0_T_LEN	=	0x00dd
                           0000DE   505 _UEP4_CTRL	=	0x00de
                           0000DF   506 _UEP4_T_LEN	=	0x00df
                           0000E1   507 _USB_INT_EN	=	0x00e1
                           0000E2   508 _USB_CTRL	=	0x00e2
                           0000E3   509 _USB_DEV_AD	=	0x00e3
                           0000E4   510 _UDEV_CTRL	=	0x00e4
                           00E7E6   511 _USB_DMA	=	0xe7e6
                           0000E6   512 _USB_DMA_AL	=	0x00e6
                           0000E7   513 _USB_DMA_AH	=	0x00e7
                                    514 ;--------------------------------------------------------
                                    515 ; special function bits
                                    516 ;--------------------------------------------------------
                                    517 	.area RSEG    (ABS,DATA)
      000000                        518 	.org 0x0000
                           0000D7   519 _CY	=	0x00d7
                           0000D6   520 _AC	=	0x00d6
                           0000D5   521 _F0	=	0x00d5
                           0000D4   522 _RS1	=	0x00d4
                           0000D3   523 _RS0	=	0x00d3
                           0000D2   524 _OV	=	0x00d2
                           0000D1   525 _F1	=	0x00d1
                           0000D0   526 _P	=	0x00d0
                           0000AF   527 _EA	=	0x00af
                           0000AE   528 _E_DIS	=	0x00ae
                           0000AD   529 _ET2	=	0x00ad
                           0000AC   530 _ES	=	0x00ac
                           0000AB   531 _ET1	=	0x00ab
                           0000AA   532 _EX1	=	0x00aa
                           0000A9   533 _ET0	=	0x00a9
                           0000A8   534 _EX0	=	0x00a8
                           0000BF   535 _PH_FLAG	=	0x00bf
                           0000BE   536 _PL_FLAG	=	0x00be
                           0000BD   537 _PT2	=	0x00bd
                           0000BC   538 _PS	=	0x00bc
                           0000BB   539 _PT1	=	0x00bb
                           0000BA   540 _PX1	=	0x00ba
                           0000B9   541 _PT0	=	0x00b9
                           0000B8   542 _PX0	=	0x00b8
                           0000EF   543 _IE_WDOG	=	0x00ef
                           0000EE   544 _IE_GPIO	=	0x00ee
                           0000EC   545 _IE_UART1	=	0x00ec
                           0000EB   546 _IE_ADC	=	0x00eb
                           0000EA   547 _IE_USB	=	0x00ea
                           0000E9   548 _IE_TMR3	=	0x00e9
                           0000E8   549 _IE_SPI0	=	0x00e8
                           000087   550 _P07	=	0x0087
                           000086   551 _P06	=	0x0086
                           000085   552 _P05	=	0x0085
                           000084   553 _P04	=	0x0084
                           000083   554 _P03	=	0x0083
                           000082   555 _P02	=	0x0082
                           000081   556 _P01	=	0x0081
                           000080   557 _P00	=	0x0080
                           000087   558 _UDCD	=	0x0087
                           000086   559 _URI	=	0x0086
                           000085   560 _UDSR	=	0x0085
                           000084   561 _UCTS	=	0x0084
                           000083   562 _TXD_	=	0x0083
                           000082   563 _RXD_	=	0x0082
                           000081   564 _URTS	=	0x0081
                           000080   565 _UDTR	=	0x0080
                           000097   566 _P17	=	0x0097
                           000096   567 _P16	=	0x0096
                           000095   568 _P15	=	0x0095
                           000094   569 _P14	=	0x0094
                           000093   570 _P13	=	0x0093
                           000092   571 _P12	=	0x0092
                           000091   572 _P11	=	0x0091
                           000090   573 _P10	=	0x0090
                           000097   574 _AIN7	=	0x0097
                           000096   575 _AIN6	=	0x0096
                           000095   576 _AIN5	=	0x0095
                           000094   577 _AIN4	=	0x0094
                           000093   578 _AIN3	=	0x0093
                           000092   579 _AIN2	=	0x0092
                           000091   580 _AIN1	=	0x0091
                           000090   581 _AIN0	=	0x0090
                           000097   582 _SCK	=	0x0097
                           000096   583 _MISO	=	0x0096
                           000095   584 _MOSI	=	0x0095
                           000094   585 _SCS	=	0x0094
                           000092   586 _PWM3	=	0x0092
                           000092   587 _CAP3	=	0x0092
                           000091   588 _T2EX	=	0x0091
                           000091   589 _CAP2	=	0x0091
                           000090   590 _T2	=	0x0090
                           000090   591 _CAP1	=	0x0090
                           0000A7   592 _P27	=	0x00a7
                           0000A6   593 _P26	=	0x00a6
                           0000A5   594 _P25	=	0x00a5
                           0000A4   595 _P24	=	0x00a4
                           0000A3   596 _P23	=	0x00a3
                           0000A2   597 _P22	=	0x00a2
                           0000A1   598 _P21	=	0x00a1
                           0000A0   599 _P20	=	0x00a0
                           0000A7   600 _TXD1	=	0x00a7
                           0000A7   601 _DA7	=	0x00a7
                           0000A6   602 _RXD1	=	0x00a6
                           0000A5   603 _TNOW	=	0x00a5
                           0000A5   604 _T2EX_	=	0x00a5
                           0000A5   605 _CAP2_	=	0x00a5
                           0000B7   606 _P37	=	0x00b7
                           0000B6   607 _P36	=	0x00b6
                           0000B5   608 _P35	=	0x00b5
                           0000B4   609 _P34	=	0x00b4
                           0000B3   610 _P33	=	0x00b3
                           0000B2   611 _P32	=	0x00b2
                           0000B1   612 _P31	=	0x00b1
                           0000B0   613 _P30	=	0x00b0
                           0000B7   614 _RD	=	0x00b7
                           0000B6   615 _WR	=	0x00b6
                           0000B5   616 _DA6	=	0x00b5
                           0000B5   617 _T1	=	0x00b5
                           0000B4   618 _LEDC	=	0x00b4
                           0000B4   619 _XCS0	=	0x00b4
                           0000B4   620 _T0	=	0x00b4
                           0000B3   621 _LED1	=	0x00b3
                           0000B3   622 _INT1	=	0x00b3
                           0000B2   623 _LED0	=	0x00b2
                           0000B2   624 _INT0	=	0x00b2
                           0000B1   625 _TXD	=	0x00b1
                           0000B0   626 _RXD	=	0x00b0
                           0000C7   627 _P47	=	0x00c7
                           0000C6   628 _P46	=	0x00c6
                           0000C5   629 _P45	=	0x00c5
                           0000C4   630 _P44	=	0x00c4
                           0000C3   631 _P43	=	0x00c3
                           0000C2   632 _P42	=	0x00c2
                           0000C1   633 _P41	=	0x00c1
                           0000C0   634 _P40	=	0x00c0
                           0000C7   635 _SCK_	=	0x00c7
                           0000C6   636 _SCS_	=	0x00c6
                           0000C4   637 _LED3	=	0x00c4
                           0000C4   638 _TNOW_	=	0x00c4
                           0000C4   639 _TXD1_	=	0x00c4
                           0000C2   640 _PWM3_	=	0x00c2
                           0000C2   641 _CAP3_	=	0x00c2
                           0000C0   642 _LED2	=	0x00c0
                           0000C0   643 _RXD1_	=	0x00c0
                           00008F   644 _TF1	=	0x008f
                           00008E   645 _TR1	=	0x008e
                           00008D   646 _TF0	=	0x008d
                           00008C   647 _TR0	=	0x008c
                           00008B   648 _IE1	=	0x008b
                           00008A   649 _IT1	=	0x008a
                           000089   650 _IE0	=	0x0089
                           000088   651 _IT0	=	0x0088
                           00009F   652 _SM0	=	0x009f
                           00009E   653 _SM1	=	0x009e
                           00009D   654 _SM2	=	0x009d
                           00009C   655 _REN	=	0x009c
                           00009B   656 _TB8	=	0x009b
                           00009A   657 _RB8	=	0x009a
                           000099   658 _TI	=	0x0099
                           000098   659 _RI	=	0x0098
                           0000CF   660 _TF2	=	0x00cf
                           0000CF   661 _CAP1F	=	0x00cf
                           0000CE   662 _EXF2	=	0x00ce
                           0000CD   663 _RCLK	=	0x00cd
                           0000CC   664 _TCLK	=	0x00cc
                           0000CB   665 _EXEN2	=	0x00cb
                           0000CA   666 _TR2	=	0x00ca
                           0000C9   667 _C_T2	=	0x00c9
                           0000C8   668 _CP_RL2	=	0x00c8
                           0000FF   669 _S0_FST_ACT	=	0x00ff
                           0000FE   670 _S0_IF_OV	=	0x00fe
                           0000FD   671 _S0_IF_FIRST	=	0x00fd
                           0000FC   672 _S0_IF_BYTE	=	0x00fc
                           0000FB   673 _S0_FREE	=	0x00fb
                           0000FA   674 _S0_T_FIFO	=	0x00fa
                           0000F9   675 _S0_R_FIFO1	=	0x00f9
                           0000F8   676 _S0_R_FIFO0	=	0x00f8
                           0000DF   677 _U_IS_NAK	=	0x00df
                           0000DE   678 _U_TOG_OK	=	0x00de
                           0000DD   679 _U_SIE_FREE	=	0x00dd
                           0000DC   680 _UIF_FIFO_OV	=	0x00dc
                           0000DA   681 _UIF_SUSPEND	=	0x00da
                           0000D9   682 _UIF_TRANSFER	=	0x00d9
                           0000D8   683 _UIF_BUS_RST	=	0x00d8
                                    684 ;--------------------------------------------------------
                                    685 ; overlayable register banks
                                    686 ;--------------------------------------------------------
                                    687 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        688 	.ds 8
                                    689 ;--------------------------------------------------------
                                    690 ; internal ram data
                                    691 ;--------------------------------------------------------
                                    692 	.area DSEG    (DATA)
      000010                        693 _tempGet_sloc0_1_0:
      000010                        694 	.ds 4
                                    695 ;--------------------------------------------------------
                                    696 ; overlayable items in internal ram 
                                    697 ;--------------------------------------------------------
                                    698 ;--------------------------------------------------------
                                    699 ; Stack segment in internal ram 
                                    700 ;--------------------------------------------------------
                                    701 	.area	SSEG
      00003A                        702 __start__stack:
      00003A                        703 	.ds	1
                                    704 
                                    705 ;--------------------------------------------------------
                                    706 ; indirectly addressable internal ram data
                                    707 ;--------------------------------------------------------
                                    708 	.area ISEG    (DATA)
                                    709 ;--------------------------------------------------------
                                    710 ; absolute internal ram data
                                    711 ;--------------------------------------------------------
                                    712 	.area IABS    (ABS,DATA)
                                    713 	.area IABS    (ABS,DATA)
                                    714 ;--------------------------------------------------------
                                    715 ; bit data
                                    716 ;--------------------------------------------------------
                                    717 	.area BSEG    (BIT)
                                    718 ;--------------------------------------------------------
                                    719 ; paged external ram data
                                    720 ;--------------------------------------------------------
                                    721 	.area PSEG    (PAG,XDATA)
                           000046   722 _pUEP4_1_MOD	=	0x0046
                           000047   723 _pUEP2_3_MOD	=	0x0047
                           000048   724 _pUEP0_DMA_H	=	0x0048
                           000049   725 _pUEP0_DMA_L	=	0x0049
                           000048   726 _pUEP0_DMA	=	0x0048
                           00004A   727 _pUEP1_DMA_H	=	0x004a
                           00004B   728 _pUEP1_DMA_L	=	0x004b
                           00004A   729 _pUEP1_DMA	=	0x004a
                           00004C   730 _pUEP2_DMA_H	=	0x004c
                           00004D   731 _pUEP2_DMA_L	=	0x004d
                           00004C   732 _pUEP2_DMA	=	0x004c
                           00004E   733 _pUEP3_DMA_H	=	0x004e
                           00004F   734 _pUEP3_DMA_L	=	0x004f
                           00004E   735 _pUEP3_DMA	=	0x004e
                           000080   736 _pLED_STAT	=	0x0080
                           000081   737 _pLED_CTRL	=	0x0081
                           000082   738 _pLED_DATA	=	0x0082
                           000083   739 _pLED_CK_SE	=	0x0083
                           000084   740 _pLED_DMA_AH	=	0x0084
                           000085   741 _pLED_DMA_AL	=	0x0085
                           000084   742 _pLED_DMA	=	0x0084
                           000086   743 _pLED_DMA_CN	=	0x0086
                           000088   744 _pLED_DMA_XH	=	0x0088
                           000089   745 _pLED_DMA_XL	=	0x0089
                           000088   746 _pLED_DMA_X	=	0x0088
                                    747 ;--------------------------------------------------------
                                    748 ; external ram data
                                    749 ;--------------------------------------------------------
                                    750 	.area XSEG    (XDATA)
                           002446   751 _UEP4_1_MOD	=	0x2446
                           002447   752 _UEP2_3_MOD	=	0x2447
                           002448   753 _UEP0_DMA_H	=	0x2448
                           002449   754 _UEP0_DMA_L	=	0x2449
                           002448   755 _UEP0_DMA	=	0x2448
                           00244A   756 _UEP1_DMA_H	=	0x244a
                           00244B   757 _UEP1_DMA_L	=	0x244b
                           00244A   758 _UEP1_DMA	=	0x244a
                           00244C   759 _UEP2_DMA_H	=	0x244c
                           00244D   760 _UEP2_DMA_L	=	0x244d
                           00244C   761 _UEP2_DMA	=	0x244c
                           00244E   762 _UEP3_DMA_H	=	0x244e
                           00244F   763 _UEP3_DMA_L	=	0x244f
                           00244E   764 _UEP3_DMA	=	0x244e
                           002880   765 _LED_STAT	=	0x2880
                           002881   766 _LED_CTRL	=	0x2881
                           002882   767 _LED_DATA	=	0x2882
                           002883   768 _LED_CK_SE	=	0x2883
                           002884   769 _LED_DMA_AH	=	0x2884
                           002885   770 _LED_DMA_AL	=	0x2885
                           002884   771 _LED_DMA	=	0x2884
                           002886   772 _LED_DMA_CN	=	0x2886
                           002888   773 _LED_DMA_XH	=	0x2888
                           002889   774 _LED_DMA_XL	=	0x2889
                           002888   775 _LED_DMA_X	=	0x2888
      000001                        776 _tempFetch_f_65537_93:
      000001                        777 	.ds 4
      000005                        778 _tempGet_f_65536_95:
      000005                        779 	.ds 4
      000009                        780 _set::
      000009                        781 	.ds 1
      00000A                        782 _now::
      00000A                        783 	.ds 1
      00000B                        784 _str::
      00000B                        785 	.ds 16
                                    786 ;--------------------------------------------------------
                                    787 ; absolute external ram data
                                    788 ;--------------------------------------------------------
                                    789 	.area XABS    (ABS,XDATA)
                                    790 ;--------------------------------------------------------
                                    791 ; external initialized ram data
                                    792 ;--------------------------------------------------------
                                    793 	.area XISEG   (XDATA)
      00051D                        794 _tbuf::
      00051D                        795 	.ds 100
      000581                        796 _counter::
      000581                        797 	.ds 1
      000582                        798 _run::
      000582                        799 	.ds 1
      000583                        800 _sum::
      000583                        801 	.ds 2
      000585                        802 _k::
      000585                        803 	.ds 4
      000589                        804 _wcounter::
      000589                        805 	.ds 2
                                    806 	.area HOME    (CODE)
                                    807 	.area GSINIT0 (CODE)
                                    808 	.area GSINIT1 (CODE)
                                    809 	.area GSINIT2 (CODE)
                                    810 	.area GSINIT3 (CODE)
                                    811 	.area GSINIT4 (CODE)
                                    812 	.area GSINIT5 (CODE)
                                    813 	.area GSINIT  (CODE)
                                    814 	.area GSFINAL (CODE)
                                    815 	.area CSEG    (CODE)
                                    816 ;--------------------------------------------------------
                                    817 ; interrupt vector 
                                    818 ;--------------------------------------------------------
                                    819 	.area HOME    (CODE)
      000000                        820 __interrupt_vect:
      000000 02 00 34         [24]  821 	ljmp	__sdcc_gsinit_startup
                                    822 ;--------------------------------------------------------
                                    823 ; global & static initialisations
                                    824 ;--------------------------------------------------------
                                    825 	.area HOME    (CODE)
                                    826 	.area GSINIT  (CODE)
                                    827 	.area GSFINAL (CODE)
                                    828 	.area GSINIT  (CODE)
                                    829 	.globl __sdcc_gsinit_startup
                                    830 	.globl __sdcc_program_startup
                                    831 	.globl __start__stack
                                    832 	.globl __mcs51_genXINIT
                                    833 	.globl __mcs51_genXRAMCLEAR
                                    834 	.globl __mcs51_genRAMCLEAR
                                    835 	.area GSFINAL (CODE)
      000091 02 00 03         [24]  836 	ljmp	__sdcc_program_startup
                                    837 ;--------------------------------------------------------
                                    838 ; Home
                                    839 ;--------------------------------------------------------
                                    840 	.area HOME    (CODE)
                                    841 	.area HOME    (CODE)
      000003                        842 __sdcc_program_startup:
      000003 02 02 8A         [24]  843 	ljmp	_main
                                    844 ;	return from main will return to caller
                                    845 ;--------------------------------------------------------
                                    846 ; code
                                    847 ;--------------------------------------------------------
                                    848 	.area CSEG    (CODE)
                                    849 ;------------------------------------------------------------
                                    850 ;Allocation info for local variables in function 'tempFetch'
                                    851 ;------------------------------------------------------------
                                    852 ;f                         Allocated with name '_tempFetch_f_65537_93'
                                    853 ;------------------------------------------------------------
                                    854 ;	main.c:24: void tempFetch() {
                                    855 ;	-----------------------------------------
                                    856 ;	 function tempFetch
                                    857 ;	-----------------------------------------
      000094                        858 _tempFetch:
                           000007   859 	ar7 = 0x07
                           000006   860 	ar6 = 0x06
                           000005   861 	ar5 = 0x05
                           000004   862 	ar4 = 0x04
                           000003   863 	ar3 = 0x03
                           000002   864 	ar2 = 0x02
                           000001   865 	ar1 = 0x01
                           000000   866 	ar0 = 0x00
                                    867 ;	main.c:25: FIFO_SHIFT(tbuf);
      000094 90 00 BD         [24]  868 	mov	dptr,#_memmove_PARM_2
      000097 74 1E            [12]  869 	mov	a,#(_tbuf + 0x0001)
      000099 F0               [24]  870 	movx	@dptr,a
      00009A 74 05            [12]  871 	mov	a,#((_tbuf + 0x0001) >> 8)
      00009C A3               [24]  872 	inc	dptr
      00009D F0               [24]  873 	movx	@dptr,a
      00009E E4               [12]  874 	clr	a
      00009F A3               [24]  875 	inc	dptr
      0000A0 F0               [24]  876 	movx	@dptr,a
      0000A1 90 00 C0         [24]  877 	mov	dptr,#_memmove_PARM_3
      0000A4 74 63            [12]  878 	mov	a,#0x63
      0000A6 F0               [24]  879 	movx	@dptr,a
      0000A7 E4               [12]  880 	clr	a
      0000A8 A3               [24]  881 	inc	dptr
      0000A9 F0               [24]  882 	movx	@dptr,a
      0000AA 90 05 1D         [24]  883 	mov	dptr,#_tbuf
      0000AD 75 F0 00         [24]  884 	mov	b,#0x00
      0000B0 12 20 88         [24]  885 	lcall	_memmove
                                    886 ;	main.c:26: float f = adcGet(ADC_TMP5);
      0000B3 75 82 07         [24]  887 	mov	dpl,#0x07
      0000B6 12 1B A2         [24]  888 	lcall	_adcGet
      0000B9 12 27 D6         [24]  889 	lcall	___uint2fs
      0000BC AC 82            [24]  890 	mov	r4,dpl
      0000BE AD 83            [24]  891 	mov	r5,dph
      0000C0 AE F0            [24]  892 	mov	r6,b
      0000C2 FF               [12]  893 	mov	r7,a
                                    894 ;	main.c:27: f = f / 1023 * 660;
      0000C3 E4               [12]  895 	clr	a
      0000C4 C0 E0            [24]  896 	push	acc
      0000C6 74 C0            [12]  897 	mov	a,#0xc0
      0000C8 C0 E0            [24]  898 	push	acc
      0000CA 74 7F            [12]  899 	mov	a,#0x7f
      0000CC C0 E0            [24]  900 	push	acc
      0000CE 74 44            [12]  901 	mov	a,#0x44
      0000D0 C0 E0            [24]  902 	push	acc
      0000D2 8C 82            [24]  903 	mov	dpl,r4
      0000D4 8D 83            [24]  904 	mov	dph,r5
      0000D6 8E F0            [24]  905 	mov	b,r6
      0000D8 EF               [12]  906 	mov	a,r7
      0000D9 12 32 3B         [24]  907 	lcall	___fsdiv
      0000DC AC 82            [24]  908 	mov	r4,dpl
      0000DE AD 83            [24]  909 	mov	r5,dph
      0000E0 AE F0            [24]  910 	mov	r6,b
      0000E2 FF               [12]  911 	mov	r7,a
      0000E3 E5 81            [12]  912 	mov	a,sp
      0000E5 24 FC            [12]  913 	add	a,#0xfc
      0000E7 F5 81            [12]  914 	mov	sp,a
      0000E9 C0 04            [24]  915 	push	ar4
      0000EB C0 05            [24]  916 	push	ar5
      0000ED C0 06            [24]  917 	push	ar6
      0000EF C0 07            [24]  918 	push	ar7
      0000F1 90 00 00         [24]  919 	mov	dptr,#0x0000
      0000F4 75 F0 25         [24]  920 	mov	b,#0x25
      0000F7 74 44            [12]  921 	mov	a,#0x44
      0000F9 12 1E 75         [24]  922 	lcall	___fsmul
      0000FC AC 82            [24]  923 	mov	r4,dpl
      0000FE AD 83            [24]  924 	mov	r5,dph
      000100 AE F0            [24]  925 	mov	r6,b
      000102 FF               [12]  926 	mov	r7,a
      000103 E5 81            [12]  927 	mov	a,sp
      000105 24 FC            [12]  928 	add	a,#0xfc
      000107 F5 81            [12]  929 	mov	sp,a
      000109 90 00 01         [24]  930 	mov	dptr,#_tempFetch_f_65537_93
      00010C EC               [12]  931 	mov	a,r4
      00010D F0               [24]  932 	movx	@dptr,a
      00010E ED               [12]  933 	mov	a,r5
      00010F A3               [24]  934 	inc	dptr
      000110 F0               [24]  935 	movx	@dptr,a
      000111 EE               [12]  936 	mov	a,r6
      000112 A3               [24]  937 	inc	dptr
      000113 F0               [24]  938 	movx	@dptr,a
      000114 EF               [12]  939 	mov	a,r7
      000115 A3               [24]  940 	inc	dptr
      000116 F0               [24]  941 	movx	@dptr,a
                                    942 ;	main.c:28: if (f > 650) {
      000117 C0 04            [24]  943 	push	ar4
      000119 C0 05            [24]  944 	push	ar5
      00011B C0 06            [24]  945 	push	ar6
      00011D C0 07            [24]  946 	push	ar7
      00011F 90 80 00         [24]  947 	mov	dptr,#0x8000
      000122 75 F0 22         [24]  948 	mov	b,#0x22
      000125 74 44            [12]  949 	mov	a,#0x44
      000127 12 21 BA         [24]  950 	lcall	___fslt
      00012A AF 82            [24]  951 	mov	r7,dpl
      00012C E5 81            [12]  952 	mov	a,sp
      00012E 24 FC            [12]  953 	add	a,#0xfc
      000130 F5 81            [12]  954 	mov	sp,a
      000132 EF               [12]  955 	mov	a,r7
      000133 60 64            [24]  956 	jz	00102$
                                    957 ;	main.c:29: f = adcGet(ADC_TMP1);
      000135 75 82 06         [24]  958 	mov	dpl,#0x06
      000138 12 1B A2         [24]  959 	lcall	_adcGet
      00013B 12 27 D6         [24]  960 	lcall	___uint2fs
      00013E AC 82            [24]  961 	mov	r4,dpl
      000140 AD 83            [24]  962 	mov	r5,dph
      000142 AE F0            [24]  963 	mov	r6,b
      000144 FF               [12]  964 	mov	r7,a
                                    965 ;	main.c:30: f = f / 1023 * 3300;
      000145 E4               [12]  966 	clr	a
      000146 C0 E0            [24]  967 	push	acc
      000148 74 C0            [12]  968 	mov	a,#0xc0
      00014A C0 E0            [24]  969 	push	acc
      00014C 74 7F            [12]  970 	mov	a,#0x7f
      00014E C0 E0            [24]  971 	push	acc
      000150 74 44            [12]  972 	mov	a,#0x44
      000152 C0 E0            [24]  973 	push	acc
      000154 8C 82            [24]  974 	mov	dpl,r4
      000156 8D 83            [24]  975 	mov	dph,r5
      000158 8E F0            [24]  976 	mov	b,r6
      00015A EF               [12]  977 	mov	a,r7
      00015B 12 32 3B         [24]  978 	lcall	___fsdiv
      00015E AC 82            [24]  979 	mov	r4,dpl
      000160 AD 83            [24]  980 	mov	r5,dph
      000162 AE F0            [24]  981 	mov	r6,b
      000164 FF               [12]  982 	mov	r7,a
      000165 E5 81            [12]  983 	mov	a,sp
      000167 24 FC            [12]  984 	add	a,#0xfc
      000169 F5 81            [12]  985 	mov	sp,a
      00016B C0 04            [24]  986 	push	ar4
      00016D C0 05            [24]  987 	push	ar5
      00016F C0 06            [24]  988 	push	ar6
      000171 C0 07            [24]  989 	push	ar7
      000173 90 40 00         [24]  990 	mov	dptr,#0x4000
      000176 75 F0 4E         [24]  991 	mov	b,#0x4e
      000179 74 45            [12]  992 	mov	a,#0x45
      00017B 12 1E 75         [24]  993 	lcall	___fsmul
      00017E AC 82            [24]  994 	mov	r4,dpl
      000180 AD 83            [24]  995 	mov	r5,dph
      000182 AE F0            [24]  996 	mov	r6,b
      000184 FF               [12]  997 	mov	r7,a
      000185 E5 81            [12]  998 	mov	a,sp
      000187 24 FC            [12]  999 	add	a,#0xfc
      000189 F5 81            [12] 1000 	mov	sp,a
      00018B 90 00 01         [24] 1001 	mov	dptr,#_tempFetch_f_65537_93
      00018E EC               [12] 1002 	mov	a,r4
      00018F F0               [24] 1003 	movx	@dptr,a
      000190 ED               [12] 1004 	mov	a,r5
      000191 A3               [24] 1005 	inc	dptr
      000192 F0               [24] 1006 	movx	@dptr,a
      000193 EE               [12] 1007 	mov	a,r6
      000194 A3               [24] 1008 	inc	dptr
      000195 F0               [24] 1009 	movx	@dptr,a
      000196 EF               [12] 1010 	mov	a,r7
      000197 A3               [24] 1011 	inc	dptr
      000198 F0               [24] 1012 	movx	@dptr,a
      000199                       1013 00102$:
                                   1014 ;	main.c:32: FIFO_END(tbuf) = lut((int) f) + 2; // calibration
      000199 90 00 01         [24] 1015 	mov	dptr,#_tempFetch_f_65537_93
      00019C E0               [24] 1016 	movx	a,@dptr
      00019D FC               [12] 1017 	mov	r4,a
      00019E A3               [24] 1018 	inc	dptr
      00019F E0               [24] 1019 	movx	a,@dptr
      0001A0 FD               [12] 1020 	mov	r5,a
      0001A1 A3               [24] 1021 	inc	dptr
      0001A2 E0               [24] 1022 	movx	a,@dptr
      0001A3 FE               [12] 1023 	mov	r6,a
      0001A4 A3               [24] 1024 	inc	dptr
      0001A5 E0               [24] 1025 	movx	a,@dptr
      0001A6 8C 82            [24] 1026 	mov	dpl,r4
      0001A8 8D 83            [24] 1027 	mov	dph,r5
      0001AA 8E F0            [24] 1028 	mov	b,r6
      0001AC 12 27 95         [24] 1029 	lcall	___fs2sint
      0001AF 12 07 D9         [24] 1030 	lcall	_lut
      0001B2 AF 82            [24] 1031 	mov	r7,dpl
      0001B4 0F               [12] 1032 	inc	r7
      0001B5 0F               [12] 1033 	inc	r7
      0001B6 90 05 80         [24] 1034 	mov	dptr,#(_tbuf + 0x0063)
      0001B9 EF               [12] 1035 	mov	a,r7
      0001BA F0               [24] 1036 	movx	@dptr,a
                                   1037 ;	main.c:33: }
      0001BB 22               [24] 1038 	ret
                                   1039 ;------------------------------------------------------------
                                   1040 ;Allocation info for local variables in function 'tempGet'
                                   1041 ;------------------------------------------------------------
                                   1042 ;sloc0                     Allocated with name '_tempGet_sloc0_1_0'
                                   1043 ;f                         Allocated with name '_tempGet_f_65536_95'
                                   1044 ;i                         Allocated with name '_tempGet_i_131072_96'
                                   1045 ;------------------------------------------------------------
                                   1046 ;	main.c:35: uint8_t tempGet() {
                                   1047 ;	-----------------------------------------
                                   1048 ;	 function tempGet
                                   1049 ;	-----------------------------------------
      0001BC                       1050 _tempGet:
                                   1051 ;	main.c:36: float f = 0;
      0001BC 90 00 05         [24] 1052 	mov	dptr,#_tempGet_f_65536_95
      0001BF E4               [12] 1053 	clr	a
      0001C0 F0               [24] 1054 	movx	@dptr,a
      0001C1 A3               [24] 1055 	inc	dptr
      0001C2 F0               [24] 1056 	movx	@dptr,a
      0001C3 A3               [24] 1057 	inc	dptr
      0001C4 F0               [24] 1058 	movx	@dptr,a
      0001C5 A3               [24] 1059 	inc	dptr
      0001C6 F0               [24] 1060 	movx	@dptr,a
                                   1061 ;	main.c:37: for (uint8_t i = 0; i < sizeof(tbuf); i++)
      0001C7 7F 00            [12] 1062 	mov	r7,#0x00
      0001C9                       1063 00103$:
      0001C9 BF 64 00         [24] 1064 	cjne	r7,#0x64,00116$
      0001CC                       1065 00116$:
      0001CC 50 66            [24] 1066 	jnc	00101$
                                   1067 ;	main.c:38: f += tbuf[i];
      0001CE EF               [12] 1068 	mov	a,r7
      0001CF 24 1D            [12] 1069 	add	a,#_tbuf
      0001D1 F5 82            [12] 1070 	mov	dpl,a
      0001D3 E4               [12] 1071 	clr	a
      0001D4 34 05            [12] 1072 	addc	a,#(_tbuf >> 8)
      0001D6 F5 83            [12] 1073 	mov	dph,a
      0001D8 E0               [24] 1074 	movx	a,@dptr
      0001D9 FE               [12] 1075 	mov	r6,a
      0001DA 7D 00            [12] 1076 	mov	r5,#0x00
      0001DC 90 00 05         [24] 1077 	mov	dptr,#_tempGet_f_65536_95
      0001DF E0               [24] 1078 	movx	a,@dptr
      0001E0 F5 10            [12] 1079 	mov	_tempGet_sloc0_1_0,a
      0001E2 A3               [24] 1080 	inc	dptr
      0001E3 E0               [24] 1081 	movx	a,@dptr
      0001E4 F5 11            [12] 1082 	mov	(_tempGet_sloc0_1_0 + 1),a
      0001E6 A3               [24] 1083 	inc	dptr
      0001E7 E0               [24] 1084 	movx	a,@dptr
      0001E8 F5 12            [12] 1085 	mov	(_tempGet_sloc0_1_0 + 2),a
      0001EA A3               [24] 1086 	inc	dptr
      0001EB E0               [24] 1087 	movx	a,@dptr
      0001EC F5 13            [12] 1088 	mov	(_tempGet_sloc0_1_0 + 3),a
      0001EE 8E 82            [24] 1089 	mov	dpl,r6
      0001F0 8D 83            [24] 1090 	mov	dph,r5
      0001F2 C0 07            [24] 1091 	push	ar7
      0001F4 12 27 C9         [24] 1092 	lcall	___sint2fs
      0001F7 A8 82            [24] 1093 	mov	r0,dpl
      0001F9 AC 83            [24] 1094 	mov	r4,dph
      0001FB AD F0            [24] 1095 	mov	r5,b
      0001FD FE               [12] 1096 	mov	r6,a
      0001FE C0 00            [24] 1097 	push	ar0
      000200 C0 04            [24] 1098 	push	ar4
      000202 C0 05            [24] 1099 	push	ar5
      000204 C0 06            [24] 1100 	push	ar6
      000206 85 10 82         [24] 1101 	mov	dpl,_tempGet_sloc0_1_0
      000209 85 11 83         [24] 1102 	mov	dph,(_tempGet_sloc0_1_0 + 1)
      00020C 85 12 F0         [24] 1103 	mov	b,(_tempGet_sloc0_1_0 + 2)
      00020F E5 13            [12] 1104 	mov	a,(_tempGet_sloc0_1_0 + 3)
      000211 12 25 F4         [24] 1105 	lcall	___fsadd
      000214 AB 82            [24] 1106 	mov	r3,dpl
      000216 AC 83            [24] 1107 	mov	r4,dph
      000218 AD F0            [24] 1108 	mov	r5,b
      00021A FE               [12] 1109 	mov	r6,a
      00021B E5 81            [12] 1110 	mov	a,sp
      00021D 24 FC            [12] 1111 	add	a,#0xfc
      00021F F5 81            [12] 1112 	mov	sp,a
      000221 D0 07            [24] 1113 	pop	ar7
      000223 90 00 05         [24] 1114 	mov	dptr,#_tempGet_f_65536_95
      000226 EB               [12] 1115 	mov	a,r3
      000227 F0               [24] 1116 	movx	@dptr,a
      000228 EC               [12] 1117 	mov	a,r4
      000229 A3               [24] 1118 	inc	dptr
      00022A F0               [24] 1119 	movx	@dptr,a
      00022B ED               [12] 1120 	mov	a,r5
      00022C A3               [24] 1121 	inc	dptr
      00022D F0               [24] 1122 	movx	@dptr,a
      00022E EE               [12] 1123 	mov	a,r6
      00022F A3               [24] 1124 	inc	dptr
      000230 F0               [24] 1125 	movx	@dptr,a
                                   1126 ;	main.c:37: for (uint8_t i = 0; i < sizeof(tbuf); i++)
      000231 0F               [12] 1127 	inc	r7
      000232 80 95            [24] 1128 	sjmp	00103$
      000234                       1129 00101$:
                                   1130 ;	main.c:39: f /= sizeof(tbuf);
      000234 90 00 05         [24] 1131 	mov	dptr,#_tempGet_f_65536_95
      000237 E0               [24] 1132 	movx	a,@dptr
      000238 FC               [12] 1133 	mov	r4,a
      000239 A3               [24] 1134 	inc	dptr
      00023A E0               [24] 1135 	movx	a,@dptr
      00023B FD               [12] 1136 	mov	r5,a
      00023C A3               [24] 1137 	inc	dptr
      00023D E0               [24] 1138 	movx	a,@dptr
      00023E FE               [12] 1139 	mov	r6,a
      00023F A3               [24] 1140 	inc	dptr
      000240 E0               [24] 1141 	movx	a,@dptr
      000241 FF               [12] 1142 	mov	r7,a
      000242 E4               [12] 1143 	clr	a
      000243 C0 E0            [24] 1144 	push	acc
      000245 C0 E0            [24] 1145 	push	acc
      000247 74 C8            [12] 1146 	mov	a,#0xc8
      000249 C0 E0            [24] 1147 	push	acc
      00024B 74 42            [12] 1148 	mov	a,#0x42
      00024D C0 E0            [24] 1149 	push	acc
      00024F 8C 82            [24] 1150 	mov	dpl,r4
      000251 8D 83            [24] 1151 	mov	dph,r5
      000253 8E F0            [24] 1152 	mov	b,r6
      000255 EF               [12] 1153 	mov	a,r7
      000256 12 32 3B         [24] 1154 	lcall	___fsdiv
      000259 AC 82            [24] 1155 	mov	r4,dpl
      00025B AD 83            [24] 1156 	mov	r5,dph
      00025D AE F0            [24] 1157 	mov	r6,b
      00025F FF               [12] 1158 	mov	r7,a
      000260 E5 81            [12] 1159 	mov	a,sp
      000262 24 FC            [12] 1160 	add	a,#0xfc
      000264 F5 81            [12] 1161 	mov	sp,a
      000266 90 00 05         [24] 1162 	mov	dptr,#_tempGet_f_65536_95
      000269 EC               [12] 1163 	mov	a,r4
      00026A F0               [24] 1164 	movx	@dptr,a
      00026B ED               [12] 1165 	mov	a,r5
      00026C A3               [24] 1166 	inc	dptr
      00026D F0               [24] 1167 	movx	@dptr,a
      00026E EE               [12] 1168 	mov	a,r6
      00026F A3               [24] 1169 	inc	dptr
      000270 F0               [24] 1170 	movx	@dptr,a
      000271 EF               [12] 1171 	mov	a,r7
      000272 A3               [24] 1172 	inc	dptr
      000273 F0               [24] 1173 	movx	@dptr,a
                                   1174 ;	main.c:40: return (uint8_t) ((int) f);
      000274 90 00 05         [24] 1175 	mov	dptr,#_tempGet_f_65536_95
      000277 E0               [24] 1176 	movx	a,@dptr
      000278 FC               [12] 1177 	mov	r4,a
      000279 A3               [24] 1178 	inc	dptr
      00027A E0               [24] 1179 	movx	a,@dptr
      00027B FD               [12] 1180 	mov	r5,a
      00027C A3               [24] 1181 	inc	dptr
      00027D E0               [24] 1182 	movx	a,@dptr
      00027E FE               [12] 1183 	mov	r6,a
      00027F A3               [24] 1184 	inc	dptr
      000280 E0               [24] 1185 	movx	a,@dptr
      000281 8C 82            [24] 1186 	mov	dpl,r4
      000283 8D 83            [24] 1187 	mov	dph,r5
      000285 8E F0            [24] 1188 	mov	b,r6
                                   1189 ;	main.c:41: }
      000287 02 27 95         [24] 1190 	ljmp	___fs2sint
                                   1191 ;------------------------------------------------------------
                                   1192 ;Allocation info for local variables in function 'main'
                                   1193 ;------------------------------------------------------------
                                   1194 ;i                         Allocated with name '_main_i_131072_98'
                                   1195 ;v                         Allocated with name '_main_v_196608_103'
                                   1196 ;------------------------------------------------------------
                                   1197 ;	main.c:52: void main() {
                                   1198 ;	-----------------------------------------
                                   1199 ;	 function main
                                   1200 ;	-----------------------------------------
      00028A                       1201 _main:
                                   1202 ;	main.c:53: PORT_CFG &= ~bP3_OC;
      00028A 53 C6 F7         [24] 1203 	anl	_PORT_CFG,#0xf7
                                   1204 ;	main.c:54: P3_PU &= ~(1 << 2 | 1 << 4);
      00028D 53 BF EB         [24] 1205 	anl	_P3_PU,#0xeb
                                   1206 ;	main.c:56: sysClockConfig();
      000290 12 13 F2         [24] 1207 	lcall	_sysClockConfig
                                   1208 ;	main.c:57: delay(10);
      000293 90 00 0A         [24] 1209 	mov	dptr,#0x000a
      000296 12 14 05         [24] 1210 	lcall	_delay
                                   1211 ;	main.c:59: adcInit();
      000299 12 1B 93         [24] 1212 	lcall	_adcInit
                                   1213 ;	main.c:60: pwm3Init(120000);
      00029C 90 D4 C0         [24] 1214 	mov	dptr,#0xd4c0
      00029F 75 F0 01         [24] 1215 	mov	b,#0x01
      0002A2 E4               [12] 1216 	clr	a
      0002A3 12 1A EE         [24] 1217 	lcall	_pwm3Init
                                   1218 ;	main.c:61: uart1Config(115200);
      0002A6 90 C2 00         [24] 1219 	mov	dptr,#0xc200
      0002A9 75 F0 01         [24] 1220 	mov	b,#0x01
      0002AC E4               [12] 1221 	clr	a
      0002AD 12 18 B2         [24] 1222 	lcall	_uart1Config
                                   1223 ;	main.c:62: EA = 1;
                                   1224 ;	assignBit
      0002B0 D2 AF            [12] 1225 	setb	_EA
                                   1226 ;	main.c:63: delay(50);
      0002B2 90 00 32         [24] 1227 	mov	dptr,#0x0032
      0002B5 12 14 05         [24] 1228 	lcall	_delay
                                   1229 ;	main.c:64: uart1Write("NSHET\n");
      0002B8 90 34 0E         [24] 1230 	mov	dptr,#___str_0
      0002BB 75 F0 80         [24] 1231 	mov	b,#0x80
      0002BE 12 19 B5         [24] 1232 	lcall	_uart1Write
                                   1233 ;	main.c:66: oledInit(OLED_SCREEN_SMALL);
      0002C1 75 82 78         [24] 1234 	mov	dpl,#0x78
      0002C4 12 09 F3         [24] 1235 	lcall	_oledInit
                                   1236 ;	main.c:67: oledPrintfc(1, 2, 1, "NSHET");
      0002C7 74 15            [12] 1237 	mov	a,#___str_1
      0002C9 C0 E0            [24] 1238 	push	acc
      0002CB 74 34            [12] 1239 	mov	a,#(___str_1 >> 8)
      0002CD C0 E0            [24] 1240 	push	acc
      0002CF 74 80            [12] 1241 	mov	a,#0x80
      0002D1 C0 E0            [24] 1242 	push	acc
      0002D3 23               [12] 1243 	rl	a
      0002D4 C0 E0            [24] 1244 	push	acc
      0002D6 04               [12] 1245 	inc	a
      0002D7 C0 E0            [24] 1246 	push	acc
      0002D9 14               [12] 1247 	dec	a
      0002DA C0 E0            [24] 1248 	push	acc
      0002DC 12 11 01         [24] 1249 	lcall	_oledPrintfc
      0002DF E5 81            [12] 1250 	mov	a,sp
      0002E1 24 FA            [12] 1251 	add	a,#0xfa
      0002E3 F5 81            [12] 1252 	mov	sp,a
                                   1253 ;	main.c:69: for (uint8_t i = 0; i < FIFO_SIZE; i++) {
      0002E5 7F 00            [12] 1254 	mov	r7,#0x00
      0002E7                       1255 00130$:
      0002E7 BF 64 00         [24] 1256 	cjne	r7,#0x64,00207$
      0002EA                       1257 00207$:
      0002EA 50 10            [24] 1258 	jnc	00101$
                                   1259 ;	main.c:70: tempFetch();
      0002EC C0 07            [24] 1260 	push	ar7
      0002EE 12 00 94         [24] 1261 	lcall	_tempFetch
                                   1262 ;	main.c:71: delay(10);
      0002F1 90 00 0A         [24] 1263 	mov	dptr,#0x000a
      0002F4 12 14 05         [24] 1264 	lcall	_delay
      0002F7 D0 07            [24] 1265 	pop	ar7
                                   1266 ;	main.c:69: for (uint8_t i = 0; i < FIFO_SIZE; i++) {
      0002F9 0F               [12] 1267 	inc	r7
      0002FA 80 EB            [24] 1268 	sjmp	00130$
      0002FC                       1269 00101$:
                                   1270 ;	main.c:73: set = now = tempGet();
      0002FC 12 01 BC         [24] 1271 	lcall	_tempGet
      0002FF AF 82            [24] 1272 	mov	r7,dpl
      000301 90 00 0A         [24] 1273 	mov	dptr,#_now
      000304 EF               [12] 1274 	mov	a,r7
      000305 F0               [24] 1275 	movx	@dptr,a
                                   1276 ;	main.c:74: set = set / TEMP_STEP;
      000306 7E 00            [12] 1277 	mov	r6,#0x00
      000308 90 00 DF         [24] 1278 	mov	dptr,#__divsint_PARM_2
      00030B 74 0A            [12] 1279 	mov	a,#0x0a
      00030D F0               [24] 1280 	movx	@dptr,a
      00030E E4               [12] 1281 	clr	a
      00030F A3               [24] 1282 	inc	dptr
      000310 F0               [24] 1283 	movx	@dptr,a
      000311 8F 82            [24] 1284 	mov	dpl,r7
      000313 8E 83            [24] 1285 	mov	dph,r6
      000315 12 26 4D         [24] 1286 	lcall	__divsint
      000318 AE 82            [24] 1287 	mov	r6,dpl
                                   1288 ;	main.c:75: set = set * TEMP_STEP;
      00031A 90 00 09         [24] 1289 	mov	dptr,#_set
      00031D EE               [12] 1290 	mov	a,r6
      00031E 75 F0 0A         [24] 1291 	mov	b,#0x0a
      000321 A4               [48] 1292 	mul	ab
      000322 F0               [24] 1293 	movx	@dptr,a
                                   1294 ;	main.c:77: oledClear();
      000323 12 0B 14         [24] 1295 	lcall	_oledClear
                                   1296 ;	main.c:78: while (1) {
      000326                       1297 00127$:
                                   1298 ;	main.c:79: if (KEY_L == 0) {
      000326 20 B2 23         [24] 1299 	jb	_P32,00111$
                                   1300 ;	main.c:80: while (KEY_L == 0);
      000329                       1301 00102$:
      000329 30 B2 FD         [24] 1302 	jnb	_P32,00102$
                                   1303 ;	main.c:81: set = set < TEMP_STEP ? 0 : set - TEMP_STEP;
      00032C 90 00 09         [24] 1304 	mov	dptr,#_set
      00032F E0               [24] 1305 	movx	a,@dptr
      000330 FF               [12] 1306 	mov	r7,a
      000331 BF 0A 00         [24] 1307 	cjne	r7,#0x0a,00211$
      000334                       1308 00211$:
      000334 50 06            [24] 1309 	jnc	00134$
      000336 7D 00            [12] 1310 	mov	r5,#0x00
      000338 7E 00            [12] 1311 	mov	r6,#0x00
      00033A 80 09            [24] 1312 	sjmp	00135$
      00033C                       1313 00134$:
      00033C EF               [12] 1314 	mov	a,r7
      00033D 24 F6            [12] 1315 	add	a,#0xf6
      00033F FF               [12] 1316 	mov	r7,a
      000340 FD               [12] 1317 	mov	r5,a
      000341 33               [12] 1318 	rlc	a
      000342 95 E0            [12] 1319 	subb	a,acc
      000344 FE               [12] 1320 	mov	r6,a
      000345                       1321 00135$:
      000345 90 00 09         [24] 1322 	mov	dptr,#_set
      000348 ED               [12] 1323 	mov	a,r5
      000349 F0               [24] 1324 	movx	@dptr,a
      00034A 80 23            [24] 1325 	sjmp	00112$
      00034C                       1326 00111$:
                                   1327 ;	main.c:82: } else if (KEY_R == 0) {
      00034C 20 B4 20         [24] 1328 	jb	_P34,00112$
                                   1329 ;	main.c:83: while (KEY_R == 0);
      00034F                       1330 00105$:
      00034F 30 B4 FD         [24] 1331 	jnb	_P34,00105$
                                   1332 ;	main.c:84: set = set > (TEMP_MAX - TEMP_STEP) ? TEMP_MAX : set + TEMP_STEP;
      000352 90 00 09         [24] 1333 	mov	dptr,#_set
      000355 E0               [24] 1334 	movx	a,@dptr
      000356 FF               [12] 1335 	mov  r7,a
      000357 24 73            [12] 1336 	add	a,#0xff - 0x8c
      000359 50 06            [24] 1337 	jnc	00136$
      00035B 7D 96            [12] 1338 	mov	r5,#0x96
      00035D 7E 00            [12] 1339 	mov	r6,#0x00
      00035F 80 09            [24] 1340 	sjmp	00137$
      000361                       1341 00136$:
      000361 74 0A            [12] 1342 	mov	a,#0x0a
      000363 2F               [12] 1343 	add	a,r7
      000364 FF               [12] 1344 	mov	r7,a
      000365 FD               [12] 1345 	mov	r5,a
      000366 33               [12] 1346 	rlc	a
      000367 95 E0            [12] 1347 	subb	a,acc
      000369 FE               [12] 1348 	mov	r6,a
      00036A                       1349 00137$:
      00036A 90 00 09         [24] 1350 	mov	dptr,#_set
      00036D ED               [12] 1351 	mov	a,r5
      00036E F0               [24] 1352 	movx	@dptr,a
      00036F                       1353 00112$:
                                   1354 ;	main.c:87: tempFetch();
      00036F 12 00 94         [24] 1355 	lcall	_tempFetch
                                   1356 ;	main.c:88: now = tempGet();
      000372 12 01 BC         [24] 1357 	lcall	_tempGet
      000375 AF 82            [24] 1358 	mov	r7,dpl
      000377 90 00 0A         [24] 1359 	mov	dptr,#_now
      00037A EF               [12] 1360 	mov	a,r7
      00037B F0               [24] 1361 	movx	@dptr,a
                                   1362 ;	main.c:90: if (run = set > now) {
      00037C 90 00 09         [24] 1363 	mov	dptr,#_set
      00037F E0               [24] 1364 	movx	a,@dptr
      000380 FE               [12] 1365 	mov	r6,a
      000381 C3               [12] 1366 	clr	c
      000382 EF               [12] 1367 	mov	a,r7
      000383 9E               [12] 1368 	subb	a,r6
      000384 E4               [12] 1369 	clr	a
      000385 33               [12] 1370 	rlc	a
      000386 FD               [12] 1371 	mov	r5,a
      000387 90 05 82         [24] 1372 	mov	dptr,#_run
      00038A F0               [24] 1373 	movx	@dptr,a
      00038B ED               [12] 1374 	mov	a,r5
      00038C 70 03            [24] 1375 	jnz	00216$
      00038E 02 04 7B         [24] 1376 	ljmp	00114$
      000391                       1377 00216$:
                                   1378 ;	main.c:91: float v = set - now;
      000391 E4               [12] 1379 	clr	a
      000392 FD               [12] 1380 	mov	r5,a
      000393 FC               [12] 1381 	mov	r4,a
      000394 EE               [12] 1382 	mov	a,r6
      000395 C3               [12] 1383 	clr	c
      000396 9F               [12] 1384 	subb	a,r7
      000397 FE               [12] 1385 	mov	r6,a
      000398 ED               [12] 1386 	mov	a,r5
      000399 9C               [12] 1387 	subb	a,r4
      00039A FD               [12] 1388 	mov	r5,a
      00039B 8E 82            [24] 1389 	mov	dpl,r6
      00039D 8D 83            [24] 1390 	mov	dph,r5
      00039F 12 27 C9         [24] 1391 	lcall	___sint2fs
      0003A2 AC 82            [24] 1392 	mov	r4,dpl
      0003A4 AD 83            [24] 1393 	mov	r5,dph
      0003A6 AE F0            [24] 1394 	mov	r6,b
      0003A8 FF               [12] 1395 	mov	r7,a
                                   1396 ;	main.c:92: v *= (0.2f + k);    // 比例系数
      0003A9 90 05 85         [24] 1397 	mov	dptr,#_k
      0003AC E0               [24] 1398 	movx	a,@dptr
      0003AD F8               [12] 1399 	mov	r0,a
      0003AE A3               [24] 1400 	inc	dptr
      0003AF E0               [24] 1401 	movx	a,@dptr
      0003B0 F9               [12] 1402 	mov	r1,a
      0003B1 A3               [24] 1403 	inc	dptr
      0003B2 E0               [24] 1404 	movx	a,@dptr
      0003B3 FA               [12] 1405 	mov	r2,a
      0003B4 A3               [24] 1406 	inc	dptr
      0003B5 E0               [24] 1407 	movx	a,@dptr
      0003B6 FB               [12] 1408 	mov	r3,a
      0003B7 C0 07            [24] 1409 	push	ar7
      0003B9 C0 06            [24] 1410 	push	ar6
      0003BB C0 05            [24] 1411 	push	ar5
      0003BD C0 04            [24] 1412 	push	ar4
      0003BF 74 CD            [12] 1413 	mov	a,#0xcd
      0003C1 C0 E0            [24] 1414 	push	acc
      0003C3 14               [12] 1415 	dec	a
      0003C4 C0 E0            [24] 1416 	push	acc
      0003C6 74 4C            [12] 1417 	mov	a,#0x4c
      0003C8 C0 E0            [24] 1418 	push	acc
      0003CA 74 3E            [12] 1419 	mov	a,#0x3e
      0003CC C0 E0            [24] 1420 	push	acc
      0003CE 88 82            [24] 1421 	mov	dpl,r0
      0003D0 89 83            [24] 1422 	mov	dph,r1
      0003D2 8A F0            [24] 1423 	mov	b,r2
      0003D4 EB               [12] 1424 	mov	a,r3
      0003D5 12 25 F4         [24] 1425 	lcall	___fsadd
      0003D8 A8 82            [24] 1426 	mov	r0,dpl
      0003DA A9 83            [24] 1427 	mov	r1,dph
      0003DC AA F0            [24] 1428 	mov	r2,b
      0003DE FB               [12] 1429 	mov	r3,a
      0003DF E5 81            [12] 1430 	mov	a,sp
      0003E1 24 FC            [12] 1431 	add	a,#0xfc
      0003E3 F5 81            [12] 1432 	mov	sp,a
      0003E5 D0 04            [24] 1433 	pop	ar4
      0003E7 D0 05            [24] 1434 	pop	ar5
      0003E9 D0 06            [24] 1435 	pop	ar6
      0003EB D0 07            [24] 1436 	pop	ar7
      0003ED C0 00            [24] 1437 	push	ar0
      0003EF C0 01            [24] 1438 	push	ar1
      0003F1 C0 02            [24] 1439 	push	ar2
      0003F3 C0 03            [24] 1440 	push	ar3
                                   1441 ;	main.c:93: v *= 100;           // 转换到占空比
      0003F5 8C 82            [24] 1442 	mov	dpl,r4
      0003F7 8D 83            [24] 1443 	mov	dph,r5
      0003F9 8E F0            [24] 1444 	mov	b,r6
      0003FB EF               [12] 1445 	mov	a,r7
      0003FC 12 1E 75         [24] 1446 	lcall	___fsmul
      0003FF AC 82            [24] 1447 	mov	r4,dpl
      000401 AD 83            [24] 1448 	mov	r5,dph
      000403 AE F0            [24] 1449 	mov	r6,b
      000405 FF               [12] 1450 	mov	r7,a
      000406 E5 81            [12] 1451 	mov	a,sp
      000408 24 FC            [12] 1452 	add	a,#0xfc
      00040A F5 81            [12] 1453 	mov	sp,a
      00040C C0 04            [24] 1454 	push	ar4
      00040E C0 05            [24] 1455 	push	ar5
      000410 C0 06            [24] 1456 	push	ar6
      000412 C0 07            [24] 1457 	push	ar7
                                   1458 ;	main.c:94: v = v > 100 ? 100 : v;
      000414 90 00 00         [24] 1459 	mov	dptr,#0x0000
      000417 75 F0 C8         [24] 1460 	mov	b,#0xc8
      00041A 74 42            [12] 1461 	mov	a,#0x42
      00041C 12 1E 75         [24] 1462 	lcall	___fsmul
      00041F AC 82            [24] 1463 	mov	r4,dpl
      000421 AD 83            [24] 1464 	mov	r5,dph
      000423 AE F0            [24] 1465 	mov	r6,b
      000425 FF               [12] 1466 	mov	r7,a
      000426 E5 81            [12] 1467 	mov	a,sp
      000428 24 FC            [12] 1468 	add	a,#0xfc
      00042A F5 81            [12] 1469 	mov	sp,a
      00042C C0 07            [24] 1470 	push	ar7
      00042E C0 06            [24] 1471 	push	ar6
      000430 C0 05            [24] 1472 	push	ar5
      000432 C0 04            [24] 1473 	push	ar4
      000434 C0 04            [24] 1474 	push	ar4
      000436 C0 05            [24] 1475 	push	ar5
      000438 C0 06            [24] 1476 	push	ar6
      00043A C0 07            [24] 1477 	push	ar7
      00043C 90 00 00         [24] 1478 	mov	dptr,#0x0000
      00043F 75 F0 C8         [24] 1479 	mov	b,#0xc8
      000442 74 42            [12] 1480 	mov	a,#0x42
      000444 12 21 BA         [24] 1481 	lcall	___fslt
      000447 AB 82            [24] 1482 	mov	r3,dpl
      000449 E5 81            [12] 1483 	mov	a,sp
      00044B 24 FC            [12] 1484 	add	a,#0xfc
      00044D F5 81            [12] 1485 	mov	sp,a
      00044F D0 04            [24] 1486 	pop	ar4
      000451 D0 05            [24] 1487 	pop	ar5
      000453 D0 06            [24] 1488 	pop	ar6
      000455 D0 07            [24] 1489 	pop	ar7
      000457 EB               [12] 1490 	mov	a,r3
      000458 60 0A            [24] 1491 	jz	00138$
      00045A 78 00            [12] 1492 	mov	r0,#0x00
      00045C 79 00            [12] 1493 	mov	r1,#0x00
      00045E 7A C8            [12] 1494 	mov	r2,#0xc8
      000460 7B 42            [12] 1495 	mov	r3,#0x42
      000462 80 08            [24] 1496 	sjmp	00139$
      000464                       1497 00138$:
      000464 8C 00            [24] 1498 	mov	ar0,r4
      000466 8D 01            [24] 1499 	mov	ar1,r5
      000468 8E 02            [24] 1500 	mov	ar2,r6
      00046A 8F 03            [24] 1501 	mov	ar3,r7
      00046C                       1502 00139$:
                                   1503 ;	main.c:95: pwm3Duty((int) v);
      00046C 88 82            [24] 1504 	mov	dpl,r0
      00046E 89 83            [24] 1505 	mov	dph,r1
      000470 8A F0            [24] 1506 	mov	b,r2
      000472 EB               [12] 1507 	mov	a,r3
      000473 12 27 95         [24] 1508 	lcall	___fs2sint
      000476 12 1B 85         [24] 1509 	lcall	_pwm3Duty
      000479 80 06            [24] 1510 	sjmp	00115$
      00047B                       1511 00114$:
                                   1512 ;	main.c:97: pwm3Duty(0);
      00047B 75 82 00         [24] 1513 	mov	dpl,#0x00
      00047E 12 1B 85         [24] 1514 	lcall	_pwm3Duty
      000481                       1515 00115$:
                                   1516 ;	main.c:99: if (run && (set - now < 5)) {
      000481 90 05 82         [24] 1517 	mov	dptr,#_run
      000484 E0               [24] 1518 	movx	a,@dptr
      000485 70 03            [24] 1519 	jnz	00218$
      000487 02 05 3A         [24] 1520 	ljmp	00120$
      00048A                       1521 00218$:
      00048A 90 00 09         [24] 1522 	mov	dptr,#_set
      00048D E0               [24] 1523 	movx	a,@dptr
      00048E FE               [12] 1524 	mov	r6,a
      00048F 7F 00            [12] 1525 	mov	r7,#0x00
      000491 90 00 0A         [24] 1526 	mov	dptr,#_now
      000494 E0               [24] 1527 	movx	a,@dptr
      000495 FC               [12] 1528 	mov	r4,a
      000496 7D 00            [12] 1529 	mov	r5,#0x00
      000498 EE               [12] 1530 	mov	a,r6
      000499 C3               [12] 1531 	clr	c
      00049A 9C               [12] 1532 	subb	a,r4
      00049B FA               [12] 1533 	mov	r2,a
      00049C EF               [12] 1534 	mov	a,r7
      00049D 9D               [12] 1535 	subb	a,r5
      00049E FB               [12] 1536 	mov	r3,a
      00049F C3               [12] 1537 	clr	c
      0004A0 EA               [12] 1538 	mov	a,r2
      0004A1 94 05            [12] 1539 	subb	a,#0x05
      0004A3 EB               [12] 1540 	mov	a,r3
      0004A4 64 80            [12] 1541 	xrl	a,#0x80
      0004A6 94 80            [12] 1542 	subb	a,#0x80
      0004A8 40 03            [24] 1543 	jc	00219$
      0004AA 02 05 3A         [24] 1544 	ljmp	00120$
      0004AD                       1545 00219$:
                                   1546 ;	main.c:100: if (wcounter < 200)
      0004AD 90 05 89         [24] 1547 	mov	dptr,#_wcounter
      0004B0 E0               [24] 1548 	movx	a,@dptr
      0004B1 FA               [12] 1549 	mov	r2,a
      0004B2 A3               [24] 1550 	inc	dptr
      0004B3 E0               [24] 1551 	movx	a,@dptr
      0004B4 FB               [12] 1552 	mov	r3,a
      0004B5 8A 00            [24] 1553 	mov	ar0,r2
      0004B7 8B 01            [24] 1554 	mov	ar1,r3
      0004B9 C3               [12] 1555 	clr	c
      0004BA E8               [12] 1556 	mov	a,r0
      0004BB 94 C8            [12] 1557 	subb	a,#0xc8
      0004BD E9               [12] 1558 	mov	a,r1
      0004BE 94 00            [12] 1559 	subb	a,#0x00
      0004C0 50 0E            [24] 1560 	jnc	00117$
                                   1561 ;	main.c:101: wcounter++;
      0004C2 90 05 89         [24] 1562 	mov	dptr,#_wcounter
      0004C5 74 01            [12] 1563 	mov	a,#0x01
      0004C7 2A               [12] 1564 	add	a,r2
      0004C8 F0               [24] 1565 	movx	@dptr,a
      0004C9 E4               [12] 1566 	clr	a
      0004CA 3B               [12] 1567 	addc	a,r3
      0004CB A3               [24] 1568 	inc	dptr
      0004CC F0               [24] 1569 	movx	@dptr,a
      0004CD 02 05 51         [24] 1570 	ljmp	00121$
      0004D0                       1571 00117$:
                                   1572 ;	main.c:103: wcounter = 0;
      0004D0 90 05 89         [24] 1573 	mov	dptr,#_wcounter
      0004D3 E4               [12] 1574 	clr	a
      0004D4 F0               [24] 1575 	movx	@dptr,a
      0004D5 A3               [24] 1576 	inc	dptr
      0004D6 F0               [24] 1577 	movx	@dptr,a
                                   1578 ;	main.c:105: sum += (set - now);
      0004D7 EE               [12] 1579 	mov	a,r6
      0004D8 C3               [12] 1580 	clr	c
      0004D9 9C               [12] 1581 	subb	a,r4
      0004DA FE               [12] 1582 	mov	r6,a
      0004DB EF               [12] 1583 	mov	a,r7
      0004DC 9D               [12] 1584 	subb	a,r5
      0004DD FF               [12] 1585 	mov	r7,a
      0004DE 90 05 83         [24] 1586 	mov	dptr,#_sum
      0004E1 E0               [24] 1587 	movx	a,@dptr
      0004E2 FC               [12] 1588 	mov	r4,a
      0004E3 A3               [24] 1589 	inc	dptr
      0004E4 E0               [24] 1590 	movx	a,@dptr
      0004E5 FD               [12] 1591 	mov	r5,a
      0004E6 90 05 83         [24] 1592 	mov	dptr,#_sum
      0004E9 EE               [12] 1593 	mov	a,r6
      0004EA 2C               [12] 1594 	add	a,r4
      0004EB F0               [24] 1595 	movx	@dptr,a
      0004EC EF               [12] 1596 	mov	a,r7
      0004ED 3D               [12] 1597 	addc	a,r5
      0004EE A3               [24] 1598 	inc	dptr
      0004EF F0               [24] 1599 	movx	@dptr,a
                                   1600 ;	main.c:106: k = sum / 100.0f;
      0004F0 90 05 83         [24] 1601 	mov	dptr,#_sum
      0004F3 E0               [24] 1602 	movx	a,@dptr
      0004F4 FE               [12] 1603 	mov	r6,a
      0004F5 A3               [24] 1604 	inc	dptr
      0004F6 E0               [24] 1605 	movx	a,@dptr
      0004F7 FF               [12] 1606 	mov	r7,a
      0004F8 8E 82            [24] 1607 	mov	dpl,r6
      0004FA 8F 83            [24] 1608 	mov	dph,r7
      0004FC 12 27 C9         [24] 1609 	lcall	___sint2fs
      0004FF AC 82            [24] 1610 	mov	r4,dpl
      000501 AD 83            [24] 1611 	mov	r5,dph
      000503 AE F0            [24] 1612 	mov	r6,b
      000505 FF               [12] 1613 	mov	r7,a
      000506 E4               [12] 1614 	clr	a
      000507 C0 E0            [24] 1615 	push	acc
      000509 C0 E0            [24] 1616 	push	acc
      00050B 74 C8            [12] 1617 	mov	a,#0xc8
      00050D C0 E0            [24] 1618 	push	acc
      00050F 74 42            [12] 1619 	mov	a,#0x42
      000511 C0 E0            [24] 1620 	push	acc
      000513 8C 82            [24] 1621 	mov	dpl,r4
      000515 8D 83            [24] 1622 	mov	dph,r5
      000517 8E F0            [24] 1623 	mov	b,r6
      000519 EF               [12] 1624 	mov	a,r7
      00051A 12 32 3B         [24] 1625 	lcall	___fsdiv
      00051D AC 82            [24] 1626 	mov	r4,dpl
      00051F AD 83            [24] 1627 	mov	r5,dph
      000521 AE F0            [24] 1628 	mov	r6,b
      000523 FF               [12] 1629 	mov	r7,a
      000524 E5 81            [12] 1630 	mov	a,sp
      000526 24 FC            [12] 1631 	add	a,#0xfc
      000528 F5 81            [12] 1632 	mov	sp,a
      00052A 90 05 85         [24] 1633 	mov	dptr,#_k
      00052D EC               [12] 1634 	mov	a,r4
      00052E F0               [24] 1635 	movx	@dptr,a
      00052F ED               [12] 1636 	mov	a,r5
      000530 A3               [24] 1637 	inc	dptr
      000531 F0               [24] 1638 	movx	@dptr,a
      000532 EE               [12] 1639 	mov	a,r6
      000533 A3               [24] 1640 	inc	dptr
      000534 F0               [24] 1641 	movx	@dptr,a
      000535 EF               [12] 1642 	mov	a,r7
      000536 A3               [24] 1643 	inc	dptr
      000537 F0               [24] 1644 	movx	@dptr,a
      000538 80 17            [24] 1645 	sjmp	00121$
      00053A                       1646 00120$:
                                   1647 ;	main.c:109: wcounter = 0;
      00053A 90 05 89         [24] 1648 	mov	dptr,#_wcounter
      00053D E4               [12] 1649 	clr	a
      00053E F0               [24] 1650 	movx	@dptr,a
      00053F A3               [24] 1651 	inc	dptr
      000540 F0               [24] 1652 	movx	@dptr,a
                                   1653 ;	main.c:110: sum = 0;
      000541 90 05 83         [24] 1654 	mov	dptr,#_sum
      000544 F0               [24] 1655 	movx	@dptr,a
      000545 A3               [24] 1656 	inc	dptr
      000546 F0               [24] 1657 	movx	@dptr,a
                                   1658 ;	main.c:111: k = 0;
      000547 90 05 85         [24] 1659 	mov	dptr,#_k
      00054A F0               [24] 1660 	movx	@dptr,a
      00054B A3               [24] 1661 	inc	dptr
      00054C F0               [24] 1662 	movx	@dptr,a
      00054D A3               [24] 1663 	inc	dptr
      00054E F0               [24] 1664 	movx	@dptr,a
      00054F A3               [24] 1665 	inc	dptr
      000550 F0               [24] 1666 	movx	@dptr,a
      000551                       1667 00121$:
                                   1668 ;	main.c:114: if (counter < 10)
      000551 90 05 81         [24] 1669 	mov	dptr,#_counter
      000554 E0               [24] 1670 	movx	a,@dptr
      000555 FF               [12] 1671 	mov	r7,a
      000556 BF 0A 00         [24] 1672 	cjne	r7,#0x0a,00221$
      000559                       1673 00221$:
      000559 50 09            [24] 1674 	jnc	00124$
                                   1675 ;	main.c:115: counter++;
      00055B 90 05 81         [24] 1676 	mov	dptr,#_counter
      00055E EF               [12] 1677 	mov	a,r7
      00055F 04               [12] 1678 	inc	a
      000560 F0               [24] 1679 	movx	@dptr,a
      000561 02 06 4D         [24] 1680 	ljmp	00125$
      000564                       1681 00124$:
                                   1682 ;	main.c:117: counter = 0;
      000564 90 05 81         [24] 1683 	mov	dptr,#_counter
      000567 E4               [12] 1684 	clr	a
      000568 F0               [24] 1685 	movx	@dptr,a
                                   1686 ;	main.c:119: sprintf(str, "%d\n", now);
      000569 90 00 0A         [24] 1687 	mov	dptr,#_now
      00056C E0               [24] 1688 	movx	a,@dptr
      00056D FF               [12] 1689 	mov	r7,a
      00056E 7E 00            [12] 1690 	mov	r6,#0x00
      000570 C0 07            [24] 1691 	push	ar7
      000572 C0 06            [24] 1692 	push	ar6
      000574 74 1B            [12] 1693 	mov	a,#___str_2
      000576 C0 E0            [24] 1694 	push	acc
      000578 74 34            [12] 1695 	mov	a,#(___str_2 >> 8)
      00057A C0 E0            [24] 1696 	push	acc
      00057C 74 80            [12] 1697 	mov	a,#0x80
      00057E C0 E0            [24] 1698 	push	acc
      000580 74 0B            [12] 1699 	mov	a,#_str
      000582 C0 E0            [24] 1700 	push	acc
      000584 74 00            [12] 1701 	mov	a,#(_str >> 8)
      000586 C0 E0            [24] 1702 	push	acc
      000588 E4               [12] 1703 	clr	a
      000589 C0 E0            [24] 1704 	push	acc
      00058B 12 24 80         [24] 1705 	lcall	_sprintf
      00058E E5 81            [12] 1706 	mov	a,sp
      000590 24 F8            [12] 1707 	add	a,#0xf8
      000592 F5 81            [12] 1708 	mov	sp,a
                                   1709 ;	main.c:120: uart1Write(str);
      000594 90 00 0B         [24] 1710 	mov	dptr,#_str
      000597 75 F0 00         [24] 1711 	mov	b,#0x00
      00059A 12 19 B5         [24] 1712 	lcall	_uart1Write
                                   1713 ;	main.c:122: oledPrintfc(0, 3, 1, "%3d%%%3d%%", now, set);
      00059D 90 00 09         [24] 1714 	mov	dptr,#_set
      0005A0 E0               [24] 1715 	movx	a,@dptr
      0005A1 FF               [12] 1716 	mov	r7,a
      0005A2 7E 00            [12] 1717 	mov	r6,#0x00
      0005A4 90 00 0A         [24] 1718 	mov	dptr,#_now
      0005A7 E0               [24] 1719 	movx	a,@dptr
      0005A8 FD               [12] 1720 	mov	r5,a
      0005A9 7C 00            [12] 1721 	mov	r4,#0x00
      0005AB C0 07            [24] 1722 	push	ar7
      0005AD C0 06            [24] 1723 	push	ar6
      0005AF C0 05            [24] 1724 	push	ar5
      0005B1 C0 04            [24] 1725 	push	ar4
      0005B3 74 1F            [12] 1726 	mov	a,#___str_3
      0005B5 C0 E0            [24] 1727 	push	acc
      0005B7 74 34            [12] 1728 	mov	a,#(___str_3 >> 8)
      0005B9 C0 E0            [24] 1729 	push	acc
      0005BB 74 80            [12] 1730 	mov	a,#0x80
      0005BD C0 E0            [24] 1731 	push	acc
      0005BF 23               [12] 1732 	rl	a
      0005C0 C0 E0            [24] 1733 	push	acc
      0005C2 74 03            [12] 1734 	mov	a,#0x03
      0005C4 C0 E0            [24] 1735 	push	acc
      0005C6 E4               [12] 1736 	clr	a
      0005C7 C0 E0            [24] 1737 	push	acc
      0005C9 12 11 01         [24] 1738 	lcall	_oledPrintfc
      0005CC E5 81            [12] 1739 	mov	a,sp
      0005CE 24 F6            [12] 1740 	add	a,#0xf6
      0005D0 F5 81            [12] 1741 	mov	sp,a
                                   1742 ;	main.c:123: oledPrint(40, 3, 1, 1, "NOW");
      0005D2 90 00 50         [24] 1743 	mov	dptr,#_oledPrint_PARM_2
      0005D5 74 03            [12] 1744 	mov	a,#0x03
      0005D7 F0               [24] 1745 	movx	@dptr,a
      0005D8 90 00 51         [24] 1746 	mov	dptr,#_oledPrint_PARM_3
      0005DB 74 01            [12] 1747 	mov	a,#0x01
      0005DD F0               [24] 1748 	movx	@dptr,a
      0005DE 90 00 52         [24] 1749 	mov	dptr,#_oledPrint_PARM_4
      0005E1 F0               [24] 1750 	movx	@dptr,a
      0005E2 90 00 53         [24] 1751 	mov	dptr,#_oledPrint_PARM_5
      0005E5 74 2A            [12] 1752 	mov	a,#___str_4
      0005E7 F0               [24] 1753 	movx	@dptr,a
      0005E8 74 34            [12] 1754 	mov	a,#(___str_4 >> 8)
      0005EA A3               [24] 1755 	inc	dptr
      0005EB F0               [24] 1756 	movx	@dptr,a
      0005EC 74 80            [12] 1757 	mov	a,#0x80
      0005EE A3               [24] 1758 	inc	dptr
      0005EF F0               [24] 1759 	movx	@dptr,a
      0005F0 75 82 28         [24] 1760 	mov	dpl,#0x28
      0005F3 12 0E 30         [24] 1761 	lcall	_oledPrint
                                   1762 ;	main.c:124: oledPrint(104, 3, 1, 1, "SET");
      0005F6 90 00 50         [24] 1763 	mov	dptr,#_oledPrint_PARM_2
      0005F9 74 03            [12] 1764 	mov	a,#0x03
      0005FB F0               [24] 1765 	movx	@dptr,a
      0005FC 90 00 51         [24] 1766 	mov	dptr,#_oledPrint_PARM_3
      0005FF 74 01            [12] 1767 	mov	a,#0x01
      000601 F0               [24] 1768 	movx	@dptr,a
      000602 90 00 52         [24] 1769 	mov	dptr,#_oledPrint_PARM_4
      000605 F0               [24] 1770 	movx	@dptr,a
      000606 90 00 53         [24] 1771 	mov	dptr,#_oledPrint_PARM_5
      000609 74 2E            [12] 1772 	mov	a,#___str_5
      00060B F0               [24] 1773 	movx	@dptr,a
      00060C 74 34            [12] 1774 	mov	a,#(___str_5 >> 8)
      00060E A3               [24] 1775 	inc	dptr
      00060F F0               [24] 1776 	movx	@dptr,a
      000610 74 80            [12] 1777 	mov	a,#0x80
      000612 A3               [24] 1778 	inc	dptr
      000613 F0               [24] 1779 	movx	@dptr,a
      000614 75 82 68         [24] 1780 	mov	dpl,#0x68
      000617 12 0E 30         [24] 1781 	lcall	_oledPrint
                                   1782 ;	main.c:125: oledPrint(0, 3, 0, 1, run ? "H" : "-");
      00061A 90 05 82         [24] 1783 	mov	dptr,#_run
      00061D E0               [24] 1784 	movx	a,@dptr
      00061E 60 06            [24] 1785 	jz	00140$
      000620 7E 32            [12] 1786 	mov	r6,#___str_6
      000622 7F 34            [12] 1787 	mov	r7,#(___str_6 >> 8)
      000624 80 04            [24] 1788 	sjmp	00141$
      000626                       1789 00140$:
      000626 7E 34            [12] 1790 	mov	r6,#___str_7
      000628 7F 34            [12] 1791 	mov	r7,#(___str_7 >> 8)
      00062A                       1792 00141$:
      00062A 7D 80            [12] 1793 	mov	r5,#0x80
      00062C 90 00 50         [24] 1794 	mov	dptr,#_oledPrint_PARM_2
      00062F 74 03            [12] 1795 	mov	a,#0x03
      000631 F0               [24] 1796 	movx	@dptr,a
      000632 90 00 51         [24] 1797 	mov	dptr,#_oledPrint_PARM_3
      000635 E4               [12] 1798 	clr	a
      000636 F0               [24] 1799 	movx	@dptr,a
      000637 90 00 52         [24] 1800 	mov	dptr,#_oledPrint_PARM_4
      00063A 04               [12] 1801 	inc	a
      00063B F0               [24] 1802 	movx	@dptr,a
      00063C 90 00 53         [24] 1803 	mov	dptr,#_oledPrint_PARM_5
      00063F EE               [12] 1804 	mov	a,r6
      000640 F0               [24] 1805 	movx	@dptr,a
      000641 EF               [12] 1806 	mov	a,r7
      000642 A3               [24] 1807 	inc	dptr
      000643 F0               [24] 1808 	movx	@dptr,a
      000644 ED               [12] 1809 	mov	a,r5
      000645 A3               [24] 1810 	inc	dptr
      000646 F0               [24] 1811 	movx	@dptr,a
      000647 75 82 00         [24] 1812 	mov	dpl,#0x00
      00064A 12 0E 30         [24] 1813 	lcall	_oledPrint
      00064D                       1814 00125$:
                                   1815 ;	main.c:128: delay(10);
      00064D 90 00 0A         [24] 1816 	mov	dptr,#0x000a
      000650 12 14 05         [24] 1817 	lcall	_delay
                                   1818 ;	main.c:130: }
      000653 02 03 26         [24] 1819 	ljmp	00127$
                                   1820 	.area CSEG    (CODE)
                                   1821 	.area CONST   (CODE)
                                   1822 	.area CONST   (CODE)
      00340E                       1823 ___str_0:
      00340E 4E 53 48 45 54        1824 	.ascii "NSHET"
      003413 0A                    1825 	.db 0x0a
      003414 00                    1826 	.db 0x00
                                   1827 	.area CSEG    (CODE)
                                   1828 	.area CONST   (CODE)
      003415                       1829 ___str_1:
      003415 4E 53 48 45 54        1830 	.ascii "NSHET"
      00341A 00                    1831 	.db 0x00
                                   1832 	.area CSEG    (CODE)
                                   1833 	.area CONST   (CODE)
      00341B                       1834 ___str_2:
      00341B 25 64                 1835 	.ascii "%d"
      00341D 0A                    1836 	.db 0x0a
      00341E 00                    1837 	.db 0x00
                                   1838 	.area CSEG    (CODE)
                                   1839 	.area CONST   (CODE)
      00341F                       1840 ___str_3:
      00341F 25 33 64 25 25 25 33  1841 	.ascii "%3d%%%3d%%"
             64 25 25
      003429 00                    1842 	.db 0x00
                                   1843 	.area CSEG    (CODE)
                                   1844 	.area CONST   (CODE)
      00342A                       1845 ___str_4:
      00342A 4E 4F 57              1846 	.ascii "NOW"
      00342D 00                    1847 	.db 0x00
                                   1848 	.area CSEG    (CODE)
                                   1849 	.area CONST   (CODE)
      00342E                       1850 ___str_5:
      00342E 53 45 54              1851 	.ascii "SET"
      003431 00                    1852 	.db 0x00
                                   1853 	.area CSEG    (CODE)
                                   1854 	.area CONST   (CODE)
      003432                       1855 ___str_6:
      003432 48                    1856 	.ascii "H"
      003433 00                    1857 	.db 0x00
                                   1858 	.area CSEG    (CODE)
                                   1859 	.area CONST   (CODE)
      003434                       1860 ___str_7:
      003434 2D                    1861 	.ascii "-"
      003435 00                    1862 	.db 0x00
                                   1863 	.area CSEG    (CODE)
                                   1864 	.area XINIT   (CODE)
      00512F                       1865 __xinit__tbuf:
      00512F 00                    1866 	.db #0x00	; 0
      005130 00                    1867 	.db 0x00
      005131 00                    1868 	.db 0x00
      005132 00                    1869 	.db 0x00
      005133 00                    1870 	.db 0x00
      005134 00                    1871 	.db 0x00
      005135 00                    1872 	.db 0x00
      005136 00                    1873 	.db 0x00
      005137 00                    1874 	.db 0x00
      005138 00                    1875 	.db 0x00
      005139 00                    1876 	.db 0x00
      00513A 00                    1877 	.db 0x00
      00513B 00                    1878 	.db 0x00
      00513C 00                    1879 	.db 0x00
      00513D 00                    1880 	.db 0x00
      00513E 00                    1881 	.db 0x00
      00513F 00                    1882 	.db 0x00
      005140 00                    1883 	.db 0x00
      005141 00                    1884 	.db 0x00
      005142 00                    1885 	.db 0x00
      005143 00                    1886 	.db 0x00
      005144 00                    1887 	.db 0x00
      005145 00                    1888 	.db 0x00
      005146 00                    1889 	.db 0x00
      005147 00                    1890 	.db 0x00
      005148 00                    1891 	.db 0x00
      005149 00                    1892 	.db 0x00
      00514A 00                    1893 	.db 0x00
      00514B 00                    1894 	.db 0x00
      00514C 00                    1895 	.db 0x00
      00514D 00                    1896 	.db 0x00
      00514E 00                    1897 	.db 0x00
      00514F 00                    1898 	.db 0x00
      005150 00                    1899 	.db 0x00
      005151 00                    1900 	.db 0x00
      005152 00                    1901 	.db 0x00
      005153 00                    1902 	.db 0x00
      005154 00                    1903 	.db 0x00
      005155 00                    1904 	.db 0x00
      005156 00                    1905 	.db 0x00
      005157 00                    1906 	.db 0x00
      005158 00                    1907 	.db 0x00
      005159 00                    1908 	.db 0x00
      00515A 00                    1909 	.db 0x00
      00515B 00                    1910 	.db 0x00
      00515C 00                    1911 	.db 0x00
      00515D 00                    1912 	.db 0x00
      00515E 00                    1913 	.db 0x00
      00515F 00                    1914 	.db 0x00
      005160 00                    1915 	.db 0x00
      005161 00                    1916 	.db 0x00
      005162 00                    1917 	.db 0x00
      005163 00                    1918 	.db 0x00
      005164 00                    1919 	.db 0x00
      005165 00                    1920 	.db 0x00
      005166 00                    1921 	.db 0x00
      005167 00                    1922 	.db 0x00
      005168 00                    1923 	.db 0x00
      005169 00                    1924 	.db 0x00
      00516A 00                    1925 	.db 0x00
      00516B 00                    1926 	.db 0x00
      00516C 00                    1927 	.db 0x00
      00516D 00                    1928 	.db 0x00
      00516E 00                    1929 	.db 0x00
      00516F 00                    1930 	.db 0x00
      005170 00                    1931 	.db 0x00
      005171 00                    1932 	.db 0x00
      005172 00                    1933 	.db 0x00
      005173 00                    1934 	.db 0x00
      005174 00                    1935 	.db 0x00
      005175 00                    1936 	.db 0x00
      005176 00                    1937 	.db 0x00
      005177 00                    1938 	.db 0x00
      005178 00                    1939 	.db 0x00
      005179 00                    1940 	.db 0x00
      00517A 00                    1941 	.db 0x00
      00517B 00                    1942 	.db 0x00
      00517C 00                    1943 	.db 0x00
      00517D 00                    1944 	.db 0x00
      00517E 00                    1945 	.db 0x00
      00517F 00                    1946 	.db 0x00
      005180 00                    1947 	.db 0x00
      005181 00                    1948 	.db 0x00
      005182 00                    1949 	.db 0x00
      005183 00                    1950 	.db 0x00
      005184 00                    1951 	.db 0x00
      005185 00                    1952 	.db 0x00
      005186 00                    1953 	.db 0x00
      005187 00                    1954 	.db 0x00
      005188 00                    1955 	.db 0x00
      005189 00                    1956 	.db 0x00
      00518A 00                    1957 	.db 0x00
      00518B 00                    1958 	.db 0x00
      00518C 00                    1959 	.db 0x00
      00518D 00                    1960 	.db 0x00
      00518E 00                    1961 	.db 0x00
      00518F 00                    1962 	.db 0x00
      005190 00                    1963 	.db 0x00
      005191 00                    1964 	.db 0x00
      005192 00                    1965 	.db 0x00
      005193                       1966 __xinit__counter:
      005193 00                    1967 	.db #0x00	; 0
      005194                       1968 __xinit__run:
      005194 00                    1969 	.db #0x00	;  0
      005195                       1970 __xinit__sum:
      005195 00 00                 1971 	.byte #0x00, #0x00	;  0
      005197                       1972 __xinit__k:
      005197 00 00 00 00           1973 	.byte #0x00, #0x00, #0x00, #0x00	;  0.000000e+000
      00519B                       1974 __xinit__wcounter:
      00519B 00 00                 1975 	.byte #0x00, #0x00	; 0
                                   1976 	.area CABS    (ABS,CODE)
