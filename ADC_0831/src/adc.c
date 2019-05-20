#include <8051.h>
#include "adc.h"

void InitADC0831(void)
{
	CLK = 0;
	CS = 1;
	DAT = 1;
}

unsigned char ReadADC0831(void)
{
 unsigned char Data = 0;
 unsigned char i = 0;
	
	CS = 0;
	
	for(i = 0; i < 10; i ++)
	{
		CLK = 1;
		Data <<= 1;
		Data |= DAT;
		CLK = 0;
	}
	CS = 1;
	return Data;
}