                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.8.4 #10807 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module lcd
                                      6 	.optsdcc -mmcs51 --model-small
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _CY
                                     12 	.globl _AC
                                     13 	.globl _F0
                                     14 	.globl _RS1
                                     15 	.globl _RS0
                                     16 	.globl _OV
                                     17 	.globl _F1
                                     18 	.globl _P
                                     19 	.globl _PS
                                     20 	.globl _PT1
                                     21 	.globl _PX1
                                     22 	.globl _PT0
                                     23 	.globl _PX0
                                     24 	.globl _RD
                                     25 	.globl _WR
                                     26 	.globl _T1
                                     27 	.globl _T0
                                     28 	.globl _INT1
                                     29 	.globl _INT0
                                     30 	.globl _TXD
                                     31 	.globl _RXD
                                     32 	.globl _P3_7
                                     33 	.globl _P3_6
                                     34 	.globl _P3_5
                                     35 	.globl _P3_4
                                     36 	.globl _P3_3
                                     37 	.globl _P3_2
                                     38 	.globl _P3_1
                                     39 	.globl _P3_0
                                     40 	.globl _EA
                                     41 	.globl _ES
                                     42 	.globl _ET1
                                     43 	.globl _EX1
                                     44 	.globl _ET0
                                     45 	.globl _EX0
                                     46 	.globl _P2_7
                                     47 	.globl _P2_6
                                     48 	.globl _P2_5
                                     49 	.globl _P2_4
                                     50 	.globl _P2_3
                                     51 	.globl _P2_2
                                     52 	.globl _P2_1
                                     53 	.globl _P2_0
                                     54 	.globl _SM0
                                     55 	.globl _SM1
                                     56 	.globl _SM2
                                     57 	.globl _REN
                                     58 	.globl _TB8
                                     59 	.globl _RB8
                                     60 	.globl _TI
                                     61 	.globl _RI
                                     62 	.globl _P1_7
                                     63 	.globl _P1_6
                                     64 	.globl _P1_5
                                     65 	.globl _P1_4
                                     66 	.globl _P1_3
                                     67 	.globl _P1_2
                                     68 	.globl _P1_1
                                     69 	.globl _P1_0
                                     70 	.globl _TF1
                                     71 	.globl _TR1
                                     72 	.globl _TF0
                                     73 	.globl _TR0
                                     74 	.globl _IE1
                                     75 	.globl _IT1
                                     76 	.globl _IE0
                                     77 	.globl _IT0
                                     78 	.globl _P0_7
                                     79 	.globl _P0_6
                                     80 	.globl _P0_5
                                     81 	.globl _P0_4
                                     82 	.globl _P0_3
                                     83 	.globl _P0_2
                                     84 	.globl _P0_1
                                     85 	.globl _P0_0
                                     86 	.globl _B
                                     87 	.globl _ACC
                                     88 	.globl _PSW
                                     89 	.globl _IP
                                     90 	.globl _P3
                                     91 	.globl _IE
                                     92 	.globl _P2
                                     93 	.globl _SBUF
                                     94 	.globl _SCON
                                     95 	.globl _P1
                                     96 	.globl _TH1
                                     97 	.globl _TH0
                                     98 	.globl _TL1
                                     99 	.globl _TL0
                                    100 	.globl _TMOD
                                    101 	.globl _TCON
                                    102 	.globl _PCON
                                    103 	.globl _DPH
                                    104 	.globl _DPL
                                    105 	.globl _SP
                                    106 	.globl _P0
                                    107 	.globl _gotoxy_lcd_PARM_2
                                    108 	.globl _delay_lcd
                                    109 	.globl _write_nibble_lcd
                                    110 	.globl _write_lcd
                                    111 	.globl _init_lcd
                                    112 	.globl _gotoxy_lcd
                                    113 	.globl _putc_lcd
                                    114 	.globl _print_lcd
                                    115 	.globl _clear_lcd
                                    116 ;--------------------------------------------------------
                                    117 ; special function registers
                                    118 ;--------------------------------------------------------
                                    119 	.area RSEG    (ABS,DATA)
      000000                        120 	.org 0x0000
                           000080   121 _P0	=	0x0080
                           000081   122 _SP	=	0x0081
                           000082   123 _DPL	=	0x0082
                           000083   124 _DPH	=	0x0083
                           000087   125 _PCON	=	0x0087
                           000088   126 _TCON	=	0x0088
                           000089   127 _TMOD	=	0x0089
                           00008A   128 _TL0	=	0x008a
                           00008B   129 _TL1	=	0x008b
                           00008C   130 _TH0	=	0x008c
                           00008D   131 _TH1	=	0x008d
                           000090   132 _P1	=	0x0090
                           000098   133 _SCON	=	0x0098
                           000099   134 _SBUF	=	0x0099
                           0000A0   135 _P2	=	0x00a0
                           0000A8   136 _IE	=	0x00a8
                           0000B0   137 _P3	=	0x00b0
                           0000B8   138 _IP	=	0x00b8
                           0000D0   139 _PSW	=	0x00d0
                           0000E0   140 _ACC	=	0x00e0
                           0000F0   141 _B	=	0x00f0
                                    142 ;--------------------------------------------------------
                                    143 ; special function bits
                                    144 ;--------------------------------------------------------
                                    145 	.area RSEG    (ABS,DATA)
      000000                        146 	.org 0x0000
                           000080   147 _P0_0	=	0x0080
                           000081   148 _P0_1	=	0x0081
                           000082   149 _P0_2	=	0x0082
                           000083   150 _P0_3	=	0x0083
                           000084   151 _P0_4	=	0x0084
                           000085   152 _P0_5	=	0x0085
                           000086   153 _P0_6	=	0x0086
                           000087   154 _P0_7	=	0x0087
                           000088   155 _IT0	=	0x0088
                           000089   156 _IE0	=	0x0089
                           00008A   157 _IT1	=	0x008a
                           00008B   158 _IE1	=	0x008b
                           00008C   159 _TR0	=	0x008c
                           00008D   160 _TF0	=	0x008d
                           00008E   161 _TR1	=	0x008e
                           00008F   162 _TF1	=	0x008f
                           000090   163 _P1_0	=	0x0090
                           000091   164 _P1_1	=	0x0091
                           000092   165 _P1_2	=	0x0092
                           000093   166 _P1_3	=	0x0093
                           000094   167 _P1_4	=	0x0094
                           000095   168 _P1_5	=	0x0095
                           000096   169 _P1_6	=	0x0096
                           000097   170 _P1_7	=	0x0097
                           000098   171 _RI	=	0x0098
                           000099   172 _TI	=	0x0099
                           00009A   173 _RB8	=	0x009a
                           00009B   174 _TB8	=	0x009b
                           00009C   175 _REN	=	0x009c
                           00009D   176 _SM2	=	0x009d
                           00009E   177 _SM1	=	0x009e
                           00009F   178 _SM0	=	0x009f
                           0000A0   179 _P2_0	=	0x00a0
                           0000A1   180 _P2_1	=	0x00a1
                           0000A2   181 _P2_2	=	0x00a2
                           0000A3   182 _P2_3	=	0x00a3
                           0000A4   183 _P2_4	=	0x00a4
                           0000A5   184 _P2_5	=	0x00a5
                           0000A6   185 _P2_6	=	0x00a6
                           0000A7   186 _P2_7	=	0x00a7
                           0000A8   187 _EX0	=	0x00a8
                           0000A9   188 _ET0	=	0x00a9
                           0000AA   189 _EX1	=	0x00aa
                           0000AB   190 _ET1	=	0x00ab
                           0000AC   191 _ES	=	0x00ac
                           0000AF   192 _EA	=	0x00af
                           0000B0   193 _P3_0	=	0x00b0
                           0000B1   194 _P3_1	=	0x00b1
                           0000B2   195 _P3_2	=	0x00b2
                           0000B3   196 _P3_3	=	0x00b3
                           0000B4   197 _P3_4	=	0x00b4
                           0000B5   198 _P3_5	=	0x00b5
                           0000B6   199 _P3_6	=	0x00b6
                           0000B7   200 _P3_7	=	0x00b7
                           0000B0   201 _RXD	=	0x00b0
                           0000B1   202 _TXD	=	0x00b1
                           0000B2   203 _INT0	=	0x00b2
                           0000B3   204 _INT1	=	0x00b3
                           0000B4   205 _T0	=	0x00b4
                           0000B5   206 _T1	=	0x00b5
                           0000B6   207 _WR	=	0x00b6
                           0000B7   208 _RD	=	0x00b7
                           0000B8   209 _PX0	=	0x00b8
                           0000B9   210 _PT0	=	0x00b9
                           0000BA   211 _PX1	=	0x00ba
                           0000BB   212 _PT1	=	0x00bb
                           0000BC   213 _PS	=	0x00bc
                           0000D0   214 _P	=	0x00d0
                           0000D1   215 _F1	=	0x00d1
                           0000D2   216 _OV	=	0x00d2
                           0000D3   217 _RS0	=	0x00d3
                           0000D4   218 _RS1	=	0x00d4
                           0000D5   219 _F0	=	0x00d5
                           0000D6   220 _AC	=	0x00d6
                           0000D7   221 _CY	=	0x00d7
                                    222 ;--------------------------------------------------------
                                    223 ; overlayable register banks
                                    224 ;--------------------------------------------------------
                                    225 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        226 	.ds 8
                                    227 ;--------------------------------------------------------
                                    228 ; internal ram data
                                    229 ;--------------------------------------------------------
                                    230 	.area DSEG    (DATA)
      000021                        231 _gotoxy_lcd_PARM_2:
      000021                        232 	.ds 1
                                    233 ;--------------------------------------------------------
                                    234 ; overlayable items in internal ram 
                                    235 ;--------------------------------------------------------
                                    236 	.area	OSEG    (OVR,DATA)
                                    237 	.area	OSEG    (OVR,DATA)
                                    238 ;--------------------------------------------------------
                                    239 ; indirectly addressable internal ram data
                                    240 ;--------------------------------------------------------
                                    241 	.area ISEG    (DATA)
                                    242 ;--------------------------------------------------------
                                    243 ; absolute internal ram data
                                    244 ;--------------------------------------------------------
                                    245 	.area IABS    (ABS,DATA)
                                    246 	.area IABS    (ABS,DATA)
                                    247 ;--------------------------------------------------------
                                    248 ; bit data
                                    249 ;--------------------------------------------------------
                                    250 	.area BSEG    (BIT)
                                    251 ;--------------------------------------------------------
                                    252 ; paged external ram data
                                    253 ;--------------------------------------------------------
                                    254 	.area PSEG    (PAG,XDATA)
                                    255 ;--------------------------------------------------------
                                    256 ; external ram data
                                    257 ;--------------------------------------------------------
                                    258 	.area XSEG    (XDATA)
                                    259 ;--------------------------------------------------------
                                    260 ; absolute external ram data
                                    261 ;--------------------------------------------------------
                                    262 	.area XABS    (ABS,XDATA)
                                    263 ;--------------------------------------------------------
                                    264 ; external initialized ram data
                                    265 ;--------------------------------------------------------
                                    266 	.area HOME    (CODE)
                                    267 	.area GSINIT0 (CODE)
                                    268 	.area GSINIT1 (CODE)
                                    269 	.area GSINIT2 (CODE)
                                    270 	.area GSINIT3 (CODE)
                                    271 	.area GSINIT4 (CODE)
                                    272 	.area GSINIT5 (CODE)
                                    273 	.area GSINIT  (CODE)
                                    274 	.area GSFINAL (CODE)
                                    275 	.area CSEG    (CODE)
                                    276 ;--------------------------------------------------------
                                    277 ; global & static initialisations
                                    278 ;--------------------------------------------------------
                                    279 	.area HOME    (CODE)
                                    280 	.area GSINIT  (CODE)
                                    281 	.area GSFINAL (CODE)
                                    282 	.area GSINIT  (CODE)
                                    283 ;--------------------------------------------------------
                                    284 ; Home
                                    285 ;--------------------------------------------------------
                                    286 	.area HOME    (CODE)
                                    287 	.area HOME    (CODE)
                                    288 ;--------------------------------------------------------
                                    289 ; code
                                    290 ;--------------------------------------------------------
                                    291 	.area CSEG    (CODE)
                                    292 ;------------------------------------------------------------
                                    293 ;Allocation info for local variables in function 'delay_lcd'
                                    294 ;------------------------------------------------------------
                                    295 ;del1                      Allocated to registers r6 r7 
                                    296 ;del2                      Allocated to registers r4 r5 
                                    297 ;------------------------------------------------------------
                                    298 ;	src/lcd.c:4: void delay_lcd (void)
                                    299 ;	-----------------------------------------
                                    300 ;	 function delay_lcd
                                    301 ;	-----------------------------------------
      00022C                        302 _delay_lcd:
                           000007   303 	ar7 = 0x07
                           000006   304 	ar6 = 0x06
                           000005   305 	ar5 = 0x05
                           000004   306 	ar4 = 0x04
                           000003   307 	ar3 = 0x03
                           000002   308 	ar2 = 0x02
                           000001   309 	ar1 = 0x01
                           000000   310 	ar0 = 0x00
                                    311 ;	src/lcd.c:7: for(del1=0;del1<10;del1++)
      00022C 7E 00            [12]  312 	mov	r6,#0x00
      00022E 7F 00            [12]  313 	mov	r7,#0x00
      000230                        314 00106$:
                                    315 ;	src/lcd.c:9: for(del2=0;del2<200;del2++);
      000230 7C C8            [12]  316 	mov	r4,#0xc8
      000232 7D 00            [12]  317 	mov	r5,#0x00
      000234                        318 00105$:
      000234 EC               [12]  319 	mov	a,r4
      000235 24 FF            [12]  320 	add	a,#0xff
      000237 FA               [12]  321 	mov	r2,a
      000238 ED               [12]  322 	mov	a,r5
      000239 34 FF            [12]  323 	addc	a,#0xff
      00023B FB               [12]  324 	mov	r3,a
      00023C 8A 04            [24]  325 	mov	ar4,r2
      00023E 8B 05            [24]  326 	mov	ar5,r3
      000240 EA               [12]  327 	mov	a,r2
      000241 4B               [12]  328 	orl	a,r3
      000242 70 F0            [24]  329 	jnz	00105$
                                    330 ;	src/lcd.c:7: for(del1=0;del1<10;del1++)
      000244 0E               [12]  331 	inc	r6
      000245 BE 00 01         [24]  332 	cjne	r6,#0x00,00124$
      000248 0F               [12]  333 	inc	r7
      000249                        334 00124$:
      000249 C3               [12]  335 	clr	c
      00024A EE               [12]  336 	mov	a,r6
      00024B 94 0A            [12]  337 	subb	a,#0x0a
      00024D EF               [12]  338 	mov	a,r7
      00024E 64 80            [12]  339 	xrl	a,#0x80
      000250 94 80            [12]  340 	subb	a,#0x80
      000252 40 DC            [24]  341 	jc	00106$
                                    342 ;	src/lcd.c:11: }
      000254 22               [24]  343 	ret
                                    344 ;------------------------------------------------------------
                                    345 ;Allocation info for local variables in function 'write_nibble_lcd'
                                    346 ;------------------------------------------------------------
                                    347 ;Val                       Allocated to registers r7 
                                    348 ;------------------------------------------------------------
                                    349 ;	src/lcd.c:15: void write_nibble_lcd(unsigned char Val)
                                    350 ;	-----------------------------------------
                                    351 ;	 function write_nibble_lcd
                                    352 ;	-----------------------------------------
      000255                        353 _write_nibble_lcd:
      000255 AF 82            [24]  354 	mov	r7,dpl
                                    355 ;	src/lcd.c:17: EN = 1;
                                    356 ;	assignBit
      000257 D2 91            [12]  357 	setb	_P1_1
                                    358 ;	src/lcd.c:18: D0 = D1 = D2 = D3 = 0;
                                    359 ;	assignBit
      000259 C2 95            [12]  360 	clr	_P1_5
                                    361 ;	assignBit
      00025B A2 95            [12]  362 	mov	c,_P1_5
      00025D 92 94            [24]  363 	mov	_P1_4,c
                                    364 ;	assignBit
      00025F A2 94            [12]  365 	mov	c,_P1_4
      000261 92 93            [24]  366 	mov	_P1_3,c
                                    367 ;	assignBit
      000263 A2 93            [12]  368 	mov	c,_P1_3
      000265 92 92            [24]  369 	mov	_P1_2,c
                                    370 ;	src/lcd.c:19: if(Val & 0x01)
      000267 EF               [12]  371 	mov	a,r7
      000268 30 E0 02         [24]  372 	jnb	acc.0,00102$
                                    373 ;	src/lcd.c:20: D0 = 1;
                                    374 ;	assignBit
      00026B D2 92            [12]  375 	setb	_P1_2
      00026D                        376 00102$:
                                    377 ;	src/lcd.c:21: if(Val & 0x02)
      00026D EF               [12]  378 	mov	a,r7
      00026E 30 E1 02         [24]  379 	jnb	acc.1,00104$
                                    380 ;	src/lcd.c:22: D1 = 1;
                                    381 ;	assignBit
      000271 D2 93            [12]  382 	setb	_P1_3
      000273                        383 00104$:
                                    384 ;	src/lcd.c:23: if(Val & 0x04)
      000273 EF               [12]  385 	mov	a,r7
      000274 30 E2 02         [24]  386 	jnb	acc.2,00106$
                                    387 ;	src/lcd.c:24: D2 = 1;
                                    388 ;	assignBit
      000277 D2 94            [12]  389 	setb	_P1_4
      000279                        390 00106$:
                                    391 ;	src/lcd.c:25: if(Val & 0x08)
      000279 EF               [12]  392 	mov	a,r7
      00027A 30 E3 02         [24]  393 	jnb	acc.3,00108$
                                    394 ;	src/lcd.c:26: D3 = 1;
                                    395 ;	assignBit
      00027D D2 95            [12]  396 	setb	_P1_5
      00027F                        397 00108$:
                                    398 ;	src/lcd.c:27: EN = 0;
                                    399 ;	assignBit
      00027F C2 91            [12]  400 	clr	_P1_1
                                    401 ;	src/lcd.c:28: }
      000281 22               [24]  402 	ret
                                    403 ;------------------------------------------------------------
                                    404 ;Allocation info for local variables in function 'write_lcd'
                                    405 ;------------------------------------------------------------
                                    406 ;Val                       Allocated to registers r7 
                                    407 ;------------------------------------------------------------
                                    408 ;	src/lcd.c:30: void write_lcd(unsigned char Val)
                                    409 ;	-----------------------------------------
                                    410 ;	 function write_lcd
                                    411 ;	-----------------------------------------
      000282                        412 _write_lcd:
                                    413 ;	src/lcd.c:32: write_nibble_lcd(Val >> 4);
      000282 E5 82            [12]  414 	mov	a,dpl
      000284 FF               [12]  415 	mov	r7,a
      000285 C4               [12]  416 	swap	a
      000286 54 0F            [12]  417 	anl	a,#0x0f
      000288 F5 82            [12]  418 	mov	dpl,a
      00028A C0 07            [24]  419 	push	ar7
      00028C 12 02 55         [24]  420 	lcall	_write_nibble_lcd
      00028F D0 07            [24]  421 	pop	ar7
                                    422 ;	src/lcd.c:33: write_nibble_lcd(Val);
      000291 8F 82            [24]  423 	mov	dpl,r7
      000293 12 02 55         [24]  424 	lcall	_write_nibble_lcd
                                    425 ;	src/lcd.c:34: delay_lcd();
                                    426 ;	src/lcd.c:35: }
      000296 02 02 2C         [24]  427 	ljmp	_delay_lcd
                                    428 ;------------------------------------------------------------
                                    429 ;Allocation info for local variables in function 'init_lcd'
                                    430 ;------------------------------------------------------------
                                    431 ;	src/lcd.c:39: void init_lcd (void)
                                    432 ;	-----------------------------------------
                                    433 ;	 function init_lcd
                                    434 ;	-----------------------------------------
      000299                        435 _init_lcd:
                                    436 ;	src/lcd.c:41: RS = 0;
                                    437 ;	assignBit
      000299 C2 90            [12]  438 	clr	_P1_0
                                    439 ;	src/lcd.c:42: write_nibble_lcd(0x03);	delay_lcd();
      00029B 75 82 03         [24]  440 	mov	dpl,#0x03
      00029E 12 02 55         [24]  441 	lcall	_write_nibble_lcd
      0002A1 12 02 2C         [24]  442 	lcall	_delay_lcd
                                    443 ;	src/lcd.c:43: write_nibble_lcd(0x03);	delay_lcd();
      0002A4 75 82 03         [24]  444 	mov	dpl,#0x03
      0002A7 12 02 55         [24]  445 	lcall	_write_nibble_lcd
      0002AA 12 02 2C         [24]  446 	lcall	_delay_lcd
                                    447 ;	src/lcd.c:44: write_nibble_lcd(0x02);	delay_lcd();
      0002AD 75 82 02         [24]  448 	mov	dpl,#0x02
      0002B0 12 02 55         [24]  449 	lcall	_write_nibble_lcd
      0002B3 12 02 2C         [24]  450 	lcall	_delay_lcd
                                    451 ;	src/lcd.c:45: write_lcd(0x28);
      0002B6 75 82 28         [24]  452 	mov	dpl,#0x28
      0002B9 12 02 82         [24]  453 	lcall	_write_lcd
                                    454 ;	src/lcd.c:46: write_lcd(0x06);
      0002BC 75 82 06         [24]  455 	mov	dpl,#0x06
      0002BF 12 02 82         [24]  456 	lcall	_write_lcd
                                    457 ;	src/lcd.c:47: write_lcd(0x0c);
      0002C2 75 82 0C         [24]  458 	mov	dpl,#0x0c
      0002C5 12 02 82         [24]  459 	lcall	_write_lcd
                                    460 ;	src/lcd.c:48: write_lcd(0x01);
      0002C8 75 82 01         [24]  461 	mov	dpl,#0x01
                                    462 ;	src/lcd.c:49: }  
      0002CB 02 02 82         [24]  463 	ljmp	_write_lcd
                                    464 ;------------------------------------------------------------
                                    465 ;Allocation info for local variables in function 'gotoxy_lcd'
                                    466 ;------------------------------------------------------------
                                    467 ;line                      Allocated with name '_gotoxy_lcd_PARM_2'
                                    468 ;col                       Allocated to registers r7 
                                    469 ;------------------------------------------------------------
                                    470 ;	src/lcd.c:51: void gotoxy_lcd(unsigned char col,unsigned char line)
                                    471 ;	-----------------------------------------
                                    472 ;	 function gotoxy_lcd
                                    473 ;	-----------------------------------------
      0002CE                        474 _gotoxy_lcd:
      0002CE AF 82            [24]  475 	mov	r7,dpl
                                    476 ;	src/lcd.c:53: RS = 0;
                                    477 ;	assignBit
      0002D0 C2 90            [12]  478 	clr	_P1_0
                                    479 ;	src/lcd.c:54: if (line == 1)
      0002D2 74 01            [12]  480 	mov	a,#0x01
      0002D4 B5 21 0E         [24]  481 	cjne	a,_gotoxy_lcd_PARM_2,00102$
                                    482 ;	src/lcd.c:55: write_lcd(0x7f+col);
      0002D7 8F 06            [24]  483 	mov	ar6,r7
      0002D9 74 7F            [12]  484 	mov	a,#0x7f
      0002DB 2E               [12]  485 	add	a,r6
      0002DC F5 82            [12]  486 	mov	dpl,a
      0002DE C0 07            [24]  487 	push	ar7
      0002E0 12 02 82         [24]  488 	lcall	_write_lcd
      0002E3 D0 07            [24]  489 	pop	ar7
      0002E5                        490 00102$:
                                    491 ;	src/lcd.c:56: if (line == 2)
      0002E5 74 02            [12]  492 	mov	a,#0x02
      0002E7 B5 21 08         [24]  493 	cjne	a,_gotoxy_lcd_PARM_2,00105$
                                    494 ;	src/lcd.c:57: write_lcd(0xbf+col);
      0002EA 74 BF            [12]  495 	mov	a,#0xbf
      0002EC 2F               [12]  496 	add	a,r7
      0002ED F5 82            [12]  497 	mov	dpl,a
                                    498 ;	src/lcd.c:58: }
      0002EF 02 02 82         [24]  499 	ljmp	_write_lcd
      0002F2                        500 00105$:
      0002F2 22               [24]  501 	ret
                                    502 ;------------------------------------------------------------
                                    503 ;Allocation info for local variables in function 'putc_lcd'
                                    504 ;------------------------------------------------------------
                                    505 ;byte                      Allocated to registers 
                                    506 ;------------------------------------------------------------
                                    507 ;	src/lcd.c:60: void putc_lcd(unsigned char byte)
                                    508 ;	-----------------------------------------
                                    509 ;	 function putc_lcd
                                    510 ;	-----------------------------------------
      0002F3                        511 _putc_lcd:
                                    512 ;	src/lcd.c:62: RS = 1;
                                    513 ;	assignBit
      0002F3 D2 90            [12]  514 	setb	_P1_0
                                    515 ;	src/lcd.c:63: write_lcd(byte);
                                    516 ;	src/lcd.c:64: }
      0002F5 02 02 82         [24]  517 	ljmp	_write_lcd
                                    518 ;------------------------------------------------------------
                                    519 ;Allocation info for local variables in function 'print_lcd'
                                    520 ;------------------------------------------------------------
                                    521 ;String                    Allocated to registers r5 r6 r7 
                                    522 ;i                         Allocated to registers r3 r4 
                                    523 ;------------------------------------------------------------
                                    524 ;	src/lcd.c:66: void print_lcd(char String[])
                                    525 ;	-----------------------------------------
                                    526 ;	 function print_lcd
                                    527 ;	-----------------------------------------
      0002F8                        528 _print_lcd:
      0002F8 AD 82            [24]  529 	mov	r5,dpl
      0002FA AE 83            [24]  530 	mov	r6,dph
      0002FC AF F0            [24]  531 	mov	r7,b
                                    532 ;	src/lcd.c:69: do
      0002FE 7B 00            [12]  533 	mov	r3,#0x00
      000300 7C 00            [12]  534 	mov	r4,#0x00
      000302                        535 00101$:
                                    536 ;	src/lcd.c:71: putc_lcd(String[i]);
      000302 EB               [12]  537 	mov	a,r3
      000303 2D               [12]  538 	add	a,r5
      000304 F8               [12]  539 	mov	r0,a
      000305 EC               [12]  540 	mov	a,r4
      000306 3E               [12]  541 	addc	a,r6
      000307 F9               [12]  542 	mov	r1,a
      000308 8F 02            [24]  543 	mov	ar2,r7
      00030A 88 82            [24]  544 	mov	dpl,r0
      00030C 89 83            [24]  545 	mov	dph,r1
      00030E 8A F0            [24]  546 	mov	b,r2
      000310 12 0F CC         [24]  547 	lcall	__gptrget
      000313 F5 82            [12]  548 	mov	dpl,a
      000315 C0 07            [24]  549 	push	ar7
      000317 C0 06            [24]  550 	push	ar6
      000319 C0 05            [24]  551 	push	ar5
      00031B C0 04            [24]  552 	push	ar4
      00031D C0 03            [24]  553 	push	ar3
      00031F 12 02 F3         [24]  554 	lcall	_putc_lcd
      000322 D0 03            [24]  555 	pop	ar3
      000324 D0 04            [24]  556 	pop	ar4
      000326 D0 05            [24]  557 	pop	ar5
      000328 D0 06            [24]  558 	pop	ar6
      00032A D0 07            [24]  559 	pop	ar7
                                    560 ;	src/lcd.c:72: i++;
      00032C 0B               [12]  561 	inc	r3
      00032D BB 00 01         [24]  562 	cjne	r3,#0x00,00111$
      000330 0C               [12]  563 	inc	r4
      000331                        564 00111$:
                                    565 ;	src/lcd.c:74: while(String[i] != '\0');
      000331 EB               [12]  566 	mov	a,r3
      000332 2D               [12]  567 	add	a,r5
      000333 F8               [12]  568 	mov	r0,a
      000334 EC               [12]  569 	mov	a,r4
      000335 3E               [12]  570 	addc	a,r6
      000336 F9               [12]  571 	mov	r1,a
      000337 8F 02            [24]  572 	mov	ar2,r7
      000339 88 82            [24]  573 	mov	dpl,r0
      00033B 89 83            [24]  574 	mov	dph,r1
      00033D 8A F0            [24]  575 	mov	b,r2
      00033F 12 0F CC         [24]  576 	lcall	__gptrget
      000342 70 BE            [24]  577 	jnz	00101$
                                    578 ;	src/lcd.c:75: }
      000344 22               [24]  579 	ret
                                    580 ;------------------------------------------------------------
                                    581 ;Allocation info for local variables in function 'clear_lcd'
                                    582 ;------------------------------------------------------------
                                    583 ;	src/lcd.c:77: void clear_lcd (void)
                                    584 ;	-----------------------------------------
                                    585 ;	 function clear_lcd
                                    586 ;	-----------------------------------------
      000345                        587 _clear_lcd:
                                    588 ;	src/lcd.c:79: write_lcd(0x01);
      000345 75 82 01         [24]  589 	mov	dpl,#0x01
                                    590 ;	src/lcd.c:80: }
      000348 02 02 82         [24]  591 	ljmp	_write_lcd
                                    592 	.area CSEG    (CODE)
                                    593 	.area CONST   (CODE)
                                    594 	.area CABS    (ABS,CODE)
