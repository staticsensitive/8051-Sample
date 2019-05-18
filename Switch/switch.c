/************************************************************
*Reading Push Button Switch
*
*
*Processor: AT89S52
*Clock: 11.0592Mhz
*
*Written by:Richard Myrick T. Arellaga
*
************************************************************/
#include <8051.h>

#define SW1 P1_6
#define SW2 P1_7
#define LED P2

void delay_ms (unsigned int ms)
{
  unsigned int i,j;
  
    for(i=0; i<ms; i++){
      for(j=0; j<127; j++);
    }
    
}

void main (void)
{
  /*Initialize Port as Input*/
  SW1 = 1; 
  SW2 = 1;
  
  	while(1)
  	{
  	  if(SW1 == 0){
  	    LED = 0x00;
  	  }else{
  	    LED = 0xFF;
  	  }
  	  
  	  if(SW2 == 0){
  	    LED = 0xAA;
  	  }else{
  	    LED = 0xFF;
  	  }
  	}
}