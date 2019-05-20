#include <8051.h>
#include "delay.h"

void delay_ms(unsigned int count)    		
{
     int i,j;
     for(i=0;i<count;i++)
     for(j=0;j<127;j++);
}