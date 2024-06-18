                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.0.0 #11528 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module oled
                                      6 	.optsdcc -mmcs51 --model-large
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _pos
                                     12 	.globl _dat
                                     13 	.globl _cmd
                                     14 	.globl _iic_init
                                     15 	.globl ___oled_rd
                                     16 	.globl ___oled_wr
                                     17 	.globl ___oled_nak
                                     18 	.globl ___oled_ack
                                     19 	.globl ___oled_stop
                                     20 	.globl ___oled_start
                                     21 	.globl _free
                                     22 	.globl _malloc
                                     23 	.globl _strlen
                                     24 	.globl _vsprintf
                                     25 	.globl _fontSize
                                     26 	.globl _fontGet
                                     27 	.globl _delay_us
                                     28 	.globl _delay
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
                                    322 	.globl _oledPrint_PARM_5
                                    323 	.globl _oledPrint_PARM_4
                                    324 	.globl _oledPrint_PARM_3
                                    325 	.globl _oledPrint_PARM_2
                                    326 	.globl _oledChar_PARM_5
                                    327 	.globl _oledChar_PARM_4
                                    328 	.globl _oledChar_PARM_3
                                    329 	.globl _oledChar_PARM_2
                                    330 	.globl _oledSize_PARM_2
                                    331 	.globl _pos_PARM_2
                                    332 	.globl _LED_DMA_X
                                    333 	.globl _LED_DMA_XL
                                    334 	.globl _LED_DMA_XH
                                    335 	.globl _LED_DMA_CN
                                    336 	.globl _LED_DMA
                                    337 	.globl _LED_DMA_AL
                                    338 	.globl _LED_DMA_AH
                                    339 	.globl _LED_CK_SE
                                    340 	.globl _LED_DATA
                                    341 	.globl _LED_CTRL
                                    342 	.globl _LED_STAT
                                    343 	.globl _UEP3_DMA
                                    344 	.globl _UEP3_DMA_L
                                    345 	.globl _UEP3_DMA_H
                                    346 	.globl _UEP2_DMA
                                    347 	.globl _UEP2_DMA_L
                                    348 	.globl _UEP2_DMA_H
                                    349 	.globl _UEP1_DMA
                                    350 	.globl _UEP1_DMA_L
                                    351 	.globl _UEP1_DMA_H
                                    352 	.globl _UEP0_DMA
                                    353 	.globl _UEP0_DMA_L
                                    354 	.globl _UEP0_DMA_H
                                    355 	.globl _UEP2_3_MOD
                                    356 	.globl _UEP4_1_MOD
                                    357 	.globl _pLED_DMA_X
                                    358 	.globl _pLED_DMA_XL
                                    359 	.globl _pLED_DMA_XH
                                    360 	.globl _pLED_DMA_CN
                                    361 	.globl _pLED_DMA
                                    362 	.globl _pLED_DMA_AL
                                    363 	.globl _pLED_DMA_AH
                                    364 	.globl _pLED_CK_SE
                                    365 	.globl _pLED_DATA
                                    366 	.globl _pLED_CTRL
                                    367 	.globl _pLED_STAT
                                    368 	.globl _pUEP3_DMA
                                    369 	.globl _pUEP3_DMA_L
                                    370 	.globl _pUEP3_DMA_H
                                    371 	.globl _pUEP2_DMA
                                    372 	.globl _pUEP2_DMA_L
                                    373 	.globl _pUEP2_DMA_H
                                    374 	.globl _pUEP1_DMA
                                    375 	.globl _pUEP1_DMA_L
                                    376 	.globl _pUEP1_DMA_H
                                    377 	.globl _pUEP0_DMA
                                    378 	.globl _pUEP0_DMA_L
                                    379 	.globl _pUEP0_DMA_H
                                    380 	.globl _pUEP2_3_MOD
                                    381 	.globl _pUEP4_1_MOD
                                    382 	.globl _oledInit
                                    383 	.globl _oledBright
                                    384 	.globl _oledClear
                                    385 	.globl _oledSwitch
                                    386 	.globl _oledSize
                                    387 	.globl _oledChar
                                    388 	.globl _oledPrint
                                    389 	.globl _oledPrintf
                                    390 	.globl _oledPrintfc
                                    391 ;--------------------------------------------------------
                                    392 ; special function registers
                                    393 ;--------------------------------------------------------
                                    394 	.area RSEG    (ABS,DATA)
      000000                        395 	.org 0x0000
                           0000D0   396 _PSW	=	0x00d0
                           0000E0   397 _ACC	=	0x00e0
                           0000F0   398 _B	=	0x00f0
                           000081   399 _SP	=	0x0081
                           000082   400 _DPL	=	0x0082
                           000083   401 _DPH	=	0x0083
                           0000A1   402 _SAFE_MOD	=	0x00a1
                           0000B1   403 _GLOBAL_CFG	=	0x00b1
                           000087   404 _PCON	=	0x0087
                           0000B2   405 _PLL_CFG	=	0x00b2
                           0000B3   406 _CLOCK_CFG	=	0x00b3
                           0000EA   407 _SLEEP_CTRL	=	0x00ea
                           0000EB   408 _WAKE_CTRL	=	0x00eb
                           0000FE   409 _RESET_KEEP	=	0x00fe
                           0000FF   410 _WDOG_COUNT	=	0x00ff
                           0000A8   411 _IE	=	0x00a8
                           0000B8   412 _IP	=	0x00b8
                           0000E8   413 _IE_EX	=	0x00e8
                           0000E9   414 _IP_EX	=	0x00e9
                           0000CF   415 _GPIO_IE	=	0x00cf
                           008584   416 _ROM_ADDR	=	0x8584
                           000084   417 _ROM_ADDR_L	=	0x0084
                           000085   418 _ROM_ADDR_H	=	0x0085
                           008F8E   419 _ROM_DATA	=	0x8f8e
                           00008E   420 _ROM_DATA_L	=	0x008e
                           00008F   421 _ROM_DATA_H	=	0x008f
                           000086   422 _ROM_CTRL	=	0x0086
                           000080   423 _P0	=	0x0080
                           0000C4   424 _P0_DIR	=	0x00c4
                           0000C5   425 _P0_PU	=	0x00c5
                           000090   426 _P1	=	0x0090
                           0000B9   427 _P1_IE	=	0x00b9
                           0000BA   428 _P1_DIR	=	0x00ba
                           0000BB   429 _P1_PU	=	0x00bb
                           0000A0   430 _P2	=	0x00a0
                           0000BC   431 _P2_DIR	=	0x00bc
                           0000BD   432 _P2_PU	=	0x00bd
                           0000B0   433 _P3	=	0x00b0
                           0000BE   434 _P3_DIR	=	0x00be
                           0000BF   435 _P3_PU	=	0x00bf
                           0000C0   436 _P4_OUT	=	0x00c0
                           0000C1   437 _P4_IN	=	0x00c1
                           0000C2   438 _P4_DIR	=	0x00c2
                           0000C3   439 _P4_PU	=	0x00c3
                           0000C7   440 _P5_IN	=	0x00c7
                           0000C6   441 _PORT_CFG	=	0x00c6
                           0000CE   442 _PIN_FUNC	=	0x00ce
                           0000A2   443 _XBUS_AUX	=	0x00a2
                           0000FD   444 _XBUS_SPEED	=	0x00fd
                           000088   445 _TCON	=	0x0088
                           000089   446 _TMOD	=	0x0089
                           00008A   447 _TL0	=	0x008a
                           00008B   448 _TL1	=	0x008b
                           00008C   449 _TH0	=	0x008c
                           00008D   450 _TH1	=	0x008d
                           000098   451 _SCON	=	0x0098
                           000099   452 _SBUF	=	0x0099
                           0000C8   453 _T2CON	=	0x00c8
                           0000C9   454 _T2MOD	=	0x00c9
                           00CBCA   455 _RCAP2	=	0xcbca
                           0000CA   456 _RCAP2L	=	0x00ca
                           0000CB   457 _RCAP2H	=	0x00cb
                           00CDCC   458 _T2COUNT	=	0xcdcc
                           0000CC   459 _TL2	=	0x00cc
                           0000CD   460 _TH2	=	0x00cd
                           0000A3   461 _T3_SETUP	=	0x00a3
                           00A5A4   462 _T3_COUNT	=	0xa5a4
                           0000A4   463 _T3_COUNT_L	=	0x00a4
                           0000A5   464 _T3_COUNT_H	=	0x00a5
                           00A7A6   465 _T3_END	=	0xa7a6
                           0000A6   466 _T3_END_L	=	0x00a6
                           0000A7   467 _T3_END_H	=	0x00a7
                           0000A9   468 _T3_STAT	=	0x00a9
                           0000AA   469 _T3_CTRL	=	0x00aa
                           0000AB   470 _T3_DMA_CN	=	0x00ab
                           00ADAC   471 _T3_DMA	=	0xadac
                           0000AC   472 _T3_DMA_AL	=	0x00ac
                           0000AD   473 _T3_DMA_AH	=	0x00ad
                           00AFAE   474 _T3_FIFO	=	0xafae
                           0000AE   475 _T3_FIFO_L	=	0x00ae
                           0000AF   476 _T3_FIFO_H	=	0x00af
                           0000F8   477 _SPI0_STAT	=	0x00f8
                           0000F9   478 _SPI0_DATA	=	0x00f9
                           0000FA   479 _SPI0_CTRL	=	0x00fa
                           0000FB   480 _SPI0_CK_SE	=	0x00fb
                           0000FC   481 _SPI0_SETUP	=	0x00fc
                           00009A   482 _SER1_FIFO	=	0x009a
                           000091   483 _SER1_IER	=	0x0091
                           000092   484 _SER1_IIR	=	0x0092
                           000093   485 _SER1_LCR	=	0x0093
                           000094   486 _SER1_MCR	=	0x0094
                           000095   487 _SER1_LSR	=	0x0095
                           000096   488 _SER1_MSR	=	0x0096
                           000097   489 _SER1_ADDR	=	0x0097
                           00EDEC   490 _ADC_DMA	=	0xedec
                           0000EC   491 _ADC_DMA_AL	=	0x00ec
                           0000ED   492 _ADC_DMA_AH	=	0x00ed
                           0000EE   493 _ADC_DMA_CN	=	0x00ee
                           0000EF   494 _ADC_CK_SE	=	0x00ef
                           0000F1   495 _ADC_STAT	=	0x00f1
                           0000F2   496 _ADC_CTRL	=	0x00f2
                           0000F3   497 _ADC_CHANN	=	0x00f3
                           00F5F4   498 _ADC_FIFO	=	0xf5f4
                           0000F4   499 _ADC_FIFO_L	=	0x00f4
                           0000F5   500 _ADC_FIFO_H	=	0x00f5
                           0000F6   501 _ADC_SETUP	=	0x00f6
                           0000F7   502 _ADC_EX_SW	=	0x00f7
                           0000D1   503 _USB_RX_LEN	=	0x00d1
                           0000D2   504 _UEP1_CTRL	=	0x00d2
                           0000D3   505 _UEP1_T_LEN	=	0x00d3
                           0000D4   506 _UEP2_CTRL	=	0x00d4
                           0000D5   507 _UEP2_T_LEN	=	0x00d5
                           0000D6   508 _UEP3_CTRL	=	0x00d6
                           0000D7   509 _UEP3_T_LEN	=	0x00d7
                           0000D8   510 _USB_INT_FG	=	0x00d8
                           0000D9   511 _USB_INT_ST	=	0x00d9
                           0000DA   512 _USB_MIS_ST	=	0x00da
                           0000DC   513 _UEP0_CTRL	=	0x00dc
                           0000DD   514 _UEP0_T_LEN	=	0x00dd
                           0000DE   515 _UEP4_CTRL	=	0x00de
                           0000DF   516 _UEP4_T_LEN	=	0x00df
                           0000E1   517 _USB_INT_EN	=	0x00e1
                           0000E2   518 _USB_CTRL	=	0x00e2
                           0000E3   519 _USB_DEV_AD	=	0x00e3
                           0000E4   520 _UDEV_CTRL	=	0x00e4
                           00E7E6   521 _USB_DMA	=	0xe7e6
                           0000E6   522 _USB_DMA_AL	=	0x00e6
                           0000E7   523 _USB_DMA_AH	=	0x00e7
                                    524 ;--------------------------------------------------------
                                    525 ; special function bits
                                    526 ;--------------------------------------------------------
                                    527 	.area RSEG    (ABS,DATA)
      000000                        528 	.org 0x0000
                           0000D7   529 _CY	=	0x00d7
                           0000D6   530 _AC	=	0x00d6
                           0000D5   531 _F0	=	0x00d5
                           0000D4   532 _RS1	=	0x00d4
                           0000D3   533 _RS0	=	0x00d3
                           0000D2   534 _OV	=	0x00d2
                           0000D1   535 _F1	=	0x00d1
                           0000D0   536 _P	=	0x00d0
                           0000AF   537 _EA	=	0x00af
                           0000AE   538 _E_DIS	=	0x00ae
                           0000AD   539 _ET2	=	0x00ad
                           0000AC   540 _ES	=	0x00ac
                           0000AB   541 _ET1	=	0x00ab
                           0000AA   542 _EX1	=	0x00aa
                           0000A9   543 _ET0	=	0x00a9
                           0000A8   544 _EX0	=	0x00a8
                           0000BF   545 _PH_FLAG	=	0x00bf
                           0000BE   546 _PL_FLAG	=	0x00be
                           0000BD   547 _PT2	=	0x00bd
                           0000BC   548 _PS	=	0x00bc
                           0000BB   549 _PT1	=	0x00bb
                           0000BA   550 _PX1	=	0x00ba
                           0000B9   551 _PT0	=	0x00b9
                           0000B8   552 _PX0	=	0x00b8
                           0000EF   553 _IE_WDOG	=	0x00ef
                           0000EE   554 _IE_GPIO	=	0x00ee
                           0000EC   555 _IE_UART1	=	0x00ec
                           0000EB   556 _IE_ADC	=	0x00eb
                           0000EA   557 _IE_USB	=	0x00ea
                           0000E9   558 _IE_TMR3	=	0x00e9
                           0000E8   559 _IE_SPI0	=	0x00e8
                           000087   560 _P07	=	0x0087
                           000086   561 _P06	=	0x0086
                           000085   562 _P05	=	0x0085
                           000084   563 _P04	=	0x0084
                           000083   564 _P03	=	0x0083
                           000082   565 _P02	=	0x0082
                           000081   566 _P01	=	0x0081
                           000080   567 _P00	=	0x0080
                           000087   568 _UDCD	=	0x0087
                           000086   569 _URI	=	0x0086
                           000085   570 _UDSR	=	0x0085
                           000084   571 _UCTS	=	0x0084
                           000083   572 _TXD_	=	0x0083
                           000082   573 _RXD_	=	0x0082
                           000081   574 _URTS	=	0x0081
                           000080   575 _UDTR	=	0x0080
                           000097   576 _P17	=	0x0097
                           000096   577 _P16	=	0x0096
                           000095   578 _P15	=	0x0095
                           000094   579 _P14	=	0x0094
                           000093   580 _P13	=	0x0093
                           000092   581 _P12	=	0x0092
                           000091   582 _P11	=	0x0091
                           000090   583 _P10	=	0x0090
                           000097   584 _AIN7	=	0x0097
                           000096   585 _AIN6	=	0x0096
                           000095   586 _AIN5	=	0x0095
                           000094   587 _AIN4	=	0x0094
                           000093   588 _AIN3	=	0x0093
                           000092   589 _AIN2	=	0x0092
                           000091   590 _AIN1	=	0x0091
                           000090   591 _AIN0	=	0x0090
                           000097   592 _SCK	=	0x0097
                           000096   593 _MISO	=	0x0096
                           000095   594 _MOSI	=	0x0095
                           000094   595 _SCS	=	0x0094
                           000092   596 _PWM3	=	0x0092
                           000092   597 _CAP3	=	0x0092
                           000091   598 _T2EX	=	0x0091
                           000091   599 _CAP2	=	0x0091
                           000090   600 _T2	=	0x0090
                           000090   601 _CAP1	=	0x0090
                           0000A7   602 _P27	=	0x00a7
                           0000A6   603 _P26	=	0x00a6
                           0000A5   604 _P25	=	0x00a5
                           0000A4   605 _P24	=	0x00a4
                           0000A3   606 _P23	=	0x00a3
                           0000A2   607 _P22	=	0x00a2
                           0000A1   608 _P21	=	0x00a1
                           0000A0   609 _P20	=	0x00a0
                           0000A7   610 _TXD1	=	0x00a7
                           0000A7   611 _DA7	=	0x00a7
                           0000A6   612 _RXD1	=	0x00a6
                           0000A5   613 _TNOW	=	0x00a5
                           0000A5   614 _T2EX_	=	0x00a5
                           0000A5   615 _CAP2_	=	0x00a5
                           0000B7   616 _P37	=	0x00b7
                           0000B6   617 _P36	=	0x00b6
                           0000B5   618 _P35	=	0x00b5
                           0000B4   619 _P34	=	0x00b4
                           0000B3   620 _P33	=	0x00b3
                           0000B2   621 _P32	=	0x00b2
                           0000B1   622 _P31	=	0x00b1
                           0000B0   623 _P30	=	0x00b0
                           0000B7   624 _RD	=	0x00b7
                           0000B6   625 _WR	=	0x00b6
                           0000B5   626 _DA6	=	0x00b5
                           0000B5   627 _T1	=	0x00b5
                           0000B4   628 _LEDC	=	0x00b4
                           0000B4   629 _XCS0	=	0x00b4
                           0000B4   630 _T0	=	0x00b4
                           0000B3   631 _LED1	=	0x00b3
                           0000B3   632 _INT1	=	0x00b3
                           0000B2   633 _LED0	=	0x00b2
                           0000B2   634 _INT0	=	0x00b2
                           0000B1   635 _TXD	=	0x00b1
                           0000B0   636 _RXD	=	0x00b0
                           0000C7   637 _P47	=	0x00c7
                           0000C6   638 _P46	=	0x00c6
                           0000C5   639 _P45	=	0x00c5
                           0000C4   640 _P44	=	0x00c4
                           0000C3   641 _P43	=	0x00c3
                           0000C2   642 _P42	=	0x00c2
                           0000C1   643 _P41	=	0x00c1
                           0000C0   644 _P40	=	0x00c0
                           0000C7   645 _SCK_	=	0x00c7
                           0000C6   646 _SCS_	=	0x00c6
                           0000C4   647 _LED3	=	0x00c4
                           0000C4   648 _TNOW_	=	0x00c4
                           0000C4   649 _TXD1_	=	0x00c4
                           0000C2   650 _PWM3_	=	0x00c2
                           0000C2   651 _CAP3_	=	0x00c2
                           0000C0   652 _LED2	=	0x00c0
                           0000C0   653 _RXD1_	=	0x00c0
                           00008F   654 _TF1	=	0x008f
                           00008E   655 _TR1	=	0x008e
                           00008D   656 _TF0	=	0x008d
                           00008C   657 _TR0	=	0x008c
                           00008B   658 _IE1	=	0x008b
                           00008A   659 _IT1	=	0x008a
                           000089   660 _IE0	=	0x0089
                           000088   661 _IT0	=	0x0088
                           00009F   662 _SM0	=	0x009f
                           00009E   663 _SM1	=	0x009e
                           00009D   664 _SM2	=	0x009d
                           00009C   665 _REN	=	0x009c
                           00009B   666 _TB8	=	0x009b
                           00009A   667 _RB8	=	0x009a
                           000099   668 _TI	=	0x0099
                           000098   669 _RI	=	0x0098
                           0000CF   670 _TF2	=	0x00cf
                           0000CF   671 _CAP1F	=	0x00cf
                           0000CE   672 _EXF2	=	0x00ce
                           0000CD   673 _RCLK	=	0x00cd
                           0000CC   674 _TCLK	=	0x00cc
                           0000CB   675 _EXEN2	=	0x00cb
                           0000CA   676 _TR2	=	0x00ca
                           0000C9   677 _C_T2	=	0x00c9
                           0000C8   678 _CP_RL2	=	0x00c8
                           0000FF   679 _S0_FST_ACT	=	0x00ff
                           0000FE   680 _S0_IF_OV	=	0x00fe
                           0000FD   681 _S0_IF_FIRST	=	0x00fd
                           0000FC   682 _S0_IF_BYTE	=	0x00fc
                           0000FB   683 _S0_FREE	=	0x00fb
                           0000FA   684 _S0_T_FIFO	=	0x00fa
                           0000F9   685 _S0_R_FIFO1	=	0x00f9
                           0000F8   686 _S0_R_FIFO0	=	0x00f8
                           0000DF   687 _U_IS_NAK	=	0x00df
                           0000DE   688 _U_TOG_OK	=	0x00de
                           0000DD   689 _U_SIE_FREE	=	0x00dd
                           0000DC   690 _UIF_FIFO_OV	=	0x00dc
                           0000DA   691 _UIF_SUSPEND	=	0x00da
                           0000D9   692 _UIF_TRANSFER	=	0x00d9
                           0000D8   693 _UIF_BUS_RST	=	0x00d8
                                    694 ;--------------------------------------------------------
                                    695 ; overlayable register banks
                                    696 ;--------------------------------------------------------
                                    697 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        698 	.ds 8
                                    699 ;--------------------------------------------------------
                                    700 ; internal ram data
                                    701 ;--------------------------------------------------------
                                    702 	.area DSEG    (DATA)
      000014                        703 _oledChar_sloc0_1_0:
      000014                        704 	.ds 1
      000015                        705 _oledChar_sloc1_1_0:
      000015                        706 	.ds 2
      000017                        707 _oledChar_sloc2_1_0:
      000017                        708 	.ds 1
      000018                        709 _oledChar_sloc3_1_0:
      000018                        710 	.ds 2
      00001A                        711 _oledChar_sloc4_1_0:
      00001A                        712 	.ds 1
      00001B                        713 _oledChar_sloc5_1_0:
      00001B                        714 	.ds 1
      00001C                        715 _oledChar_sloc6_1_0:
      00001C                        716 	.ds 1
      00001D                        717 _oledPrint_sloc0_1_0:
      00001D                        718 	.ds 2
                                    719 ;--------------------------------------------------------
                                    720 ; overlayable items in internal ram 
                                    721 ;--------------------------------------------------------
                                    722 ;--------------------------------------------------------
                                    723 ; indirectly addressable internal ram data
                                    724 ;--------------------------------------------------------
                                    725 	.area ISEG    (DATA)
                                    726 ;--------------------------------------------------------
                                    727 ; absolute internal ram data
                                    728 ;--------------------------------------------------------
                                    729 	.area IABS    (ABS,DATA)
                                    730 	.area IABS    (ABS,DATA)
                                    731 ;--------------------------------------------------------
                                    732 ; bit data
                                    733 ;--------------------------------------------------------
                                    734 	.area BSEG    (BIT)
                                    735 ;--------------------------------------------------------
                                    736 ; paged external ram data
                                    737 ;--------------------------------------------------------
                                    738 	.area PSEG    (PAG,XDATA)
                           000046   739 _pUEP4_1_MOD	=	0x0046
                           000047   740 _pUEP2_3_MOD	=	0x0047
                           000048   741 _pUEP0_DMA_H	=	0x0048
                           000049   742 _pUEP0_DMA_L	=	0x0049
                           000048   743 _pUEP0_DMA	=	0x0048
                           00004A   744 _pUEP1_DMA_H	=	0x004a
                           00004B   745 _pUEP1_DMA_L	=	0x004b
                           00004A   746 _pUEP1_DMA	=	0x004a
                           00004C   747 _pUEP2_DMA_H	=	0x004c
                           00004D   748 _pUEP2_DMA_L	=	0x004d
                           00004C   749 _pUEP2_DMA	=	0x004c
                           00004E   750 _pUEP3_DMA_H	=	0x004e
                           00004F   751 _pUEP3_DMA_L	=	0x004f
                           00004E   752 _pUEP3_DMA	=	0x004e
                           000080   753 _pLED_STAT	=	0x0080
                           000081   754 _pLED_CTRL	=	0x0081
                           000082   755 _pLED_DATA	=	0x0082
                           000083   756 _pLED_CK_SE	=	0x0083
                           000084   757 _pLED_DMA_AH	=	0x0084
                           000085   758 _pLED_DMA_AL	=	0x0085
                           000084   759 _pLED_DMA	=	0x0084
                           000086   760 _pLED_DMA_CN	=	0x0086
                           000088   761 _pLED_DMA_XH	=	0x0088
                           000089   762 _pLED_DMA_XL	=	0x0089
                           000088   763 _pLED_DMA_X	=	0x0088
                                    764 ;--------------------------------------------------------
                                    765 ; external ram data
                                    766 ;--------------------------------------------------------
                                    767 	.area XSEG    (XDATA)
                           002446   768 _UEP4_1_MOD	=	0x2446
                           002447   769 _UEP2_3_MOD	=	0x2447
                           002448   770 _UEP0_DMA_H	=	0x2448
                           002449   771 _UEP0_DMA_L	=	0x2449
                           002448   772 _UEP0_DMA	=	0x2448
                           00244A   773 _UEP1_DMA_H	=	0x244a
                           00244B   774 _UEP1_DMA_L	=	0x244b
                           00244A   775 _UEP1_DMA	=	0x244a
                           00244C   776 _UEP2_DMA_H	=	0x244c
                           00244D   777 _UEP2_DMA_L	=	0x244d
                           00244C   778 _UEP2_DMA	=	0x244c
                           00244E   779 _UEP3_DMA_H	=	0x244e
                           00244F   780 _UEP3_DMA_L	=	0x244f
                           00244E   781 _UEP3_DMA	=	0x244e
                           002880   782 _LED_STAT	=	0x2880
                           002881   783 _LED_CTRL	=	0x2881
                           002882   784 _LED_DATA	=	0x2882
                           002883   785 _LED_CK_SE	=	0x2883
                           002884   786 _LED_DMA_AH	=	0x2884
                           002885   787 _LED_DMA_AL	=	0x2885
                           002884   788 _LED_DMA	=	0x2884
                           002886   789 _LED_DMA_CN	=	0x2886
                           002888   790 _LED_DMA_XH	=	0x2888
                           002889   791 _LED_DMA_XL	=	0x2889
                           002888   792 _LED_DMA_X	=	0x2888
      000027                        793 ___oled_wr_data_65536_99:
      000027                        794 	.ds 1
      000028                        795 ___oled_rd_data_65536_103:
      000028                        796 	.ds 1
      000029                        797 ___oled_rd_tmp_196609_106:
      000029                        798 	.ds 1
      00002A                        799 _buffer:
      00002A                        800 	.ds 16
      00003A                        801 _cmd_cmd_65536_108:
      00003A                        802 	.ds 1
      00003B                        803 _dat_data_65536_110:
      00003B                        804 	.ds 1
      00003C                        805 _pos_PARM_2:
      00003C                        806 	.ds 1
      00003D                        807 _pos_x_65536_112:
      00003D                        808 	.ds 1
      00003E                        809 _oledInit_dev_65536_114:
      00003E                        810 	.ds 1
      00003F                        811 _oledBright_bright_65536_116:
      00003F                        812 	.ds 1
      000040                        813 _oledSwitch_state_65536_122:
      000040                        814 	.ds 1
      000041                        815 _oledSize_PARM_2:
      000041                        816 	.ds 3
      000044                        817 _oledSize_w_65536_126:
      000044                        818 	.ds 3
      000047                        819 _oledChar_PARM_2:
      000047                        820 	.ds 1
      000048                        821 _oledChar_PARM_3:
      000048                        822 	.ds 1
      000049                        823 _oledChar_PARM_4:
      000049                        824 	.ds 1
      00004A                        825 _oledChar_PARM_5:
      00004A                        826 	.ds 1
      00004B                        827 _oledChar_x_65536_130:
      00004B                        828 	.ds 1
      00004C                        829 _oledChar_f_w_65536_131:
      00004C                        830 	.ds 1
      00004D                        831 _oledChar_f_h_65536_131:
      00004D                        832 	.ds 1
      00004E                        833 _oledChar_W_65536_131:
      00004E                        834 	.ds 1
      00004F                        835 _oledChar_H_65536_131:
      00004F                        836 	.ds 1
      000050                        837 _oledPrint_PARM_2:
      000050                        838 	.ds 1
      000051                        839 _oledPrint_PARM_3:
      000051                        840 	.ds 1
      000052                        841 _oledPrint_PARM_4:
      000052                        842 	.ds 1
      000053                        843 _oledPrint_PARM_5:
      000053                        844 	.ds 3
      000056                        845 _oledPrint_x_65536_138:
      000056                        846 	.ds 1
      000057                        847 _oledPrint_f_w_65536_139:
      000057                        848 	.ds 1
      000058                        849 _oledPrint_f_h_65536_139:
      000058                        850 	.ds 1
      000059                        851 _oledPrint_W_65536_139:
      000059                        852 	.ds 1
      00005A                        853 _oledPrint_H_65536_139:
      00005A                        854 	.ds 1
                                    855 ;--------------------------------------------------------
                                    856 ; absolute external ram data
                                    857 ;--------------------------------------------------------
                                    858 	.area XABS    (ABS,XDATA)
                                    859 ;--------------------------------------------------------
                                    860 ; external initialized ram data
                                    861 ;--------------------------------------------------------
                                    862 	.area XISEG   (XDATA)
      00058B                        863 _addr:
      00058B                        864 	.ds 1
                                    865 	.area HOME    (CODE)
                                    866 	.area GSINIT0 (CODE)
                                    867 	.area GSINIT1 (CODE)
                                    868 	.area GSINIT2 (CODE)
                                    869 	.area GSINIT3 (CODE)
                                    870 	.area GSINIT4 (CODE)
                                    871 	.area GSINIT5 (CODE)
                                    872 	.area GSINIT  (CODE)
                                    873 	.area GSFINAL (CODE)
                                    874 	.area CSEG    (CODE)
                                    875 ;--------------------------------------------------------
                                    876 ; global & static initialisations
                                    877 ;--------------------------------------------------------
                                    878 	.area HOME    (CODE)
                                    879 	.area GSINIT  (CODE)
                                    880 	.area GSFINAL (CODE)
                                    881 	.area GSINIT  (CODE)
                                    882 ;--------------------------------------------------------
                                    883 ; Home
                                    884 ;--------------------------------------------------------
                                    885 	.area HOME    (CODE)
                                    886 	.area HOME    (CODE)
                                    887 ;--------------------------------------------------------
                                    888 ; code
                                    889 ;--------------------------------------------------------
                                    890 	.area CSEG    (CODE)
                                    891 ;------------------------------------------------------------
                                    892 ;Allocation info for local variables in function '__oled_start'
                                    893 ;------------------------------------------------------------
                                    894 ;	E:\Works\NSHET\oled.c:13: void __oled_start() {
                                    895 ;	-----------------------------------------
                                    896 ;	 function __oled_start
                                    897 ;	-----------------------------------------
      000810                        898 ___oled_start:
                           000007   899 	ar7 = 0x07
                           000006   900 	ar6 = 0x06
                           000005   901 	ar5 = 0x05
                           000004   902 	ar4 = 0x04
                           000003   903 	ar3 = 0x03
                           000002   904 	ar2 = 0x02
                           000001   905 	ar1 = 0x01
                           000000   906 	ar0 = 0x00
                                    907 ;	E:\Works\NSHET\oled.c:14: OLED_DAT_SET();
                                    908 ;	assignBit
      000810 D2 83            [12]  909 	setb	_P03
                                    910 ;	E:\Works\NSHET\oled.c:15: OLED_CLK_SET(); OLED_DELAY();
                                    911 ;	assignBit
      000812 D2 82            [12]  912 	setb	_P02
      000814 90 00 01         [24]  913 	mov	dptr,#0x0001
      000817 12 14 42         [24]  914 	lcall	_delay_us
                                    915 ;	E:\Works\NSHET\oled.c:16: OLED_DAT_CLR(); OLED_DELAY();
                                    916 ;	assignBit
      00081A C2 83            [12]  917 	clr	_P03
      00081C 90 00 01         [24]  918 	mov	dptr,#0x0001
                                    919 ;	E:\Works\NSHET\oled.c:17: }
      00081F 02 14 42         [24]  920 	ljmp	_delay_us
                                    921 ;------------------------------------------------------------
                                    922 ;Allocation info for local variables in function '__oled_stop'
                                    923 ;------------------------------------------------------------
                                    924 ;	E:\Works\NSHET\oled.c:19: void __oled_stop() {
                                    925 ;	-----------------------------------------
                                    926 ;	 function __oled_stop
                                    927 ;	-----------------------------------------
      000822                        928 ___oled_stop:
                                    929 ;	E:\Works\NSHET\oled.c:20: OLED_DAT_CLR();
                                    930 ;	assignBit
      000822 C2 83            [12]  931 	clr	_P03
                                    932 ;	E:\Works\NSHET\oled.c:21: OLED_CLK_SET(); OLED_DELAY();
                                    933 ;	assignBit
      000824 D2 82            [12]  934 	setb	_P02
      000826 90 00 01         [24]  935 	mov	dptr,#0x0001
      000829 12 14 42         [24]  936 	lcall	_delay_us
                                    937 ;	E:\Works\NSHET\oled.c:22: OLED_DAT_SET(); OLED_DELAY();
                                    938 ;	assignBit
      00082C D2 83            [12]  939 	setb	_P03
      00082E 90 00 01         [24]  940 	mov	dptr,#0x0001
                                    941 ;	E:\Works\NSHET\oled.c:23: }
      000831 02 14 42         [24]  942 	ljmp	_delay_us
                                    943 ;------------------------------------------------------------
                                    944 ;Allocation info for local variables in function '__oled_ack'
                                    945 ;------------------------------------------------------------
                                    946 ;i                         Allocated with name '___oled_ack_i_131072_96'
                                    947 ;------------------------------------------------------------
                                    948 ;	E:\Works\NSHET\oled.c:25: void __oled_ack() {
                                    949 ;	-----------------------------------------
                                    950 ;	 function __oled_ack
                                    951 ;	-----------------------------------------
      000834                        952 ___oled_ack:
                                    953 ;	E:\Works\NSHET\oled.c:26: OLED_CLK_CLR();
                                    954 ;	assignBit
      000834 C2 82            [12]  955 	clr	_P02
                                    956 ;	E:\Works\NSHET\oled.c:27: OLED_DAT_SET();
                                    957 ;	assignBit
      000836 D2 83            [12]  958 	setb	_P03
                                    959 ;	E:\Works\NSHET\oled.c:28: OLED_CLK_SET(); OLED_DELAY();
                                    960 ;	assignBit
      000838 D2 82            [12]  961 	setb	_P02
      00083A 90 00 01         [24]  962 	mov	dptr,#0x0001
      00083D 12 14 42         [24]  963 	lcall	_delay_us
                                    964 ;	E:\Works\NSHET\oled.c:29: for (uint8_t i = 0; i < 0xFF; i++) {
      000840 7F 00            [12]  965 	mov	r7,#0x00
      000842                        966 00105$:
      000842 BF FF 00         [24]  967 	cjne	r7,#0xff,00122$
      000845                        968 00122$:
      000845 50 10            [24]  969 	jnc	00103$
                                    970 ;	E:\Works\NSHET\oled.c:30: if (OLED_DAT_GET() == 0)
      000847 30 83 0D         [24]  971 	jnb	_P03,00103$
                                    972 ;	E:\Works\NSHET\oled.c:32: OLED_DELAY();
      00084A 90 00 01         [24]  973 	mov	dptr,#0x0001
      00084D C0 07            [24]  974 	push	ar7
      00084F 12 14 42         [24]  975 	lcall	_delay_us
      000852 D0 07            [24]  976 	pop	ar7
                                    977 ;	E:\Works\NSHET\oled.c:29: for (uint8_t i = 0; i < 0xFF; i++) {
      000854 0F               [12]  978 	inc	r7
      000855 80 EB            [24]  979 	sjmp	00105$
      000857                        980 00103$:
                                    981 ;	E:\Works\NSHET\oled.c:34: OLED_CLK_CLR(); OLED_DELAY();
                                    982 ;	assignBit
      000857 C2 82            [12]  983 	clr	_P02
      000859 90 00 01         [24]  984 	mov	dptr,#0x0001
                                    985 ;	E:\Works\NSHET\oled.c:35: }
      00085C 02 14 42         [24]  986 	ljmp	_delay_us
                                    987 ;------------------------------------------------------------
                                    988 ;Allocation info for local variables in function '__oled_nak'
                                    989 ;------------------------------------------------------------
                                    990 ;	E:\Works\NSHET\oled.c:37: void __oled_nak() {
                                    991 ;	-----------------------------------------
                                    992 ;	 function __oled_nak
                                    993 ;	-----------------------------------------
      00085F                        994 ___oled_nak:
                                    995 ;	E:\Works\NSHET\oled.c:38: OLED_CLK_CLR();
                                    996 ;	assignBit
      00085F C2 82            [12]  997 	clr	_P02
                                    998 ;	E:\Works\NSHET\oled.c:39: OLED_DAT_SET();
                                    999 ;	assignBit
      000861 D2 83            [12] 1000 	setb	_P03
                                   1001 ;	E:\Works\NSHET\oled.c:40: OLED_CLK_SET(); OLED_DELAY();
                                   1002 ;	assignBit
      000863 D2 82            [12] 1003 	setb	_P02
      000865 90 00 01         [24] 1004 	mov	dptr,#0x0001
      000868 12 14 42         [24] 1005 	lcall	_delay_us
                                   1006 ;	E:\Works\NSHET\oled.c:41: OLED_CLK_CLR(); OLED_DELAY();
                                   1007 ;	assignBit
      00086B C2 82            [12] 1008 	clr	_P02
      00086D 90 00 01         [24] 1009 	mov	dptr,#0x0001
                                   1010 ;	E:\Works\NSHET\oled.c:42: }
      000870 02 14 42         [24] 1011 	ljmp	_delay_us
                                   1012 ;------------------------------------------------------------
                                   1013 ;Allocation info for local variables in function '__oled_wr'
                                   1014 ;------------------------------------------------------------
                                   1015 ;data                      Allocated with name '___oled_wr_data_65536_99'
                                   1016 ;i                         Allocated with name '___oled_wr_i_131072_101'
                                   1017 ;------------------------------------------------------------
                                   1018 ;	E:\Works\NSHET\oled.c:44: void __oled_wr(uint8_t data) {
                                   1019 ;	-----------------------------------------
                                   1020 ;	 function __oled_wr
                                   1021 ;	-----------------------------------------
      000873                       1022 ___oled_wr:
      000873 E5 82            [12] 1023 	mov	a,dpl
      000875 90 00 27         [24] 1024 	mov	dptr,#___oled_wr_data_65536_99
      000878 F0               [24] 1025 	movx	@dptr,a
                                   1026 ;	E:\Works\NSHET\oled.c:45: for (uint8_t i = 0; i < 8; i++) {
      000879 E0               [24] 1027 	movx	a,@dptr
      00087A FF               [12] 1028 	mov	r7,a
      00087B 7E 00            [12] 1029 	mov	r6,#0x00
      00087D                       1030 00106$:
      00087D BE 08 00         [24] 1031 	cjne	r6,#0x08,00123$
      000880                       1032 00123$:
      000880 50 55            [24] 1033 	jnc	00104$
                                   1034 ;	E:\Works\NSHET\oled.c:46: OLED_CLK_CLR(); OLED_DELAY();
                                   1035 ;	assignBit
      000882 C2 82            [12] 1036 	clr	_P02
      000884 90 00 01         [24] 1037 	mov	dptr,#0x0001
      000887 C0 07            [24] 1038 	push	ar7
      000889 C0 06            [24] 1039 	push	ar6
      00088B 12 14 42         [24] 1040 	lcall	_delay_us
      00088E D0 06            [24] 1041 	pop	ar6
      000890 D0 07            [24] 1042 	pop	ar7
                                   1043 ;	E:\Works\NSHET\oled.c:47: if (data & (1 << (7 - i)))
      000892 74 07            [12] 1044 	mov	a,#0x07
      000894 C3               [12] 1045 	clr	c
      000895 9E               [12] 1046 	subb	a,r6
      000896 FD               [12] 1047 	mov	r5,a
      000897 8D F0            [24] 1048 	mov	b,r5
      000899 05 F0            [12] 1049 	inc	b
      00089B 7D 01            [12] 1050 	mov	r5,#0x01
      00089D 7C 00            [12] 1051 	mov	r4,#0x00
      00089F 80 06            [24] 1052 	sjmp	00126$
      0008A1                       1053 00125$:
      0008A1 ED               [12] 1054 	mov	a,r5
      0008A2 2D               [12] 1055 	add	a,r5
      0008A3 FD               [12] 1056 	mov	r5,a
      0008A4 EC               [12] 1057 	mov	a,r4
      0008A5 33               [12] 1058 	rlc	a
      0008A6 FC               [12] 1059 	mov	r4,a
      0008A7                       1060 00126$:
      0008A7 D5 F0 F7         [24] 1061 	djnz	b,00125$
      0008AA 8F 02            [24] 1062 	mov	ar2,r7
      0008AC 7B 00            [12] 1063 	mov	r3,#0x00
      0008AE EA               [12] 1064 	mov	a,r2
      0008AF 52 05            [12] 1065 	anl	ar5,a
      0008B1 EB               [12] 1066 	mov	a,r3
      0008B2 52 04            [12] 1067 	anl	ar4,a
      0008B4 ED               [12] 1068 	mov	a,r5
      0008B5 4C               [12] 1069 	orl	a,r4
      0008B6 60 04            [24] 1070 	jz	00102$
                                   1071 ;	E:\Works\NSHET\oled.c:48: OLED_DAT_SET();
                                   1072 ;	assignBit
      0008B8 D2 83            [12] 1073 	setb	_P03
      0008BA 80 02            [24] 1074 	sjmp	00103$
      0008BC                       1075 00102$:
                                   1076 ;	E:\Works\NSHET\oled.c:50: OLED_DAT_CLR();
                                   1077 ;	assignBit
      0008BC C2 83            [12] 1078 	clr	_P03
      0008BE                       1079 00103$:
                                   1080 ;	E:\Works\NSHET\oled.c:51: OLED_DELAY();
      0008BE 90 00 01         [24] 1081 	mov	dptr,#0x0001
      0008C1 C0 07            [24] 1082 	push	ar7
      0008C3 C0 06            [24] 1083 	push	ar6
      0008C5 12 14 42         [24] 1084 	lcall	_delay_us
                                   1085 ;	E:\Works\NSHET\oled.c:52: OLED_CLK_SET(); OLED_DELAY();
                                   1086 ;	assignBit
      0008C8 D2 82            [12] 1087 	setb	_P02
      0008CA 90 00 01         [24] 1088 	mov	dptr,#0x0001
      0008CD 12 14 42         [24] 1089 	lcall	_delay_us
      0008D0 D0 06            [24] 1090 	pop	ar6
      0008D2 D0 07            [24] 1091 	pop	ar7
                                   1092 ;	E:\Works\NSHET\oled.c:45: for (uint8_t i = 0; i < 8; i++) {
      0008D4 0E               [12] 1093 	inc	r6
      0008D5 80 A6            [24] 1094 	sjmp	00106$
      0008D7                       1095 00104$:
                                   1096 ;	E:\Works\NSHET\oled.c:54: OLED_CLK_CLR();
                                   1097 ;	assignBit
      0008D7 C2 82            [12] 1098 	clr	_P02
                                   1099 ;	E:\Works\NSHET\oled.c:55: OLED_DAT_SET();
                                   1100 ;	assignBit
      0008D9 D2 83            [12] 1101 	setb	_P03
                                   1102 ;	E:\Works\NSHET\oled.c:56: OLED_DELAY();
      0008DB 90 00 01         [24] 1103 	mov	dptr,#0x0001
                                   1104 ;	E:\Works\NSHET\oled.c:57: }
      0008DE 02 14 42         [24] 1105 	ljmp	_delay_us
                                   1106 ;------------------------------------------------------------
                                   1107 ;Allocation info for local variables in function '__oled_rd'
                                   1108 ;------------------------------------------------------------
                                   1109 ;data                      Allocated with name '___oled_rd_data_65536_103'
                                   1110 ;i                         Allocated with name '___oled_rd_i_131072_104'
                                   1111 ;tmp                       Allocated with name '___oled_rd_tmp_196609_106'
                                   1112 ;------------------------------------------------------------
                                   1113 ;	E:\Works\NSHET\oled.c:59: uint8_t __oled_rd() {
                                   1114 ;	-----------------------------------------
                                   1115 ;	 function __oled_rd
                                   1116 ;	-----------------------------------------
      0008E1                       1117 ___oled_rd:
                                   1118 ;	E:\Works\NSHET\oled.c:60: uint8_t data = 0;
      0008E1 90 00 28         [24] 1119 	mov	dptr,#___oled_rd_data_65536_103
      0008E4 E4               [12] 1120 	clr	a
      0008E5 F0               [24] 1121 	movx	@dptr,a
                                   1122 ;	E:\Works\NSHET\oled.c:61: OLED_DAT_SET();
                                   1123 ;	assignBit
      0008E6 D2 83            [12] 1124 	setb	_P03
                                   1125 ;	E:\Works\NSHET\oled.c:62: OLED_CLK_CLR(); OLED_DELAY();
                                   1126 ;	assignBit
      0008E8 C2 82            [12] 1127 	clr	_P02
      0008EA 90 00 01         [24] 1128 	mov	dptr,#0x0001
      0008ED 12 14 42         [24] 1129 	lcall	_delay_us
                                   1130 ;	E:\Works\NSHET\oled.c:63: for (uint8_t i = 0; i < 8; i++) {
      0008F0 7F 00            [12] 1131 	mov	r7,#0x00
      0008F2                       1132 00105$:
      0008F2 BF 08 00         [24] 1133 	cjne	r7,#0x08,00122$
      0008F5                       1134 00122$:
      0008F5 50 4B            [24] 1135 	jnc	00103$
                                   1136 ;	E:\Works\NSHET\oled.c:64: OLED_CLK_SET(); OLED_DELAY();
                                   1137 ;	assignBit
      0008F7 D2 82            [12] 1138 	setb	_P02
      0008F9 90 00 01         [24] 1139 	mov	dptr,#0x0001
      0008FC C0 07            [24] 1140 	push	ar7
      0008FE 12 14 42         [24] 1141 	lcall	_delay_us
      000901 D0 07            [24] 1142 	pop	ar7
                                   1143 ;	E:\Works\NSHET\oled.c:65: uint8_t tmp = 0;
      000903 90 00 29         [24] 1144 	mov	dptr,#___oled_rd_tmp_196609_106
      000906 E4               [12] 1145 	clr	a
      000907 F0               [24] 1146 	movx	@dptr,a
                                   1147 ;	E:\Works\NSHET\oled.c:66: if (OLED_DAT_GET() != 0)
      000908 30 83 17         [24] 1148 	jnb	_P03,00102$
                                   1149 ;	E:\Works\NSHET\oled.c:67: tmp = 1 << (7 - i);
      00090B 8F 06            [24] 1150 	mov	ar6,r7
      00090D 74 07            [12] 1151 	mov	a,#0x07
      00090F C3               [12] 1152 	clr	c
      000910 9E               [12] 1153 	subb	a,r6
      000911 F5 F0            [12] 1154 	mov	b,a
      000913 05 F0            [12] 1155 	inc	b
      000915 74 01            [12] 1156 	mov	a,#0x01
      000917 80 02            [24] 1157 	sjmp	00127$
      000919                       1158 00125$:
      000919 25 E0            [12] 1159 	add	a,acc
      00091B                       1160 00127$:
      00091B D5 F0 FB         [24] 1161 	djnz	b,00125$
      00091E 90 00 29         [24] 1162 	mov	dptr,#___oled_rd_tmp_196609_106
      000921 F0               [24] 1163 	movx	@dptr,a
      000922                       1164 00102$:
                                   1165 ;	E:\Works\NSHET\oled.c:68: data |= tmp;
      000922 90 00 29         [24] 1166 	mov	dptr,#___oled_rd_tmp_196609_106
      000925 E0               [24] 1167 	movx	a,@dptr
      000926 FE               [12] 1168 	mov	r6,a
      000927 90 00 28         [24] 1169 	mov	dptr,#___oled_rd_data_65536_103
      00092A E0               [24] 1170 	movx	a,@dptr
      00092B 4E               [12] 1171 	orl	a,r6
      00092C F0               [24] 1172 	movx	@dptr,a
                                   1173 ;	E:\Works\NSHET\oled.c:69: OLED_DELAY();
      00092D 90 00 01         [24] 1174 	mov	dptr,#0x0001
      000930 C0 07            [24] 1175 	push	ar7
      000932 12 14 42         [24] 1176 	lcall	_delay_us
                                   1177 ;	E:\Works\NSHET\oled.c:70: OLED_CLK_CLR(); OLED_DELAY();
                                   1178 ;	assignBit
      000935 C2 82            [12] 1179 	clr	_P02
      000937 90 00 01         [24] 1180 	mov	dptr,#0x0001
      00093A 12 14 42         [24] 1181 	lcall	_delay_us
      00093D D0 07            [24] 1182 	pop	ar7
                                   1183 ;	E:\Works\NSHET\oled.c:63: for (uint8_t i = 0; i < 8; i++) {
      00093F 0F               [12] 1184 	inc	r7
      000940 80 B0            [24] 1185 	sjmp	00105$
      000942                       1186 00103$:
                                   1187 ;	E:\Works\NSHET\oled.c:72: return data;
      000942 90 00 28         [24] 1188 	mov	dptr,#___oled_rd_data_65536_103
      000945 E0               [24] 1189 	movx	a,@dptr
                                   1190 ;	E:\Works\NSHET\oled.c:73: }
      000946 F5 82            [12] 1191 	mov	dpl,a
      000948 22               [24] 1192 	ret
                                   1193 ;------------------------------------------------------------
                                   1194 ;Allocation info for local variables in function 'iic_init'
                                   1195 ;------------------------------------------------------------
                                   1196 ;	E:\Works\NSHET\oled.c:75: void iic_init() {
                                   1197 ;	-----------------------------------------
                                   1198 ;	 function iic_init
                                   1199 ;	-----------------------------------------
      000949                       1200 _iic_init:
                                   1201 ;	E:\Works\NSHET\oled.c:80: P0_DIR |= 0x0C;
      000949 43 C4 0C         [24] 1202 	orl	_P0_DIR,#0x0c
                                   1203 ;	E:\Works\NSHET\oled.c:81: P0_PU |= 0x0C;
      00094C 43 C5 0C         [24] 1204 	orl	_P0_PU,#0x0c
                                   1205 ;	E:\Works\NSHET\oled.c:82: OLED_CLK_SET();
                                   1206 ;	assignBit
      00094F D2 82            [12] 1207 	setb	_P02
                                   1208 ;	E:\Works\NSHET\oled.c:83: OLED_DAT_SET();
                                   1209 ;	assignBit
      000951 D2 83            [12] 1210 	setb	_P03
                                   1211 ;	E:\Works\NSHET\oled.c:84: delay(10);
      000953 90 00 0A         [24] 1212 	mov	dptr,#0x000a
                                   1213 ;	E:\Works\NSHET\oled.c:85: }
      000956 02 14 05         [24] 1214 	ljmp	_delay
                                   1215 ;------------------------------------------------------------
                                   1216 ;Allocation info for local variables in function 'cmd'
                                   1217 ;------------------------------------------------------------
                                   1218 ;cmd                       Allocated with name '_cmd_cmd_65536_108'
                                   1219 ;------------------------------------------------------------
                                   1220 ;	E:\Works\NSHET\oled.c:90: void cmd(uint8_t cmd) {
                                   1221 ;	-----------------------------------------
                                   1222 ;	 function cmd
                                   1223 ;	-----------------------------------------
      000959                       1224 _cmd:
      000959 E5 82            [12] 1225 	mov	a,dpl
      00095B 90 00 3A         [24] 1226 	mov	dptr,#_cmd_cmd_65536_108
      00095E F0               [24] 1227 	movx	@dptr,a
                                   1228 ;	E:\Works\NSHET\oled.c:91: __oled_start();
      00095F 12 08 10         [24] 1229 	lcall	___oled_start
                                   1230 ;	E:\Works\NSHET\oled.c:92: __oled_wr(addr);
      000962 90 05 8B         [24] 1231 	mov	dptr,#_addr
      000965 E0               [24] 1232 	movx	a,@dptr
      000966 F5 82            [12] 1233 	mov	dpl,a
      000968 12 08 73         [24] 1234 	lcall	___oled_wr
                                   1235 ;	E:\Works\NSHET\oled.c:93: __oled_ack();
      00096B 12 08 34         [24] 1236 	lcall	___oled_ack
                                   1237 ;	E:\Works\NSHET\oled.c:94: __oled_wr(0x00);
      00096E 75 82 00         [24] 1238 	mov	dpl,#0x00
      000971 12 08 73         [24] 1239 	lcall	___oled_wr
                                   1240 ;	E:\Works\NSHET\oled.c:95: __oled_ack();
      000974 12 08 34         [24] 1241 	lcall	___oled_ack
                                   1242 ;	E:\Works\NSHET\oled.c:96: __oled_wr(cmd);
      000977 90 00 3A         [24] 1243 	mov	dptr,#_cmd_cmd_65536_108
      00097A E0               [24] 1244 	movx	a,@dptr
      00097B F5 82            [12] 1245 	mov	dpl,a
      00097D 12 08 73         [24] 1246 	lcall	___oled_wr
                                   1247 ;	E:\Works\NSHET\oled.c:97: __oled_ack();
      000980 12 08 34         [24] 1248 	lcall	___oled_ack
                                   1249 ;	E:\Works\NSHET\oled.c:98: __oled_stop();
                                   1250 ;	E:\Works\NSHET\oled.c:99: }
      000983 02 08 22         [24] 1251 	ljmp	___oled_stop
                                   1252 ;------------------------------------------------------------
                                   1253 ;Allocation info for local variables in function 'dat'
                                   1254 ;------------------------------------------------------------
                                   1255 ;data                      Allocated with name '_dat_data_65536_110'
                                   1256 ;------------------------------------------------------------
                                   1257 ;	E:\Works\NSHET\oled.c:101: void dat(uint8_t data) {
                                   1258 ;	-----------------------------------------
                                   1259 ;	 function dat
                                   1260 ;	-----------------------------------------
      000986                       1261 _dat:
      000986 E5 82            [12] 1262 	mov	a,dpl
      000988 90 00 3B         [24] 1263 	mov	dptr,#_dat_data_65536_110
      00098B F0               [24] 1264 	movx	@dptr,a
                                   1265 ;	E:\Works\NSHET\oled.c:102: __oled_start();
      00098C 12 08 10         [24] 1266 	lcall	___oled_start
                                   1267 ;	E:\Works\NSHET\oled.c:103: __oled_wr(addr);
      00098F 90 05 8B         [24] 1268 	mov	dptr,#_addr
      000992 E0               [24] 1269 	movx	a,@dptr
      000993 F5 82            [12] 1270 	mov	dpl,a
      000995 12 08 73         [24] 1271 	lcall	___oled_wr
                                   1272 ;	E:\Works\NSHET\oled.c:104: __oled_ack();
      000998 12 08 34         [24] 1273 	lcall	___oled_ack
                                   1274 ;	E:\Works\NSHET\oled.c:105: __oled_wr(0x40);
      00099B 75 82 40         [24] 1275 	mov	dpl,#0x40
      00099E 12 08 73         [24] 1276 	lcall	___oled_wr
                                   1277 ;	E:\Works\NSHET\oled.c:106: __oled_ack();
      0009A1 12 08 34         [24] 1278 	lcall	___oled_ack
                                   1279 ;	E:\Works\NSHET\oled.c:107: __oled_wr(data);
      0009A4 90 00 3B         [24] 1280 	mov	dptr,#_dat_data_65536_110
      0009A7 E0               [24] 1281 	movx	a,@dptr
      0009A8 F5 82            [12] 1282 	mov	dpl,a
      0009AA 12 08 73         [24] 1283 	lcall	___oled_wr
                                   1284 ;	E:\Works\NSHET\oled.c:108: __oled_ack();
      0009AD 12 08 34         [24] 1285 	lcall	___oled_ack
                                   1286 ;	E:\Works\NSHET\oled.c:109: __oled_stop();
                                   1287 ;	E:\Works\NSHET\oled.c:110: }
      0009B0 02 08 22         [24] 1288 	ljmp	___oled_stop
                                   1289 ;------------------------------------------------------------
                                   1290 ;Allocation info for local variables in function 'pos'
                                   1291 ;------------------------------------------------------------
                                   1292 ;y                         Allocated with name '_pos_PARM_2'
                                   1293 ;x                         Allocated with name '_pos_x_65536_112'
                                   1294 ;------------------------------------------------------------
                                   1295 ;	E:\Works\NSHET\oled.c:112: void pos(uint8_t x, uint8_t y) {
                                   1296 ;	-----------------------------------------
                                   1297 ;	 function pos
                                   1298 ;	-----------------------------------------
      0009B3                       1299 _pos:
      0009B3 E5 82            [12] 1300 	mov	a,dpl
      0009B5 90 00 3D         [24] 1301 	mov	dptr,#_pos_x_65536_112
      0009B8 F0               [24] 1302 	movx	@dptr,a
                                   1303 ;	E:\Works\NSHET\oled.c:113: cmd(0xb0 + y);
      0009B9 90 00 3C         [24] 1304 	mov	dptr,#_pos_PARM_2
      0009BC E0               [24] 1305 	movx	a,@dptr
      0009BD 24 B0            [12] 1306 	add	a,#0xb0
      0009BF F5 82            [12] 1307 	mov	dpl,a
      0009C1 12 09 59         [24] 1308 	lcall	_cmd
                                   1309 ;	E:\Works\NSHET\oled.c:114: cmd(((x & 0xf0) >> 4) | 0x10);
      0009C4 90 00 3D         [24] 1310 	mov	dptr,#_pos_x_65536_112
      0009C7 E0               [24] 1311 	movx	a,@dptr
      0009C8 FF               [12] 1312 	mov	r7,a
      0009C9 FD               [12] 1313 	mov	r5,a
      0009CA 53 05 F0         [24] 1314 	anl	ar5,#0xf0
      0009CD E4               [12] 1315 	clr	a
      0009CE C4               [12] 1316 	swap	a
      0009CF CD               [12] 1317 	xch	a,r5
      0009D0 C4               [12] 1318 	swap	a
      0009D1 54 0F            [12] 1319 	anl	a,#0x0f
      0009D3 6D               [12] 1320 	xrl	a,r5
      0009D4 CD               [12] 1321 	xch	a,r5
      0009D5 54 0F            [12] 1322 	anl	a,#0x0f
      0009D7 CD               [12] 1323 	xch	a,r5
      0009D8 6D               [12] 1324 	xrl	a,r5
      0009D9 CD               [12] 1325 	xch	a,r5
      0009DA 30 E3 02         [24] 1326 	jnb	acc.3,00103$
      0009DD 44 F0            [12] 1327 	orl	a,#0xf0
      0009DF                       1328 00103$:
      0009DF 43 05 10         [24] 1329 	orl	ar5,#0x10
      0009E2 8D 82            [24] 1330 	mov	dpl,r5
      0009E4 C0 07            [24] 1331 	push	ar7
      0009E6 12 09 59         [24] 1332 	lcall	_cmd
      0009E9 D0 07            [24] 1333 	pop	ar7
                                   1334 ;	E:\Works\NSHET\oled.c:115: cmd(x & 0x0f);
      0009EB 53 07 0F         [24] 1335 	anl	ar7,#0x0f
      0009EE 8F 82            [24] 1336 	mov	dpl,r7
                                   1337 ;	E:\Works\NSHET\oled.c:116: }
      0009F0 02 09 59         [24] 1338 	ljmp	_cmd
                                   1339 ;------------------------------------------------------------
                                   1340 ;Allocation info for local variables in function 'oledInit'
                                   1341 ;------------------------------------------------------------
                                   1342 ;dev                       Allocated with name '_oledInit_dev_65536_114'
                                   1343 ;------------------------------------------------------------
                                   1344 ;	E:\Works\NSHET\oled.c:118: void oledInit(uint8_t dev) {
                                   1345 ;	-----------------------------------------
                                   1346 ;	 function oledInit
                                   1347 ;	-----------------------------------------
      0009F3                       1348 _oledInit:
      0009F3 E5 82            [12] 1349 	mov	a,dpl
      0009F5 90 00 3E         [24] 1350 	mov	dptr,#_oledInit_dev_65536_114
      0009F8 F0               [24] 1351 	movx	@dptr,a
                                   1352 ;	E:\Works\NSHET\oled.c:119: iic_init();
      0009F9 12 09 49         [24] 1353 	lcall	_iic_init
                                   1354 ;	E:\Works\NSHET\oled.c:120: addr = dev;
      0009FC 90 00 3E         [24] 1355 	mov	dptr,#_oledInit_dev_65536_114
      0009FF E0               [24] 1356 	movx	a,@dptr
      000A00 90 05 8B         [24] 1357 	mov	dptr,#_addr
      000A03 F0               [24] 1358 	movx	@dptr,a
                                   1359 ;	E:\Works\NSHET\oled.c:122: cmd(0xAE);//--display off
      000A04 75 82 AE         [24] 1360 	mov	dpl,#0xae
      000A07 12 09 59         [24] 1361 	lcall	_cmd
                                   1362 ;	E:\Works\NSHET\oled.c:123: cmd(0x00);//---set low column address
      000A0A 75 82 00         [24] 1363 	mov	dpl,#0x00
      000A0D 12 09 59         [24] 1364 	lcall	_cmd
                                   1365 ;	E:\Works\NSHET\oled.c:124: cmd(0x10);//---set high column address
      000A10 75 82 10         [24] 1366 	mov	dpl,#0x10
      000A13 12 09 59         [24] 1367 	lcall	_cmd
                                   1368 ;	E:\Works\NSHET\oled.c:125: cmd(0x40);//--set start line address
      000A16 75 82 40         [24] 1369 	mov	dpl,#0x40
      000A19 12 09 59         [24] 1370 	lcall	_cmd
                                   1371 ;	E:\Works\NSHET\oled.c:126: cmd(0xB0);//--set page address
      000A1C 75 82 B0         [24] 1372 	mov	dpl,#0xb0
      000A1F 12 09 59         [24] 1373 	lcall	_cmd
                                   1374 ;	E:\Works\NSHET\oled.c:127: cmd(0x81); // contract control
      000A22 75 82 81         [24] 1375 	mov	dpl,#0x81
      000A25 12 09 59         [24] 1376 	lcall	_cmd
                                   1377 ;	E:\Works\NSHET\oled.c:128: cmd(0xFF);//--128
      000A28 75 82 FF         [24] 1378 	mov	dpl,#0xff
      000A2B 12 09 59         [24] 1379 	lcall	_cmd
                                   1380 ;	E:\Works\NSHET\oled.c:129: cmd(0xA1);//set segment remap
      000A2E 75 82 A1         [24] 1381 	mov	dpl,#0xa1
      000A31 12 09 59         [24] 1382 	lcall	_cmd
                                   1383 ;	E:\Works\NSHET\oled.c:130: cmd(0xA6);//--normal / reverse
      000A34 75 82 A6         [24] 1384 	mov	dpl,#0xa6
      000A37 12 09 59         [24] 1385 	lcall	_cmd
                                   1386 ;	E:\Works\NSHET\oled.c:132: cmd(0xA8);//--set multiplex ratio(1 to 64)
      000A3A 75 82 A8         [24] 1387 	mov	dpl,#0xa8
      000A3D 12 09 59         [24] 1388 	lcall	_cmd
                                   1389 ;	E:\Works\NSHET\oled.c:133: if (addr == OLED_SCREEN_BIG)
      000A40 90 05 8B         [24] 1390 	mov	dptr,#_addr
      000A43 E0               [24] 1391 	movx	a,@dptr
      000A44 FF               [12] 1392 	mov	r7,a
      000A45 BF 7A 08         [24] 1393 	cjne	r7,#0x7a,00102$
                                   1394 ;	E:\Works\NSHET\oled.c:134: cmd(0x3F);//--1/32 duty
      000A48 75 82 3F         [24] 1395 	mov	dpl,#0x3f
      000A4B 12 09 59         [24] 1396 	lcall	_cmd
      000A4E 80 06            [24] 1397 	sjmp	00103$
      000A50                       1398 00102$:
                                   1399 ;	E:\Works\NSHET\oled.c:135: else cmd(0x1F);
      000A50 75 82 1F         [24] 1400 	mov	dpl,#0x1f
      000A53 12 09 59         [24] 1401 	lcall	_cmd
      000A56                       1402 00103$:
                                   1403 ;	E:\Works\NSHET\oled.c:137: cmd(0xC8);//Com scan direction
      000A56 75 82 C8         [24] 1404 	mov	dpl,#0xc8
      000A59 12 09 59         [24] 1405 	lcall	_cmd
                                   1406 ;	E:\Works\NSHET\oled.c:138: cmd(0xD3);//-set display offset
      000A5C 75 82 D3         [24] 1407 	mov	dpl,#0xd3
      000A5F 12 09 59         [24] 1408 	lcall	_cmd
                                   1409 ;	E:\Works\NSHET\oled.c:139: cmd(0x00);//
      000A62 75 82 00         [24] 1410 	mov	dpl,#0x00
      000A65 12 09 59         [24] 1411 	lcall	_cmd
                                   1412 ;	E:\Works\NSHET\oled.c:141: cmd(0xD5);//set osc division
      000A68 75 82 D5         [24] 1413 	mov	dpl,#0xd5
      000A6B 12 09 59         [24] 1414 	lcall	_cmd
                                   1415 ;	E:\Works\NSHET\oled.c:142: cmd(0x80);//
      000A6E 75 82 80         [24] 1416 	mov	dpl,#0x80
      000A71 12 09 59         [24] 1417 	lcall	_cmd
                                   1418 ;	E:\Works\NSHET\oled.c:144: cmd(0xD8);//set area color mode off
      000A74 75 82 D8         [24] 1419 	mov	dpl,#0xd8
      000A77 12 09 59         [24] 1420 	lcall	_cmd
                                   1421 ;	E:\Works\NSHET\oled.c:145: cmd(0x05);//
      000A7A 75 82 05         [24] 1422 	mov	dpl,#0x05
      000A7D 12 09 59         [24] 1423 	lcall	_cmd
                                   1424 ;	E:\Works\NSHET\oled.c:147: cmd(0xD9);//Set Pre-Charge Period
      000A80 75 82 D9         [24] 1425 	mov	dpl,#0xd9
      000A83 12 09 59         [24] 1426 	lcall	_cmd
                                   1427 ;	E:\Works\NSHET\oled.c:148: cmd(0xF1);//
      000A86 75 82 F1         [24] 1428 	mov	dpl,#0xf1
      000A89 12 09 59         [24] 1429 	lcall	_cmd
                                   1430 ;	E:\Works\NSHET\oled.c:150: cmd(0xDA);//set com pin configuartion
      000A8C 75 82 DA         [24] 1431 	mov	dpl,#0xda
      000A8F 12 09 59         [24] 1432 	lcall	_cmd
                                   1433 ;	E:\Works\NSHET\oled.c:151: if (addr == OLED_SCREEN_BIG)
      000A92 90 05 8B         [24] 1434 	mov	dptr,#_addr
      000A95 E0               [24] 1435 	movx	a,@dptr
      000A96 FF               [12] 1436 	mov	r7,a
      000A97 BF 7A 08         [24] 1437 	cjne	r7,#0x7a,00105$
                                   1438 ;	E:\Works\NSHET\oled.c:152: cmd(0x12);
      000A9A 75 82 12         [24] 1439 	mov	dpl,#0x12
      000A9D 12 09 59         [24] 1440 	lcall	_cmd
      000AA0 80 06            [24] 1441 	sjmp	00106$
      000AA2                       1442 00105$:
                                   1443 ;	E:\Works\NSHET\oled.c:153: else cmd(0x02);
      000AA2 75 82 02         [24] 1444 	mov	dpl,#0x02
      000AA5 12 09 59         [24] 1445 	lcall	_cmd
      000AA8                       1446 00106$:
                                   1447 ;	E:\Works\NSHET\oled.c:155: cmd(0xDB);//set Vcomh
      000AA8 75 82 DB         [24] 1448 	mov	dpl,#0xdb
      000AAB 12 09 59         [24] 1449 	lcall	_cmd
                                   1450 ;	E:\Works\NSHET\oled.c:156: cmd(0x30);//
      000AAE 75 82 30         [24] 1451 	mov	dpl,#0x30
      000AB1 12 09 59         [24] 1452 	lcall	_cmd
                                   1453 ;	E:\Works\NSHET\oled.c:158: cmd(0x8D);//set charge pump enable
      000AB4 75 82 8D         [24] 1454 	mov	dpl,#0x8d
      000AB7 12 09 59         [24] 1455 	lcall	_cmd
                                   1456 ;	E:\Works\NSHET\oled.c:159: cmd(0x14);//
      000ABA 75 82 14         [24] 1457 	mov	dpl,#0x14
      000ABD 12 09 59         [24] 1458 	lcall	_cmd
                                   1459 ;	E:\Works\NSHET\oled.c:161: cmd(0xAF);//--turn on oled panel
      000AC0 75 82 AF         [24] 1460 	mov	dpl,#0xaf
      000AC3 12 09 59         [24] 1461 	lcall	_cmd
                                   1462 ;	E:\Works\NSHET\oled.c:163: cmd(0x21); //Set column address range
      000AC6 75 82 21         [24] 1463 	mov	dpl,#0x21
      000AC9 12 09 59         [24] 1464 	lcall	_cmd
                                   1465 ;	E:\Works\NSHET\oled.c:164: cmd(0x00);
      000ACC 75 82 00         [24] 1466 	mov	dpl,#0x00
      000ACF 12 09 59         [24] 1467 	lcall	_cmd
                                   1468 ;	E:\Works\NSHET\oled.c:165: cmd(0x7F); //127
      000AD2 75 82 7F         [24] 1469 	mov	dpl,#0x7f
      000AD5 12 09 59         [24] 1470 	lcall	_cmd
                                   1471 ;	E:\Works\NSHET\oled.c:167: cmd(0x22); //Set page address range
      000AD8 75 82 22         [24] 1472 	mov	dpl,#0x22
      000ADB 12 09 59         [24] 1473 	lcall	_cmd
                                   1474 ;	E:\Works\NSHET\oled.c:168: cmd(0x00);
      000ADE 75 82 00         [24] 1475 	mov	dpl,#0x00
      000AE1 12 09 59         [24] 1476 	lcall	_cmd
                                   1477 ;	E:\Works\NSHET\oled.c:169: if (addr == OLED_SCREEN_BIG)
      000AE4 90 05 8B         [24] 1478 	mov	dptr,#_addr
      000AE7 E0               [24] 1479 	movx	a,@dptr
      000AE8 FF               [12] 1480 	mov	r7,a
      000AE9 BF 7A 08         [24] 1481 	cjne	r7,#0x7a,00108$
                                   1482 ;	E:\Works\NSHET\oled.c:170: cmd(0x07); //7
      000AEC 75 82 07         [24] 1483 	mov	dpl,#0x07
      000AEF 12 09 59         [24] 1484 	lcall	_cmd
      000AF2 80 06            [24] 1485 	sjmp	00109$
      000AF4                       1486 00108$:
                                   1487 ;	E:\Works\NSHET\oled.c:171: else cmd(0x03); //3
      000AF4 75 82 03         [24] 1488 	mov	dpl,#0x03
      000AF7 12 09 59         [24] 1489 	lcall	_cmd
      000AFA                       1490 00109$:
                                   1491 ;	E:\Works\NSHET\oled.c:173: oledClear();
                                   1492 ;	E:\Works\NSHET\oled.c:174: }
      000AFA 02 0B 14         [24] 1493 	ljmp	_oledClear
                                   1494 ;------------------------------------------------------------
                                   1495 ;Allocation info for local variables in function 'oledBright'
                                   1496 ;------------------------------------------------------------
                                   1497 ;bright                    Allocated with name '_oledBright_bright_65536_116'
                                   1498 ;------------------------------------------------------------
                                   1499 ;	E:\Works\NSHET\oled.c:176: void oledBright(uint8_t bright) {
                                   1500 ;	-----------------------------------------
                                   1501 ;	 function oledBright
                                   1502 ;	-----------------------------------------
      000AFD                       1503 _oledBright:
      000AFD E5 82            [12] 1504 	mov	a,dpl
      000AFF 90 00 3F         [24] 1505 	mov	dptr,#_oledBright_bright_65536_116
      000B02 F0               [24] 1506 	movx	@dptr,a
                                   1507 ;	E:\Works\NSHET\oled.c:177: cmd(0x81);
      000B03 75 82 81         [24] 1508 	mov	dpl,#0x81
      000B06 12 09 59         [24] 1509 	lcall	_cmd
                                   1510 ;	E:\Works\NSHET\oled.c:178: cmd(bright & 0x7F);
      000B09 90 00 3F         [24] 1511 	mov	dptr,#_oledBright_bright_65536_116
      000B0C E0               [24] 1512 	movx	a,@dptr
      000B0D 54 7F            [12] 1513 	anl	a,#0x7f
      000B0F F5 82            [12] 1514 	mov	dpl,a
                                   1515 ;	E:\Works\NSHET\oled.c:179: }
      000B11 02 09 59         [24] 1516 	ljmp	_cmd
                                   1517 ;------------------------------------------------------------
                                   1518 ;Allocation info for local variables in function 'oledClear'
                                   1519 ;------------------------------------------------------------
                                   1520 ;max                       Allocated with name '_oledClear_max_65536_118'
                                   1521 ;m                         Allocated with name '_oledClear_m_131072_119'
                                   1522 ;n                         Allocated with name '_oledClear_n_262144_121'
                                   1523 ;------------------------------------------------------------
                                   1524 ;	E:\Works\NSHET\oled.c:181: void oledClear() {
                                   1525 ;	-----------------------------------------
                                   1526 ;	 function oledClear
                                   1527 ;	-----------------------------------------
      000B14                       1528 _oledClear:
                                   1529 ;	E:\Works\NSHET\oled.c:182: uint8_t max = (addr == OLED_SCREEN_BIG) ? 8 : 4;
      000B14 90 05 8B         [24] 1530 	mov	dptr,#_addr
      000B17 E0               [24] 1531 	movx	a,@dptr
      000B18 FF               [12] 1532 	mov	r7,a
      000B19 BF 7A 06         [24] 1533 	cjne	r7,#0x7a,00111$
      000B1C 7E 08            [12] 1534 	mov	r6,#0x08
      000B1E 7F 00            [12] 1535 	mov	r7,#0x00
      000B20 80 04            [24] 1536 	sjmp	00112$
      000B22                       1537 00111$:
      000B22 7E 04            [12] 1538 	mov	r6,#0x04
      000B24 7F 00            [12] 1539 	mov	r7,#0x00
      000B26                       1540 00112$:
                                   1541 ;	E:\Works\NSHET\oled.c:183: for (uint8_t m = 0; m < max; m++) {
      000B26 7F 00            [12] 1542 	mov	r7,#0x00
      000B28                       1543 00107$:
      000B28 C3               [12] 1544 	clr	c
      000B29 EF               [12] 1545 	mov	a,r7
      000B2A 9E               [12] 1546 	subb	a,r6
      000B2B 50 32            [24] 1547 	jnc	00109$
                                   1548 ;	E:\Works\NSHET\oled.c:184: pos(0, m);
      000B2D 90 00 3C         [24] 1549 	mov	dptr,#_pos_PARM_2
      000B30 EF               [12] 1550 	mov	a,r7
      000B31 F0               [24] 1551 	movx	@dptr,a
      000B32 75 82 00         [24] 1552 	mov	dpl,#0x00
      000B35 C0 07            [24] 1553 	push	ar7
      000B37 C0 06            [24] 1554 	push	ar6
      000B39 12 09 B3         [24] 1555 	lcall	_pos
      000B3C D0 06            [24] 1556 	pop	ar6
      000B3E D0 07            [24] 1557 	pop	ar7
                                   1558 ;	E:\Works\NSHET\oled.c:185: for (uint8_t n = 0; n < 128; n++)
      000B40 7D 00            [12] 1559 	mov	r5,#0x00
      000B42                       1560 00104$:
      000B42 BD 80 00         [24] 1561 	cjne	r5,#0x80,00138$
      000B45                       1562 00138$:
      000B45 50 15            [24] 1563 	jnc	00108$
                                   1564 ;	E:\Works\NSHET\oled.c:186: dat(0x00);
      000B47 75 82 00         [24] 1565 	mov	dpl,#0x00
      000B4A C0 07            [24] 1566 	push	ar7
      000B4C C0 06            [24] 1567 	push	ar6
      000B4E C0 05            [24] 1568 	push	ar5
      000B50 12 09 86         [24] 1569 	lcall	_dat
      000B53 D0 05            [24] 1570 	pop	ar5
      000B55 D0 06            [24] 1571 	pop	ar6
      000B57 D0 07            [24] 1572 	pop	ar7
                                   1573 ;	E:\Works\NSHET\oled.c:185: for (uint8_t n = 0; n < 128; n++)
      000B59 0D               [12] 1574 	inc	r5
      000B5A 80 E6            [24] 1575 	sjmp	00104$
      000B5C                       1576 00108$:
                                   1577 ;	E:\Works\NSHET\oled.c:183: for (uint8_t m = 0; m < max; m++) {
      000B5C 0F               [12] 1578 	inc	r7
      000B5D 80 C9            [24] 1579 	sjmp	00107$
      000B5F                       1580 00109$:
                                   1581 ;	E:\Works\NSHET\oled.c:188: }
      000B5F 22               [24] 1582 	ret
                                   1583 ;------------------------------------------------------------
                                   1584 ;Allocation info for local variables in function 'oledSwitch'
                                   1585 ;------------------------------------------------------------
                                   1586 ;state                     Allocated with name '_oledSwitch_state_65536_122'
                                   1587 ;------------------------------------------------------------
                                   1588 ;	E:\Works\NSHET\oled.c:190: void oledSwitch(uint8_t state) {
                                   1589 ;	-----------------------------------------
                                   1590 ;	 function oledSwitch
                                   1591 ;	-----------------------------------------
      000B60                       1592 _oledSwitch:
      000B60 E5 82            [12] 1593 	mov	a,dpl
      000B62 90 00 40         [24] 1594 	mov	dptr,#_oledSwitch_state_65536_122
      000B65 F0               [24] 1595 	movx	@dptr,a
                                   1596 ;	E:\Works\NSHET\oled.c:191: if (state != 0) {
      000B66 E0               [24] 1597 	movx	a,@dptr
      000B67 60 12            [24] 1598 	jz	00102$
                                   1599 ;	E:\Works\NSHET\oled.c:192: cmd(0x8D);
      000B69 75 82 8D         [24] 1600 	mov	dpl,#0x8d
      000B6C 12 09 59         [24] 1601 	lcall	_cmd
                                   1602 ;	E:\Works\NSHET\oled.c:193: cmd(0x14);
      000B6F 75 82 14         [24] 1603 	mov	dpl,#0x14
      000B72 12 09 59         [24] 1604 	lcall	_cmd
                                   1605 ;	E:\Works\NSHET\oled.c:194: cmd(0xAF);
      000B75 75 82 AF         [24] 1606 	mov	dpl,#0xaf
      000B78 02 09 59         [24] 1607 	ljmp	_cmd
      000B7B                       1608 00102$:
                                   1609 ;	E:\Works\NSHET\oled.c:196: cmd(0x8D);
      000B7B 75 82 8D         [24] 1610 	mov	dpl,#0x8d
      000B7E 12 09 59         [24] 1611 	lcall	_cmd
                                   1612 ;	E:\Works\NSHET\oled.c:197: cmd(0x10);
      000B81 75 82 10         [24] 1613 	mov	dpl,#0x10
      000B84 12 09 59         [24] 1614 	lcall	_cmd
                                   1615 ;	E:\Works\NSHET\oled.c:198: cmd(0xAE);
      000B87 75 82 AE         [24] 1616 	mov	dpl,#0xae
                                   1617 ;	E:\Works\NSHET\oled.c:200: }
      000B8A 02 09 59         [24] 1618 	ljmp	_cmd
                                   1619 ;------------------------------------------------------------
                                   1620 ;Allocation info for local variables in function 'oledSize'
                                   1621 ;------------------------------------------------------------
                                   1622 ;h                         Allocated with name '_oledSize_PARM_2'
                                   1623 ;w                         Allocated with name '_oledSize_w_65536_126'
                                   1624 ;------------------------------------------------------------
                                   1625 ;	E:\Works\NSHET\oled.c:202: void oledSize(uint8_t* w, uint8_t* h) {
                                   1626 ;	-----------------------------------------
                                   1627 ;	 function oledSize
                                   1628 ;	-----------------------------------------
      000B8D                       1629 _oledSize:
      000B8D AF F0            [24] 1630 	mov	r7,b
      000B8F AE 83            [24] 1631 	mov	r6,dph
      000B91 E5 82            [12] 1632 	mov	a,dpl
      000B93 90 00 44         [24] 1633 	mov	dptr,#_oledSize_w_65536_126
      000B96 F0               [24] 1634 	movx	@dptr,a
      000B97 EE               [12] 1635 	mov	a,r6
      000B98 A3               [24] 1636 	inc	dptr
      000B99 F0               [24] 1637 	movx	@dptr,a
      000B9A EF               [12] 1638 	mov	a,r7
      000B9B A3               [24] 1639 	inc	dptr
      000B9C F0               [24] 1640 	movx	@dptr,a
                                   1641 ;	E:\Works\NSHET\oled.c:203: if (addr == OLED_SCREEN_BIG) {
      000B9D 90 05 8B         [24] 1642 	mov	dptr,#_addr
      000BA0 E0               [24] 1643 	movx	a,@dptr
      000BA1 FF               [12] 1644 	mov	r7,a
      000BA2 BF 7A 2C         [24] 1645 	cjne	r7,#0x7a,00104$
                                   1646 ;	E:\Works\NSHET\oled.c:204: *w = 128; *h = 64;
      000BA5 90 00 44         [24] 1647 	mov	dptr,#_oledSize_w_65536_126
      000BA8 E0               [24] 1648 	movx	a,@dptr
      000BA9 FC               [12] 1649 	mov	r4,a
      000BAA A3               [24] 1650 	inc	dptr
      000BAB E0               [24] 1651 	movx	a,@dptr
      000BAC FD               [12] 1652 	mov	r5,a
      000BAD A3               [24] 1653 	inc	dptr
      000BAE E0               [24] 1654 	movx	a,@dptr
      000BAF FE               [12] 1655 	mov	r6,a
      000BB0 8C 82            [24] 1656 	mov	dpl,r4
      000BB2 8D 83            [24] 1657 	mov	dph,r5
      000BB4 8E F0            [24] 1658 	mov	b,r6
      000BB6 74 80            [12] 1659 	mov	a,#0x80
      000BB8 12 20 6D         [24] 1660 	lcall	__gptrput
      000BBB 90 00 41         [24] 1661 	mov	dptr,#_oledSize_PARM_2
      000BBE E0               [24] 1662 	movx	a,@dptr
      000BBF FC               [12] 1663 	mov	r4,a
      000BC0 A3               [24] 1664 	inc	dptr
      000BC1 E0               [24] 1665 	movx	a,@dptr
      000BC2 FD               [12] 1666 	mov	r5,a
      000BC3 A3               [24] 1667 	inc	dptr
      000BC4 E0               [24] 1668 	movx	a,@dptr
      000BC5 FE               [12] 1669 	mov	r6,a
      000BC6 8C 82            [24] 1670 	mov	dpl,r4
      000BC8 8D 83            [24] 1671 	mov	dph,r5
      000BCA 8E F0            [24] 1672 	mov	b,r6
      000BCC 74 40            [12] 1673 	mov	a,#0x40
      000BCE 02 20 6D         [24] 1674 	ljmp	__gptrput
      000BD1                       1675 00104$:
                                   1676 ;	E:\Works\NSHET\oled.c:205: } else if (addr == OLED_SCREEN_SMALL) {
      000BD1 BF 78 2C         [24] 1677 	cjne	r7,#0x78,00106$
                                   1678 ;	E:\Works\NSHET\oled.c:206: *w = 128; *h = 32;
      000BD4 90 00 44         [24] 1679 	mov	dptr,#_oledSize_w_65536_126
      000BD7 E0               [24] 1680 	movx	a,@dptr
      000BD8 FD               [12] 1681 	mov	r5,a
      000BD9 A3               [24] 1682 	inc	dptr
      000BDA E0               [24] 1683 	movx	a,@dptr
      000BDB FE               [12] 1684 	mov	r6,a
      000BDC A3               [24] 1685 	inc	dptr
      000BDD E0               [24] 1686 	movx	a,@dptr
      000BDE FF               [12] 1687 	mov	r7,a
      000BDF 8D 82            [24] 1688 	mov	dpl,r5
      000BE1 8E 83            [24] 1689 	mov	dph,r6
      000BE3 8F F0            [24] 1690 	mov	b,r7
      000BE5 74 80            [12] 1691 	mov	a,#0x80
      000BE7 12 20 6D         [24] 1692 	lcall	__gptrput
      000BEA 90 00 41         [24] 1693 	mov	dptr,#_oledSize_PARM_2
      000BED E0               [24] 1694 	movx	a,@dptr
      000BEE FD               [12] 1695 	mov	r5,a
      000BEF A3               [24] 1696 	inc	dptr
      000BF0 E0               [24] 1697 	movx	a,@dptr
      000BF1 FE               [12] 1698 	mov	r6,a
      000BF2 A3               [24] 1699 	inc	dptr
      000BF3 E0               [24] 1700 	movx	a,@dptr
      000BF4 FF               [12] 1701 	mov	r7,a
      000BF5 8D 82            [24] 1702 	mov	dpl,r5
      000BF7 8E 83            [24] 1703 	mov	dph,r6
      000BF9 8F F0            [24] 1704 	mov	b,r7
      000BFB 74 20            [12] 1705 	mov	a,#0x20
                                   1706 ;	E:\Works\NSHET\oled.c:208: }
      000BFD 02 20 6D         [24] 1707 	ljmp	__gptrput
      000C00                       1708 00106$:
      000C00 22               [24] 1709 	ret
                                   1710 ;------------------------------------------------------------
                                   1711 ;Allocation info for local variables in function 'oledChar'
                                   1712 ;------------------------------------------------------------
                                   1713 ;sloc0                     Allocated with name '_oledChar_sloc0_1_0'
                                   1714 ;sloc1                     Allocated with name '_oledChar_sloc1_1_0'
                                   1715 ;sloc2                     Allocated with name '_oledChar_sloc2_1_0'
                                   1716 ;sloc3                     Allocated with name '_oledChar_sloc3_1_0'
                                   1717 ;sloc4                     Allocated with name '_oledChar_sloc4_1_0'
                                   1718 ;sloc5                     Allocated with name '_oledChar_sloc5_1_0'
                                   1719 ;sloc6                     Allocated with name '_oledChar_sloc6_1_0'
                                   1720 ;y                         Allocated with name '_oledChar_PARM_2'
                                   1721 ;fid                       Allocated with name '_oledChar_PARM_3'
                                   1722 ;color                     Allocated with name '_oledChar_PARM_4'
                                   1723 ;c                         Allocated with name '_oledChar_PARM_5'
                                   1724 ;x                         Allocated with name '_oledChar_x_65536_130'
                                   1725 ;font                      Allocated with name '_oledChar_font_65536_131'
                                   1726 ;f_w                       Allocated with name '_oledChar_f_w_65536_131'
                                   1727 ;f_h                       Allocated with name '_oledChar_f_h_65536_131'
                                   1728 ;W                         Allocated with name '_oledChar_W_65536_131'
                                   1729 ;H                         Allocated with name '_oledChar_H_65536_131'
                                   1730 ;seg                       Allocated with name '_oledChar_seg_131072_133'
                                   1731 ;col                       Allocated with name '_oledChar_col_262144_135'
                                   1732 ;i                         Allocated with name '_oledChar_i_262144_137'
                                   1733 ;------------------------------------------------------------
                                   1734 ;	E:\Works\NSHET\oled.c:210: void oledChar(uint8_t x, uint8_t y, uint8_t fid, uint8_t color, char c) {
                                   1735 ;	-----------------------------------------
                                   1736 ;	 function oledChar
                                   1737 ;	-----------------------------------------
      000C01                       1738 _oledChar:
      000C01 E5 82            [12] 1739 	mov	a,dpl
      000C03 90 00 4B         [24] 1740 	mov	dptr,#_oledChar_x_65536_130
      000C06 F0               [24] 1741 	movx	@dptr,a
                                   1742 ;	E:\Works\NSHET\oled.c:214: c -= ' ';
      000C07 90 00 4A         [24] 1743 	mov	dptr,#_oledChar_PARM_5
      000C0A E0               [24] 1744 	movx	a,@dptr
      000C0B 24 E0            [12] 1745 	add	a,#0xe0
      000C0D F0               [24] 1746 	movx	@dptr,a
                                   1747 ;	E:\Works\NSHET\oled.c:215: font = fontGet(fid);
      000C0E 90 00 48         [24] 1748 	mov	dptr,#_oledChar_PARM_3
      000C11 E0               [24] 1749 	movx	a,@dptr
      000C12 F5 82            [12] 1750 	mov	dpl,a
      000C14 12 06 56         [24] 1751 	lcall	_fontGet
      000C17 AD 82            [24] 1752 	mov	r5,dpl
      000C19 AE 83            [24] 1753 	mov	r6,dph
      000C1B AF F0            [24] 1754 	mov	r7,b
                                   1755 ;	E:\Works\NSHET\oled.c:216: fontSize(font, &f_w, &f_h);
      000C1D 90 00 1C         [24] 1756 	mov	dptr,#_fontSize_PARM_2
      000C20 74 4C            [12] 1757 	mov	a,#_oledChar_f_w_65536_131
      000C22 F0               [24] 1758 	movx	@dptr,a
      000C23 74 00            [12] 1759 	mov	a,#(_oledChar_f_w_65536_131 >> 8)
      000C25 A3               [24] 1760 	inc	dptr
      000C26 F0               [24] 1761 	movx	@dptr,a
      000C27 E4               [12] 1762 	clr	a
      000C28 A3               [24] 1763 	inc	dptr
      000C29 F0               [24] 1764 	movx	@dptr,a
      000C2A 90 00 1F         [24] 1765 	mov	dptr,#_fontSize_PARM_3
      000C2D 74 4D            [12] 1766 	mov	a,#_oledChar_f_h_65536_131
      000C2F F0               [24] 1767 	movx	@dptr,a
      000C30 74 00            [12] 1768 	mov	a,#(_oledChar_f_h_65536_131 >> 8)
      000C32 A3               [24] 1769 	inc	dptr
      000C33 F0               [24] 1770 	movx	@dptr,a
      000C34 E4               [12] 1771 	clr	a
      000C35 A3               [24] 1772 	inc	dptr
      000C36 F0               [24] 1773 	movx	@dptr,a
      000C37 8D 82            [24] 1774 	mov	dpl,r5
      000C39 8E 83            [24] 1775 	mov	dph,r6
      000C3B 8F F0            [24] 1776 	mov	b,r7
      000C3D C0 07            [24] 1777 	push	ar7
      000C3F C0 06            [24] 1778 	push	ar6
      000C41 C0 05            [24] 1779 	push	ar5
      000C43 12 06 93         [24] 1780 	lcall	_fontSize
                                   1781 ;	E:\Works\NSHET\oled.c:217: oledSize(&W, &H);
      000C46 90 00 41         [24] 1782 	mov	dptr,#_oledSize_PARM_2
      000C49 74 4F            [12] 1783 	mov	a,#_oledChar_H_65536_131
      000C4B F0               [24] 1784 	movx	@dptr,a
      000C4C 74 00            [12] 1785 	mov	a,#(_oledChar_H_65536_131 >> 8)
      000C4E A3               [24] 1786 	inc	dptr
      000C4F F0               [24] 1787 	movx	@dptr,a
      000C50 E4               [12] 1788 	clr	a
      000C51 A3               [24] 1789 	inc	dptr
      000C52 F0               [24] 1790 	movx	@dptr,a
      000C53 90 00 4E         [24] 1791 	mov	dptr,#_oledChar_W_65536_131
      000C56 75 F0 00         [24] 1792 	mov	b,#0x00
      000C59 12 0B 8D         [24] 1793 	lcall	_oledSize
      000C5C D0 05            [24] 1794 	pop	ar5
      000C5E D0 06            [24] 1795 	pop	ar6
      000C60 D0 07            [24] 1796 	pop	ar7
                                   1797 ;	E:\Works\NSHET\oled.c:219: if (x > W - f_w) { x = 0; y += f_h / 8; }
      000C62 90 00 4E         [24] 1798 	mov	dptr,#_oledChar_W_65536_131
      000C65 E0               [24] 1799 	movx	a,@dptr
      000C66 FC               [12] 1800 	mov	r4,a
      000C67 7B 00            [12] 1801 	mov	r3,#0x00
      000C69 90 00 4C         [24] 1802 	mov	dptr,#_oledChar_f_w_65536_131
      000C6C E0               [24] 1803 	movx	a,@dptr
      000C6D F9               [12] 1804 	mov	r1,a
      000C6E 7A 00            [12] 1805 	mov	r2,#0x00
      000C70 EC               [12] 1806 	mov	a,r4
      000C71 C3               [12] 1807 	clr	c
      000C72 99               [12] 1808 	subb	a,r1
      000C73 FC               [12] 1809 	mov	r4,a
      000C74 EB               [12] 1810 	mov	a,r3
      000C75 9A               [12] 1811 	subb	a,r2
      000C76 FB               [12] 1812 	mov	r3,a
      000C77 90 00 4B         [24] 1813 	mov	dptr,#_oledChar_x_65536_130
      000C7A E0               [24] 1814 	movx	a,@dptr
      000C7B F9               [12] 1815 	mov	r1,a
      000C7C 7A 00            [12] 1816 	mov	r2,#0x00
      000C7E C3               [12] 1817 	clr	c
      000C7F EC               [12] 1818 	mov	a,r4
      000C80 99               [12] 1819 	subb	a,r1
      000C81 EB               [12] 1820 	mov	a,r3
      000C82 64 80            [12] 1821 	xrl	a,#0x80
      000C84 8A F0            [24] 1822 	mov	b,r2
      000C86 63 F0 80         [24] 1823 	xrl	b,#0x80
      000C89 95 F0            [12] 1824 	subb	a,b
      000C8B 50 31            [24] 1825 	jnc	00126$
      000C8D 90 00 4B         [24] 1826 	mov	dptr,#_oledChar_x_65536_130
      000C90 E4               [12] 1827 	clr	a
      000C91 F0               [24] 1828 	movx	@dptr,a
      000C92 90 00 4D         [24] 1829 	mov	dptr,#_oledChar_f_h_65536_131
      000C95 E0               [24] 1830 	movx	a,@dptr
      000C96 FC               [12] 1831 	mov	r4,a
      000C97 7B 00            [12] 1832 	mov	r3,#0x00
      000C99 90 00 DF         [24] 1833 	mov	dptr,#__divsint_PARM_2
      000C9C 74 08            [12] 1834 	mov	a,#0x08
      000C9E F0               [24] 1835 	movx	@dptr,a
      000C9F E4               [12] 1836 	clr	a
      000CA0 A3               [24] 1837 	inc	dptr
      000CA1 F0               [24] 1838 	movx	@dptr,a
      000CA2 8C 82            [24] 1839 	mov	dpl,r4
      000CA4 8B 83            [24] 1840 	mov	dph,r3
      000CA6 C0 07            [24] 1841 	push	ar7
      000CA8 C0 06            [24] 1842 	push	ar6
      000CAA C0 05            [24] 1843 	push	ar5
      000CAC 12 26 4D         [24] 1844 	lcall	__divsint
      000CAF AB 82            [24] 1845 	mov	r3,dpl
      000CB1 D0 05            [24] 1846 	pop	ar5
      000CB3 D0 06            [24] 1847 	pop	ar6
      000CB5 D0 07            [24] 1848 	pop	ar7
      000CB7 90 00 47         [24] 1849 	mov	dptr,#_oledChar_PARM_2
      000CBA E0               [24] 1850 	movx	a,@dptr
      000CBB FC               [12] 1851 	mov	r4,a
      000CBC 2B               [12] 1852 	add	a,r3
      000CBD F0               [24] 1853 	movx	@dptr,a
                                   1854 ;	E:\Works\NSHET\oled.c:221: for (uint8_t seg = 0; seg < f_h / 8; seg++) {
      000CBE                       1855 00126$:
      000CBE 90 00 4A         [24] 1856 	mov	dptr,#_oledChar_PARM_5
      000CC1 E0               [24] 1857 	movx	a,@dptr
      000CC2 F5 1C            [12] 1858 	mov	_oledChar_sloc6_1_0,a
      000CC4 90 00 49         [24] 1859 	mov	dptr,#_oledChar_PARM_4
      000CC7 E0               [24] 1860 	movx	a,@dptr
      000CC8 F5 1A            [12] 1861 	mov	_oledChar_sloc4_1_0,a
      000CCA 90 00 4B         [24] 1862 	mov	dptr,#_oledChar_x_65536_130
      000CCD E0               [24] 1863 	movx	a,@dptr
      000CCE F5 14            [12] 1864 	mov	_oledChar_sloc0_1_0,a
      000CD0 90 00 47         [24] 1865 	mov	dptr,#_oledChar_PARM_2
      000CD3 E0               [24] 1866 	movx	a,@dptr
      000CD4 F9               [12] 1867 	mov	r1,a
      000CD5 78 00            [12] 1868 	mov	r0,#0x00
      000CD7                       1869 00115$:
      000CD7 C0 01            [24] 1870 	push	ar1
      000CD9 90 00 4D         [24] 1871 	mov	dptr,#_oledChar_f_h_65536_131
      000CDC E0               [24] 1872 	movx	a,@dptr
      000CDD F9               [12] 1873 	mov	r1,a
      000CDE 7A 00            [12] 1874 	mov	r2,#0x00
      000CE0 90 00 DF         [24] 1875 	mov	dptr,#__divsint_PARM_2
      000CE3 74 08            [12] 1876 	mov	a,#0x08
      000CE5 F0               [24] 1877 	movx	@dptr,a
      000CE6 E4               [12] 1878 	clr	a
      000CE7 A3               [24] 1879 	inc	dptr
      000CE8 F0               [24] 1880 	movx	@dptr,a
      000CE9 89 82            [24] 1881 	mov	dpl,r1
      000CEB 8A 83            [24] 1882 	mov	dph,r2
      000CED C0 07            [24] 1883 	push	ar7
      000CEF C0 06            [24] 1884 	push	ar6
      000CF1 C0 05            [24] 1885 	push	ar5
      000CF3 C0 01            [24] 1886 	push	ar1
      000CF5 C0 00            [24] 1887 	push	ar0
      000CF7 12 26 4D         [24] 1888 	lcall	__divsint
      000CFA 85 82 15         [24] 1889 	mov	_oledChar_sloc1_1_0,dpl
      000CFD 85 83 16         [24] 1890 	mov	(_oledChar_sloc1_1_0 + 1),dph
      000D00 D0 00            [24] 1891 	pop	ar0
      000D02 D0 01            [24] 1892 	pop	ar1
      000D04 D0 05            [24] 1893 	pop	ar5
      000D06 D0 06            [24] 1894 	pop	ar6
      000D08 D0 07            [24] 1895 	pop	ar7
      000D0A 88 01            [24] 1896 	mov	ar1,r0
      000D0C 7A 00            [12] 1897 	mov	r2,#0x00
      000D0E C3               [12] 1898 	clr	c
      000D0F E9               [12] 1899 	mov	a,r1
      000D10 95 15            [12] 1900 	subb	a,_oledChar_sloc1_1_0
      000D12 EA               [12] 1901 	mov	a,r2
      000D13 64 80            [12] 1902 	xrl	a,#0x80
      000D15 85 16 F0         [24] 1903 	mov	b,(_oledChar_sloc1_1_0 + 1)
      000D18 63 F0 80         [24] 1904 	xrl	b,#0x80
      000D1B 95 F0            [12] 1905 	subb	a,b
      000D1D D0 01            [24] 1906 	pop	ar1
      000D1F 40 01            [24] 1907 	jc	00155$
      000D21 22               [24] 1908 	ret
      000D22                       1909 00155$:
                                   1910 ;	E:\Works\NSHET\oled.c:222: for (uint8_t col = 0; col < f_w; col++) {
      000D22 88 1B            [24] 1911 	mov	_oledChar_sloc5_1_0,r0
      000D24 75 15 00         [24] 1912 	mov	_oledChar_sloc1_1_0,#0x00
      000D27                       1913 00109$:
      000D27 90 00 4C         [24] 1914 	mov	dptr,#_oledChar_f_w_65536_131
      000D2A E0               [24] 1915 	movx	a,@dptr
      000D2B F5 17            [12] 1916 	mov	_oledChar_sloc2_1_0,a
      000D2D C3               [12] 1917 	clr	c
      000D2E E5 15            [12] 1918 	mov	a,_oledChar_sloc1_1_0
      000D30 95 17            [12] 1919 	subb	a,_oledChar_sloc2_1_0
      000D32 40 03            [24] 1920 	jc	00156$
      000D34 02 0D D5         [24] 1921 	ljmp	00105$
      000D37                       1922 00156$:
                                   1923 ;	E:\Works\NSHET\oled.c:223: buffer[col] = font[c * f_w * f_h / 8 + f_w * seg + col];
      000D37 C0 01            [24] 1924 	push	ar1
      000D39 E5 15            [12] 1925 	mov	a,_oledChar_sloc1_1_0
      000D3B 24 2A            [12] 1926 	add	a,#_buffer
      000D3D F5 18            [12] 1927 	mov	_oledChar_sloc3_1_0,a
      000D3F E4               [12] 1928 	clr	a
      000D40 34 00            [12] 1929 	addc	a,#(_buffer >> 8)
      000D42 F5 19            [12] 1930 	mov	(_oledChar_sloc3_1_0 + 1),a
      000D44 85 1C F0         [24] 1931 	mov	b,_oledChar_sloc6_1_0
      000D47 E5 17            [12] 1932 	mov	a,_oledChar_sloc2_1_0
      000D49 A4               [48] 1933 	mul	ab
      000D4A F9               [12] 1934 	mov	r1,a
      000D4B AB F0            [24] 1935 	mov	r3,b
      000D4D 90 00 4D         [24] 1936 	mov	dptr,#_oledChar_f_h_65536_131
      000D50 E0               [24] 1937 	movx	a,@dptr
      000D51 90 00 CD         [24] 1938 	mov	dptr,#__mulint_PARM_2
      000D54 F0               [24] 1939 	movx	@dptr,a
      000D55 E4               [12] 1940 	clr	a
      000D56 A3               [24] 1941 	inc	dptr
      000D57 F0               [24] 1942 	movx	@dptr,a
      000D58 89 82            [24] 1943 	mov	dpl,r1
      000D5A 8B 83            [24] 1944 	mov	dph,r3
      000D5C C0 07            [24] 1945 	push	ar7
      000D5E C0 06            [24] 1946 	push	ar6
      000D60 C0 05            [24] 1947 	push	ar5
      000D62 C0 01            [24] 1948 	push	ar1
      000D64 C0 00            [24] 1949 	push	ar0
      000D66 12 23 8F         [24] 1950 	lcall	__mulint
      000D69 AA 82            [24] 1951 	mov	r2,dpl
      000D6B AB 83            [24] 1952 	mov	r3,dph
      000D6D 90 00 DF         [24] 1953 	mov	dptr,#__divsint_PARM_2
      000D70 74 08            [12] 1954 	mov	a,#0x08
      000D72 F0               [24] 1955 	movx	@dptr,a
      000D73 E4               [12] 1956 	clr	a
      000D74 A3               [24] 1957 	inc	dptr
      000D75 F0               [24] 1958 	movx	@dptr,a
      000D76 8A 82            [24] 1959 	mov	dpl,r2
      000D78 8B 83            [24] 1960 	mov	dph,r3
      000D7A 12 26 4D         [24] 1961 	lcall	__divsint
      000D7D AA 82            [24] 1962 	mov	r2,dpl
      000D7F AB 83            [24] 1963 	mov	r3,dph
      000D81 D0 00            [24] 1964 	pop	ar0
      000D83 D0 01            [24] 1965 	pop	ar1
      000D85 D0 05            [24] 1966 	pop	ar5
      000D87 D0 06            [24] 1967 	pop	ar6
      000D89 D0 07            [24] 1968 	pop	ar7
      000D8B 85 17 F0         [24] 1969 	mov	b,_oledChar_sloc2_1_0
      000D8E E5 1B            [12] 1970 	mov	a,_oledChar_sloc5_1_0
      000D90 A4               [48] 1971 	mul	ab
      000D91 2A               [12] 1972 	add	a,r2
      000D92 FA               [12] 1973 	mov	r2,a
      000D93 EB               [12] 1974 	mov	a,r3
      000D94 35 F0            [12] 1975 	addc	a,b
      000D96 FB               [12] 1976 	mov	r3,a
      000D97 A9 15            [24] 1977 	mov	r1,_oledChar_sloc1_1_0
      000D99 7C 00            [12] 1978 	mov	r4,#0x00
      000D9B E9               [12] 1979 	mov	a,r1
      000D9C 2A               [12] 1980 	add	a,r2
      000D9D FA               [12] 1981 	mov	r2,a
      000D9E EC               [12] 1982 	mov	a,r4
      000D9F 3B               [12] 1983 	addc	a,r3
      000DA0 FB               [12] 1984 	mov	r3,a
      000DA1 EA               [12] 1985 	mov	a,r2
      000DA2 2D               [12] 1986 	add	a,r5
      000DA3 FA               [12] 1987 	mov	r2,a
      000DA4 EB               [12] 1988 	mov	a,r3
      000DA5 3E               [12] 1989 	addc	a,r6
      000DA6 FB               [12] 1990 	mov	r3,a
      000DA7 8F 04            [24] 1991 	mov	ar4,r7
      000DA9 8A 82            [24] 1992 	mov	dpl,r2
      000DAB 8B 83            [24] 1993 	mov	dph,r3
      000DAD 8C F0            [24] 1994 	mov	b,r4
      000DAF 12 32 FE         [24] 1995 	lcall	__gptrget
      000DB2 FA               [12] 1996 	mov	r2,a
      000DB3 85 18 82         [24] 1997 	mov	dpl,_oledChar_sloc3_1_0
      000DB6 85 19 83         [24] 1998 	mov	dph,(_oledChar_sloc3_1_0 + 1)
      000DB9 F0               [24] 1999 	movx	@dptr,a
                                   2000 ;	E:\Works\NSHET\oled.c:224: if (color == 0)
      000DBA D0 01            [24] 2001 	pop	ar1
      000DBC E5 1A            [12] 2002 	mov	a,_oledChar_sloc4_1_0
      000DBE 70 10            [24] 2003 	jnz	00110$
                                   2004 ;	E:\Works\NSHET\oled.c:225: buffer[col] = ~buffer[col];
      000DC0 85 18 82         [24] 2005 	mov	dpl,_oledChar_sloc3_1_0
      000DC3 85 19 83         [24] 2006 	mov	dph,(_oledChar_sloc3_1_0 + 1)
      000DC6 E0               [24] 2007 	movx	a,@dptr
      000DC7 F4               [12] 2008 	cpl	a
      000DC8 FC               [12] 2009 	mov	r4,a
      000DC9 85 18 82         [24] 2010 	mov	dpl,_oledChar_sloc3_1_0
      000DCC 85 19 83         [24] 2011 	mov	dph,(_oledChar_sloc3_1_0 + 1)
      000DCF F0               [24] 2012 	movx	@dptr,a
      000DD0                       2013 00110$:
                                   2014 ;	E:\Works\NSHET\oled.c:222: for (uint8_t col = 0; col < f_w; col++) {
      000DD0 05 15            [12] 2015 	inc	_oledChar_sloc1_1_0
      000DD2 02 0D 27         [24] 2016 	ljmp	00109$
      000DD5                       2017 00105$:
                                   2018 ;	E:\Works\NSHET\oled.c:227: pos(x, y + seg);
      000DD5 90 00 3C         [24] 2019 	mov	dptr,#_pos_PARM_2
      000DD8 E8               [12] 2020 	mov	a,r0
      000DD9 29               [12] 2021 	add	a,r1
      000DDA F0               [24] 2022 	movx	@dptr,a
      000DDB 85 14 82         [24] 2023 	mov	dpl,_oledChar_sloc0_1_0
      000DDE C0 07            [24] 2024 	push	ar7
      000DE0 C0 06            [24] 2025 	push	ar6
      000DE2 C0 05            [24] 2026 	push	ar5
      000DE4 C0 01            [24] 2027 	push	ar1
      000DE6 C0 00            [24] 2028 	push	ar0
      000DE8 12 09 B3         [24] 2029 	lcall	_pos
      000DEB D0 00            [24] 2030 	pop	ar0
      000DED D0 01            [24] 2031 	pop	ar1
      000DEF D0 05            [24] 2032 	pop	ar5
      000DF1 D0 06            [24] 2033 	pop	ar6
      000DF3 D0 07            [24] 2034 	pop	ar7
                                   2035 ;	E:\Works\NSHET\oled.c:228: for (uint8_t i = 0; i < f_w; i++)
      000DF5 7C 00            [12] 2036 	mov	r4,#0x00
      000DF7                       2037 00112$:
      000DF7 90 00 4C         [24] 2038 	mov	dptr,#_oledChar_f_w_65536_131
      000DFA E0               [24] 2039 	movx	a,@dptr
      000DFB FB               [12] 2040 	mov	r3,a
      000DFC C3               [12] 2041 	clr	c
      000DFD EC               [12] 2042 	mov	a,r4
      000DFE 9B               [12] 2043 	subb	a,r3
      000DFF 50 2B            [24] 2044 	jnc	00116$
                                   2045 ;	E:\Works\NSHET\oled.c:229: dat(buffer[i]);
      000E01 EC               [12] 2046 	mov	a,r4
      000E02 24 2A            [12] 2047 	add	a,#_buffer
      000E04 F5 82            [12] 2048 	mov	dpl,a
      000E06 E4               [12] 2049 	clr	a
      000E07 34 00            [12] 2050 	addc	a,#(_buffer >> 8)
      000E09 F5 83            [12] 2051 	mov	dph,a
      000E0B E0               [24] 2052 	movx	a,@dptr
      000E0C F5 82            [12] 2053 	mov	dpl,a
      000E0E C0 07            [24] 2054 	push	ar7
      000E10 C0 06            [24] 2055 	push	ar6
      000E12 C0 05            [24] 2056 	push	ar5
      000E14 C0 04            [24] 2057 	push	ar4
      000E16 C0 01            [24] 2058 	push	ar1
      000E18 C0 00            [24] 2059 	push	ar0
      000E1A 12 09 86         [24] 2060 	lcall	_dat
      000E1D D0 00            [24] 2061 	pop	ar0
      000E1F D0 01            [24] 2062 	pop	ar1
      000E21 D0 04            [24] 2063 	pop	ar4
      000E23 D0 05            [24] 2064 	pop	ar5
      000E25 D0 06            [24] 2065 	pop	ar6
      000E27 D0 07            [24] 2066 	pop	ar7
                                   2067 ;	E:\Works\NSHET\oled.c:228: for (uint8_t i = 0; i < f_w; i++)
      000E29 0C               [12] 2068 	inc	r4
      000E2A 80 CB            [24] 2069 	sjmp	00112$
      000E2C                       2070 00116$:
                                   2071 ;	E:\Works\NSHET\oled.c:221: for (uint8_t seg = 0; seg < f_h / 8; seg++) {
      000E2C 08               [12] 2072 	inc	r0
                                   2073 ;	E:\Works\NSHET\oled.c:231: }
      000E2D 02 0C D7         [24] 2074 	ljmp	00115$
                                   2075 ;------------------------------------------------------------
                                   2076 ;Allocation info for local variables in function 'oledPrint'
                                   2077 ;------------------------------------------------------------
                                   2078 ;sloc0                     Allocated with name '_oledPrint_sloc0_1_0'
                                   2079 ;y                         Allocated with name '_oledPrint_PARM_2'
                                   2080 ;fid                       Allocated with name '_oledPrint_PARM_3'
                                   2081 ;color                     Allocated with name '_oledPrint_PARM_4'
                                   2082 ;str                       Allocated with name '_oledPrint_PARM_5'
                                   2083 ;x                         Allocated with name '_oledPrint_x_65536_138'
                                   2084 ;font                      Allocated with name '_oledPrint_font_65536_139'
                                   2085 ;f_w                       Allocated with name '_oledPrint_f_w_65536_139'
                                   2086 ;f_h                       Allocated with name '_oledPrint_f_h_65536_139'
                                   2087 ;W                         Allocated with name '_oledPrint_W_65536_139'
                                   2088 ;H                         Allocated with name '_oledPrint_H_65536_139'
                                   2089 ;pos                       Allocated with name '_oledPrint_pos_65536_139'
                                   2090 ;------------------------------------------------------------
                                   2091 ;	E:\Works\NSHET\oled.c:233: void oledPrint(uint8_t x, uint8_t y, uint8_t fid, uint8_t color, char* str) {
                                   2092 ;	-----------------------------------------
                                   2093 ;	 function oledPrint
                                   2094 ;	-----------------------------------------
      000E30                       2095 _oledPrint:
      000E30 E5 82            [12] 2096 	mov	a,dpl
      000E32 90 00 56         [24] 2097 	mov	dptr,#_oledPrint_x_65536_138
      000E35 F0               [24] 2098 	movx	@dptr,a
                                   2099 ;	E:\Works\NSHET\oled.c:237: font = fontGet(fid);
      000E36 90 00 51         [24] 2100 	mov	dptr,#_oledPrint_PARM_3
      000E39 E0               [24] 2101 	movx	a,@dptr
      000E3A FF               [12] 2102 	mov	r7,a
      000E3B F5 82            [12] 2103 	mov	dpl,a
      000E3D C0 07            [24] 2104 	push	ar7
      000E3F 12 06 56         [24] 2105 	lcall	_fontGet
      000E42 AC 82            [24] 2106 	mov	r4,dpl
      000E44 AD 83            [24] 2107 	mov	r5,dph
      000E46 AE F0            [24] 2108 	mov	r6,b
                                   2109 ;	E:\Works\NSHET\oled.c:238: fontSize(font, &f_w, &f_h);
      000E48 90 00 1C         [24] 2110 	mov	dptr,#_fontSize_PARM_2
      000E4B 74 57            [12] 2111 	mov	a,#_oledPrint_f_w_65536_139
      000E4D F0               [24] 2112 	movx	@dptr,a
      000E4E 74 00            [12] 2113 	mov	a,#(_oledPrint_f_w_65536_139 >> 8)
      000E50 A3               [24] 2114 	inc	dptr
      000E51 F0               [24] 2115 	movx	@dptr,a
      000E52 E4               [12] 2116 	clr	a
      000E53 A3               [24] 2117 	inc	dptr
      000E54 F0               [24] 2118 	movx	@dptr,a
      000E55 90 00 1F         [24] 2119 	mov	dptr,#_fontSize_PARM_3
      000E58 74 58            [12] 2120 	mov	a,#_oledPrint_f_h_65536_139
      000E5A F0               [24] 2121 	movx	@dptr,a
      000E5B 74 00            [12] 2122 	mov	a,#(_oledPrint_f_h_65536_139 >> 8)
      000E5D A3               [24] 2123 	inc	dptr
      000E5E F0               [24] 2124 	movx	@dptr,a
      000E5F E4               [12] 2125 	clr	a
      000E60 A3               [24] 2126 	inc	dptr
      000E61 F0               [24] 2127 	movx	@dptr,a
      000E62 8C 82            [24] 2128 	mov	dpl,r4
      000E64 8D 83            [24] 2129 	mov	dph,r5
      000E66 8E F0            [24] 2130 	mov	b,r6
      000E68 12 06 93         [24] 2131 	lcall	_fontSize
                                   2132 ;	E:\Works\NSHET\oled.c:239: oledSize(&W, &H);
      000E6B 90 00 41         [24] 2133 	mov	dptr,#_oledSize_PARM_2
      000E6E 74 5A            [12] 2134 	mov	a,#_oledPrint_H_65536_139
      000E70 F0               [24] 2135 	movx	@dptr,a
      000E71 74 00            [12] 2136 	mov	a,#(_oledPrint_H_65536_139 >> 8)
      000E73 A3               [24] 2137 	inc	dptr
      000E74 F0               [24] 2138 	movx	@dptr,a
      000E75 E4               [12] 2139 	clr	a
      000E76 A3               [24] 2140 	inc	dptr
      000E77 F0               [24] 2141 	movx	@dptr,a
      000E78 90 00 59         [24] 2142 	mov	dptr,#_oledPrint_W_65536_139
      000E7B 75 F0 00         [24] 2143 	mov	b,#0x00
      000E7E 12 0B 8D         [24] 2144 	lcall	_oledSize
      000E81 D0 07            [24] 2145 	pop	ar7
                                   2146 ;	E:\Works\NSHET\oled.c:242: while (str[pos] != '\0') {
      000E83 90 00 52         [24] 2147 	mov	dptr,#_oledPrint_PARM_4
      000E86 E0               [24] 2148 	movx	a,@dptr
      000E87 FE               [12] 2149 	mov	r6,a
      000E88 90 00 53         [24] 2150 	mov	dptr,#_oledPrint_PARM_5
      000E8B E0               [24] 2151 	movx	a,@dptr
      000E8C FB               [12] 2152 	mov	r3,a
      000E8D A3               [24] 2153 	inc	dptr
      000E8E E0               [24] 2154 	movx	a,@dptr
      000E8F FC               [12] 2155 	mov	r4,a
      000E90 A3               [24] 2156 	inc	dptr
      000E91 E0               [24] 2157 	movx	a,@dptr
      000E92 FD               [12] 2158 	mov	r5,a
      000E93 7A 00            [12] 2159 	mov	r2,#0x00
      000E95                       2160 00108$:
      000E95 C0 06            [24] 2161 	push	ar6
      000E97 EA               [12] 2162 	mov	a,r2
      000E98 2B               [12] 2163 	add	a,r3
      000E99 F8               [12] 2164 	mov	r0,a
      000E9A E4               [12] 2165 	clr	a
      000E9B 3C               [12] 2166 	addc	a,r4
      000E9C F9               [12] 2167 	mov	r1,a
      000E9D 8D 06            [24] 2168 	mov	ar6,r5
      000E9F 88 82            [24] 2169 	mov	dpl,r0
      000EA1 89 83            [24] 2170 	mov	dph,r1
      000EA3 8E F0            [24] 2171 	mov	b,r6
      000EA5 12 32 FE         [24] 2172 	lcall	__gptrget
      000EA8 D0 06            [24] 2173 	pop	ar6
      000EAA 70 01            [24] 2174 	jnz	00134$
      000EAC 22               [24] 2175 	ret
      000EAD                       2176 00134$:
                                   2177 ;	E:\Works\NSHET\oled.c:243: if (y > (H - f_h) / 8) { x = 0; y = 0; oledClear(); }
      000EAD C0 06            [24] 2178 	push	ar6
      000EAF 90 00 5A         [24] 2179 	mov	dptr,#_oledPrint_H_65536_139
      000EB2 E0               [24] 2180 	movx	a,@dptr
      000EB3 F9               [12] 2181 	mov	r1,a
      000EB4 89 1D            [24] 2182 	mov	_oledPrint_sloc0_1_0,r1
      000EB6 75 1E 00         [24] 2183 	mov	(_oledPrint_sloc0_1_0 + 1),#0x00
      000EB9 90 00 58         [24] 2184 	mov	dptr,#_oledPrint_f_h_65536_139
      000EBC E0               [24] 2185 	movx	a,@dptr
      000EBD F9               [12] 2186 	mov	r1,a
      000EBE 7E 00            [12] 2187 	mov	r6,#0x00
      000EC0 E5 1D            [12] 2188 	mov	a,_oledPrint_sloc0_1_0
      000EC2 C3               [12] 2189 	clr	c
      000EC3 99               [12] 2190 	subb	a,r1
      000EC4 F9               [12] 2191 	mov	r1,a
      000EC5 E5 1E            [12] 2192 	mov	a,(_oledPrint_sloc0_1_0 + 1)
      000EC7 9E               [12] 2193 	subb	a,r6
      000EC8 FE               [12] 2194 	mov	r6,a
      000EC9 90 00 DF         [24] 2195 	mov	dptr,#__divsint_PARM_2
      000ECC 74 08            [12] 2196 	mov	a,#0x08
      000ECE F0               [24] 2197 	movx	@dptr,a
      000ECF E4               [12] 2198 	clr	a
      000ED0 A3               [24] 2199 	inc	dptr
      000ED1 F0               [24] 2200 	movx	@dptr,a
      000ED2 89 82            [24] 2201 	mov	dpl,r1
      000ED4 8E 83            [24] 2202 	mov	dph,r6
      000ED6 C0 07            [24] 2203 	push	ar7
      000ED8 C0 06            [24] 2204 	push	ar6
      000EDA C0 05            [24] 2205 	push	ar5
      000EDC C0 04            [24] 2206 	push	ar4
      000EDE C0 03            [24] 2207 	push	ar3
      000EE0 C0 02            [24] 2208 	push	ar2
      000EE2 12 26 4D         [24] 2209 	lcall	__divsint
      000EE5 85 82 1D         [24] 2210 	mov	_oledPrint_sloc0_1_0,dpl
      000EE8 85 83 1E         [24] 2211 	mov	(_oledPrint_sloc0_1_0 + 1),dph
      000EEB D0 02            [24] 2212 	pop	ar2
      000EED D0 03            [24] 2213 	pop	ar3
      000EEF D0 04            [24] 2214 	pop	ar4
      000EF1 D0 05            [24] 2215 	pop	ar5
      000EF3 D0 06            [24] 2216 	pop	ar6
      000EF5 D0 07            [24] 2217 	pop	ar7
      000EF7 90 00 50         [24] 2218 	mov	dptr,#_oledPrint_PARM_2
      000EFA E0               [24] 2219 	movx	a,@dptr
      000EFB F8               [12] 2220 	mov	r0,a
      000EFC 7E 00            [12] 2221 	mov	r6,#0x00
      000EFE C3               [12] 2222 	clr	c
      000EFF E5 1D            [12] 2223 	mov	a,_oledPrint_sloc0_1_0
      000F01 98               [12] 2224 	subb	a,r0
      000F02 E5 1E            [12] 2225 	mov	a,(_oledPrint_sloc0_1_0 + 1)
      000F04 64 80            [12] 2226 	xrl	a,#0x80
      000F06 8E F0            [24] 2227 	mov	b,r6
      000F08 63 F0 80         [24] 2228 	xrl	b,#0x80
      000F0B 95 F0            [12] 2229 	subb	a,b
      000F0D D0 06            [24] 2230 	pop	ar6
      000F0F 50 24            [24] 2231 	jnc	00102$
      000F11 90 00 56         [24] 2232 	mov	dptr,#_oledPrint_x_65536_138
      000F14 E4               [12] 2233 	clr	a
      000F15 F0               [24] 2234 	movx	@dptr,a
      000F16 90 00 50         [24] 2235 	mov	dptr,#_oledPrint_PARM_2
      000F19 F0               [24] 2236 	movx	@dptr,a
      000F1A C0 07            [24] 2237 	push	ar7
      000F1C C0 06            [24] 2238 	push	ar6
      000F1E C0 05            [24] 2239 	push	ar5
      000F20 C0 04            [24] 2240 	push	ar4
      000F22 C0 03            [24] 2241 	push	ar3
      000F24 C0 02            [24] 2242 	push	ar2
      000F26 12 0B 14         [24] 2243 	lcall	_oledClear
      000F29 D0 02            [24] 2244 	pop	ar2
      000F2B D0 03            [24] 2245 	pop	ar3
      000F2D D0 04            [24] 2246 	pop	ar4
      000F2F D0 05            [24] 2247 	pop	ar5
      000F31 D0 06            [24] 2248 	pop	ar6
      000F33 D0 07            [24] 2249 	pop	ar7
      000F35                       2250 00102$:
                                   2251 ;	E:\Works\NSHET\oled.c:244: switch (str[pos]) {
      000F35 C0 06            [24] 2252 	push	ar6
      000F37 EA               [12] 2253 	mov	a,r2
      000F38 2B               [12] 2254 	add	a,r3
      000F39 F8               [12] 2255 	mov	r0,a
      000F3A E4               [12] 2256 	clr	a
      000F3B 3C               [12] 2257 	addc	a,r4
      000F3C F9               [12] 2258 	mov	r1,a
      000F3D 8D 06            [24] 2259 	mov	ar6,r5
      000F3F 88 82            [24] 2260 	mov	dpl,r0
      000F41 89 83            [24] 2261 	mov	dph,r1
      000F43 8E F0            [24] 2262 	mov	b,r6
      000F45 12 32 FE         [24] 2263 	lcall	__gptrget
      000F48 F5 1D            [12] 2264 	mov	_oledPrint_sloc0_1_0,a
      000F4A 74 0A            [12] 2265 	mov	a,#0x0a
      000F4C B5 1D 02         [24] 2266 	cjne	a,_oledPrint_sloc0_1_0,00136$
      000F4F 80 04            [24] 2267 	sjmp	00137$
      000F51                       2268 00136$:
      000F51 D0 06            [24] 2269 	pop	ar6
      000F53 80 42            [24] 2270 	sjmp	00104$
      000F55                       2271 00137$:
      000F55 D0 06            [24] 2272 	pop	ar6
                                   2273 ;	E:\Works\NSHET\oled.c:246: x = 0; y += f_h / 8;
      000F57 90 00 56         [24] 2274 	mov	dptr,#_oledPrint_x_65536_138
      000F5A E4               [12] 2275 	clr	a
      000F5B F0               [24] 2276 	movx	@dptr,a
      000F5C 90 00 58         [24] 2277 	mov	dptr,#_oledPrint_f_h_65536_139
      000F5F E0               [24] 2278 	movx	a,@dptr
      000F60 F8               [12] 2279 	mov	r0,a
      000F61 79 00            [12] 2280 	mov	r1,#0x00
      000F63 90 00 DF         [24] 2281 	mov	dptr,#__divsint_PARM_2
      000F66 74 08            [12] 2282 	mov	a,#0x08
      000F68 F0               [24] 2283 	movx	@dptr,a
      000F69 E4               [12] 2284 	clr	a
      000F6A A3               [24] 2285 	inc	dptr
      000F6B F0               [24] 2286 	movx	@dptr,a
      000F6C 88 82            [24] 2287 	mov	dpl,r0
      000F6E 89 83            [24] 2288 	mov	dph,r1
      000F70 C0 07            [24] 2289 	push	ar7
      000F72 C0 06            [24] 2290 	push	ar6
      000F74 C0 05            [24] 2291 	push	ar5
      000F76 C0 04            [24] 2292 	push	ar4
      000F78 C0 03            [24] 2293 	push	ar3
      000F7A C0 02            [24] 2294 	push	ar2
      000F7C 12 26 4D         [24] 2295 	lcall	__divsint
      000F7F A8 82            [24] 2296 	mov	r0,dpl
      000F81 D0 02            [24] 2297 	pop	ar2
      000F83 D0 03            [24] 2298 	pop	ar3
      000F85 D0 04            [24] 2299 	pop	ar4
      000F87 D0 05            [24] 2300 	pop	ar5
      000F89 D0 06            [24] 2301 	pop	ar6
      000F8B D0 07            [24] 2302 	pop	ar7
      000F8D 90 00 50         [24] 2303 	mov	dptr,#_oledPrint_PARM_2
      000F90 E0               [24] 2304 	movx	a,@dptr
      000F91 F9               [12] 2305 	mov	r1,a
      000F92 28               [12] 2306 	add	a,r0
      000F93 F0               [24] 2307 	movx	@dptr,a
                                   2308 ;	E:\Works\NSHET\oled.c:247: break;
      000F94 02 10 58         [24] 2309 	ljmp	00107$
                                   2310 ;	E:\Works\NSHET\oled.c:248: default:
      000F97                       2311 00104$:
                                   2312 ;	E:\Works\NSHET\oled.c:249: oledChar(x, y, fid, color, str[pos]);
      000F97 C0 03            [24] 2313 	push	ar3
      000F99 C0 04            [24] 2314 	push	ar4
      000F9B C0 05            [24] 2315 	push	ar5
      000F9D 90 00 56         [24] 2316 	mov	dptr,#_oledPrint_x_65536_138
      000FA0 E0               [24] 2317 	movx	a,@dptr
      000FA1 F9               [12] 2318 	mov	r1,a
      000FA2 90 00 50         [24] 2319 	mov	dptr,#_oledPrint_PARM_2
      000FA5 E0               [24] 2320 	movx	a,@dptr
      000FA6 F8               [12] 2321 	mov	r0,a
      000FA7 90 00 47         [24] 2322 	mov	dptr,#_oledChar_PARM_2
      000FAA F0               [24] 2323 	movx	@dptr,a
      000FAB 90 00 48         [24] 2324 	mov	dptr,#_oledChar_PARM_3
      000FAE EF               [12] 2325 	mov	a,r7
      000FAF F0               [24] 2326 	movx	@dptr,a
      000FB0 90 00 49         [24] 2327 	mov	dptr,#_oledChar_PARM_4
      000FB3 EE               [12] 2328 	mov	a,r6
      000FB4 F0               [24] 2329 	movx	@dptr,a
      000FB5 90 00 4A         [24] 2330 	mov	dptr,#_oledChar_PARM_5
      000FB8 E5 1D            [12] 2331 	mov	a,_oledPrint_sloc0_1_0
      000FBA F0               [24] 2332 	movx	@dptr,a
      000FBB 89 82            [24] 2333 	mov	dpl,r1
      000FBD C0 07            [24] 2334 	push	ar7
      000FBF C0 06            [24] 2335 	push	ar6
      000FC1 C0 05            [24] 2336 	push	ar5
      000FC3 C0 04            [24] 2337 	push	ar4
      000FC5 C0 03            [24] 2338 	push	ar3
      000FC7 C0 02            [24] 2339 	push	ar2
      000FC9 C0 01            [24] 2340 	push	ar1
      000FCB C0 00            [24] 2341 	push	ar0
      000FCD 12 0C 01         [24] 2342 	lcall	_oledChar
      000FD0 D0 00            [24] 2343 	pop	ar0
      000FD2 D0 01            [24] 2344 	pop	ar1
      000FD4 D0 02            [24] 2345 	pop	ar2
      000FD6 D0 03            [24] 2346 	pop	ar3
      000FD8 D0 04            [24] 2347 	pop	ar4
      000FDA D0 05            [24] 2348 	pop	ar5
      000FDC D0 06            [24] 2349 	pop	ar6
      000FDE D0 07            [24] 2350 	pop	ar7
                                   2351 ;	E:\Works\NSHET\oled.c:250: x += f_w;
      000FE0 90 00 57         [24] 2352 	mov	dptr,#_oledPrint_f_w_65536_139
      000FE3 E0               [24] 2353 	movx	a,@dptr
      000FE4 FD               [12] 2354 	mov	r5,a
      000FE5 90 00 56         [24] 2355 	mov	dptr,#_oledPrint_x_65536_138
      000FE8 29               [12] 2356 	add	a,r1
      000FE9 F0               [24] 2357 	movx	@dptr,a
                                   2358 ;	E:\Works\NSHET\oled.c:251: if (x > W - f_w) {
      000FEA 90 00 59         [24] 2359 	mov	dptr,#_oledPrint_W_65536_139
      000FED E0               [24] 2360 	movx	a,@dptr
      000FEE FC               [12] 2361 	mov	r4,a
      000FEF 7B 00            [12] 2362 	mov	r3,#0x00
      000FF1 8D 01            [24] 2363 	mov	ar1,r5
      000FF3 7D 00            [12] 2364 	mov	r5,#0x00
      000FF5 EC               [12] 2365 	mov	a,r4
      000FF6 C3               [12] 2366 	clr	c
      000FF7 99               [12] 2367 	subb	a,r1
      000FF8 FC               [12] 2368 	mov	r4,a
      000FF9 EB               [12] 2369 	mov	a,r3
      000FFA 9D               [12] 2370 	subb	a,r5
      000FFB FB               [12] 2371 	mov	r3,a
      000FFC 90 00 56         [24] 2372 	mov	dptr,#_oledPrint_x_65536_138
      000FFF E0               [24] 2373 	movx	a,@dptr
      001000 F9               [12] 2374 	mov	r1,a
      001001 7D 00            [12] 2375 	mov	r5,#0x00
      001003 C3               [12] 2376 	clr	c
      001004 EC               [12] 2377 	mov	a,r4
      001005 99               [12] 2378 	subb	a,r1
      001006 EB               [12] 2379 	mov	a,r3
      001007 64 80            [12] 2380 	xrl	a,#0x80
      001009 8D F0            [24] 2381 	mov	b,r5
      00100B 63 F0 80         [24] 2382 	xrl	b,#0x80
      00100E 95 F0            [12] 2383 	subb	a,b
      001010 D0 05            [24] 2384 	pop	ar5
      001012 D0 04            [24] 2385 	pop	ar4
      001014 D0 03            [24] 2386 	pop	ar3
      001016 50 40            [24] 2387 	jnc	00107$
                                   2388 ;	E:\Works\NSHET\oled.c:252: x = 0;
      001018 C0 06            [24] 2389 	push	ar6
      00101A 90 00 56         [24] 2390 	mov	dptr,#_oledPrint_x_65536_138
      00101D E4               [12] 2391 	clr	a
      00101E F0               [24] 2392 	movx	@dptr,a
                                   2393 ;	E:\Works\NSHET\oled.c:253: y += f_h / 8;
      00101F 90 00 58         [24] 2394 	mov	dptr,#_oledPrint_f_h_65536_139
      001022 E0               [24] 2395 	movx	a,@dptr
      001023 F9               [12] 2396 	mov	r1,a
      001024 7E 00            [12] 2397 	mov	r6,#0x00
      001026 90 00 DF         [24] 2398 	mov	dptr,#__divsint_PARM_2
      001029 74 08            [12] 2399 	mov	a,#0x08
      00102B F0               [24] 2400 	movx	@dptr,a
      00102C E4               [12] 2401 	clr	a
      00102D A3               [24] 2402 	inc	dptr
      00102E F0               [24] 2403 	movx	@dptr,a
      00102F 89 82            [24] 2404 	mov	dpl,r1
      001031 8E 83            [24] 2405 	mov	dph,r6
      001033 C0 07            [24] 2406 	push	ar7
      001035 C0 05            [24] 2407 	push	ar5
      001037 C0 04            [24] 2408 	push	ar4
      001039 C0 03            [24] 2409 	push	ar3
      00103B C0 02            [24] 2410 	push	ar2
      00103D C0 00            [24] 2411 	push	ar0
      00103F 12 26 4D         [24] 2412 	lcall	__divsint
      001042 A9 82            [24] 2413 	mov	r1,dpl
      001044 D0 00            [24] 2414 	pop	ar0
      001046 D0 02            [24] 2415 	pop	ar2
      001048 D0 03            [24] 2416 	pop	ar3
      00104A D0 04            [24] 2417 	pop	ar4
      00104C D0 05            [24] 2418 	pop	ar5
      00104E D0 07            [24] 2419 	pop	ar7
      001050 90 00 50         [24] 2420 	mov	dptr,#_oledPrint_PARM_2
      001053 E9               [12] 2421 	mov	a,r1
      001054 28               [12] 2422 	add	a,r0
      001055 F0               [24] 2423 	movx	@dptr,a
                                   2424 ;	E:\Works\NSHET\oled.c:257: pos++;
      001056 D0 06            [24] 2425 	pop	ar6
                                   2426 ;	E:\Works\NSHET\oled.c:256: }
      001058                       2427 00107$:
                                   2428 ;	E:\Works\NSHET\oled.c:257: pos++;
      001058 0A               [12] 2429 	inc	r2
                                   2430 ;	E:\Works\NSHET\oled.c:259: }
      001059 02 0E 95         [24] 2431 	ljmp	00108$
                                   2432 ;------------------------------------------------------------
                                   2433 ;Allocation info for local variables in function 'oledPrintf'
                                   2434 ;------------------------------------------------------------
                                   2435 ;x                         Allocated to stack - _bp -3
                                   2436 ;y                         Allocated to stack - _bp -4
                                   2437 ;fid                       Allocated to stack - _bp -5
                                   2438 ;color                     Allocated to stack - _bp -6
                                   2439 ;format                    Allocated to stack - _bp -9
                                   2440 ;iobuf                     Allocated to registers r6 r7 r5 
                                   2441 ;args                      Allocated to registers r4 
                                   2442 ;result                    Allocated to registers r3 r4 
                                   2443 ;------------------------------------------------------------
                                   2444 ;	E:\Works\NSHET\oled.c:261: int oledPrintf(uint8_t x, uint8_t y, uint8_t fid, uint8_t color, const char* format, ...) {
                                   2445 ;	-----------------------------------------
                                   2446 ;	 function oledPrintf
                                   2447 ;	-----------------------------------------
      00105C                       2448 _oledPrintf:
      00105C C0 1F            [24] 2449 	push	_bp
      00105E 85 81 1F         [24] 2450 	mov	_bp,sp
                                   2451 ;	E:\Works\NSHET\oled.c:262: char* iobuf = malloc(sizeof(char) * IOBUF_SIZE);
      001061 90 00 80         [24] 2452 	mov	dptr,#0x0080
      001064 12 22 26         [24] 2453 	lcall	_malloc
      001067 AE 82            [24] 2454 	mov	r6,dpl
      001069 AF 83            [24] 2455 	mov	r7,dph
      00106B 7D 00            [12] 2456 	mov	r5,#0x00
                                   2457 ;	E:\Works\NSHET\oled.c:264: va_start(args, format);
      00106D E5 1F            [12] 2458 	mov	a,_bp
      00106F 24 F7            [12] 2459 	add	a,#0xf7
      001071 FC               [12] 2460 	mov	r4,a
                                   2461 ;	E:\Works\NSHET\oled.c:265: int result = vsprintf(iobuf, format, args);
      001072 E5 1F            [12] 2462 	mov	a,_bp
      001074 24 F7            [12] 2463 	add	a,#0xf7
      001076 F8               [12] 2464 	mov	r0,a
      001077 90 00 CF         [24] 2465 	mov	dptr,#_vsprintf_PARM_2
      00107A E6               [12] 2466 	mov	a,@r0
      00107B F0               [24] 2467 	movx	@dptr,a
      00107C 08               [12] 2468 	inc	r0
      00107D E6               [12] 2469 	mov	a,@r0
      00107E A3               [24] 2470 	inc	dptr
      00107F F0               [24] 2471 	movx	@dptr,a
      001080 08               [12] 2472 	inc	r0
      001081 E6               [12] 2473 	mov	a,@r0
      001082 A3               [24] 2474 	inc	dptr
      001083 F0               [24] 2475 	movx	@dptr,a
      001084 90 00 D2         [24] 2476 	mov	dptr,#_vsprintf_PARM_3
      001087 EC               [12] 2477 	mov	a,r4
      001088 F0               [24] 2478 	movx	@dptr,a
      001089 8E 82            [24] 2479 	mov	dpl,r6
      00108B 8F 83            [24] 2480 	mov	dph,r7
      00108D 8D F0            [24] 2481 	mov	b,r5
      00108F C0 07            [24] 2482 	push	ar7
      001091 C0 06            [24] 2483 	push	ar6
      001093 C0 05            [24] 2484 	push	ar5
      001095 12 24 1F         [24] 2485 	lcall	_vsprintf
      001098 AB 82            [24] 2486 	mov	r3,dpl
      00109A AC 83            [24] 2487 	mov	r4,dph
      00109C D0 05            [24] 2488 	pop	ar5
      00109E D0 06            [24] 2489 	pop	ar6
      0010A0 D0 07            [24] 2490 	pop	ar7
                                   2491 ;	E:\Works\NSHET\oled.c:267: oledPrint(x, y, fid, color, iobuf);
      0010A2 E5 1F            [12] 2492 	mov	a,_bp
      0010A4 24 FC            [12] 2493 	add	a,#0xfc
      0010A6 F8               [12] 2494 	mov	r0,a
      0010A7 90 00 50         [24] 2495 	mov	dptr,#_oledPrint_PARM_2
      0010AA E6               [12] 2496 	mov	a,@r0
      0010AB F0               [24] 2497 	movx	@dptr,a
      0010AC E5 1F            [12] 2498 	mov	a,_bp
      0010AE 24 FB            [12] 2499 	add	a,#0xfb
      0010B0 F8               [12] 2500 	mov	r0,a
      0010B1 90 00 51         [24] 2501 	mov	dptr,#_oledPrint_PARM_3
      0010B4 E6               [12] 2502 	mov	a,@r0
      0010B5 F0               [24] 2503 	movx	@dptr,a
      0010B6 E5 1F            [12] 2504 	mov	a,_bp
      0010B8 24 FA            [12] 2505 	add	a,#0xfa
      0010BA F8               [12] 2506 	mov	r0,a
      0010BB 90 00 52         [24] 2507 	mov	dptr,#_oledPrint_PARM_4
      0010BE E6               [12] 2508 	mov	a,@r0
      0010BF F0               [24] 2509 	movx	@dptr,a
      0010C0 90 00 53         [24] 2510 	mov	dptr,#_oledPrint_PARM_5
      0010C3 EE               [12] 2511 	mov	a,r6
      0010C4 F0               [24] 2512 	movx	@dptr,a
      0010C5 EF               [12] 2513 	mov	a,r7
      0010C6 A3               [24] 2514 	inc	dptr
      0010C7 F0               [24] 2515 	movx	@dptr,a
      0010C8 ED               [12] 2516 	mov	a,r5
      0010C9 A3               [24] 2517 	inc	dptr
      0010CA F0               [24] 2518 	movx	@dptr,a
      0010CB E5 1F            [12] 2519 	mov	a,_bp
      0010CD 24 FD            [12] 2520 	add	a,#0xfd
      0010CF F8               [12] 2521 	mov	r0,a
      0010D0 86 82            [24] 2522 	mov	dpl,@r0
      0010D2 C0 07            [24] 2523 	push	ar7
      0010D4 C0 06            [24] 2524 	push	ar6
      0010D6 C0 05            [24] 2525 	push	ar5
      0010D8 C0 04            [24] 2526 	push	ar4
      0010DA C0 03            [24] 2527 	push	ar3
      0010DC 12 0E 30         [24] 2528 	lcall	_oledPrint
      0010DF D0 03            [24] 2529 	pop	ar3
      0010E1 D0 04            [24] 2530 	pop	ar4
      0010E3 D0 05            [24] 2531 	pop	ar5
      0010E5 D0 06            [24] 2532 	pop	ar6
      0010E7 D0 07            [24] 2533 	pop	ar7
                                   2534 ;	E:\Works\NSHET\oled.c:268: free(iobuf);
      0010E9 8E 82            [24] 2535 	mov	dpl,r6
      0010EB 8F 83            [24] 2536 	mov	dph,r7
      0010ED 8D F0            [24] 2537 	mov	b,r5
      0010EF C0 04            [24] 2538 	push	ar4
      0010F1 C0 03            [24] 2539 	push	ar3
      0010F3 12 1B DE         [24] 2540 	lcall	_free
      0010F6 D0 03            [24] 2541 	pop	ar3
      0010F8 D0 04            [24] 2542 	pop	ar4
                                   2543 ;	E:\Works\NSHET\oled.c:269: return result;
      0010FA 8B 82            [24] 2544 	mov	dpl,r3
      0010FC 8C 83            [24] 2545 	mov	dph,r4
                                   2546 ;	E:\Works\NSHET\oled.c:270: }
      0010FE D0 1F            [24] 2547 	pop	_bp
      001100 22               [24] 2548 	ret
                                   2549 ;------------------------------------------------------------
                                   2550 ;Allocation info for local variables in function 'oledPrintfc'
                                   2551 ;------------------------------------------------------------
                                   2552 ;y                         Allocated to stack - _bp -3
                                   2553 ;fid                       Allocated to stack - _bp -4
                                   2554 ;color                     Allocated to stack - _bp -5
                                   2555 ;format                    Allocated to stack - _bp -8
                                   2556 ;f_w                       Allocated to stack - _bp +2
                                   2557 ;f_h                       Allocated to stack - _bp +1
                                   2558 ;W                         Allocated to stack - _bp +3
                                   2559 ;H                         Allocated to stack - _bp +4
                                   2560 ;len                       Allocated to registers r2 
                                   2561 ;iobuf                     Allocated to registers r6 r7 r5 
                                   2562 ;args                      Allocated to registers r4 
                                   2563 ;result                    Allocated to stack - _bp +5
                                   2564 ;------------------------------------------------------------
                                   2565 ;	E:\Works\NSHET\oled.c:272: int oledPrintfc(uint8_t y, uint8_t fid, uint8_t color, const char* format, ...) {
                                   2566 ;	-----------------------------------------
                                   2567 ;	 function oledPrintfc
                                   2568 ;	-----------------------------------------
      001101                       2569 _oledPrintfc:
      001101 C0 1F            [24] 2570 	push	_bp
      001103 E5 81            [12] 2571 	mov	a,sp
      001105 F5 1F            [12] 2572 	mov	_bp,a
      001107 24 06            [12] 2573 	add	a,#0x06
      001109 F5 81            [12] 2574 	mov	sp,a
                                   2575 ;	E:\Works\NSHET\oled.c:274: fontSize(fontGet(fid), &f_w, &f_h);
      00110B E5 1F            [12] 2576 	mov	a,_bp
      00110D 24 FC            [12] 2577 	add	a,#0xfc
      00110F F8               [12] 2578 	mov	r0,a
      001110 86 82            [24] 2579 	mov	dpl,@r0
      001112 12 06 56         [24] 2580 	lcall	_fontGet
      001115 AD 82            [24] 2581 	mov	r5,dpl
      001117 AE 83            [24] 2582 	mov	r6,dph
      001119 AF F0            [24] 2583 	mov	r7,b
      00111B E5 1F            [12] 2584 	mov	a,_bp
      00111D 24 02            [12] 2585 	add	a,#0x02
      00111F 90 00 1C         [24] 2586 	mov	dptr,#_fontSize_PARM_2
      001122 F0               [24] 2587 	movx	@dptr,a
      001123 E4               [12] 2588 	clr	a
      001124 A3               [24] 2589 	inc	dptr
      001125 F0               [24] 2590 	movx	@dptr,a
      001126 74 40            [12] 2591 	mov	a,#0x40
      001128 A3               [24] 2592 	inc	dptr
      001129 F0               [24] 2593 	movx	@dptr,a
      00112A AC 1F            [24] 2594 	mov	r4,_bp
      00112C 0C               [12] 2595 	inc	r4
      00112D 90 00 1F         [24] 2596 	mov	dptr,#_fontSize_PARM_3
      001130 EC               [12] 2597 	mov	a,r4
      001131 F0               [24] 2598 	movx	@dptr,a
      001132 E4               [12] 2599 	clr	a
      001133 A3               [24] 2600 	inc	dptr
      001134 F0               [24] 2601 	movx	@dptr,a
      001135 74 40            [12] 2602 	mov	a,#0x40
      001137 A3               [24] 2603 	inc	dptr
      001138 F0               [24] 2604 	movx	@dptr,a
      001139 8D 82            [24] 2605 	mov	dpl,r5
      00113B 8E 83            [24] 2606 	mov	dph,r6
      00113D 8F F0            [24] 2607 	mov	b,r7
      00113F 12 06 93         [24] 2608 	lcall	_fontSize
                                   2609 ;	E:\Works\NSHET\oled.c:275: oledSize(&W, &H);
      001142 E5 1F            [12] 2610 	mov	a,_bp
      001144 24 03            [12] 2611 	add	a,#0x03
      001146 FF               [12] 2612 	mov	r7,a
      001147 7E 00            [12] 2613 	mov	r6,#0x00
      001149 7D 40            [12] 2614 	mov	r5,#0x40
      00114B E5 1F            [12] 2615 	mov	a,_bp
      00114D 24 04            [12] 2616 	add	a,#0x04
      00114F 90 00 41         [24] 2617 	mov	dptr,#_oledSize_PARM_2
      001152 F0               [24] 2618 	movx	@dptr,a
      001153 E4               [12] 2619 	clr	a
      001154 A3               [24] 2620 	inc	dptr
      001155 F0               [24] 2621 	movx	@dptr,a
      001156 ED               [12] 2622 	mov	a,r5
      001157 A3               [24] 2623 	inc	dptr
      001158 F0               [24] 2624 	movx	@dptr,a
      001159 8F 82            [24] 2625 	mov	dpl,r7
      00115B 8E 83            [24] 2626 	mov	dph,r6
      00115D 8D F0            [24] 2627 	mov	b,r5
      00115F 12 0B 8D         [24] 2628 	lcall	_oledSize
                                   2629 ;	E:\Works\NSHET\oled.c:277: char* iobuf = malloc(sizeof(char) * IOBUF_SIZE);
      001162 90 00 80         [24] 2630 	mov	dptr,#0x0080
      001165 12 22 26         [24] 2631 	lcall	_malloc
      001168 AE 82            [24] 2632 	mov	r6,dpl
      00116A AF 83            [24] 2633 	mov	r7,dph
      00116C 7D 00            [12] 2634 	mov	r5,#0x00
                                   2635 ;	E:\Works\NSHET\oled.c:279: va_start(args, format);
      00116E E5 1F            [12] 2636 	mov	a,_bp
      001170 24 F8            [12] 2637 	add	a,#0xf8
      001172 FC               [12] 2638 	mov	r4,a
                                   2639 ;	E:\Works\NSHET\oled.c:280: int result = vsprintf(iobuf, format, args);
      001173 E5 1F            [12] 2640 	mov	a,_bp
      001175 24 F8            [12] 2641 	add	a,#0xf8
      001177 F8               [12] 2642 	mov	r0,a
      001178 90 00 CF         [24] 2643 	mov	dptr,#_vsprintf_PARM_2
      00117B E6               [12] 2644 	mov	a,@r0
      00117C F0               [24] 2645 	movx	@dptr,a
      00117D 08               [12] 2646 	inc	r0
      00117E E6               [12] 2647 	mov	a,@r0
      00117F A3               [24] 2648 	inc	dptr
      001180 F0               [24] 2649 	movx	@dptr,a
      001181 08               [12] 2650 	inc	r0
      001182 E6               [12] 2651 	mov	a,@r0
      001183 A3               [24] 2652 	inc	dptr
      001184 F0               [24] 2653 	movx	@dptr,a
      001185 90 00 D2         [24] 2654 	mov	dptr,#_vsprintf_PARM_3
      001188 EC               [12] 2655 	mov	a,r4
      001189 F0               [24] 2656 	movx	@dptr,a
      00118A 8E 82            [24] 2657 	mov	dpl,r6
      00118C 8F 83            [24] 2658 	mov	dph,r7
      00118E 8D F0            [24] 2659 	mov	b,r5
      001190 C0 07            [24] 2660 	push	ar7
      001192 C0 06            [24] 2661 	push	ar6
      001194 C0 05            [24] 2662 	push	ar5
      001196 12 24 1F         [24] 2663 	lcall	_vsprintf
      001199 AB 82            [24] 2664 	mov	r3,dpl
      00119B AC 83            [24] 2665 	mov	r4,dph
      00119D D0 05            [24] 2666 	pop	ar5
      00119F D0 06            [24] 2667 	pop	ar6
      0011A1 D0 07            [24] 2668 	pop	ar7
      0011A3 E5 1F            [12] 2669 	mov	a,_bp
      0011A5 24 05            [12] 2670 	add	a,#0x05
      0011A7 F8               [12] 2671 	mov	r0,a
      0011A8 A6 03            [24] 2672 	mov	@r0,ar3
      0011AA 08               [12] 2673 	inc	r0
      0011AB A6 04            [24] 2674 	mov	@r0,ar4
                                   2675 ;	E:\Works\NSHET\oled.c:282: len = strlen(iobuf);
      0011AD 8E 82            [24] 2676 	mov	dpl,r6
      0011AF 8F 83            [24] 2677 	mov	dph,r7
      0011B1 8D F0            [24] 2678 	mov	b,r5
      0011B3 C0 07            [24] 2679 	push	ar7
      0011B5 C0 06            [24] 2680 	push	ar6
      0011B7 C0 05            [24] 2681 	push	ar5
      0011B9 12 32 23         [24] 2682 	lcall	_strlen
      0011BC AA 82            [24] 2683 	mov	r2,dpl
                                   2684 ;	E:\Works\NSHET\oled.c:283: oledPrint(W / 2 - len * f_w / 2, y, fid, color, iobuf);
      0011BE E5 1F            [12] 2685 	mov	a,_bp
      0011C0 24 03            [12] 2686 	add	a,#0x03
      0011C2 F8               [12] 2687 	mov	r0,a
      0011C3 86 03            [24] 2688 	mov	ar3,@r0
      0011C5 7C 00            [12] 2689 	mov	r4,#0x00
      0011C7 90 00 DF         [24] 2690 	mov	dptr,#__divsint_PARM_2
      0011CA 74 02            [12] 2691 	mov	a,#0x02
      0011CC F0               [24] 2692 	movx	@dptr,a
      0011CD E4               [12] 2693 	clr	a
      0011CE A3               [24] 2694 	inc	dptr
      0011CF F0               [24] 2695 	movx	@dptr,a
      0011D0 8B 82            [24] 2696 	mov	dpl,r3
      0011D2 8C 83            [24] 2697 	mov	dph,r4
      0011D4 C0 02            [24] 2698 	push	ar2
      0011D6 12 26 4D         [24] 2699 	lcall	__divsint
      0011D9 AB 82            [24] 2700 	mov	r3,dpl
      0011DB D0 02            [24] 2701 	pop	ar2
      0011DD A8 1F            [24] 2702 	mov	r0,_bp
      0011DF 08               [12] 2703 	inc	r0
      0011E0 08               [12] 2704 	inc	r0
      0011E1 8A F0            [24] 2705 	mov	b,r2
      0011E3 E6               [12] 2706 	mov	a,@r0
      0011E4 A4               [48] 2707 	mul	ab
      0011E5 FA               [12] 2708 	mov	r2,a
      0011E6 AC F0            [24] 2709 	mov	r4,b
      0011E8 90 00 DF         [24] 2710 	mov	dptr,#__divsint_PARM_2
      0011EB 74 02            [12] 2711 	mov	a,#0x02
      0011ED F0               [24] 2712 	movx	@dptr,a
      0011EE E4               [12] 2713 	clr	a
      0011EF A3               [24] 2714 	inc	dptr
      0011F0 F0               [24] 2715 	movx	@dptr,a
      0011F1 8A 82            [24] 2716 	mov	dpl,r2
      0011F3 8C 83            [24] 2717 	mov	dph,r4
      0011F5 C0 03            [24] 2718 	push	ar3
      0011F7 12 26 4D         [24] 2719 	lcall	__divsint
      0011FA AA 82            [24] 2720 	mov	r2,dpl
      0011FC D0 03            [24] 2721 	pop	ar3
      0011FE D0 05            [24] 2722 	pop	ar5
      001200 D0 06            [24] 2723 	pop	ar6
      001202 D0 07            [24] 2724 	pop	ar7
      001204 EB               [12] 2725 	mov	a,r3
      001205 C3               [12] 2726 	clr	c
      001206 9A               [12] 2727 	subb	a,r2
      001207 FB               [12] 2728 	mov	r3,a
      001208 E5 1F            [12] 2729 	mov	a,_bp
      00120A 24 FD            [12] 2730 	add	a,#0xfd
      00120C F8               [12] 2731 	mov	r0,a
      00120D 90 00 50         [24] 2732 	mov	dptr,#_oledPrint_PARM_2
      001210 E6               [12] 2733 	mov	a,@r0
      001211 F0               [24] 2734 	movx	@dptr,a
      001212 E5 1F            [12] 2735 	mov	a,_bp
      001214 24 FC            [12] 2736 	add	a,#0xfc
      001216 F8               [12] 2737 	mov	r0,a
      001217 90 00 51         [24] 2738 	mov	dptr,#_oledPrint_PARM_3
      00121A E6               [12] 2739 	mov	a,@r0
      00121B F0               [24] 2740 	movx	@dptr,a
      00121C E5 1F            [12] 2741 	mov	a,_bp
      00121E 24 FB            [12] 2742 	add	a,#0xfb
      001220 F8               [12] 2743 	mov	r0,a
      001221 90 00 52         [24] 2744 	mov	dptr,#_oledPrint_PARM_4
      001224 E6               [12] 2745 	mov	a,@r0
      001225 F0               [24] 2746 	movx	@dptr,a
      001226 90 00 53         [24] 2747 	mov	dptr,#_oledPrint_PARM_5
      001229 EE               [12] 2748 	mov	a,r6
      00122A F0               [24] 2749 	movx	@dptr,a
      00122B EF               [12] 2750 	mov	a,r7
      00122C A3               [24] 2751 	inc	dptr
      00122D F0               [24] 2752 	movx	@dptr,a
      00122E ED               [12] 2753 	mov	a,r5
      00122F A3               [24] 2754 	inc	dptr
      001230 F0               [24] 2755 	movx	@dptr,a
      001231 8B 82            [24] 2756 	mov	dpl,r3
      001233 C0 07            [24] 2757 	push	ar7
      001235 C0 06            [24] 2758 	push	ar6
      001237 C0 05            [24] 2759 	push	ar5
      001239 12 0E 30         [24] 2760 	lcall	_oledPrint
      00123C D0 05            [24] 2761 	pop	ar5
      00123E D0 06            [24] 2762 	pop	ar6
      001240 D0 07            [24] 2763 	pop	ar7
                                   2764 ;	E:\Works\NSHET\oled.c:284: free(iobuf);
      001242 8E 82            [24] 2765 	mov	dpl,r6
      001244 8F 83            [24] 2766 	mov	dph,r7
      001246 8D F0            [24] 2767 	mov	b,r5
      001248 12 1B DE         [24] 2768 	lcall	_free
                                   2769 ;	E:\Works\NSHET\oled.c:285: return result;
      00124B E5 1F            [12] 2770 	mov	a,_bp
      00124D 24 05            [12] 2771 	add	a,#0x05
      00124F F8               [12] 2772 	mov	r0,a
      001250 86 82            [24] 2773 	mov	dpl,@r0
      001252 08               [12] 2774 	inc	r0
      001253 86 83            [24] 2775 	mov	dph,@r0
                                   2776 ;	E:\Works\NSHET\oled.c:286: }
      001255 85 1F 81         [24] 2777 	mov	sp,_bp
      001258 D0 1F            [24] 2778 	pop	_bp
      00125A 22               [24] 2779 	ret
                                   2780 	.area CSEG    (CODE)
                                   2781 	.area CONST   (CODE)
                                   2782 	.area XINIT   (CODE)
      00519D                       2783 __xinit__addr:
      00519D 78                    2784 	.db #0x78	; 120	'x'
                                   2785 	.area CABS    (ABS,CODE)
