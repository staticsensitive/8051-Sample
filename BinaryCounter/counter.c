/************************************************************
*8 bit Binary Up Counter
*
*
*Processor: AT89S52
*Clock: 11.0592Mhz
*
*Written by:Richard Myrick T. Arellaga
*
************************************************************/
#include <8051.h>

#define LED_PORT P2

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
  unsigned int count = 0;
  
  
  	while(1)
  	{
  	  count++;
  	  if(count > 255){
  	    count = 0;
  	  }
  	  
	  /*Invert count for Active Low LEDS*/
  	  LED_PORT = ~count;
  	  delay_ms(100);
  	}


}