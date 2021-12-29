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

#define CH0_BLOCK_SIZE  2048

int32_t source[CH0_BLOCK_SIZE];
int32_t dest[CH0_BLOCK_SIZE];
char text[CH0_BLOCK_SIZE];

void dmaCh0Callback(DMAC_TRANSFER_EVENT event, uintptr_t contextHandle);
void eic4Callback(uintptr_t contextHandle);
void eic5Callback(uintptr_t contextHandle);

int main ( void )
{
    /* Initialize all modules */
    SYS_Initialize ( NULL );
    printf("Starting dma demo - filling arrays\r\n");
    RedLed_Set();
    for (int i = 0; i < CH0_BLOCK_SIZE; ++i) {
        source[i] = i;
        dest[i] = -1;
    }
    for (int i = 0; i < sizeof(text); ++i) {
        text[i] = 'a' + i % 26;
    }
    text[sizeof(text) - 2] = '\r';
    text[sizeof(text) - 1] = '\n';
    DMAC_ChannelCallbackRegister(0, dmaCh0Callback, (uintptr_t)NULL);
    EIC_CallbackRegister(EIC_PIN_4, eic4Callback, (uintptr_t) NULL);
    EIC_CallbackRegister(EIC_PIN_5, eic5Callback, (uintptr_t) NULL);
    while ( true )
    {
        
    }

    /* Execution should not come here during normal operation */

    return ( EXIT_FAILURE );
}

void eic4Callback(uintptr_t contextHandle) {
    YellowLed_Toggle();
    DMAC_ChannelTransfer(0, source, dest, sizeof(source));
}

void eic5Callback(uintptr_t contextHandle) {
    GreenLed_Toggle();
    DMAC_ChannelTransfer(1, text, (void *)&SERCOM0_REGS->USART_INT.SERCOM_DATA, sizeof(text));
}

void dmaCh0Callback(DMAC_TRANSFER_EVENT event, uintptr_t contextHandle) {
    if (event == DMAC_TRANSFER_EVENT_COMPLETE) {
        if (memcmp(source, dest, sizeof(source)) == 0) {
            printf("Channel 0 transfer complete\r\n");
            BlueLed_Toggle();
        } else {
            printf("Memory mismatch\r\n");
        }
    } else if (event == DMAC_TRANSFER_EVENT_ERROR) {
        printf("Channel 0 error\r\n");
    }
}
/*******************************************************************************
 End of File
*/

