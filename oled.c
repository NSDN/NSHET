#include "oled.h"

#include "sys.h"
#include "font.h"

#include <stdio.h>
#include <stdarg.h>
#include <string.h>
#include <stdlib.h>

#define OLED_DELAY() delay_us(1)

void __oled_start() {
    OLED_DAT_SET();
    OLED_CLK_SET(); OLED_DELAY();
    OLED_DAT_CLR(); OLED_DELAY();
}

void __oled_stop() {
    OLED_DAT_CLR();
    OLED_CLK_SET(); OLED_DELAY();
    OLED_DAT_SET(); OLED_DELAY();
}

void __oled_ack() {
    OLED_CLK_CLR();
    OLED_DAT_SET();
    OLED_CLK_SET(); OLED_DELAY();
    for (uint8_t i = 0; i < 0xFF; i++) {
        if (OLED_DAT_GET() == 0)
            break;
        OLED_DELAY();
    }
    OLED_CLK_CLR(); OLED_DELAY();
}

void __oled_nak() {
    OLED_CLK_CLR();
    OLED_DAT_SET();
    OLED_CLK_SET(); OLED_DELAY();
    OLED_CLK_CLR(); OLED_DELAY();
}

void __oled_wr(uint8_t data) {
    for (uint8_t i = 0; i < 8; i++) {
        OLED_CLK_CLR(); OLED_DELAY();
        if (data & (1 << (7 - i)))
            OLED_DAT_SET();
        else
            OLED_DAT_CLR();
        OLED_DELAY();
        OLED_CLK_SET(); OLED_DELAY();
    }
    OLED_CLK_CLR();
    OLED_DAT_SET();
    OLED_DELAY();
}

uint8_t __oled_rd() {
    uint8_t data = 0;
    OLED_DAT_SET();
    OLED_CLK_CLR(); OLED_DELAY();
    for (uint8_t i = 0; i < 8; i++) {
        OLED_CLK_SET(); OLED_DELAY();
        uint8_t tmp = 0;
        if (OLED_DAT_GET() != 0)
            tmp = 1 << (7 - i);
        data |= tmp;
        OLED_DELAY();
        OLED_CLK_CLR(); OLED_DELAY();
    }
    return data;
}

void iic_init() {
    /*
    * CLK P02
    * DAT P03
    * */
    P0_DIR |= 0x0C;
    P0_PU |= 0x0C;
    OLED_CLK_SET();
    OLED_DAT_SET();
    delay(10);
}

static uint8_t buffer[FONT_MAX_WIDTH];
static uint8_t addr = OLED_SCREEN_SMALL;

void cmd(uint8_t cmd) {
    __oled_start();
    __oled_wr(addr);
    __oled_ack();
    __oled_wr(0x00);
    __oled_ack();
    __oled_wr(cmd);
    __oled_ack();
    __oled_stop();
}

void dat(uint8_t data) {
    __oled_start();
    __oled_wr(addr);
    __oled_ack();
    __oled_wr(0x40);
    __oled_ack();
    __oled_wr(data);
    __oled_ack();
    __oled_stop();
}

void pos(uint8_t x, uint8_t y) {
    cmd(0xb0 + y);
    cmd(((x & 0xf0) >> 4) | 0x10);
    cmd(x & 0x0f);
}

void oledInit(uint8_t dev) {
    iic_init();
    addr = dev;

    cmd(0xAE);//--display off
    cmd(0x00);//---set low column address
    cmd(0x10);//---set high column address
    cmd(0x40);//--set start line address
    cmd(0xB0);//--set page address
    cmd(0x81); // contract control
    cmd(0xFF);//--128
    cmd(0xA1);//set segment remap
    cmd(0xA6);//--normal / reverse

    cmd(0xA8);//--set multiplex ratio(1 to 64)
    if (addr == OLED_SCREEN_BIG)
        cmd(0x3F);//--1/32 duty
    else cmd(0x1F);

    cmd(0xC8);//Com scan direction
    cmd(0xD3);//-set display offset
    cmd(0x00);//

    cmd(0xD5);//set osc division
    cmd(0x80);//

    cmd(0xD8);//set area color mode off
    cmd(0x05);//

    cmd(0xD9);//Set Pre-Charge Period
    cmd(0xF1);//

    cmd(0xDA);//set com pin configuartion
    if (addr == OLED_SCREEN_BIG)
        cmd(0x12);
    else cmd(0x02);

    cmd(0xDB);//set Vcomh
    cmd(0x30);//

    cmd(0x8D);//set charge pump enable
    cmd(0x14);//

    cmd(0xAF);//--turn on oled panel

    cmd(0x21); //Set column address range
    cmd(0x00);
    cmd(0x7F); //127

    cmd(0x22); //Set page address range
    cmd(0x00);
    if (addr == OLED_SCREEN_BIG)
        cmd(0x07); //7
    else cmd(0x03); //3

    oledClear();
}

void oledBright(uint8_t bright) {
    cmd(0x81);
    cmd(bright & 0x7F);
}

void oledClear() {
    uint8_t max = (addr == OLED_SCREEN_BIG) ? 8 : 4;
    for (uint8_t m = 0; m < max; m++) {
        pos(0, m);
        for (uint8_t n = 0; n < 128; n++)
            dat(0x00);
    }
}

void oledSwitch(uint8_t state) {
    if (state != 0) {
        cmd(0x8D);
        cmd(0x14);
        cmd(0xAF);
    } else {
        cmd(0x8D);
        cmd(0x10);
        cmd(0xAE);
    }
}

void oledSize(uint8_t* w, uint8_t* h) {
    if (addr == OLED_SCREEN_BIG) {
        *w = 128; *h = 64;
    } else if (addr == OLED_SCREEN_SMALL) {
        *w = 128; *h = 32;
    }
}

void oledChar(uint8_t x, uint8_t y, uint8_t fid, uint8_t color, char c) {
    const uint8_t* font;
    uint8_t f_w, f_h, W, H;

    c -= ' ';
    font = fontGet(fid);
    fontSize(font, &f_w, &f_h);
    oledSize(&W, &H);

    if (x > W - f_w) { x = 0; y += f_h / 8; }

    for (uint8_t seg = 0; seg < f_h / 8; seg++) {
        for (uint8_t col = 0; col < f_w; col++) {
            buffer[col] = font[c * f_w * f_h / 8 + f_w * seg + col];
            if (color == 0)
                buffer[col] = ~buffer[col];
        }
        pos(x, y + seg);
        for (uint8_t i = 0; i < f_w; i++)
            dat(buffer[i]);
    }
}

void oledPrint(uint8_t x, uint8_t y, uint8_t fid, uint8_t color, char* str) {
    const uint8_t* font;
    uint8_t f_w, f_h, W, H, pos;

    font = fontGet(fid);
    fontSize(font, &f_w, &f_h);
    oledSize(&W, &H);

    pos = 0;
    while (str[pos] != '\0') {
        if (y > (H - f_h) / 8) { x = 0; y = 0; oledClear(); }
        switch (str[pos]) {
            case '\n':
                x = 0; y += f_h / 8;
                break;
            default:
                oledChar(x, y, fid, color, str[pos]);
                x += f_w;
                if (x > W - f_w) {
                    x = 0;
                    y += f_h / 8;
                }
                break;
        }
        pos++;
    }
}

int oledPrintf(uint8_t x, uint8_t y, uint8_t fid, uint8_t color, const char* format, ...) {
    char* iobuf = malloc(sizeof(char) * IOBUF_SIZE);
    va_list args;
    va_start(args, format);
    int result = vsprintf(iobuf, format, args);
    va_end(args);
    oledPrint(x, y, fid, color, iobuf);
    free(iobuf);
    return result;
}

int oledPrintfc(uint8_t y, uint8_t fid, uint8_t color, const char* format, ...) {
    uint8_t f_w, f_h, W, H, len;
    fontSize(fontGet(fid), &f_w, &f_h);
    oledSize(&W, &H);

    char* iobuf = malloc(sizeof(char) * IOBUF_SIZE);
    va_list args;
    va_start(args, format);
    int result = vsprintf(iobuf, format, args);
    va_end(args);
    len = strlen(iobuf);
    oledPrint(W / 2 - len * f_w / 2, y, fid, color, iobuf);
    free(iobuf);
    return result;
}

