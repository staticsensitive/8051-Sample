#ifndef ADC_H
#define ADC_H


#define CS P3_5
#define CLK P3_6
#define DAT P3_7

unsigned char ReadADC0831(void);
void InitADC0831(void);

#endif