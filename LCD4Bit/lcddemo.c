/************************************************************
*Interfacing LCD in 4 Bit Mode
*
*
*Processor: AT89S52
*Clock: 11.0592Mhz
*
*Written by:Richard Myrick T. Arellaga
*
************************************************************/
#include<8051.h>

#define RS P1_0
#define EN P1_1
#define D0 P1_2
#define D1 P1_3
#define D2 P1_4
#define D3 P1_5

void delay_ms(unsigned int count)    		
{
     int i,j;
     for(i=0;i<count;i++)
     for(j=0;j<127;j++);
}

void write_nibble(unsigned char nib)
{
  EN = 1;
  D0 = D1 = D2 = D3 = 0;
  if(nib & 0x01){D0 = 1;}
  if(nib & 0x02){D1 = 1;}
  if(nib & 0x04){D2 = 1;}  
  if(nib & 0x08){D3 = 1;}  
  EN = 0;
    
}

void write_byte (unsigned char b)
{
  write_nibble(b >> 4);
  write_nibble(b);
  delay_ms(20);
}

void lcd_init (void)
{
 RS = 0;
 write_nibble(0x03); delay_ms(20);
 write_nibble(0x03); delay_ms(20);
 write_nibble(0x02); delay_ms(20);
 write_byte(0x28);
 write_byte(0x06);
 write_byte(0x0C);
 write_byte(0x01);
}

void lcd_putc (unsigned char c)
{
  RS = 1;
  write_byte(c);
}

void lcd_puts (char *str)
{
  while(*str){
    lcd_putc(*str++);
  }
}

void lcd_clear (void)
{
 RS = 0;
 write_byte(0x01);
}

void lcd_setCursor (unsigned char col, unsigned char row)
{
  RS = 0;
  if(row == 0){
    write_byte(0x7F+col);
  }
  if(row == 1){
     write_byte(0xBF+col);
  }
}

void main (void)
{
  lcd_init();
  lcd_setCursor(1,0);
  lcd_puts("Hello World");
  delay_ms(2000);
  lcd_clear();
  lcd_setCursor(1,0);
  lcd_puts("Line 1");
  lcd_setCursor(1,1);
  lcd_puts("Line 2");
  
  
  while(1);
}