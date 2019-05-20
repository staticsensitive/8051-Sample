                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.8.4 #10807 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module adc
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
                                    107 	.globl _InitADC0831
                                    108 	.globl _ReadADC0831
                                    109 ;--------------------------------------------------------
                                    110 ; special function registers
                                    111 ;--------------------------------------------------------
                                    112 	.area RSEG    (ABS,DATA)
      000000                        113 	.org 0x0000
                           000080   114 _P0	=	0x0080
                           000081   115 _SP	=	0x0081
                           000082   116 _DPL	=	0x0082
                           000083   117 _DPH	=	0x0083
                           000087   118 _PCON	=	0x0087
                           000088   119 _TCON	=	0x0088
                           000089   120 _TMOD	=	0x0089
                           00008A   121 _TL0	=	0x008a
                           00008B   122 _TL1	=	0x008b
                           00008C   123 _TH0	=	0x008c
                           00008D   124 _TH1	=	0x008d
                           000090   125 _P1	=	0x0090
                           000098   126 _SCON	=	0x0098
                           000099   127 _SBUF	=	0x0099
                           0000A0   128 _P2	=	0x00a0
                           0000A8   129 _IE	=	0x00a8
                           0000B0   130 _P3	=	0x00b0
                           0000B8   131 _IP	=	0x00b8
                           0000D0   132 _PSW	=	0x00d0
                           0000E0   133 _ACC	=	0x00e0
                           0000F0   134 _B	=	0x00f0
                                    135 ;--------------------------------------------------------
                                    136 ; special function bits
                                    137 ;--------------------------------------------------------
                                    138 	.area RSEG    (ABS,DATA)
      000000                        139 	.org 0x0000
                           000080   140 _P0_0	=	0x0080
                           000081   141 _P0_1	=	0x0081
                           000082   142 _P0_2	=	0x0082
                           000083   143 _P0_3	=	0x0083
                           000084   144 _P0_4	=	0x0084
                           000085   145 _P0_5	=	0x0085
                           000086   146 _P0_6	=	0x0086
                           000087   147 _P0_7	=	0x0087
                           000088   148 _IT0	=	0x0088
                           000089   149 _IE0	=	0x0089
                           00008A   150 _IT1	=	0x008a
                           00008B   151 _IE1	=	0x008b
                           00008C   152 _TR0	=	0x008c
                           00008D   153 _TF0	=	0x008d
                           00008E   154 _TR1	=	0x008e
                           00008F   155 _TF1	=	0x008f
                           000090   156 _P1_0	=	0x0090
                           000091   157 _P1_1	=	0x0091
                           000092   158 _P1_2	=	0x0092
                           000093   159 _P1_3	=	0x0093
                           000094   160 _P1_4	=	0x0094
                           000095   161 _P1_5	=	0x0095
                           000096   162 _P1_6	=	0x0096
                           000097   163 _P1_7	=	0x0097
                           000098   164 _RI	=	0x0098
                           000099   165 _TI	=	0x0099
                           00009A   166 _RB8	=	0x009a
                           00009B   167 _TB8	=	0x009b
                           00009C   168 _REN	=	0x009c
                           00009D   169 _SM2	=	0x009d
                           00009E   170 _SM1	=	0x009e
                           00009F   171 _SM0	=	0x009f
                           0000A0   172 _P2_0	=	0x00a0
                           0000A1   173 _P2_1	=	0x00a1
                           0000A2   174 _P2_2	=	0x00a2
                           0000A3   175 _P2_3	=	0x00a3
                           0000A4   176 _P2_4	=	0x00a4
                           0000A5   177 _P2_5	=	0x00a5
                           0000A6   178 _P2_6	=	0x00a6
                           0000A7   179 _P2_7	=	0x00a7
                           0000A8   180 _EX0	=	0x00a8
                           0000A9   181 _ET0	=	0x00a9
                           0000AA   182 _EX1	=	0x00aa
                           0000AB   183 _ET1	=	0x00ab
                           0000AC   184 _ES	=	0x00ac
                           0000AF   185 _EA	=	0x00af
                           0000B0   186 _P3_0	=	0x00b0
                           0000B1   187 _P3_1	=	0x00b1
                           0000B2   188 _P3_2	=	0x00b2
                           0000B3   189 _P3_3	=	0x00b3
                           0000B4   190 _P3_4	=	0x00b4
                           0000B5   191 _P3_5	=	0x00b5
                           0000B6   192 _P3_6	=	0x00b6
                           0000B7   193 _P3_7	=	0x00b7
                           0000B0   194 _RXD	=	0x00b0
                           0000B1   195 _TXD	=	0x00b1
                           0000B2   196 _INT0	=	0x00b2
                           0000B3   197 _INT1	=	0x00b3
                           0000B4   198 _T0	=	0x00b4
                           0000B5   199 _T1	=	0x00b5
                           0000B6   200 _WR	=	0x00b6
                           0000B7   201 _RD	=	0x00b7
                           0000B8   202 _PX0	=	0x00b8
                           0000B9   203 _PT0	=	0x00b9
                           0000BA   204 _PX1	=	0x00ba
                           0000BB   205 _PT1	=	0x00bb
                           0000BC   206 _PS	=	0x00bc
                           0000D0   207 _P	=	0x00d0
                           0000D1   208 _F1	=	0x00d1
                           0000D2   209 _OV	=	0x00d2
                           0000D3   210 _RS0	=	0x00d3
                           0000D4   211 _RS1	=	0x00d4
                           0000D5   212 _F0	=	0x00d5
                           0000D6   213 _AC	=	0x00d6
                           0000D7   214 _CY	=	0x00d7
                                    215 ;--------------------------------------------------------
                                    216 ; overlayable register banks
                                    217 ;--------------------------------------------------------
                                    218 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        219 	.ds 8
                                    220 ;--------------------------------------------------------
                                    221 ; internal ram data
                                    222 ;--------------------------------------------------------
                                    223 	.area DSEG    (DATA)
                                    224 ;--------------------------------------------------------
                                    225 ; overlayable items in internal ram 
                                    226 ;--------------------------------------------------------
                                    227 	.area	OSEG    (OVR,DATA)
                                    228 ;--------------------------------------------------------
                                    229 ; indirectly addressable internal ram data
                                    230 ;--------------------------------------------------------
                                    231 	.area ISEG    (DATA)
                                    232 ;--------------------------------------------------------
                                    233 ; absolute internal ram data
                                    234 ;--------------------------------------------------------
                                    235 	.area IABS    (ABS,DATA)
                                    236 	.area IABS    (ABS,DATA)
                                    237 ;--------------------------------------------------------
                                    238 ; bit data
                                    239 ;--------------------------------------------------------
                                    240 	.area BSEG    (BIT)
                                    241 ;--------------------------------------------------------
                                    242 ; paged external ram data
                                    243 ;--------------------------------------------------------
                                    244 	.area PSEG    (PAG,XDATA)
                                    245 ;--------------------------------------------------------
                                    246 ; external ram data
                                    247 ;--------------------------------------------------------
                                    248 	.area XSEG    (XDATA)
                                    249 ;--------------------------------------------------------
                                    250 ; absolute external ram data
                                    251 ;--------------------------------------------------------
                                    252 	.area XABS    (ABS,XDATA)
                                    253 ;--------------------------------------------------------
                                    254 ; external initialized ram data
                                    255 ;--------------------------------------------------------
                                    256 	.area HOME    (CODE)
                                    257 	.area GSINIT0 (CODE)
                                    258 	.area GSINIT1 (CODE)
                                    259 	.area GSINIT2 (CODE)
                                    260 	.area GSINIT3 (CODE)
                                    261 	.area GSINIT4 (CODE)
                                    262 	.area GSINIT5 (CODE)
                                    263 	.area GSINIT  (CODE)
                                    264 	.area GSFINAL (CODE)
                                    265 	.area CSEG    (CODE)
                                    266 ;--------------------------------------------------------
                                    267 ; global & static initialisations
                                    268 ;--------------------------------------------------------
                                    269 	.area HOME    (CODE)
                                    270 	.area GSINIT  (CODE)
                                    271 	.area GSFINAL (CODE)
                                    272 	.area GSINIT  (CODE)
                                    273 ;--------------------------------------------------------
                                    274 ; Home
                                    275 ;--------------------------------------------------------
                                    276 	.area HOME    (CODE)
                                    277 	.area HOME    (CODE)
                                    278 ;--------------------------------------------------------
                                    279 ; code
                                    280 ;--------------------------------------------------------
                                    281 	.area CSEG    (CODE)
                                    282 ;------------------------------------------------------------
                                    283 ;Allocation info for local variables in function 'InitADC0831'
                                    284 ;------------------------------------------------------------
                                    285 ;	src/adc.c:4: void InitADC0831(void)
                                    286 ;	-----------------------------------------
                                    287 ;	 function InitADC0831
                                    288 ;	-----------------------------------------
      00001C                        289 _InitADC0831:
                           000007   290 	ar7 = 0x07
                           000006   291 	ar6 = 0x06
                           000005   292 	ar5 = 0x05
                           000004   293 	ar4 = 0x04
                           000003   294 	ar3 = 0x03
                           000002   295 	ar2 = 0x02
                           000001   296 	ar1 = 0x01
                           000000   297 	ar0 = 0x00
                                    298 ;	src/adc.c:6: CLK = 0;
                                    299 ;	assignBit
      00001C C2 B6            [12]  300 	clr	_P3_6
                                    301 ;	src/adc.c:7: CS = 1;
                                    302 ;	assignBit
      00001E D2 B5            [12]  303 	setb	_P3_5
                                    304 ;	src/adc.c:8: DAT = 1;
                                    305 ;	assignBit
      000020 D2 B7            [12]  306 	setb	_P3_7
                                    307 ;	src/adc.c:9: }
      000022 22               [24]  308 	ret
                                    309 ;------------------------------------------------------------
                                    310 ;Allocation info for local variables in function 'ReadADC0831'
                                    311 ;------------------------------------------------------------
                                    312 ;Data                      Allocated to registers r5 
                                    313 ;i                         Allocated to registers r6 
                                    314 ;------------------------------------------------------------
                                    315 ;	src/adc.c:11: unsigned char ReadADC0831(void)
                                    316 ;	-----------------------------------------
                                    317 ;	 function ReadADC0831
                                    318 ;	-----------------------------------------
      000023                        319 _ReadADC0831:
                                    320 ;	src/adc.c:13: unsigned char Data = 0;
      000023 7F 00            [12]  321 	mov	r7,#0x00
                                    322 ;	src/adc.c:16: CS = 0;
                                    323 ;	assignBit
      000025 C2 B5            [12]  324 	clr	_P3_5
                                    325 ;	src/adc.c:18: for(i = 0; i < 10; i ++)
      000027 7E 00            [12]  326 	mov	r6,#0x00
      000029                        327 00102$:
                                    328 ;	src/adc.c:20: CLK = 1;
                                    329 ;	assignBit
      000029 D2 B6            [12]  330 	setb	_P3_6
                                    331 ;	src/adc.c:21: Data <<= 1;
      00002B 8F 05            [24]  332 	mov	ar5,r7
      00002D ED               [12]  333 	mov	a,r5
      00002E 2D               [12]  334 	add	a,r5
      00002F FD               [12]  335 	mov	r5,a
                                    336 ;	src/adc.c:22: Data |= DAT;
      000030 A2 B7            [12]  337 	mov	c,_P3_7
      000032 E4               [12]  338 	clr	a
      000033 33               [12]  339 	rlc	a
      000034 4D               [12]  340 	orl	a,r5
      000035 FF               [12]  341 	mov	r7,a
                                    342 ;	src/adc.c:23: CLK = 0;
                                    343 ;	assignBit
      000036 C2 B6            [12]  344 	clr	_P3_6
                                    345 ;	src/adc.c:18: for(i = 0; i < 10; i ++)
      000038 0E               [12]  346 	inc	r6
      000039 BE 0A 00         [24]  347 	cjne	r6,#0x0a,00117$
      00003C                        348 00117$:
      00003C 40 EB            [24]  349 	jc	00102$
                                    350 ;	src/adc.c:25: CS = 1;
                                    351 ;	assignBit
      00003E D2 B5            [12]  352 	setb	_P3_5
                                    353 ;	src/adc.c:26: return Data;
      000040 8F 82            [24]  354 	mov	dpl,r7
                                    355 ;	src/adc.c:27: }
      000042 22               [24]  356 	ret
                                    357 	.area CSEG    (CODE)
                                    358 	.area CONST   (CODE)
                                    359 	.area CABS    (ABS,CODE)
