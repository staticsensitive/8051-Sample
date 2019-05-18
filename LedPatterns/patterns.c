/************************************************************
*Display Different LED Patterns using Array
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

unsigned int ledPattern1[8] = {0x01,0x02,0x04,0x08,0x10,0x20,0x40,0x80};
unsigned int ledPattern2[8] = {0x80,0x40,0x20,0x10,0x08,0x04,0x02,0x01};
unsigned int ledPattern3[8] = {0x00,0x01,0x03,0x07,0x0F,0x1F,0x3F,0xFF};
unsigned int ledPattern4[8] = {0xFF,0x3F,0x1F,0x0F,0x07,0x03,0x01,0x00};

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
  unsigned int cnt;

  while(1)
  	{
  	  /*Invert for Active Low LEDS, patterns are made with active high
  	  leds in mind*/
  	  
  	   for(cnt=0; cnt<8; cnt++){
  	     LED_PORT = ~ledPattern1[cnt];
  	     delay_ms(100);
  	   }
          
          for(cnt=0; cnt<8; cnt++){
  	     LED_PORT = ~ledPattern2[cnt];
  	     delay_ms(100);
  	   }
  	   
  	   LED_PORT = 0xFF;
  	   for(cnt=0; cnt<10; cnt++){
  	     LED_PORT = ~LED_PORT;
  	     delay_ms(100);
  	   }
  	   
          for(cnt=0; cnt<8; cnt++){
  	     LED_PORT = ~ledPattern3[cnt];
  	     delay_ms(100);
  	   }  	
  	      
          for(cnt=0; cnt<8; cnt++){
  	     LED_PORT = ~ledPattern4[cnt];
  	     delay_ms(100);
  	   }  	  	   
  	   
  	     	   
  	}/*End of while loop*/
  	
}/*End of main*/