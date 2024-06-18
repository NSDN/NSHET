                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.0.0 #11528 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module sys
                                      6 	.optsdcc -mmcs51 --model-large
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl ___uart0_interrupt
                                     12 	.globl ___tim2_interrupt
                                     13 	.globl _UIF_BUS_RST
                                     14 	.globl _UIF_TRANSFER
                                     15 	.globl _UIF_SUSPEND
                                     16 	.globl _UIF_FIFO_OV
                                     17 	.globl _U_SIE_FREE
                                     18 	.globl _U_TOG_OK
                                     19 	.globl _U_IS_NAK
                                     20 	.globl _S0_R_FIFO0
                                     21 	.globl _S0_R_FIFO1
                                     22 	.globl _S0_T_FIFO
                                     23 	.globl _S0_FREE
                                     24 	.globl _S0_IF_BYTE
                                     25 	.globl _S0_IF_FIRST
                                     26 	.globl _S0_IF_OV
                                     27 	.globl _S0_FST_ACT
                                     28 	.globl _CP_RL2
                                     29 	.globl _C_T2
                                     30 	.globl _TR2
                                     31 	.globl _EXEN2
                                     32 	.globl _TCLK
                                     33 	.globl _RCLK
                                     34 	.globl _EXF2
                                     35 	.globl _CAP1F
                                     36 	.globl _TF2
                                     37 	.globl _RI
                                     38 	.globl _TI
                                     39 	.globl _RB8
                                     40 	.globl _TB8
                                     41 	.globl _REN
                                     42 	.globl _SM2
                                     43 	.globl _SM1
                                     44 	.globl _SM0
                                     45 	.globl _IT0
                                     46 	.globl _IE0
                                     47 	.globl _IT1
                                     48 	.globl _IE1
                                     49 	.globl _TR0
                                     50 	.globl _TF0
                                     51 	.globl _TR1
                                     52 	.globl _TF1
                                     53 	.globl _RXD1_
                                     54 	.globl _LED2
                                     55 	.globl _CAP3_
                                     56 	.globl _PWM3_
                                     57 	.globl _TXD1_
                                     58 	.globl _TNOW_
                                     59 	.globl _LED3
                                     60 	.globl _SCS_
                                     61 	.globl _SCK_
                                     62 	.globl _P40
                                     63 	.globl _P41
                                     64 	.globl _P42
                                     65 	.globl _P43
                                     66 	.globl _P44
                                     67 	.globl _P45
                                     68 	.globl _P46
                                     69 	.globl _P47
                                     70 	.globl _RXD
                                     71 	.globl _TXD
                                     72 	.globl _INT0
                                     73 	.globl _LED0
                                     74 	.globl _INT1
                                     75 	.globl _LED1
                                     76 	.globl _T0
                                     77 	.globl _XCS0
                                     78 	.globl _LEDC
                                     79 	.globl _T1
                                     80 	.globl _DA6
                                     81 	.globl _WR
                                     82 	.globl _RD
                                     83 	.globl _P30
                                     84 	.globl _P31
                                     85 	.globl _P32
                                     86 	.globl _P33
                                     87 	.globl _P34
                                     88 	.globl _P35
                                     89 	.globl _P36
                                     90 	.globl _P37
                                     91 	.globl _CAP2_
                                     92 	.globl _T2EX_
                                     93 	.globl _TNOW
                                     94 	.globl _RXD1
                                     95 	.globl _DA7
                                     96 	.globl _TXD1
                                     97 	.globl _P20
                                     98 	.globl _P21
                                     99 	.globl _P22
                                    100 	.globl _P23
                                    101 	.globl _P24
                                    102 	.globl _P25
                                    103 	.globl _P26
                                    104 	.globl _P27
                                    105 	.globl _CAP1
                                    106 	.globl _T2
                                    107 	.globl _CAP2
                                    108 	.globl _T2EX
                                    109 	.globl _CAP3
                                    110 	.globl _PWM3
                                    111 	.globl _SCS
                                    112 	.globl _MOSI
                                    113 	.globl _MISO
                                    114 	.globl _SCK
                                    115 	.globl _AIN0
                                    116 	.globl _AIN1
                                    117 	.globl _AIN2
                                    118 	.globl _AIN3
                                    119 	.globl _AIN4
                                    120 	.globl _AIN5
                                    121 	.globl _AIN6
                                    122 	.globl _AIN7
                                    123 	.globl _P10
                                    124 	.globl _P11
                                    125 	.globl _P12
                                    126 	.globl _P13
                                    127 	.globl _P14
                                    128 	.globl _P15
                                    129 	.globl _P16
                                    130 	.globl _P17
                                    131 	.globl _UDTR
                                    132 	.globl _URTS
                                    133 	.globl _RXD_
                                    134 	.globl _TXD_
                                    135 	.globl _UCTS
                                    136 	.globl _UDSR
                                    137 	.globl _URI
                                    138 	.globl _UDCD
                                    139 	.globl _P00
                                    140 	.globl _P01
                                    141 	.globl _P02
                                    142 	.globl _P03
                                    143 	.globl _P04
                                    144 	.globl _P05
                                    145 	.globl _P06
                                    146 	.globl _P07
                                    147 	.globl _IE_SPI0
                                    148 	.globl _IE_TMR3
                                    149 	.globl _IE_USB
                                    150 	.globl _IE_ADC
                                    151 	.globl _IE_UART1
                                    152 	.globl _IE_GPIO
                                    153 	.globl _IE_WDOG
                                    154 	.globl _PX0
                                    155 	.globl _PT0
                                    156 	.globl _PX1
                                    157 	.globl _PT1
                                    158 	.globl _PS
                                    159 	.globl _PT2
                                    160 	.globl _PL_FLAG
                                    161 	.globl _PH_FLAG
                                    162 	.globl _EX0
                                    163 	.globl _ET0
                                    164 	.globl _EX1
                                    165 	.globl _ET1
                                    166 	.globl _ES
                                    167 	.globl _ET2
                                    168 	.globl _E_DIS
                                    169 	.globl _EA
                                    170 	.globl _P
                                    171 	.globl _F1
                                    172 	.globl _OV
                                    173 	.globl _RS0
                                    174 	.globl _RS1
                                    175 	.globl _F0
                                    176 	.globl _AC
                                    177 	.globl _CY
                                    178 	.globl _USB_DMA_AH
                                    179 	.globl _USB_DMA_AL
                                    180 	.globl _USB_DMA
                                    181 	.globl _UDEV_CTRL
                                    182 	.globl _USB_DEV_AD
                                    183 	.globl _USB_CTRL
                                    184 	.globl _USB_INT_EN
                                    185 	.globl _UEP4_T_LEN
                                    186 	.globl _UEP4_CTRL
                                    187 	.globl _UEP0_T_LEN
                                    188 	.globl _UEP0_CTRL
                                    189 	.globl _USB_MIS_ST
                                    190 	.globl _USB_INT_ST
                                    191 	.globl _USB_INT_FG
                                    192 	.globl _UEP3_T_LEN
                                    193 	.globl _UEP3_CTRL
                                    194 	.globl _UEP2_T_LEN
                                    195 	.globl _UEP2_CTRL
                                    196 	.globl _UEP1_T_LEN
                                    197 	.globl _UEP1_CTRL
                                    198 	.globl _USB_RX_LEN
                                    199 	.globl _ADC_EX_SW
                                    200 	.globl _ADC_SETUP
                                    201 	.globl _ADC_FIFO_H
                                    202 	.globl _ADC_FIFO_L
                                    203 	.globl _ADC_FIFO
                                    204 	.globl _ADC_CHANN
                                    205 	.globl _ADC_CTRL
                                    206 	.globl _ADC_STAT
                                    207 	.globl _ADC_CK_SE
                                    208 	.globl _ADC_DMA_CN
                                    209 	.globl _ADC_DMA_AH
                                    210 	.globl _ADC_DMA_AL
                                    211 	.globl _ADC_DMA
                                    212 	.globl _SER1_ADDR
                                    213 	.globl _SER1_MSR
                                    214 	.globl _SER1_LSR
                                    215 	.globl _SER1_MCR
                                    216 	.globl _SER1_LCR
                                    217 	.globl _SER1_IIR
                                    218 	.globl _SER1_IER
                                    219 	.globl _SER1_FIFO
                                    220 	.globl _SPI0_SETUP
                                    221 	.globl _SPI0_CK_SE
                                    222 	.globl _SPI0_CTRL
                                    223 	.globl _SPI0_DATA
                                    224 	.globl _SPI0_STAT
                                    225 	.globl _T3_FIFO_H
                                    226 	.globl _T3_FIFO_L
                                    227 	.globl _T3_FIFO
                                    228 	.globl _T3_DMA_AH
                                    229 	.globl _T3_DMA_AL
                                    230 	.globl _T3_DMA
                                    231 	.globl _T3_DMA_CN
                                    232 	.globl _T3_CTRL
                                    233 	.globl _T3_STAT
                                    234 	.globl _T3_END_H
                                    235 	.globl _T3_END_L
                                    236 	.globl _T3_END
                                    237 	.globl _T3_COUNT_H
                                    238 	.globl _T3_COUNT_L
                                    239 	.globl _T3_COUNT
                                    240 	.globl _T3_SETUP
                                    241 	.globl _TH2
                                    242 	.globl _TL2
                                    243 	.globl _T2COUNT
                                    244 	.globl _RCAP2H
                                    245 	.globl _RCAP2L
                                    246 	.globl _RCAP2
                                    247 	.globl _T2MOD
                                    248 	.globl _T2CON
                                    249 	.globl _SBUF
                                    250 	.globl _SCON
                                    251 	.globl _TH1
                                    252 	.globl _TH0
                                    253 	.globl _TL1
                                    254 	.globl _TL0
                                    255 	.globl _TMOD
                                    256 	.globl _TCON
                                    257 	.globl _XBUS_SPEED
                                    258 	.globl _XBUS_AUX
                                    259 	.globl _PIN_FUNC
                                    260 	.globl _PORT_CFG
                                    261 	.globl _P5_IN
                                    262 	.globl _P4_PU
                                    263 	.globl _P4_DIR
                                    264 	.globl _P4_IN
                                    265 	.globl _P4_OUT
                                    266 	.globl _P3_PU
                                    267 	.globl _P3_DIR
                                    268 	.globl _P3
                                    269 	.globl _P2_PU
                                    270 	.globl _P2_DIR
                                    271 	.globl _P2
                                    272 	.globl _P1_PU
                                    273 	.globl _P1_DIR
                                    274 	.globl _P1_IE
                                    275 	.globl _P1
                                    276 	.globl _P0_PU
                                    277 	.globl _P0_DIR
                                    278 	.globl _P0
                                    279 	.globl _ROM_CTRL
                                    280 	.globl _ROM_DATA_H
                                    281 	.globl _ROM_DATA_L
                                    282 	.globl _ROM_DATA
                                    283 	.globl _ROM_ADDR_H
                                    284 	.globl _ROM_ADDR_L
                                    285 	.globl _ROM_ADDR
                                    286 	.globl _GPIO_IE
                                    287 	.globl _IP_EX
                                    288 	.globl _IE_EX
                                    289 	.globl _IP
                                    290 	.globl _IE
                                    291 	.globl _WDOG_COUNT
                                    292 	.globl _RESET_KEEP
                                    293 	.globl _WAKE_CTRL
                                    294 	.globl _SLEEP_CTRL
                                    295 	.globl _CLOCK_CFG
                                    296 	.globl _PLL_CFG
                                    297 	.globl _PCON
                                    298 	.globl _GLOBAL_CFG
                                    299 	.globl _SAFE_MOD
                                    300 	.globl _DPH
                                    301 	.globl _DPL
                                    302 	.globl _SP
                                    303 	.globl _B
                                    304 	.globl _ACC
                                    305 	.globl _PSW
                                    306 	.globl _block_recv_siz
                                    307 	.globl _block_recv_pos
                                    308 	.globl _block_recv_ptr
                                    309 	.globl _recPtr0
                                    310 	.globl _sysTickCount
                                    311 	.globl _uart1Gets_PARM_2
                                    312 	.globl _u1c
                                    313 	.globl _u1t
                                    314 	.globl _uart0BlockRecv_PARM_2
                                    315 	.globl _uart0Gets_PARM_2
                                    316 	.globl _sbuf
                                    317 	.globl _x2
                                    318 	.globl _x
                                    319 	.globl _mmov_PARM_3
                                    320 	.globl _mmov_PARM_2
                                    321 	.globl _mset_PARM_3
                                    322 	.globl _mset_PARM_2
                                    323 	.globl _mc
                                    324 	.globl _LED_DMA_X
                                    325 	.globl _LED_DMA_XL
                                    326 	.globl _LED_DMA_XH
                                    327 	.globl _LED_DMA_CN
                                    328 	.globl _LED_DMA
                                    329 	.globl _LED_DMA_AL
                                    330 	.globl _LED_DMA_AH
                                    331 	.globl _LED_CK_SE
                                    332 	.globl _LED_DATA
                                    333 	.globl _LED_CTRL
                                    334 	.globl _LED_STAT
                                    335 	.globl _UEP3_DMA
                                    336 	.globl _UEP3_DMA_L
                                    337 	.globl _UEP3_DMA_H
                                    338 	.globl _UEP2_DMA
                                    339 	.globl _UEP2_DMA_L
                                    340 	.globl _UEP2_DMA_H
                                    341 	.globl _UEP1_DMA
                                    342 	.globl _UEP1_DMA_L
                                    343 	.globl _UEP1_DMA_H
                                    344 	.globl _UEP0_DMA
                                    345 	.globl _UEP0_DMA_L
                                    346 	.globl _UEP0_DMA_H
                                    347 	.globl _UEP2_3_MOD
                                    348 	.globl _UEP4_1_MOD
                                    349 	.globl _pLED_DMA_X
                                    350 	.globl _pLED_DMA_XL
                                    351 	.globl _pLED_DMA_XH
                                    352 	.globl _pLED_DMA_CN
                                    353 	.globl _pLED_DMA
                                    354 	.globl _pLED_DMA_AL
                                    355 	.globl _pLED_DMA_AH
                                    356 	.globl _pLED_CK_SE
                                    357 	.globl _pLED_DATA
                                    358 	.globl _pLED_CTRL
                                    359 	.globl _pLED_STAT
                                    360 	.globl _pUEP3_DMA
                                    361 	.globl _pUEP3_DMA_L
                                    362 	.globl _pUEP3_DMA_H
                                    363 	.globl _pUEP2_DMA
                                    364 	.globl _pUEP2_DMA_L
                                    365 	.globl _pUEP2_DMA_H
                                    366 	.globl _pUEP1_DMA
                                    367 	.globl _pUEP1_DMA_L
                                    368 	.globl _pUEP1_DMA_H
                                    369 	.globl _pUEP0_DMA
                                    370 	.globl _pUEP0_DMA_L
                                    371 	.globl _pUEP0_DMA_H
                                    372 	.globl _pUEP2_3_MOD
                                    373 	.globl _pUEP4_1_MOD
                                    374 	.globl _block_recv
                                    375 	.globl _busy
                                    376 	.globl _mset
                                    377 	.globl _mmov
                                    378 	.globl _sysClockConfig
                                    379 	.globl _delay
                                    380 	.globl _delay_us
                                    381 	.globl _sysTickConfig
                                    382 	.globl _sysGetTickCount
                                    383 	.globl _uart0Config
                                    384 	.globl _uart0Send
                                    385 	.globl _uart0Write
                                    386 	.globl _uart0Get
                                    387 	.globl _uart0Gets
                                    388 	.globl _uart0BlockRecv
                                    389 	.globl _uart1Config
                                    390 	.globl _uart1Send
                                    391 	.globl _uart1Write
                                    392 	.globl _uart1Get
                                    393 	.globl _uart1Gets
                                    394 	.globl _pwm3Init
                                    395 	.globl _pwm3Duty
                                    396 	.globl _adcInit
                                    397 	.globl _adcGet
                                    398 ;--------------------------------------------------------
                                    399 ; special function registers
                                    400 ;--------------------------------------------------------
                                    401 	.area RSEG    (ABS,DATA)
      000000                        402 	.org 0x0000
                           0000D0   403 _PSW	=	0x00d0
                           0000E0   404 _ACC	=	0x00e0
                           0000F0   405 _B	=	0x00f0
                           000081   406 _SP	=	0x0081
                           000082   407 _DPL	=	0x0082
                           000083   408 _DPH	=	0x0083
                           0000A1   409 _SAFE_MOD	=	0x00a1
                           0000B1   410 _GLOBAL_CFG	=	0x00b1
                           000087   411 _PCON	=	0x0087
                           0000B2   412 _PLL_CFG	=	0x00b2
                           0000B3   413 _CLOCK_CFG	=	0x00b3
                           0000EA   414 _SLEEP_CTRL	=	0x00ea
                           0000EB   415 _WAKE_CTRL	=	0x00eb
                           0000FE   416 _RESET_KEEP	=	0x00fe
                           0000FF   417 _WDOG_COUNT	=	0x00ff
                           0000A8   418 _IE	=	0x00a8
                           0000B8   419 _IP	=	0x00b8
                           0000E8   420 _IE_EX	=	0x00e8
                           0000E9   421 _IP_EX	=	0x00e9
                           0000CF   422 _GPIO_IE	=	0x00cf
                           008584   423 _ROM_ADDR	=	0x8584
                           000084   424 _ROM_ADDR_L	=	0x0084
                           000085   425 _ROM_ADDR_H	=	0x0085
                           008F8E   426 _ROM_DATA	=	0x8f8e
                           00008E   427 _ROM_DATA_L	=	0x008e
                           00008F   428 _ROM_DATA_H	=	0x008f
                           000086   429 _ROM_CTRL	=	0x0086
                           000080   430 _P0	=	0x0080
                           0000C4   431 _P0_DIR	=	0x00c4
                           0000C5   432 _P0_PU	=	0x00c5
                           000090   433 _P1	=	0x0090
                           0000B9   434 _P1_IE	=	0x00b9
                           0000BA   435 _P1_DIR	=	0x00ba
                           0000BB   436 _P1_PU	=	0x00bb
                           0000A0   437 _P2	=	0x00a0
                           0000BC   438 _P2_DIR	=	0x00bc
                           0000BD   439 _P2_PU	=	0x00bd
                           0000B0   440 _P3	=	0x00b0
                           0000BE   441 _P3_DIR	=	0x00be
                           0000BF   442 _P3_PU	=	0x00bf
                           0000C0   443 _P4_OUT	=	0x00c0
                           0000C1   444 _P4_IN	=	0x00c1
                           0000C2   445 _P4_DIR	=	0x00c2
                           0000C3   446 _P4_PU	=	0x00c3
                           0000C7   447 _P5_IN	=	0x00c7
                           0000C6   448 _PORT_CFG	=	0x00c6
                           0000CE   449 _PIN_FUNC	=	0x00ce
                           0000A2   450 _XBUS_AUX	=	0x00a2
                           0000FD   451 _XBUS_SPEED	=	0x00fd
                           000088   452 _TCON	=	0x0088
                           000089   453 _TMOD	=	0x0089
                           00008A   454 _TL0	=	0x008a
                           00008B   455 _TL1	=	0x008b
                           00008C   456 _TH0	=	0x008c
                           00008D   457 _TH1	=	0x008d
                           000098   458 _SCON	=	0x0098
                           000099   459 _SBUF	=	0x0099
                           0000C8   460 _T2CON	=	0x00c8
                           0000C9   461 _T2MOD	=	0x00c9
                           00CBCA   462 _RCAP2	=	0xcbca
                           0000CA   463 _RCAP2L	=	0x00ca
                           0000CB   464 _RCAP2H	=	0x00cb
                           00CDCC   465 _T2COUNT	=	0xcdcc
                           0000CC   466 _TL2	=	0x00cc
                           0000CD   467 _TH2	=	0x00cd
                           0000A3   468 _T3_SETUP	=	0x00a3
                           00A5A4   469 _T3_COUNT	=	0xa5a4
                           0000A4   470 _T3_COUNT_L	=	0x00a4
                           0000A5   471 _T3_COUNT_H	=	0x00a5
                           00A7A6   472 _T3_END	=	0xa7a6
                           0000A6   473 _T3_END_L	=	0x00a6
                           0000A7   474 _T3_END_H	=	0x00a7
                           0000A9   475 _T3_STAT	=	0x00a9
                           0000AA   476 _T3_CTRL	=	0x00aa
                           0000AB   477 _T3_DMA_CN	=	0x00ab
                           00ADAC   478 _T3_DMA	=	0xadac
                           0000AC   479 _T3_DMA_AL	=	0x00ac
                           0000AD   480 _T3_DMA_AH	=	0x00ad
                           00AFAE   481 _T3_FIFO	=	0xafae
                           0000AE   482 _T3_FIFO_L	=	0x00ae
                           0000AF   483 _T3_FIFO_H	=	0x00af
                           0000F8   484 _SPI0_STAT	=	0x00f8
                           0000F9   485 _SPI0_DATA	=	0x00f9
                           0000FA   486 _SPI0_CTRL	=	0x00fa
                           0000FB   487 _SPI0_CK_SE	=	0x00fb
                           0000FC   488 _SPI0_SETUP	=	0x00fc
                           00009A   489 _SER1_FIFO	=	0x009a
                           000091   490 _SER1_IER	=	0x0091
                           000092   491 _SER1_IIR	=	0x0092
                           000093   492 _SER1_LCR	=	0x0093
                           000094   493 _SER1_MCR	=	0x0094
                           000095   494 _SER1_LSR	=	0x0095
                           000096   495 _SER1_MSR	=	0x0096
                           000097   496 _SER1_ADDR	=	0x0097
                           00EDEC   497 _ADC_DMA	=	0xedec
                           0000EC   498 _ADC_DMA_AL	=	0x00ec
                           0000ED   499 _ADC_DMA_AH	=	0x00ed
                           0000EE   500 _ADC_DMA_CN	=	0x00ee
                           0000EF   501 _ADC_CK_SE	=	0x00ef
                           0000F1   502 _ADC_STAT	=	0x00f1
                           0000F2   503 _ADC_CTRL	=	0x00f2
                           0000F3   504 _ADC_CHANN	=	0x00f3
                           00F5F4   505 _ADC_FIFO	=	0xf5f4
                           0000F4   506 _ADC_FIFO_L	=	0x00f4
                           0000F5   507 _ADC_FIFO_H	=	0x00f5
                           0000F6   508 _ADC_SETUP	=	0x00f6
                           0000F7   509 _ADC_EX_SW	=	0x00f7
                           0000D1   510 _USB_RX_LEN	=	0x00d1
                           0000D2   511 _UEP1_CTRL	=	0x00d2
                           0000D3   512 _UEP1_T_LEN	=	0x00d3
                           0000D4   513 _UEP2_CTRL	=	0x00d4
                           0000D5   514 _UEP2_T_LEN	=	0x00d5
                           0000D6   515 _UEP3_CTRL	=	0x00d6
                           0000D7   516 _UEP3_T_LEN	=	0x00d7
                           0000D8   517 _USB_INT_FG	=	0x00d8
                           0000D9   518 _USB_INT_ST	=	0x00d9
                           0000DA   519 _USB_MIS_ST	=	0x00da
                           0000DC   520 _UEP0_CTRL	=	0x00dc
                           0000DD   521 _UEP0_T_LEN	=	0x00dd
                           0000DE   522 _UEP4_CTRL	=	0x00de
                           0000DF   523 _UEP4_T_LEN	=	0x00df
                           0000E1   524 _USB_INT_EN	=	0x00e1
                           0000E2   525 _USB_CTRL	=	0x00e2
                           0000E3   526 _USB_DEV_AD	=	0x00e3
                           0000E4   527 _UDEV_CTRL	=	0x00e4
                           00E7E6   528 _USB_DMA	=	0xe7e6
                           0000E6   529 _USB_DMA_AL	=	0x00e6
                           0000E7   530 _USB_DMA_AH	=	0x00e7
                                    531 ;--------------------------------------------------------
                                    532 ; special function bits
                                    533 ;--------------------------------------------------------
                                    534 	.area RSEG    (ABS,DATA)
      000000                        535 	.org 0x0000
                           0000D7   536 _CY	=	0x00d7
                           0000D6   537 _AC	=	0x00d6
                           0000D5   538 _F0	=	0x00d5
                           0000D4   539 _RS1	=	0x00d4
                           0000D3   540 _RS0	=	0x00d3
                           0000D2   541 _OV	=	0x00d2
                           0000D1   542 _F1	=	0x00d1
                           0000D0   543 _P	=	0x00d0
                           0000AF   544 _EA	=	0x00af
                           0000AE   545 _E_DIS	=	0x00ae
                           0000AD   546 _ET2	=	0x00ad
                           0000AC   547 _ES	=	0x00ac
                           0000AB   548 _ET1	=	0x00ab
                           0000AA   549 _EX1	=	0x00aa
                           0000A9   550 _ET0	=	0x00a9
                           0000A8   551 _EX0	=	0x00a8
                           0000BF   552 _PH_FLAG	=	0x00bf
                           0000BE   553 _PL_FLAG	=	0x00be
                           0000BD   554 _PT2	=	0x00bd
                           0000BC   555 _PS	=	0x00bc
                           0000BB   556 _PT1	=	0x00bb
                           0000BA   557 _PX1	=	0x00ba
                           0000B9   558 _PT0	=	0x00b9
                           0000B8   559 _PX0	=	0x00b8
                           0000EF   560 _IE_WDOG	=	0x00ef
                           0000EE   561 _IE_GPIO	=	0x00ee
                           0000EC   562 _IE_UART1	=	0x00ec
                           0000EB   563 _IE_ADC	=	0x00eb
                           0000EA   564 _IE_USB	=	0x00ea
                           0000E9   565 _IE_TMR3	=	0x00e9
                           0000E8   566 _IE_SPI0	=	0x00e8
                           000087   567 _P07	=	0x0087
                           000086   568 _P06	=	0x0086
                           000085   569 _P05	=	0x0085
                           000084   570 _P04	=	0x0084
                           000083   571 _P03	=	0x0083
                           000082   572 _P02	=	0x0082
                           000081   573 _P01	=	0x0081
                           000080   574 _P00	=	0x0080
                           000087   575 _UDCD	=	0x0087
                           000086   576 _URI	=	0x0086
                           000085   577 _UDSR	=	0x0085
                           000084   578 _UCTS	=	0x0084
                           000083   579 _TXD_	=	0x0083
                           000082   580 _RXD_	=	0x0082
                           000081   581 _URTS	=	0x0081
                           000080   582 _UDTR	=	0x0080
                           000097   583 _P17	=	0x0097
                           000096   584 _P16	=	0x0096
                           000095   585 _P15	=	0x0095
                           000094   586 _P14	=	0x0094
                           000093   587 _P13	=	0x0093
                           000092   588 _P12	=	0x0092
                           000091   589 _P11	=	0x0091
                           000090   590 _P10	=	0x0090
                           000097   591 _AIN7	=	0x0097
                           000096   592 _AIN6	=	0x0096
                           000095   593 _AIN5	=	0x0095
                           000094   594 _AIN4	=	0x0094
                           000093   595 _AIN3	=	0x0093
                           000092   596 _AIN2	=	0x0092
                           000091   597 _AIN1	=	0x0091
                           000090   598 _AIN0	=	0x0090
                           000097   599 _SCK	=	0x0097
                           000096   600 _MISO	=	0x0096
                           000095   601 _MOSI	=	0x0095
                           000094   602 _SCS	=	0x0094
                           000092   603 _PWM3	=	0x0092
                           000092   604 _CAP3	=	0x0092
                           000091   605 _T2EX	=	0x0091
                           000091   606 _CAP2	=	0x0091
                           000090   607 _T2	=	0x0090
                           000090   608 _CAP1	=	0x0090
                           0000A7   609 _P27	=	0x00a7
                           0000A6   610 _P26	=	0x00a6
                           0000A5   611 _P25	=	0x00a5
                           0000A4   612 _P24	=	0x00a4
                           0000A3   613 _P23	=	0x00a3
                           0000A2   614 _P22	=	0x00a2
                           0000A1   615 _P21	=	0x00a1
                           0000A0   616 _P20	=	0x00a0
                           0000A7   617 _TXD1	=	0x00a7
                           0000A7   618 _DA7	=	0x00a7
                           0000A6   619 _RXD1	=	0x00a6
                           0000A5   620 _TNOW	=	0x00a5
                           0000A5   621 _T2EX_	=	0x00a5
                           0000A5   622 _CAP2_	=	0x00a5
                           0000B7   623 _P37	=	0x00b7
                           0000B6   624 _P36	=	0x00b6
                           0000B5   625 _P35	=	0x00b5
                           0000B4   626 _P34	=	0x00b4
                           0000B3   627 _P33	=	0x00b3
                           0000B2   628 _P32	=	0x00b2
                           0000B1   629 _P31	=	0x00b1
                           0000B0   630 _P30	=	0x00b0
                           0000B7   631 _RD	=	0x00b7
                           0000B6   632 _WR	=	0x00b6
                           0000B5   633 _DA6	=	0x00b5
                           0000B5   634 _T1	=	0x00b5
                           0000B4   635 _LEDC	=	0x00b4
                           0000B4   636 _XCS0	=	0x00b4
                           0000B4   637 _T0	=	0x00b4
                           0000B3   638 _LED1	=	0x00b3
                           0000B3   639 _INT1	=	0x00b3
                           0000B2   640 _LED0	=	0x00b2
                           0000B2   641 _INT0	=	0x00b2
                           0000B1   642 _TXD	=	0x00b1
                           0000B0   643 _RXD	=	0x00b0
                           0000C7   644 _P47	=	0x00c7
                           0000C6   645 _P46	=	0x00c6
                           0000C5   646 _P45	=	0x00c5
                           0000C4   647 _P44	=	0x00c4
                           0000C3   648 _P43	=	0x00c3
                           0000C2   649 _P42	=	0x00c2
                           0000C1   650 _P41	=	0x00c1
                           0000C0   651 _P40	=	0x00c0
                           0000C7   652 _SCK_	=	0x00c7
                           0000C6   653 _SCS_	=	0x00c6
                           0000C4   654 _LED3	=	0x00c4
                           0000C4   655 _TNOW_	=	0x00c4
                           0000C4   656 _TXD1_	=	0x00c4
                           0000C2   657 _PWM3_	=	0x00c2
                           0000C2   658 _CAP3_	=	0x00c2
                           0000C0   659 _LED2	=	0x00c0
                           0000C0   660 _RXD1_	=	0x00c0
                           00008F   661 _TF1	=	0x008f
                           00008E   662 _TR1	=	0x008e
                           00008D   663 _TF0	=	0x008d
                           00008C   664 _TR0	=	0x008c
                           00008B   665 _IE1	=	0x008b
                           00008A   666 _IT1	=	0x008a
                           000089   667 _IE0	=	0x0089
                           000088   668 _IT0	=	0x0088
                           00009F   669 _SM0	=	0x009f
                           00009E   670 _SM1	=	0x009e
                           00009D   671 _SM2	=	0x009d
                           00009C   672 _REN	=	0x009c
                           00009B   673 _TB8	=	0x009b
                           00009A   674 _RB8	=	0x009a
                           000099   675 _TI	=	0x0099
                           000098   676 _RI	=	0x0098
                           0000CF   677 _TF2	=	0x00cf
                           0000CF   678 _CAP1F	=	0x00cf
                           0000CE   679 _EXF2	=	0x00ce
                           0000CD   680 _RCLK	=	0x00cd
                           0000CC   681 _TCLK	=	0x00cc
                           0000CB   682 _EXEN2	=	0x00cb
                           0000CA   683 _TR2	=	0x00ca
                           0000C9   684 _C_T2	=	0x00c9
                           0000C8   685 _CP_RL2	=	0x00c8
                           0000FF   686 _S0_FST_ACT	=	0x00ff
                           0000FE   687 _S0_IF_OV	=	0x00fe
                           0000FD   688 _S0_IF_FIRST	=	0x00fd
                           0000FC   689 _S0_IF_BYTE	=	0x00fc
                           0000FB   690 _S0_FREE	=	0x00fb
                           0000FA   691 _S0_T_FIFO	=	0x00fa
                           0000F9   692 _S0_R_FIFO1	=	0x00f9
                           0000F8   693 _S0_R_FIFO0	=	0x00f8
                           0000DF   694 _U_IS_NAK	=	0x00df
                           0000DE   695 _U_TOG_OK	=	0x00de
                           0000DD   696 _U_SIE_FREE	=	0x00dd
                           0000DC   697 _UIF_FIFO_OV	=	0x00dc
                           0000DA   698 _UIF_SUSPEND	=	0x00da
                           0000D9   699 _UIF_TRANSFER	=	0x00d9
                           0000D8   700 _UIF_BUS_RST	=	0x00d8
                                    701 ;--------------------------------------------------------
                                    702 ; overlayable register banks
                                    703 ;--------------------------------------------------------
                                    704 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        705 	.ds 8
                                    706 	.area REG_BANK_1	(REL,OVR,DATA)
      000008                        707 	.ds 8
                                    708 ;--------------------------------------------------------
                                    709 ; internal ram data
                                    710 ;--------------------------------------------------------
                                    711 	.area DSEG    (DATA)
                                    712 ;--------------------------------------------------------
                                    713 ; overlayable items in internal ram 
                                    714 ;--------------------------------------------------------
                                    715 	.area	OSEG    (OVR,DATA)
      00002D                        716 _mmov_sloc0_1_0:
      00002D                        717 	.ds 3
      000030                        718 _mmov_sloc1_1_0:
      000030                        719 	.ds 2
      000032                        720 _mmov_sloc2_1_0:
      000032                        721 	.ds 2
      000034                        722 _mmov_sloc3_1_0:
      000034                        723 	.ds 3
      000037                        724 _mmov_sloc4_1_0:
      000037                        725 	.ds 3
                                    726 ;--------------------------------------------------------
                                    727 ; indirectly addressable internal ram data
                                    728 ;--------------------------------------------------------
                                    729 	.area ISEG    (DATA)
                                    730 ;--------------------------------------------------------
                                    731 ; absolute internal ram data
                                    732 ;--------------------------------------------------------
                                    733 	.area IABS    (ABS,DATA)
                                    734 	.area IABS    (ABS,DATA)
                                    735 ;--------------------------------------------------------
                                    736 ; bit data
                                    737 ;--------------------------------------------------------
                                    738 	.area BSEG    (BIT)
      000000                        739 _busy::
      000000                        740 	.ds 1
      000001                        741 _block_recv::
      000001                        742 	.ds 1
                                    743 ;--------------------------------------------------------
                                    744 ; paged external ram data
                                    745 ;--------------------------------------------------------
                                    746 	.area PSEG    (PAG,XDATA)
                           000046   747 _pUEP4_1_MOD	=	0x0046
                           000047   748 _pUEP2_3_MOD	=	0x0047
                           000048   749 _pUEP0_DMA_H	=	0x0048
                           000049   750 _pUEP0_DMA_L	=	0x0049
                           000048   751 _pUEP0_DMA	=	0x0048
                           00004A   752 _pUEP1_DMA_H	=	0x004a
                           00004B   753 _pUEP1_DMA_L	=	0x004b
                           00004A   754 _pUEP1_DMA	=	0x004a
                           00004C   755 _pUEP2_DMA_H	=	0x004c
                           00004D   756 _pUEP2_DMA_L	=	0x004d
                           00004C   757 _pUEP2_DMA	=	0x004c
                           00004E   758 _pUEP3_DMA_H	=	0x004e
                           00004F   759 _pUEP3_DMA_L	=	0x004f
                           00004E   760 _pUEP3_DMA	=	0x004e
                           000080   761 _pLED_STAT	=	0x0080
                           000081   762 _pLED_CTRL	=	0x0081
                           000082   763 _pLED_DATA	=	0x0082
                           000083   764 _pLED_CK_SE	=	0x0083
                           000084   765 _pLED_DMA_AH	=	0x0084
                           000085   766 _pLED_DMA_AL	=	0x0085
                           000084   767 _pLED_DMA	=	0x0084
                           000086   768 _pLED_DMA_CN	=	0x0086
                           000088   769 _pLED_DMA_XH	=	0x0088
                           000089   770 _pLED_DMA_XL	=	0x0089
                           000088   771 _pLED_DMA_X	=	0x0088
                                    772 ;--------------------------------------------------------
                                    773 ; external ram data
                                    774 ;--------------------------------------------------------
                                    775 	.area XSEG    (XDATA)
                           002446   776 _UEP4_1_MOD	=	0x2446
                           002447   777 _UEP2_3_MOD	=	0x2447
                           002448   778 _UEP0_DMA_H	=	0x2448
                           002449   779 _UEP0_DMA_L	=	0x2449
                           002448   780 _UEP0_DMA	=	0x2448
                           00244A   781 _UEP1_DMA_H	=	0x244a
                           00244B   782 _UEP1_DMA_L	=	0x244b
                           00244A   783 _UEP1_DMA	=	0x244a
                           00244C   784 _UEP2_DMA_H	=	0x244c
                           00244D   785 _UEP2_DMA_L	=	0x244d
                           00244C   786 _UEP2_DMA	=	0x244c
                           00244E   787 _UEP3_DMA_H	=	0x244e
                           00244F   788 _UEP3_DMA_L	=	0x244f
                           00244E   789 _UEP3_DMA	=	0x244e
                           002880   790 _LED_STAT	=	0x2880
                           002881   791 _LED_CTRL	=	0x2881
                           002882   792 _LED_DATA	=	0x2882
                           002883   793 _LED_CK_SE	=	0x2883
                           002884   794 _LED_DMA_AH	=	0x2884
                           002885   795 _LED_DMA_AL	=	0x2885
                           002884   796 _LED_DMA	=	0x2884
                           002886   797 _LED_DMA_CN	=	0x2886
                           002888   798 _LED_DMA_XH	=	0x2888
                           002889   799 _LED_DMA_XL	=	0x2889
                           002888   800 _LED_DMA_X	=	0x2888
      00005B                        801 _mc::
      00005B                        802 	.ds 2
      00005D                        803 _mset_PARM_2:
      00005D                        804 	.ds 1
      00005E                        805 _mset_PARM_3:
      00005E                        806 	.ds 2
      000060                        807 _mset_ptr_65536_17:
      000060                        808 	.ds 3
      000063                        809 _mmov_PARM_2:
      000063                        810 	.ds 3
      000066                        811 _mmov_PARM_3:
      000066                        812 	.ds 2
      000068                        813 _mmov_dst_65536_20:
      000068                        814 	.ds 3
      00006B                        815 _delay_t_65536_27:
      00006B                        816 	.ds 2
      00006D                        817 _delay_us_t_65536_30:
      00006D                        818 	.ds 2
      00006F                        819 _x::
      00006F                        820 	.ds 4
      000073                        821 _x2::
      000073                        822 	.ds 1
      000074                        823 _sbuf::
      000074                        824 	.ds 1
      000075                        825 _uart0Config_baud_65536_37:
      000075                        826 	.ds 4
      000079                        827 _uart0Send_data_65536_44:
      000079                        828 	.ds 1
      00007A                        829 _uart0Write_s_65536_46:
      00007A                        830 	.ds 3
      00007D                        831 _uart0Gets_PARM_2:
      00007D                        832 	.ds 1
      00007E                        833 _uart0Gets_dat_65536_51:
      00007E                        834 	.ds 3
      000081                        835 _uart0BlockRecv_PARM_2:
      000081                        836 	.ds 2
      000083                        837 _uart0BlockRecv_ptr_65536_54:
      000083                        838 	.ds 3
      000086                        839 _uart1Config_baud_65536_59:
      000086                        840 	.ds 4
      00008A                        841 _uart1Send_data_65536_61:
      00008A                        842 	.ds 1
      00008B                        843 _uart1Write_s_65536_63:
      00008B                        844 	.ds 3
      00008E                        845 _u1t::
      00008E                        846 	.ds 4
      000092                        847 _u1c::
      000092                        848 	.ds 1
      000093                        849 _uart1Gets_PARM_2:
      000093                        850 	.ds 1
      000094                        851 _uart1Gets_dat_65536_69:
      000094                        852 	.ds 3
      000097                        853 _pwm3Init_freq_65536_73:
      000097                        854 	.ds 4
      00009B                        855 _pwm3Duty_duty_65536_75:
      00009B                        856 	.ds 1
      00009C                        857 _adcGet_channel_65536_78:
      00009C                        858 	.ds 1
                                    859 ;--------------------------------------------------------
                                    860 ; absolute external ram data
                                    861 ;--------------------------------------------------------
                                    862 	.area XABS    (ABS,XDATA)
                                    863 ;--------------------------------------------------------
                                    864 ; external initialized ram data
                                    865 ;--------------------------------------------------------
                                    866 	.area XISEG   (XDATA)
      00058C                        867 _sysTickCount::
      00058C                        868 	.ds 4
      000590                        869 _recBuf0:
      000590                        870 	.ds 32
      0005B0                        871 _recPtr0::
      0005B0                        872 	.ds 1
      0005B1                        873 _block_recv_ptr::
      0005B1                        874 	.ds 3
      0005B4                        875 _block_recv_pos::
      0005B4                        876 	.ds 2
      0005B6                        877 _block_recv_siz::
      0005B6                        878 	.ds 2
                                    879 	.area HOME    (CODE)
                                    880 	.area GSINIT0 (CODE)
                                    881 	.area GSINIT1 (CODE)
                                    882 	.area GSINIT2 (CODE)
                                    883 	.area GSINIT3 (CODE)
                                    884 	.area GSINIT4 (CODE)
                                    885 	.area GSINIT5 (CODE)
                                    886 	.area GSINIT  (CODE)
                                    887 	.area GSFINAL (CODE)
                                    888 	.area CSEG    (CODE)
                                    889 ;--------------------------------------------------------
                                    890 ; global & static initialisations
                                    891 ;--------------------------------------------------------
                                    892 	.area HOME    (CODE)
                                    893 	.area GSINIT  (CODE)
                                    894 	.area GSFINAL (CODE)
                                    895 	.area GSINIT  (CODE)
                                    896 ;	E:\Works\NSHET\sys.c:173: volatile BOOL busy = 0;
                                    897 ;	assignBit
      00008D C2 00            [12]  898 	clr	_busy
                                    899 ;	E:\Works\NSHET\sys.c:177: BOOL block_recv = 0;
                                    900 ;	assignBit
      00008F C2 01            [12]  901 	clr	_block_recv
                                    902 ;--------------------------------------------------------
                                    903 ; Home
                                    904 ;--------------------------------------------------------
                                    905 	.area HOME    (CODE)
                                    906 	.area HOME    (CODE)
                                    907 ;--------------------------------------------------------
                                    908 ; code
                                    909 ;--------------------------------------------------------
                                    910 	.area CSEG    (CODE)
                                    911 ;------------------------------------------------------------
                                    912 ;Allocation info for local variables in function 'mset'
                                    913 ;------------------------------------------------------------
                                    914 ;val                       Allocated with name '_mset_PARM_2'
                                    915 ;siz                       Allocated with name '_mset_PARM_3'
                                    916 ;ptr                       Allocated with name '_mset_ptr_65536_17'
                                    917 ;------------------------------------------------------------
                                    918 ;	E:\Works\NSHET\sys.c:5: void mset(uint8_t* ptr, uint8_t val, size_t siz) {
                                    919 ;	-----------------------------------------
                                    920 ;	 function mset
                                    921 ;	-----------------------------------------
      00125B                        922 _mset:
                           000007   923 	ar7 = 0x07
                           000006   924 	ar6 = 0x06
                           000005   925 	ar5 = 0x05
                           000004   926 	ar4 = 0x04
                           000003   927 	ar3 = 0x03
                           000002   928 	ar2 = 0x02
                           000001   929 	ar1 = 0x01
                           000000   930 	ar0 = 0x00
      00125B AF F0            [24]  931 	mov	r7,b
      00125D AE 83            [24]  932 	mov	r6,dph
      00125F E5 82            [12]  933 	mov	a,dpl
      001261 90 00 60         [24]  934 	mov	dptr,#_mset_ptr_65536_17
      001264 F0               [24]  935 	movx	@dptr,a
      001265 EE               [12]  936 	mov	a,r6
      001266 A3               [24]  937 	inc	dptr
      001267 F0               [24]  938 	movx	@dptr,a
      001268 EF               [12]  939 	mov	a,r7
      001269 A3               [24]  940 	inc	dptr
      00126A F0               [24]  941 	movx	@dptr,a
                                    942 ;	E:\Works\NSHET\sys.c:6: for (mc = 0; mc < siz; mc++)
      00126B 90 00 5B         [24]  943 	mov	dptr,#_mc
      00126E E4               [12]  944 	clr	a
      00126F F0               [24]  945 	movx	@dptr,a
      001270 A3               [24]  946 	inc	dptr
      001271 F0               [24]  947 	movx	@dptr,a
      001272 90 00 60         [24]  948 	mov	dptr,#_mset_ptr_65536_17
      001275 E0               [24]  949 	movx	a,@dptr
      001276 FD               [12]  950 	mov	r5,a
      001277 A3               [24]  951 	inc	dptr
      001278 E0               [24]  952 	movx	a,@dptr
      001279 FE               [12]  953 	mov	r6,a
      00127A A3               [24]  954 	inc	dptr
      00127B E0               [24]  955 	movx	a,@dptr
      00127C FF               [12]  956 	mov	r7,a
      00127D 90 00 5D         [24]  957 	mov	dptr,#_mset_PARM_2
      001280 E0               [24]  958 	movx	a,@dptr
      001281 FC               [12]  959 	mov	r4,a
      001282 90 00 5E         [24]  960 	mov	dptr,#_mset_PARM_3
      001285 E0               [24]  961 	movx	a,@dptr
      001286 FA               [12]  962 	mov	r2,a
      001287 A3               [24]  963 	inc	dptr
      001288 E0               [24]  964 	movx	a,@dptr
      001289 FB               [12]  965 	mov	r3,a
      00128A                        966 00103$:
      00128A 90 00 5B         [24]  967 	mov	dptr,#_mc
      00128D E0               [24]  968 	movx	a,@dptr
      00128E F8               [12]  969 	mov	r0,a
      00128F A3               [24]  970 	inc	dptr
      001290 E0               [24]  971 	movx	a,@dptr
      001291 F9               [12]  972 	mov	r1,a
      001292 C3               [12]  973 	clr	c
      001293 E8               [12]  974 	mov	a,r0
      001294 9A               [12]  975 	subb	a,r2
      001295 E9               [12]  976 	mov	a,r1
      001296 9B               [12]  977 	subb	a,r3
      001297 50 28            [24]  978 	jnc	00105$
                                    979 ;	E:\Works\NSHET\sys.c:7: ptr[mc] = val;
      001299 C0 02            [24]  980 	push	ar2
      00129B C0 03            [24]  981 	push	ar3
      00129D E8               [12]  982 	mov	a,r0
      00129E 2D               [12]  983 	add	a,r5
      00129F F8               [12]  984 	mov	r0,a
      0012A0 E9               [12]  985 	mov	a,r1
      0012A1 3E               [12]  986 	addc	a,r6
      0012A2 F9               [12]  987 	mov	r1,a
      0012A3 8F 03            [24]  988 	mov	ar3,r7
      0012A5 88 82            [24]  989 	mov	dpl,r0
      0012A7 89 83            [24]  990 	mov	dph,r1
      0012A9 8B F0            [24]  991 	mov	b,r3
      0012AB EC               [12]  992 	mov	a,r4
      0012AC 12 20 6D         [24]  993 	lcall	__gptrput
                                    994 ;	E:\Works\NSHET\sys.c:6: for (mc = 0; mc < siz; mc++)
      0012AF 90 00 5B         [24]  995 	mov	dptr,#_mc
      0012B2 E0               [24]  996 	movx	a,@dptr
      0012B3 24 01            [12]  997 	add	a,#0x01
      0012B5 F0               [24]  998 	movx	@dptr,a
      0012B6 A3               [24]  999 	inc	dptr
      0012B7 E0               [24] 1000 	movx	a,@dptr
      0012B8 34 00            [12] 1001 	addc	a,#0x00
      0012BA F0               [24] 1002 	movx	@dptr,a
      0012BB D0 03            [24] 1003 	pop	ar3
      0012BD D0 02            [24] 1004 	pop	ar2
      0012BF 80 C9            [24] 1005 	sjmp	00103$
      0012C1                       1006 00105$:
                                   1007 ;	E:\Works\NSHET\sys.c:8: }
      0012C1 22               [24] 1008 	ret
                                   1009 ;------------------------------------------------------------
                                   1010 ;Allocation info for local variables in function 'mmov'
                                   1011 ;------------------------------------------------------------
                                   1012 ;src                       Allocated with name '_mmov_PARM_2'
                                   1013 ;siz                       Allocated with name '_mmov_PARM_3'
                                   1014 ;dst                       Allocated with name '_mmov_dst_65536_20'
                                   1015 ;sloc0                     Allocated with name '_mmov_sloc0_1_0'
                                   1016 ;sloc1                     Allocated with name '_mmov_sloc1_1_0'
                                   1017 ;sloc2                     Allocated with name '_mmov_sloc2_1_0'
                                   1018 ;sloc3                     Allocated with name '_mmov_sloc3_1_0'
                                   1019 ;sloc4                     Allocated with name '_mmov_sloc4_1_0'
                                   1020 ;------------------------------------------------------------
                                   1021 ;	E:\Works\NSHET\sys.c:10: void mmov(uint8_t* dst, uint8_t* src, size_t siz) {
                                   1022 ;	-----------------------------------------
                                   1023 ;	 function mmov
                                   1024 ;	-----------------------------------------
      0012C2                       1025 _mmov:
      0012C2 AF F0            [24] 1026 	mov	r7,b
      0012C4 AE 83            [24] 1027 	mov	r6,dph
      0012C6 E5 82            [12] 1028 	mov	a,dpl
      0012C8 90 00 68         [24] 1029 	mov	dptr,#_mmov_dst_65536_20
      0012CB F0               [24] 1030 	movx	@dptr,a
      0012CC EE               [12] 1031 	mov	a,r6
      0012CD A3               [24] 1032 	inc	dptr
      0012CE F0               [24] 1033 	movx	@dptr,a
      0012CF EF               [12] 1034 	mov	a,r7
      0012D0 A3               [24] 1035 	inc	dptr
      0012D1 F0               [24] 1036 	movx	@dptr,a
                                   1037 ;	E:\Works\NSHET\sys.c:11: if (dst < src) {
      0012D2 90 00 68         [24] 1038 	mov	dptr,#_mmov_dst_65536_20
      0012D5 E0               [24] 1039 	movx	a,@dptr
      0012D6 FD               [12] 1040 	mov	r5,a
      0012D7 A3               [24] 1041 	inc	dptr
      0012D8 E0               [24] 1042 	movx	a,@dptr
      0012D9 FE               [12] 1043 	mov	r6,a
      0012DA A3               [24] 1044 	inc	dptr
      0012DB E0               [24] 1045 	movx	a,@dptr
      0012DC FF               [12] 1046 	mov	r7,a
      0012DD 90 00 63         [24] 1047 	mov	dptr,#_mmov_PARM_2
      0012E0 E0               [24] 1048 	movx	a,@dptr
      0012E1 F5 34            [12] 1049 	mov	_mmov_sloc3_1_0,a
      0012E3 A3               [24] 1050 	inc	dptr
      0012E4 E0               [24] 1051 	movx	a,@dptr
      0012E5 F5 35            [12] 1052 	mov	(_mmov_sloc3_1_0 + 1),a
      0012E7 A3               [24] 1053 	inc	dptr
      0012E8 E0               [24] 1054 	movx	a,@dptr
      0012E9 F5 36            [12] 1055 	mov	(_mmov_sloc3_1_0 + 2),a
      0012EB C0 34            [24] 1056 	push	_mmov_sloc3_1_0
      0012ED C0 35            [24] 1057 	push	(_mmov_sloc3_1_0 + 1)
      0012EF C0 36            [24] 1058 	push	(_mmov_sloc3_1_0 + 2)
      0012F1 8D 82            [24] 1059 	mov	dpl,r5
      0012F3 8E 83            [24] 1060 	mov	dph,r6
      0012F5 8F F0            [24] 1061 	mov	b,r7
      0012F7 12 00 06         [24] 1062 	lcall	___gptr_cmp
      0012FA 15 81            [12] 1063 	dec	sp
      0012FC 15 81            [12] 1064 	dec	sp
      0012FE 15 81            [12] 1065 	dec	sp
      001300 40 03            [24] 1066 	jc	00136$
      001302 02 13 7A         [24] 1067 	ljmp	00112$
      001305                       1068 00136$:
                                   1069 ;	E:\Works\NSHET\sys.c:12: mc = 0;
      001305 90 00 5B         [24] 1070 	mov	dptr,#_mc
      001308 E4               [12] 1071 	clr	a
      001309 F0               [24] 1072 	movx	@dptr,a
      00130A A3               [24] 1073 	inc	dptr
      00130B F0               [24] 1074 	movx	@dptr,a
                                   1075 ;	E:\Works\NSHET\sys.c:13: while (1) {
      00130C 8D 2D            [24] 1076 	mov	_mmov_sloc0_1_0,r5
      00130E 8E 2E            [24] 1077 	mov	(_mmov_sloc0_1_0 + 1),r6
      001310 8F 2F            [24] 1078 	mov	(_mmov_sloc0_1_0 + 2),r7
      001312 90 00 66         [24] 1079 	mov	dptr,#_mmov_PARM_3
      001315 E0               [24] 1080 	movx	a,@dptr
      001316 F5 30            [12] 1081 	mov	_mmov_sloc1_1_0,a
      001318 A3               [24] 1082 	inc	dptr
      001319 E0               [24] 1083 	movx	a,@dptr
      00131A F5 31            [12] 1084 	mov	(_mmov_sloc1_1_0 + 1),a
      00131C                       1085 00104$:
                                   1086 ;	E:\Works\NSHET\sys.c:14: dst[mc] = src[mc];
      00131C 90 00 5B         [24] 1087 	mov	dptr,#_mc
      00131F E0               [24] 1088 	movx	a,@dptr
      001320 F5 32            [12] 1089 	mov	_mmov_sloc2_1_0,a
      001322 A3               [24] 1090 	inc	dptr
      001323 E0               [24] 1091 	movx	a,@dptr
      001324 F5 33            [12] 1092 	mov	(_mmov_sloc2_1_0 + 1),a
      001326 E5 32            [12] 1093 	mov	a,_mmov_sloc2_1_0
      001328 25 2D            [12] 1094 	add	a,_mmov_sloc0_1_0
      00132A F5 37            [12] 1095 	mov	_mmov_sloc4_1_0,a
      00132C E5 33            [12] 1096 	mov	a,(_mmov_sloc2_1_0 + 1)
      00132E 35 2E            [12] 1097 	addc	a,(_mmov_sloc0_1_0 + 1)
      001330 F5 38            [12] 1098 	mov	(_mmov_sloc4_1_0 + 1),a
      001332 85 2F 39         [24] 1099 	mov	(_mmov_sloc4_1_0 + 2),(_mmov_sloc0_1_0 + 2)
      001335 E5 32            [12] 1100 	mov	a,_mmov_sloc2_1_0
      001337 25 34            [12] 1101 	add	a,_mmov_sloc3_1_0
      001339 FA               [12] 1102 	mov	r2,a
      00133A E5 33            [12] 1103 	mov	a,(_mmov_sloc2_1_0 + 1)
      00133C 35 35            [12] 1104 	addc	a,(_mmov_sloc3_1_0 + 1)
      00133E FB               [12] 1105 	mov	r3,a
      00133F AC 36            [24] 1106 	mov	r4,(_mmov_sloc3_1_0 + 2)
      001341 8A 82            [24] 1107 	mov	dpl,r2
      001343 8B 83            [24] 1108 	mov	dph,r3
      001345 8C F0            [24] 1109 	mov	b,r4
      001347 12 32 FE         [24] 1110 	lcall	__gptrget
      00134A 85 37 82         [24] 1111 	mov	dpl,_mmov_sloc4_1_0
      00134D 85 38 83         [24] 1112 	mov	dph,(_mmov_sloc4_1_0 + 1)
      001350 85 39 F0         [24] 1113 	mov	b,(_mmov_sloc4_1_0 + 2)
      001353 12 20 6D         [24] 1114 	lcall	__gptrput
                                   1115 ;	E:\Works\NSHET\sys.c:15: mc += 1;
      001356 90 00 5B         [24] 1116 	mov	dptr,#_mc
      001359 E0               [24] 1117 	movx	a,@dptr
      00135A FB               [12] 1118 	mov	r3,a
      00135B A3               [24] 1119 	inc	dptr
      00135C E0               [24] 1120 	movx	a,@dptr
      00135D FC               [12] 1121 	mov	r4,a
      00135E 90 00 5B         [24] 1122 	mov	dptr,#_mc
      001361 74 01            [12] 1123 	mov	a,#0x01
      001363 2B               [12] 1124 	add	a,r3
      001364 F0               [24] 1125 	movx	@dptr,a
      001365 E4               [12] 1126 	clr	a
      001366 3C               [12] 1127 	addc	a,r4
      001367 A3               [24] 1128 	inc	dptr
      001368 F0               [24] 1129 	movx	@dptr,a
                                   1130 ;	E:\Works\NSHET\sys.c:16: if (mc == siz)
      001369 90 00 5B         [24] 1131 	mov	dptr,#_mc
      00136C E0               [24] 1132 	movx	a,@dptr
      00136D FB               [12] 1133 	mov	r3,a
      00136E A3               [24] 1134 	inc	dptr
      00136F E0               [24] 1135 	movx	a,@dptr
      001370 FC               [12] 1136 	mov	r4,a
      001371 EB               [12] 1137 	mov	a,r3
      001372 B5 30 A7         [24] 1138 	cjne	a,_mmov_sloc1_1_0,00104$
      001375 EC               [12] 1139 	mov	a,r4
      001376 B5 31 A3         [24] 1140 	cjne	a,(_mmov_sloc1_1_0 + 1),00104$
                                   1141 ;	E:\Works\NSHET\sys.c:17: break;
      001379 22               [24] 1142 	ret
      00137A                       1143 00112$:
                                   1144 ;	E:\Works\NSHET\sys.c:20: mc = siz - 1;
      00137A 90 00 66         [24] 1145 	mov	dptr,#_mmov_PARM_3
      00137D E0               [24] 1146 	movx	a,@dptr
      00137E FB               [12] 1147 	mov	r3,a
      00137F A3               [24] 1148 	inc	dptr
      001380 E0               [24] 1149 	movx	a,@dptr
      001381 FC               [12] 1150 	mov	r4,a
      001382 1B               [12] 1151 	dec	r3
      001383 BB FF 01         [24] 1152 	cjne	r3,#0xff,00139$
      001386 1C               [12] 1153 	dec	r4
      001387                       1154 00139$:
      001387 90 00 5B         [24] 1155 	mov	dptr,#_mc
      00138A EB               [12] 1156 	mov	a,r3
      00138B F0               [24] 1157 	movx	@dptr,a
      00138C EC               [12] 1158 	mov	a,r4
      00138D A3               [24] 1159 	inc	dptr
      00138E F0               [24] 1160 	movx	@dptr,a
                                   1161 ;	E:\Works\NSHET\sys.c:21: while (1) {
      00138F                       1162 00109$:
                                   1163 ;	E:\Works\NSHET\sys.c:22: dst[mc] = src[mc];
      00138F 90 00 5B         [24] 1164 	mov	dptr,#_mc
      001392 E0               [24] 1165 	movx	a,@dptr
      001393 FB               [12] 1166 	mov	r3,a
      001394 A3               [24] 1167 	inc	dptr
      001395 E0               [24] 1168 	movx	a,@dptr
      001396 FC               [12] 1169 	mov	r4,a
      001397 EB               [12] 1170 	mov	a,r3
      001398 2D               [12] 1171 	add	a,r5
      001399 F8               [12] 1172 	mov	r0,a
      00139A EC               [12] 1173 	mov	a,r4
      00139B 3E               [12] 1174 	addc	a,r6
      00139C F9               [12] 1175 	mov	r1,a
      00139D 8F 02            [24] 1176 	mov	ar2,r7
      00139F C0 05            [24] 1177 	push	ar5
      0013A1 C0 06            [24] 1178 	push	ar6
      0013A3 C0 07            [24] 1179 	push	ar7
      0013A5 EB               [12] 1180 	mov	a,r3
      0013A6 25 34            [12] 1181 	add	a,_mmov_sloc3_1_0
      0013A8 FB               [12] 1182 	mov	r3,a
      0013A9 EC               [12] 1183 	mov	a,r4
      0013AA 35 35            [12] 1184 	addc	a,(_mmov_sloc3_1_0 + 1)
      0013AC FC               [12] 1185 	mov	r4,a
      0013AD AF 36            [24] 1186 	mov	r7,(_mmov_sloc3_1_0 + 2)
      0013AF 8B 82            [24] 1187 	mov	dpl,r3
      0013B1 8C 83            [24] 1188 	mov	dph,r4
      0013B3 8F F0            [24] 1189 	mov	b,r7
      0013B5 12 32 FE         [24] 1190 	lcall	__gptrget
      0013B8 88 82            [24] 1191 	mov	dpl,r0
      0013BA 89 83            [24] 1192 	mov	dph,r1
      0013BC 8A F0            [24] 1193 	mov	b,r2
      0013BE 12 20 6D         [24] 1194 	lcall	__gptrput
                                   1195 ;	E:\Works\NSHET\sys.c:23: if (mc == 0)
      0013C1 90 00 5B         [24] 1196 	mov	dptr,#_mc
      0013C4 E0               [24] 1197 	movx	a,@dptr
      0013C5 F5 37            [12] 1198 	mov	_mmov_sloc4_1_0,a
      0013C7 A3               [24] 1199 	inc	dptr
      0013C8 E0               [24] 1200 	movx	a,@dptr
      0013C9 F5 38            [12] 1201 	mov	(_mmov_sloc4_1_0 + 1),a
      0013CB D0 07            [24] 1202 	pop	ar7
      0013CD D0 06            [24] 1203 	pop	ar6
      0013CF D0 05            [24] 1204 	pop	ar5
      0013D1 90 00 5B         [24] 1205 	mov	dptr,#_mc
      0013D4 E0               [24] 1206 	movx	a,@dptr
      0013D5 F5 F0            [12] 1207 	mov	b,a
      0013D7 A3               [24] 1208 	inc	dptr
      0013D8 E0               [24] 1209 	movx	a,@dptr
      0013D9 45 F0            [12] 1210 	orl	a,b
      0013DB 60 14            [24] 1211 	jz	00114$
                                   1212 ;	E:\Works\NSHET\sys.c:25: mc -= 1;
      0013DD E5 37            [12] 1213 	mov	a,_mmov_sloc4_1_0
      0013DF 24 FF            [12] 1214 	add	a,#0xff
      0013E1 FB               [12] 1215 	mov	r3,a
      0013E2 E5 38            [12] 1216 	mov	a,(_mmov_sloc4_1_0 + 1)
      0013E4 34 FF            [12] 1217 	addc	a,#0xff
      0013E6 FC               [12] 1218 	mov	r4,a
      0013E7 90 00 5B         [24] 1219 	mov	dptr,#_mc
      0013EA EB               [12] 1220 	mov	a,r3
      0013EB F0               [24] 1221 	movx	@dptr,a
      0013EC EC               [12] 1222 	mov	a,r4
      0013ED A3               [24] 1223 	inc	dptr
      0013EE F0               [24] 1224 	movx	@dptr,a
      0013EF 80 9E            [24] 1225 	sjmp	00109$
      0013F1                       1226 00114$:
                                   1227 ;	E:\Works\NSHET\sys.c:28: }
      0013F1 22               [24] 1228 	ret
                                   1229 ;------------------------------------------------------------
                                   1230 ;Allocation info for local variables in function 'sysClockConfig'
                                   1231 ;------------------------------------------------------------
                                   1232 ;	E:\Works\NSHET\sys.c:30: void sysClockConfig() {
                                   1233 ;	-----------------------------------------
                                   1234 ;	 function sysClockConfig
                                   1235 ;	-----------------------------------------
      0013F2                       1236 _sysClockConfig:
                                   1237 ;	E:\Works\NSHET\sys.c:31: SAFE_MOD = 0x55;
      0013F2 75 A1 55         [24] 1238 	mov	_SAFE_MOD,#0x55
                                   1239 ;	E:\Works\NSHET\sys.c:32: SAFE_MOD = 0xAA;
      0013F5 75 A1 AA         [24] 1240 	mov	_SAFE_MOD,#0xaa
                                   1241 ;	E:\Works\NSHET\sys.c:33: CLOCK_CFG &= ~MASK_SYS_CK_DIV;
      0013F8 53 B3 E0         [24] 1242 	anl	_CLOCK_CFG,#0xe0
                                   1243 ;	E:\Works\NSHET\sys.c:34: CLOCK_CFG |= (336000000 / FREQ_SYS);
      0013FB 43 B3 07         [24] 1244 	orl	_CLOCK_CFG,#0x07
                                   1245 ;	E:\Works\NSHET\sys.c:35: PLL_CFG = 0xFC; // fPll = 336MHz;
      0013FE 75 B2 FC         [24] 1246 	mov	_PLL_CFG,#0xfc
                                   1247 ;	E:\Works\NSHET\sys.c:36: SAFE_MOD = 0xFF;
      001401 75 A1 FF         [24] 1248 	mov	_SAFE_MOD,#0xff
                                   1249 ;	E:\Works\NSHET\sys.c:47: }
      001404 22               [24] 1250 	ret
                                   1251 ;------------------------------------------------------------
                                   1252 ;Allocation info for local variables in function 'delay'
                                   1253 ;------------------------------------------------------------
                                   1254 ;t                         Allocated with name '_delay_t_65536_27'
                                   1255 ;------------------------------------------------------------
                                   1256 ;	E:\Works\NSHET\sys.c:49: void delay(uint16_t t) {
                                   1257 ;	-----------------------------------------
                                   1258 ;	 function delay
                                   1259 ;	-----------------------------------------
      001405                       1260 _delay:
      001405 AF 83            [24] 1261 	mov	r7,dph
      001407 E5 82            [12] 1262 	mov	a,dpl
      001409 90 00 6B         [24] 1263 	mov	dptr,#_delay_t_65536_27
      00140C F0               [24] 1264 	movx	@dptr,a
      00140D EF               [12] 1265 	mov	a,r7
      00140E A3               [24] 1266 	inc	dptr
      00140F F0               [24] 1267 	movx	@dptr,a
                                   1268 ;	E:\Works\NSHET\sys.c:50: while (t) {
      001410 90 00 6B         [24] 1269 	mov	dptr,#_delay_t_65536_27
      001413 E0               [24] 1270 	movx	a,@dptr
      001414 FE               [12] 1271 	mov	r6,a
      001415 A3               [24] 1272 	inc	dptr
      001416 E0               [24] 1273 	movx	a,@dptr
      001417 FF               [12] 1274 	mov	r7,a
      001418                       1275 00101$:
      001418 EE               [12] 1276 	mov	a,r6
      001419 4F               [12] 1277 	orl	a,r7
      00141A 60 1D            [24] 1278 	jz	00108$
                                   1279 ;	E:\Works\NSHET\sys.c:51: delay_us(1000);
      00141C 90 03 E8         [24] 1280 	mov	dptr,#0x03e8
      00141F C0 07            [24] 1281 	push	ar7
      001421 C0 06            [24] 1282 	push	ar6
      001423 12 14 42         [24] 1283 	lcall	_delay_us
      001426 D0 06            [24] 1284 	pop	ar6
      001428 D0 07            [24] 1285 	pop	ar7
                                   1286 ;	E:\Works\NSHET\sys.c:52: -- t;
      00142A 1E               [12] 1287 	dec	r6
      00142B BE FF 01         [24] 1288 	cjne	r6,#0xff,00116$
      00142E 1F               [12] 1289 	dec	r7
      00142F                       1290 00116$:
      00142F 90 00 6B         [24] 1291 	mov	dptr,#_delay_t_65536_27
      001432 EE               [12] 1292 	mov	a,r6
      001433 F0               [24] 1293 	movx	@dptr,a
      001434 EF               [12] 1294 	mov	a,r7
      001435 A3               [24] 1295 	inc	dptr
      001436 F0               [24] 1296 	movx	@dptr,a
      001437 80 DF            [24] 1297 	sjmp	00101$
      001439                       1298 00108$:
      001439 90 00 6B         [24] 1299 	mov	dptr,#_delay_t_65536_27
      00143C EE               [12] 1300 	mov	a,r6
      00143D F0               [24] 1301 	movx	@dptr,a
      00143E EF               [12] 1302 	mov	a,r7
      00143F A3               [24] 1303 	inc	dptr
      001440 F0               [24] 1304 	movx	@dptr,a
                                   1305 ;	E:\Works\NSHET\sys.c:54: }
      001441 22               [24] 1306 	ret
                                   1307 ;------------------------------------------------------------
                                   1308 ;Allocation info for local variables in function 'delay_us'
                                   1309 ;------------------------------------------------------------
                                   1310 ;t                         Allocated with name '_delay_us_t_65536_30'
                                   1311 ;------------------------------------------------------------
                                   1312 ;	E:\Works\NSHET\sys.c:56: void delay_us(uint16_t t) {
                                   1313 ;	-----------------------------------------
                                   1314 ;	 function delay_us
                                   1315 ;	-----------------------------------------
      001442                       1316 _delay_us:
      001442 AF 83            [24] 1317 	mov	r7,dph
      001444 E5 82            [12] 1318 	mov	a,dpl
      001446 90 00 6D         [24] 1319 	mov	dptr,#_delay_us_t_65536_30
      001449 F0               [24] 1320 	movx	@dptr,a
      00144A EF               [12] 1321 	mov	a,r7
      00144B A3               [24] 1322 	inc	dptr
      00144C F0               [24] 1323 	movx	@dptr,a
                                   1324 ;	E:\Works\NSHET\sys.c:57: while (t) {
      00144D 90 00 6D         [24] 1325 	mov	dptr,#_delay_us_t_65536_30
      001450 E0               [24] 1326 	movx	a,@dptr
      001451 FE               [12] 1327 	mov	r6,a
      001452 A3               [24] 1328 	inc	dptr
      001453 E0               [24] 1329 	movx	a,@dptr
      001454 FF               [12] 1330 	mov	r7,a
      001455                       1331 00101$:
      001455 EE               [12] 1332 	mov	a,r6
      001456 4F               [12] 1333 	orl	a,r7
      001457 60 35            [24] 1334 	jz	00108$
                                   1335 ;	E:\Works\NSHET\sys.c:58: ++ SAFE_MOD;
      001459 05 A1            [12] 1336 	inc	_SAFE_MOD
                                   1337 ;	E:\Works\NSHET\sys.c:61: ++ SAFE_MOD;
      00145B 05 A1            [12] 1338 	inc	_SAFE_MOD
                                   1339 ;	E:\Works\NSHET\sys.c:64: ++ SAFE_MOD;
      00145D 05 A1            [12] 1340 	inc	_SAFE_MOD
                                   1341 ;	E:\Works\NSHET\sys.c:67: ++ SAFE_MOD;
      00145F 05 A1            [12] 1342 	inc	_SAFE_MOD
                                   1343 ;	E:\Works\NSHET\sys.c:70: ++ SAFE_MOD;
      001461 05 A1            [12] 1344 	inc	_SAFE_MOD
                                   1345 ;	E:\Works\NSHET\sys.c:73: ++ SAFE_MOD;
      001463 05 A1            [12] 1346 	inc	_SAFE_MOD
                                   1347 ;	E:\Works\NSHET\sys.c:76: ++ SAFE_MOD;
      001465 05 A1            [12] 1348 	inc	_SAFE_MOD
                                   1349 ;	E:\Works\NSHET\sys.c:79: ++ SAFE_MOD;
      001467 05 A1            [12] 1350 	inc	_SAFE_MOD
                                   1351 ;	E:\Works\NSHET\sys.c:82: ++ SAFE_MOD;
      001469 05 A1            [12] 1352 	inc	_SAFE_MOD
                                   1353 ;	E:\Works\NSHET\sys.c:85: ++ SAFE_MOD;
      00146B 05 A1            [12] 1354 	inc	_SAFE_MOD
                                   1355 ;	E:\Works\NSHET\sys.c:88: ++ SAFE_MOD;
      00146D 05 A1            [12] 1356 	inc	_SAFE_MOD
                                   1357 ;	E:\Works\NSHET\sys.c:91: ++ SAFE_MOD;
      00146F 05 A1            [12] 1358 	inc	_SAFE_MOD
                                   1359 ;	E:\Works\NSHET\sys.c:94: ++ SAFE_MOD;
      001471 05 A1            [12] 1360 	inc	_SAFE_MOD
                                   1361 ;	E:\Works\NSHET\sys.c:97: ++ SAFE_MOD;
      001473 05 A1            [12] 1362 	inc	_SAFE_MOD
                                   1363 ;	E:\Works\NSHET\sys.c:100: ++ SAFE_MOD;
      001475 05 A1            [12] 1364 	inc	_SAFE_MOD
                                   1365 ;	E:\Works\NSHET\sys.c:103: ++ SAFE_MOD;
      001477 05 A1            [12] 1366 	inc	_SAFE_MOD
                                   1367 ;	E:\Works\NSHET\sys.c:106: ++ SAFE_MOD;
      001479 05 A1            [12] 1368 	inc	_SAFE_MOD
                                   1369 ;	E:\Works\NSHET\sys.c:109: ++ SAFE_MOD;
      00147B 05 A1            [12] 1370 	inc	_SAFE_MOD
                                   1371 ;	E:\Works\NSHET\sys.c:112: ++ SAFE_MOD;
      00147D 05 A1            [12] 1372 	inc	_SAFE_MOD
                                   1373 ;	E:\Works\NSHET\sys.c:127: -- t;
      00147F 1E               [12] 1374 	dec	r6
      001480 BE FF 01         [24] 1375 	cjne	r6,#0xff,00116$
      001483 1F               [12] 1376 	dec	r7
      001484                       1377 00116$:
      001484 90 00 6D         [24] 1378 	mov	dptr,#_delay_us_t_65536_30
      001487 EE               [12] 1379 	mov	a,r6
      001488 F0               [24] 1380 	movx	@dptr,a
      001489 EF               [12] 1381 	mov	a,r7
      00148A A3               [24] 1382 	inc	dptr
      00148B F0               [24] 1383 	movx	@dptr,a
      00148C 80 C7            [24] 1384 	sjmp	00101$
      00148E                       1385 00108$:
      00148E 90 00 6D         [24] 1386 	mov	dptr,#_delay_us_t_65536_30
      001491 EE               [12] 1387 	mov	a,r6
      001492 F0               [24] 1388 	movx	@dptr,a
      001493 EF               [12] 1389 	mov	a,r7
      001494 A3               [24] 1390 	inc	dptr
      001495 F0               [24] 1391 	movx	@dptr,a
                                   1392 ;	E:\Works\NSHET\sys.c:129: }
      001496 22               [24] 1393 	ret
                                   1394 ;------------------------------------------------------------
                                   1395 ;Allocation info for local variables in function 'sysTickConfig'
                                   1396 ;------------------------------------------------------------
                                   1397 ;	E:\Works\NSHET\sys.c:131: void sysTickConfig() {
                                   1398 ;	-----------------------------------------
                                   1399 ;	 function sysTickConfig
                                   1400 ;	-----------------------------------------
      001497                       1401 _sysTickConfig:
                                   1402 ;	E:\Works\NSHET\sys.c:132: T2MOD &= ~bT2_CLK;
      001497 53 C9 BF         [24] 1403 	anl	_T2MOD,#0xbf
                                   1404 ;	E:\Works\NSHET\sys.c:133: C_T2 = 0;
                                   1405 ;	assignBit
      00149A C2 C9            [12] 1406 	clr	_C_T2
                                   1407 ;	E:\Works\NSHET\sys.c:134: RCAP2 = T2COUNT = 0xFFFF - (uint16_t) (FREQ_SYS / 12 / 1000);   // 1000Hz
      00149C 75 CC 5F         [24] 1408 	mov	((_T2COUNT >> 0) & 0xFF),#0x5f
      00149F 75 CD F0         [24] 1409 	mov	((_T2COUNT >> 8) & 0xFF),#0xf0
      0014A2 75 CA 5F         [24] 1410 	mov	((_RCAP2 >> 0) & 0xFF),#0x5f
      0014A5 75 CB F0         [24] 1411 	mov	((_RCAP2 >> 8) & 0xFF),#0xf0
                                   1412 ;	E:\Works\NSHET\sys.c:135: TR2 = 1;
                                   1413 ;	assignBit
      0014A8 D2 CA            [12] 1414 	setb	_TR2
                                   1415 ;	E:\Works\NSHET\sys.c:136: ET2 = 1;
                                   1416 ;	assignBit
      0014AA D2 AD            [12] 1417 	setb	_ET2
                                   1418 ;	E:\Works\NSHET\sys.c:137: }
      0014AC 22               [24] 1419 	ret
                                   1420 ;------------------------------------------------------------
                                   1421 ;Allocation info for local variables in function '__tim2_interrupt'
                                   1422 ;------------------------------------------------------------
                                   1423 ;	E:\Works\NSHET\sys.c:141: void __tim2_interrupt() __interrupt (INT_NO_TMR2) __using (1) {
                                   1424 ;	-----------------------------------------
                                   1425 ;	 function __tim2_interrupt
                                   1426 ;	-----------------------------------------
      0014AD                       1427 ___tim2_interrupt:
                           00000F  1428 	ar7 = 0x0f
                           00000E  1429 	ar6 = 0x0e
                           00000D  1430 	ar5 = 0x0d
                           00000C  1431 	ar4 = 0x0c
                           00000B  1432 	ar3 = 0x0b
                           00000A  1433 	ar2 = 0x0a
                           000009  1434 	ar1 = 0x09
                           000008  1435 	ar0 = 0x08
      0014AD C0 E0            [24] 1436 	push	acc
      0014AF C0 82            [24] 1437 	push	dpl
      0014B1 C0 83            [24] 1438 	push	dph
      0014B3 C0 D0            [24] 1439 	push	psw
      0014B5 75 D0 08         [24] 1440 	mov	psw,#0x08
                                   1441 ;	E:\Works\NSHET\sys.c:142: if (TF2) {
                                   1442 ;	E:\Works\NSHET\sys.c:143: TF2 = 0;
                                   1443 ;	assignBit
      0014B8 10 CF 02         [24] 1444 	jbc	_TF2,00109$
      0014BB 80 21            [24] 1445 	sjmp	00103$
      0014BD                       1446 00109$:
                                   1447 ;	E:\Works\NSHET\sys.c:144: sysTickCount += 1;
      0014BD 90 05 8C         [24] 1448 	mov	dptr,#_sysTickCount
      0014C0 E0               [24] 1449 	movx	a,@dptr
      0014C1 FC               [12] 1450 	mov	r4,a
      0014C2 A3               [24] 1451 	inc	dptr
      0014C3 E0               [24] 1452 	movx	a,@dptr
      0014C4 FD               [12] 1453 	mov	r5,a
      0014C5 A3               [24] 1454 	inc	dptr
      0014C6 E0               [24] 1455 	movx	a,@dptr
      0014C7 FE               [12] 1456 	mov	r6,a
      0014C8 A3               [24] 1457 	inc	dptr
      0014C9 E0               [24] 1458 	movx	a,@dptr
      0014CA FF               [12] 1459 	mov	r7,a
      0014CB 90 05 8C         [24] 1460 	mov	dptr,#_sysTickCount
      0014CE 74 01            [12] 1461 	mov	a,#0x01
      0014D0 2C               [12] 1462 	add	a,r4
      0014D1 F0               [24] 1463 	movx	@dptr,a
      0014D2 E4               [12] 1464 	clr	a
      0014D3 3D               [12] 1465 	addc	a,r5
      0014D4 A3               [24] 1466 	inc	dptr
      0014D5 F0               [24] 1467 	movx	@dptr,a
      0014D6 E4               [12] 1468 	clr	a
      0014D7 3E               [12] 1469 	addc	a,r6
      0014D8 A3               [24] 1470 	inc	dptr
      0014D9 F0               [24] 1471 	movx	@dptr,a
      0014DA E4               [12] 1472 	clr	a
      0014DB 3F               [12] 1473 	addc	a,r7
      0014DC A3               [24] 1474 	inc	dptr
      0014DD F0               [24] 1475 	movx	@dptr,a
      0014DE                       1476 00103$:
                                   1477 ;	E:\Works\NSHET\sys.c:146: }
      0014DE D0 D0            [24] 1478 	pop	psw
      0014E0 D0 83            [24] 1479 	pop	dph
      0014E2 D0 82            [24] 1480 	pop	dpl
      0014E4 D0 E0            [24] 1481 	pop	acc
      0014E6 32               [24] 1482 	reti
                                   1483 ;	eliminated unneeded push/pop b
                                   1484 ;------------------------------------------------------------
                                   1485 ;Allocation info for local variables in function 'sysGetTickCount'
                                   1486 ;------------------------------------------------------------
                                   1487 ;	E:\Works\NSHET\sys.c:148: uint32_t sysGetTickCount() {
                                   1488 ;	-----------------------------------------
                                   1489 ;	 function sysGetTickCount
                                   1490 ;	-----------------------------------------
      0014E7                       1491 _sysGetTickCount:
                           000007  1492 	ar7 = 0x07
                           000006  1493 	ar6 = 0x06
                           000005  1494 	ar5 = 0x05
                           000004  1495 	ar4 = 0x04
                           000003  1496 	ar3 = 0x03
                           000002  1497 	ar2 = 0x02
                           000001  1498 	ar1 = 0x01
                           000000  1499 	ar0 = 0x00
                                   1500 ;	E:\Works\NSHET\sys.c:149: return sysTickCount;
      0014E7 90 05 8C         [24] 1501 	mov	dptr,#_sysTickCount
      0014EA E0               [24] 1502 	movx	a,@dptr
      0014EB FC               [12] 1503 	mov	r4,a
      0014EC A3               [24] 1504 	inc	dptr
      0014ED E0               [24] 1505 	movx	a,@dptr
      0014EE FD               [12] 1506 	mov	r5,a
      0014EF A3               [24] 1507 	inc	dptr
      0014F0 E0               [24] 1508 	movx	a,@dptr
      0014F1 FE               [12] 1509 	mov	r6,a
      0014F2 A3               [24] 1510 	inc	dptr
      0014F3 E0               [24] 1511 	movx	a,@dptr
      0014F4 8C 82            [24] 1512 	mov	dpl,r4
      0014F6 8D 83            [24] 1513 	mov	dph,r5
      0014F8 8E F0            [24] 1514 	mov	b,r6
                                   1515 ;	E:\Works\NSHET\sys.c:150: }
      0014FA 22               [24] 1516 	ret
                                   1517 ;------------------------------------------------------------
                                   1518 ;Allocation info for local variables in function 'uart0Config'
                                   1519 ;------------------------------------------------------------
                                   1520 ;baud                      Allocated with name '_uart0Config_baud_65536_37'
                                   1521 ;------------------------------------------------------------
                                   1522 ;	E:\Works\NSHET\sys.c:154: void uart0Config(uint32_t baud) {
                                   1523 ;	-----------------------------------------
                                   1524 ;	 function uart0Config
                                   1525 ;	-----------------------------------------
      0014FB                       1526 _uart0Config:
      0014FB AF 82            [24] 1527 	mov	r7,dpl
      0014FD AE 83            [24] 1528 	mov	r6,dph
      0014FF AD F0            [24] 1529 	mov	r5,b
      001501 FC               [12] 1530 	mov	r4,a
      001502 90 00 75         [24] 1531 	mov	dptr,#_uart0Config_baud_65536_37
      001505 EF               [12] 1532 	mov	a,r7
      001506 F0               [24] 1533 	movx	@dptr,a
      001507 EE               [12] 1534 	mov	a,r6
      001508 A3               [24] 1535 	inc	dptr
      001509 F0               [24] 1536 	movx	@dptr,a
      00150A ED               [12] 1537 	mov	a,r5
      00150B A3               [24] 1538 	inc	dptr
      00150C F0               [24] 1539 	movx	@dptr,a
      00150D EC               [12] 1540 	mov	a,r4
      00150E A3               [24] 1541 	inc	dptr
      00150F F0               [24] 1542 	movx	@dptr,a
                                   1543 ;	E:\Works\NSHET\sys.c:155: SM0 = 0; SM1 = 1; SM2 = 0;
                                   1544 ;	assignBit
      001510 C2 9F            [12] 1545 	clr	_SM0
                                   1546 ;	assignBit
      001512 D2 9E            [12] 1547 	setb	_SM1
                                   1548 ;	assignBit
      001514 C2 9D            [12] 1549 	clr	_SM2
                                   1550 ;	E:\Works\NSHET\sys.c:156: TCLK = 0; RCLK = 0;
                                   1551 ;	assignBit
      001516 C2 CC            [12] 1552 	clr	_TCLK
                                   1553 ;	assignBit
      001518 C2 CD            [12] 1554 	clr	_RCLK
                                   1555 ;	E:\Works\NSHET\sys.c:157: PCON |= SMOD;
      00151A 43 87 80         [24] 1556 	orl	_PCON,#0x80
                                   1557 ;	E:\Works\NSHET\sys.c:158: x = 10 * FREQ_SYS / baud / 16;
      00151D 90 00 75         [24] 1558 	mov	dptr,#_uart0Config_baud_65536_37
      001520 E0               [24] 1559 	movx	a,@dptr
      001521 FC               [12] 1560 	mov	r4,a
      001522 A3               [24] 1561 	inc	dptr
      001523 E0               [24] 1562 	movx	a,@dptr
      001524 FD               [12] 1563 	mov	r5,a
      001525 A3               [24] 1564 	inc	dptr
      001526 E0               [24] 1565 	movx	a,@dptr
      001527 FE               [12] 1566 	mov	r6,a
      001528 A3               [24] 1567 	inc	dptr
      001529 E0               [24] 1568 	movx	a,@dptr
      00152A FF               [12] 1569 	mov	r7,a
      00152B 90 00 AF         [24] 1570 	mov	dptr,#__divulong_PARM_2
      00152E EC               [12] 1571 	mov	a,r4
      00152F F0               [24] 1572 	movx	@dptr,a
      001530 ED               [12] 1573 	mov	a,r5
      001531 A3               [24] 1574 	inc	dptr
      001532 F0               [24] 1575 	movx	@dptr,a
      001533 EE               [12] 1576 	mov	a,r6
      001534 A3               [24] 1577 	inc	dptr
      001535 F0               [24] 1578 	movx	@dptr,a
      001536 EF               [12] 1579 	mov	a,r7
      001537 A3               [24] 1580 	inc	dptr
      001538 F0               [24] 1581 	movx	@dptr,a
      001539 90 38 00         [24] 1582 	mov	dptr,#0x3800
      00153C 75 F0 9C         [24] 1583 	mov	b,#0x9c
      00153F 74 1C            [12] 1584 	mov	a,#0x1c
      001541 12 1F 46         [24] 1585 	lcall	__divulong
      001544 AC 82            [24] 1586 	mov	r4,dpl
      001546 AD 83            [24] 1587 	mov	r5,dph
      001548 AE F0            [24] 1588 	mov	r6,b
      00154A FF               [12] 1589 	mov	r7,a
      00154B ED               [12] 1590 	mov	a,r5
      00154C C4               [12] 1591 	swap	a
      00154D CC               [12] 1592 	xch	a,r4
      00154E C4               [12] 1593 	swap	a
      00154F 54 0F            [12] 1594 	anl	a,#0x0f
      001551 6C               [12] 1595 	xrl	a,r4
      001552 CC               [12] 1596 	xch	a,r4
      001553 54 0F            [12] 1597 	anl	a,#0x0f
      001555 CC               [12] 1598 	xch	a,r4
      001556 6C               [12] 1599 	xrl	a,r4
      001557 CC               [12] 1600 	xch	a,r4
      001558 FD               [12] 1601 	mov	r5,a
      001559 EE               [12] 1602 	mov	a,r6
      00155A C4               [12] 1603 	swap	a
      00155B 54 F0            [12] 1604 	anl	a,#0xf0
      00155D 4D               [12] 1605 	orl	a,r5
      00155E FD               [12] 1606 	mov	r5,a
      00155F EF               [12] 1607 	mov	a,r7
      001560 C4               [12] 1608 	swap	a
      001561 CE               [12] 1609 	xch	a,r6
      001562 C4               [12] 1610 	swap	a
      001563 54 0F            [12] 1611 	anl	a,#0x0f
      001565 6E               [12] 1612 	xrl	a,r6
      001566 CE               [12] 1613 	xch	a,r6
      001567 54 0F            [12] 1614 	anl	a,#0x0f
      001569 CE               [12] 1615 	xch	a,r6
      00156A 6E               [12] 1616 	xrl	a,r6
      00156B CE               [12] 1617 	xch	a,r6
      00156C FF               [12] 1618 	mov	r7,a
                                   1619 ;	E:\Works\NSHET\sys.c:160: x2 = x % 10;
      00156D 90 00 A6         [24] 1620 	mov	dptr,#__modulong_PARM_2
      001570 74 0A            [12] 1621 	mov	a,#0x0a
      001572 F0               [24] 1622 	movx	@dptr,a
      001573 E4               [12] 1623 	clr	a
      001574 A3               [24] 1624 	inc	dptr
      001575 F0               [24] 1625 	movx	@dptr,a
      001576 A3               [24] 1626 	inc	dptr
      001577 F0               [24] 1627 	movx	@dptr,a
      001578 A3               [24] 1628 	inc	dptr
      001579 F0               [24] 1629 	movx	@dptr,a
      00157A 8C 82            [24] 1630 	mov	dpl,r4
      00157C 8D 83            [24] 1631 	mov	dph,r5
      00157E 8E F0            [24] 1632 	mov	b,r6
      001580 EF               [12] 1633 	mov	a,r7
      001581 C0 07            [24] 1634 	push	ar7
      001583 C0 06            [24] 1635 	push	ar6
      001585 C0 05            [24] 1636 	push	ar5
      001587 C0 04            [24] 1637 	push	ar4
      001589 12 1D 35         [24] 1638 	lcall	__modulong
      00158C A8 82            [24] 1639 	mov	r0,dpl
      00158E D0 04            [24] 1640 	pop	ar4
      001590 D0 05            [24] 1641 	pop	ar5
      001592 D0 06            [24] 1642 	pop	ar6
      001594 D0 07            [24] 1643 	pop	ar7
      001596 90 00 73         [24] 1644 	mov	dptr,#_x2
      001599 E8               [12] 1645 	mov	a,r0
      00159A F0               [24] 1646 	movx	@dptr,a
                                   1647 ;	E:\Works\NSHET\sys.c:161: x /= 10;
      00159B 90 00 AF         [24] 1648 	mov	dptr,#__divulong_PARM_2
      00159E 74 0A            [12] 1649 	mov	a,#0x0a
      0015A0 F0               [24] 1650 	movx	@dptr,a
      0015A1 E4               [12] 1651 	clr	a
      0015A2 A3               [24] 1652 	inc	dptr
      0015A3 F0               [24] 1653 	movx	@dptr,a
      0015A4 A3               [24] 1654 	inc	dptr
      0015A5 F0               [24] 1655 	movx	@dptr,a
      0015A6 A3               [24] 1656 	inc	dptr
      0015A7 F0               [24] 1657 	movx	@dptr,a
      0015A8 8C 82            [24] 1658 	mov	dpl,r4
      0015AA 8D 83            [24] 1659 	mov	dph,r5
      0015AC 8E F0            [24] 1660 	mov	b,r6
      0015AE EF               [12] 1661 	mov	a,r7
      0015AF C0 00            [24] 1662 	push	ar0
      0015B1 12 1F 46         [24] 1663 	lcall	__divulong
      0015B4 AC 82            [24] 1664 	mov	r4,dpl
      0015B6 AD 83            [24] 1665 	mov	r5,dph
      0015B8 AE F0            [24] 1666 	mov	r6,b
      0015BA FF               [12] 1667 	mov	r7,a
      0015BB D0 00            [24] 1668 	pop	ar0
      0015BD 90 00 6F         [24] 1669 	mov	dptr,#_x
      0015C0 EC               [12] 1670 	mov	a,r4
      0015C1 F0               [24] 1671 	movx	@dptr,a
      0015C2 ED               [12] 1672 	mov	a,r5
      0015C3 A3               [24] 1673 	inc	dptr
      0015C4 F0               [24] 1674 	movx	@dptr,a
      0015C5 EE               [12] 1675 	mov	a,r6
      0015C6 A3               [24] 1676 	inc	dptr
      0015C7 F0               [24] 1677 	movx	@dptr,a
      0015C8 EF               [12] 1678 	mov	a,r7
      0015C9 A3               [24] 1679 	inc	dptr
      0015CA F0               [24] 1680 	movx	@dptr,a
                                   1681 ;	E:\Works\NSHET\sys.c:162: if (x2 >= 5) x++;
      0015CB B8 05 00         [24] 1682 	cjne	r0,#0x05,00109$
      0015CE                       1683 00109$:
      0015CE 40 13            [24] 1684 	jc	00102$
      0015D0 90 00 6F         [24] 1685 	mov	dptr,#_x
      0015D3 74 01            [12] 1686 	mov	a,#0x01
      0015D5 2C               [12] 1687 	add	a,r4
      0015D6 F0               [24] 1688 	movx	@dptr,a
      0015D7 E4               [12] 1689 	clr	a
      0015D8 3D               [12] 1690 	addc	a,r5
      0015D9 A3               [24] 1691 	inc	dptr
      0015DA F0               [24] 1692 	movx	@dptr,a
      0015DB E4               [12] 1693 	clr	a
      0015DC 3E               [12] 1694 	addc	a,r6
      0015DD A3               [24] 1695 	inc	dptr
      0015DE F0               [24] 1696 	movx	@dptr,a
      0015DF E4               [12] 1697 	clr	a
      0015E0 3F               [12] 1698 	addc	a,r7
      0015E1 A3               [24] 1699 	inc	dptr
      0015E2 F0               [24] 1700 	movx	@dptr,a
      0015E3                       1701 00102$:
                                   1702 ;	E:\Works\NSHET\sys.c:164: TMOD = TMOD & ~bT1_GATE & ~bT1_CT & ~MASK_T1_MOD | bT1_M1;
      0015E3 74 0F            [12] 1703 	mov	a,#0x0f
      0015E5 55 89            [12] 1704 	anl	a,_TMOD
      0015E7 44 20            [12] 1705 	orl	a,#0x20
      0015E9 F5 89            [12] 1706 	mov	_TMOD,a
                                   1707 ;	E:\Works\NSHET\sys.c:165: T2MOD |= (bTMR_CLK | bT1_CLK);
      0015EB 43 C9 A0         [24] 1708 	orl	_T2MOD,#0xa0
                                   1709 ;	E:\Works\NSHET\sys.c:166: TH1 = 0 - x;
      0015EE 90 00 6F         [24] 1710 	mov	dptr,#_x
      0015F1 E0               [24] 1711 	movx	a,@dptr
      0015F2 FC               [12] 1712 	mov	r4,a
      0015F3 A3               [24] 1713 	inc	dptr
      0015F4 E0               [24] 1714 	movx	a,@dptr
      0015F5 A3               [24] 1715 	inc	dptr
      0015F6 E0               [24] 1716 	movx	a,@dptr
      0015F7 A3               [24] 1717 	inc	dptr
      0015F8 E0               [24] 1718 	movx	a,@dptr
      0015F9 C3               [12] 1719 	clr	c
      0015FA E4               [12] 1720 	clr	a
      0015FB 9C               [12] 1721 	subb	a,r4
      0015FC F5 8D            [12] 1722 	mov	_TH1,a
                                   1723 ;	E:\Works\NSHET\sys.c:167: TR1 = 1;
                                   1724 ;	assignBit
      0015FE D2 8E            [12] 1725 	setb	_TR1
                                   1726 ;	E:\Works\NSHET\sys.c:168: TI = 1;
                                   1727 ;	assignBit
      001600 D2 99            [12] 1728 	setb	_TI
                                   1729 ;	E:\Works\NSHET\sys.c:169: REN = 1;
                                   1730 ;	assignBit
      001602 D2 9C            [12] 1731 	setb	_REN
                                   1732 ;	E:\Works\NSHET\sys.c:170: ES = 1;
                                   1733 ;	assignBit
      001604 D2 AC            [12] 1734 	setb	_ES
                                   1735 ;	E:\Works\NSHET\sys.c:171: }
      001606 22               [24] 1736 	ret
                                   1737 ;------------------------------------------------------------
                                   1738 ;Allocation info for local variables in function '__uart0_interrupt'
                                   1739 ;------------------------------------------------------------
                                   1740 ;	E:\Works\NSHET\sys.c:182: void __uart0_interrupt() __interrupt (INT_NO_UART0) __using (1) {
                                   1741 ;	-----------------------------------------
                                   1742 ;	 function __uart0_interrupt
                                   1743 ;	-----------------------------------------
      001607                       1744 ___uart0_interrupt:
                           00000F  1745 	ar7 = 0x0f
                           00000E  1746 	ar6 = 0x0e
                           00000D  1747 	ar5 = 0x0d
                           00000C  1748 	ar4 = 0x0c
                           00000B  1749 	ar3 = 0x0b
                           00000A  1750 	ar2 = 0x0a
                           000009  1751 	ar1 = 0x09
                           000008  1752 	ar0 = 0x08
      001607 C0 E0            [24] 1753 	push	acc
      001609 C0 F0            [24] 1754 	push	b
      00160B C0 82            [24] 1755 	push	dpl
      00160D C0 83            [24] 1756 	push	dph
      00160F C0 D0            [24] 1757 	push	psw
      001611 75 D0 08         [24] 1758 	mov	psw,#0x08
                                   1759 ;	E:\Works\NSHET\sys.c:183: if (TI) {
                                   1760 ;	E:\Works\NSHET\sys.c:184: TI = 0;
                                   1761 ;	assignBit
      001614 10 99 02         [24] 1762 	jbc	_TI,00134$
      001617 80 02            [24] 1763 	sjmp	00102$
      001619                       1764 00134$:
                                   1765 ;	E:\Works\NSHET\sys.c:185: busy = 0;
                                   1766 ;	assignBit
      001619 C2 00            [12] 1767 	clr	_busy
      00161B                       1768 00102$:
                                   1769 ;	E:\Works\NSHET\sys.c:187: if (RI) {
                                   1770 ;	E:\Works\NSHET\sys.c:188: RI = 0;
                                   1771 ;	assignBit
      00161B 10 98 02         [24] 1772 	jbc	_RI,00135$
      00161E 80 6F            [24] 1773 	sjmp	00112$
      001620                       1774 00135$:
                                   1775 ;	E:\Works\NSHET\sys.c:189: if (block_recv) {
      001620 30 01 4B         [24] 1776 	jnb	_block_recv,00108$
                                   1777 ;	E:\Works\NSHET\sys.c:190: block_recv_ptr[block_recv_pos] = SBUF;
      001623 90 05 B1         [24] 1778 	mov	dptr,#_block_recv_ptr
      001626 E0               [24] 1779 	movx	a,@dptr
      001627 FD               [12] 1780 	mov	r5,a
      001628 A3               [24] 1781 	inc	dptr
      001629 E0               [24] 1782 	movx	a,@dptr
      00162A FE               [12] 1783 	mov	r6,a
      00162B A3               [24] 1784 	inc	dptr
      00162C E0               [24] 1785 	movx	a,@dptr
      00162D FF               [12] 1786 	mov	r7,a
      00162E 90 05 B4         [24] 1787 	mov	dptr,#_block_recv_pos
      001631 E0               [24] 1788 	movx	a,@dptr
      001632 FB               [12] 1789 	mov	r3,a
      001633 A3               [24] 1790 	inc	dptr
      001634 E0               [24] 1791 	movx	a,@dptr
      001635 FC               [12] 1792 	mov	r4,a
      001636 EB               [12] 1793 	mov	a,r3
      001637 2D               [12] 1794 	add	a,r5
      001638 FD               [12] 1795 	mov	r5,a
      001639 EC               [12] 1796 	mov	a,r4
      00163A 3E               [12] 1797 	addc	a,r6
      00163B FE               [12] 1798 	mov	r6,a
      00163C 8D 82            [24] 1799 	mov	dpl,r5
      00163E 8E 83            [24] 1800 	mov	dph,r6
      001640 8F F0            [24] 1801 	mov	b,r7
      001642 E5 99            [12] 1802 	mov	a,_SBUF
      001644 12 20 6D         [24] 1803 	lcall	__gptrput
                                   1804 ;	E:\Works\NSHET\sys.c:191: block_recv_pos++;
      001647 90 05 B4         [24] 1805 	mov	dptr,#_block_recv_pos
      00164A E0               [24] 1806 	movx	a,@dptr
      00164B 24 01            [12] 1807 	add	a,#0x01
      00164D F0               [24] 1808 	movx	@dptr,a
      00164E A3               [24] 1809 	inc	dptr
      00164F E0               [24] 1810 	movx	a,@dptr
      001650 34 00            [12] 1811 	addc	a,#0x00
      001652 F0               [24] 1812 	movx	@dptr,a
                                   1813 ;	E:\Works\NSHET\sys.c:192: if (block_recv_pos >= block_recv_siz)
      001653 90 05 B4         [24] 1814 	mov	dptr,#_block_recv_pos
      001656 E0               [24] 1815 	movx	a,@dptr
      001657 FE               [12] 1816 	mov	r6,a
      001658 A3               [24] 1817 	inc	dptr
      001659 E0               [24] 1818 	movx	a,@dptr
      00165A FF               [12] 1819 	mov	r7,a
      00165B 90 05 B6         [24] 1820 	mov	dptr,#_block_recv_siz
      00165E E0               [24] 1821 	movx	a,@dptr
      00165F FC               [12] 1822 	mov	r4,a
      001660 A3               [24] 1823 	inc	dptr
      001661 E0               [24] 1824 	movx	a,@dptr
      001662 FD               [12] 1825 	mov	r5,a
      001663 C3               [12] 1826 	clr	c
      001664 EE               [12] 1827 	mov	a,r6
      001665 9C               [12] 1828 	subb	a,r4
      001666 EF               [12] 1829 	mov	a,r7
      001667 9D               [12] 1830 	subb	a,r5
      001668 40 25            [24] 1831 	jc	00112$
                                   1832 ;	E:\Works\NSHET\sys.c:193: block_recv = 0;
                                   1833 ;	assignBit
      00166A C2 01            [12] 1834 	clr	_block_recv
      00166C 80 21            [24] 1835 	sjmp	00112$
      00166E                       1836 00108$:
                                   1837 ;	E:\Works\NSHET\sys.c:194: } else if (recPtr0 < UART_BUF_SIZE) {
      00166E 90 05 B0         [24] 1838 	mov	dptr,#_recPtr0
      001671 E0               [24] 1839 	movx	a,@dptr
      001672 FF               [12] 1840 	mov	r7,a
      001673 BF 20 00         [24] 1841 	cjne	r7,#0x20,00138$
      001676                       1842 00138$:
      001676 50 17            [24] 1843 	jnc	00112$
                                   1844 ;	E:\Works\NSHET\sys.c:195: recBuf0[recPtr0] = SBUF;
      001678 90 05 B0         [24] 1845 	mov	dptr,#_recPtr0
      00167B E0               [24] 1846 	movx	a,@dptr
      00167C 24 90            [12] 1847 	add	a,#_recBuf0
      00167E F5 82            [12] 1848 	mov	dpl,a
      001680 E4               [12] 1849 	clr	a
      001681 34 05            [12] 1850 	addc	a,#(_recBuf0 >> 8)
      001683 F5 83            [12] 1851 	mov	dph,a
      001685 E5 99            [12] 1852 	mov	a,_SBUF
      001687 F0               [24] 1853 	movx	@dptr,a
                                   1854 ;	E:\Works\NSHET\sys.c:196: recPtr0 += 1;
      001688 90 05 B0         [24] 1855 	mov	dptr,#_recPtr0
      00168B E0               [24] 1856 	movx	a,@dptr
      00168C FF               [12] 1857 	mov	r7,a
      00168D 04               [12] 1858 	inc	a
      00168E F0               [24] 1859 	movx	@dptr,a
      00168F                       1860 00112$:
                                   1861 ;	E:\Works\NSHET\sys.c:199: }
      00168F D0 D0            [24] 1862 	pop	psw
      001691 D0 83            [24] 1863 	pop	dph
      001693 D0 82            [24] 1864 	pop	dpl
      001695 D0 F0            [24] 1865 	pop	b
      001697 D0 E0            [24] 1866 	pop	acc
      001699 32               [24] 1867 	reti
                                   1868 ;------------------------------------------------------------
                                   1869 ;Allocation info for local variables in function 'uart0Send'
                                   1870 ;------------------------------------------------------------
                                   1871 ;data                      Allocated with name '_uart0Send_data_65536_44'
                                   1872 ;------------------------------------------------------------
                                   1873 ;	E:\Works\NSHET\sys.c:201: void uart0Send(uint8_t data) {
                                   1874 ;	-----------------------------------------
                                   1875 ;	 function uart0Send
                                   1876 ;	-----------------------------------------
      00169A                       1877 _uart0Send:
                           000007  1878 	ar7 = 0x07
                           000006  1879 	ar6 = 0x06
                           000005  1880 	ar5 = 0x05
                           000004  1881 	ar4 = 0x04
                           000003  1882 	ar3 = 0x03
                           000002  1883 	ar2 = 0x02
                           000001  1884 	ar1 = 0x01
                           000000  1885 	ar0 = 0x00
      00169A E5 82            [12] 1886 	mov	a,dpl
      00169C 90 00 79         [24] 1887 	mov	dptr,#_uart0Send_data_65536_44
      00169F F0               [24] 1888 	movx	@dptr,a
                                   1889 ;	E:\Works\NSHET\sys.c:202: while (busy);
      0016A0                       1890 00101$:
      0016A0 20 00 FD         [24] 1891 	jb	_busy,00101$
                                   1892 ;	E:\Works\NSHET\sys.c:203: busy = 1;
                                   1893 ;	assignBit
      0016A3 D2 00            [12] 1894 	setb	_busy
                                   1895 ;	E:\Works\NSHET\sys.c:204: SBUF = data;
      0016A5 90 00 79         [24] 1896 	mov	dptr,#_uart0Send_data_65536_44
      0016A8 E0               [24] 1897 	movx	a,@dptr
      0016A9 F5 99            [12] 1898 	mov	_SBUF,a
                                   1899 ;	E:\Works\NSHET\sys.c:205: }
      0016AB 22               [24] 1900 	ret
                                   1901 ;------------------------------------------------------------
                                   1902 ;Allocation info for local variables in function 'uart0Write'
                                   1903 ;------------------------------------------------------------
                                   1904 ;s                         Allocated with name '_uart0Write_s_65536_46'
                                   1905 ;------------------------------------------------------------
                                   1906 ;	E:\Works\NSHET\sys.c:207: void uart0Write(char* s) {
                                   1907 ;	-----------------------------------------
                                   1908 ;	 function uart0Write
                                   1909 ;	-----------------------------------------
      0016AC                       1910 _uart0Write:
      0016AC AF F0            [24] 1911 	mov	r7,b
      0016AE AE 83            [24] 1912 	mov	r6,dph
      0016B0 E5 82            [12] 1913 	mov	a,dpl
      0016B2 90 00 7A         [24] 1914 	mov	dptr,#_uart0Write_s_65536_46
      0016B5 F0               [24] 1915 	movx	@dptr,a
      0016B6 EE               [12] 1916 	mov	a,r6
      0016B7 A3               [24] 1917 	inc	dptr
      0016B8 F0               [24] 1918 	movx	@dptr,a
      0016B9 EF               [12] 1919 	mov	a,r7
      0016BA A3               [24] 1920 	inc	dptr
      0016BB F0               [24] 1921 	movx	@dptr,a
                                   1922 ;	E:\Works\NSHET\sys.c:208: while (*s) {
      0016BC 90 00 7A         [24] 1923 	mov	dptr,#_uart0Write_s_65536_46
      0016BF E0               [24] 1924 	movx	a,@dptr
      0016C0 FD               [12] 1925 	mov	r5,a
      0016C1 A3               [24] 1926 	inc	dptr
      0016C2 E0               [24] 1927 	movx	a,@dptr
      0016C3 FE               [12] 1928 	mov	r6,a
      0016C4 A3               [24] 1929 	inc	dptr
      0016C5 E0               [24] 1930 	movx	a,@dptr
      0016C6 FF               [12] 1931 	mov	r7,a
      0016C7                       1932 00101$:
      0016C7 8D 82            [24] 1933 	mov	dpl,r5
      0016C9 8E 83            [24] 1934 	mov	dph,r6
      0016CB 8F F0            [24] 1935 	mov	b,r7
      0016CD 12 32 FE         [24] 1936 	lcall	__gptrget
      0016D0 FC               [12] 1937 	mov	r4,a
      0016D1 60 23            [24] 1938 	jz	00108$
                                   1939 ;	E:\Works\NSHET\sys.c:209: uart0Send(*s++);
      0016D3 0D               [12] 1940 	inc	r5
      0016D4 BD 00 01         [24] 1941 	cjne	r5,#0x00,00116$
      0016D7 0E               [12] 1942 	inc	r6
      0016D8                       1943 00116$:
      0016D8 90 00 7A         [24] 1944 	mov	dptr,#_uart0Write_s_65536_46
      0016DB ED               [12] 1945 	mov	a,r5
      0016DC F0               [24] 1946 	movx	@dptr,a
      0016DD EE               [12] 1947 	mov	a,r6
      0016DE A3               [24] 1948 	inc	dptr
      0016DF F0               [24] 1949 	movx	@dptr,a
      0016E0 EF               [12] 1950 	mov	a,r7
      0016E1 A3               [24] 1951 	inc	dptr
      0016E2 F0               [24] 1952 	movx	@dptr,a
      0016E3 8C 82            [24] 1953 	mov	dpl,r4
      0016E5 C0 07            [24] 1954 	push	ar7
      0016E7 C0 06            [24] 1955 	push	ar6
      0016E9 C0 05            [24] 1956 	push	ar5
      0016EB 12 16 9A         [24] 1957 	lcall	_uart0Send
      0016EE D0 05            [24] 1958 	pop	ar5
      0016F0 D0 06            [24] 1959 	pop	ar6
      0016F2 D0 07            [24] 1960 	pop	ar7
      0016F4 80 D1            [24] 1961 	sjmp	00101$
      0016F6                       1962 00108$:
      0016F6 90 00 7A         [24] 1963 	mov	dptr,#_uart0Write_s_65536_46
      0016F9 ED               [12] 1964 	mov	a,r5
      0016FA F0               [24] 1965 	movx	@dptr,a
      0016FB EE               [12] 1966 	mov	a,r6
      0016FC A3               [24] 1967 	inc	dptr
      0016FD F0               [24] 1968 	movx	@dptr,a
      0016FE EF               [12] 1969 	mov	a,r7
      0016FF A3               [24] 1970 	inc	dptr
      001700 F0               [24] 1971 	movx	@dptr,a
                                   1972 ;	E:\Works\NSHET\sys.c:211: }
      001701 22               [24] 1973 	ret
                                   1974 ;------------------------------------------------------------
                                   1975 ;Allocation info for local variables in function 'uart0Get'
                                   1976 ;------------------------------------------------------------
                                   1977 ;	E:\Works\NSHET\sys.c:213: uint8_t uart0Get() {
                                   1978 ;	-----------------------------------------
                                   1979 ;	 function uart0Get
                                   1980 ;	-----------------------------------------
      001702                       1981 _uart0Get:
                                   1982 ;	E:\Works\NSHET\sys.c:214: if (recPtr0 > 0) {
      001702 90 05 B0         [24] 1983 	mov	dptr,#_recPtr0
      001705 E0               [24] 1984 	movx	a,@dptr
      001706 60 60            [24] 1985 	jz	00104$
                                   1986 ;	E:\Works\NSHET\sys.c:215: sbuf = recBuf0[0];
      001708 90 05 90         [24] 1987 	mov	dptr,#_recBuf0
      00170B E0               [24] 1988 	movx	a,@dptr
      00170C 90 00 74         [24] 1989 	mov	dptr,#_sbuf
      00170F F0               [24] 1990 	movx	@dptr,a
                                   1991 ;	E:\Works\NSHET\sys.c:216: recPtr0 -= 1;
      001710 90 05 B0         [24] 1992 	mov	dptr,#_recPtr0
      001713 E0               [24] 1993 	movx	a,@dptr
      001714 14               [12] 1994 	dec	a
      001715 F0               [24] 1995 	movx	@dptr,a
                                   1996 ;	E:\Works\NSHET\sys.c:217: if (recPtr0 > 0)
      001716 E0               [24] 1997 	movx	a,@dptr
      001717 60 25            [24] 1998 	jz	00102$
                                   1999 ;	E:\Works\NSHET\sys.c:218: mmov(recBuf0, recBuf0 + 1, recPtr0);
      001719 90 05 B0         [24] 2000 	mov	dptr,#_recPtr0
      00171C E0               [24] 2001 	movx	a,@dptr
      00171D FF               [12] 2002 	mov	r7,a
      00171E 7E 00            [12] 2003 	mov	r6,#0x00
      001720 90 00 63         [24] 2004 	mov	dptr,#_mmov_PARM_2
      001723 74 91            [12] 2005 	mov	a,#(_recBuf0 + 0x0001)
      001725 F0               [24] 2006 	movx	@dptr,a
      001726 74 05            [12] 2007 	mov	a,#((_recBuf0 + 0x0001) >> 8)
      001728 A3               [24] 2008 	inc	dptr
      001729 F0               [24] 2009 	movx	@dptr,a
      00172A E4               [12] 2010 	clr	a
      00172B A3               [24] 2011 	inc	dptr
      00172C F0               [24] 2012 	movx	@dptr,a
      00172D 90 00 66         [24] 2013 	mov	dptr,#_mmov_PARM_3
      001730 EF               [12] 2014 	mov	a,r7
      001731 F0               [24] 2015 	movx	@dptr,a
      001732 EE               [12] 2016 	mov	a,r6
      001733 A3               [24] 2017 	inc	dptr
      001734 F0               [24] 2018 	movx	@dptr,a
      001735 90 05 90         [24] 2019 	mov	dptr,#_recBuf0
      001738 75 F0 00         [24] 2020 	mov	b,#0x00
      00173B 12 12 C2         [24] 2021 	lcall	_mmov
      00173E                       2022 00102$:
                                   2023 ;	E:\Works\NSHET\sys.c:219: mset(recBuf0 + recPtr0, 0, 1);
      00173E 90 05 B0         [24] 2024 	mov	dptr,#_recPtr0
      001741 E0               [24] 2025 	movx	a,@dptr
      001742 24 90            [12] 2026 	add	a,#_recBuf0
      001744 FF               [12] 2027 	mov	r7,a
      001745 E4               [12] 2028 	clr	a
      001746 34 05            [12] 2029 	addc	a,#(_recBuf0 >> 8)
      001748 FE               [12] 2030 	mov	r6,a
      001749 7D 00            [12] 2031 	mov	r5,#0x00
      00174B 90 00 5D         [24] 2032 	mov	dptr,#_mset_PARM_2
      00174E E4               [12] 2033 	clr	a
      00174F F0               [24] 2034 	movx	@dptr,a
      001750 90 00 5E         [24] 2035 	mov	dptr,#_mset_PARM_3
      001753 04               [12] 2036 	inc	a
      001754 F0               [24] 2037 	movx	@dptr,a
      001755 E4               [12] 2038 	clr	a
      001756 A3               [24] 2039 	inc	dptr
      001757 F0               [24] 2040 	movx	@dptr,a
      001758 8F 82            [24] 2041 	mov	dpl,r7
      00175A 8E 83            [24] 2042 	mov	dph,r6
      00175C 8D F0            [24] 2043 	mov	b,r5
      00175E 12 12 5B         [24] 2044 	lcall	_mset
                                   2045 ;	E:\Works\NSHET\sys.c:220: return sbuf;
      001761 90 00 74         [24] 2046 	mov	dptr,#_sbuf
      001764 E0               [24] 2047 	movx	a,@dptr
      001765 F5 82            [12] 2048 	mov	dpl,a
      001767 22               [24] 2049 	ret
      001768                       2050 00104$:
                                   2051 ;	E:\Works\NSHET\sys.c:222: return 0;
      001768 75 82 00         [24] 2052 	mov	dpl,#0x00
                                   2053 ;	E:\Works\NSHET\sys.c:223: }
      00176B 22               [24] 2054 	ret
                                   2055 ;------------------------------------------------------------
                                   2056 ;Allocation info for local variables in function 'uart0Gets'
                                   2057 ;------------------------------------------------------------
                                   2058 ;len                       Allocated with name '_uart0Gets_PARM_2'
                                   2059 ;dat                       Allocated with name '_uart0Gets_dat_65536_51'
                                   2060 ;------------------------------------------------------------
                                   2061 ;	E:\Works\NSHET\sys.c:225: uint8_t uart0Gets(uint8_t* dat, uint8_t len) {
                                   2062 ;	-----------------------------------------
                                   2063 ;	 function uart0Gets
                                   2064 ;	-----------------------------------------
      00176C                       2065 _uart0Gets:
      00176C AF F0            [24] 2066 	mov	r7,b
      00176E AE 83            [24] 2067 	mov	r6,dph
      001770 E5 82            [12] 2068 	mov	a,dpl
      001772 90 00 7E         [24] 2069 	mov	dptr,#_uart0Gets_dat_65536_51
      001775 F0               [24] 2070 	movx	@dptr,a
      001776 EE               [12] 2071 	mov	a,r6
      001777 A3               [24] 2072 	inc	dptr
      001778 F0               [24] 2073 	movx	@dptr,a
      001779 EF               [12] 2074 	mov	a,r7
      00177A A3               [24] 2075 	inc	dptr
      00177B F0               [24] 2076 	movx	@dptr,a
                                   2077 ;	E:\Works\NSHET\sys.c:226: if (recPtr0 >= len) {
      00177C 90 05 B0         [24] 2078 	mov	dptr,#_recPtr0
      00177F E0               [24] 2079 	movx	a,@dptr
      001780 FF               [12] 2080 	mov	r7,a
      001781 90 00 7D         [24] 2081 	mov	dptr,#_uart0Gets_PARM_2
      001784 E0               [24] 2082 	movx	a,@dptr
      001785 FE               [12] 2083 	mov	r6,a
      001786 C3               [12] 2084 	clr	c
      001787 EF               [12] 2085 	mov	a,r7
      001788 9E               [12] 2086 	subb	a,r6
      001789 50 03            [24] 2087 	jnc	00116$
      00178B 02 18 2D         [24] 2088 	ljmp	00104$
      00178E                       2089 00116$:
                                   2090 ;	E:\Works\NSHET\sys.c:227: mmov(dat, recBuf0, len);
      00178E 90 00 7E         [24] 2091 	mov	dptr,#_uart0Gets_dat_65536_51
      001791 E0               [24] 2092 	movx	a,@dptr
      001792 FC               [12] 2093 	mov	r4,a
      001793 A3               [24] 2094 	inc	dptr
      001794 E0               [24] 2095 	movx	a,@dptr
      001795 FD               [12] 2096 	mov	r5,a
      001796 A3               [24] 2097 	inc	dptr
      001797 E0               [24] 2098 	movx	a,@dptr
      001798 FF               [12] 2099 	mov	r7,a
      001799 90 00 63         [24] 2100 	mov	dptr,#_mmov_PARM_2
      00179C 74 90            [12] 2101 	mov	a,#_recBuf0
      00179E F0               [24] 2102 	movx	@dptr,a
      00179F 74 05            [12] 2103 	mov	a,#(_recBuf0 >> 8)
      0017A1 A3               [24] 2104 	inc	dptr
      0017A2 F0               [24] 2105 	movx	@dptr,a
      0017A3 E4               [12] 2106 	clr	a
      0017A4 A3               [24] 2107 	inc	dptr
      0017A5 F0               [24] 2108 	movx	@dptr,a
      0017A6 8E 02            [24] 2109 	mov	ar2,r6
      0017A8 7B 00            [12] 2110 	mov	r3,#0x00
      0017AA 90 00 66         [24] 2111 	mov	dptr,#_mmov_PARM_3
      0017AD EA               [12] 2112 	mov	a,r2
      0017AE F0               [24] 2113 	movx	@dptr,a
      0017AF EB               [12] 2114 	mov	a,r3
      0017B0 A3               [24] 2115 	inc	dptr
      0017B1 F0               [24] 2116 	movx	@dptr,a
      0017B2 8C 82            [24] 2117 	mov	dpl,r4
      0017B4 8D 83            [24] 2118 	mov	dph,r5
      0017B6 8F F0            [24] 2119 	mov	b,r7
      0017B8 C0 06            [24] 2120 	push	ar6
      0017BA C0 03            [24] 2121 	push	ar3
      0017BC C0 02            [24] 2122 	push	ar2
      0017BE 12 12 C2         [24] 2123 	lcall	_mmov
      0017C1 D0 02            [24] 2124 	pop	ar2
      0017C3 D0 03            [24] 2125 	pop	ar3
      0017C5 D0 06            [24] 2126 	pop	ar6
                                   2127 ;	E:\Works\NSHET\sys.c:228: recPtr0 -= len;
      0017C7 90 05 B0         [24] 2128 	mov	dptr,#_recPtr0
      0017CA E0               [24] 2129 	movx	a,@dptr
      0017CB C3               [12] 2130 	clr	c
      0017CC 9E               [12] 2131 	subb	a,r6
      0017CD F0               [24] 2132 	movx	@dptr,a
                                   2133 ;	E:\Works\NSHET\sys.c:229: if (recPtr0 > 0)
      0017CE E0               [24] 2134 	movx	a,@dptr
      0017CF 60 35            [24] 2135 	jz	00102$
                                   2136 ;	E:\Works\NSHET\sys.c:230: mmov(recBuf0, recBuf0 + len, recPtr0);
      0017D1 EE               [12] 2137 	mov	a,r6
      0017D2 24 90            [12] 2138 	add	a,#_recBuf0
      0017D4 FE               [12] 2139 	mov	r6,a
      0017D5 E4               [12] 2140 	clr	a
      0017D6 34 05            [12] 2141 	addc	a,#(_recBuf0 >> 8)
      0017D8 FF               [12] 2142 	mov	r7,a
      0017D9 7D 00            [12] 2143 	mov	r5,#0x00
      0017DB 90 05 B0         [24] 2144 	mov	dptr,#_recPtr0
      0017DE E0               [24] 2145 	movx	a,@dptr
      0017DF F9               [12] 2146 	mov	r1,a
      0017E0 7C 00            [12] 2147 	mov	r4,#0x00
      0017E2 90 00 63         [24] 2148 	mov	dptr,#_mmov_PARM_2
      0017E5 EE               [12] 2149 	mov	a,r6
      0017E6 F0               [24] 2150 	movx	@dptr,a
      0017E7 EF               [12] 2151 	mov	a,r7
      0017E8 A3               [24] 2152 	inc	dptr
      0017E9 F0               [24] 2153 	movx	@dptr,a
      0017EA ED               [12] 2154 	mov	a,r5
      0017EB A3               [24] 2155 	inc	dptr
      0017EC F0               [24] 2156 	movx	@dptr,a
      0017ED 90 00 66         [24] 2157 	mov	dptr,#_mmov_PARM_3
      0017F0 E9               [12] 2158 	mov	a,r1
      0017F1 F0               [24] 2159 	movx	@dptr,a
      0017F2 EC               [12] 2160 	mov	a,r4
      0017F3 A3               [24] 2161 	inc	dptr
      0017F4 F0               [24] 2162 	movx	@dptr,a
      0017F5 90 05 90         [24] 2163 	mov	dptr,#_recBuf0
      0017F8 75 F0 00         [24] 2164 	mov	b,#0x00
      0017FB C0 03            [24] 2165 	push	ar3
      0017FD C0 02            [24] 2166 	push	ar2
      0017FF 12 12 C2         [24] 2167 	lcall	_mmov
      001802 D0 02            [24] 2168 	pop	ar2
      001804 D0 03            [24] 2169 	pop	ar3
      001806                       2170 00102$:
                                   2171 ;	E:\Works\NSHET\sys.c:231: mset(recBuf0 + recPtr0, 0, len);
      001806 90 05 B0         [24] 2172 	mov	dptr,#_recPtr0
      001809 E0               [24] 2173 	movx	a,@dptr
      00180A 24 90            [12] 2174 	add	a,#_recBuf0
      00180C FF               [12] 2175 	mov	r7,a
      00180D E4               [12] 2176 	clr	a
      00180E 34 05            [12] 2177 	addc	a,#(_recBuf0 >> 8)
      001810 FE               [12] 2178 	mov	r6,a
      001811 7D 00            [12] 2179 	mov	r5,#0x00
      001813 90 00 5D         [24] 2180 	mov	dptr,#_mset_PARM_2
      001816 E4               [12] 2181 	clr	a
      001817 F0               [24] 2182 	movx	@dptr,a
      001818 90 00 5E         [24] 2183 	mov	dptr,#_mset_PARM_3
      00181B EA               [12] 2184 	mov	a,r2
      00181C F0               [24] 2185 	movx	@dptr,a
      00181D EB               [12] 2186 	mov	a,r3
      00181E A3               [24] 2187 	inc	dptr
      00181F F0               [24] 2188 	movx	@dptr,a
      001820 8F 82            [24] 2189 	mov	dpl,r7
      001822 8E 83            [24] 2190 	mov	dph,r6
      001824 8D F0            [24] 2191 	mov	b,r5
      001826 12 12 5B         [24] 2192 	lcall	_mset
                                   2193 ;	E:\Works\NSHET\sys.c:232: return 1;
      001829 75 82 01         [24] 2194 	mov	dpl,#0x01
      00182C 22               [24] 2195 	ret
      00182D                       2196 00104$:
                                   2197 ;	E:\Works\NSHET\sys.c:234: return 0;
      00182D 75 82 00         [24] 2198 	mov	dpl,#0x00
                                   2199 ;	E:\Works\NSHET\sys.c:235: }
      001830 22               [24] 2200 	ret
                                   2201 ;------------------------------------------------------------
                                   2202 ;Allocation info for local variables in function 'uart0BlockRecv'
                                   2203 ;------------------------------------------------------------
                                   2204 ;siz                       Allocated with name '_uart0BlockRecv_PARM_2'
                                   2205 ;ptr                       Allocated with name '_uart0BlockRecv_ptr_65536_54'
                                   2206 ;------------------------------------------------------------
                                   2207 ;	E:\Works\NSHET\sys.c:237: uint16_t uart0BlockRecv(uint8_t* ptr, uint16_t siz) {
                                   2208 ;	-----------------------------------------
                                   2209 ;	 function uart0BlockRecv
                                   2210 ;	-----------------------------------------
      001831                       2211 _uart0BlockRecv:
      001831 AF F0            [24] 2212 	mov	r7,b
      001833 AE 83            [24] 2213 	mov	r6,dph
      001835 E5 82            [12] 2214 	mov	a,dpl
      001837 90 00 83         [24] 2215 	mov	dptr,#_uart0BlockRecv_ptr_65536_54
      00183A F0               [24] 2216 	movx	@dptr,a
      00183B EE               [12] 2217 	mov	a,r6
      00183C A3               [24] 2218 	inc	dptr
      00183D F0               [24] 2219 	movx	@dptr,a
      00183E EF               [12] 2220 	mov	a,r7
      00183F A3               [24] 2221 	inc	dptr
      001840 F0               [24] 2222 	movx	@dptr,a
                                   2223 ;	E:\Works\NSHET\sys.c:238: if (ptr != NULL) {
      001841 90 00 83         [24] 2224 	mov	dptr,#_uart0BlockRecv_ptr_65536_54
      001844 E0               [24] 2225 	movx	a,@dptr
      001845 FD               [12] 2226 	mov	r5,a
      001846 A3               [24] 2227 	inc	dptr
      001847 E0               [24] 2228 	movx	a,@dptr
      001848 FE               [12] 2229 	mov	r6,a
      001849 A3               [24] 2230 	inc	dptr
      00184A E0               [24] 2231 	movx	a,@dptr
      00184B FF               [12] 2232 	mov	r7,a
      00184C 90 00 83         [24] 2233 	mov	dptr,#_uart0BlockRecv_ptr_65536_54
      00184F E0               [24] 2234 	movx	a,@dptr
      001850 F5 F0            [12] 2235 	mov	b,a
      001852 A3               [24] 2236 	inc	dptr
      001853 E0               [24] 2237 	movx	a,@dptr
      001854 45 F0            [12] 2238 	orl	a,b
      001856 60 26            [24] 2239 	jz	00105$
                                   2240 ;	E:\Works\NSHET\sys.c:239: block_recv_ptr = ptr;
      001858 90 05 B1         [24] 2241 	mov	dptr,#_block_recv_ptr
      00185B ED               [12] 2242 	mov	a,r5
      00185C F0               [24] 2243 	movx	@dptr,a
      00185D EE               [12] 2244 	mov	a,r6
      00185E A3               [24] 2245 	inc	dptr
      00185F F0               [24] 2246 	movx	@dptr,a
      001860 EF               [12] 2247 	mov	a,r7
      001861 A3               [24] 2248 	inc	dptr
      001862 F0               [24] 2249 	movx	@dptr,a
                                   2250 ;	E:\Works\NSHET\sys.c:240: block_recv_pos = 0;
      001863 90 05 B4         [24] 2251 	mov	dptr,#_block_recv_pos
      001866 E4               [12] 2252 	clr	a
      001867 F0               [24] 2253 	movx	@dptr,a
      001868 A3               [24] 2254 	inc	dptr
      001869 F0               [24] 2255 	movx	@dptr,a
                                   2256 ;	E:\Works\NSHET\sys.c:241: block_recv_siz = siz;
      00186A 90 00 81         [24] 2257 	mov	dptr,#_uart0BlockRecv_PARM_2
      00186D E0               [24] 2258 	movx	a,@dptr
      00186E FE               [12] 2259 	mov	r6,a
      00186F A3               [24] 2260 	inc	dptr
      001870 E0               [24] 2261 	movx	a,@dptr
      001871 FF               [12] 2262 	mov	r7,a
      001872 90 05 B6         [24] 2263 	mov	dptr,#_block_recv_siz
      001875 EE               [12] 2264 	mov	a,r6
      001876 F0               [24] 2265 	movx	@dptr,a
      001877 EF               [12] 2266 	mov	a,r7
      001878 A3               [24] 2267 	inc	dptr
      001879 F0               [24] 2268 	movx	@dptr,a
                                   2269 ;	E:\Works\NSHET\sys.c:242: block_recv = 1;
                                   2270 ;	assignBit
      00187A D2 01            [12] 2271 	setb	_block_recv
      00187C 80 30            [24] 2272 	sjmp	00106$
      00187E                       2273 00105$:
                                   2274 ;	E:\Works\NSHET\sys.c:243: } else if (siz != 0) {
      00187E 90 00 81         [24] 2275 	mov	dptr,#_uart0BlockRecv_PARM_2
      001881 E0               [24] 2276 	movx	a,@dptr
      001882 F5 F0            [12] 2277 	mov	b,a
      001884 A3               [24] 2278 	inc	dptr
      001885 E0               [24] 2279 	movx	a,@dptr
      001886 45 F0            [12] 2280 	orl	a,b
      001888 60 0D            [24] 2281 	jz	00102$
                                   2282 ;	E:\Works\NSHET\sys.c:244: return block_recv_pos;
      00188A 90 05 B4         [24] 2283 	mov	dptr,#_block_recv_pos
      00188D E0               [24] 2284 	movx	a,@dptr
      00188E FE               [12] 2285 	mov	r6,a
      00188F A3               [24] 2286 	inc	dptr
      001890 E0               [24] 2287 	movx	a,@dptr
      001891 FF               [12] 2288 	mov	r7,a
      001892 8E 82            [24] 2289 	mov	dpl,r6
      001894 8F 83            [24] 2290 	mov	dph,r7
      001896 22               [24] 2291 	ret
      001897                       2292 00102$:
                                   2293 ;	E:\Works\NSHET\sys.c:246: block_recv = 0;
                                   2294 ;	assignBit
      001897 C2 01            [12] 2295 	clr	_block_recv
                                   2296 ;	E:\Works\NSHET\sys.c:247: block_recv_ptr = NULL;
      001899 90 05 B1         [24] 2297 	mov	dptr,#_block_recv_ptr
      00189C E4               [12] 2298 	clr	a
      00189D F0               [24] 2299 	movx	@dptr,a
      00189E A3               [24] 2300 	inc	dptr
      00189F F0               [24] 2301 	movx	@dptr,a
      0018A0 A3               [24] 2302 	inc	dptr
      0018A1 F0               [24] 2303 	movx	@dptr,a
                                   2304 ;	E:\Works\NSHET\sys.c:248: block_recv_pos = 0;
      0018A2 90 05 B4         [24] 2305 	mov	dptr,#_block_recv_pos
      0018A5 F0               [24] 2306 	movx	@dptr,a
      0018A6 A3               [24] 2307 	inc	dptr
      0018A7 F0               [24] 2308 	movx	@dptr,a
                                   2309 ;	E:\Works\NSHET\sys.c:249: block_recv_siz = 0;
      0018A8 90 05 B6         [24] 2310 	mov	dptr,#_block_recv_siz
      0018AB F0               [24] 2311 	movx	@dptr,a
      0018AC A3               [24] 2312 	inc	dptr
      0018AD F0               [24] 2313 	movx	@dptr,a
      0018AE                       2314 00106$:
                                   2315 ;	E:\Works\NSHET\sys.c:251: return 0;
      0018AE 90 00 00         [24] 2316 	mov	dptr,#0x0000
                                   2317 ;	E:\Works\NSHET\sys.c:252: }
      0018B1 22               [24] 2318 	ret
                                   2319 ;------------------------------------------------------------
                                   2320 ;Allocation info for local variables in function 'uart1Config'
                                   2321 ;------------------------------------------------------------
                                   2322 ;baud                      Allocated with name '_uart1Config_baud_65536_59'
                                   2323 ;DIV                       Allocated with name '_uart1Config_DIV_65536_60'
                                   2324 ;------------------------------------------------------------
                                   2325 ;	E:\Works\NSHET\sys.c:254: void uart1Config(uint32_t baud) {
                                   2326 ;	-----------------------------------------
                                   2327 ;	 function uart1Config
                                   2328 ;	-----------------------------------------
      0018B2                       2329 _uart1Config:
      0018B2 AF 82            [24] 2330 	mov	r7,dpl
      0018B4 AE 83            [24] 2331 	mov	r6,dph
      0018B6 AD F0            [24] 2332 	mov	r5,b
      0018B8 FC               [12] 2333 	mov	r4,a
      0018B9 90 00 86         [24] 2334 	mov	dptr,#_uart1Config_baud_65536_59
      0018BC EF               [12] 2335 	mov	a,r7
      0018BD F0               [24] 2336 	movx	@dptr,a
      0018BE EE               [12] 2337 	mov	a,r6
      0018BF A3               [24] 2338 	inc	dptr
      0018C0 F0               [24] 2339 	movx	@dptr,a
      0018C1 ED               [12] 2340 	mov	a,r5
      0018C2 A3               [24] 2341 	inc	dptr
      0018C3 F0               [24] 2342 	movx	@dptr,a
      0018C4 EC               [12] 2343 	mov	a,r4
      0018C5 A3               [24] 2344 	inc	dptr
      0018C6 F0               [24] 2345 	movx	@dptr,a
                                   2346 ;	E:\Works\NSHET\sys.c:257: SER1_LCR |= bLCR_DLAB;
      0018C7 43 93 80         [24] 2347 	orl	_SER1_LCR,#0x80
                                   2348 ;	E:\Works\NSHET\sys.c:258: SER1_DIV = DIV;
      0018CA 75 97 01         [24] 2349 	mov	_SER1_ADDR,#0x01
                                   2350 ;	E:\Works\NSHET\sys.c:259: x = 10 * FREQ_SYS * 2 / DIV / 16 / baud;                             
      0018CD 90 00 86         [24] 2351 	mov	dptr,#_uart1Config_baud_65536_59
      0018D0 E0               [24] 2352 	movx	a,@dptr
      0018D1 FC               [12] 2353 	mov	r4,a
      0018D2 A3               [24] 2354 	inc	dptr
      0018D3 E0               [24] 2355 	movx	a,@dptr
      0018D4 FD               [12] 2356 	mov	r5,a
      0018D5 A3               [24] 2357 	inc	dptr
      0018D6 E0               [24] 2358 	movx	a,@dptr
      0018D7 FE               [12] 2359 	mov	r6,a
      0018D8 A3               [24] 2360 	inc	dptr
      0018D9 E0               [24] 2361 	movx	a,@dptr
      0018DA FF               [12] 2362 	mov	r7,a
      0018DB 90 00 AF         [24] 2363 	mov	dptr,#__divulong_PARM_2
      0018DE EC               [12] 2364 	mov	a,r4
      0018DF F0               [24] 2365 	movx	@dptr,a
      0018E0 ED               [12] 2366 	mov	a,r5
      0018E1 A3               [24] 2367 	inc	dptr
      0018E2 F0               [24] 2368 	movx	@dptr,a
      0018E3 EE               [12] 2369 	mov	a,r6
      0018E4 A3               [24] 2370 	inc	dptr
      0018E5 F0               [24] 2371 	movx	@dptr,a
      0018E6 EF               [12] 2372 	mov	a,r7
      0018E7 A3               [24] 2373 	inc	dptr
      0018E8 F0               [24] 2374 	movx	@dptr,a
                                   2375 ;	E:\Works\NSHET\sys.c:260: x2 = x % 10;
      0018E9 90 87 00         [24] 2376 	mov	dptr,#0x8700
      0018EC 75 F0 93         [24] 2377 	mov	b,#0x93
      0018EF 74 03            [12] 2378 	mov	a,#0x03
      0018F1 12 1F 46         [24] 2379 	lcall	__divulong
      0018F4 AC 82            [24] 2380 	mov	r4,dpl
      0018F6 AD 83            [24] 2381 	mov	r5,dph
      0018F8 AE F0            [24] 2382 	mov	r6,b
      0018FA FF               [12] 2383 	mov	r7,a
      0018FB 90 00 A6         [24] 2384 	mov	dptr,#__modulong_PARM_2
      0018FE 74 0A            [12] 2385 	mov	a,#0x0a
      001900 F0               [24] 2386 	movx	@dptr,a
      001901 E4               [12] 2387 	clr	a
      001902 A3               [24] 2388 	inc	dptr
      001903 F0               [24] 2389 	movx	@dptr,a
      001904 A3               [24] 2390 	inc	dptr
      001905 F0               [24] 2391 	movx	@dptr,a
      001906 A3               [24] 2392 	inc	dptr
      001907 F0               [24] 2393 	movx	@dptr,a
      001908 8C 82            [24] 2394 	mov	dpl,r4
      00190A 8D 83            [24] 2395 	mov	dph,r5
      00190C 8E F0            [24] 2396 	mov	b,r6
      00190E EF               [12] 2397 	mov	a,r7
      00190F C0 07            [24] 2398 	push	ar7
      001911 C0 06            [24] 2399 	push	ar6
      001913 C0 05            [24] 2400 	push	ar5
      001915 C0 04            [24] 2401 	push	ar4
      001917 12 1D 35         [24] 2402 	lcall	__modulong
      00191A A8 82            [24] 2403 	mov	r0,dpl
      00191C D0 04            [24] 2404 	pop	ar4
      00191E D0 05            [24] 2405 	pop	ar5
      001920 D0 06            [24] 2406 	pop	ar6
      001922 D0 07            [24] 2407 	pop	ar7
      001924 90 00 73         [24] 2408 	mov	dptr,#_x2
      001927 E8               [12] 2409 	mov	a,r0
      001928 F0               [24] 2410 	movx	@dptr,a
                                   2411 ;	E:\Works\NSHET\sys.c:261: x /= 10;
      001929 90 00 AF         [24] 2412 	mov	dptr,#__divulong_PARM_2
      00192C 74 0A            [12] 2413 	mov	a,#0x0a
      00192E F0               [24] 2414 	movx	@dptr,a
      00192F E4               [12] 2415 	clr	a
      001930 A3               [24] 2416 	inc	dptr
      001931 F0               [24] 2417 	movx	@dptr,a
      001932 A3               [24] 2418 	inc	dptr
      001933 F0               [24] 2419 	movx	@dptr,a
      001934 A3               [24] 2420 	inc	dptr
      001935 F0               [24] 2421 	movx	@dptr,a
      001936 8C 82            [24] 2422 	mov	dpl,r4
      001938 8D 83            [24] 2423 	mov	dph,r5
      00193A 8E F0            [24] 2424 	mov	b,r6
      00193C EF               [12] 2425 	mov	a,r7
      00193D C0 00            [24] 2426 	push	ar0
      00193F 12 1F 46         [24] 2427 	lcall	__divulong
      001942 AC 82            [24] 2428 	mov	r4,dpl
      001944 AD 83            [24] 2429 	mov	r5,dph
      001946 AE F0            [24] 2430 	mov	r6,b
      001948 FF               [12] 2431 	mov	r7,a
      001949 D0 00            [24] 2432 	pop	ar0
      00194B 90 00 6F         [24] 2433 	mov	dptr,#_x
      00194E EC               [12] 2434 	mov	a,r4
      00194F F0               [24] 2435 	movx	@dptr,a
      001950 ED               [12] 2436 	mov	a,r5
      001951 A3               [24] 2437 	inc	dptr
      001952 F0               [24] 2438 	movx	@dptr,a
      001953 EE               [12] 2439 	mov	a,r6
      001954 A3               [24] 2440 	inc	dptr
      001955 F0               [24] 2441 	movx	@dptr,a
      001956 EF               [12] 2442 	mov	a,r7
      001957 A3               [24] 2443 	inc	dptr
      001958 F0               [24] 2444 	movx	@dptr,a
                                   2445 ;	E:\Works\NSHET\sys.c:262: if (x2 >= 5) x++;
      001959 B8 05 00         [24] 2446 	cjne	r0,#0x05,00109$
      00195C                       2447 00109$:
      00195C 40 13            [24] 2448 	jc	00102$
      00195E 90 00 6F         [24] 2449 	mov	dptr,#_x
      001961 74 01            [12] 2450 	mov	a,#0x01
      001963 2C               [12] 2451 	add	a,r4
      001964 F0               [24] 2452 	movx	@dptr,a
      001965 E4               [12] 2453 	clr	a
      001966 3D               [12] 2454 	addc	a,r5
      001967 A3               [24] 2455 	inc	dptr
      001968 F0               [24] 2456 	movx	@dptr,a
      001969 E4               [12] 2457 	clr	a
      00196A 3E               [12] 2458 	addc	a,r6
      00196B A3               [24] 2459 	inc	dptr
      00196C F0               [24] 2460 	movx	@dptr,a
      00196D E4               [12] 2461 	clr	a
      00196E 3F               [12] 2462 	addc	a,r7
      00196F A3               [24] 2463 	inc	dptr
      001970 F0               [24] 2464 	movx	@dptr,a
      001971                       2465 00102$:
                                   2466 ;	E:\Works\NSHET\sys.c:263: SER1_DLM = x >> 8;
      001971 90 00 6F         [24] 2467 	mov	dptr,#_x
      001974 E0               [24] 2468 	movx	a,@dptr
      001975 FC               [12] 2469 	mov	r4,a
      001976 A3               [24] 2470 	inc	dptr
      001977 E0               [24] 2471 	movx	a,@dptr
      001978 FD               [12] 2472 	mov	r5,a
      001979 A3               [24] 2473 	inc	dptr
      00197A E0               [24] 2474 	movx	a,@dptr
      00197B A3               [24] 2475 	inc	dptr
      00197C E0               [24] 2476 	movx	a,@dptr
      00197D 8D 91            [24] 2477 	mov	_SER1_IER,r5
                                   2478 ;	E:\Works\NSHET\sys.c:264: SER1_DLL = x & 0xFF;
      00197F 8C 9A            [24] 2479 	mov	_SER1_FIFO,r4
                                   2480 ;	E:\Works\NSHET\sys.c:265: SER1_LCR &= ~bLCR_DLAB;
      001981 53 93 7F         [24] 2481 	anl	_SER1_LCR,#0x7f
                                   2482 ;	E:\Works\NSHET\sys.c:267: XBUS_AUX |= bALE_CLK_EN;
      001984 43 A2 10         [24] 2483 	orl	_XBUS_AUX,#0x10
                                   2484 ;	E:\Works\NSHET\sys.c:269: SER1_LCR |= MASK_U1_WORD_SZ;
      001987 43 93 03         [24] 2485 	orl	_SER1_LCR,#0x03
                                   2486 ;	E:\Works\NSHET\sys.c:270: SER1_LCR &= ~(bLCR_PAR_EN | bLCR_STOP_BIT);
      00198A 53 93 F3         [24] 2487 	anl	_SER1_LCR,#0xf3
                                   2488 ;	E:\Works\NSHET\sys.c:272: SER1_IER |= ((2 << 4) & MASK_U1_PIN_MOD);
      00198D 43 91 20         [24] 2489 	orl	_SER1_IER,#0x20
                                   2490 ;	E:\Works\NSHET\sys.c:274: SER1_MCR |= bMCR_OUT2;
      001990 43 94 08         [24] 2491 	orl	_SER1_MCR,#0x08
                                   2492 ;	E:\Works\NSHET\sys.c:275: x2 = SER1_IIR;
      001993 90 00 73         [24] 2493 	mov	dptr,#_x2
      001996 E5 92            [12] 2494 	mov	a,_SER1_IIR
      001998 F0               [24] 2495 	movx	@dptr,a
                                   2496 ;	E:\Works\NSHET\sys.c:277: SER1_ADDR |= 0xFF;
      001999 E5 97            [12] 2497 	mov	a,_SER1_ADDR
      00199B 75 97 FF         [24] 2498 	mov	_SER1_ADDR,#0xff
                                   2499 ;	E:\Works\NSHET\sys.c:279: IE_UART1 = 1;
                                   2500 ;	assignBit
      00199E D2 EC            [12] 2501 	setb	_IE_UART1
                                   2502 ;	E:\Works\NSHET\sys.c:281: sysTickConfig();
                                   2503 ;	E:\Works\NSHET\sys.c:282: }
      0019A0 02 14 97         [24] 2504 	ljmp	_sysTickConfig
                                   2505 ;------------------------------------------------------------
                                   2506 ;Allocation info for local variables in function 'uart1Send'
                                   2507 ;------------------------------------------------------------
                                   2508 ;data                      Allocated with name '_uart1Send_data_65536_61'
                                   2509 ;------------------------------------------------------------
                                   2510 ;	E:\Works\NSHET\sys.c:284: void uart1Send(uint8_t data) {
                                   2511 ;	-----------------------------------------
                                   2512 ;	 function uart1Send
                                   2513 ;	-----------------------------------------
      0019A3                       2514 _uart1Send:
      0019A3 E5 82            [12] 2515 	mov	a,dpl
      0019A5 90 00 8A         [24] 2516 	mov	dptr,#_uart1Send_data_65536_61
      0019A8 F0               [24] 2517 	movx	@dptr,a
                                   2518 ;	E:\Works\NSHET\sys.c:285: while ((SER1_LSR & bLSR_T_FIFO_EMP) == 0);
      0019A9                       2519 00101$:
      0019A9 E5 95            [12] 2520 	mov	a,_SER1_LSR
      0019AB 30 E5 FB         [24] 2521 	jnb	acc.5,00101$
                                   2522 ;	E:\Works\NSHET\sys.c:286: SER1_THR = data;
      0019AE 90 00 8A         [24] 2523 	mov	dptr,#_uart1Send_data_65536_61
      0019B1 E0               [24] 2524 	movx	a,@dptr
      0019B2 F5 9A            [12] 2525 	mov	_SER1_FIFO,a
                                   2526 ;	E:\Works\NSHET\sys.c:287: }
      0019B4 22               [24] 2527 	ret
                                   2528 ;------------------------------------------------------------
                                   2529 ;Allocation info for local variables in function 'uart1Write'
                                   2530 ;------------------------------------------------------------
                                   2531 ;s                         Allocated with name '_uart1Write_s_65536_63'
                                   2532 ;------------------------------------------------------------
                                   2533 ;	E:\Works\NSHET\sys.c:289: void uart1Write(char* s) {
                                   2534 ;	-----------------------------------------
                                   2535 ;	 function uart1Write
                                   2536 ;	-----------------------------------------
      0019B5                       2537 _uart1Write:
      0019B5 AF F0            [24] 2538 	mov	r7,b
      0019B7 AE 83            [24] 2539 	mov	r6,dph
      0019B9 E5 82            [12] 2540 	mov	a,dpl
      0019BB 90 00 8B         [24] 2541 	mov	dptr,#_uart1Write_s_65536_63
      0019BE F0               [24] 2542 	movx	@dptr,a
      0019BF EE               [12] 2543 	mov	a,r6
      0019C0 A3               [24] 2544 	inc	dptr
      0019C1 F0               [24] 2545 	movx	@dptr,a
      0019C2 EF               [12] 2546 	mov	a,r7
      0019C3 A3               [24] 2547 	inc	dptr
      0019C4 F0               [24] 2548 	movx	@dptr,a
                                   2549 ;	E:\Works\NSHET\sys.c:290: while (*s) {
      0019C5 90 00 8B         [24] 2550 	mov	dptr,#_uart1Write_s_65536_63
      0019C8 E0               [24] 2551 	movx	a,@dptr
      0019C9 FD               [12] 2552 	mov	r5,a
      0019CA A3               [24] 2553 	inc	dptr
      0019CB E0               [24] 2554 	movx	a,@dptr
      0019CC FE               [12] 2555 	mov	r6,a
      0019CD A3               [24] 2556 	inc	dptr
      0019CE E0               [24] 2557 	movx	a,@dptr
      0019CF FF               [12] 2558 	mov	r7,a
      0019D0                       2559 00101$:
      0019D0 8D 82            [24] 2560 	mov	dpl,r5
      0019D2 8E 83            [24] 2561 	mov	dph,r6
      0019D4 8F F0            [24] 2562 	mov	b,r7
      0019D6 12 32 FE         [24] 2563 	lcall	__gptrget
      0019D9 FC               [12] 2564 	mov	r4,a
      0019DA 60 23            [24] 2565 	jz	00108$
                                   2566 ;	E:\Works\NSHET\sys.c:291: uart1Send(*s++);
      0019DC 0D               [12] 2567 	inc	r5
      0019DD BD 00 01         [24] 2568 	cjne	r5,#0x00,00116$
      0019E0 0E               [12] 2569 	inc	r6
      0019E1                       2570 00116$:
      0019E1 90 00 8B         [24] 2571 	mov	dptr,#_uart1Write_s_65536_63
      0019E4 ED               [12] 2572 	mov	a,r5
      0019E5 F0               [24] 2573 	movx	@dptr,a
      0019E6 EE               [12] 2574 	mov	a,r6
      0019E7 A3               [24] 2575 	inc	dptr
      0019E8 F0               [24] 2576 	movx	@dptr,a
      0019E9 EF               [12] 2577 	mov	a,r7
      0019EA A3               [24] 2578 	inc	dptr
      0019EB F0               [24] 2579 	movx	@dptr,a
      0019EC 8C 82            [24] 2580 	mov	dpl,r4
      0019EE C0 07            [24] 2581 	push	ar7
      0019F0 C0 06            [24] 2582 	push	ar6
      0019F2 C0 05            [24] 2583 	push	ar5
      0019F4 12 19 A3         [24] 2584 	lcall	_uart1Send
      0019F7 D0 05            [24] 2585 	pop	ar5
      0019F9 D0 06            [24] 2586 	pop	ar6
      0019FB D0 07            [24] 2587 	pop	ar7
      0019FD 80 D1            [24] 2588 	sjmp	00101$
      0019FF                       2589 00108$:
      0019FF 90 00 8B         [24] 2590 	mov	dptr,#_uart1Write_s_65536_63
      001A02 ED               [12] 2591 	mov	a,r5
      001A03 F0               [24] 2592 	movx	@dptr,a
      001A04 EE               [12] 2593 	mov	a,r6
      001A05 A3               [24] 2594 	inc	dptr
      001A06 F0               [24] 2595 	movx	@dptr,a
      001A07 EF               [12] 2596 	mov	a,r7
      001A08 A3               [24] 2597 	inc	dptr
      001A09 F0               [24] 2598 	movx	@dptr,a
                                   2599 ;	E:\Works\NSHET\sys.c:293: }
      001A0A 22               [24] 2600 	ret
                                   2601 ;------------------------------------------------------------
                                   2602 ;Allocation info for local variables in function 'uart1Get'
                                   2603 ;------------------------------------------------------------
                                   2604 ;	E:\Works\NSHET\sys.c:296: uint8_t uart1Get() {
                                   2605 ;	-----------------------------------------
                                   2606 ;	 function uart1Get
                                   2607 ;	-----------------------------------------
      001A0B                       2608 _uart1Get:
                                   2609 ;	E:\Works\NSHET\sys.c:297: u1t = sysGetTickCount();
      001A0B 12 14 E7         [24] 2610 	lcall	_sysGetTickCount
      001A0E AC 82            [24] 2611 	mov	r4,dpl
      001A10 AD 83            [24] 2612 	mov	r5,dph
      001A12 AE F0            [24] 2613 	mov	r6,b
      001A14 FF               [12] 2614 	mov	r7,a
      001A15 90 00 8E         [24] 2615 	mov	dptr,#_u1t
      001A18 EC               [12] 2616 	mov	a,r4
      001A19 F0               [24] 2617 	movx	@dptr,a
      001A1A ED               [12] 2618 	mov	a,r5
      001A1B A3               [24] 2619 	inc	dptr
      001A1C F0               [24] 2620 	movx	@dptr,a
      001A1D EE               [12] 2621 	mov	a,r6
      001A1E A3               [24] 2622 	inc	dptr
      001A1F F0               [24] 2623 	movx	@dptr,a
      001A20 EF               [12] 2624 	mov	a,r7
      001A21 A3               [24] 2625 	inc	dptr
      001A22 F0               [24] 2626 	movx	@dptr,a
                                   2627 ;	E:\Works\NSHET\sys.c:298: while ((SER1_LSR & bLSR_DATA_RDY) == 0) {
      001A23                       2628 00103$:
      001A23 E5 95            [12] 2629 	mov	a,_SER1_LSR
      001A25 20 E0 3D         [24] 2630 	jb	acc.0,00105$
                                   2631 ;	E:\Works\NSHET\sys.c:299: if (sysGetTickCount() - u1t > UART1_TIMEOUT) {
      001A28 12 14 E7         [24] 2632 	lcall	_sysGetTickCount
      001A2B AC 82            [24] 2633 	mov	r4,dpl
      001A2D AD 83            [24] 2634 	mov	r5,dph
      001A2F AE F0            [24] 2635 	mov	r6,b
      001A31 FF               [12] 2636 	mov	r7,a
      001A32 90 00 8E         [24] 2637 	mov	dptr,#_u1t
      001A35 E0               [24] 2638 	movx	a,@dptr
      001A36 F8               [12] 2639 	mov	r0,a
      001A37 A3               [24] 2640 	inc	dptr
      001A38 E0               [24] 2641 	movx	a,@dptr
      001A39 F9               [12] 2642 	mov	r1,a
      001A3A A3               [24] 2643 	inc	dptr
      001A3B E0               [24] 2644 	movx	a,@dptr
      001A3C FA               [12] 2645 	mov	r2,a
      001A3D A3               [24] 2646 	inc	dptr
      001A3E E0               [24] 2647 	movx	a,@dptr
      001A3F FB               [12] 2648 	mov	r3,a
      001A40 EC               [12] 2649 	mov	a,r4
      001A41 C3               [12] 2650 	clr	c
      001A42 98               [12] 2651 	subb	a,r0
      001A43 FC               [12] 2652 	mov	r4,a
      001A44 ED               [12] 2653 	mov	a,r5
      001A45 99               [12] 2654 	subb	a,r1
      001A46 FD               [12] 2655 	mov	r5,a
      001A47 EE               [12] 2656 	mov	a,r6
      001A48 9A               [12] 2657 	subb	a,r2
      001A49 FE               [12] 2658 	mov	r6,a
      001A4A EF               [12] 2659 	mov	a,r7
      001A4B 9B               [12] 2660 	subb	a,r3
      001A4C FF               [12] 2661 	mov	r7,a
      001A4D C3               [12] 2662 	clr	c
      001A4E 74 E8            [12] 2663 	mov	a,#0xe8
      001A50 9C               [12] 2664 	subb	a,r4
      001A51 74 03            [12] 2665 	mov	a,#0x03
      001A53 9D               [12] 2666 	subb	a,r5
      001A54 E4               [12] 2667 	clr	a
      001A55 9E               [12] 2668 	subb	a,r6
      001A56 E4               [12] 2669 	clr	a
      001A57 9F               [12] 2670 	subb	a,r7
      001A58 50 C9            [24] 2671 	jnc	00103$
                                   2672 ;	E:\Works\NSHET\sys.c:300: u1t = 0;
      001A5A 90 00 8E         [24] 2673 	mov	dptr,#_u1t
      001A5D E4               [12] 2674 	clr	a
      001A5E F0               [24] 2675 	movx	@dptr,a
      001A5F A3               [24] 2676 	inc	dptr
      001A60 F0               [24] 2677 	movx	@dptr,a
      001A61 A3               [24] 2678 	inc	dptr
      001A62 F0               [24] 2679 	movx	@dptr,a
      001A63 A3               [24] 2680 	inc	dptr
      001A64 F0               [24] 2681 	movx	@dptr,a
                                   2682 ;	E:\Works\NSHET\sys.c:301: break;
      001A65                       2683 00105$:
                                   2684 ;	E:\Works\NSHET\sys.c:304: return SER1_RBR;
      001A65 85 9A 82         [24] 2685 	mov	dpl,_SER1_FIFO
                                   2686 ;	E:\Works\NSHET\sys.c:305: }
      001A68 22               [24] 2687 	ret
                                   2688 ;------------------------------------------------------------
                                   2689 ;Allocation info for local variables in function 'uart1Gets'
                                   2690 ;------------------------------------------------------------
                                   2691 ;len                       Allocated with name '_uart1Gets_PARM_2'
                                   2692 ;dat                       Allocated with name '_uart1Gets_dat_65536_69'
                                   2693 ;------------------------------------------------------------
                                   2694 ;	E:\Works\NSHET\sys.c:308: uint8_t uart1Gets(uint8_t* dat, uint8_t len) {
                                   2695 ;	-----------------------------------------
                                   2696 ;	 function uart1Gets
                                   2697 ;	-----------------------------------------
      001A69                       2698 _uart1Gets:
      001A69 AF F0            [24] 2699 	mov	r7,b
      001A6B AE 83            [24] 2700 	mov	r6,dph
      001A6D E5 82            [12] 2701 	mov	a,dpl
      001A6F 90 00 94         [24] 2702 	mov	dptr,#_uart1Gets_dat_65536_69
      001A72 F0               [24] 2703 	movx	@dptr,a
      001A73 EE               [12] 2704 	mov	a,r6
      001A74 A3               [24] 2705 	inc	dptr
      001A75 F0               [24] 2706 	movx	@dptr,a
      001A76 EF               [12] 2707 	mov	a,r7
      001A77 A3               [24] 2708 	inc	dptr
      001A78 F0               [24] 2709 	movx	@dptr,a
                                   2710 ;	E:\Works\NSHET\sys.c:309: for (u1c = 0; u1c < len; u1c++) {
      001A79 90 00 92         [24] 2711 	mov	dptr,#_u1c
      001A7C E4               [12] 2712 	clr	a
      001A7D F0               [24] 2713 	movx	@dptr,a
      001A7E 90 00 94         [24] 2714 	mov	dptr,#_uart1Gets_dat_65536_69
      001A81 E0               [24] 2715 	movx	a,@dptr
      001A82 FD               [12] 2716 	mov	r5,a
      001A83 A3               [24] 2717 	inc	dptr
      001A84 E0               [24] 2718 	movx	a,@dptr
      001A85 FE               [12] 2719 	mov	r6,a
      001A86 A3               [24] 2720 	inc	dptr
      001A87 E0               [24] 2721 	movx	a,@dptr
      001A88 FF               [12] 2722 	mov	r7,a
      001A89 90 00 93         [24] 2723 	mov	dptr,#_uart1Gets_PARM_2
      001A8C E0               [24] 2724 	movx	a,@dptr
      001A8D FC               [12] 2725 	mov	r4,a
      001A8E                       2726 00105$:
      001A8E 90 00 92         [24] 2727 	mov	dptr,#_u1c
      001A91 E0               [24] 2728 	movx	a,@dptr
      001A92 FB               [12] 2729 	mov	r3,a
      001A93 C3               [12] 2730 	clr	c
      001A94 9C               [12] 2731 	subb	a,r4
      001A95 50 53            [24] 2732 	jnc	00103$
                                   2733 ;	E:\Works\NSHET\sys.c:310: dat[u1c] = uart1Get();
      001A97 EB               [12] 2734 	mov	a,r3
      001A98 2D               [12] 2735 	add	a,r5
      001A99 F9               [12] 2736 	mov	r1,a
      001A9A E4               [12] 2737 	clr	a
      001A9B 3E               [12] 2738 	addc	a,r6
      001A9C FA               [12] 2739 	mov	r2,a
      001A9D 8F 03            [24] 2740 	mov	ar3,r7
      001A9F C0 07            [24] 2741 	push	ar7
      001AA1 C0 06            [24] 2742 	push	ar6
      001AA3 C0 05            [24] 2743 	push	ar5
      001AA5 C0 04            [24] 2744 	push	ar4
      001AA7 C0 03            [24] 2745 	push	ar3
      001AA9 C0 02            [24] 2746 	push	ar2
      001AAB C0 01            [24] 2747 	push	ar1
      001AAD 12 1A 0B         [24] 2748 	lcall	_uart1Get
      001AB0 A8 82            [24] 2749 	mov	r0,dpl
      001AB2 D0 01            [24] 2750 	pop	ar1
      001AB4 D0 02            [24] 2751 	pop	ar2
      001AB6 D0 03            [24] 2752 	pop	ar3
      001AB8 D0 04            [24] 2753 	pop	ar4
      001ABA D0 05            [24] 2754 	pop	ar5
      001ABC D0 06            [24] 2755 	pop	ar6
      001ABE D0 07            [24] 2756 	pop	ar7
      001AC0 89 82            [24] 2757 	mov	dpl,r1
      001AC2 8A 83            [24] 2758 	mov	dph,r2
      001AC4 8B F0            [24] 2759 	mov	b,r3
      001AC6 E8               [12] 2760 	mov	a,r0
      001AC7 12 20 6D         [24] 2761 	lcall	__gptrput
                                   2762 ;	E:\Works\NSHET\sys.c:311: if (u1t == 0) return 0;
      001ACA 90 00 8E         [24] 2763 	mov	dptr,#_u1t
      001ACD E0               [24] 2764 	movx	a,@dptr
      001ACE F5 F0            [12] 2765 	mov	b,a
      001AD0 A3               [24] 2766 	inc	dptr
      001AD1 E0               [24] 2767 	movx	a,@dptr
      001AD2 42 F0            [12] 2768 	orl	b,a
      001AD4 A3               [24] 2769 	inc	dptr
      001AD5 E0               [24] 2770 	movx	a,@dptr
      001AD6 42 F0            [12] 2771 	orl	b,a
      001AD8 A3               [24] 2772 	inc	dptr
      001AD9 E0               [24] 2773 	movx	a,@dptr
      001ADA 45 F0            [12] 2774 	orl	a,b
      001ADC 70 03            [24] 2775 	jnz	00106$
      001ADE F5 82            [12] 2776 	mov	dpl,a
      001AE0 22               [24] 2777 	ret
      001AE1                       2778 00106$:
                                   2779 ;	E:\Works\NSHET\sys.c:309: for (u1c = 0; u1c < len; u1c++) {
      001AE1 90 00 92         [24] 2780 	mov	dptr,#_u1c
      001AE4 E0               [24] 2781 	movx	a,@dptr
      001AE5 24 01            [12] 2782 	add	a,#0x01
      001AE7 F0               [24] 2783 	movx	@dptr,a
      001AE8 80 A4            [24] 2784 	sjmp	00105$
      001AEA                       2785 00103$:
                                   2786 ;	E:\Works\NSHET\sys.c:313: return 1;
      001AEA 75 82 01         [24] 2787 	mov	dpl,#0x01
                                   2788 ;	E:\Works\NSHET\sys.c:314: }
      001AED 22               [24] 2789 	ret
                                   2790 ;------------------------------------------------------------
                                   2791 ;Allocation info for local variables in function 'pwm3Init'
                                   2792 ;------------------------------------------------------------
                                   2793 ;freq                      Allocated with name '_pwm3Init_freq_65536_73'
                                   2794 ;------------------------------------------------------------
                                   2795 ;	E:\Works\NSHET\sys.c:316: void pwm3Init(uint32_t freq) {
                                   2796 ;	-----------------------------------------
                                   2797 ;	 function pwm3Init
                                   2798 ;	-----------------------------------------
      001AEE                       2799 _pwm3Init:
      001AEE AF 82            [24] 2800 	mov	r7,dpl
      001AF0 AE 83            [24] 2801 	mov	r6,dph
      001AF2 AD F0            [24] 2802 	mov	r5,b
      001AF4 FC               [12] 2803 	mov	r4,a
      001AF5 90 00 97         [24] 2804 	mov	dptr,#_pwm3Init_freq_65536_73
      001AF8 EF               [12] 2805 	mov	a,r7
      001AF9 F0               [24] 2806 	movx	@dptr,a
      001AFA EE               [12] 2807 	mov	a,r6
      001AFB A3               [24] 2808 	inc	dptr
      001AFC F0               [24] 2809 	movx	@dptr,a
      001AFD ED               [12] 2810 	mov	a,r5
      001AFE A3               [24] 2811 	inc	dptr
      001AFF F0               [24] 2812 	movx	@dptr,a
      001B00 EC               [12] 2813 	mov	a,r4
      001B01 A3               [24] 2814 	inc	dptr
      001B02 F0               [24] 2815 	movx	@dptr,a
                                   2816 ;	E:\Works\NSHET\sys.c:317: P1_DIR |= bPWM3;
      001B03 43 BA 04         [24] 2817 	orl	_P1_DIR,#0x04
                                   2818 ;	E:\Works\NSHET\sys.c:318: PORT_CFG &= ~bP1_OC;
      001B06 53 C6 FD         [24] 2819 	anl	_PORT_CFG,#0xfd
                                   2820 ;	E:\Works\NSHET\sys.c:320: T3_SETUP |= bT3_EN_CK_SE;
      001B09 43 A3 01         [24] 2821 	orl	_T3_SETUP,#0x01
                                   2822 ;	E:\Works\NSHET\sys.c:321: x = FREQ_SYS / (freq * 100);
      001B0C 90 00 97         [24] 2823 	mov	dptr,#_pwm3Init_freq_65536_73
      001B0F E0               [24] 2824 	movx	a,@dptr
      001B10 FC               [12] 2825 	mov	r4,a
      001B11 A3               [24] 2826 	inc	dptr
      001B12 E0               [24] 2827 	movx	a,@dptr
      001B13 FD               [12] 2828 	mov	r5,a
      001B14 A3               [24] 2829 	inc	dptr
      001B15 E0               [24] 2830 	movx	a,@dptr
      001B16 FE               [12] 2831 	mov	r6,a
      001B17 A3               [24] 2832 	inc	dptr
      001B18 E0               [24] 2833 	movx	a,@dptr
      001B19 FF               [12] 2834 	mov	r7,a
      001B1A 90 00 D6         [24] 2835 	mov	dptr,#__mullong_PARM_2
      001B1D EC               [12] 2836 	mov	a,r4
      001B1E F0               [24] 2837 	movx	@dptr,a
      001B1F ED               [12] 2838 	mov	a,r5
      001B20 A3               [24] 2839 	inc	dptr
      001B21 F0               [24] 2840 	movx	@dptr,a
      001B22 EE               [12] 2841 	mov	a,r6
      001B23 A3               [24] 2842 	inc	dptr
      001B24 F0               [24] 2843 	movx	@dptr,a
      001B25 EF               [12] 2844 	mov	a,r7
      001B26 A3               [24] 2845 	inc	dptr
      001B27 F0               [24] 2846 	movx	@dptr,a
      001B28 90 00 64         [24] 2847 	mov	dptr,#(0x64&0x00ff)
      001B2B E4               [12] 2848 	clr	a
      001B2C F5 F0            [12] 2849 	mov	b,a
      001B2E 12 24 DC         [24] 2850 	lcall	__mullong
      001B31 AC 82            [24] 2851 	mov	r4,dpl
      001B33 AD 83            [24] 2852 	mov	r5,dph
      001B35 AE F0            [24] 2853 	mov	r6,b
      001B37 FF               [12] 2854 	mov	r7,a
      001B38 90 00 AF         [24] 2855 	mov	dptr,#__divulong_PARM_2
      001B3B EC               [12] 2856 	mov	a,r4
      001B3C F0               [24] 2857 	movx	@dptr,a
      001B3D ED               [12] 2858 	mov	a,r5
      001B3E A3               [24] 2859 	inc	dptr
      001B3F F0               [24] 2860 	movx	@dptr,a
      001B40 EE               [12] 2861 	mov	a,r6
      001B41 A3               [24] 2862 	inc	dptr
      001B42 F0               [24] 2863 	movx	@dptr,a
      001B43 EF               [12] 2864 	mov	a,r7
      001B44 A3               [24] 2865 	inc	dptr
      001B45 F0               [24] 2866 	movx	@dptr,a
      001B46 90 6C 00         [24] 2867 	mov	dptr,#0x6c00
      001B49 75 F0 DC         [24] 2868 	mov	b,#0xdc
      001B4C 74 02            [12] 2869 	mov	a,#0x02
      001B4E 12 1F 46         [24] 2870 	lcall	__divulong
      001B51 AC 82            [24] 2871 	mov	r4,dpl
      001B53 AD 83            [24] 2872 	mov	r5,dph
      001B55 AE F0            [24] 2873 	mov	r6,b
      001B57 FF               [12] 2874 	mov	r7,a
      001B58 90 00 6F         [24] 2875 	mov	dptr,#_x
      001B5B EC               [12] 2876 	mov	a,r4
      001B5C F0               [24] 2877 	movx	@dptr,a
      001B5D ED               [12] 2878 	mov	a,r5
      001B5E A3               [24] 2879 	inc	dptr
      001B5F F0               [24] 2880 	movx	@dptr,a
      001B60 EE               [12] 2881 	mov	a,r6
      001B61 A3               [24] 2882 	inc	dptr
      001B62 F0               [24] 2883 	movx	@dptr,a
      001B63 EF               [12] 2884 	mov	a,r7
      001B64 A3               [24] 2885 	inc	dptr
      001B65 F0               [24] 2886 	movx	@dptr,a
                                   2887 ;	E:\Works\NSHET\sys.c:322: T3_CK_SE = x & 0x0FFF;
      001B66 8C A4            [24] 2888 	mov	((_T3_COUNT >> 0) & 0xFF),r4
      001B68 74 0F            [12] 2889 	mov	a,#0x0f
      001B6A 5D               [12] 2890 	anl	a,r5
      001B6B F5 A5            [12] 2891 	mov	((_T3_COUNT >> 8) & 0xFF),a
                                   2892 ;	E:\Works\NSHET\sys.c:323: T3_SETUP &= ~bT3_EN_CK_SE;
      001B6D 53 A3 FE         [24] 2893 	anl	_T3_SETUP,#0xfe
                                   2894 ;	E:\Works\NSHET\sys.c:324: T3_END = 100;
      001B70 75 A6 64         [24] 2895 	mov	((_T3_END >> 0) & 0xFF),#0x64
      001B73 75 A7 00         [24] 2896 	mov	((_T3_END >> 8) & 0xFF),#0x00
                                   2897 ;	E:\Works\NSHET\sys.c:325: T3_CTRL |= (bT3_OUT_EN | bT3_PWM_POLAR);
      001B76 43 AA 28         [24] 2898 	orl	_T3_CTRL,#0x28
                                   2899 ;	E:\Works\NSHET\sys.c:326: T3_CTRL &= ~bT3_CLR_ALL;
      001B79 53 AA FD         [24] 2900 	anl	_T3_CTRL,#0xfd
                                   2901 ;	E:\Works\NSHET\sys.c:327: T3_CTRL |= bT3_CNT_EN;
      001B7C 43 AA 04         [24] 2902 	orl	_T3_CTRL,#0x04
                                   2903 ;	E:\Works\NSHET\sys.c:328: T3_FIFO = 0;
      001B7F E4               [12] 2904 	clr	a
      001B80 F5 AE            [12] 2905 	mov	((_T3_FIFO >> 0) & 0xFF),a
      001B82 F5 AF            [12] 2906 	mov	((_T3_FIFO >> 8) & 0xFF),a
                                   2907 ;	E:\Works\NSHET\sys.c:329: }
      001B84 22               [24] 2908 	ret
                                   2909 ;------------------------------------------------------------
                                   2910 ;Allocation info for local variables in function 'pwm3Duty'
                                   2911 ;------------------------------------------------------------
                                   2912 ;duty                      Allocated with name '_pwm3Duty_duty_65536_75'
                                   2913 ;------------------------------------------------------------
                                   2914 ;	E:\Works\NSHET\sys.c:331: void pwm3Duty(uint8_t duty) {
                                   2915 ;	-----------------------------------------
                                   2916 ;	 function pwm3Duty
                                   2917 ;	-----------------------------------------
      001B85                       2918 _pwm3Duty:
      001B85 E5 82            [12] 2919 	mov	a,dpl
      001B87 90 00 9B         [24] 2920 	mov	dptr,#_pwm3Duty_duty_65536_75
      001B8A F0               [24] 2921 	movx	@dptr,a
                                   2922 ;	E:\Works\NSHET\sys.c:332: T3_FIFO = duty;
      001B8B E0               [24] 2923 	movx	a,@dptr
      001B8C FF               [12] 2924 	mov	r7,a
      001B8D 8F AE            [24] 2925 	mov	((_T3_FIFO >> 0) & 0xFF),r7
      001B8F 75 AF 00         [24] 2926 	mov	((_T3_FIFO >> 8) & 0xFF),#0x00
                                   2927 ;	E:\Works\NSHET\sys.c:333: }
      001B92 22               [24] 2928 	ret
                                   2929 ;------------------------------------------------------------
                                   2930 ;Allocation info for local variables in function 'adcInit'
                                   2931 ;------------------------------------------------------------
                                   2932 ;	E:\Works\NSHET\sys.c:335: void adcInit() {
                                   2933 ;	-----------------------------------------
                                   2934 ;	 function adcInit
                                   2935 ;	-----------------------------------------
      001B93                       2936 _adcInit:
                                   2937 ;	E:\Works\NSHET\sys.c:336: P1_IE = 0x3F; // P16 P17
      001B93 75 B9 3F         [24] 2938 	mov	_P1_IE,#0x3f
                                   2939 ;	E:\Works\NSHET\sys.c:337: ADC_SETUP |= bADC_POWER_EN;
      001B96 43 F6 04         [24] 2940 	orl	_ADC_SETUP,#0x04
                                   2941 ;	E:\Works\NSHET\sys.c:338: ADC_CK_SE = FREQ_SYS / 8000000;
      001B99 75 EF 06         [24] 2942 	mov	_ADC_CK_SE,#0x06
                                   2943 ;	E:\Works\NSHET\sys.c:339: delay_us(100);
      001B9C 90 00 64         [24] 2944 	mov	dptr,#0x0064
                                   2945 ;	E:\Works\NSHET\sys.c:340: }
      001B9F 02 14 42         [24] 2946 	ljmp	_delay_us
                                   2947 ;------------------------------------------------------------
                                   2948 ;Allocation info for local variables in function 'adcGet'
                                   2949 ;------------------------------------------------------------
                                   2950 ;channel                   Allocated with name '_adcGet_channel_65536_78'
                                   2951 ;------------------------------------------------------------
                                   2952 ;	E:\Works\NSHET\sys.c:342: uint16_t adcGet(uint8_t channel) {
                                   2953 ;	-----------------------------------------
                                   2954 ;	 function adcGet
                                   2955 ;	-----------------------------------------
      001BA2                       2956 _adcGet:
      001BA2 E5 82            [12] 2957 	mov	a,dpl
      001BA4 90 00 9C         [24] 2958 	mov	dptr,#_adcGet_channel_65536_78
      001BA7 F0               [24] 2959 	movx	@dptr,a
                                   2960 ;	E:\Works\NSHET\sys.c:343: channel &= 0x7;
      001BA8 E0               [24] 2961 	movx	a,@dptr
      001BA9 53 E0 07         [24] 2962 	anl	acc,#0x07
      001BAC F0               [24] 2963 	movx	@dptr,a
                                   2964 ;	E:\Works\NSHET\sys.c:344: ADC_CHANN = 1 << channel;
      001BAD 90 00 9C         [24] 2965 	mov	dptr,#_adcGet_channel_65536_78
      001BB0 E0               [24] 2966 	movx	a,@dptr
      001BB1 FF               [12] 2967 	mov	r7,a
      001BB2 8F F0            [24] 2968 	mov	b,r7
      001BB4 05 F0            [12] 2969 	inc	b
      001BB6 74 01            [12] 2970 	mov	a,#0x01
      001BB8 80 02            [24] 2971 	sjmp	00116$
      001BBA                       2972 00114$:
      001BBA 25 E0            [12] 2973 	add	a,acc
      001BBC                       2974 00116$:
      001BBC D5 F0 FB         [24] 2975 	djnz	b,00114$
      001BBF F5 F3            [12] 2976 	mov	_ADC_CHANN,a
                                   2977 ;	E:\Works\NSHET\sys.c:345: ADC_CTRL |= bADC_SAMPLE;
      001BC1 43 F2 80         [24] 2978 	orl	_ADC_CTRL,#0x80
                                   2979 ;	E:\Works\NSHET\sys.c:346: delay_us(50);
      001BC4 90 00 32         [24] 2980 	mov	dptr,#0x0032
      001BC7 12 14 42         [24] 2981 	lcall	_delay_us
                                   2982 ;	E:\Works\NSHET\sys.c:347: ADC_CTRL &= ~bADC_SAMPLE;
      001BCA 53 F2 7F         [24] 2983 	anl	_ADC_CTRL,#0x7f
                                   2984 ;	E:\Works\NSHET\sys.c:348: while ((ADC_STAT & bADC_IF_ACT) == 0);
      001BCD                       2985 00101$:
      001BCD E5 F1            [12] 2986 	mov	a,_ADC_STAT
      001BCF 30 E4 FB         [24] 2987 	jnb	acc.4,00101$
                                   2988 ;	E:\Works\NSHET\sys.c:349: ADC_STAT |= bADC_IF_ACT;
      001BD2 43 F1 10         [24] 2989 	orl	_ADC_STAT,#0x10
                                   2990 ;	E:\Works\NSHET\sys.c:350: return ADC_FIFO;
      001BD5 AE F4            [24] 2991 	mov	r6,((_ADC_FIFO >> 0) & 0xFF)
      001BD7 AF F5            [24] 2992 	mov	r7,((_ADC_FIFO >> 8) & 0xFF)
      001BD9 8E 82            [24] 2993 	mov	dpl,r6
      001BDB 8F 83            [24] 2994 	mov	dph,r7
                                   2995 ;	E:\Works\NSHET\sys.c:351: }
      001BDD 22               [24] 2996 	ret
                                   2997 	.area CSEG    (CODE)
                                   2998 	.area CONST   (CODE)
                                   2999 	.area XINIT   (CODE)
      00519E                       3000 __xinit__sysTickCount:
      00519E 00 00 00 00           3001 	.byte #0x00, #0x00, #0x00, #0x00	; 0
      0051A2                       3002 __xinit__recBuf0:
      0051A2 00                    3003 	.db #0x00	; 0
      0051A3 00                    3004 	.db 0x00
      0051A4 00                    3005 	.db 0x00
      0051A5 00                    3006 	.db 0x00
      0051A6 00                    3007 	.db 0x00
      0051A7 00                    3008 	.db 0x00
      0051A8 00                    3009 	.db 0x00
      0051A9 00                    3010 	.db 0x00
      0051AA 00                    3011 	.db 0x00
      0051AB 00                    3012 	.db 0x00
      0051AC 00                    3013 	.db 0x00
      0051AD 00                    3014 	.db 0x00
      0051AE 00                    3015 	.db 0x00
      0051AF 00                    3016 	.db 0x00
      0051B0 00                    3017 	.db 0x00
      0051B1 00                    3018 	.db 0x00
      0051B2 00                    3019 	.db 0x00
      0051B3 00                    3020 	.db 0x00
      0051B4 00                    3021 	.db 0x00
      0051B5 00                    3022 	.db 0x00
      0051B6 00                    3023 	.db 0x00
      0051B7 00                    3024 	.db 0x00
      0051B8 00                    3025 	.db 0x00
      0051B9 00                    3026 	.db 0x00
      0051BA 00                    3027 	.db 0x00
      0051BB 00                    3028 	.db 0x00
      0051BC 00                    3029 	.db 0x00
      0051BD 00                    3030 	.db 0x00
      0051BE 00                    3031 	.db 0x00
      0051BF 00                    3032 	.db 0x00
      0051C0 00                    3033 	.db 0x00
      0051C1 00                    3034 	.db 0x00
      0051C2                       3035 __xinit__recPtr0:
      0051C2 00                    3036 	.db #0x00	; 0
      0051C3                       3037 __xinit__block_recv_ptr:
      0051C3 00 00 00              3038 	.byte #0x00,#0x00,#0x00
      0051C6                       3039 __xinit__block_recv_pos:
      0051C6 00 00                 3040 	.byte #0x00, #0x00	; 0
      0051C8                       3041 __xinit__block_recv_siz:
      0051C8 00 00                 3042 	.byte #0x00, #0x00	; 0
                                   3043 	.area CABS    (ABS,CODE)
