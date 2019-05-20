#include <8051.h>
#include "lcd.h"

void delay_lcd (void)
{
	int del1,del2;
  	for(del1=0;del1<10;del1++)
  	{
    	for(del2=0;del2<200;del2++);
  	}
}



void write_nibble_lcd(unsigned char Val)
{
	EN = 1;
	D0 = D1 = D2 = D3 = 0;
	if(Val & 0x01)
		D0 = 1;
	if(Val & 0x02)
		D1 = 1;
	if(Val & 0x04)
		D2 = 1;
	if(Val & 0x08)
		D3 = 1;
	EN = 0;
}

void write_lcd(unsigned char Val)
{
	write_nibble_lcd(Val >> 4);
	write_nibble_lcd(Val);
	delay_lcd();
}



void init_lcd (void)
{
  RS = 0;
  write_nibble_lcd(0x03);	delay_lcd();
  write_nibble_lcd(0x03);	delay_lcd();
  write_nibble_lcd(0x02);	delay_lcd();
  write_lcd(0x28);
  write_lcd(0x06);
  write_lcd(0x0c);
  write_lcd(0x01);
}  

void gotoxy_lcd(unsigned char col,unsigned char line)
{
	RS = 0;
	if (line == 1)
		write_lcd(0x7f+col);
	if (line == 2)
		write_lcd(0xbf+col);
}

void putc_lcd(unsigned char byte)
{
   RS = 1;
   write_lcd(byte);
}

void print_lcd(char String[])
{
	int i = 0;
	do
   	{
		putc_lcd(String[i]);
    	i++;
	}
	while(String[i] != '\0');
}

void clear_lcd (void)
{
  write_lcd(0x01);
}
