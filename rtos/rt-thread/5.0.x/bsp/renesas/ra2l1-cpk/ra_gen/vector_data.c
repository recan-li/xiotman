/* generated vector source file - do not edit */
        #include "bsp_api.h"
        /* Do not build these data structures if no interrupts are currently allocated because IAR will have build errors. */
        #if VECTOR_DATA_IRQ_COUNT > 0
        BSP_DONT_REMOVE const fsp_vector_t g_vector_table[BSP_ICU_VECTOR_MAX_ENTRIES] BSP_PLACE_IN_SECTION(BSP_SECTION_APPLICATION_VECTORS) =
        {
                        [3] = r_icu_isr, /* ICU IRQ3 (External pin interrupt 3) */
            [4] = sci_uart_rxi_isr, /* SCI9 RXI (Received data full) */
            [5] = sci_uart_txi_isr, /* SCI9 TXI (Transmit data empty) */
            [6] = sci_uart_tei_isr, /* SCI9 TEI (Transmit end) */
            [7] = sci_uart_eri_isr, /* SCI9 ERI (Receive error) */
        };
        const bsp_interrupt_event_t g_interrupt_event_link_select[BSP_ICU_VECTOR_MAX_ENTRIES] =
        {
            [3] = BSP_PRV_IELS_ENUM(EVENT_ICU_IRQ3), /* ICU IRQ3 (External pin interrupt 3) */
            [4] = BSP_PRV_IELS_ENUM(EVENT_SCI9_RXI), /* SCI9 RXI (Received data full) */
            [5] = BSP_PRV_IELS_ENUM(EVENT_SCI9_TXI), /* SCI9 TXI (Transmit data empty) */
            [6] = BSP_PRV_IELS_ENUM(EVENT_SCI9_TEI), /* SCI9 TEI (Transmit end) */
            [7] = BSP_PRV_IELS_ENUM(EVENT_SCI9_ERI), /* SCI9 ERI (Receive error) */
        };
        #endif