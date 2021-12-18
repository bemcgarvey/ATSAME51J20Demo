/* 
 * File:   LCD.h
 * Author: bmcgarvey
 *
 * Created on April 18, 2014, 8:07 AM
 */

#ifndef LCD_H
#define	LCD_H

#define LCD_I2C_ADDRESS 0x27
#define LCD_DATA_WIDTH  4   //Must be 4

#define LCD_ROWS    2
#define LCD_CHARS   16

#define LCD_SCROLL_UP   -1
#define LCD_SCROLL_DOWN 1

//#define LCD_POLLING

void LCDInit(void);
void LCDClear(void);
void LCDWriteLine(const char *str, char line);
void LCDReadLine(char *str, char line);
void LCDClearLine(char line);
void LCDPutStr(char *str);
void LCDPutChar(char c);
char LCDGetChar(void);
void LCDSetPos(int row, int col);
void LCDGetPos(int *row, int *col);
void LCDLoadCustomChar(const char *pixels, char pattern);
void LCDScroll(signed char dir);
void LCDDisplay(char enableDisplay, char enableCursor, char blink);
int lprintf(int line, const char *format, ...);

#endif	/* LCD_H */

