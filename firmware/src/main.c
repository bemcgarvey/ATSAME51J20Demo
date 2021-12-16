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


// *****************************************************************************
// *****************************************************************************
// Section: Main Entry Point
// *****************************************************************************
// *****************************************************************************

//TODO demo the following
// Event system
// usb - mass storage to sd card with file system
// TWI - lcd
// PDEC with rotary encoder
// NVM SmartEEPROM
// DMA
// RTC
// sd card bootloader
// SPI?
// CCL ?


void buttonCallback(uintptr_t context);

int main ( void )
{
    /* Initialize all modules */
    SYS_Initialize ( NULL );
    printf("Hello World\r\n");
    EIC_CallbackRegister(EIC_PIN_5, buttonCallback, (uintptr_t)NULL);
    while ( true )
    {
        if (LeftButton_Get() == 0) {
            RedLed_Set();
            YellowLed_Set();
        } else {
            RedLed_Clear();
            YellowLed_Clear();
        }
    }

    /* Execution should not come here during normal operation */

    return ( EXIT_FAILURE );
}

void buttonCallback(uintptr_t context) {
    BlueLed_Toggle();
    GreenLed_Toggle();
}

/*******************************************************************************
 End of File
*/

