#include "ch558.h"

#include "sys.h"
#include "lut.h"
#include "oled.h"

#include <string.h>
#include <stdlib.h>
#include <stdio.h>

#define TEMP_MAX    150
#define TEMP_STEP   10

#define ADC_TMP1    6
#define ADC_TMP5    7

#define KEY_L       P32
#define KEY_R       P34

#define FIFO_SIZE   100
#define FIFO_SHIFT(fifo) memmove(&fifo[0], &fifo[1], (FIFO_SIZE - 1) * sizeof(fifo[0]))
#define FIFO_END(fifo) fifo[FIFO_SIZE - 1]
uint8_t tbuf[FIFO_SIZE] = {0};
void tempFetch() {
    FIFO_SHIFT(tbuf);
    float f = adcGet(ADC_TMP5);
    f = f / 1023 * 660;
    if (f > 650) {
        f = adcGet(ADC_TMP1);
        f = f / 1023 * 3300;
    }
    FIFO_END(tbuf) = lut((int) f) + 2; // calibration
}

uint8_t tempGet() {
    float f = 0;
    for (uint8_t i = 0; i < sizeof(tbuf); i++)
        f += tbuf[i];
    f /= sizeof(tbuf);
    return (uint8_t) ((int) f);
}

uint8_t set, now;
uint8_t counter = 0;
bool run = false;

int sum = 0; float k = 0;
uint16_t wcounter = 0;

char str[16];

void main() {
    PORT_CFG &= ~bP3_OC;
    P3_PU &= ~(1 << 2 | 1 << 4);

    sysClockConfig();
    delay(10);

    adcInit();
    pwm3Init(120000);
    uart1Config(115200);
    EA = 1;
    delay(50);
    uart1Write("NSHET\n");

    oledInit(OLED_SCREEN_SMALL);
    oledPrintfc(1, 2, 1, "NSHET");

    for (uint8_t i = 0; i < FIFO_SIZE; i++) {
        tempFetch();
        delay(10);
    }
    set = now = tempGet();
    set = set / TEMP_STEP;
    set = set * TEMP_STEP;
    
    oledClear();
    while (1) {
        if (KEY_L == 0) {
            while (KEY_L == 0);
            set = set < TEMP_STEP ? 0 : set - TEMP_STEP;
        } else if (KEY_R == 0) {
            while (KEY_R == 0);
            set = set > (TEMP_MAX - TEMP_STEP) ? TEMP_MAX : set + TEMP_STEP;
        }

        tempFetch();
        now = tempGet();

        if (run = set > now) {
            float v = set - now;
            v *= (0.2f + k);    // 比例系数
            v *= 100;           // 转换到占空比
            v = v > 100 ? 100 : v;
            pwm3Duty((int) v);
        } else
            pwm3Duty(0);

        if (run && (set - now < 5)) {
            if (wcounter < 200)
                wcounter++;
            else {
                wcounter = 0;

                sum += (set - now);
                k = sum / 100.0f;
            }
        } else {
            wcounter = 0;
            sum = 0;
            k = 0;
        }

        if (counter < 10)
            counter++;
        else {
            counter = 0;

            sprintf(str, "%d\n", now);
            uart1Write(str);

            oledPrintfc(0, 3, 1, "%3d%%%3d%%", now, set);
            oledPrint(40, 3, 1, 1, "NOW");
            oledPrint(104, 3, 1, 1, "SET");
            oledPrint(0, 3, 0, 1, run ? "H" : "-");
        }

        delay(10);
    }
}
