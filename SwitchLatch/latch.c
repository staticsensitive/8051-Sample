/************************************************************
*Latch Push Button Switch with Debounce
*
*
*Processor: AT89S52
*Clock: 11.0592Mhz
*
*Written by:Richard Myrick T. Arellaga
*
************************************************************/
#include <8052.h>

#define SW1 P1_6
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
  unsigned int state = 0;
  
  /*Initialize Port as Input*/
  SW1 = 1; 
  
  
  
  	while(1)
  	{
  	   if(SW1 == 0){
  	     delay_ms(200); //Delay Debounce
  	     state = !state;
  	   }
  	   
  	   if(state == 1){ 
  	      LED = 0x00;
  	   }else{
  	       LED = 0xFF;
  	   }
  
  	}
}