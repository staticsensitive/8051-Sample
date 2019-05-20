/************************************************************
*Hello World to 8051
*Interfacing ADC0831 Serial ADC to AT89S52
*
*Processor: AT89S52
*Clock: 11.0592Mhz
*Compiler: SDCC
*
*
*Written by:Richard Myrick T. Arellaga
*
************************************************************/

#include <8051.h>
#include <stdio.h>
#include "delay.h"
#include "lcd.h"
#include "adc.h"


void main (void)
{
 unsigned char i;
 unsigned char Msg[20];
 unsigned int AverageValue;
 unsigned char Sample[5] = {0, 0, 0, 0, 0};
 float voltage = 0.0;
 int temp;
 int tempval;
	
  init_lcd();
  InitADC0831();  
  gotoxy_lcd(1, 1);
  print_lcd("8051 ADC0831 ");
  delay_ms(1000);
  clear_lcd();
  
  
    while(1){
		AverageValue = 0;
		for(i = 4; i > 0; i --)
		{
			Sample[i] = Sample[i - 1];
			AverageValue += Sample[i];
		}
		
		Sample[0] = ReadADC0831();
		AverageValue += Sample[0];
		AverageValue /= 5;
		sprintf(Msg, "Raw ADC = %d      \0", AverageValue);
		
		gotoxy_lcd(1, 1);
		print_lcd(Msg); 
		
		gotoxy_lcd(1, 2);
		print_lcd("Volts:");
		voltage = (AverageValue/255.0)*5.0;
		
		temp = voltage * 100;
		tempval = (temp/100) + 48;
		
		putc_lcd(tempval);
		putc_lcd('.');
		
	
		tempval = ((temp/10)%10) + 48;
		putc_lcd(tempval);
		
		tempval = (temp%10) + 48;
		putc_lcd(tempval);
    }
}