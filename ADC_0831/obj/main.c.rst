                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.8.4 #10807 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module main
                                      6 	.optsdcc -mmcs51 --model-small
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _main
                                     12 	.globl _InitADC0831
                                     13 	.globl _ReadADC0831
                                     14 	.globl _clear_lcd
                                     15 	.globl _print_lcd
                                     16 	.globl _putc_lcd
                                     17 	.globl _gotoxy_lcd
                                     18 	.globl _init_lcd
                                     19 	.globl _delay_ms
                                     20 	.globl _sprintf
                                     21 	.globl _CY
                                     22 	.globl _AC
                                     23 	.globl _F0
                                     24 	.globl _RS1
                                     25 	.globl _RS0
                                     26 	.globl _OV
                                     27 	.globl _F1
                                     28 	.globl _P
                                     29 	.globl _PS
                                     30 	.globl _PT1
                                     31 	.globl _PX1
                                     32 	.globl _PT0
                                     33 	.globl _PX0
                                     34 	.globl _RD
                                     35 	.globl _WR
                                     36 	.globl _T1
                                     37 	.globl _T0
                                     38 	.globl _INT1
                                     39 	.globl _INT0
                                     40 	.globl _TXD
                                     41 	.globl _RXD
                                     42 	.globl _P3_7
                                     43 	.globl _P3_6
                                     44 	.globl _P3_5
                                     45 	.globl _P3_4
                                     46 	.globl _P3_3
                                     47 	.globl _P3_2
                                     48 	.globl _P3_1
                                     49 	.globl _P3_0
                                     50 	.globl _EA
                                     51 	.globl _ES
                                     52 	.globl _ET1
                                     53 	.globl _EX1
                                     54 	.globl _ET0
                                     55 	.globl _EX0
                                     56 	.globl _P2_7
                                     57 	.globl _P2_6
                                     58 	.globl _P2_5
                                     59 	.globl _P2_4
                                     60 	.globl _P2_3
                                     61 	.globl _P2_2
                                     62 	.globl _P2_1
                                     63 	.globl _P2_0
                                     64 	.globl _SM0
                                     65 	.globl _SM1
                                     66 	.globl _SM2
                                     67 	.globl _REN
                                     68 	.globl _TB8
                                     69 	.globl _RB8
                                     70 	.globl _TI
                                     71 	.globl _RI
                                     72 	.globl _P1_7
                                     73 	.globl _P1_6
                                     74 	.globl _P1_5
                                     75 	.globl _P1_4
                                     76 	.globl _P1_3
                                     77 	.globl _P1_2
                                     78 	.globl _P1_1
                                     79 	.globl _P1_0
                                     80 	.globl _TF1
                                     81 	.globl _TR1
                                     82 	.globl _TF0
                                     83 	.globl _TR0
                                     84 	.globl _IE1
                                     85 	.globl _IT1
                                     86 	.globl _IE0
                                     87 	.globl _IT0
                                     88 	.globl _P0_7
                                     89 	.globl _P0_6
                                     90 	.globl _P0_5
                                     91 	.globl _P0_4
                                     92 	.globl _P0_3
                                     93 	.globl _P0_2
                                     94 	.globl _P0_1
                                     95 	.globl _P0_0
                                     96 	.globl _B
                                     97 	.globl _ACC
                                     98 	.globl _PSW
                                     99 	.globl _IP
                                    100 	.globl _P3
                                    101 	.globl _IE
                                    102 	.globl _P2
                                    103 	.globl _SBUF
                                    104 	.globl _SCON
                                    105 	.globl _P1
                                    106 	.globl _TH1
                                    107 	.globl _TH0
                                    108 	.globl _TL1
                                    109 	.globl _TL0
                                    110 	.globl _TMOD
                                    111 	.globl _TCON
                                    112 	.globl _PCON
                                    113 	.globl _DPH
                                    114 	.globl _DPL
                                    115 	.globl _SP
                                    116 	.globl _P0
                                    117 ;--------------------------------------------------------
                                    118 ; special function registers
                                    119 ;--------------------------------------------------------
                                    120 	.area RSEG    (ABS,DATA)
      000000                        121 	.org 0x0000
                           000080   122 _P0	=	0x0080
                           000081   123 _SP	=	0x0081
                           000082   124 _DPL	=	0x0082
                           000083   125 _DPH	=	0x0083
                           000087   126 _PCON	=	0x0087
                           000088   127 _TCON	=	0x0088
                           000089   128 _TMOD	=	0x0089
                           00008A   129 _TL0	=	0x008a
                           00008B   130 _TL1	=	0x008b
                           00008C   131 _TH0	=	0x008c
                           00008D   132 _TH1	=	0x008d
                           000090   133 _P1	=	0x0090
                           000098   134 _SCON	=	0x0098
                           000099   135 _SBUF	=	0x0099
                           0000A0   136 _P2	=	0x00a0
                           0000A8   137 _IE	=	0x00a8
                           0000B0   138 _P3	=	0x00b0
                           0000B8   139 _IP	=	0x00b8
                           0000D0   140 _PSW	=	0x00d0
                           0000E0   141 _ACC	=	0x00e0
                           0000F0   142 _B	=	0x00f0
                                    143 ;--------------------------------------------------------
                                    144 ; special function bits
                                    145 ;--------------------------------------------------------
                                    146 	.area RSEG    (ABS,DATA)
      000000                        147 	.org 0x0000
                           000080   148 _P0_0	=	0x0080
                           000081   149 _P0_1	=	0x0081
                           000082   150 _P0_2	=	0x0082
                           000083   151 _P0_3	=	0x0083
                           000084   152 _P0_4	=	0x0084
                           000085   153 _P0_5	=	0x0085
                           000086   154 _P0_6	=	0x0086
                           000087   155 _P0_7	=	0x0087
                           000088   156 _IT0	=	0x0088
                           000089   157 _IE0	=	0x0089
                           00008A   158 _IT1	=	0x008a
                           00008B   159 _IE1	=	0x008b
                           00008C   160 _TR0	=	0x008c
                           00008D   161 _TF0	=	0x008d
                           00008E   162 _TR1	=	0x008e
                           00008F   163 _TF1	=	0x008f
                           000090   164 _P1_0	=	0x0090
                           000091   165 _P1_1	=	0x0091
                           000092   166 _P1_2	=	0x0092
                           000093   167 _P1_3	=	0x0093
                           000094   168 _P1_4	=	0x0094
                           000095   169 _P1_5	=	0x0095
                           000096   170 _P1_6	=	0x0096
                           000097   171 _P1_7	=	0x0097
                           000098   172 _RI	=	0x0098
                           000099   173 _TI	=	0x0099
                           00009A   174 _RB8	=	0x009a
                           00009B   175 _TB8	=	0x009b
                           00009C   176 _REN	=	0x009c
                           00009D   177 _SM2	=	0x009d
                           00009E   178 _SM1	=	0x009e
                           00009F   179 _SM0	=	0x009f
                           0000A0   180 _P2_0	=	0x00a0
                           0000A1   181 _P2_1	=	0x00a1
                           0000A2   182 _P2_2	=	0x00a2
                           0000A3   183 _P2_3	=	0x00a3
                           0000A4   184 _P2_4	=	0x00a4
                           0000A5   185 _P2_5	=	0x00a5
                           0000A6   186 _P2_6	=	0x00a6
                           0000A7   187 _P2_7	=	0x00a7
                           0000A8   188 _EX0	=	0x00a8
                           0000A9   189 _ET0	=	0x00a9
                           0000AA   190 _EX1	=	0x00aa
                           0000AB   191 _ET1	=	0x00ab
                           0000AC   192 _ES	=	0x00ac
                           0000AF   193 _EA	=	0x00af
                           0000B0   194 _P3_0	=	0x00b0
                           0000B1   195 _P3_1	=	0x00b1
                           0000B2   196 _P3_2	=	0x00b2
                           0000B3   197 _P3_3	=	0x00b3
                           0000B4   198 _P3_4	=	0x00b4
                           0000B5   199 _P3_5	=	0x00b5
                           0000B6   200 _P3_6	=	0x00b6
                           0000B7   201 _P3_7	=	0x00b7
                           0000B0   202 _RXD	=	0x00b0
                           0000B1   203 _TXD	=	0x00b1
                           0000B2   204 _INT0	=	0x00b2
                           0000B3   205 _INT1	=	0x00b3
                           0000B4   206 _T0	=	0x00b4
                           0000B5   207 _T1	=	0x00b5
                           0000B6   208 _WR	=	0x00b6
                           0000B7   209 _RD	=	0x00b7
                           0000B8   210 _PX0	=	0x00b8
                           0000B9   211 _PT0	=	0x00b9
                           0000BA   212 _PX1	=	0x00ba
                           0000BB   213 _PT1	=	0x00bb
                           0000BC   214 _PS	=	0x00bc
                           0000D0   215 _P	=	0x00d0
                           0000D1   216 _F1	=	0x00d1
                           0000D2   217 _OV	=	0x00d2
                           0000D3   218 _RS0	=	0x00d3
                           0000D4   219 _RS1	=	0x00d4
                           0000D5   220 _F0	=	0x00d5
                           0000D6   221 _AC	=	0x00d6
                           0000D7   222 _CY	=	0x00d7
                                    223 ;--------------------------------------------------------
                                    224 ; overlayable register banks
                                    225 ;--------------------------------------------------------
                                    226 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        227 	.ds 8
                                    228 ;--------------------------------------------------------
                                    229 ; internal ram data
                                    230 ;--------------------------------------------------------
                                    231 	.area DSEG    (DATA)
      000008                        232 _main_Msg_65536_26:
      000008                        233 	.ds 20
      00001C                        234 _main_Sample_65536_26:
      00001C                        235 	.ds 5
                                    236 ;--------------------------------------------------------
                                    237 ; overlayable items in internal ram 
                                    238 ;--------------------------------------------------------
                                    239 ;--------------------------------------------------------
                                    240 ; Stack segment in internal ram 
                                    241 ;--------------------------------------------------------
                                    242 	.area	SSEG
      000060                        243 __start__stack:
      000060                        244 	.ds	1
                                    245 
                                    246 ;--------------------------------------------------------
                                    247 ; indirectly addressable internal ram data
                                    248 ;--------------------------------------------------------
                                    249 	.area ISEG    (DATA)
                                    250 ;--------------------------------------------------------
                                    251 ; absolute internal ram data
                                    252 ;--------------------------------------------------------
                                    253 	.area IABS    (ABS,DATA)
                                    254 	.area IABS    (ABS,DATA)
                                    255 ;--------------------------------------------------------
                                    256 ; bit data
                                    257 ;--------------------------------------------------------
                                    258 	.area BSEG    (BIT)
                                    259 ;--------------------------------------------------------
                                    260 ; paged external ram data
                                    261 ;--------------------------------------------------------
                                    262 	.area PSEG    (PAG,XDATA)
                                    263 ;--------------------------------------------------------
                                    264 ; external ram data
                                    265 ;--------------------------------------------------------
                                    266 	.area XSEG    (XDATA)
                                    267 ;--------------------------------------------------------
                                    268 ; absolute external ram data
                                    269 ;--------------------------------------------------------
                                    270 	.area XABS    (ABS,XDATA)
                                    271 ;--------------------------------------------------------
                                    272 ; external initialized ram data
                                    273 ;--------------------------------------------------------
                                    274 	.area HOME    (CODE)
                                    275 	.area GSINIT0 (CODE)
                                    276 	.area GSINIT1 (CODE)
                                    277 	.area GSINIT2 (CODE)
                                    278 	.area GSINIT3 (CODE)
                                    279 	.area GSINIT4 (CODE)
                                    280 	.area GSINIT5 (CODE)
                                    281 	.area GSINIT  (CODE)
                                    282 	.area GSFINAL (CODE)
                                    283 	.area CSEG    (CODE)
                                    284 ;--------------------------------------------------------
                                    285 ; interrupt vector 
                                    286 ;--------------------------------------------------------
                                    287 	.area HOME    (CODE)
      000000                        288 __interrupt_vect:
      000000 02 00 06         [24]  289 	ljmp	__sdcc_gsinit_startup
                                    290 ;--------------------------------------------------------
                                    291 ; global & static initialisations
                                    292 ;--------------------------------------------------------
                                    293 	.area HOME    (CODE)
                                    294 	.area GSINIT  (CODE)
                                    295 	.area GSFINAL (CODE)
                                    296 	.area GSINIT  (CODE)
                                    297 	.globl __sdcc_gsinit_startup
                                    298 	.globl __sdcc_program_startup
                                    299 	.globl __start__stack
                                    300 	.globl __mcs51_genRAMCLEAR
                                    301 	.area GSFINAL (CODE)
      000019 02 00 03         [24]  302 	ljmp	__sdcc_program_startup
                                    303 ;--------------------------------------------------------
                                    304 ; Home
                                    305 ;--------------------------------------------------------
                                    306 	.area HOME    (CODE)
                                    307 	.area HOME    (CODE)
      000003                        308 __sdcc_program_startup:
      000003 02 00 72         [24]  309 	ljmp	_main
                                    310 ;	return from main will return to caller
                                    311 ;--------------------------------------------------------
                                    312 ; code
                                    313 ;--------------------------------------------------------
                                    314 	.area CSEG    (CODE)
                                    315 ;------------------------------------------------------------
                                    316 ;Allocation info for local variables in function 'main'
                                    317 ;------------------------------------------------------------
                                    318 ;i                         Allocated to registers r5 
                                    319 ;Msg                       Allocated with name '_main_Msg_65536_26'
                                    320 ;AverageValue              Allocated to registers 
                                    321 ;Sample                    Allocated with name '_main_Sample_65536_26'
                                    322 ;voltage                   Allocated to registers r4 r5 r6 r7 
                                    323 ;temp                      Allocated to registers r6 r7 
                                    324 ;tempval                   Allocated to registers r4 r5 
                                    325 ;------------------------------------------------------------
                                    326 ;	src/main.c:8: void main (void)
                                    327 ;	-----------------------------------------
                                    328 ;	 function main
                                    329 ;	-----------------------------------------
      000072                        330 _main:
                           000007   331 	ar7 = 0x07
                           000006   332 	ar6 = 0x06
                           000005   333 	ar5 = 0x05
                           000004   334 	ar4 = 0x04
                           000003   335 	ar3 = 0x03
                           000002   336 	ar2 = 0x02
                           000001   337 	ar1 = 0x01
                           000000   338 	ar0 = 0x00
                                    339 ;	src/main.c:13: unsigned char Sample[5] = {0, 0, 0, 0, 0};
      000072 75 1C 00         [24]  340 	mov	_main_Sample_65536_26,#0x00
      000075 75 1D 00         [24]  341 	mov	(_main_Sample_65536_26 + 0x0001),#0x00
      000078 75 1E 00         [24]  342 	mov	(_main_Sample_65536_26 + 0x0002),#0x00
      00007B 75 1F 00         [24]  343 	mov	(_main_Sample_65536_26 + 0x0003),#0x00
      00007E 75 20 00         [24]  344 	mov	(_main_Sample_65536_26 + 0x0004),#0x00
                                    345 ;	src/main.c:18: init_lcd();
      000081 12 02 99         [24]  346 	lcall	_init_lcd
                                    347 ;	src/main.c:19: InitADC0831();  
      000084 12 00 1C         [24]  348 	lcall	_InitADC0831
                                    349 ;	src/main.c:20: gotoxy_lcd(1, 1);
      000087 75 21 01         [24]  350 	mov	_gotoxy_lcd_PARM_2,#0x01
      00008A 75 82 01         [24]  351 	mov	dpl,#0x01
      00008D 12 02 CE         [24]  352 	lcall	_gotoxy_lcd
                                    353 ;	src/main.c:21: print_lcd("8051 ADC0831 ");
      000090 90 11 38         [24]  354 	mov	dptr,#___str_0
      000093 75 F0 80         [24]  355 	mov	b,#0x80
      000096 12 02 F8         [24]  356 	lcall	_print_lcd
                                    357 ;	src/main.c:22: delay_ms(1000);
      000099 90 03 E8         [24]  358 	mov	dptr,#0x03e8
      00009C 12 00 43         [24]  359 	lcall	_delay_ms
                                    360 ;	src/main.c:23: clear_lcd();
      00009F 12 03 45         [24]  361 	lcall	_clear_lcd
                                    362 ;	src/main.c:26: while(1){
      0000A2                        363 00103$:
                                    364 ;	src/main.c:27: AverageValue = 0;
      0000A2 7E 00            [12]  365 	mov	r6,#0x00
      0000A4 7F 00            [12]  366 	mov	r7,#0x00
                                    367 ;	src/main.c:28: for(i = 4; i > 0; i --)
      0000A6 7D 04            [12]  368 	mov	r5,#0x04
      0000A8                        369 00105$:
                                    370 ;	src/main.c:30: Sample[i] = Sample[i - 1];
      0000A8 ED               [12]  371 	mov	a,r5
      0000A9 24 1C            [12]  372 	add	a,#_main_Sample_65536_26
      0000AB F9               [12]  373 	mov	r1,a
      0000AC 8D 04            [24]  374 	mov	ar4,r5
      0000AE EC               [12]  375 	mov	a,r4
      0000AF 14               [12]  376 	dec	a
      0000B0 24 1C            [12]  377 	add	a,#_main_Sample_65536_26
      0000B2 F8               [12]  378 	mov	r0,a
      0000B3 86 04            [24]  379 	mov	ar4,@r0
      0000B5 A7 04            [24]  380 	mov	@r1,ar4
                                    381 ;	src/main.c:31: AverageValue += Sample[i];
      0000B7 7B 00            [12]  382 	mov	r3,#0x00
      0000B9 EC               [12]  383 	mov	a,r4
      0000BA 2E               [12]  384 	add	a,r6
      0000BB FE               [12]  385 	mov	r6,a
      0000BC EB               [12]  386 	mov	a,r3
      0000BD 3F               [12]  387 	addc	a,r7
      0000BE FF               [12]  388 	mov	r7,a
                                    389 ;	src/main.c:28: for(i = 4; i > 0; i --)
      0000BF DD E7            [24]  390 	djnz	r5,00105$
                                    391 ;	src/main.c:34: Sample[0] = ReadADC0831();
      0000C1 C0 07            [24]  392 	push	ar7
      0000C3 C0 06            [24]  393 	push	ar6
      0000C5 12 00 23         [24]  394 	lcall	_ReadADC0831
      0000C8 AD 82            [24]  395 	mov	r5,dpl
      0000CA D0 06            [24]  396 	pop	ar6
      0000CC D0 07            [24]  397 	pop	ar7
      0000CE 8D 1C            [24]  398 	mov	_main_Sample_65536_26,r5
                                    399 ;	src/main.c:35: AverageValue += Sample[0];
      0000D0 7C 00            [12]  400 	mov	r4,#0x00
      0000D2 ED               [12]  401 	mov	a,r5
      0000D3 2E               [12]  402 	add	a,r6
      0000D4 F5 82            [12]  403 	mov	dpl,a
      0000D6 EC               [12]  404 	mov	a,r4
      0000D7 3F               [12]  405 	addc	a,r7
      0000D8 F5 83            [12]  406 	mov	dph,a
                                    407 ;	src/main.c:36: AverageValue /= 5;
      0000DA 75 57 05         [24]  408 	mov	__divuint_PARM_2,#0x05
                                    409 ;	1-genFromRTrack replaced	mov	(__divuint_PARM_2 + 1),#0x00
      0000DD 8C 58            [24]  410 	mov	(__divuint_PARM_2 + 1),r4
      0000DF 12 03 4B         [24]  411 	lcall	__divuint
      0000E2 AE 82            [24]  412 	mov	r6,dpl
      0000E4 AF 83            [24]  413 	mov	r7,dph
                                    414 ;	src/main.c:37: sprintf(Msg, "Raw ADC = %d      \0", AverageValue);
      0000E6 C0 07            [24]  415 	push	ar7
      0000E8 C0 06            [24]  416 	push	ar6
      0000EA C0 06            [24]  417 	push	ar6
      0000EC C0 07            [24]  418 	push	ar7
      0000EE 74 46            [12]  419 	mov	a,#___str_1
      0000F0 C0 E0            [24]  420 	push	acc
      0000F2 74 11            [12]  421 	mov	a,#(___str_1 >> 8)
      0000F4 C0 E0            [24]  422 	push	acc
      0000F6 74 80            [12]  423 	mov	a,#0x80
      0000F8 C0 E0            [24]  424 	push	acc
      0000FA 74 08            [12]  425 	mov	a,#_main_Msg_65536_26
      0000FC C0 E0            [24]  426 	push	acc
      0000FE 74 00            [12]  427 	mov	a,#(_main_Msg_65536_26 >> 8)
      000100 C0 E0            [24]  428 	push	acc
      000102 74 40            [12]  429 	mov	a,#0x40
      000104 C0 E0            [24]  430 	push	acc
      000106 12 05 72         [24]  431 	lcall	_sprintf
      000109 E5 81            [12]  432 	mov	a,sp
      00010B 24 F8            [12]  433 	add	a,#0xf8
      00010D F5 81            [12]  434 	mov	sp,a
                                    435 ;	src/main.c:39: gotoxy_lcd(1, 1);
      00010F 75 21 01         [24]  436 	mov	_gotoxy_lcd_PARM_2,#0x01
      000112 75 82 01         [24]  437 	mov	dpl,#0x01
      000115 12 02 CE         [24]  438 	lcall	_gotoxy_lcd
                                    439 ;	src/main.c:40: print_lcd(Msg); 
      000118 90 00 08         [24]  440 	mov	dptr,#_main_Msg_65536_26
      00011B 75 F0 40         [24]  441 	mov	b,#0x40
      00011E 12 02 F8         [24]  442 	lcall	_print_lcd
                                    443 ;	src/main.c:42: gotoxy_lcd(1, 2);
      000121 75 21 02         [24]  444 	mov	_gotoxy_lcd_PARM_2,#0x02
      000124 75 82 01         [24]  445 	mov	dpl,#0x01
      000127 12 02 CE         [24]  446 	lcall	_gotoxy_lcd
                                    447 ;	src/main.c:43: print_lcd("Volts:");
      00012A 90 11 5A         [24]  448 	mov	dptr,#___str_2
      00012D 75 F0 80         [24]  449 	mov	b,#0x80
      000130 12 02 F8         [24]  450 	lcall	_print_lcd
      000133 D0 06            [24]  451 	pop	ar6
      000135 D0 07            [24]  452 	pop	ar7
                                    453 ;	src/main.c:44: voltage = (AverageValue/255.0)*5.0;
      000137 8E 82            [24]  454 	mov	dpl,r6
      000139 8F 83            [24]  455 	mov	dph,r7
      00013B 12 05 F3         [24]  456 	lcall	___uint2fs
      00013E AC 82            [24]  457 	mov	r4,dpl
      000140 AD 83            [24]  458 	mov	r5,dph
      000142 AE F0            [24]  459 	mov	r6,b
      000144 FF               [12]  460 	mov	r7,a
      000145 E4               [12]  461 	clr	a
      000146 C0 E0            [24]  462 	push	acc
      000148 C0 E0            [24]  463 	push	acc
      00014A 74 7F            [12]  464 	mov	a,#0x7f
      00014C C0 E0            [24]  465 	push	acc
      00014E 74 43            [12]  466 	mov	a,#0x43
      000150 C0 E0            [24]  467 	push	acc
      000152 8C 82            [24]  468 	mov	dpl,r4
      000154 8D 83            [24]  469 	mov	dph,r5
      000156 8E F0            [24]  470 	mov	b,r6
      000158 EF               [12]  471 	mov	a,r7
      000159 12 0F 09         [24]  472 	lcall	___fsdiv
      00015C AC 82            [24]  473 	mov	r4,dpl
      00015E AD 83            [24]  474 	mov	r5,dph
      000160 AE F0            [24]  475 	mov	r6,b
      000162 FF               [12]  476 	mov	r7,a
      000163 E5 81            [12]  477 	mov	a,sp
      000165 24 FC            [12]  478 	add	a,#0xfc
      000167 F5 81            [12]  479 	mov	sp,a
      000169 C0 04            [24]  480 	push	ar4
      00016B C0 05            [24]  481 	push	ar5
      00016D C0 06            [24]  482 	push	ar6
      00016F C0 07            [24]  483 	push	ar7
      000171 90 00 00         [24]  484 	mov	dptr,#0x0000
      000174 75 F0 A0         [24]  485 	mov	b,#0xa0
      000177 74 40            [12]  486 	mov	a,#0x40
      000179 12 03 74         [24]  487 	lcall	___fsmul
      00017C AC 82            [24]  488 	mov	r4,dpl
      00017E AD 83            [24]  489 	mov	r5,dph
      000180 AE F0            [24]  490 	mov	r6,b
      000182 FF               [12]  491 	mov	r7,a
      000183 E5 81            [12]  492 	mov	a,sp
      000185 24 FC            [12]  493 	add	a,#0xfc
      000187 F5 81            [12]  494 	mov	sp,a
                                    495 ;	src/main.c:46: temp = voltage * 100;
      000189 C0 04            [24]  496 	push	ar4
      00018B C0 05            [24]  497 	push	ar5
      00018D C0 06            [24]  498 	push	ar6
      00018F C0 07            [24]  499 	push	ar7
      000191 90 00 00         [24]  500 	mov	dptr,#0x0000
      000194 75 F0 C8         [24]  501 	mov	b,#0xc8
      000197 74 42            [12]  502 	mov	a,#0x42
      000199 12 03 74         [24]  503 	lcall	___fsmul
      00019C AC 82            [24]  504 	mov	r4,dpl
      00019E AD 83            [24]  505 	mov	r5,dph
      0001A0 AE F0            [24]  506 	mov	r6,b
      0001A2 FF               [12]  507 	mov	r7,a
      0001A3 E5 81            [12]  508 	mov	a,sp
      0001A5 24 FC            [12]  509 	add	a,#0xfc
      0001A7 F5 81            [12]  510 	mov	sp,a
      0001A9 8C 82            [24]  511 	mov	dpl,r4
      0001AB 8D 83            [24]  512 	mov	dph,r5
      0001AD 8E F0            [24]  513 	mov	b,r6
      0001AF EF               [12]  514 	mov	a,r7
      0001B0 12 05 BF         [24]  515 	lcall	___fs2sint
                                    516 ;	src/main.c:47: tempval = (temp/100) + 48;
      0001B3 AE 82            [24]  517 	mov	r6,dpl
      0001B5 AF 83            [24]  518 	mov	r7,dph
      0001B7 75 57 64         [24]  519 	mov	__divsint_PARM_2,#0x64
      0001BA 75 58 00         [24]  520 	mov	(__divsint_PARM_2 + 1),#0x00
      0001BD C0 07            [24]  521 	push	ar7
      0001BF C0 06            [24]  522 	push	ar6
      0001C1 12 10 31         [24]  523 	lcall	__divsint
      0001C4 E5 82            [12]  524 	mov	a,dpl
      0001C6 85 83 F0         [24]  525 	mov	b,dph
      0001C9 24 30            [12]  526 	add	a,#0x30
      0001CB FC               [12]  527 	mov	r4,a
      0001CC E4               [12]  528 	clr	a
      0001CD 35 F0            [12]  529 	addc	a,b
                                    530 ;	src/main.c:49: putc_lcd(tempval);
      0001CF 8C 82            [24]  531 	mov	dpl,r4
      0001D1 12 02 F3         [24]  532 	lcall	_putc_lcd
                                    533 ;	src/main.c:50: putc_lcd('.');
      0001D4 75 82 2E         [24]  534 	mov	dpl,#0x2e
      0001D7 12 02 F3         [24]  535 	lcall	_putc_lcd
      0001DA D0 06            [24]  536 	pop	ar6
      0001DC D0 07            [24]  537 	pop	ar7
                                    538 ;	src/main.c:53: tempval = ((temp/10)%10) + 48;
      0001DE 75 57 0A         [24]  539 	mov	__divsint_PARM_2,#0x0a
      0001E1 75 58 00         [24]  540 	mov	(__divsint_PARM_2 + 1),#0x00
      0001E4 8E 82            [24]  541 	mov	dpl,r6
      0001E6 8F 83            [24]  542 	mov	dph,r7
      0001E8 C0 07            [24]  543 	push	ar7
      0001EA C0 06            [24]  544 	push	ar6
      0001EC 12 10 31         [24]  545 	lcall	__divsint
      0001EF 75 57 0A         [24]  546 	mov	__modsint_PARM_2,#0x0a
      0001F2 75 58 00         [24]  547 	mov	(__modsint_PARM_2 + 1),#0x00
      0001F5 12 0F E8         [24]  548 	lcall	__modsint
      0001F8 E5 82            [12]  549 	mov	a,dpl
      0001FA 85 83 F0         [24]  550 	mov	b,dph
      0001FD 24 30            [12]  551 	add	a,#0x30
      0001FF FC               [12]  552 	mov	r4,a
      000200 E4               [12]  553 	clr	a
      000201 35 F0            [12]  554 	addc	a,b
                                    555 ;	src/main.c:54: putc_lcd(tempval);
      000203 8C 82            [24]  556 	mov	dpl,r4
      000205 12 02 F3         [24]  557 	lcall	_putc_lcd
      000208 D0 06            [24]  558 	pop	ar6
      00020A D0 07            [24]  559 	pop	ar7
                                    560 ;	src/main.c:56: tempval = (temp%10) + 48;
      00020C 75 57 0A         [24]  561 	mov	__modsint_PARM_2,#0x0a
      00020F 75 58 00         [24]  562 	mov	(__modsint_PARM_2 + 1),#0x00
      000212 8E 82            [24]  563 	mov	dpl,r6
      000214 8F 83            [24]  564 	mov	dph,r7
      000216 12 0F E8         [24]  565 	lcall	__modsint
      000219 E5 82            [12]  566 	mov	a,dpl
      00021B 85 83 F0         [24]  567 	mov	b,dph
      00021E 24 30            [12]  568 	add	a,#0x30
      000220 FE               [12]  569 	mov	r6,a
      000221 E4               [12]  570 	clr	a
      000222 35 F0            [12]  571 	addc	a,b
                                    572 ;	src/main.c:57: putc_lcd(tempval);
      000224 8E 82            [24]  573 	mov	dpl,r6
      000226 12 02 F3         [24]  574 	lcall	_putc_lcd
                                    575 ;	src/main.c:59: }
      000229 02 00 A2         [24]  576 	ljmp	00103$
                                    577 	.area CSEG    (CODE)
                                    578 	.area CONST   (CODE)
      001138                        579 ___str_0:
      001138 38 30 35 31 20 41 44   580 	.ascii "8051 ADC0831 "
             43 30 38 33 31 20
      001145 00                     581 	.db 0x00
      001146                        582 ___str_1:
      001146 52 61 77 20 41 44 43   583 	.ascii "Raw ADC = %d      "
             20 3D 20 25 64 20 20
             20 20 20 20
      001158 00                     584 	.db 0x00
      001159 00                     585 	.db 0x00
      00115A                        586 ___str_2:
      00115A 56 6F 6C 74 73 3A      587 	.ascii "Volts:"
      001160 00                     588 	.db 0x00
                                    589 	.area CABS    (ABS,CODE)
