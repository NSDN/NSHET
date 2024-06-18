;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.0.0 #11528 (MINGW64)
;--------------------------------------------------------
	.module oled
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _pos
	.globl _dat
	.globl _cmd
	.globl _iic_init
	.globl ___oled_rd
	.globl ___oled_wr
	.globl ___oled_nak
	.globl ___oled_ack
	.globl ___oled_stop
	.globl ___oled_start
	.globl _free
	.globl _malloc
	.globl _strlen
	.globl _vsprintf
	.globl _fontSize
	.globl _fontGet
	.globl _delay_us
	.globl _delay
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
	.globl _oledPrint_PARM_5
	.globl _oledPrint_PARM_4
	.globl _oledPrint_PARM_3
	.globl _oledPrint_PARM_2
	.globl _oledChar_PARM_5
	.globl _oledChar_PARM_4
	.globl _oledChar_PARM_3
	.globl _oledChar_PARM_2
	.globl _oledSize_PARM_2
	.globl _pos_PARM_2
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
	.globl _oledInit
	.globl _oledBright
	.globl _oledClear
	.globl _oledSwitch
	.globl _oledSize
	.globl _oledChar
	.globl _oledPrint
	.globl _oledPrintf
	.globl _oledPrintfc
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
_oledChar_sloc0_1_0:
	.ds 1
_oledChar_sloc1_1_0:
	.ds 2
_oledChar_sloc2_1_0:
	.ds 1
_oledChar_sloc3_1_0:
	.ds 2
_oledChar_sloc4_1_0:
	.ds 1
_oledChar_sloc5_1_0:
	.ds 1
_oledChar_sloc6_1_0:
	.ds 1
_oledPrint_sloc0_1_0:
	.ds 2
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
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
___oled_wr_data_65536_99:
	.ds 1
___oled_rd_data_65536_103:
	.ds 1
___oled_rd_tmp_196609_106:
	.ds 1
_buffer:
	.ds 16
_cmd_cmd_65536_108:
	.ds 1
_dat_data_65536_110:
	.ds 1
_pos_PARM_2:
	.ds 1
_pos_x_65536_112:
	.ds 1
_oledInit_dev_65536_114:
	.ds 1
_oledBright_bright_65536_116:
	.ds 1
_oledSwitch_state_65536_122:
	.ds 1
_oledSize_PARM_2:
	.ds 3
_oledSize_w_65536_126:
	.ds 3
_oledChar_PARM_2:
	.ds 1
_oledChar_PARM_3:
	.ds 1
_oledChar_PARM_4:
	.ds 1
_oledChar_PARM_5:
	.ds 1
_oledChar_x_65536_130:
	.ds 1
_oledChar_f_w_65536_131:
	.ds 1
_oledChar_f_h_65536_131:
	.ds 1
_oledChar_W_65536_131:
	.ds 1
_oledChar_H_65536_131:
	.ds 1
_oledPrint_PARM_2:
	.ds 1
_oledPrint_PARM_3:
	.ds 1
_oledPrint_PARM_4:
	.ds 1
_oledPrint_PARM_5:
	.ds 3
_oledPrint_x_65536_138:
	.ds 1
_oledPrint_f_w_65536_139:
	.ds 1
_oledPrint_f_h_65536_139:
	.ds 1
_oledPrint_W_65536_139:
	.ds 1
_oledPrint_H_65536_139:
	.ds 1
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
_addr:
	.ds 1
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
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function '__oled_start'
;------------------------------------------------------------
;	E:\Works\NSHET\oled.c:13: void __oled_start() {
;	-----------------------------------------
;	 function __oled_start
;	-----------------------------------------
___oled_start:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	E:\Works\NSHET\oled.c:14: OLED_DAT_SET();
;	assignBit
	setb	_P03
;	E:\Works\NSHET\oled.c:15: OLED_CLK_SET(); OLED_DELAY();
;	assignBit
	setb	_P02
	mov	dptr,#0x0001
	lcall	_delay_us
;	E:\Works\NSHET\oled.c:16: OLED_DAT_CLR(); OLED_DELAY();
;	assignBit
	clr	_P03
	mov	dptr,#0x0001
;	E:\Works\NSHET\oled.c:17: }
	ljmp	_delay_us
;------------------------------------------------------------
;Allocation info for local variables in function '__oled_stop'
;------------------------------------------------------------
;	E:\Works\NSHET\oled.c:19: void __oled_stop() {
;	-----------------------------------------
;	 function __oled_stop
;	-----------------------------------------
___oled_stop:
;	E:\Works\NSHET\oled.c:20: OLED_DAT_CLR();
;	assignBit
	clr	_P03
;	E:\Works\NSHET\oled.c:21: OLED_CLK_SET(); OLED_DELAY();
;	assignBit
	setb	_P02
	mov	dptr,#0x0001
	lcall	_delay_us
;	E:\Works\NSHET\oled.c:22: OLED_DAT_SET(); OLED_DELAY();
;	assignBit
	setb	_P03
	mov	dptr,#0x0001
;	E:\Works\NSHET\oled.c:23: }
	ljmp	_delay_us
;------------------------------------------------------------
;Allocation info for local variables in function '__oled_ack'
;------------------------------------------------------------
;i                         Allocated with name '___oled_ack_i_131072_96'
;------------------------------------------------------------
;	E:\Works\NSHET\oled.c:25: void __oled_ack() {
;	-----------------------------------------
;	 function __oled_ack
;	-----------------------------------------
___oled_ack:
;	E:\Works\NSHET\oled.c:26: OLED_CLK_CLR();
;	assignBit
	clr	_P02
;	E:\Works\NSHET\oled.c:27: OLED_DAT_SET();
;	assignBit
	setb	_P03
;	E:\Works\NSHET\oled.c:28: OLED_CLK_SET(); OLED_DELAY();
;	assignBit
	setb	_P02
	mov	dptr,#0x0001
	lcall	_delay_us
;	E:\Works\NSHET\oled.c:29: for (uint8_t i = 0; i < 0xFF; i++) {
	mov	r7,#0x00
00105$:
	cjne	r7,#0xff,00122$
00122$:
	jnc	00103$
;	E:\Works\NSHET\oled.c:30: if (OLED_DAT_GET() == 0)
	jnb	_P03,00103$
;	E:\Works\NSHET\oled.c:32: OLED_DELAY();
	mov	dptr,#0x0001
	push	ar7
	lcall	_delay_us
	pop	ar7
;	E:\Works\NSHET\oled.c:29: for (uint8_t i = 0; i < 0xFF; i++) {
	inc	r7
	sjmp	00105$
00103$:
;	E:\Works\NSHET\oled.c:34: OLED_CLK_CLR(); OLED_DELAY();
;	assignBit
	clr	_P02
	mov	dptr,#0x0001
;	E:\Works\NSHET\oled.c:35: }
	ljmp	_delay_us
;------------------------------------------------------------
;Allocation info for local variables in function '__oled_nak'
;------------------------------------------------------------
;	E:\Works\NSHET\oled.c:37: void __oled_nak() {
;	-----------------------------------------
;	 function __oled_nak
;	-----------------------------------------
___oled_nak:
;	E:\Works\NSHET\oled.c:38: OLED_CLK_CLR();
;	assignBit
	clr	_P02
;	E:\Works\NSHET\oled.c:39: OLED_DAT_SET();
;	assignBit
	setb	_P03
;	E:\Works\NSHET\oled.c:40: OLED_CLK_SET(); OLED_DELAY();
;	assignBit
	setb	_P02
	mov	dptr,#0x0001
	lcall	_delay_us
;	E:\Works\NSHET\oled.c:41: OLED_CLK_CLR(); OLED_DELAY();
;	assignBit
	clr	_P02
	mov	dptr,#0x0001
;	E:\Works\NSHET\oled.c:42: }
	ljmp	_delay_us
;------------------------------------------------------------
;Allocation info for local variables in function '__oled_wr'
;------------------------------------------------------------
;data                      Allocated with name '___oled_wr_data_65536_99'
;i                         Allocated with name '___oled_wr_i_131072_101'
;------------------------------------------------------------
;	E:\Works\NSHET\oled.c:44: void __oled_wr(uint8_t data) {
;	-----------------------------------------
;	 function __oled_wr
;	-----------------------------------------
___oled_wr:
	mov	a,dpl
	mov	dptr,#___oled_wr_data_65536_99
	movx	@dptr,a
;	E:\Works\NSHET\oled.c:45: for (uint8_t i = 0; i < 8; i++) {
	movx	a,@dptr
	mov	r7,a
	mov	r6,#0x00
00106$:
	cjne	r6,#0x08,00123$
00123$:
	jnc	00104$
;	E:\Works\NSHET\oled.c:46: OLED_CLK_CLR(); OLED_DELAY();
;	assignBit
	clr	_P02
	mov	dptr,#0x0001
	push	ar7
	push	ar6
	lcall	_delay_us
	pop	ar6
	pop	ar7
;	E:\Works\NSHET\oled.c:47: if (data & (1 << (7 - i)))
	mov	a,#0x07
	clr	c
	subb	a,r6
	mov	r5,a
	mov	b,r5
	inc	b
	mov	r5,#0x01
	mov	r4,#0x00
	sjmp	00126$
00125$:
	mov	a,r5
	add	a,r5
	mov	r5,a
	mov	a,r4
	rlc	a
	mov	r4,a
00126$:
	djnz	b,00125$
	mov	ar2,r7
	mov	r3,#0x00
	mov	a,r2
	anl	ar5,a
	mov	a,r3
	anl	ar4,a
	mov	a,r5
	orl	a,r4
	jz	00102$
;	E:\Works\NSHET\oled.c:48: OLED_DAT_SET();
;	assignBit
	setb	_P03
	sjmp	00103$
00102$:
;	E:\Works\NSHET\oled.c:50: OLED_DAT_CLR();
;	assignBit
	clr	_P03
00103$:
;	E:\Works\NSHET\oled.c:51: OLED_DELAY();
	mov	dptr,#0x0001
	push	ar7
	push	ar6
	lcall	_delay_us
;	E:\Works\NSHET\oled.c:52: OLED_CLK_SET(); OLED_DELAY();
;	assignBit
	setb	_P02
	mov	dptr,#0x0001
	lcall	_delay_us
	pop	ar6
	pop	ar7
;	E:\Works\NSHET\oled.c:45: for (uint8_t i = 0; i < 8; i++) {
	inc	r6
	sjmp	00106$
00104$:
;	E:\Works\NSHET\oled.c:54: OLED_CLK_CLR();
;	assignBit
	clr	_P02
;	E:\Works\NSHET\oled.c:55: OLED_DAT_SET();
;	assignBit
	setb	_P03
;	E:\Works\NSHET\oled.c:56: OLED_DELAY();
	mov	dptr,#0x0001
;	E:\Works\NSHET\oled.c:57: }
	ljmp	_delay_us
;------------------------------------------------------------
;Allocation info for local variables in function '__oled_rd'
;------------------------------------------------------------
;data                      Allocated with name '___oled_rd_data_65536_103'
;i                         Allocated with name '___oled_rd_i_131072_104'
;tmp                       Allocated with name '___oled_rd_tmp_196609_106'
;------------------------------------------------------------
;	E:\Works\NSHET\oled.c:59: uint8_t __oled_rd() {
;	-----------------------------------------
;	 function __oled_rd
;	-----------------------------------------
___oled_rd:
;	E:\Works\NSHET\oled.c:60: uint8_t data = 0;
	mov	dptr,#___oled_rd_data_65536_103
	clr	a
	movx	@dptr,a
;	E:\Works\NSHET\oled.c:61: OLED_DAT_SET();
;	assignBit
	setb	_P03
;	E:\Works\NSHET\oled.c:62: OLED_CLK_CLR(); OLED_DELAY();
;	assignBit
	clr	_P02
	mov	dptr,#0x0001
	lcall	_delay_us
;	E:\Works\NSHET\oled.c:63: for (uint8_t i = 0; i < 8; i++) {
	mov	r7,#0x00
00105$:
	cjne	r7,#0x08,00122$
00122$:
	jnc	00103$
;	E:\Works\NSHET\oled.c:64: OLED_CLK_SET(); OLED_DELAY();
;	assignBit
	setb	_P02
	mov	dptr,#0x0001
	push	ar7
	lcall	_delay_us
	pop	ar7
;	E:\Works\NSHET\oled.c:65: uint8_t tmp = 0;
	mov	dptr,#___oled_rd_tmp_196609_106
	clr	a
	movx	@dptr,a
;	E:\Works\NSHET\oled.c:66: if (OLED_DAT_GET() != 0)
	jnb	_P03,00102$
;	E:\Works\NSHET\oled.c:67: tmp = 1 << (7 - i);
	mov	ar6,r7
	mov	a,#0x07
	clr	c
	subb	a,r6
	mov	b,a
	inc	b
	mov	a,#0x01
	sjmp	00127$
00125$:
	add	a,acc
00127$:
	djnz	b,00125$
	mov	dptr,#___oled_rd_tmp_196609_106
	movx	@dptr,a
00102$:
;	E:\Works\NSHET\oled.c:68: data |= tmp;
	mov	dptr,#___oled_rd_tmp_196609_106
	movx	a,@dptr
	mov	r6,a
	mov	dptr,#___oled_rd_data_65536_103
	movx	a,@dptr
	orl	a,r6
	movx	@dptr,a
;	E:\Works\NSHET\oled.c:69: OLED_DELAY();
	mov	dptr,#0x0001
	push	ar7
	lcall	_delay_us
;	E:\Works\NSHET\oled.c:70: OLED_CLK_CLR(); OLED_DELAY();
;	assignBit
	clr	_P02
	mov	dptr,#0x0001
	lcall	_delay_us
	pop	ar7
;	E:\Works\NSHET\oled.c:63: for (uint8_t i = 0; i < 8; i++) {
	inc	r7
	sjmp	00105$
00103$:
;	E:\Works\NSHET\oled.c:72: return data;
	mov	dptr,#___oled_rd_data_65536_103
	movx	a,@dptr
;	E:\Works\NSHET\oled.c:73: }
	mov	dpl,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'iic_init'
;------------------------------------------------------------
;	E:\Works\NSHET\oled.c:75: void iic_init() {
;	-----------------------------------------
;	 function iic_init
;	-----------------------------------------
_iic_init:
;	E:\Works\NSHET\oled.c:80: P0_DIR |= 0x0C;
	orl	_P0_DIR,#0x0c
;	E:\Works\NSHET\oled.c:81: P0_PU |= 0x0C;
	orl	_P0_PU,#0x0c
;	E:\Works\NSHET\oled.c:82: OLED_CLK_SET();
;	assignBit
	setb	_P02
;	E:\Works\NSHET\oled.c:83: OLED_DAT_SET();
;	assignBit
	setb	_P03
;	E:\Works\NSHET\oled.c:84: delay(10);
	mov	dptr,#0x000a
;	E:\Works\NSHET\oled.c:85: }
	ljmp	_delay
;------------------------------------------------------------
;Allocation info for local variables in function 'cmd'
;------------------------------------------------------------
;cmd                       Allocated with name '_cmd_cmd_65536_108'
;------------------------------------------------------------
;	E:\Works\NSHET\oled.c:90: void cmd(uint8_t cmd) {
;	-----------------------------------------
;	 function cmd
;	-----------------------------------------
_cmd:
	mov	a,dpl
	mov	dptr,#_cmd_cmd_65536_108
	movx	@dptr,a
;	E:\Works\NSHET\oled.c:91: __oled_start();
	lcall	___oled_start
;	E:\Works\NSHET\oled.c:92: __oled_wr(addr);
	mov	dptr,#_addr
	movx	a,@dptr
	mov	dpl,a
	lcall	___oled_wr
;	E:\Works\NSHET\oled.c:93: __oled_ack();
	lcall	___oled_ack
;	E:\Works\NSHET\oled.c:94: __oled_wr(0x00);
	mov	dpl,#0x00
	lcall	___oled_wr
;	E:\Works\NSHET\oled.c:95: __oled_ack();
	lcall	___oled_ack
;	E:\Works\NSHET\oled.c:96: __oled_wr(cmd);
	mov	dptr,#_cmd_cmd_65536_108
	movx	a,@dptr
	mov	dpl,a
	lcall	___oled_wr
;	E:\Works\NSHET\oled.c:97: __oled_ack();
	lcall	___oled_ack
;	E:\Works\NSHET\oled.c:98: __oled_stop();
;	E:\Works\NSHET\oled.c:99: }
	ljmp	___oled_stop
;------------------------------------------------------------
;Allocation info for local variables in function 'dat'
;------------------------------------------------------------
;data                      Allocated with name '_dat_data_65536_110'
;------------------------------------------------------------
;	E:\Works\NSHET\oled.c:101: void dat(uint8_t data) {
;	-----------------------------------------
;	 function dat
;	-----------------------------------------
_dat:
	mov	a,dpl
	mov	dptr,#_dat_data_65536_110
	movx	@dptr,a
;	E:\Works\NSHET\oled.c:102: __oled_start();
	lcall	___oled_start
;	E:\Works\NSHET\oled.c:103: __oled_wr(addr);
	mov	dptr,#_addr
	movx	a,@dptr
	mov	dpl,a
	lcall	___oled_wr
;	E:\Works\NSHET\oled.c:104: __oled_ack();
	lcall	___oled_ack
;	E:\Works\NSHET\oled.c:105: __oled_wr(0x40);
	mov	dpl,#0x40
	lcall	___oled_wr
;	E:\Works\NSHET\oled.c:106: __oled_ack();
	lcall	___oled_ack
;	E:\Works\NSHET\oled.c:107: __oled_wr(data);
	mov	dptr,#_dat_data_65536_110
	movx	a,@dptr
	mov	dpl,a
	lcall	___oled_wr
;	E:\Works\NSHET\oled.c:108: __oled_ack();
	lcall	___oled_ack
;	E:\Works\NSHET\oled.c:109: __oled_stop();
;	E:\Works\NSHET\oled.c:110: }
	ljmp	___oled_stop
;------------------------------------------------------------
;Allocation info for local variables in function 'pos'
;------------------------------------------------------------
;y                         Allocated with name '_pos_PARM_2'
;x                         Allocated with name '_pos_x_65536_112'
;------------------------------------------------------------
;	E:\Works\NSHET\oled.c:112: void pos(uint8_t x, uint8_t y) {
;	-----------------------------------------
;	 function pos
;	-----------------------------------------
_pos:
	mov	a,dpl
	mov	dptr,#_pos_x_65536_112
	movx	@dptr,a
;	E:\Works\NSHET\oled.c:113: cmd(0xb0 + y);
	mov	dptr,#_pos_PARM_2
	movx	a,@dptr
	add	a,#0xb0
	mov	dpl,a
	lcall	_cmd
;	E:\Works\NSHET\oled.c:114: cmd(((x & 0xf0) >> 4) | 0x10);
	mov	dptr,#_pos_x_65536_112
	movx	a,@dptr
	mov	r7,a
	mov	r5,a
	anl	ar5,#0xf0
	clr	a
	swap	a
	xch	a,r5
	swap	a
	anl	a,#0x0f
	xrl	a,r5
	xch	a,r5
	anl	a,#0x0f
	xch	a,r5
	xrl	a,r5
	xch	a,r5
	jnb	acc.3,00103$
	orl	a,#0xf0
00103$:
	orl	ar5,#0x10
	mov	dpl,r5
	push	ar7
	lcall	_cmd
	pop	ar7
;	E:\Works\NSHET\oled.c:115: cmd(x & 0x0f);
	anl	ar7,#0x0f
	mov	dpl,r7
;	E:\Works\NSHET\oled.c:116: }
	ljmp	_cmd
;------------------------------------------------------------
;Allocation info for local variables in function 'oledInit'
;------------------------------------------------------------
;dev                       Allocated with name '_oledInit_dev_65536_114'
;------------------------------------------------------------
;	E:\Works\NSHET\oled.c:118: void oledInit(uint8_t dev) {
;	-----------------------------------------
;	 function oledInit
;	-----------------------------------------
_oledInit:
	mov	a,dpl
	mov	dptr,#_oledInit_dev_65536_114
	movx	@dptr,a
;	E:\Works\NSHET\oled.c:119: iic_init();
	lcall	_iic_init
;	E:\Works\NSHET\oled.c:120: addr = dev;
	mov	dptr,#_oledInit_dev_65536_114
	movx	a,@dptr
	mov	dptr,#_addr
	movx	@dptr,a
;	E:\Works\NSHET\oled.c:122: cmd(0xAE);//--display off
	mov	dpl,#0xae
	lcall	_cmd
;	E:\Works\NSHET\oled.c:123: cmd(0x00);//---set low column address
	mov	dpl,#0x00
	lcall	_cmd
;	E:\Works\NSHET\oled.c:124: cmd(0x10);//---set high column address
	mov	dpl,#0x10
	lcall	_cmd
;	E:\Works\NSHET\oled.c:125: cmd(0x40);//--set start line address
	mov	dpl,#0x40
	lcall	_cmd
;	E:\Works\NSHET\oled.c:126: cmd(0xB0);//--set page address
	mov	dpl,#0xb0
	lcall	_cmd
;	E:\Works\NSHET\oled.c:127: cmd(0x81); // contract control
	mov	dpl,#0x81
	lcall	_cmd
;	E:\Works\NSHET\oled.c:128: cmd(0xFF);//--128
	mov	dpl,#0xff
	lcall	_cmd
;	E:\Works\NSHET\oled.c:129: cmd(0xA1);//set segment remap
	mov	dpl,#0xa1
	lcall	_cmd
;	E:\Works\NSHET\oled.c:130: cmd(0xA6);//--normal / reverse
	mov	dpl,#0xa6
	lcall	_cmd
;	E:\Works\NSHET\oled.c:132: cmd(0xA8);//--set multiplex ratio(1 to 64)
	mov	dpl,#0xa8
	lcall	_cmd
;	E:\Works\NSHET\oled.c:133: if (addr == OLED_SCREEN_BIG)
	mov	dptr,#_addr
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x7a,00102$
;	E:\Works\NSHET\oled.c:134: cmd(0x3F);//--1/32 duty
	mov	dpl,#0x3f
	lcall	_cmd
	sjmp	00103$
00102$:
;	E:\Works\NSHET\oled.c:135: else cmd(0x1F);
	mov	dpl,#0x1f
	lcall	_cmd
00103$:
;	E:\Works\NSHET\oled.c:137: cmd(0xC8);//Com scan direction
	mov	dpl,#0xc8
	lcall	_cmd
;	E:\Works\NSHET\oled.c:138: cmd(0xD3);//-set display offset
	mov	dpl,#0xd3
	lcall	_cmd
;	E:\Works\NSHET\oled.c:139: cmd(0x00);//
	mov	dpl,#0x00
	lcall	_cmd
;	E:\Works\NSHET\oled.c:141: cmd(0xD5);//set osc division
	mov	dpl,#0xd5
	lcall	_cmd
;	E:\Works\NSHET\oled.c:142: cmd(0x80);//
	mov	dpl,#0x80
	lcall	_cmd
;	E:\Works\NSHET\oled.c:144: cmd(0xD8);//set area color mode off
	mov	dpl,#0xd8
	lcall	_cmd
;	E:\Works\NSHET\oled.c:145: cmd(0x05);//
	mov	dpl,#0x05
	lcall	_cmd
;	E:\Works\NSHET\oled.c:147: cmd(0xD9);//Set Pre-Charge Period
	mov	dpl,#0xd9
	lcall	_cmd
;	E:\Works\NSHET\oled.c:148: cmd(0xF1);//
	mov	dpl,#0xf1
	lcall	_cmd
;	E:\Works\NSHET\oled.c:150: cmd(0xDA);//set com pin configuartion
	mov	dpl,#0xda
	lcall	_cmd
;	E:\Works\NSHET\oled.c:151: if (addr == OLED_SCREEN_BIG)
	mov	dptr,#_addr
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x7a,00105$
;	E:\Works\NSHET\oled.c:152: cmd(0x12);
	mov	dpl,#0x12
	lcall	_cmd
	sjmp	00106$
00105$:
;	E:\Works\NSHET\oled.c:153: else cmd(0x02);
	mov	dpl,#0x02
	lcall	_cmd
00106$:
;	E:\Works\NSHET\oled.c:155: cmd(0xDB);//set Vcomh
	mov	dpl,#0xdb
	lcall	_cmd
;	E:\Works\NSHET\oled.c:156: cmd(0x30);//
	mov	dpl,#0x30
	lcall	_cmd
;	E:\Works\NSHET\oled.c:158: cmd(0x8D);//set charge pump enable
	mov	dpl,#0x8d
	lcall	_cmd
;	E:\Works\NSHET\oled.c:159: cmd(0x14);//
	mov	dpl,#0x14
	lcall	_cmd
;	E:\Works\NSHET\oled.c:161: cmd(0xAF);//--turn on oled panel
	mov	dpl,#0xaf
	lcall	_cmd
;	E:\Works\NSHET\oled.c:163: cmd(0x21); //Set column address range
	mov	dpl,#0x21
	lcall	_cmd
;	E:\Works\NSHET\oled.c:164: cmd(0x00);
	mov	dpl,#0x00
	lcall	_cmd
;	E:\Works\NSHET\oled.c:165: cmd(0x7F); //127
	mov	dpl,#0x7f
	lcall	_cmd
;	E:\Works\NSHET\oled.c:167: cmd(0x22); //Set page address range
	mov	dpl,#0x22
	lcall	_cmd
;	E:\Works\NSHET\oled.c:168: cmd(0x00);
	mov	dpl,#0x00
	lcall	_cmd
;	E:\Works\NSHET\oled.c:169: if (addr == OLED_SCREEN_BIG)
	mov	dptr,#_addr
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x7a,00108$
;	E:\Works\NSHET\oled.c:170: cmd(0x07); //7
	mov	dpl,#0x07
	lcall	_cmd
	sjmp	00109$
00108$:
;	E:\Works\NSHET\oled.c:171: else cmd(0x03); //3
	mov	dpl,#0x03
	lcall	_cmd
00109$:
;	E:\Works\NSHET\oled.c:173: oledClear();
;	E:\Works\NSHET\oled.c:174: }
	ljmp	_oledClear
;------------------------------------------------------------
;Allocation info for local variables in function 'oledBright'
;------------------------------------------------------------
;bright                    Allocated with name '_oledBright_bright_65536_116'
;------------------------------------------------------------
;	E:\Works\NSHET\oled.c:176: void oledBright(uint8_t bright) {
;	-----------------------------------------
;	 function oledBright
;	-----------------------------------------
_oledBright:
	mov	a,dpl
	mov	dptr,#_oledBright_bright_65536_116
	movx	@dptr,a
;	E:\Works\NSHET\oled.c:177: cmd(0x81);
	mov	dpl,#0x81
	lcall	_cmd
;	E:\Works\NSHET\oled.c:178: cmd(bright & 0x7F);
	mov	dptr,#_oledBright_bright_65536_116
	movx	a,@dptr
	anl	a,#0x7f
	mov	dpl,a
;	E:\Works\NSHET\oled.c:179: }
	ljmp	_cmd
;------------------------------------------------------------
;Allocation info for local variables in function 'oledClear'
;------------------------------------------------------------
;max                       Allocated with name '_oledClear_max_65536_118'
;m                         Allocated with name '_oledClear_m_131072_119'
;n                         Allocated with name '_oledClear_n_262144_121'
;------------------------------------------------------------
;	E:\Works\NSHET\oled.c:181: void oledClear() {
;	-----------------------------------------
;	 function oledClear
;	-----------------------------------------
_oledClear:
;	E:\Works\NSHET\oled.c:182: uint8_t max = (addr == OLED_SCREEN_BIG) ? 8 : 4;
	mov	dptr,#_addr
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x7a,00111$
	mov	r6,#0x08
	mov	r7,#0x00
	sjmp	00112$
00111$:
	mov	r6,#0x04
	mov	r7,#0x00
00112$:
;	E:\Works\NSHET\oled.c:183: for (uint8_t m = 0; m < max; m++) {
	mov	r7,#0x00
00107$:
	clr	c
	mov	a,r7
	subb	a,r6
	jnc	00109$
;	E:\Works\NSHET\oled.c:184: pos(0, m);
	mov	dptr,#_pos_PARM_2
	mov	a,r7
	movx	@dptr,a
	mov	dpl,#0x00
	push	ar7
	push	ar6
	lcall	_pos
	pop	ar6
	pop	ar7
;	E:\Works\NSHET\oled.c:185: for (uint8_t n = 0; n < 128; n++)
	mov	r5,#0x00
00104$:
	cjne	r5,#0x80,00138$
00138$:
	jnc	00108$
;	E:\Works\NSHET\oled.c:186: dat(0x00);
	mov	dpl,#0x00
	push	ar7
	push	ar6
	push	ar5
	lcall	_dat
	pop	ar5
	pop	ar6
	pop	ar7
;	E:\Works\NSHET\oled.c:185: for (uint8_t n = 0; n < 128; n++)
	inc	r5
	sjmp	00104$
00108$:
;	E:\Works\NSHET\oled.c:183: for (uint8_t m = 0; m < max; m++) {
	inc	r7
	sjmp	00107$
00109$:
;	E:\Works\NSHET\oled.c:188: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'oledSwitch'
;------------------------------------------------------------
;state                     Allocated with name '_oledSwitch_state_65536_122'
;------------------------------------------------------------
;	E:\Works\NSHET\oled.c:190: void oledSwitch(uint8_t state) {
;	-----------------------------------------
;	 function oledSwitch
;	-----------------------------------------
_oledSwitch:
	mov	a,dpl
	mov	dptr,#_oledSwitch_state_65536_122
	movx	@dptr,a
;	E:\Works\NSHET\oled.c:191: if (state != 0) {
	movx	a,@dptr
	jz	00102$
;	E:\Works\NSHET\oled.c:192: cmd(0x8D);
	mov	dpl,#0x8d
	lcall	_cmd
;	E:\Works\NSHET\oled.c:193: cmd(0x14);
	mov	dpl,#0x14
	lcall	_cmd
;	E:\Works\NSHET\oled.c:194: cmd(0xAF);
	mov	dpl,#0xaf
	ljmp	_cmd
00102$:
;	E:\Works\NSHET\oled.c:196: cmd(0x8D);
	mov	dpl,#0x8d
	lcall	_cmd
;	E:\Works\NSHET\oled.c:197: cmd(0x10);
	mov	dpl,#0x10
	lcall	_cmd
;	E:\Works\NSHET\oled.c:198: cmd(0xAE);
	mov	dpl,#0xae
;	E:\Works\NSHET\oled.c:200: }
	ljmp	_cmd
;------------------------------------------------------------
;Allocation info for local variables in function 'oledSize'
;------------------------------------------------------------
;h                         Allocated with name '_oledSize_PARM_2'
;w                         Allocated with name '_oledSize_w_65536_126'
;------------------------------------------------------------
;	E:\Works\NSHET\oled.c:202: void oledSize(uint8_t* w, uint8_t* h) {
;	-----------------------------------------
;	 function oledSize
;	-----------------------------------------
_oledSize:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_oledSize_w_65536_126
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	E:\Works\NSHET\oled.c:203: if (addr == OLED_SCREEN_BIG) {
	mov	dptr,#_addr
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x7a,00104$
;	E:\Works\NSHET\oled.c:204: *w = 128; *h = 64;
	mov	dptr,#_oledSize_w_65536_126
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,#0x80
	lcall	__gptrput
	mov	dptr,#_oledSize_PARM_2
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,#0x40
	ljmp	__gptrput
00104$:
;	E:\Works\NSHET\oled.c:205: } else if (addr == OLED_SCREEN_SMALL) {
	cjne	r7,#0x78,00106$
;	E:\Works\NSHET\oled.c:206: *w = 128; *h = 32;
	mov	dptr,#_oledSize_w_65536_126
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,#0x80
	lcall	__gptrput
	mov	dptr,#_oledSize_PARM_2
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,#0x20
;	E:\Works\NSHET\oled.c:208: }
	ljmp	__gptrput
00106$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'oledChar'
;------------------------------------------------------------
;sloc0                     Allocated with name '_oledChar_sloc0_1_0'
;sloc1                     Allocated with name '_oledChar_sloc1_1_0'
;sloc2                     Allocated with name '_oledChar_sloc2_1_0'
;sloc3                     Allocated with name '_oledChar_sloc3_1_0'
;sloc4                     Allocated with name '_oledChar_sloc4_1_0'
;sloc5                     Allocated with name '_oledChar_sloc5_1_0'
;sloc6                     Allocated with name '_oledChar_sloc6_1_0'
;y                         Allocated with name '_oledChar_PARM_2'
;fid                       Allocated with name '_oledChar_PARM_3'
;color                     Allocated with name '_oledChar_PARM_4'
;c                         Allocated with name '_oledChar_PARM_5'
;x                         Allocated with name '_oledChar_x_65536_130'
;font                      Allocated with name '_oledChar_font_65536_131'
;f_w                       Allocated with name '_oledChar_f_w_65536_131'
;f_h                       Allocated with name '_oledChar_f_h_65536_131'
;W                         Allocated with name '_oledChar_W_65536_131'
;H                         Allocated with name '_oledChar_H_65536_131'
;seg                       Allocated with name '_oledChar_seg_131072_133'
;col                       Allocated with name '_oledChar_col_262144_135'
;i                         Allocated with name '_oledChar_i_262144_137'
;------------------------------------------------------------
;	E:\Works\NSHET\oled.c:210: void oledChar(uint8_t x, uint8_t y, uint8_t fid, uint8_t color, char c) {
;	-----------------------------------------
;	 function oledChar
;	-----------------------------------------
_oledChar:
	mov	a,dpl
	mov	dptr,#_oledChar_x_65536_130
	movx	@dptr,a
;	E:\Works\NSHET\oled.c:214: c -= ' ';
	mov	dptr,#_oledChar_PARM_5
	movx	a,@dptr
	add	a,#0xe0
	movx	@dptr,a
;	E:\Works\NSHET\oled.c:215: font = fontGet(fid);
	mov	dptr,#_oledChar_PARM_3
	movx	a,@dptr
	mov	dpl,a
	lcall	_fontGet
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	E:\Works\NSHET\oled.c:216: fontSize(font, &f_w, &f_h);
	mov	dptr,#_fontSize_PARM_2
	mov	a,#_oledChar_f_w_65536_131
	movx	@dptr,a
	mov	a,#(_oledChar_f_w_65536_131 >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_fontSize_PARM_3
	mov	a,#_oledChar_f_h_65536_131
	movx	@dptr,a
	mov	a,#(_oledChar_f_h_65536_131 >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	push	ar7
	push	ar6
	push	ar5
	lcall	_fontSize
;	E:\Works\NSHET\oled.c:217: oledSize(&W, &H);
	mov	dptr,#_oledSize_PARM_2
	mov	a,#_oledChar_H_65536_131
	movx	@dptr,a
	mov	a,#(_oledChar_H_65536_131 >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_oledChar_W_65536_131
	mov	b,#0x00
	lcall	_oledSize
	pop	ar5
	pop	ar6
	pop	ar7
;	E:\Works\NSHET\oled.c:219: if (x > W - f_w) { x = 0; y += f_h / 8; }
	mov	dptr,#_oledChar_W_65536_131
	movx	a,@dptr
	mov	r4,a
	mov	r3,#0x00
	mov	dptr,#_oledChar_f_w_65536_131
	movx	a,@dptr
	mov	r1,a
	mov	r2,#0x00
	mov	a,r4
	clr	c
	subb	a,r1
	mov	r4,a
	mov	a,r3
	subb	a,r2
	mov	r3,a
	mov	dptr,#_oledChar_x_65536_130
	movx	a,@dptr
	mov	r1,a
	mov	r2,#0x00
	clr	c
	mov	a,r4
	subb	a,r1
	mov	a,r3
	xrl	a,#0x80
	mov	b,r2
	xrl	b,#0x80
	subb	a,b
	jnc	00126$
	mov	dptr,#_oledChar_x_65536_130
	clr	a
	movx	@dptr,a
	mov	dptr,#_oledChar_f_h_65536_131
	movx	a,@dptr
	mov	r4,a
	mov	r3,#0x00
	mov	dptr,#__divsint_PARM_2
	mov	a,#0x08
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl,r4
	mov	dph,r3
	push	ar7
	push	ar6
	push	ar5
	lcall	__divsint
	mov	r3,dpl
	pop	ar5
	pop	ar6
	pop	ar7
	mov	dptr,#_oledChar_PARM_2
	movx	a,@dptr
	mov	r4,a
	add	a,r3
	movx	@dptr,a
;	E:\Works\NSHET\oled.c:221: for (uint8_t seg = 0; seg < f_h / 8; seg++) {
00126$:
	mov	dptr,#_oledChar_PARM_5
	movx	a,@dptr
	mov	_oledChar_sloc6_1_0,a
	mov	dptr,#_oledChar_PARM_4
	movx	a,@dptr
	mov	_oledChar_sloc4_1_0,a
	mov	dptr,#_oledChar_x_65536_130
	movx	a,@dptr
	mov	_oledChar_sloc0_1_0,a
	mov	dptr,#_oledChar_PARM_2
	movx	a,@dptr
	mov	r1,a
	mov	r0,#0x00
00115$:
	push	ar1
	mov	dptr,#_oledChar_f_h_65536_131
	movx	a,@dptr
	mov	r1,a
	mov	r2,#0x00
	mov	dptr,#__divsint_PARM_2
	mov	a,#0x08
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl,r1
	mov	dph,r2
	push	ar7
	push	ar6
	push	ar5
	push	ar1
	push	ar0
	lcall	__divsint
	mov	_oledChar_sloc1_1_0,dpl
	mov	(_oledChar_sloc1_1_0 + 1),dph
	pop	ar0
	pop	ar1
	pop	ar5
	pop	ar6
	pop	ar7
	mov	ar1,r0
	mov	r2,#0x00
	clr	c
	mov	a,r1
	subb	a,_oledChar_sloc1_1_0
	mov	a,r2
	xrl	a,#0x80
	mov	b,(_oledChar_sloc1_1_0 + 1)
	xrl	b,#0x80
	subb	a,b
	pop	ar1
	jc	00155$
	ret
00155$:
;	E:\Works\NSHET\oled.c:222: for (uint8_t col = 0; col < f_w; col++) {
	mov	_oledChar_sloc5_1_0,r0
	mov	_oledChar_sloc1_1_0,#0x00
00109$:
	mov	dptr,#_oledChar_f_w_65536_131
	movx	a,@dptr
	mov	_oledChar_sloc2_1_0,a
	clr	c
	mov	a,_oledChar_sloc1_1_0
	subb	a,_oledChar_sloc2_1_0
	jc	00156$
	ljmp	00105$
00156$:
;	E:\Works\NSHET\oled.c:223: buffer[col] = font[c * f_w * f_h / 8 + f_w * seg + col];
	push	ar1
	mov	a,_oledChar_sloc1_1_0
	add	a,#_buffer
	mov	_oledChar_sloc3_1_0,a
	clr	a
	addc	a,#(_buffer >> 8)
	mov	(_oledChar_sloc3_1_0 + 1),a
	mov	b,_oledChar_sloc6_1_0
	mov	a,_oledChar_sloc2_1_0
	mul	ab
	mov	r1,a
	mov	r3,b
	mov	dptr,#_oledChar_f_h_65536_131
	movx	a,@dptr
	mov	dptr,#__mulint_PARM_2
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl,r1
	mov	dph,r3
	push	ar7
	push	ar6
	push	ar5
	push	ar1
	push	ar0
	lcall	__mulint
	mov	r2,dpl
	mov	r3,dph
	mov	dptr,#__divsint_PARM_2
	mov	a,#0x08
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl,r2
	mov	dph,r3
	lcall	__divsint
	mov	r2,dpl
	mov	r3,dph
	pop	ar0
	pop	ar1
	pop	ar5
	pop	ar6
	pop	ar7
	mov	b,_oledChar_sloc2_1_0
	mov	a,_oledChar_sloc5_1_0
	mul	ab
	add	a,r2
	mov	r2,a
	mov	a,r3
	addc	a,b
	mov	r3,a
	mov	r1,_oledChar_sloc1_1_0
	mov	r4,#0x00
	mov	a,r1
	add	a,r2
	mov	r2,a
	mov	a,r4
	addc	a,r3
	mov	r3,a
	mov	a,r2
	add	a,r5
	mov	r2,a
	mov	a,r3
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	mov	dpl,_oledChar_sloc3_1_0
	mov	dph,(_oledChar_sloc3_1_0 + 1)
	movx	@dptr,a
;	E:\Works\NSHET\oled.c:224: if (color == 0)
	pop	ar1
	mov	a,_oledChar_sloc4_1_0
	jnz	00110$
;	E:\Works\NSHET\oled.c:225: buffer[col] = ~buffer[col];
	mov	dpl,_oledChar_sloc3_1_0
	mov	dph,(_oledChar_sloc3_1_0 + 1)
	movx	a,@dptr
	cpl	a
	mov	r4,a
	mov	dpl,_oledChar_sloc3_1_0
	mov	dph,(_oledChar_sloc3_1_0 + 1)
	movx	@dptr,a
00110$:
;	E:\Works\NSHET\oled.c:222: for (uint8_t col = 0; col < f_w; col++) {
	inc	_oledChar_sloc1_1_0
	ljmp	00109$
00105$:
;	E:\Works\NSHET\oled.c:227: pos(x, y + seg);
	mov	dptr,#_pos_PARM_2
	mov	a,r0
	add	a,r1
	movx	@dptr,a
	mov	dpl,_oledChar_sloc0_1_0
	push	ar7
	push	ar6
	push	ar5
	push	ar1
	push	ar0
	lcall	_pos
	pop	ar0
	pop	ar1
	pop	ar5
	pop	ar6
	pop	ar7
;	E:\Works\NSHET\oled.c:228: for (uint8_t i = 0; i < f_w; i++)
	mov	r4,#0x00
00112$:
	mov	dptr,#_oledChar_f_w_65536_131
	movx	a,@dptr
	mov	r3,a
	clr	c
	mov	a,r4
	subb	a,r3
	jnc	00116$
;	E:\Works\NSHET\oled.c:229: dat(buffer[i]);
	mov	a,r4
	add	a,#_buffer
	mov	dpl,a
	clr	a
	addc	a,#(_buffer >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	dpl,a
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar1
	push	ar0
	lcall	_dat
	pop	ar0
	pop	ar1
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	E:\Works\NSHET\oled.c:228: for (uint8_t i = 0; i < f_w; i++)
	inc	r4
	sjmp	00112$
00116$:
;	E:\Works\NSHET\oled.c:221: for (uint8_t seg = 0; seg < f_h / 8; seg++) {
	inc	r0
;	E:\Works\NSHET\oled.c:231: }
	ljmp	00115$
;------------------------------------------------------------
;Allocation info for local variables in function 'oledPrint'
;------------------------------------------------------------
;sloc0                     Allocated with name '_oledPrint_sloc0_1_0'
;y                         Allocated with name '_oledPrint_PARM_2'
;fid                       Allocated with name '_oledPrint_PARM_3'
;color                     Allocated with name '_oledPrint_PARM_4'
;str                       Allocated with name '_oledPrint_PARM_5'
;x                         Allocated with name '_oledPrint_x_65536_138'
;font                      Allocated with name '_oledPrint_font_65536_139'
;f_w                       Allocated with name '_oledPrint_f_w_65536_139'
;f_h                       Allocated with name '_oledPrint_f_h_65536_139'
;W                         Allocated with name '_oledPrint_W_65536_139'
;H                         Allocated with name '_oledPrint_H_65536_139'
;pos                       Allocated with name '_oledPrint_pos_65536_139'
;------------------------------------------------------------
;	E:\Works\NSHET\oled.c:233: void oledPrint(uint8_t x, uint8_t y, uint8_t fid, uint8_t color, char* str) {
;	-----------------------------------------
;	 function oledPrint
;	-----------------------------------------
_oledPrint:
	mov	a,dpl
	mov	dptr,#_oledPrint_x_65536_138
	movx	@dptr,a
;	E:\Works\NSHET\oled.c:237: font = fontGet(fid);
	mov	dptr,#_oledPrint_PARM_3
	movx	a,@dptr
	mov	r7,a
	mov	dpl,a
	push	ar7
	lcall	_fontGet
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
;	E:\Works\NSHET\oled.c:238: fontSize(font, &f_w, &f_h);
	mov	dptr,#_fontSize_PARM_2
	mov	a,#_oledPrint_f_w_65536_139
	movx	@dptr,a
	mov	a,#(_oledPrint_f_w_65536_139 >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_fontSize_PARM_3
	mov	a,#_oledPrint_f_h_65536_139
	movx	@dptr,a
	mov	a,#(_oledPrint_f_h_65536_139 >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	lcall	_fontSize
;	E:\Works\NSHET\oled.c:239: oledSize(&W, &H);
	mov	dptr,#_oledSize_PARM_2
	mov	a,#_oledPrint_H_65536_139
	movx	@dptr,a
	mov	a,#(_oledPrint_H_65536_139 >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_oledPrint_W_65536_139
	mov	b,#0x00
	lcall	_oledSize
	pop	ar7
;	E:\Works\NSHET\oled.c:242: while (str[pos] != '\0') {
	mov	dptr,#_oledPrint_PARM_4
	movx	a,@dptr
	mov	r6,a
	mov	dptr,#_oledPrint_PARM_5
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	r2,#0x00
00108$:
	push	ar6
	mov	a,r2
	add	a,r3
	mov	r0,a
	clr	a
	addc	a,r4
	mov	r1,a
	mov	ar6,r5
	mov	dpl,r0
	mov	dph,r1
	mov	b,r6
	lcall	__gptrget
	pop	ar6
	jnz	00134$
	ret
00134$:
;	E:\Works\NSHET\oled.c:243: if (y > (H - f_h) / 8) { x = 0; y = 0; oledClear(); }
	push	ar6
	mov	dptr,#_oledPrint_H_65536_139
	movx	a,@dptr
	mov	r1,a
	mov	_oledPrint_sloc0_1_0,r1
	mov	(_oledPrint_sloc0_1_0 + 1),#0x00
	mov	dptr,#_oledPrint_f_h_65536_139
	movx	a,@dptr
	mov	r1,a
	mov	r6,#0x00
	mov	a,_oledPrint_sloc0_1_0
	clr	c
	subb	a,r1
	mov	r1,a
	mov	a,(_oledPrint_sloc0_1_0 + 1)
	subb	a,r6
	mov	r6,a
	mov	dptr,#__divsint_PARM_2
	mov	a,#0x08
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl,r1
	mov	dph,r6
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	lcall	__divsint
	mov	_oledPrint_sloc0_1_0,dpl
	mov	(_oledPrint_sloc0_1_0 + 1),dph
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	mov	dptr,#_oledPrint_PARM_2
	movx	a,@dptr
	mov	r0,a
	mov	r6,#0x00
	clr	c
	mov	a,_oledPrint_sloc0_1_0
	subb	a,r0
	mov	a,(_oledPrint_sloc0_1_0 + 1)
	xrl	a,#0x80
	mov	b,r6
	xrl	b,#0x80
	subb	a,b
	pop	ar6
	jnc	00102$
	mov	dptr,#_oledPrint_x_65536_138
	clr	a
	movx	@dptr,a
	mov	dptr,#_oledPrint_PARM_2
	movx	@dptr,a
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	lcall	_oledClear
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
00102$:
;	E:\Works\NSHET\oled.c:244: switch (str[pos]) {
	push	ar6
	mov	a,r2
	add	a,r3
	mov	r0,a
	clr	a
	addc	a,r4
	mov	r1,a
	mov	ar6,r5
	mov	dpl,r0
	mov	dph,r1
	mov	b,r6
	lcall	__gptrget
	mov	_oledPrint_sloc0_1_0,a
	mov	a,#0x0a
	cjne	a,_oledPrint_sloc0_1_0,00136$
	sjmp	00137$
00136$:
	pop	ar6
	sjmp	00104$
00137$:
	pop	ar6
;	E:\Works\NSHET\oled.c:246: x = 0; y += f_h / 8;
	mov	dptr,#_oledPrint_x_65536_138
	clr	a
	movx	@dptr,a
	mov	dptr,#_oledPrint_f_h_65536_139
	movx	a,@dptr
	mov	r0,a
	mov	r1,#0x00
	mov	dptr,#__divsint_PARM_2
	mov	a,#0x08
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl,r0
	mov	dph,r1
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	lcall	__divsint
	mov	r0,dpl
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	mov	dptr,#_oledPrint_PARM_2
	movx	a,@dptr
	mov	r1,a
	add	a,r0
	movx	@dptr,a
;	E:\Works\NSHET\oled.c:247: break;
	ljmp	00107$
;	E:\Works\NSHET\oled.c:248: default:
00104$:
;	E:\Works\NSHET\oled.c:249: oledChar(x, y, fid, color, str[pos]);
	push	ar3
	push	ar4
	push	ar5
	mov	dptr,#_oledPrint_x_65536_138
	movx	a,@dptr
	mov	r1,a
	mov	dptr,#_oledPrint_PARM_2
	movx	a,@dptr
	mov	r0,a
	mov	dptr,#_oledChar_PARM_2
	movx	@dptr,a
	mov	dptr,#_oledChar_PARM_3
	mov	a,r7
	movx	@dptr,a
	mov	dptr,#_oledChar_PARM_4
	mov	a,r6
	movx	@dptr,a
	mov	dptr,#_oledChar_PARM_5
	mov	a,_oledPrint_sloc0_1_0
	movx	@dptr,a
	mov	dpl,r1
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	push	ar1
	push	ar0
	lcall	_oledChar
	pop	ar0
	pop	ar1
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	E:\Works\NSHET\oled.c:250: x += f_w;
	mov	dptr,#_oledPrint_f_w_65536_139
	movx	a,@dptr
	mov	r5,a
	mov	dptr,#_oledPrint_x_65536_138
	add	a,r1
	movx	@dptr,a
;	E:\Works\NSHET\oled.c:251: if (x > W - f_w) {
	mov	dptr,#_oledPrint_W_65536_139
	movx	a,@dptr
	mov	r4,a
	mov	r3,#0x00
	mov	ar1,r5
	mov	r5,#0x00
	mov	a,r4
	clr	c
	subb	a,r1
	mov	r4,a
	mov	a,r3
	subb	a,r5
	mov	r3,a
	mov	dptr,#_oledPrint_x_65536_138
	movx	a,@dptr
	mov	r1,a
	mov	r5,#0x00
	clr	c
	mov	a,r4
	subb	a,r1
	mov	a,r3
	xrl	a,#0x80
	mov	b,r5
	xrl	b,#0x80
	subb	a,b
	pop	ar5
	pop	ar4
	pop	ar3
	jnc	00107$
;	E:\Works\NSHET\oled.c:252: x = 0;
	push	ar6
	mov	dptr,#_oledPrint_x_65536_138
	clr	a
	movx	@dptr,a
;	E:\Works\NSHET\oled.c:253: y += f_h / 8;
	mov	dptr,#_oledPrint_f_h_65536_139
	movx	a,@dptr
	mov	r1,a
	mov	r6,#0x00
	mov	dptr,#__divsint_PARM_2
	mov	a,#0x08
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl,r1
	mov	dph,r6
	push	ar7
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	push	ar0
	lcall	__divsint
	mov	r1,dpl
	pop	ar0
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar7
	mov	dptr,#_oledPrint_PARM_2
	mov	a,r1
	add	a,r0
	movx	@dptr,a
;	E:\Works\NSHET\oled.c:257: pos++;
	pop	ar6
;	E:\Works\NSHET\oled.c:256: }
00107$:
;	E:\Works\NSHET\oled.c:257: pos++;
	inc	r2
;	E:\Works\NSHET\oled.c:259: }
	ljmp	00108$
;------------------------------------------------------------
;Allocation info for local variables in function 'oledPrintf'
;------------------------------------------------------------
;x                         Allocated to stack - _bp -3
;y                         Allocated to stack - _bp -4
;fid                       Allocated to stack - _bp -5
;color                     Allocated to stack - _bp -6
;format                    Allocated to stack - _bp -9
;iobuf                     Allocated to registers r6 r7 r5 
;args                      Allocated to registers r4 
;result                    Allocated to registers r3 r4 
;------------------------------------------------------------
;	E:\Works\NSHET\oled.c:261: int oledPrintf(uint8_t x, uint8_t y, uint8_t fid, uint8_t color, const char* format, ...) {
;	-----------------------------------------
;	 function oledPrintf
;	-----------------------------------------
_oledPrintf:
	push	_bp
	mov	_bp,sp
;	E:\Works\NSHET\oled.c:262: char* iobuf = malloc(sizeof(char) * IOBUF_SIZE);
	mov	dptr,#0x0080
	lcall	_malloc
	mov	r6,dpl
	mov	r7,dph
	mov	r5,#0x00
;	E:\Works\NSHET\oled.c:264: va_start(args, format);
	mov	a,_bp
	add	a,#0xf7
	mov	r4,a
;	E:\Works\NSHET\oled.c:265: int result = vsprintf(iobuf, format, args);
	mov	a,_bp
	add	a,#0xf7
	mov	r0,a
	mov	dptr,#_vsprintf_PARM_2
	mov	a,@r0
	movx	@dptr,a
	inc	r0
	mov	a,@r0
	inc	dptr
	movx	@dptr,a
	inc	r0
	mov	a,@r0
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_vsprintf_PARM_3
	mov	a,r4
	movx	@dptr,a
	mov	dpl,r6
	mov	dph,r7
	mov	b,r5
	push	ar7
	push	ar6
	push	ar5
	lcall	_vsprintf
	mov	r3,dpl
	mov	r4,dph
	pop	ar5
	pop	ar6
	pop	ar7
;	E:\Works\NSHET\oled.c:267: oledPrint(x, y, fid, color, iobuf);
	mov	a,_bp
	add	a,#0xfc
	mov	r0,a
	mov	dptr,#_oledPrint_PARM_2
	mov	a,@r0
	movx	@dptr,a
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	mov	dptr,#_oledPrint_PARM_3
	mov	a,@r0
	movx	@dptr,a
	mov	a,_bp
	add	a,#0xfa
	mov	r0,a
	mov	dptr,#_oledPrint_PARM_4
	mov	a,@r0
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
	mov	a,_bp
	add	a,#0xfd
	mov	r0,a
	mov	dpl,@r0
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	lcall	_oledPrint
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	E:\Works\NSHET\oled.c:268: free(iobuf);
	mov	dpl,r6
	mov	dph,r7
	mov	b,r5
	push	ar4
	push	ar3
	lcall	_free
	pop	ar3
	pop	ar4
;	E:\Works\NSHET\oled.c:269: return result;
	mov	dpl,r3
	mov	dph,r4
;	E:\Works\NSHET\oled.c:270: }
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'oledPrintfc'
;------------------------------------------------------------
;y                         Allocated to stack - _bp -3
;fid                       Allocated to stack - _bp -4
;color                     Allocated to stack - _bp -5
;format                    Allocated to stack - _bp -8
;f_w                       Allocated to stack - _bp +2
;f_h                       Allocated to stack - _bp +1
;W                         Allocated to stack - _bp +3
;H                         Allocated to stack - _bp +4
;len                       Allocated to registers r2 
;iobuf                     Allocated to registers r6 r7 r5 
;args                      Allocated to registers r4 
;result                    Allocated to stack - _bp +5
;------------------------------------------------------------
;	E:\Works\NSHET\oled.c:272: int oledPrintfc(uint8_t y, uint8_t fid, uint8_t color, const char* format, ...) {
;	-----------------------------------------
;	 function oledPrintfc
;	-----------------------------------------
_oledPrintfc:
	push	_bp
	mov	a,sp
	mov	_bp,a
	add	a,#0x06
	mov	sp,a
;	E:\Works\NSHET\oled.c:274: fontSize(fontGet(fid), &f_w, &f_h);
	mov	a,_bp
	add	a,#0xfc
	mov	r0,a
	mov	dpl,@r0
	lcall	_fontGet
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	mov	a,_bp
	add	a,#0x02
	mov	dptr,#_fontSize_PARM_2
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	a,#0x40
	inc	dptr
	movx	@dptr,a
	mov	r4,_bp
	inc	r4
	mov	dptr,#_fontSize_PARM_3
	mov	a,r4
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	a,#0x40
	inc	dptr
	movx	@dptr,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_fontSize
;	E:\Works\NSHET\oled.c:275: oledSize(&W, &H);
	mov	a,_bp
	add	a,#0x03
	mov	r7,a
	mov	r6,#0x00
	mov	r5,#0x40
	mov	a,_bp
	add	a,#0x04
	mov	dptr,#_oledSize_PARM_2
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	dpl,r7
	mov	dph,r6
	mov	b,r5
	lcall	_oledSize
;	E:\Works\NSHET\oled.c:277: char* iobuf = malloc(sizeof(char) * IOBUF_SIZE);
	mov	dptr,#0x0080
	lcall	_malloc
	mov	r6,dpl
	mov	r7,dph
	mov	r5,#0x00
;	E:\Works\NSHET\oled.c:279: va_start(args, format);
	mov	a,_bp
	add	a,#0xf8
	mov	r4,a
;	E:\Works\NSHET\oled.c:280: int result = vsprintf(iobuf, format, args);
	mov	a,_bp
	add	a,#0xf8
	mov	r0,a
	mov	dptr,#_vsprintf_PARM_2
	mov	a,@r0
	movx	@dptr,a
	inc	r0
	mov	a,@r0
	inc	dptr
	movx	@dptr,a
	inc	r0
	mov	a,@r0
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_vsprintf_PARM_3
	mov	a,r4
	movx	@dptr,a
	mov	dpl,r6
	mov	dph,r7
	mov	b,r5
	push	ar7
	push	ar6
	push	ar5
	lcall	_vsprintf
	mov	r3,dpl
	mov	r4,dph
	pop	ar5
	pop	ar6
	pop	ar7
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	mov	@r0,ar3
	inc	r0
	mov	@r0,ar4
;	E:\Works\NSHET\oled.c:282: len = strlen(iobuf);
	mov	dpl,r6
	mov	dph,r7
	mov	b,r5
	push	ar7
	push	ar6
	push	ar5
	lcall	_strlen
	mov	r2,dpl
;	E:\Works\NSHET\oled.c:283: oledPrint(W / 2 - len * f_w / 2, y, fid, color, iobuf);
	mov	a,_bp
	add	a,#0x03
	mov	r0,a
	mov	ar3,@r0
	mov	r4,#0x00
	mov	dptr,#__divsint_PARM_2
	mov	a,#0x02
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl,r3
	mov	dph,r4
	push	ar2
	lcall	__divsint
	mov	r3,dpl
	pop	ar2
	mov	r0,_bp
	inc	r0
	inc	r0
	mov	b,r2
	mov	a,@r0
	mul	ab
	mov	r2,a
	mov	r4,b
	mov	dptr,#__divsint_PARM_2
	mov	a,#0x02
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl,r2
	mov	dph,r4
	push	ar3
	lcall	__divsint
	mov	r2,dpl
	pop	ar3
	pop	ar5
	pop	ar6
	pop	ar7
	mov	a,r3
	clr	c
	subb	a,r2
	mov	r3,a
	mov	a,_bp
	add	a,#0xfd
	mov	r0,a
	mov	dptr,#_oledPrint_PARM_2
	mov	a,@r0
	movx	@dptr,a
	mov	a,_bp
	add	a,#0xfc
	mov	r0,a
	mov	dptr,#_oledPrint_PARM_3
	mov	a,@r0
	movx	@dptr,a
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	mov	dptr,#_oledPrint_PARM_4
	mov	a,@r0
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
	mov	dpl,r3
	push	ar7
	push	ar6
	push	ar5
	lcall	_oledPrint
	pop	ar5
	pop	ar6
	pop	ar7
;	E:\Works\NSHET\oled.c:284: free(iobuf);
	mov	dpl,r6
	mov	dph,r7
	mov	b,r5
	lcall	_free
;	E:\Works\NSHET\oled.c:285: return result;
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
;	E:\Works\NSHET\oled.c:286: }
	mov	sp,_bp
	pop	_bp
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
__xinit__addr:
	.db #0x78	; 120	'x'
	.area CABS    (ABS,CODE)
