;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.8.4 #10807 (MINGW64)
;--------------------------------------------------------
	.module main
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _main
	.globl _InitADC0831
	.globl _ReadADC0831
	.globl _clear_lcd
	.globl _print_lcd
	.globl _putc_lcd
	.globl _gotoxy_lcd
	.globl _init_lcd
	.globl _delay_ms
	.globl _sprintf
	.globl _CY
	.globl _AC
	.globl _F0
	.globl _RS1
	.globl _RS0
	.globl _OV
	.globl _F1
	.globl _P
	.globl _PS
	.globl _PT1
	.globl _PX1
	.globl _PT0
	.globl _PX0
	.globl _RD
	.globl _WR
	.globl _T1
	.globl _T0
	.globl _INT1
	.globl _INT0
	.globl _TXD
	.globl _RXD
	.globl _P3_7
	.globl _P3_6
	.globl _P3_5
	.globl _P3_4
	.globl _P3_3
	.globl _P3_2
	.globl _P3_1
	.globl _P3_0
	.globl _EA
	.globl _ES
	.globl _ET1
	.globl _EX1
	.globl _ET0
	.globl _EX0
	.globl _P2_7
	.globl _P2_6
	.globl _P2_5
	.globl _P2_4
	.globl _P2_3
	.globl _P2_2
	.globl _P2_1
	.globl _P2_0
	.globl _SM0
	.globl _SM1
	.globl _SM2
	.globl _REN
	.globl _TB8
	.globl _RB8
	.globl _TI
	.globl _RI
	.globl _P1_7
	.globl _P1_6
	.globl _P1_5
	.globl _P1_4
	.globl _P1_3
	.globl _P1_2
	.globl _P1_1
	.globl _P1_0
	.globl _TF1
	.globl _TR1
	.globl _TF0
	.globl _TR0
	.globl _IE1
	.globl _IT1
	.globl _IE0
	.globl _IT0
	.globl _P0_7
	.globl _P0_6
	.globl _P0_5
	.globl _P0_4
	.globl _P0_3
	.globl _P0_2
	.globl _P0_1
	.globl _P0_0
	.globl _B
	.globl _ACC
	.globl _PSW
	.globl _IP
	.globl _P3
	.globl _IE
	.globl _P2
	.globl _SBUF
	.globl _SCON
	.globl _P1
	.globl _TH1
	.globl _TH0
	.globl _TL1
	.globl _TL0
	.globl _TMOD
	.globl _TCON
	.globl _PCON
	.globl _DPH
	.globl _DPL
	.globl _SP
	.globl _P0
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_P0	=	0x0080
_SP	=	0x0081
_DPL	=	0x0082
_DPH	=	0x0083
_PCON	=	0x0087
_TCON	=	0x0088
_TMOD	=	0x0089
_TL0	=	0x008a
_TL1	=	0x008b
_TH0	=	0x008c
_TH1	=	0x008d
_P1	=	0x0090
_SCON	=	0x0098
_SBUF	=	0x0099
_P2	=	0x00a0
_IE	=	0x00a8
_P3	=	0x00b0
_IP	=	0x00b8
_PSW	=	0x00d0
_ACC	=	0x00e0
_B	=	0x00f0
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_P0_0	=	0x0080
_P0_1	=	0x0081
_P0_2	=	0x0082
_P0_3	=	0x0083
_P0_4	=	0x0084
_P0_5	=	0x0085
_P0_6	=	0x0086
_P0_7	=	0x0087
_IT0	=	0x0088
_IE0	=	0x0089
_IT1	=	0x008a
_IE1	=	0x008b
_TR0	=	0x008c
_TF0	=	0x008d
_TR1	=	0x008e
_TF1	=	0x008f
_P1_0	=	0x0090
_P1_1	=	0x0091
_P1_2	=	0x0092
_P1_3	=	0x0093
_P1_4	=	0x0094
_P1_5	=	0x0095
_P1_6	=	0x0096
_P1_7	=	0x0097
_RI	=	0x0098
_TI	=	0x0099
_RB8	=	0x009a
_TB8	=	0x009b
_REN	=	0x009c
_SM2	=	0x009d
_SM1	=	0x009e
_SM0	=	0x009f
_P2_0	=	0x00a0
_P2_1	=	0x00a1
_P2_2	=	0x00a2
_P2_3	=	0x00a3
_P2_4	=	0x00a4
_P2_5	=	0x00a5
_P2_6	=	0x00a6
_P2_7	=	0x00a7
_EX0	=	0x00a8
_ET0	=	0x00a9
_EX1	=	0x00aa
_ET1	=	0x00ab
_ES	=	0x00ac
_EA	=	0x00af
_P3_0	=	0x00b0
_P3_1	=	0x00b1
_P3_2	=	0x00b2
_P3_3	=	0x00b3
_P3_4	=	0x00b4
_P3_5	=	0x00b5
_P3_6	=	0x00b6
_P3_7	=	0x00b7
_RXD	=	0x00b0
_TXD	=	0x00b1
_INT0	=	0x00b2
_INT1	=	0x00b3
_T0	=	0x00b4
_T1	=	0x00b5
_WR	=	0x00b6
_RD	=	0x00b7
_PX0	=	0x00b8
_PT0	=	0x00b9
_PX1	=	0x00ba
_PT1	=	0x00bb
_PS	=	0x00bc
_P	=	0x00d0
_F1	=	0x00d1
_OV	=	0x00d2
_RS0	=	0x00d3
_RS1	=	0x00d4
_F0	=	0x00d5
_AC	=	0x00d6
_CY	=	0x00d7
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
_main_Msg_65536_26:
	.ds 20
_main_Sample_65536_26:
	.ds 5
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
;--------------------------------------------------------
; external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
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
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;i                         Allocated to registers r5 
;Msg                       Allocated with name '_main_Msg_65536_26'
;AverageValue              Allocated to registers 
;Sample                    Allocated with name '_main_Sample_65536_26'
;voltage                   Allocated to registers r4 r5 r6 r7 
;temp                      Allocated to registers r6 r7 
;tempval                   Allocated to registers r4 r5 
;------------------------------------------------------------
;	src/main.c:8: void main (void)
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	src/main.c:13: unsigned char Sample[5] = {0, 0, 0, 0, 0};
	mov	_main_Sample_65536_26,#0x00
	mov	(_main_Sample_65536_26 + 0x0001),#0x00
	mov	(_main_Sample_65536_26 + 0x0002),#0x00
	mov	(_main_Sample_65536_26 + 0x0003),#0x00
	mov	(_main_Sample_65536_26 + 0x0004),#0x00
;	src/main.c:18: init_lcd();
	lcall	_init_lcd
;	src/main.c:19: InitADC0831();  
	lcall	_InitADC0831
;	src/main.c:20: gotoxy_lcd(1, 1);
	mov	_gotoxy_lcd_PARM_2,#0x01
	mov	dpl,#0x01
	lcall	_gotoxy_lcd
;	src/main.c:21: print_lcd("8051 ADC0831 ");
	mov	dptr,#___str_0
	mov	b,#0x80
	lcall	_print_lcd
;	src/main.c:22: delay_ms(1000);
	mov	dptr,#0x03e8
	lcall	_delay_ms
;	src/main.c:23: clear_lcd();
	lcall	_clear_lcd
;	src/main.c:26: while(1){
00103$:
;	src/main.c:27: AverageValue = 0;
	mov	r6,#0x00
	mov	r7,#0x00
;	src/main.c:28: for(i = 4; i > 0; i --)
	mov	r5,#0x04
00105$:
;	src/main.c:30: Sample[i] = Sample[i - 1];
	mov	a,r5
	add	a,#_main_Sample_65536_26
	mov	r1,a
	mov	ar4,r5
	mov	a,r4
	dec	a
	add	a,#_main_Sample_65536_26
	mov	r0,a
	mov	ar4,@r0
	mov	@r1,ar4
;	src/main.c:31: AverageValue += Sample[i];
	mov	r3,#0x00
	mov	a,r4
	add	a,r6
	mov	r6,a
	mov	a,r3
	addc	a,r7
	mov	r7,a
;	src/main.c:28: for(i = 4; i > 0; i --)
	djnz	r5,00105$
;	src/main.c:34: Sample[0] = ReadADC0831();
	push	ar7
	push	ar6
	lcall	_ReadADC0831
	mov	r5,dpl
	pop	ar6
	pop	ar7
	mov	_main_Sample_65536_26,r5
;	src/main.c:35: AverageValue += Sample[0];
	mov	r4,#0x00
	mov	a,r5
	add	a,r6
	mov	dpl,a
	mov	a,r4
	addc	a,r7
	mov	dph,a
;	src/main.c:36: AverageValue /= 5;
	mov	__divuint_PARM_2,#0x05
;	1-genFromRTrack replaced	mov	(__divuint_PARM_2 + 1),#0x00
	mov	(__divuint_PARM_2 + 1),r4
	lcall	__divuint
	mov	r6,dpl
	mov	r7,dph
;	src/main.c:37: sprintf(Msg, "Raw ADC = %d      \0", AverageValue);
	push	ar7
	push	ar6
	push	ar6
	push	ar7
	mov	a,#___str_1
	push	acc
	mov	a,#(___str_1 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	mov	a,#_main_Msg_65536_26
	push	acc
	mov	a,#(_main_Msg_65536_26 >> 8)
	push	acc
	mov	a,#0x40
	push	acc
	lcall	_sprintf
	mov	a,sp
	add	a,#0xf8
	mov	sp,a
;	src/main.c:39: gotoxy_lcd(1, 1);
	mov	_gotoxy_lcd_PARM_2,#0x01
	mov	dpl,#0x01
	lcall	_gotoxy_lcd
;	src/main.c:40: print_lcd(Msg); 
	mov	dptr,#_main_Msg_65536_26
	mov	b,#0x40
	lcall	_print_lcd
;	src/main.c:42: gotoxy_lcd(1, 2);
	mov	_gotoxy_lcd_PARM_2,#0x02
	mov	dpl,#0x01
	lcall	_gotoxy_lcd
;	src/main.c:43: print_lcd("Volts:");
	mov	dptr,#___str_2
	mov	b,#0x80
	lcall	_print_lcd
	pop	ar6
	pop	ar7
;	src/main.c:44: voltage = (AverageValue/255.0)*5.0;
	mov	dpl,r6
	mov	dph,r7
	lcall	___uint2fs
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	clr	a
	push	acc
	push	acc
	mov	a,#0x7f
	push	acc
	mov	a,#0x43
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
	mov	b,#0xa0
	mov	a,#0x40
	lcall	___fsmul
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	src/main.c:46: temp = voltage * 100;
	push	ar4
	push	ar5
	push	ar6
	push	ar7
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
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	lcall	___fs2sint
;	src/main.c:47: tempval = (temp/100) + 48;
	mov	r6,dpl
	mov	r7,dph
	mov	__divsint_PARM_2,#0x64
	mov	(__divsint_PARM_2 + 1),#0x00
	push	ar7
	push	ar6
	lcall	__divsint
	mov	a,dpl
	mov	b,dph
	add	a,#0x30
	mov	r4,a
	clr	a
	addc	a,b
;	src/main.c:49: putc_lcd(tempval);
	mov	dpl,r4
	lcall	_putc_lcd
;	src/main.c:50: putc_lcd('.');
	mov	dpl,#0x2e
	lcall	_putc_lcd
	pop	ar6
	pop	ar7
;	src/main.c:53: tempval = ((temp/10)%10) + 48;
	mov	__divsint_PARM_2,#0x0a
	mov	(__divsint_PARM_2 + 1),#0x00
	mov	dpl,r6
	mov	dph,r7
	push	ar7
	push	ar6
	lcall	__divsint
	mov	__modsint_PARM_2,#0x0a
	mov	(__modsint_PARM_2 + 1),#0x00
	lcall	__modsint
	mov	a,dpl
	mov	b,dph
	add	a,#0x30
	mov	r4,a
	clr	a
	addc	a,b
;	src/main.c:54: putc_lcd(tempval);
	mov	dpl,r4
	lcall	_putc_lcd
	pop	ar6
	pop	ar7
;	src/main.c:56: tempval = (temp%10) + 48;
	mov	__modsint_PARM_2,#0x0a
	mov	(__modsint_PARM_2 + 1),#0x00
	mov	dpl,r6
	mov	dph,r7
	lcall	__modsint
	mov	a,dpl
	mov	b,dph
	add	a,#0x30
	mov	r6,a
	clr	a
	addc	a,b
;	src/main.c:57: putc_lcd(tempval);
	mov	dpl,r6
	lcall	_putc_lcd
;	src/main.c:59: }
	ljmp	00103$
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_0:
	.ascii "8051 ADC0831 "
	.db 0x00
___str_1:
	.ascii "Raw ADC = %d      "
	.db 0x00
	.db 0x00
___str_2:
	.ascii "Volts:"
	.db 0x00
	.area CABS    (ABS,CODE)
