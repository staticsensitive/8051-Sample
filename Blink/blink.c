/************************************************************
*Hello World to 8051
*Blink LEDS connected to PORT2
*
*Processor: AT89S52
*Clock: 11.0592Mhz
*
*Written by:Richard Myrick T. Arellaga
*
************************************************************/

#include <8051.h>


/*milliseconds delay for AT89S52 with 11.0592MHz Clock SDCC Compiler*/
void delay_ms (unsigned int ms)
{
  unsigned int i,j;
  
    for(i=0; i<ms; i++){
      for(j=0; j<127; j++);
    } 
}

void main (void)
{
  

  while(1)
  	{
  	     
  	   P2 = 0x00;
	   delay_ms(500);
  	   P2 = 0xFF;
  	   delay_ms(500);
  	}
}