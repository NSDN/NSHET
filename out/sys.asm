;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.0.0 #11528 (MINGW64)
;--------------------------------------------------------
	.module sys
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl ___uart0_interrupt
	.globl ___tim2_interrupt
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
	.globl _block_recv_siz
	.globl _block_recv_pos
	.globl _block_recv_ptr
	.globl _recPtr0
	.globl _sysTickCount
	.globl _uart1Gets_PARM_2
	.globl _u1c
	.globl _u1t
	.globl _uart0BlockRecv_PARM_2
	.globl _uart0Gets_PARM_2
	.globl _sbuf
	.globl _x2
	.globl _x
	.globl _mmov_PARM_3
	.globl _mmov_PARM_2
	.globl _mset_PARM_3
	.globl _mset_PARM_2
	.globl _mc
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
	.globl _block_recv
	.globl _busy
	.globl _mset
	.globl _mmov
	.globl _sysClockConfig
	.globl _delay
	.globl _delay_us
	.globl _sysTickConfig
	.globl _sysGetTickCount
	.globl _uart0Config
	.globl _uart0Send
	.globl _uart0Write
	.globl _uart0Get
	.globl _uart0Gets
	.globl _uart0BlockRecv
	.globl _uart1Config
	.globl _uart1Send
	.globl _uart1Write
	.globl _uart1Get
	.globl _uart1Gets
	.globl _pwm3Init
	.globl _pwm3Duty
	.globl _adcInit
	.globl _adcGet
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
	.area REG_BANK_1	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
	.area	OSEG    (OVR,DATA)
_mmov_sloc0_1_0:
	.ds 3
_mmov_sloc1_1_0:
	.ds 2
_mmov_sloc2_1_0:
	.ds 2
_mmov_sloc3_1_0:
	.ds 3
_mmov_sloc4_1_0:
	.ds 3
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
_busy::
	.ds 1
_block_recv::
	.ds 1
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
_mc::
	.ds 2
_mset_PARM_2:
	.ds 1
_mset_PARM_3:
	.ds 2
_mset_ptr_65536_17:
	.ds 3
_mmov_PARM_2:
	.ds 3
_mmov_PARM_3:
	.ds 2
_mmov_dst_65536_20:
	.ds 3
_delay_t_65536_27:
	.ds 2
_delay_us_t_65536_30:
	.ds 2
_x::
	.ds 4
_x2::
	.ds 1
_sbuf::
	.ds 1
_uart0Config_baud_65536_37:
	.ds 4
_uart0Send_data_65536_44:
	.ds 1
_uart0Write_s_65536_46:
	.ds 3
_uart0Gets_PARM_2:
	.ds 1
_uart0Gets_dat_65536_51:
	.ds 3
_uart0BlockRecv_PARM_2:
	.ds 2
_uart0BlockRecv_ptr_65536_54:
	.ds 3
_uart1Config_baud_65536_59:
	.ds 4
_uart1Send_data_65536_61:
	.ds 1
_uart1Write_s_65536_63:
	.ds 3
_u1t::
	.ds 4
_u1c::
	.ds 1
_uart1Gets_PARM_2:
	.ds 1
_uart1Gets_dat_65536_69:
	.ds 3
_pwm3Init_freq_65536_73:
	.ds 4
_pwm3Duty_duty_65536_75:
	.ds 1
_adcGet_channel_65536_78:
	.ds 1
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
_sysTickCount::
	.ds 4
_recBuf0:
	.ds 32
_recPtr0::
	.ds 1
_block_recv_ptr::
	.ds 3
_block_recv_pos::
	.ds 2
_block_recv_siz::
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
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
;	E:\Works\NSHET\sys.c:173: volatile BOOL busy = 0;
;	assignBit
	clr	_busy
;	E:\Works\NSHET\sys.c:177: BOOL block_recv = 0;
;	assignBit
	clr	_block_recv
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
;Allocation info for local variables in function 'mset'
;------------------------------------------------------------
;val                       Allocated with name '_mset_PARM_2'
;siz                       Allocated with name '_mset_PARM_3'
;ptr                       Allocated with name '_mset_ptr_65536_17'
;------------------------------------------------------------
;	E:\Works\NSHET\sys.c:5: void mset(uint8_t* ptr, uint8_t val, size_t siz) {
;	-----------------------------------------
;	 function mset
;	-----------------------------------------
_mset:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_mset_ptr_65536_17
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	E:\Works\NSHET\sys.c:6: for (mc = 0; mc < siz; mc++)
	mov	dptr,#_mc
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_mset_ptr_65536_17
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_mset_PARM_2
	movx	a,@dptr
	mov	r4,a
	mov	dptr,#_mset_PARM_3
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
00103$:
	mov	dptr,#_mc
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	clr	c
	mov	a,r0
	subb	a,r2
	mov	a,r1
	subb	a,r3
	jnc	00105$
;	E:\Works\NSHET\sys.c:7: ptr[mc] = val;
	push	ar2
	push	ar3
	mov	a,r0
	add	a,r5
	mov	r0,a
	mov	a,r1
	addc	a,r6
	mov	r1,a
	mov	ar3,r7
	mov	dpl,r0
	mov	dph,r1
	mov	b,r3
	mov	a,r4
	lcall	__gptrput
;	E:\Works\NSHET\sys.c:6: for (mc = 0; mc < siz; mc++)
	mov	dptr,#_mc
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0x00
	movx	@dptr,a
	pop	ar3
	pop	ar2
	sjmp	00103$
00105$:
;	E:\Works\NSHET\sys.c:8: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'mmov'
;------------------------------------------------------------
;src                       Allocated with name '_mmov_PARM_2'
;siz                       Allocated with name '_mmov_PARM_3'
;dst                       Allocated with name '_mmov_dst_65536_20'
;sloc0                     Allocated with name '_mmov_sloc0_1_0'
;sloc1                     Allocated with name '_mmov_sloc1_1_0'
;sloc2                     Allocated with name '_mmov_sloc2_1_0'
;sloc3                     Allocated with name '_mmov_sloc3_1_0'
;sloc4                     Allocated with name '_mmov_sloc4_1_0'
;------------------------------------------------------------
;	E:\Works\NSHET\sys.c:10: void mmov(uint8_t* dst, uint8_t* src, size_t siz) {
;	-----------------------------------------
;	 function mmov
;	-----------------------------------------
_mmov:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_mmov_dst_65536_20
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	E:\Works\NSHET\sys.c:11: if (dst < src) {
	mov	dptr,#_mmov_dst_65536_20
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_mmov_PARM_2
	movx	a,@dptr
	mov	_mmov_sloc3_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_mmov_sloc3_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_mmov_sloc3_1_0 + 2),a
	push	_mmov_sloc3_1_0
	push	(_mmov_sloc3_1_0 + 1)
	push	(_mmov_sloc3_1_0 + 2)
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	___gptr_cmp
	dec	sp
	dec	sp
	dec	sp
	jc	00136$
	ljmp	00112$
00136$:
;	E:\Works\NSHET\sys.c:12: mc = 0;
	mov	dptr,#_mc
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	E:\Works\NSHET\sys.c:13: while (1) {
	mov	_mmov_sloc0_1_0,r5
	mov	(_mmov_sloc0_1_0 + 1),r6
	mov	(_mmov_sloc0_1_0 + 2),r7
	mov	dptr,#_mmov_PARM_3
	movx	a,@dptr
	mov	_mmov_sloc1_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_mmov_sloc1_1_0 + 1),a
00104$:
;	E:\Works\NSHET\sys.c:14: dst[mc] = src[mc];
	mov	dptr,#_mc
	movx	a,@dptr
	mov	_mmov_sloc2_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_mmov_sloc2_1_0 + 1),a
	mov	a,_mmov_sloc2_1_0
	add	a,_mmov_sloc0_1_0
	mov	_mmov_sloc4_1_0,a
	mov	a,(_mmov_sloc2_1_0 + 1)
	addc	a,(_mmov_sloc0_1_0 + 1)
	mov	(_mmov_sloc4_1_0 + 1),a
	mov	(_mmov_sloc4_1_0 + 2),(_mmov_sloc0_1_0 + 2)
	mov	a,_mmov_sloc2_1_0
	add	a,_mmov_sloc3_1_0
	mov	r2,a
	mov	a,(_mmov_sloc2_1_0 + 1)
	addc	a,(_mmov_sloc3_1_0 + 1)
	mov	r3,a
	mov	r4,(_mmov_sloc3_1_0 + 2)
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	dpl,_mmov_sloc4_1_0
	mov	dph,(_mmov_sloc4_1_0 + 1)
	mov	b,(_mmov_sloc4_1_0 + 2)
	lcall	__gptrput
;	E:\Works\NSHET\sys.c:15: mc += 1;
	mov	dptr,#_mc
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	dptr,#_mc
	mov	a,#0x01
	add	a,r3
	movx	@dptr,a
	clr	a
	addc	a,r4
	inc	dptr
	movx	@dptr,a
;	E:\Works\NSHET\sys.c:16: if (mc == siz)
	mov	dptr,#_mc
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	a,r3
	cjne	a,_mmov_sloc1_1_0,00104$
	mov	a,r4
	cjne	a,(_mmov_sloc1_1_0 + 1),00104$
;	E:\Works\NSHET\sys.c:17: break;
	ret
00112$:
;	E:\Works\NSHET\sys.c:20: mc = siz - 1;
	mov	dptr,#_mmov_PARM_3
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	dec	r3
	cjne	r3,#0xff,00139$
	dec	r4
00139$:
	mov	dptr,#_mc
	mov	a,r3
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
;	E:\Works\NSHET\sys.c:21: while (1) {
00109$:
;	E:\Works\NSHET\sys.c:22: dst[mc] = src[mc];
	mov	dptr,#_mc
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	a,r3
	add	a,r5
	mov	r0,a
	mov	a,r4
	addc	a,r6
	mov	r1,a
	mov	ar2,r7
	push	ar5
	push	ar6
	push	ar7
	mov	a,r3
	add	a,_mmov_sloc3_1_0
	mov	r3,a
	mov	a,r4
	addc	a,(_mmov_sloc3_1_0 + 1)
	mov	r4,a
	mov	r7,(_mmov_sloc3_1_0 + 2)
	mov	dpl,r3
	mov	dph,r4
	mov	b,r7
	lcall	__gptrget
	mov	dpl,r0
	mov	dph,r1
	mov	b,r2
	lcall	__gptrput
;	E:\Works\NSHET\sys.c:23: if (mc == 0)
	mov	dptr,#_mc
	movx	a,@dptr
	mov	_mmov_sloc4_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_mmov_sloc4_1_0 + 1),a
	pop	ar7
	pop	ar6
	pop	ar5
	mov	dptr,#_mc
	movx	a,@dptr
	mov	b,a
	inc	dptr
	movx	a,@dptr
	orl	a,b
	jz	00114$
;	E:\Works\NSHET\sys.c:25: mc -= 1;
	mov	a,_mmov_sloc4_1_0
	add	a,#0xff
	mov	r3,a
	mov	a,(_mmov_sloc4_1_0 + 1)
	addc	a,#0xff
	mov	r4,a
	mov	dptr,#_mc
	mov	a,r3
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
	sjmp	00109$
00114$:
;	E:\Works\NSHET\sys.c:28: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'sysClockConfig'
;------------------------------------------------------------
;	E:\Works\NSHET\sys.c:30: void sysClockConfig() {
;	-----------------------------------------
;	 function sysClockConfig
;	-----------------------------------------
_sysClockConfig:
;	E:\Works\NSHET\sys.c:31: SAFE_MOD = 0x55;
	mov	_SAFE_MOD,#0x55
;	E:\Works\NSHET\sys.c:32: SAFE_MOD = 0xAA;
	mov	_SAFE_MOD,#0xaa
;	E:\Works\NSHET\sys.c:33: CLOCK_CFG &= ~MASK_SYS_CK_DIV;
	anl	_CLOCK_CFG,#0xe0
;	E:\Works\NSHET\sys.c:34: CLOCK_CFG |= (336000000 / FREQ_SYS);
	orl	_CLOCK_CFG,#0x07
;	E:\Works\NSHET\sys.c:35: PLL_CFG = 0xFC; // fPll = 336MHz;
	mov	_PLL_CFG,#0xfc
;	E:\Works\NSHET\sys.c:36: SAFE_MOD = 0xFF;
	mov	_SAFE_MOD,#0xff
;	E:\Works\NSHET\sys.c:47: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'delay'
;------------------------------------------------------------
;t                         Allocated with name '_delay_t_65536_27'
;------------------------------------------------------------
;	E:\Works\NSHET\sys.c:49: void delay(uint16_t t) {
;	-----------------------------------------
;	 function delay
;	-----------------------------------------
_delay:
	mov	r7,dph
	mov	a,dpl
	mov	dptr,#_delay_t_65536_27
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	E:\Works\NSHET\sys.c:50: while (t) {
	mov	dptr,#_delay_t_65536_27
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
00101$:
	mov	a,r6
	orl	a,r7
	jz	00108$
;	E:\Works\NSHET\sys.c:51: delay_us(1000);
	mov	dptr,#0x03e8
	push	ar7
	push	ar6
	lcall	_delay_us
	pop	ar6
	pop	ar7
;	E:\Works\NSHET\sys.c:52: -- t;
	dec	r6
	cjne	r6,#0xff,00116$
	dec	r7
00116$:
	mov	dptr,#_delay_t_65536_27
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	sjmp	00101$
00108$:
	mov	dptr,#_delay_t_65536_27
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	E:\Works\NSHET\sys.c:54: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'delay_us'
;------------------------------------------------------------
;t                         Allocated with name '_delay_us_t_65536_30'
;------------------------------------------------------------
;	E:\Works\NSHET\sys.c:56: void delay_us(uint16_t t) {
;	-----------------------------------------
;	 function delay_us
;	-----------------------------------------
_delay_us:
	mov	r7,dph
	mov	a,dpl
	mov	dptr,#_delay_us_t_65536_30
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	E:\Works\NSHET\sys.c:57: while (t) {
	mov	dptr,#_delay_us_t_65536_30
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
00101$:
	mov	a,r6
	orl	a,r7
	jz	00108$
;	E:\Works\NSHET\sys.c:58: ++ SAFE_MOD;
	inc	_SAFE_MOD
;	E:\Works\NSHET\sys.c:61: ++ SAFE_MOD;
	inc	_SAFE_MOD
;	E:\Works\NSHET\sys.c:64: ++ SAFE_MOD;
	inc	_SAFE_MOD
;	E:\Works\NSHET\sys.c:67: ++ SAFE_MOD;
	inc	_SAFE_MOD
;	E:\Works\NSHET\sys.c:70: ++ SAFE_MOD;
	inc	_SAFE_MOD
;	E:\Works\NSHET\sys.c:73: ++ SAFE_MOD;
	inc	_SAFE_MOD
;	E:\Works\NSHET\sys.c:76: ++ SAFE_MOD;
	inc	_SAFE_MOD
;	E:\Works\NSHET\sys.c:79: ++ SAFE_MOD;
	inc	_SAFE_MOD
;	E:\Works\NSHET\sys.c:82: ++ SAFE_MOD;
	inc	_SAFE_MOD
;	E:\Works\NSHET\sys.c:85: ++ SAFE_MOD;
	inc	_SAFE_MOD
;	E:\Works\NSHET\sys.c:88: ++ SAFE_MOD;
	inc	_SAFE_MOD
;	E:\Works\NSHET\sys.c:91: ++ SAFE_MOD;
	inc	_SAFE_MOD
;	E:\Works\NSHET\sys.c:94: ++ SAFE_MOD;
	inc	_SAFE_MOD
;	E:\Works\NSHET\sys.c:97: ++ SAFE_MOD;
	inc	_SAFE_MOD
;	E:\Works\NSHET\sys.c:100: ++ SAFE_MOD;
	inc	_SAFE_MOD
;	E:\Works\NSHET\sys.c:103: ++ SAFE_MOD;
	inc	_SAFE_MOD
;	E:\Works\NSHET\sys.c:106: ++ SAFE_MOD;
	inc	_SAFE_MOD
;	E:\Works\NSHET\sys.c:109: ++ SAFE_MOD;
	inc	_SAFE_MOD
;	E:\Works\NSHET\sys.c:112: ++ SAFE_MOD;
	inc	_SAFE_MOD
;	E:\Works\NSHET\sys.c:127: -- t;
	dec	r6
	cjne	r6,#0xff,00116$
	dec	r7
00116$:
	mov	dptr,#_delay_us_t_65536_30
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	sjmp	00101$
00108$:
	mov	dptr,#_delay_us_t_65536_30
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	E:\Works\NSHET\sys.c:129: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'sysTickConfig'
;------------------------------------------------------------
;	E:\Works\NSHET\sys.c:131: void sysTickConfig() {
;	-----------------------------------------
;	 function sysTickConfig
;	-----------------------------------------
_sysTickConfig:
;	E:\Works\NSHET\sys.c:132: T2MOD &= ~bT2_CLK;
	anl	_T2MOD,#0xbf
;	E:\Works\NSHET\sys.c:133: C_T2 = 0;
;	assignBit
	clr	_C_T2
;	E:\Works\NSHET\sys.c:134: RCAP2 = T2COUNT = 0xFFFF - (uint16_t) (FREQ_SYS / 12 / 1000);   // 1000Hz
	mov	((_T2COUNT >> 0) & 0xFF),#0x5f
	mov	((_T2COUNT >> 8) & 0xFF),#0xf0
	mov	((_RCAP2 >> 0) & 0xFF),#0x5f
	mov	((_RCAP2 >> 8) & 0xFF),#0xf0
;	E:\Works\NSHET\sys.c:135: TR2 = 1;
;	assignBit
	setb	_TR2
;	E:\Works\NSHET\sys.c:136: ET2 = 1;
;	assignBit
	setb	_ET2
;	E:\Works\NSHET\sys.c:137: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function '__tim2_interrupt'
;------------------------------------------------------------
;	E:\Works\NSHET\sys.c:141: void __tim2_interrupt() __interrupt (INT_NO_TMR2) __using (1) {
;	-----------------------------------------
;	 function __tim2_interrupt
;	-----------------------------------------
___tim2_interrupt:
	ar7 = 0x0f
	ar6 = 0x0e
	ar5 = 0x0d
	ar4 = 0x0c
	ar3 = 0x0b
	ar2 = 0x0a
	ar1 = 0x09
	ar0 = 0x08
	push	acc
	push	dpl
	push	dph
	push	psw
	mov	psw,#0x08
;	E:\Works\NSHET\sys.c:142: if (TF2) {
;	E:\Works\NSHET\sys.c:143: TF2 = 0;
;	assignBit
	jbc	_TF2,00109$
	sjmp	00103$
00109$:
;	E:\Works\NSHET\sys.c:144: sysTickCount += 1;
	mov	dptr,#_sysTickCount
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
	mov	dptr,#_sysTickCount
	mov	a,#0x01
	add	a,r4
	movx	@dptr,a
	clr	a
	addc	a,r5
	inc	dptr
	movx	@dptr,a
	clr	a
	addc	a,r6
	inc	dptr
	movx	@dptr,a
	clr	a
	addc	a,r7
	inc	dptr
	movx	@dptr,a
00103$:
;	E:\Works\NSHET\sys.c:146: }
	pop	psw
	pop	dph
	pop	dpl
	pop	acc
	reti
;	eliminated unneeded push/pop b
;------------------------------------------------------------
;Allocation info for local variables in function 'sysGetTickCount'
;------------------------------------------------------------
;	E:\Works\NSHET\sys.c:148: uint32_t sysGetTickCount() {
;	-----------------------------------------
;	 function sysGetTickCount
;	-----------------------------------------
_sysGetTickCount:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	E:\Works\NSHET\sys.c:149: return sysTickCount;
	mov	dptr,#_sysTickCount
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
;	E:\Works\NSHET\sys.c:150: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'uart0Config'
;------------------------------------------------------------
;baud                      Allocated with name '_uart0Config_baud_65536_37'
;------------------------------------------------------------
;	E:\Works\NSHET\sys.c:154: void uart0Config(uint32_t baud) {
;	-----------------------------------------
;	 function uart0Config
;	-----------------------------------------
_uart0Config:
	mov	r7,dpl
	mov	r6,dph
	mov	r5,b
	mov	r4,a
	mov	dptr,#_uart0Config_baud_65536_37
	mov	a,r7
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
;	E:\Works\NSHET\sys.c:155: SM0 = 0; SM1 = 1; SM2 = 0;
;	assignBit
	clr	_SM0
;	assignBit
	setb	_SM1
;	assignBit
	clr	_SM2
;	E:\Works\NSHET\sys.c:156: TCLK = 0; RCLK = 0;
;	assignBit
	clr	_TCLK
;	assignBit
	clr	_RCLK
;	E:\Works\NSHET\sys.c:157: PCON |= SMOD;
	orl	_PCON,#0x80
;	E:\Works\NSHET\sys.c:158: x = 10 * FREQ_SYS / baud / 16;
	mov	dptr,#_uart0Config_baud_65536_37
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
	mov	dptr,#__divulong_PARM_2
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
	mov	dptr,#0x3800
	mov	b,#0x9c
	mov	a,#0x1c
	lcall	__divulong
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	a,r5
	swap	a
	xch	a,r4
	swap	a
	anl	a,#0x0f
	xrl	a,r4
	xch	a,r4
	anl	a,#0x0f
	xch	a,r4
	xrl	a,r4
	xch	a,r4
	mov	r5,a
	mov	a,r6
	swap	a
	anl	a,#0xf0
	orl	a,r5
	mov	r5,a
	mov	a,r7
	swap	a
	xch	a,r6
	swap	a
	anl	a,#0x0f
	xrl	a,r6
	xch	a,r6
	anl	a,#0x0f
	xch	a,r6
	xrl	a,r6
	xch	a,r6
	mov	r7,a
;	E:\Works\NSHET\sys.c:160: x2 = x % 10;
	mov	dptr,#__modulong_PARM_2
	mov	a,#0x0a
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	__modulong
	mov	r0,dpl
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	mov	dptr,#_x2
	mov	a,r0
	movx	@dptr,a
;	E:\Works\NSHET\sys.c:161: x /= 10;
	mov	dptr,#__divulong_PARM_2
	mov	a,#0x0a
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	push	ar0
	lcall	__divulong
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	pop	ar0
	mov	dptr,#_x
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
;	E:\Works\NSHET\sys.c:162: if (x2 >= 5) x++;
	cjne	r0,#0x05,00109$
00109$:
	jc	00102$
	mov	dptr,#_x
	mov	a,#0x01
	add	a,r4
	movx	@dptr,a
	clr	a
	addc	a,r5
	inc	dptr
	movx	@dptr,a
	clr	a
	addc	a,r6
	inc	dptr
	movx	@dptr,a
	clr	a
	addc	a,r7
	inc	dptr
	movx	@dptr,a
00102$:
;	E:\Works\NSHET\sys.c:164: TMOD = TMOD & ~bT1_GATE & ~bT1_CT & ~MASK_T1_MOD | bT1_M1;
	mov	a,#0x0f
	anl	a,_TMOD
	orl	a,#0x20
	mov	_TMOD,a
;	E:\Works\NSHET\sys.c:165: T2MOD |= (bTMR_CLK | bT1_CLK);
	orl	_T2MOD,#0xa0
;	E:\Works\NSHET\sys.c:166: TH1 = 0 - x;
	mov	dptr,#_x
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	inc	dptr
	movx	a,@dptr
	inc	dptr
	movx	a,@dptr
	clr	c
	clr	a
	subb	a,r4
	mov	_TH1,a
;	E:\Works\NSHET\sys.c:167: TR1 = 1;
;	assignBit
	setb	_TR1
;	E:\Works\NSHET\sys.c:168: TI = 1;
;	assignBit
	setb	_TI
;	E:\Works\NSHET\sys.c:169: REN = 1;
;	assignBit
	setb	_REN
;	E:\Works\NSHET\sys.c:170: ES = 1;
;	assignBit
	setb	_ES
;	E:\Works\NSHET\sys.c:171: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function '__uart0_interrupt'
;------------------------------------------------------------
;	E:\Works\NSHET\sys.c:182: void __uart0_interrupt() __interrupt (INT_NO_UART0) __using (1) {
;	-----------------------------------------
;	 function __uart0_interrupt
;	-----------------------------------------
___uart0_interrupt:
	ar7 = 0x0f
	ar6 = 0x0e
	ar5 = 0x0d
	ar4 = 0x0c
	ar3 = 0x0b
	ar2 = 0x0a
	ar1 = 0x09
	ar0 = 0x08
	push	acc
	push	b
	push	dpl
	push	dph
	push	psw
	mov	psw,#0x08
;	E:\Works\NSHET\sys.c:183: if (TI) {
;	E:\Works\NSHET\sys.c:184: TI = 0;
;	assignBit
	jbc	_TI,00134$
	sjmp	00102$
00134$:
;	E:\Works\NSHET\sys.c:185: busy = 0;
;	assignBit
	clr	_busy
00102$:
;	E:\Works\NSHET\sys.c:187: if (RI) {
;	E:\Works\NSHET\sys.c:188: RI = 0;
;	assignBit
	jbc	_RI,00135$
	sjmp	00112$
00135$:
;	E:\Works\NSHET\sys.c:189: if (block_recv) {
	jnb	_block_recv,00108$
;	E:\Works\NSHET\sys.c:190: block_recv_ptr[block_recv_pos] = SBUF;
	mov	dptr,#_block_recv_ptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_block_recv_pos
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	a,r3
	add	a,r5
	mov	r5,a
	mov	a,r4
	addc	a,r6
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,_SBUF
	lcall	__gptrput
;	E:\Works\NSHET\sys.c:191: block_recv_pos++;
	mov	dptr,#_block_recv_pos
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0x00
	movx	@dptr,a
;	E:\Works\NSHET\sys.c:192: if (block_recv_pos >= block_recv_siz)
	mov	dptr,#_block_recv_pos
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_block_recv_siz
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	clr	c
	mov	a,r6
	subb	a,r4
	mov	a,r7
	subb	a,r5
	jc	00112$
;	E:\Works\NSHET\sys.c:193: block_recv = 0;
;	assignBit
	clr	_block_recv
	sjmp	00112$
00108$:
;	E:\Works\NSHET\sys.c:194: } else if (recPtr0 < UART_BUF_SIZE) {
	mov	dptr,#_recPtr0
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x20,00138$
00138$:
	jnc	00112$
;	E:\Works\NSHET\sys.c:195: recBuf0[recPtr0] = SBUF;
	mov	dptr,#_recPtr0
	movx	a,@dptr
	add	a,#_recBuf0
	mov	dpl,a
	clr	a
	addc	a,#(_recBuf0 >> 8)
	mov	dph,a
	mov	a,_SBUF
	movx	@dptr,a
;	E:\Works\NSHET\sys.c:196: recPtr0 += 1;
	mov	dptr,#_recPtr0
	movx	a,@dptr
	mov	r7,a
	inc	a
	movx	@dptr,a
00112$:
;	E:\Works\NSHET\sys.c:199: }
	pop	psw
	pop	dph
	pop	dpl
	pop	b
	pop	acc
	reti
;------------------------------------------------------------
;Allocation info for local variables in function 'uart0Send'
;------------------------------------------------------------
;data                      Allocated with name '_uart0Send_data_65536_44'
;------------------------------------------------------------
;	E:\Works\NSHET\sys.c:201: void uart0Send(uint8_t data) {
;	-----------------------------------------
;	 function uart0Send
;	-----------------------------------------
_uart0Send:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	mov	a,dpl
	mov	dptr,#_uart0Send_data_65536_44
	movx	@dptr,a
;	E:\Works\NSHET\sys.c:202: while (busy);
00101$:
	jb	_busy,00101$
;	E:\Works\NSHET\sys.c:203: busy = 1;
;	assignBit
	setb	_busy
;	E:\Works\NSHET\sys.c:204: SBUF = data;
	mov	dptr,#_uart0Send_data_65536_44
	movx	a,@dptr
	mov	_SBUF,a
;	E:\Works\NSHET\sys.c:205: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'uart0Write'
;------------------------------------------------------------
;s                         Allocated with name '_uart0Write_s_65536_46'
;------------------------------------------------------------
;	E:\Works\NSHET\sys.c:207: void uart0Write(char* s) {
;	-----------------------------------------
;	 function uart0Write
;	-----------------------------------------
_uart0Write:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_uart0Write_s_65536_46
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	E:\Works\NSHET\sys.c:208: while (*s) {
	mov	dptr,#_uart0Write_s_65536_46
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
00101$:
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	jz	00108$
;	E:\Works\NSHET\sys.c:209: uart0Send(*s++);
	inc	r5
	cjne	r5,#0x00,00116$
	inc	r6
00116$:
	mov	dptr,#_uart0Write_s_65536_46
	mov	a,r5
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	dpl,r4
	push	ar7
	push	ar6
	push	ar5
	lcall	_uart0Send
	pop	ar5
	pop	ar6
	pop	ar7
	sjmp	00101$
00108$:
	mov	dptr,#_uart0Write_s_65536_46
	mov	a,r5
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	E:\Works\NSHET\sys.c:211: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'uart0Get'
;------------------------------------------------------------
;	E:\Works\NSHET\sys.c:213: uint8_t uart0Get() {
;	-----------------------------------------
;	 function uart0Get
;	-----------------------------------------
_uart0Get:
;	E:\Works\NSHET\sys.c:214: if (recPtr0 > 0) {
	mov	dptr,#_recPtr0
	movx	a,@dptr
	jz	00104$
;	E:\Works\NSHET\sys.c:215: sbuf = recBuf0[0];
	mov	dptr,#_recBuf0
	movx	a,@dptr
	mov	dptr,#_sbuf
	movx	@dptr,a
;	E:\Works\NSHET\sys.c:216: recPtr0 -= 1;
	mov	dptr,#_recPtr0
	movx	a,@dptr
	dec	a
	movx	@dptr,a
;	E:\Works\NSHET\sys.c:217: if (recPtr0 > 0)
	movx	a,@dptr
	jz	00102$
;	E:\Works\NSHET\sys.c:218: mmov(recBuf0, recBuf0 + 1, recPtr0);
	mov	dptr,#_recPtr0
	movx	a,@dptr
	mov	r7,a
	mov	r6,#0x00
	mov	dptr,#_mmov_PARM_2
	mov	a,#(_recBuf0 + 0x0001)
	movx	@dptr,a
	mov	a,#((_recBuf0 + 0x0001) >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_mmov_PARM_3
	mov	a,r7
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_recBuf0
	mov	b,#0x00
	lcall	_mmov
00102$:
;	E:\Works\NSHET\sys.c:219: mset(recBuf0 + recPtr0, 0, 1);
	mov	dptr,#_recPtr0
	movx	a,@dptr
	add	a,#_recBuf0
	mov	r7,a
	clr	a
	addc	a,#(_recBuf0 >> 8)
	mov	r6,a
	mov	r5,#0x00
	mov	dptr,#_mset_PARM_2
	clr	a
	movx	@dptr,a
	mov	dptr,#_mset_PARM_3
	inc	a
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl,r7
	mov	dph,r6
	mov	b,r5
	lcall	_mset
;	E:\Works\NSHET\sys.c:220: return sbuf;
	mov	dptr,#_sbuf
	movx	a,@dptr
	mov	dpl,a
	ret
00104$:
;	E:\Works\NSHET\sys.c:222: return 0;
	mov	dpl,#0x00
;	E:\Works\NSHET\sys.c:223: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'uart0Gets'
;------------------------------------------------------------
;len                       Allocated with name '_uart0Gets_PARM_2'
;dat                       Allocated with name '_uart0Gets_dat_65536_51'
;------------------------------------------------------------
;	E:\Works\NSHET\sys.c:225: uint8_t uart0Gets(uint8_t* dat, uint8_t len) {
;	-----------------------------------------
;	 function uart0Gets
;	-----------------------------------------
_uart0Gets:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_uart0Gets_dat_65536_51
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	E:\Works\NSHET\sys.c:226: if (recPtr0 >= len) {
	mov	dptr,#_recPtr0
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_uart0Gets_PARM_2
	movx	a,@dptr
	mov	r6,a
	clr	c
	mov	a,r7
	subb	a,r6
	jnc	00116$
	ljmp	00104$
00116$:
;	E:\Works\NSHET\sys.c:227: mmov(dat, recBuf0, len);
	mov	dptr,#_uart0Gets_dat_65536_51
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_mmov_PARM_2
	mov	a,#_recBuf0
	movx	@dptr,a
	mov	a,#(_recBuf0 >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	ar2,r6
	mov	r3,#0x00
	mov	dptr,#_mmov_PARM_3
	mov	a,r2
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
	mov	dpl,r4
	mov	dph,r5
	mov	b,r7
	push	ar6
	push	ar3
	push	ar2
	lcall	_mmov
	pop	ar2
	pop	ar3
	pop	ar6
;	E:\Works\NSHET\sys.c:228: recPtr0 -= len;
	mov	dptr,#_recPtr0
	movx	a,@dptr
	clr	c
	subb	a,r6
	movx	@dptr,a
;	E:\Works\NSHET\sys.c:229: if (recPtr0 > 0)
	movx	a,@dptr
	jz	00102$
;	E:\Works\NSHET\sys.c:230: mmov(recBuf0, recBuf0 + len, recPtr0);
	mov	a,r6
	add	a,#_recBuf0
	mov	r6,a
	clr	a
	addc	a,#(_recBuf0 >> 8)
	mov	r7,a
	mov	r5,#0x00
	mov	dptr,#_recPtr0
	movx	a,@dptr
	mov	r1,a
	mov	r4,#0x00
	mov	dptr,#_mmov_PARM_2
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_mmov_PARM_3
	mov	a,r1
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_recBuf0
	mov	b,#0x00
	push	ar3
	push	ar2
	lcall	_mmov
	pop	ar2
	pop	ar3
00102$:
;	E:\Works\NSHET\sys.c:231: mset(recBuf0 + recPtr0, 0, len);
	mov	dptr,#_recPtr0
	movx	a,@dptr
	add	a,#_recBuf0
	mov	r7,a
	clr	a
	addc	a,#(_recBuf0 >> 8)
	mov	r6,a
	mov	r5,#0x00
	mov	dptr,#_mset_PARM_2
	clr	a
	movx	@dptr,a
	mov	dptr,#_mset_PARM_3
	mov	a,r2
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
	mov	dpl,r7
	mov	dph,r6
	mov	b,r5
	lcall	_mset
;	E:\Works\NSHET\sys.c:232: return 1;
	mov	dpl,#0x01
	ret
00104$:
;	E:\Works\NSHET\sys.c:234: return 0;
	mov	dpl,#0x00
;	E:\Works\NSHET\sys.c:235: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'uart0BlockRecv'
;------------------------------------------------------------
;siz                       Allocated with name '_uart0BlockRecv_PARM_2'
;ptr                       Allocated with name '_uart0BlockRecv_ptr_65536_54'
;------------------------------------------------------------
;	E:\Works\NSHET\sys.c:237: uint16_t uart0BlockRecv(uint8_t* ptr, uint16_t siz) {
;	-----------------------------------------
;	 function uart0BlockRecv
;	-----------------------------------------
_uart0BlockRecv:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_uart0BlockRecv_ptr_65536_54
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	E:\Works\NSHET\sys.c:238: if (ptr != NULL) {
	mov	dptr,#_uart0BlockRecv_ptr_65536_54
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_uart0BlockRecv_ptr_65536_54
	movx	a,@dptr
	mov	b,a
	inc	dptr
	movx	a,@dptr
	orl	a,b
	jz	00105$
;	E:\Works\NSHET\sys.c:239: block_recv_ptr = ptr;
	mov	dptr,#_block_recv_ptr
	mov	a,r5
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	E:\Works\NSHET\sys.c:240: block_recv_pos = 0;
	mov	dptr,#_block_recv_pos
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	E:\Works\NSHET\sys.c:241: block_recv_siz = siz;
	mov	dptr,#_uart0BlockRecv_PARM_2
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_block_recv_siz
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	E:\Works\NSHET\sys.c:242: block_recv = 1;
;	assignBit
	setb	_block_recv
	sjmp	00106$
00105$:
;	E:\Works\NSHET\sys.c:243: } else if (siz != 0) {
	mov	dptr,#_uart0BlockRecv_PARM_2
	movx	a,@dptr
	mov	b,a
	inc	dptr
	movx	a,@dptr
	orl	a,b
	jz	00102$
;	E:\Works\NSHET\sys.c:244: return block_recv_pos;
	mov	dptr,#_block_recv_pos
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r6
	mov	dph,r7
	ret
00102$:
;	E:\Works\NSHET\sys.c:246: block_recv = 0;
;	assignBit
	clr	_block_recv
;	E:\Works\NSHET\sys.c:247: block_recv_ptr = NULL;
	mov	dptr,#_block_recv_ptr
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	E:\Works\NSHET\sys.c:248: block_recv_pos = 0;
	mov	dptr,#_block_recv_pos
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	E:\Works\NSHET\sys.c:249: block_recv_siz = 0;
	mov	dptr,#_block_recv_siz
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
00106$:
;	E:\Works\NSHET\sys.c:251: return 0;
	mov	dptr,#0x0000
;	E:\Works\NSHET\sys.c:252: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'uart1Config'
;------------------------------------------------------------
;baud                      Allocated with name '_uart1Config_baud_65536_59'
;DIV                       Allocated with name '_uart1Config_DIV_65536_60'
;------------------------------------------------------------
;	E:\Works\NSHET\sys.c:254: void uart1Config(uint32_t baud) {
;	-----------------------------------------
;	 function uart1Config
;	-----------------------------------------
_uart1Config:
	mov	r7,dpl
	mov	r6,dph
	mov	r5,b
	mov	r4,a
	mov	dptr,#_uart1Config_baud_65536_59
	mov	a,r7
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
;	E:\Works\NSHET\sys.c:257: SER1_LCR |= bLCR_DLAB;
	orl	_SER1_LCR,#0x80
;	E:\Works\NSHET\sys.c:258: SER1_DIV = DIV;
	mov	_SER1_ADDR,#0x01
;	E:\Works\NSHET\sys.c:259: x = 10 * FREQ_SYS * 2 / DIV / 16 / baud;                             
	mov	dptr,#_uart1Config_baud_65536_59
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
	mov	dptr,#__divulong_PARM_2
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
;	E:\Works\NSHET\sys.c:260: x2 = x % 10;
	mov	dptr,#0x8700
	mov	b,#0x93
	mov	a,#0x03
	lcall	__divulong
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	dptr,#__modulong_PARM_2
	mov	a,#0x0a
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	__modulong
	mov	r0,dpl
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	mov	dptr,#_x2
	mov	a,r0
	movx	@dptr,a
;	E:\Works\NSHET\sys.c:261: x /= 10;
	mov	dptr,#__divulong_PARM_2
	mov	a,#0x0a
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	push	ar0
	lcall	__divulong
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	pop	ar0
	mov	dptr,#_x
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
;	E:\Works\NSHET\sys.c:262: if (x2 >= 5) x++;
	cjne	r0,#0x05,00109$
00109$:
	jc	00102$
	mov	dptr,#_x
	mov	a,#0x01
	add	a,r4
	movx	@dptr,a
	clr	a
	addc	a,r5
	inc	dptr
	movx	@dptr,a
	clr	a
	addc	a,r6
	inc	dptr
	movx	@dptr,a
	clr	a
	addc	a,r7
	inc	dptr
	movx	@dptr,a
00102$:
;	E:\Works\NSHET\sys.c:263: SER1_DLM = x >> 8;
	mov	dptr,#_x
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	inc	dptr
	movx	a,@dptr
	mov	_SER1_IER,r5
;	E:\Works\NSHET\sys.c:264: SER1_DLL = x & 0xFF;
	mov	_SER1_FIFO,r4
;	E:\Works\NSHET\sys.c:265: SER1_LCR &= ~bLCR_DLAB;
	anl	_SER1_LCR,#0x7f
;	E:\Works\NSHET\sys.c:267: XBUS_AUX |= bALE_CLK_EN;
	orl	_XBUS_AUX,#0x10
;	E:\Works\NSHET\sys.c:269: SER1_LCR |= MASK_U1_WORD_SZ;
	orl	_SER1_LCR,#0x03
;	E:\Works\NSHET\sys.c:270: SER1_LCR &= ~(bLCR_PAR_EN | bLCR_STOP_BIT);
	anl	_SER1_LCR,#0xf3
;	E:\Works\NSHET\sys.c:272: SER1_IER |= ((2 << 4) & MASK_U1_PIN_MOD);
	orl	_SER1_IER,#0x20
;	E:\Works\NSHET\sys.c:274: SER1_MCR |= bMCR_OUT2;
	orl	_SER1_MCR,#0x08
;	E:\Works\NSHET\sys.c:275: x2 = SER1_IIR;
	mov	dptr,#_x2
	mov	a,_SER1_IIR
	movx	@dptr,a
;	E:\Works\NSHET\sys.c:277: SER1_ADDR |= 0xFF;
	mov	a,_SER1_ADDR
	mov	_SER1_ADDR,#0xff
;	E:\Works\NSHET\sys.c:279: IE_UART1 = 1;
;	assignBit
	setb	_IE_UART1
;	E:\Works\NSHET\sys.c:281: sysTickConfig();
;	E:\Works\NSHET\sys.c:282: }
	ljmp	_sysTickConfig
;------------------------------------------------------------
;Allocation info for local variables in function 'uart1Send'
;------------------------------------------------------------
;data                      Allocated with name '_uart1Send_data_65536_61'
;------------------------------------------------------------
;	E:\Works\NSHET\sys.c:284: void uart1Send(uint8_t data) {
;	-----------------------------------------
;	 function uart1Send
;	-----------------------------------------
_uart1Send:
	mov	a,dpl
	mov	dptr,#_uart1Send_data_65536_61
	movx	@dptr,a
;	E:\Works\NSHET\sys.c:285: while ((SER1_LSR & bLSR_T_FIFO_EMP) == 0);
00101$:
	mov	a,_SER1_LSR
	jnb	acc.5,00101$
;	E:\Works\NSHET\sys.c:286: SER1_THR = data;
	mov	dptr,#_uart1Send_data_65536_61
	movx	a,@dptr
	mov	_SER1_FIFO,a
;	E:\Works\NSHET\sys.c:287: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'uart1Write'
;------------------------------------------------------------
;s                         Allocated with name '_uart1Write_s_65536_63'
;------------------------------------------------------------
;	E:\Works\NSHET\sys.c:289: void uart1Write(char* s) {
;	-----------------------------------------
;	 function uart1Write
;	-----------------------------------------
_uart1Write:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_uart1Write_s_65536_63
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	E:\Works\NSHET\sys.c:290: while (*s) {
	mov	dptr,#_uart1Write_s_65536_63
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
00101$:
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	jz	00108$
;	E:\Works\NSHET\sys.c:291: uart1Send(*s++);
	inc	r5
	cjne	r5,#0x00,00116$
	inc	r6
00116$:
	mov	dptr,#_uart1Write_s_65536_63
	mov	a,r5
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	dpl,r4
	push	ar7
	push	ar6
	push	ar5
	lcall	_uart1Send
	pop	ar5
	pop	ar6
	pop	ar7
	sjmp	00101$
00108$:
	mov	dptr,#_uart1Write_s_65536_63
	mov	a,r5
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	E:\Works\NSHET\sys.c:293: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'uart1Get'
;------------------------------------------------------------
;	E:\Works\NSHET\sys.c:296: uint8_t uart1Get() {
;	-----------------------------------------
;	 function uart1Get
;	-----------------------------------------
_uart1Get:
;	E:\Works\NSHET\sys.c:297: u1t = sysGetTickCount();
	lcall	_sysGetTickCount
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	dptr,#_u1t
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
;	E:\Works\NSHET\sys.c:298: while ((SER1_LSR & bLSR_DATA_RDY) == 0) {
00103$:
	mov	a,_SER1_LSR
	jb	acc.0,00105$
;	E:\Works\NSHET\sys.c:299: if (sysGetTickCount() - u1t > UART1_TIMEOUT) {
	lcall	_sysGetTickCount
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	dptr,#_u1t
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
	mov	a,r4
	clr	c
	subb	a,r0
	mov	r4,a
	mov	a,r5
	subb	a,r1
	mov	r5,a
	mov	a,r6
	subb	a,r2
	mov	r6,a
	mov	a,r7
	subb	a,r3
	mov	r7,a
	clr	c
	mov	a,#0xe8
	subb	a,r4
	mov	a,#0x03
	subb	a,r5
	clr	a
	subb	a,r6
	clr	a
	subb	a,r7
	jnc	00103$
;	E:\Works\NSHET\sys.c:300: u1t = 0;
	mov	dptr,#_u1t
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	E:\Works\NSHET\sys.c:301: break;
00105$:
;	E:\Works\NSHET\sys.c:304: return SER1_RBR;
	mov	dpl,_SER1_FIFO
;	E:\Works\NSHET\sys.c:305: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'uart1Gets'
;------------------------------------------------------------
;len                       Allocated with name '_uart1Gets_PARM_2'
;dat                       Allocated with name '_uart1Gets_dat_65536_69'
;------------------------------------------------------------
;	E:\Works\NSHET\sys.c:308: uint8_t uart1Gets(uint8_t* dat, uint8_t len) {
;	-----------------------------------------
;	 function uart1Gets
;	-----------------------------------------
_uart1Gets:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_uart1Gets_dat_65536_69
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	E:\Works\NSHET\sys.c:309: for (u1c = 0; u1c < len; u1c++) {
	mov	dptr,#_u1c
	clr	a
	movx	@dptr,a
	mov	dptr,#_uart1Gets_dat_65536_69
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_uart1Gets_PARM_2
	movx	a,@dptr
	mov	r4,a
00105$:
	mov	dptr,#_u1c
	movx	a,@dptr
	mov	r3,a
	clr	c
	subb	a,r4
	jnc	00103$
;	E:\Works\NSHET\sys.c:310: dat[u1c] = uart1Get();
	mov	a,r3
	add	a,r5
	mov	r1,a
	clr	a
	addc	a,r6
	mov	r2,a
	mov	ar3,r7
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	push	ar1
	lcall	_uart1Get
	mov	r0,dpl
	pop	ar1
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	mov	dpl,r1
	mov	dph,r2
	mov	b,r3
	mov	a,r0
	lcall	__gptrput
;	E:\Works\NSHET\sys.c:311: if (u1t == 0) return 0;
	mov	dptr,#_u1t
	movx	a,@dptr
	mov	b,a
	inc	dptr
	movx	a,@dptr
	orl	b,a
	inc	dptr
	movx	a,@dptr
	orl	b,a
	inc	dptr
	movx	a,@dptr
	orl	a,b
	jnz	00106$
	mov	dpl,a
	ret
00106$:
;	E:\Works\NSHET\sys.c:309: for (u1c = 0; u1c < len; u1c++) {
	mov	dptr,#_u1c
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
	sjmp	00105$
00103$:
;	E:\Works\NSHET\sys.c:313: return 1;
	mov	dpl,#0x01
;	E:\Works\NSHET\sys.c:314: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'pwm3Init'
;------------------------------------------------------------
;freq                      Allocated with name '_pwm3Init_freq_65536_73'
;------------------------------------------------------------
;	E:\Works\NSHET\sys.c:316: void pwm3Init(uint32_t freq) {
;	-----------------------------------------
;	 function pwm3Init
;	-----------------------------------------
_pwm3Init:
	mov	r7,dpl
	mov	r6,dph
	mov	r5,b
	mov	r4,a
	mov	dptr,#_pwm3Init_freq_65536_73
	mov	a,r7
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
;	E:\Works\NSHET\sys.c:317: P1_DIR |= bPWM3;
	orl	_P1_DIR,#0x04
;	E:\Works\NSHET\sys.c:318: PORT_CFG &= ~bP1_OC;
	anl	_PORT_CFG,#0xfd
;	E:\Works\NSHET\sys.c:320: T3_SETUP |= bT3_EN_CK_SE;
	orl	_T3_SETUP,#0x01
;	E:\Works\NSHET\sys.c:321: x = FREQ_SYS / (freq * 100);
	mov	dptr,#_pwm3Init_freq_65536_73
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
	mov	dptr,#__mullong_PARM_2
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
	mov	dptr,#(0x64&0x00ff)
	clr	a
	mov	b,a
	lcall	__mullong
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	dptr,#__divulong_PARM_2
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
	mov	dptr,#0x6c00
	mov	b,#0xdc
	mov	a,#0x02
	lcall	__divulong
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	dptr,#_x
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
;	E:\Works\NSHET\sys.c:322: T3_CK_SE = x & 0x0FFF;
	mov	((_T3_COUNT >> 0) & 0xFF),r4
	mov	a,#0x0f
	anl	a,r5
	mov	((_T3_COUNT >> 8) & 0xFF),a
;	E:\Works\NSHET\sys.c:323: T3_SETUP &= ~bT3_EN_CK_SE;
	anl	_T3_SETUP,#0xfe
;	E:\Works\NSHET\sys.c:324: T3_END = 100;
	mov	((_T3_END >> 0) & 0xFF),#0x64
	mov	((_T3_END >> 8) & 0xFF),#0x00
;	E:\Works\NSHET\sys.c:325: T3_CTRL |= (bT3_OUT_EN | bT3_PWM_POLAR);
	orl	_T3_CTRL,#0x28
;	E:\Works\NSHET\sys.c:326: T3_CTRL &= ~bT3_CLR_ALL;
	anl	_T3_CTRL,#0xfd
;	E:\Works\NSHET\sys.c:327: T3_CTRL |= bT3_CNT_EN;
	orl	_T3_CTRL,#0x04
;	E:\Works\NSHET\sys.c:328: T3_FIFO = 0;
	clr	a
	mov	((_T3_FIFO >> 0) & 0xFF),a
	mov	((_T3_FIFO >> 8) & 0xFF),a
;	E:\Works\NSHET\sys.c:329: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'pwm3Duty'
;------------------------------------------------------------
;duty                      Allocated with name '_pwm3Duty_duty_65536_75'
;------------------------------------------------------------
;	E:\Works\NSHET\sys.c:331: void pwm3Duty(uint8_t duty) {
;	-----------------------------------------
;	 function pwm3Duty
;	-----------------------------------------
_pwm3Duty:
	mov	a,dpl
	mov	dptr,#_pwm3Duty_duty_65536_75
	movx	@dptr,a
;	E:\Works\NSHET\sys.c:332: T3_FIFO = duty;
	movx	a,@dptr
	mov	r7,a
	mov	((_T3_FIFO >> 0) & 0xFF),r7
	mov	((_T3_FIFO >> 8) & 0xFF),#0x00
;	E:\Works\NSHET\sys.c:333: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'adcInit'
;------------------------------------------------------------
;	E:\Works\NSHET\sys.c:335: void adcInit() {
;	-----------------------------------------
;	 function adcInit
;	-----------------------------------------
_adcInit:
;	E:\Works\NSHET\sys.c:336: P1_IE = 0x3F; // P16 P17
	mov	_P1_IE,#0x3f
;	E:\Works\NSHET\sys.c:337: ADC_SETUP |= bADC_POWER_EN;
	orl	_ADC_SETUP,#0x04
;	E:\Works\NSHET\sys.c:338: ADC_CK_SE = FREQ_SYS / 8000000;
	mov	_ADC_CK_SE,#0x06
;	E:\Works\NSHET\sys.c:339: delay_us(100);
	mov	dptr,#0x0064
;	E:\Works\NSHET\sys.c:340: }
	ljmp	_delay_us
;------------------------------------------------------------
;Allocation info for local variables in function 'adcGet'
;------------------------------------------------------------
;channel                   Allocated with name '_adcGet_channel_65536_78'
;------------------------------------------------------------
;	E:\Works\NSHET\sys.c:342: uint16_t adcGet(uint8_t channel) {
;	-----------------------------------------
;	 function adcGet
;	-----------------------------------------
_adcGet:
	mov	a,dpl
	mov	dptr,#_adcGet_channel_65536_78
	movx	@dptr,a
;	E:\Works\NSHET\sys.c:343: channel &= 0x7;
	movx	a,@dptr
	anl	acc,#0x07
	movx	@dptr,a
;	E:\Works\NSHET\sys.c:344: ADC_CHANN = 1 << channel;
	mov	dptr,#_adcGet_channel_65536_78
	movx	a,@dptr
	mov	r7,a
	mov	b,r7
	inc	b
	mov	a,#0x01
	sjmp	00116$
00114$:
	add	a,acc
00116$:
	djnz	b,00114$
	mov	_ADC_CHANN,a
;	E:\Works\NSHET\sys.c:345: ADC_CTRL |= bADC_SAMPLE;
	orl	_ADC_CTRL,#0x80
;	E:\Works\NSHET\sys.c:346: delay_us(50);
	mov	dptr,#0x0032
	lcall	_delay_us
;	E:\Works\NSHET\sys.c:347: ADC_CTRL &= ~bADC_SAMPLE;
	anl	_ADC_CTRL,#0x7f
;	E:\Works\NSHET\sys.c:348: while ((ADC_STAT & bADC_IF_ACT) == 0);
00101$:
	mov	a,_ADC_STAT
	jnb	acc.4,00101$
;	E:\Works\NSHET\sys.c:349: ADC_STAT |= bADC_IF_ACT;
	orl	_ADC_STAT,#0x10
;	E:\Works\NSHET\sys.c:350: return ADC_FIFO;
	mov	r6,((_ADC_FIFO >> 0) & 0xFF)
	mov	r7,((_ADC_FIFO >> 8) & 0xFF)
	mov	dpl,r6
	mov	dph,r7
;	E:\Works\NSHET\sys.c:351: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
__xinit__sysTickCount:
	.byte #0x00, #0x00, #0x00, #0x00	; 0
__xinit__recBuf0:
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
__xinit__recPtr0:
	.db #0x00	; 0
__xinit__block_recv_ptr:
	.byte #0x00,#0x00,#0x00
__xinit__block_recv_pos:
	.byte #0x00, #0x00	; 0
__xinit__block_recv_siz:
	.byte #0x00, #0x00	; 0
	.area CABS    (ABS,CODE)
