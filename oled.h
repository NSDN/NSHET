#ifndef __OLED_H_
#define __OLED_H_


#include "ch558.h"

#include <stdint.h>

/*
 * CLK P02
 * DAT P03
 * */
#define OLED_DAT_SET() P03 = 1
#define OLED_DAT_CLR() P03 = 0
#define OLED_CLK_SET() P02 = 1
#define OLED_CLK_CLR() P02 = 0
#define OLED_DAT_GET() P03

#define IOBUF_SIZE 128

#define OLED_SCREEN_BIG 0x7A
#define OLED_SCREEN_SMALL 0x78

void oledInit(uint8_t dev);
void oledBright(uint8_t bright);
void oledClear();
void oledSwitch(uint8_t state);
void oledSize(uint8_t* w, uint8_t* h);
void oledChar(uint8_t x, uint8_t y, uint8_t fid, uint8_t color, char c);
void oledPrint(uint8_t x, uint8_t y, uint8_t fid, uint8_t color, char* str);
int oledPrintf(uint8_t x, uint8_t y, uint8_t fid, uint8_t color, const char* format, ...);
int oledPrintfc(uint8_t y, uint8_t fid, uint8_t color, const char* format, ...);


#endif
