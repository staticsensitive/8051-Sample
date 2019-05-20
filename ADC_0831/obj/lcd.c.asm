;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.8.4 #10807 (MINGW64)
;--------------------------------------------------------
	.module lcd
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
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
	.globl _gotoxy_lcd_PARM_2
	.globl _delay_lcd
	.globl _write_nibble_lcd
	.globl _write_lcd
	.globl _init_lcd
	.globl _gotoxy_lcd
	.globl _putc_lcd
	.globl _print_lcd
	.globl _clear_lcd
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
_gotoxy_lcd_PARM_2:
	.ds 1
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
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
;Allocation info for local variables in function 'delay_lcd'
;------------------------------------------------------------
;del1                      Allocated to registers r6 r7 
;del2                      Allocated to registers r4 r5 
;------------------------------------------------------------
;	src/lcd.c:4: void delay_lcd (void)
;	-----------------------------------------
;	 function delay_lcd
;	-----------------------------------------
_delay_lcd:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	src/lcd.c:7: for(del1=0;del1<10;del1++)
	mov	r6,#0x00
	mov	r7,#0x00
00106$:
;	src/lcd.c:9: for(del2=0;del2<200;del2++);
	mov	r4,#0xc8
	mov	r5,#0x00
00105$:
	mov	a,r4
	add	a,#0xff
	mov	r2,a
	mov	a,r5
	addc	a,#0xff
	mov	r3,a
	mov	ar4,r2
	mov	ar5,r3
	mov	a,r2
	orl	a,r3
	jnz	00105$
;	src/lcd.c:7: for(del1=0;del1<10;del1++)
	inc	r6
	cjne	r6,#0x00,00124$
	inc	r7
00124$:
	clr	c
	mov	a,r6
	subb	a,#0x0a
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0x80
	jc	00106$
;	src/lcd.c:11: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'write_nibble_lcd'
;------------------------------------------------------------
;Val                       Allocated to registers r7 
;------------------------------------------------------------
;	src/lcd.c:15: void write_nibble_lcd(unsigned char Val)
;	-----------------------------------------
;	 function write_nibble_lcd
;	-----------------------------------------
_write_nibble_lcd:
	mov	r7,dpl
;	src/lcd.c:17: EN = 1;
;	assignBit
	setb	_P1_1
;	src/lcd.c:18: D0 = D1 = D2 = D3 = 0;
;	assignBit
	clr	_P1_5
;	assignBit
	mov	c,_P1_5
	mov	_P1_4,c
;	assignBit
	mov	c,_P1_4
	mov	_P1_3,c
;	assignBit
	mov	c,_P1_3
	mov	_P1_2,c
;	src/lcd.c:19: if(Val & 0x01)
	mov	a,r7
	jnb	acc.0,00102$
;	src/lcd.c:20: D0 = 1;
;	assignBit
	setb	_P1_2
00102$:
;	src/lcd.c:21: if(Val & 0x02)
	mov	a,r7
	jnb	acc.1,00104$
;	src/lcd.c:22: D1 = 1;
;	assignBit
	setb	_P1_3
00104$:
;	src/lcd.c:23: if(Val & 0x04)
	mov	a,r7
	jnb	acc.2,00106$
;	src/lcd.c:24: D2 = 1;
;	assignBit
	setb	_P1_4
00106$:
;	src/lcd.c:25: if(Val & 0x08)
	mov	a,r7
	jnb	acc.3,00108$
;	src/lcd.c:26: D3 = 1;
;	assignBit
	setb	_P1_5
00108$:
;	src/lcd.c:27: EN = 0;
;	assignBit
	clr	_P1_1
;	src/lcd.c:28: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'write_lcd'
;------------------------------------------------------------
;Val                       Allocated to registers r7 
;------------------------------------------------------------
;	src/lcd.c:30: void write_lcd(unsigned char Val)
;	-----------------------------------------
;	 function write_lcd
;	-----------------------------------------
_write_lcd:
;	src/lcd.c:32: write_nibble_lcd(Val >> 4);
	mov	a,dpl
	mov	r7,a
	swap	a
	anl	a,#0x0f
	mov	dpl,a
	push	ar7
	lcall	_write_nibble_lcd
	pop	ar7
;	src/lcd.c:33: write_nibble_lcd(Val);
	mov	dpl,r7
	lcall	_write_nibble_lcd
;	src/lcd.c:34: delay_lcd();
;	src/lcd.c:35: }
	ljmp	_delay_lcd
;------------------------------------------------------------
;Allocation info for local variables in function 'init_lcd'
;------------------------------------------------------------
;	src/lcd.c:39: void init_lcd (void)
;	-----------------------------------------
;	 function init_lcd
;	-----------------------------------------
_init_lcd:
;	src/lcd.c:41: RS = 0;
;	assignBit
	clr	_P1_0
;	src/lcd.c:42: write_nibble_lcd(0x03);	delay_lcd();
	mov	dpl,#0x03
	lcall	_write_nibble_lcd
	lcall	_delay_lcd
;	src/lcd.c:43: write_nibble_lcd(0x03);	delay_lcd();
	mov	dpl,#0x03
	lcall	_write_nibble_lcd
	lcall	_delay_lcd
;	src/lcd.c:44: write_nibble_lcd(0x02);	delay_lcd();
	mov	dpl,#0x02
	lcall	_write_nibble_lcd
	lcall	_delay_lcd
;	src/lcd.c:45: write_lcd(0x28);
	mov	dpl,#0x28
	lcall	_write_lcd
;	src/lcd.c:46: write_lcd(0x06);
	mov	dpl,#0x06
	lcall	_write_lcd
;	src/lcd.c:47: write_lcd(0x0c);
	mov	dpl,#0x0c
	lcall	_write_lcd
;	src/lcd.c:48: write_lcd(0x01);
	mov	dpl,#0x01
;	src/lcd.c:49: }  
	ljmp	_write_lcd
;------------------------------------------------------------
;Allocation info for local variables in function 'gotoxy_lcd'
;------------------------------------------------------------
;line                      Allocated with name '_gotoxy_lcd_PARM_2'
;col                       Allocated to registers r7 
;------------------------------------------------------------
;	src/lcd.c:51: void gotoxy_lcd(unsigned char col,unsigned char line)
;	-----------------------------------------
;	 function gotoxy_lcd
;	-----------------------------------------
_gotoxy_lcd:
	mov	r7,dpl
;	src/lcd.c:53: RS = 0;
;	assignBit
	clr	_P1_0
;	src/lcd.c:54: if (line == 1)
	mov	a,#0x01
	cjne	a,_gotoxy_lcd_PARM_2,00102$
;	src/lcd.c:55: write_lcd(0x7f+col);
	mov	ar6,r7
	mov	a,#0x7f
	add	a,r6
	mov	dpl,a
	push	ar7
	lcall	_write_lcd
	pop	ar7
00102$:
;	src/lcd.c:56: if (line == 2)
	mov	a,#0x02
	cjne	a,_gotoxy_lcd_PARM_2,00105$
;	src/lcd.c:57: write_lcd(0xbf+col);
	mov	a,#0xbf
	add	a,r7
	mov	dpl,a
;	src/lcd.c:58: }
	ljmp	_write_lcd
00105$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'putc_lcd'
;------------------------------------------------------------
;byte                      Allocated to registers 
;------------------------------------------------------------
;	src/lcd.c:60: void putc_lcd(unsigned char byte)
;	-----------------------------------------
;	 function putc_lcd
;	-----------------------------------------
_putc_lcd:
;	src/lcd.c:62: RS = 1;
;	assignBit
	setb	_P1_0
;	src/lcd.c:63: write_lcd(byte);
;	src/lcd.c:64: }
	ljmp	_write_lcd
;------------------------------------------------------------
;Allocation info for local variables in function 'print_lcd'
;------------------------------------------------------------
;String                    Allocated to registers r5 r6 r7 
;i                         Allocated to registers r3 r4 
;------------------------------------------------------------
;	src/lcd.c:66: void print_lcd(char String[])
;	-----------------------------------------
;	 function print_lcd
;	-----------------------------------------
_print_lcd:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	src/lcd.c:69: do
	mov	r3,#0x00
	mov	r4,#0x00
00101$:
;	src/lcd.c:71: putc_lcd(String[i]);
	mov	a,r3
	add	a,r5
	mov	r0,a
	mov	a,r4
	addc	a,r6
	mov	r1,a
	mov	ar2,r7
	mov	dpl,r0
	mov	dph,r1
	mov	b,r2
	lcall	__gptrget
	mov	dpl,a
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	lcall	_putc_lcd
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	src/lcd.c:72: i++;
	inc	r3
	cjne	r3,#0x00,00111$
	inc	r4
00111$:
;	src/lcd.c:74: while(String[i] != '\0');
	mov	a,r3
	add	a,r5
	mov	r0,a
	mov	a,r4
	addc	a,r6
	mov	r1,a
	mov	ar2,r7
	mov	dpl,r0
	mov	dph,r1
	mov	b,r2
	lcall	__gptrget
	jnz	00101$
;	src/lcd.c:75: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'clear_lcd'
;------------------------------------------------------------
;	src/lcd.c:77: void clear_lcd (void)
;	-----------------------------------------
;	 function clear_lcd
;	-----------------------------------------
_clear_lcd:
;	src/lcd.c:79: write_lcd(0x01);
	mov	dpl,#0x01
;	src/lcd.c:80: }
	ljmp	_write_lcd
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area CABS    (ABS,CODE)
