;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.0.0 #11528 (MINGW64)
;--------------------------------------------------------
	.module main
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _main
	.globl _tempGet
	.globl _tempFetch
	.globl _sprintf
	.globl _memmove
	.globl _oledPrintfc
	.globl _oledPrint
	.globl _oledClear
	.globl _oledInit
	.globl _lut
	.globl _adcGet
	.globl _adcInit
	.globl _pwm3Duty
	.globl _pwm3Init
	.globl _uart1Write
	.globl _uart1Config
	.globl _delay
	.globl _sysClockConfig
	.globl _UIF_BUS_RST
	.globl _UIF_TRANSFER
	.globl _UIF_SUSPEND
	.globl _UIF_FIFO_OV
	.globl _U_SIE_FREE
	.globl _U_TOG_OK
	.globl _U_IS_NAK
	.globl _S0_R_FIFO0
	.globl _S0_R_FIFO1
	.globl _S0_T_FIFO
	.globl _S0_FREE
	.globl _S0_IF_BYTE
	.globl _S0_IF_FIRST
	.globl _S0_IF_OV
	.globl _S0_FST_ACT
	.globl _CP_RL2
	.globl _C_T2
	.globl _TR2
	.globl _EXEN2
	.globl _TCLK
	.globl _RCLK
	.globl _EXF2
	.globl _CAP1F
	.globl _TF2
	.globl _RI
	.globl _TI
	.globl _RB8
	.globl _TB8
	.globl _REN
	.globl _SM2
	.globl _SM1
	.globl _SM0
	.globl _IT0
	.globl _IE0
	.globl _IT1
	.globl _IE1
	.globl _TR0
	.globl _TF0
	.globl _TR1
	.globl _TF1
	.globl _RXD1_
	.globl _LED2
	.globl _CAP3_
	.globl _PWM3_
	.globl _TXD1_
	.globl _TNOW_
	.globl _LED3
	.globl _SCS_
	.globl _SCK_
	.globl _P40
	.globl _P41
	.globl _P42
	.globl _P43
	.globl _P44
	.globl _P45
	.globl _P46
	.globl _P47
	.globl _RXD
	.globl _TXD
	.globl _INT0
	.globl _LED0
	.globl _INT1
	.globl _LED1
	.globl _T0
	.globl _XCS0
	.globl _LEDC
	.globl _T1
	.globl _DA6
	.globl _WR
	.globl _RD
	.globl _P30
	.globl _P31
	.globl _P32
	.globl _P33
	.globl _P34
	.globl _P35
	.globl _P36
	.globl _P37
	.globl _CAP2_
	.globl _T2EX_
	.globl _TNOW
	.globl _RXD1
	.globl _DA7
	.globl _TXD1
	.globl _P20
	.globl _P21
	.globl _P22
	.globl _P23
	.globl _P24
	.globl _P25
	.globl _P26
	.globl _P27
	.globl _CAP1
	.globl _T2
	.globl _CAP2
	.globl _T2EX
	.globl _CAP3
	.globl _PWM3
	.globl _SCS
	.globl _MOSI
	.globl _MISO
	.globl _SCK
	.globl _AIN0
	.globl _AIN1
	.globl _AIN2
	.globl _AIN3
	.globl _AIN4
	.globl _AIN5
	.globl _AIN6
	.globl _AIN7
	.globl _P10
	.globl _P11
	.globl _P12
	.globl _P13
	.globl _P14
	.globl _P15
	.globl _P16
	.globl _P17
	.globl _UDTR
	.globl _URTS
	.globl _RXD_
	.globl _TXD_
	.globl _UCTS
	.globl _UDSR
	.globl _URI
	.globl _UDCD
	.globl _P00
	.globl _P01
	.globl _P02
	.globl _P03
	.globl _P04
	.globl _P05
	.globl _P06
	.globl _P07
	.globl _IE_SPI0
	.globl _IE_TMR3
	.globl _IE_USB
	.globl _IE_ADC
	.globl _IE_UART1
	.globl _IE_GPIO
	.globl _IE_WDOG
	.globl _PX0
	.globl _PT0
	.globl _PX1
	.globl _PT1
	.globl _PS
	.globl _PT2
	.globl _PL_FLAG
	.globl _PH_FLAG
	.globl _EX0
	.globl _ET0
	.globl _EX1
	.globl _ET1
	.globl _ES
	.globl _ET2
	.globl _E_DIS
	.globl _EA
	.globl _P
	.globl _F1
	.globl _OV
	.globl _RS0
	.globl _RS1
	.globl _F0
	.globl _AC
	.globl _CY
	.globl _USB_DMA_AH
	.globl _USB_DMA_AL
	.globl _USB_DMA
	.globl _UDEV_CTRL
	.globl _USB_DEV_AD
	.globl _USB_CTRL
	.globl _USB_INT_EN
	.globl _UEP4_T_LEN
	.globl _UEP4_CTRL
	.globl _UEP0_T_LEN
	.globl _UEP0_CTRL
	.globl _USB_MIS_ST
	.globl _USB_INT_ST
	.globl _USB_INT_FG
	.globl _UEP3_T_LEN
	.globl _UEP3_CTRL
	.globl _UEP2_T_LEN
	.globl _UEP2_CTRL
	.globl _UEP1_T_LEN
	.globl _UEP1_CTRL
	.globl _USB_RX_LEN
	.globl _ADC_EX_SW
	.globl _ADC_SETUP
	.globl _ADC_FIFO_H
	.globl _ADC_FIFO_L
	.globl _ADC_FIFO
	.globl _ADC_CHANN
	.globl _ADC_CTRL
	.globl _ADC_STAT
	.globl _ADC_CK_SE
	.globl _ADC_DMA_CN
	.globl _ADC_DMA_AH
	.globl _ADC_DMA_AL
	.globl _ADC_DMA
	.globl _SER1_ADDR
	.globl _SER1_MSR
	.globl _SER1_LSR
	.globl _SER1_MCR
	.globl _SER1_LCR
	.globl _SER1_IIR
	.globl _SER1_IER
	.globl _SER1_FIFO
	.globl _SPI0_SETUP
	.globl _SPI0_CK_SE
	.globl _SPI0_CTRL
	.globl _SPI0_DATA
	.globl _SPI0_STAT
	.globl _T3_FIFO_H
	.globl _T3_FIFO_L
	.globl _T3_FIFO
	.globl _T3_DMA_AH
	.globl _T3_DMA_AL
	.globl _T3_DMA
	.globl _T3_DMA_CN
	.globl _T3_CTRL
	.globl _T3_STAT
	.globl _T3_END_H
	.globl _T3_END_L
	.globl _T3_END
	.globl _T3_COUNT_H
	.globl _T3_COUNT_L
	.globl _T3_COUNT
	.globl _T3_SETUP
	.globl _TH2
	.globl _TL2
	.globl _T2COUNT
	.globl _RCAP2H
	.globl _RCAP2L
	.globl _RCAP2
	.globl _T2MOD
	.globl _T2CON
	.globl _SBUF
	.globl _SCON
	.globl _TH1
	.globl _TH0
	.globl _TL1
	.globl _TL0
	.globl _TMOD
	.globl _TCON
	.globl _XBUS_SPEED
	.globl _XBUS_AUX
	.globl _PIN_FUNC
	.globl _PORT_CFG
	.globl _P5_IN
	.globl _P4_PU
	.globl _P4_DIR
	.globl _P4_IN
	.globl _P4_OUT
	.globl _P3_PU
	.globl _P3_DIR
	.globl _P3
	.globl _P2_PU
	.globl _P2_DIR
	.globl _P2
	.globl _P1_PU
	.globl _P1_DIR
	.globl _P1_IE
	.globl _P1
	.globl _P0_PU
	.globl _P0_DIR
	.globl _P0
	.globl _ROM_CTRL
	.globl _ROM_DATA_H
	.globl _ROM_DATA_L
	.globl _ROM_DATA
	.globl _ROM_ADDR_H
	.globl _ROM_ADDR_L
	.globl _ROM_ADDR
	.globl _GPIO_IE
	.globl _IP_EX
	.globl _IE_EX
	.globl _IP
	.globl _IE
	.globl _WDOG_COUNT
	.globl _RESET_KEEP
	.globl _WAKE_CTRL
	.globl _SLEEP_CTRL
	.globl _CLOCK_CFG
	.globl _PLL_CFG
	.globl _PCON
	.globl _GLOBAL_CFG
	.globl _SAFE_MOD
	.globl _DPH
	.globl _DPL
	.globl _SP
	.globl _B
	.globl _ACC
	.globl _PSW
	.globl _wcounter
	.globl _k
	.globl _sum
	.globl _run
	.globl _counter
	.globl _tbuf
	.globl _str
	.globl _now
	.globl _set
	.globl _LED_DMA_X
	.globl _LED_DMA_XL
	.globl _LED_DMA_XH
	.globl _LED_DMA_CN
	.globl _LED_DMA
	.globl _LED_DMA_AL
	.globl _LED_DMA_AH
	.globl _LED_CK_SE
	.globl _LED_DATA
	.globl _LED_CTRL
	.globl _LED_STAT
	.globl _UEP3_DMA
	.globl _UEP3_DMA_L
	.globl _UEP3_DMA_H
	.globl _UEP2_DMA
	.globl _UEP2_DMA_L
	.globl _UEP2_DMA_H
	.globl _UEP1_DMA
	.globl _UEP1_DMA_L
	.globl _UEP1_DMA_H
	.globl _UEP0_DMA
	.globl _UEP0_DMA_L
	.globl _UEP0_DMA_H
	.globl _UEP2_3_MOD
	.globl _UEP4_1_MOD
	.globl _pLED_DMA_X
	.globl _pLED_DMA_XL
	.globl _pLED_DMA_XH
	.globl _pLED_DMA_CN
	.globl _pLED_DMA
	.globl _pLED_DMA_AL
	.globl _pLED_DMA_AH
	.globl _pLED_CK_SE
	.globl _pLED_DATA
	.globl _pLED_CTRL
	.globl _pLED_STAT
	.globl _pUEP3_DMA
	.globl _pUEP3_DMA_L
	.globl _pUEP3_DMA_H
	.globl _pUEP2_DMA
	.globl _pUEP2_DMA_L
	.globl _pUEP2_DMA_H
	.globl _pUEP1_DMA
	.globl _pUEP1_DMA_L
	.globl _pUEP1_DMA_H
	.globl _pUEP0_DMA
	.globl _pUEP0_DMA_L
	.globl _pUEP0_DMA_H
	.globl _pUEP2_3_MOD
	.globl _pUEP4_1_MOD
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_PSW	=	0x00d0
_ACC	=	0x00e0
_B	=	0x00f0
_SP	=	0x0081
_DPL	=	0x0082
_DPH	=	0x0083
_SAFE_MOD	=	0x00a1
_GLOBAL_CFG	=	0x00b1
_PCON	=	0x0087
_PLL_CFG	=	0x00b2
_CLOCK_CFG	=	0x00b3
_SLEEP_CTRL	=	0x00ea
_WAKE_CTRL	=	0x00eb
_RESET_KEEP	=	0x00fe
_WDOG_COUNT	=	0x00ff
_IE	=	0x00a8
_IP	=	0x00b8
_IE_EX	=	0x00e8
_IP_EX	=	0x00e9
_GPIO_IE	=	0x00cf
_ROM_ADDR	=	0x8584
_ROM_ADDR_L	=	0x0084
_ROM_ADDR_H	=	0x0085
_ROM_DATA	=	0x8f8e
_ROM_DATA_L	=	0x008e
_ROM_DATA_H	=	0x008f
_ROM_CTRL	=	0x0086
_P0	=	0x0080
_P0_DIR	=	0x00c4
_P0_PU	=	0x00c5
_P1	=	0x0090
_P1_IE	=	0x00b9
_P1_DIR	=	0x00ba
_P1_PU	=	0x00bb
_P2	=	0x00a0
_P2_DIR	=	0x00bc
_P2_PU	=	0x00bd
_P3	=	0x00b0
_P3_DIR	=	0x00be
_P3_PU	=	0x00bf
_P4_OUT	=	0x00c0
_P4_IN	=	0x00c1
_P4_DIR	=	0x00c2
_P4_PU	=	0x00c3
_P5_IN	=	0x00c7
_PORT_CFG	=	0x00c6
_PIN_FUNC	=	0x00ce
_XBUS_AUX	=	0x00a2
_XBUS_SPEED	=	0x00fd
_TCON	=	0x0088
_TMOD	=	0x0089
_TL0	=	0x008a
_TL1	=	0x008b
_TH0	=	0x008c
_TH1	=	0x008d
_SCON	=	0x0098
_SBUF	=	0x0099
_T2CON	=	0x00c8
_T2MOD	=	0x00c9
_RCAP2	=	0xcbca
_RCAP2L	=	0x00ca
_RCAP2H	=	0x00cb
_T2COUNT	=	0xcdcc
_TL2	=	0x00cc
_TH2	=	0x00cd
_T3_SETUP	=	0x00a3
_T3_COUNT	=	0xa5a4
_T3_COUNT_L	=	0x00a4
_T3_COUNT_H	=	0x00a5
_T3_END	=	0xa7a6
_T3_END_L	=	0x00a6
_T3_END_H	=	0x00a7
_T3_STAT	=	0x00a9
_T3_CTRL	=	0x00aa
_T3_DMA_CN	=	0x00ab
_T3_DMA	=	0xadac
_T3_DMA_AL	=	0x00ac
_T3_DMA_AH	=	0x00ad
_T3_FIFO	=	0xafae
_T3_FIFO_L	=	0x00ae
_T3_FIFO_H	=	0x00af
_SPI0_STAT	=	0x00f8
_SPI0_DATA	=	0x00f9
_SPI0_CTRL	=	0x00fa
_SPI0_CK_SE	=	0x00fb
_SPI0_SETUP	=	0x00fc
_SER1_FIFO	=	0x009a
_SER1_IER	=	0x0091
_SER1_IIR	=	0x0092
_SER1_LCR	=	0x0093
_SER1_MCR	=	0x0094
_SER1_LSR	=	0x0095
_SER1_MSR	=	0x0096
_SER1_ADDR	=	0x0097
_ADC_DMA	=	0xedec
_ADC_DMA_AL	=	0x00ec
_ADC_DMA_AH	=	0x00ed
_ADC_DMA_CN	=	0x00ee
_ADC_CK_SE	=	0x00ef
_ADC_STAT	=	0x00f1
_ADC_CTRL	=	0x00f2
_ADC_CHANN	=	0x00f3
_ADC_FIFO	=	0xf5f4
_ADC_FIFO_L	=	0x00f4
_ADC_FIFO_H	=	0x00f5
_ADC_SETUP	=	0x00f6
_ADC_EX_SW	=	0x00f7
_USB_RX_LEN	=	0x00d1
_UEP1_CTRL	=	0x00d2
_UEP1_T_LEN	=	0x00d3
_UEP2_CTRL	=	0x00d4
_UEP2_T_LEN	=	0x00d5
_UEP3_CTRL	=	0x00d6
_UEP3_T_LEN	=	0x00d7
_USB_INT_FG	=	0x00d8
_USB_INT_ST	=	0x00d9
_USB_MIS_ST	=	0x00da
_UEP0_CTRL	=	0x00dc
_UEP0_T_LEN	=	0x00dd
_UEP4_CTRL	=	0x00de
_UEP4_T_LEN	=	0x00df
_USB_INT_EN	=	0x00e1
_USB_CTRL	=	0x00e2
_USB_DEV_AD	=	0x00e3
_UDEV_CTRL	=	0x00e4
_USB_DMA	=	0xe7e6
_USB_DMA_AL	=	0x00e6
_USB_DMA_AH	=	0x00e7
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_CY	=	0x00d7
_AC	=	0x00d6
_F0	=	0x00d5
_RS1	=	0x00d4
_RS0	=	0x00d3
_OV	=	0x00d2
_F1	=	0x00d1
_P	=	0x00d0
_EA	=	0x00af
_E_DIS	=	0x00ae
_ET2	=	0x00ad
_ES	=	0x00ac
_ET1	=	0x00ab
_EX1	=	0x00aa
_ET0	=	0x00a9
_EX0	=	0x00a8
_PH_FLAG	=	0x00bf
_PL_FLAG	=	0x00be
_PT2	=	0x00bd
_PS	=	0x00bc
_PT1	=	0x00bb
_PX1	=	0x00ba
_PT0	=	0x00b9
_PX0	=	0x00b8
_IE_WDOG	=	0x00ef
_IE_GPIO	=	0x00ee
_IE_UART1	=	0x00ec
_IE_ADC	=	0x00eb
_IE_USB	=	0x00ea
_IE_TMR3	=	0x00e9
_IE_SPI0	=	0x00e8
_P07	=	0x0087
_P06	=	0x0086
_P05	=	0x0085
_P04	=	0x0084
_P03	=	0x0083
_P02	=	0x0082
_P01	=	0x0081
_P00	=	0x0080
_UDCD	=	0x0087
_URI	=	0x0086
_UDSR	=	0x0085
_UCTS	=	0x0084
_TXD_	=	0x0083
_RXD_	=	0x0082
_URTS	=	0x0081
_UDTR	=	0x0080
_P17	=	0x0097
_P16	=	0x0096
_P15	=	0x0095
_P14	=	0x0094
_P13	=	0x0093
_P12	=	0x0092
_P11	=	0x0091
_P10	=	0x0090
_AIN7	=	0x0097
_AIN6	=	0x0096
_AIN5	=	0x0095
_AIN4	=	0x0094
_AIN3	=	0x0093
_AIN2	=	0x0092
_AIN1	=	0x0091
_AIN0	=	0x0090
_SCK	=	0x0097
_MISO	=	0x0096
_MOSI	=	0x0095
_SCS	=	0x0094
_PWM3	=	0x0092
_CAP3	=	0x0092
_T2EX	=	0x0091
_CAP2	=	0x0091
_T2	=	0x0090
_CAP1	=	0x0090
_P27	=	0x00a7
_P26	=	0x00a6
_P25	=	0x00a5
_P24	=	0x00a4
_P23	=	0x00a3
_P22	=	0x00a2
_P21	=	0x00a1
_P20	=	0x00a0
_TXD1	=	0x00a7
_DA7	=	0x00a7
_RXD1	=	0x00a6
_TNOW	=	0x00a5
_T2EX_	=	0x00a5
_CAP2_	=	0x00a5
_P37	=	0x00b7
_P36	=	0x00b6
_P35	=	0x00b5
_P34	=	0x00b4
_P33	=	0x00b3
_P32	=	0x00b2
_P31	=	0x00b1
_P30	=	0x00b0
_RD	=	0x00b7
_WR	=	0x00b6
_DA6	=	0x00b5
_T1	=	0x00b5
_LEDC	=	0x00b4
_XCS0	=	0x00b4
_T0	=	0x00b4
_LED1	=	0x00b3
_INT1	=	0x00b3
_LED0	=	0x00b2
_INT0	=	0x00b2
_TXD	=	0x00b1
_RXD	=	0x00b0
_P47	=	0x00c7
_P46	=	0x00c6
_P45	=	0x00c5
_P44	=	0x00c4
_P43	=	0x00c3
_P42	=	0x00c2
_P41	=	0x00c1
_P40	=	0x00c0
_SCK_	=	0x00c7
_SCS_	=	0x00c6
_LED3	=	0x00c4
_TNOW_	=	0x00c4
_TXD1_	=	0x00c4
_PWM3_	=	0x00c2
_CAP3_	=	0x00c2
_LED2	=	0x00c0
_RXD1_	=	0x00c0
_TF1	=	0x008f
_TR1	=	0x008e
_TF0	=	0x008d
_TR0	=	0x008c
_IE1	=	0x008b
_IT1	=	0x008a
_IE0	=	0x0089
_IT0	=	0x0088
_SM0	=	0x009f
_SM1	=	0x009e
_SM2	=	0x009d
_REN	=	0x009c
_TB8	=	0x009b
_RB8	=	0x009a
_TI	=	0x0099
_RI	=	0x0098
_TF2	=	0x00cf
_CAP1F	=	0x00cf
_EXF2	=	0x00ce
_RCLK	=	0x00cd
_TCLK	=	0x00cc
_EXEN2	=	0x00cb
_TR2	=	0x00ca
_C_T2	=	0x00c9
_CP_RL2	=	0x00c8
_S0_FST_ACT	=	0x00ff
_S0_IF_OV	=	0x00fe
_S0_IF_FIRST	=	0x00fd
_S0_IF_BYTE	=	0x00fc
_S0_FREE	=	0x00fb
_S0_T_FIFO	=	0x00fa
_S0_R_FIFO1	=	0x00f9
_S0_R_FIFO0	=	0x00f8
_U_IS_NAK	=	0x00df
_U_TOG_OK	=	0x00de
_U_SIE_FREE	=	0x00dd
_UIF_FIFO_OV	=	0x00dc
_UIF_SUSPEND	=	0x00da
_UIF_TRANSFER	=	0x00d9
_UIF_BUS_RST	=	0x00d8
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
_tempGet_sloc0_1_0:
	.ds 4
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
;--------------------------------------------------------
; Stack segment in internal ram 
;--------------------------------------------------------
	.area	SSEG
__start__stack:
	.ds	1

;--------------------------------------------------------
; indirectly addressable internal ram data
;--------------------------------------------------------
	.area ISEG    (DATA)
;--------------------------------------------------------
; absolute internal ram data
;--------------------------------------------------------
	.area IABS    (ABS,DATA)
	.area IABS    (ABS,DATA)
;--------------------------------------------------------
; bit data
;--------------------------------------------------------
	.area BSEG    (BIT)
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
_pUEP4_1_MOD	=	0x0046
_pUEP2_3_MOD	=	0x0047
_pUEP0_DMA_H	=	0x0048
_pUEP0_DMA_L	=	0x0049
_pUEP0_DMA	=	0x0048
_pUEP1_DMA_H	=	0x004a
_pUEP1_DMA_L	=	0x004b
_pUEP1_DMA	=	0x004a
_pUEP2_DMA_H	=	0x004c
_pUEP2_DMA_L	=	0x004d
_pUEP2_DMA	=	0x004c
_pUEP3_DMA_H	=	0x004e
_pUEP3_DMA_L	=	0x004f
_pUEP3_DMA	=	0x004e
_pLED_STAT	=	0x0080
_pLED_CTRL	=	0x0081
_pLED_DATA	=	0x0082
_pLED_CK_SE	=	0x0083
_pLED_DMA_AH	=	0x0084
_pLED_DMA_AL	=	0x0085
_pLED_DMA	=	0x0084
_pLED_DMA_CN	=	0x0086
_pLED_DMA_XH	=	0x0088
_pLED_DMA_XL	=	0x0089
_pLED_DMA_X	=	0x0088
;--------------------------------------------------------
; external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
_UEP4_1_MOD	=	0x2446
_UEP2_3_MOD	=	0x2447
_UEP0_DMA_H	=	0x2448
_UEP0_DMA_L	=	0x2449
_UEP0_DMA	=	0x2448
_UEP1_DMA_H	=	0x244a
_UEP1_DMA_L	=	0x244b
_UEP1_DMA	=	0x244a
_UEP2_DMA_H	=	0x244c
_UEP2_DMA_L	=	0x244d
_UEP2_DMA	=	0x244c
_UEP3_DMA_H	=	0x244e
_UEP3_DMA_L	=	0x244f
_UEP3_DMA	=	0x244e
_LED_STAT	=	0x2880
_LED_CTRL	=	0x2881
_LED_DATA	=	0x2882
_LED_CK_SE	=	0x2883
_LED_DMA_AH	=	0x2884
_LED_DMA_AL	=	0x2885
_LED_DMA	=	0x2884
_LED_DMA_CN	=	0x2886
_LED_DMA_XH	=	0x2888
_LED_DMA_XL	=	0x2889
_LED_DMA_X	=	0x2888
_tempFetch_f_65537_93:
	.ds 4
_tempGet_f_65536_95:
	.ds 4
_set::
	.ds 1
_now::
	.ds 1
_str::
	.ds 16
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
_tbuf::
	.ds 100
_counter::
	.ds 1
_run::
	.ds 1
_sum::
	.ds 2
_k::
	.ds 4
_wcounter::
	.ds 2
	.area HOME    (CODE)
	.area GSINIT0 (CODE)
	.area GSINIT1 (CODE)
	.area GSINIT2 (CODE)
	.area GSINIT3 (CODE)
	.area GSINIT4 (CODE)
	.area GSINIT5 (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area CSEG    (CODE)
;--------------------------------------------------------
; interrupt vector 
;--------------------------------------------------------
	.area HOME    (CODE)
__interrupt_vect:
	ljmp	__sdcc_gsinit_startup
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
	.globl __sdcc_gsinit_startup
	.globl __sdcc_program_startup
	.globl __start__stack
	.globl __mcs51_genXINIT
	.globl __mcs51_genXRAMCLEAR
	.globl __mcs51_genRAMCLEAR
	.area GSFINAL (CODE)
	ljmp	__sdcc_program_startup
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
__sdcc_program_startup:
	ljmp	_main
;	return from main will return to caller
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'tempFetch'
;------------------------------------------------------------
;f                         Allocated with name '_tempFetch_f_65537_93'
;------------------------------------------------------------
;	main.c:24: void tempFetch() {
;	-----------------------------------------
;	 function tempFetch
;	-----------------------------------------
_tempFetch:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	main.c:25: FIFO_SHIFT(tbuf);
	mov	dptr,#_memmove_PARM_2
	mov	a,#(_tbuf + 0x0001)
	movx	@dptr,a
	mov	a,#((_tbuf + 0x0001) >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_memmove_PARM_3
	mov	a,#0x63
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_tbuf
	mov	b,#0x00
	lcall	_memmove
;	main.c:26: float f = adcGet(ADC_TMP5);
	mov	dpl,#0x07
	lcall	_adcGet
	lcall	___uint2fs
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
;	main.c:27: f = f / 1023 * 660;
	clr	a
	push	acc
	mov	a,#0xc0
	push	acc
	mov	a,#0x7f
	push	acc
	mov	a,#0x44
	push	acc
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	lcall	___fsdiv
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	push	ar4
	push	ar5
	push	ar6
	push	ar7
	mov	dptr,#0x0000
	mov	b,#0x25
	mov	a,#0x44
	lcall	___fsmul
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	dptr,#_tempFetch_f_65537_93
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	main.c:28: if (f > 650) {
	push	ar4
	push	ar5
	push	ar6
	push	ar7
	mov	dptr,#0x8000
	mov	b,#0x22
	mov	a,#0x44
	lcall	___fslt
	mov	r7,dpl
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	a,r7
	jz	00102$
;	main.c:29: f = adcGet(ADC_TMP1);
	mov	dpl,#0x06
	lcall	_adcGet
	lcall	___uint2fs
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
;	main.c:30: f = f / 1023 * 3300;
	clr	a
	push	acc
	mov	a,#0xc0
	push	acc
	mov	a,#0x7f
	push	acc
	mov	a,#0x44
	push	acc
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	lcall	___fsdiv
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	push	ar4
	push	ar5
	push	ar6
	push	ar7
	mov	dptr,#0x4000
	mov	b,#0x4e
	mov	a,#0x45
	lcall	___fsmul
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	dptr,#_tempFetch_f_65537_93
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
00102$:
;	main.c:32: FIFO_END(tbuf) = lut((int) f) + 2; // calibration
	mov	dptr,#_tempFetch_f_65537_93
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	lcall	___fs2sint
	lcall	_lut
	mov	r7,dpl
	inc	r7
	inc	r7
	mov	dptr,#(_tbuf + 0x0063)
	mov	a,r7
	movx	@dptr,a
;	main.c:33: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'tempGet'
;------------------------------------------------------------
;sloc0                     Allocated with name '_tempGet_sloc0_1_0'
;f                         Allocated with name '_tempGet_f_65536_95'
;i                         Allocated with name '_tempGet_i_131072_96'
;------------------------------------------------------------
;	main.c:35: uint8_t tempGet() {
;	-----------------------------------------
;	 function tempGet
;	-----------------------------------------
_tempGet:
;	main.c:36: float f = 0;
	mov	dptr,#_tempGet_f_65536_95
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	main.c:37: for (uint8_t i = 0; i < sizeof(tbuf); i++)
	mov	r7,#0x00
00103$:
	cjne	r7,#0x64,00116$
00116$:
	jnc	00101$
;	main.c:38: f += tbuf[i];
	mov	a,r7
	add	a,#_tbuf
	mov	dpl,a
	clr	a
	addc	a,#(_tbuf >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r6,a
	mov	r5,#0x00
	mov	dptr,#_tempGet_f_65536_95
	movx	a,@dptr
	mov	_tempGet_sloc0_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_tempGet_sloc0_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_tempGet_sloc0_1_0 + 2),a
	inc	dptr
	movx	a,@dptr
	mov	(_tempGet_sloc0_1_0 + 3),a
	mov	dpl,r6
	mov	dph,r5
	push	ar7
	lcall	___sint2fs
	mov	r0,dpl
	mov	r4,dph
	mov	r5,b
	mov	r6,a
	push	ar0
	push	ar4
	push	ar5
	push	ar6
	mov	dpl,_tempGet_sloc0_1_0
	mov	dph,(_tempGet_sloc0_1_0 + 1)
	mov	b,(_tempGet_sloc0_1_0 + 2)
	mov	a,(_tempGet_sloc0_1_0 + 3)
	lcall	___fsadd
	mov	r3,dpl
	mov	r4,dph
	mov	r5,b
	mov	r6,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar7
	mov	dptr,#_tempGet_f_65536_95
	mov	a,r3
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
;	main.c:37: for (uint8_t i = 0; i < sizeof(tbuf); i++)
	inc	r7
	sjmp	00103$
00101$:
;	main.c:39: f /= sizeof(tbuf);
	mov	dptr,#_tempGet_f_65536_95
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	clr	a
	push	acc
	push	acc
	mov	a,#0xc8
	push	acc
	mov	a,#0x42
	push	acc
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	lcall	___fsdiv
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	dptr,#_tempGet_f_65536_95
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	main.c:40: return (uint8_t) ((int) f);
	mov	dptr,#_tempGet_f_65536_95
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
;	main.c:41: }
	ljmp	___fs2sint
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;i                         Allocated with name '_main_i_131072_98'
;v                         Allocated with name '_main_v_196608_103'
;------------------------------------------------------------
;	main.c:52: void main() {
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
;	main.c:53: PORT_CFG &= ~bP3_OC;
	anl	_PORT_CFG,#0xf7
;	main.c:54: P3_PU &= ~(1 << 2 | 1 << 4);
	anl	_P3_PU,#0xeb
;	main.c:56: sysClockConfig();
	lcall	_sysClockConfig
;	main.c:57: delay(10);
	mov	dptr,#0x000a
	lcall	_delay
;	main.c:59: adcInit();
	lcall	_adcInit
;	main.c:60: pwm3Init(120000);
	mov	dptr,#0xd4c0
	mov	b,#0x01
	clr	a
	lcall	_pwm3Init
;	main.c:61: uart1Config(115200);
	mov	dptr,#0xc200
	mov	b,#0x01
	clr	a
	lcall	_uart1Config
;	main.c:62: EA = 1;
;	assignBit
	setb	_EA
;	main.c:63: delay(50);
	mov	dptr,#0x0032
	lcall	_delay
;	main.c:64: uart1Write("NSHET\n");
	mov	dptr,#___str_0
	mov	b,#0x80
	lcall	_uart1Write
;	main.c:66: oledInit(OLED_SCREEN_SMALL);
	mov	dpl,#0x78
	lcall	_oledInit
;	main.c:67: oledPrintfc(1, 2, 1, "NSHET");
	mov	a,#___str_1
	push	acc
	mov	a,#(___str_1 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	rl	a
	push	acc
	inc	a
	push	acc
	dec	a
	push	acc
	lcall	_oledPrintfc
	mov	a,sp
	add	a,#0xfa
	mov	sp,a
;	main.c:69: for (uint8_t i = 0; i < FIFO_SIZE; i++) {
	mov	r7,#0x00
00130$:
	cjne	r7,#0x64,00207$
00207$:
	jnc	00101$
;	main.c:70: tempFetch();
	push	ar7
	lcall	_tempFetch
;	main.c:71: delay(10);
	mov	dptr,#0x000a
	lcall	_delay
	pop	ar7
;	main.c:69: for (uint8_t i = 0; i < FIFO_SIZE; i++) {
	inc	r7
	sjmp	00130$
00101$:
;	main.c:73: set = now = tempGet();
	lcall	_tempGet
	mov	r7,dpl
	mov	dptr,#_now
	mov	a,r7
	movx	@dptr,a
;	main.c:74: set = set / TEMP_STEP;
	mov	r6,#0x00
	mov	dptr,#__divsint_PARM_2
	mov	a,#0x0a
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl,r7
	mov	dph,r6
	lcall	__divsint
	mov	r6,dpl
;	main.c:75: set = set * TEMP_STEP;
	mov	dptr,#_set
	mov	a,r6
	mov	b,#0x0a
	mul	ab
	movx	@dptr,a
;	main.c:77: oledClear();
	lcall	_oledClear
;	main.c:78: while (1) {
00127$:
;	main.c:79: if (KEY_L == 0) {
	jb	_P32,00111$
;	main.c:80: while (KEY_L == 0);
00102$:
	jnb	_P32,00102$
;	main.c:81: set = set < TEMP_STEP ? 0 : set - TEMP_STEP;
	mov	dptr,#_set
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x0a,00211$
00211$:
	jnc	00134$
	mov	r5,#0x00
	mov	r6,#0x00
	sjmp	00135$
00134$:
	mov	a,r7
	add	a,#0xf6
	mov	r7,a
	mov	r5,a
	rlc	a
	subb	a,acc
	mov	r6,a
00135$:
	mov	dptr,#_set
	mov	a,r5
	movx	@dptr,a
	sjmp	00112$
00111$:
;	main.c:82: } else if (KEY_R == 0) {
	jb	_P34,00112$
;	main.c:83: while (KEY_R == 0);
00105$:
	jnb	_P34,00105$
;	main.c:84: set = set > (TEMP_MAX - TEMP_STEP) ? TEMP_MAX : set + TEMP_STEP;
	mov	dptr,#_set
	movx	a,@dptr
	mov  r7,a
	add	a,#0xff - 0x8c
	jnc	00136$
	mov	r5,#0x96
	mov	r6,#0x00
	sjmp	00137$
00136$:
	mov	a,#0x0a
	add	a,r7
	mov	r7,a
	mov	r5,a
	rlc	a
	subb	a,acc
	mov	r6,a
00137$:
	mov	dptr,#_set
	mov	a,r5
	movx	@dptr,a
00112$:
;	main.c:87: tempFetch();
	lcall	_tempFetch
;	main.c:88: now = tempGet();
	lcall	_tempGet
	mov	r7,dpl
	mov	dptr,#_now
	mov	a,r7
	movx	@dptr,a
;	main.c:90: if (run = set > now) {
	mov	dptr,#_set
	movx	a,@dptr
	mov	r6,a
	clr	c
	mov	a,r7
	subb	a,r6
	clr	a
	rlc	a
	mov	r5,a
	mov	dptr,#_run
	movx	@dptr,a
	mov	a,r5
	jnz	00216$
	ljmp	00114$
00216$:
;	main.c:91: float v = set - now;
	clr	a
	mov	r5,a
	mov	r4,a
	mov	a,r6
	clr	c
	subb	a,r7
	mov	r6,a
	mov	a,r5
	subb	a,r4
	mov	r5,a
	mov	dpl,r6
	mov	dph,r5
	lcall	___sint2fs
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
;	main.c:92: v *= (0.2f + k);    // 比例系数
	mov	dptr,#_k
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	mov	a,#0xcd
	push	acc
	dec	a
	push	acc
	mov	a,#0x4c
	push	acc
	mov	a,#0x3e
	push	acc
	mov	dpl,r0
	mov	dph,r1
	mov	b,r2
	mov	a,r3
	lcall	___fsadd
	mov	r0,dpl
	mov	r1,dph
	mov	r2,b
	mov	r3,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	push	ar0
	push	ar1
	push	ar2
	push	ar3
;	main.c:93: v *= 100;           // 转换到占空比
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	lcall	___fsmul
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	push	ar4
	push	ar5
	push	ar6
	push	ar7
;	main.c:94: v = v > 100 ? 100 : v;
	mov	dptr,#0x0000
	mov	b,#0xc8
	mov	a,#0x42
	lcall	___fsmul
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar4
	push	ar5
	push	ar6
	push	ar7
	mov	dptr,#0x0000
	mov	b,#0xc8
	mov	a,#0x42
	lcall	___fslt
	mov	r3,dpl
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	mov	a,r3
	jz	00138$
	mov	r0,#0x00
	mov	r1,#0x00
	mov	r2,#0xc8
	mov	r3,#0x42
	sjmp	00139$
00138$:
	mov	ar0,r4
	mov	ar1,r5
	mov	ar2,r6
	mov	ar3,r7
00139$:
;	main.c:95: pwm3Duty((int) v);
	mov	dpl,r0
	mov	dph,r1
	mov	b,r2
	mov	a,r3
	lcall	___fs2sint
	lcall	_pwm3Duty
	sjmp	00115$
00114$:
;	main.c:97: pwm3Duty(0);
	mov	dpl,#0x00
	lcall	_pwm3Duty
00115$:
;	main.c:99: if (run && (set - now < 5)) {
	mov	dptr,#_run
	movx	a,@dptr
	jnz	00218$
	ljmp	00120$
00218$:
	mov	dptr,#_set
	movx	a,@dptr
	mov	r6,a
	mov	r7,#0x00
	mov	dptr,#_now
	movx	a,@dptr
	mov	r4,a
	mov	r5,#0x00
	mov	a,r6
	clr	c
	subb	a,r4
	mov	r2,a
	mov	a,r7
	subb	a,r5
	mov	r3,a
	clr	c
	mov	a,r2
	subb	a,#0x05
	mov	a,r3
	xrl	a,#0x80
	subb	a,#0x80
	jc	00219$
	ljmp	00120$
00219$:
;	main.c:100: if (wcounter < 200)
	mov	dptr,#_wcounter
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	ar0,r2
	mov	ar1,r3
	clr	c
	mov	a,r0
	subb	a,#0xc8
	mov	a,r1
	subb	a,#0x00
	jnc	00117$
;	main.c:101: wcounter++;
	mov	dptr,#_wcounter
	mov	a,#0x01
	add	a,r2
	movx	@dptr,a
	clr	a
	addc	a,r3
	inc	dptr
	movx	@dptr,a
	ljmp	00121$
00117$:
;	main.c:103: wcounter = 0;
	mov	dptr,#_wcounter
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	main.c:105: sum += (set - now);
	mov	a,r6
	clr	c
	subb	a,r4
	mov	r6,a
	mov	a,r7
	subb	a,r5
	mov	r7,a
	mov	dptr,#_sum
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	dptr,#_sum
	mov	a,r6
	add	a,r4
	movx	@dptr,a
	mov	a,r7
	addc	a,r5
	inc	dptr
	movx	@dptr,a
;	main.c:106: k = sum / 100.0f;
	mov	dptr,#_sum
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r6
	mov	dph,r7
	lcall	___sint2fs
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	clr	a
	push	acc
	push	acc
	mov	a,#0xc8
	push	acc
	mov	a,#0x42
	push	acc
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	lcall	___fsdiv
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	dptr,#_k
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	sjmp	00121$
00120$:
;	main.c:109: wcounter = 0;
	mov	dptr,#_wcounter
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	main.c:110: sum = 0;
	mov	dptr,#_sum
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	main.c:111: k = 0;
	mov	dptr,#_k
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
00121$:
;	main.c:114: if (counter < 10)
	mov	dptr,#_counter
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x0a,00221$
00221$:
	jnc	00124$
;	main.c:115: counter++;
	mov	dptr,#_counter
	mov	a,r7
	inc	a
	movx	@dptr,a
	ljmp	00125$
00124$:
;	main.c:117: counter = 0;
	mov	dptr,#_counter
	clr	a
	movx	@dptr,a
;	main.c:119: sprintf(str, "%d\n", now);
	mov	dptr,#_now
	movx	a,@dptr
	mov	r7,a
	mov	r6,#0x00
	push	ar7
	push	ar6
	mov	a,#___str_2
	push	acc
	mov	a,#(___str_2 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	mov	a,#_str
	push	acc
	mov	a,#(_str >> 8)
	push	acc
	clr	a
	push	acc
	lcall	_sprintf
	mov	a,sp
	add	a,#0xf8
	mov	sp,a
;	main.c:120: uart1Write(str);
	mov	dptr,#_str
	mov	b,#0x00
	lcall	_uart1Write
;	main.c:122: oledPrintfc(0, 3, 1, "%3d%%%3d%%", now, set);
	mov	dptr,#_set
	movx	a,@dptr
	mov	r7,a
	mov	r6,#0x00
	mov	dptr,#_now
	movx	a,@dptr
	mov	r5,a
	mov	r4,#0x00
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	mov	a,#___str_3
	push	acc
	mov	a,#(___str_3 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	rl	a
	push	acc
	mov	a,#0x03
	push	acc
	clr	a
	push	acc
	lcall	_oledPrintfc
	mov	a,sp
	add	a,#0xf6
	mov	sp,a
;	main.c:123: oledPrint(40, 3, 1, 1, "NOW");
	mov	dptr,#_oledPrint_PARM_2
	mov	a,#0x03
	movx	@dptr,a
	mov	dptr,#_oledPrint_PARM_3
	mov	a,#0x01
	movx	@dptr,a
	mov	dptr,#_oledPrint_PARM_4
	movx	@dptr,a
	mov	dptr,#_oledPrint_PARM_5
	mov	a,#___str_4
	movx	@dptr,a
	mov	a,#(___str_4 >> 8)
	inc	dptr
	movx	@dptr,a
	mov	a,#0x80
	inc	dptr
	movx	@dptr,a
	mov	dpl,#0x28
	lcall	_oledPrint
;	main.c:124: oledPrint(104, 3, 1, 1, "SET");
	mov	dptr,#_oledPrint_PARM_2
	mov	a,#0x03
	movx	@dptr,a
	mov	dptr,#_oledPrint_PARM_3
	mov	a,#0x01
	movx	@dptr,a
	mov	dptr,#_oledPrint_PARM_4
	movx	@dptr,a
	mov	dptr,#_oledPrint_PARM_5
	mov	a,#___str_5
	movx	@dptr,a
	mov	a,#(___str_5 >> 8)
	inc	dptr
	movx	@dptr,a
	mov	a,#0x80
	inc	dptr
	movx	@dptr,a
	mov	dpl,#0x68
	lcall	_oledPrint
;	main.c:125: oledPrint(0, 3, 0, 1, run ? "H" : "-");
	mov	dptr,#_run
	movx	a,@dptr
	jz	00140$
	mov	r6,#___str_6
	mov	r7,#(___str_6 >> 8)
	sjmp	00141$
00140$:
	mov	r6,#___str_7
	mov	r7,#(___str_7 >> 8)
00141$:
	mov	r5,#0x80
	mov	dptr,#_oledPrint_PARM_2
	mov	a,#0x03
	movx	@dptr,a
	mov	dptr,#_oledPrint_PARM_3
	clr	a
	movx	@dptr,a
	mov	dptr,#_oledPrint_PARM_4
	inc	a
	movx	@dptr,a
	mov	dptr,#_oledPrint_PARM_5
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	dpl,#0x00
	lcall	_oledPrint
00125$:
;	main.c:128: delay(10);
	mov	dptr,#0x000a
	lcall	_delay
;	main.c:130: }
	ljmp	00127$
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area CONST   (CODE)
___str_0:
	.ascii "NSHET"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_1:
	.ascii "NSHET"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_2:
	.ascii "%d"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_3:
	.ascii "%3d%%%3d%%"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_4:
	.ascii "NOW"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_5:
	.ascii "SET"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_6:
	.ascii "H"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_7:
	.ascii "-"
	.db 0x00
	.area CSEG    (CODE)
	.area XINIT   (CODE)
__xinit__tbuf:
	.db #0x00	; 0
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
__xinit__counter:
	.db #0x00	; 0
__xinit__run:
	.db #0x00	;  0
__xinit__sum:
	.byte #0x00, #0x00	;  0
__xinit__k:
	.byte #0x00, #0x00, #0x00, #0x00	;  0.000000e+000
__xinit__wcounter:
	.byte #0x00, #0x00	; 0
	.area CABS    (ABS,CODE)
