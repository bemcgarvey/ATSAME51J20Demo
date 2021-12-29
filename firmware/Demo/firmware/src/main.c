/*******************************************************************************
  Main Source File

  Company:
    Microchip Technology Inc.

  File Name:
    main.c

  Summary:
    This file contains the "main" function for a project.

  Description:
    This file contains the "main" function for a project.  The
    "main" function calls the "SYS_Initialize" function to initialize the state
    machines of all modules in the system
 *******************************************************************************/

// *****************************************************************************
// *****************************************************************************
// Section: Included Files
// *****************************************************************************
// *****************************************************************************

#include <stddef.h>                     // Defines NULL
#include <stdbool.h>                    // Defines true
#include <stdlib.h>                     // Defines EXIT_FAILURE
#include "definitions.h"                // SYS function prototypes
#include "lcd.h"


// *****************************************************************************
// *****************************************************************************
// Section: Main Entry Point
// *****************************************************************************
// *****************************************************************************

//TODO demo the following
// ADC and DAC
// NVM SmartEEPROM
// DMA

void buttonCallback(uintptr_t context);
void tc5Callback(TC_TIMER_STATUS status, uintptr_t context);
struct tm curtime;
RSTC_RESET_CAUSE cause;

int main(void) {
    /* Initialize all modules */
    cause = RSTC_ResetCauseGet();
    SYS_Initialize(NULL);
    //Turn on switching regulator
    SUPC_SelectVoltageRegulator( SUPC_VREGSEL_BUCK );
    EIC_CallbackRegister(EIC_PIN_5, buttonCallback, (uintptr_t) NULL);
    TC5_TimerCallbackRegister(tc5Callback, (uintptr_t) NULL);
    TC5_TimerStart();
    printf("\r\n\r\nStarting demos\r\n\r\n");
    LCDInit();
    lprintf(0, "Hello World");
    int count = 0;
    PDEC_QDECStart();
    if (cause != RSTC_RESET_CAUSE_EXT_RESET) {
        curtime.tm_hour = 0;
        curtime.tm_min = 0;
        curtime.tm_sec = 0;
        curtime.tm_mday = 1;
        curtime.tm_mon = 0;
        curtime.tm_year = 2022 - 1900;
        RTC_RTCCTimeSet(&curtime);
    }
    while (true) {
        lprintf(1, "Count=%d", count);
        int16_t pos = PDEC_QDECPositionGet();
        int16_t rev = PDEC_QDECRevolutionsGet();
        pos = pos - rev;
        if (pos < 0) {
            pos = -pos;
        }
        pos /= 4;
        rev /= 1024;
        printf("\rPosition=%2hi revolution = %2hi ", pos, rev);
        RTC_RTCCTimeGet(&curtime);
        printf(" %02d:%02d:%02d  %d/%d/%d     ", curtime.tm_hour, curtime.tm_min
                , curtime.tm_sec, curtime.tm_mon + 1, curtime.tm_mday, curtime.tm_year + 1900);
        ++count;
        SYS_TIME_HANDLE timer = SYS_TIME_HANDLE_INVALID;
        if (SYS_TIME_DelayMS(500, &timer) == SYS_TIME_SUCCESS) {
            while (SYS_TIME_DelayIsComplete(timer) == false);
        }

    }

    /* Execution should not come here during normal operation */

    return ( EXIT_FAILURE);
}

void buttonCallback(uintptr_t context) {
    BlueLed_Toggle();
}

void tc5Callback(TC_TIMER_STATUS status, uintptr_t context) {
    GreenLed_Toggle();
}

/*******************************************************************************
 End of File
 */

