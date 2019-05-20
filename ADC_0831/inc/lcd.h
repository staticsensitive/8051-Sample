#ifndef LCD_H
#define LCD_H


#define RS P1_0
#define EN P1_1
#define D0 P1_2
#define D1 P1_3
#define D2 P1_4
#define D3 P1_5


void delay_lcd (void);
void write_nibble_lcd(unsigned char Val);
void write_lcd(unsigned char Val);
void init_lcd (void);
void gotoxy_lcd(unsigned char col,unsigned char line);
void putc_lcd(unsigned char byte);
void print_lcd(char String[]);
void clear_lcd (void);

#endif