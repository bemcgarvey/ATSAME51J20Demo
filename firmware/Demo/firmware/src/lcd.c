
#include "lcd.h"
#include <stdio.h>
#include <stdarg.h>
#include "definitions.h"

//Functions below must be defined for the interface
void LCDWriteByte(char c, char rs);
char LCDReadByte(char rs);
void LCDInitPort(void);
void LCDWrite8(char c, char rs); //Only needed if 4 bit mode is supported
void __delay_us(int delay);

//Private LCD Functions
void LCDCommand(unsigned char command);
void LCDInitCommand(unsigned char command);
void LCDWriteData(char c);
char LCDBusy(void);
char LCDReadData(void);
char LCDGetAC(void);

//Utility functions
unsigned char calculateBase(char line);
void wait(void);
void longDelay(void);
void shortDelay(void);

void LCDInit(void) {
    char functionSet = 0b00111000;
    __delay_us(65000);
    LCDInitPort();
    __delay_us(10000);
#if LCD_DATA_WIDTH == 4
    LCDWrite8(functionSet, 0);
    __delay_us(40);
    LCDWrite8(functionSet, 0);
    __delay_us(40);
    functionSet = 0b00101000;
    LCDWrite8(functionSet, 0);
    __delay_us(40);
#endif
    LCDInitCommand(functionSet); //Function set
    __delay_us(40);
    LCDInitCommand(0b00001100); //Display on, cursor and blink off
    __delay_us(40);
    LCDInitCommand(0b00000001); //Clear
    __delay_us(1700);
    LCDInitCommand(0b00000110); //Entry mode increment, no shift
    __delay_us(40);
}

void LCDClear(void) {
    LCDCommand(0b00000001);
    longDelay();
}

void LCDPutStr(char *str) {
    while (*str) {
        LCDWriteData(*str);
        ++str;
    }
}

void LCDWriteLine(const char *str, char line) {
    if (line >= LCD_ROWS) {
        return;
    }
    LCDSetPos(line, 0);
    while (*str) {
        if (*str == '\n') {
            ++line;
            if (line == LCD_ROWS) {
                line = 0;
            }
        }
        if (*str == '\r' || *str == '\n') {
            LCDSetPos(line, 0);
        } else {
            LCDWriteData(*str);
        }
        ++str;
    }
}

void LCDClearLine(char line) {
    char c = 0;
    if (line >= LCD_ROWS) {
        return;
    }
    LCDSetPos(line, 0);
    while (c < LCD_CHARS) {
        LCDWriteData(' ');
        ++c;
    }
}

void LCDPutChar(char c) {
    LCDWriteData(c);
}

void LCDSetPos(int row, int col) {
    int pos;
    if (row < 0 || col < 0 || row >= LCD_ROWS || col >= LCD_CHARS) {
        return;
    }
    pos = calculateBase((char) row) + col;
    LCDCommand(128 + (unsigned char) pos);
}

void LCDGetPos(int *row, int *col) {
    char ac;
    ac = LCDGetAC();
    *row = (ac / 64);
    if (LCD_ROWS > 2 && ac % 64 >= 20) {
        ++(*row);
    }
    *col = ac % 64;
    if (LCD_ROWS > 2) {
        *col = *col % 20;
    }
}

void LCDLoadCustomChar(const char *pixels, char pattern) {
    int rows = 8;
    char ac;
    if (pattern < 8) {
        ac = LCDGetAC();
        LCDCommand(64 + (pattern * 8));
        while (rows > 0) {
            LCDWriteData(*pixels);
            ++pixels;
            --rows;
        }
        LCDCommand(128 + ac);
    }
}

void LCDReadLine(char *str, char line) {
    int i;
    if (line >= LCD_ROWS) {
        str[0] = '\0';
        return;
    }
    LCDSetPos(line, 0);
    for (i = 0; i < LCD_CHARS; ++i) {
        str[i] = LCDReadData();
    }
    str[LCD_CHARS] = '\0';
}

char LCDGetChar(void) {
    char c;
    c = LCDReadData();
    return c;
}

void LCDScroll(signed char dir) {
    char str[LCD_CHARS + 1];
    char ac;
    signed char i;
    ac = LCDGetAC();
    if (dir == LCD_SCROLL_UP) {
        for (i = 1; i < LCD_ROWS; ++i) {
            LCDReadLine(str, (char) i);
            LCDWriteLine(str, (char) (i - 1));
        }
        LCDClearLine(LCD_ROWS - 1);
    } else {
        for (i = LCD_ROWS - 2; i >= 0; --i) {
            LCDReadLine(str, (char) i);
            LCDWriteLine(str, (char) (i + 1));
        }
        LCDClearLine(0);
    }
    LCDCommand(128 + ac);
}

void LCDDisplay(char enableDisplay, char enableCursor, char blink) {
    unsigned char command = 0b00001000;
    if (enableDisplay) {
        command |= 0b00000100;
    }
    if (enableCursor) {
        command |= 0b00000010;
    }
    if (blink) {
        command |= 0b00000001;
    }
    LCDCommand(command);
}

int lprintf(int line, const char *format, ...) {
    char str[LCD_CHARS + 1];
    int result;
    va_list args;
    va_start(args, format);
    result = vsnprintf(str, LCD_CHARS + 1, format, args);
    va_end(args);
    LCDClearLine((char) line);
    LCDWriteLine(str, (char) line);
    return result;
}

void LCDCommand(unsigned char command) {
    wait();
    LCDWriteByte(command, 0);
    shortDelay();
}

void LCDInitCommand(unsigned char command) {
    LCDWriteByte(command, 0);
}

void LCDWriteData(char c) {
    wait();
    LCDWriteByte(c, 1);
    shortDelay();
}

char LCDBusy(void) {
    char b;
    b = LCDReadByte(0);
    return (b & 0b10000000) != 0;
}

char LCDReadData(void) {
    char c;
    wait();
    c = LCDReadByte(1);
    shortDelay();
    return c;
}

char LCDGetAC(void) {
    char b;
    wait();
    b = LCDReadByte(0);
    shortDelay();
    return b & 0b01111111;
}

unsigned char calculateBase(char line) {
    char lineBase;
    if (line % 2 == 0) {
        lineBase = line * 10;
    } else {
        lineBase = 54 + line * 10;
    }
    return lineBase;
}

void wait(void) {
#ifdef LCD_POLLING
    while (LCDBusy());
#endif
}

void longDelay(void) {
#ifndef LCD_POLLING
    __delay_us(1660);
#endif
}

void shortDelay(void) {
#ifndef LCD_POLLING
    __delay_us(40);
#endif
}

#define RS_ON   0b00000001
#define RW_ON   0b00000010
#define E_ON    0b00000100
#define E_OFF   0b11111011
#define BACKLIGHT_ON    0b00001000

volatile int transferStatus = 0;

//TODO for use with FreeRTOS it would be better to use a binary semaphore or the like
// to notify the task when a transfer is complete.

void SERCOM1Callback(uintptr_t context) {
    if (SERCOM1_I2C_ErrorGet() == SERCOM_I2C_ERROR_NONE) {
        transferStatus = 1;
    } else {
        transferStatus = -1;
    }
}

void LCDInitPort(void) {
    //Assume TWIHS0 is initialized.  Can we check?
    SERCOM1_I2C_CallbackRegister( SERCOM1Callback, (uintptr_t)NULL);
    uint8_t data = BACKLIGHT_ON;
    transferStatus = 0;
    SERCOM1_I2C_Write(LCD_I2C_ADDRESS, &data, 1);
    while (!transferStatus);
}

void LCDWrite8(char c, char rs) {
    unsigned char dataByte;
    unsigned char comFlags = BACKLIGHT_ON;
    if (rs) {
        comFlags |= RS_ON;
    }
    uint8_t data[2];
    dataByte = c & 0b11110000;
    data[0] = dataByte | E_ON | comFlags;
    data[1] = dataByte | comFlags;
    transferStatus = 0;
    SERCOM1_I2C_Write(LCD_I2C_ADDRESS, data, 2);
    while (!transferStatus);
}

void LCDWriteByte(char c, char rs) {
    unsigned char dataByte;
    unsigned char comFlags = BACKLIGHT_ON;
    if (rs) {
        comFlags |= RS_ON;
    }
    uint8_t data[5];
    dataByte = c & 0b11110000;
    data[0] = dataByte | E_ON | comFlags;
    data[1] = dataByte | comFlags;
    dataByte = (c << 4) & 0b11110000;
    data[2] = dataByte | E_ON | comFlags;
    data[3] = dataByte | comFlags;
    data[4] = BACKLIGHT_ON;
    transferStatus = 0;
    SERCOM1_I2C_Write(LCD_I2C_ADDRESS, data, 5);
    while (!transferStatus);
}

char LCDReadNibble(char rs) {
    uint8_t b = 0;
    char comFlags = 0b11111000 | RW_ON;
    if (rs) {
        comFlags |= RS_ON;
    }
    uint8_t data[2];
    data[0] = comFlags;
    data[1] = comFlags | E_ON;
    transferStatus = 0;
    SERCOM1_I2C_Write(LCD_I2C_ADDRESS, data, 2);
    while (!transferStatus);
    transferStatus = 0;
    SERCOM1_I2C_Read(LCD_I2C_ADDRESS, &b, 1);
    while (!transferStatus);
    transferStatus = 0;
    SERCOM1_I2C_Write(LCD_I2C_ADDRESS, data, 1);
    while (!transferStatus);
    //TODO this is still not working consistently - LCDReadLine() returns some gibberish
    return b;
}

char LCDReadByte(char rs) {
    unsigned char ub;
    unsigned char lb;
    ub = LCDReadNibble(rs);
    lb = LCDReadNibble(rs);
    return ub | (lb >> 4);
}

void __delay_us(int delay) {
    SYS_TIME_HANDLE timer = SYS_TIME_HANDLE_INVALID;
    if (SYS_TIME_DelayUS(delay, &timer) == SYS_TIME_SUCCESS) {
        while (SYS_TIME_DelayIsComplete(timer) == false);
    }
}