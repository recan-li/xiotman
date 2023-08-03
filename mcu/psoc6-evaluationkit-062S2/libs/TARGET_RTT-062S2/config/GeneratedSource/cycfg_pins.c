/*******************************************************************************
* File Name: cycfg_pins.c
*
* Description:
* Pin configuration
* This file was automatically generated and should not be modified.
* Configurator Backend 3.0.0
* device-db 4.1.0.3437
* mtb-pdl-cat1 3.3.0.21979
*
********************************************************************************
* Copyright 2023 Cypress Semiconductor Corporation (an Infineon company) or
* an affiliate of Cypress Semiconductor Corporation.
* SPDX-License-Identifier: Apache-2.0
*
* Licensed under the Apache License, Version 2.0 (the "License");
* you may not use this file except in compliance with the License.
* You may obtain a copy of the License at
*
*     http://www.apache.org/licenses/LICENSE-2.0
*
* Unless required by applicable law or agreed to in writing, software
* distributed under the License is distributed on an "AS IS" BASIS,
* WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
* See the License for the specific language governing permissions and
* limitations under the License.
********************************************************************************/

#include "cycfg_pins.h"

const cy_stc_gpio_pin_config_t CYBSP_SWDIO_config =
{
    .outVal = 1,
    .driveMode = CY_GPIO_DM_PULLUP,
    .hsiom = CYBSP_SWDIO_HSIOM,
    .intEdge = CY_GPIO_INTR_DISABLE,
    .intMask = 0UL,
    .vtrip = CY_GPIO_VTRIP_CMOS,
    .slewRate = CY_GPIO_SLEW_FAST,
    .driveSel = CY_GPIO_DRIVE_1_2,
    .vregEn = 0UL,
    .ibufMode = 0UL,
    .vtripSel = 0UL,
    .vrefSel = 0UL,
    .vohSel = 0UL,
};
#if defined (CY_USING_HAL)
    const cyhal_resource_inst_t CYBSP_SWDIO_obj =
    {
        .type = CYHAL_RSC_GPIO,
        .block_num = CYBSP_SWDIO_PORT_NUM,
        .channel_num = CYBSP_SWDIO_PIN,
    };
#endif //defined (CY_USING_HAL)
const cy_stc_gpio_pin_config_t CYBSP_SWDCK_config =
{
    .outVal = 1,
    .driveMode = CY_GPIO_DM_PULLDOWN,
    .hsiom = CYBSP_SWDCK_HSIOM,
    .intEdge = CY_GPIO_INTR_DISABLE,
    .intMask = 0UL,
    .vtrip = CY_GPIO_VTRIP_CMOS,
    .slewRate = CY_GPIO_SLEW_FAST,
    .driveSel = CY_GPIO_DRIVE_1_2,
    .vregEn = 0UL,
    .ibufMode = 0UL,
    .vtripSel = 0UL,
    .vrefSel = 0UL,
    .vohSel = 0UL,
};
#if defined (CY_USING_HAL)
    const cyhal_resource_inst_t CYBSP_SWDCK_obj =
    {
        .type = CYHAL_RSC_GPIO,
        .block_num = CYBSP_SWDCK_PORT_NUM,
        .channel_num = CYBSP_SWDCK_PIN,
    };
#endif //defined (CY_USING_HAL)
const cy_stc_gpio_pin_config_t CYBSP_CINA_config =
{
    .outVal = 1,
    .driveMode = CY_GPIO_DM_ANALOG,
    .hsiom = CYBSP_CINA_HSIOM,
    .intEdge = CY_GPIO_INTR_DISABLE,
    .intMask = 0UL,
    .vtrip = CY_GPIO_VTRIP_CMOS,
    .slewRate = CY_GPIO_SLEW_FAST,
    .driveSel = CY_GPIO_DRIVE_1_2,
    .vregEn = 0UL,
    .ibufMode = 0UL,
    .vtripSel = 0UL,
    .vrefSel = 0UL,
    .vohSel = 0UL,
};
#if defined (CY_USING_HAL)
    const cyhal_resource_inst_t CYBSP_CINA_obj =
    {
        .type = CYHAL_RSC_GPIO,
        .block_num = CYBSP_CINA_PORT_NUM,
        .channel_num = CYBSP_CINA_PIN,
    };
#endif //defined (CY_USING_HAL)
const cy_stc_gpio_pin_config_t CYBSP_CINB_config =
{
    .outVal = 1,
    .driveMode = CY_GPIO_DM_ANALOG,
    .hsiom = CYBSP_CINB_HSIOM,
    .intEdge = CY_GPIO_INTR_DISABLE,
    .intMask = 0UL,
    .vtrip = CY_GPIO_VTRIP_CMOS,
    .slewRate = CY_GPIO_SLEW_FAST,
    .driveSel = CY_GPIO_DRIVE_1_2,
    .vregEn = 0UL,
    .ibufMode = 0UL,
    .vtripSel = 0UL,
    .vrefSel = 0UL,
    .vohSel = 0UL,
};
#if defined (CY_USING_HAL)
    const cyhal_resource_inst_t CYBSP_CINB_obj =
    {
        .type = CYHAL_RSC_GPIO,
        .block_num = CYBSP_CINB_PORT_NUM,
        .channel_num = CYBSP_CINB_PIN,
    };
#endif //defined (CY_USING_HAL)
const cy_stc_gpio_pin_config_t CYBSP_CSD_SLD0_config =
{
    .outVal = 1,
    .driveMode = CY_GPIO_DM_ANALOG,
    .hsiom = CYBSP_CSD_SLD0_HSIOM,
    .intEdge = CY_GPIO_INTR_DISABLE,
    .intMask = 0UL,
    .vtrip = CY_GPIO_VTRIP_CMOS,
    .slewRate = CY_GPIO_SLEW_FAST,
    .driveSel = CY_GPIO_DRIVE_1_2,
    .vregEn = 0UL,
    .ibufMode = 0UL,
    .vtripSel = 0UL,
    .vrefSel = 0UL,
    .vohSel = 0UL,
};
#if defined (CY_USING_HAL)
    const cyhal_resource_inst_t CYBSP_CSD_SLD0_obj =
    {
        .type = CYHAL_RSC_GPIO,
        .block_num = CYBSP_CSD_SLD0_PORT_NUM,
        .channel_num = CYBSP_CSD_SLD0_PIN,
    };
#endif //defined (CY_USING_HAL)
const cy_stc_gpio_pin_config_t CYBSP_CMOD_config =
{
    .outVal = 1,
    .driveMode = CY_GPIO_DM_ANALOG,
    .hsiom = CYBSP_CMOD_HSIOM,
    .intEdge = CY_GPIO_INTR_DISABLE,
    .intMask = 0UL,
    .vtrip = CY_GPIO_VTRIP_CMOS,
    .slewRate = CY_GPIO_SLEW_FAST,
    .driveSel = CY_GPIO_DRIVE_1_2,
    .vregEn = 0UL,
    .ibufMode = 0UL,
    .vtripSel = 0UL,
    .vrefSel = 0UL,
    .vohSel = 0UL,
};
#if defined (CY_USING_HAL)
    const cyhal_resource_inst_t CYBSP_CMOD_obj =
    {
        .type = CYHAL_RSC_GPIO,
        .block_num = CYBSP_CMOD_PORT_NUM,
        .channel_num = CYBSP_CMOD_PIN,
    };
#endif //defined (CY_USING_HAL)
const cy_stc_gpio_pin_config_t CYBSP_CSD_SLD1_config =
{
    .outVal = 1,
    .driveMode = CY_GPIO_DM_ANALOG,
    .hsiom = CYBSP_CSD_SLD1_HSIOM,
    .intEdge = CY_GPIO_INTR_DISABLE,
    .intMask = 0UL,
    .vtrip = CY_GPIO_VTRIP_CMOS,
    .slewRate = CY_GPIO_SLEW_FAST,
    .driveSel = CY_GPIO_DRIVE_1_2,
    .vregEn = 0UL,
    .ibufMode = 0UL,
    .vtripSel = 0UL,
    .vrefSel = 0UL,
    .vohSel = 0UL,
};
#if defined (CY_USING_HAL)
    const cyhal_resource_inst_t CYBSP_CSD_SLD1_obj =
    {
        .type = CYHAL_RSC_GPIO,
        .block_num = CYBSP_CSD_SLD1_PORT_NUM,
        .channel_num = CYBSP_CSD_SLD1_PIN,
    };
#endif //defined (CY_USING_HAL)
const cy_stc_gpio_pin_config_t CYBSP_CSD_SLD2_config =
{
    .outVal = 1,
    .driveMode = CY_GPIO_DM_ANALOG,
    .hsiom = CYBSP_CSD_SLD2_HSIOM,
    .intEdge = CY_GPIO_INTR_DISABLE,
    .intMask = 0UL,
    .vtrip = CY_GPIO_VTRIP_CMOS,
    .slewRate = CY_GPIO_SLEW_FAST,
    .driveSel = CY_GPIO_DRIVE_1_2,
    .vregEn = 0UL,
    .ibufMode = 0UL,
    .vtripSel = 0UL,
    .vrefSel = 0UL,
    .vohSel = 0UL,
};
#if defined (CY_USING_HAL)
    const cyhal_resource_inst_t CYBSP_CSD_SLD2_obj =
    {
        .type = CYHAL_RSC_GPIO,
        .block_num = CYBSP_CSD_SLD2_PORT_NUM,
        .channel_num = CYBSP_CSD_SLD2_PIN,
    };
#endif //defined (CY_USING_HAL)
const cy_stc_gpio_pin_config_t CYBSP_CSD_SLD3_config =
{
    .outVal = 1,
    .driveMode = CY_GPIO_DM_ANALOG,
    .hsiom = CYBSP_CSD_SLD3_HSIOM,
    .intEdge = CY_GPIO_INTR_DISABLE,
    .intMask = 0UL,
    .vtrip = CY_GPIO_VTRIP_CMOS,
    .slewRate = CY_GPIO_SLEW_FAST,
    .driveSel = CY_GPIO_DRIVE_1_2,
    .vregEn = 0UL,
    .ibufMode = 0UL,
    .vtripSel = 0UL,
    .vrefSel = 0UL,
    .vohSel = 0UL,
};
#if defined (CY_USING_HAL)
    const cyhal_resource_inst_t CYBSP_CSD_SLD3_obj =
    {
        .type = CYHAL_RSC_GPIO,
        .block_num = CYBSP_CSD_SLD3_PORT_NUM,
        .channel_num = CYBSP_CSD_SLD3_PIN,
    };
#endif //defined (CY_USING_HAL)
const cy_stc_gpio_pin_config_t CYBSP_CSD_SLD4_config =
{
    .outVal = 1,
    .driveMode = CY_GPIO_DM_ANALOG,
    .hsiom = CYBSP_CSD_SLD4_HSIOM,
    .intEdge = CY_GPIO_INTR_DISABLE,
    .intMask = 0UL,
    .vtrip = CY_GPIO_VTRIP_CMOS,
    .slewRate = CY_GPIO_SLEW_FAST,
    .driveSel = CY_GPIO_DRIVE_1_2,
    .vregEn = 0UL,
    .ibufMode = 0UL,
    .vtripSel = 0UL,
    .vrefSel = 0UL,
    .vohSel = 0UL,
};
#if defined (CY_USING_HAL)
    const cyhal_resource_inst_t CYBSP_CSD_SLD4_obj =
    {
        .type = CYHAL_RSC_GPIO,
        .block_num = CYBSP_CSD_SLD4_PORT_NUM,
        .channel_num = CYBSP_CSD_SLD4_PIN,
    };
#endif //defined (CY_USING_HAL)


void init_cycfg_pins(void)
{
    Cy_GPIO_Pin_Init(CYBSP_SWDIO_PORT, CYBSP_SWDIO_PIN, &CYBSP_SWDIO_config);
    Cy_GPIO_Pin_Init(CYBSP_SWDCK_PORT, CYBSP_SWDCK_PIN, &CYBSP_SWDCK_config);
    Cy_GPIO_Pin_Init(CYBSP_CINA_PORT, CYBSP_CINA_PIN, &CYBSP_CINA_config);
    Cy_GPIO_Pin_Init(CYBSP_CINB_PORT, CYBSP_CINB_PIN, &CYBSP_CINB_config);
}

void reserve_cycfg_pins(void)
{
#if defined (CY_USING_HAL)
    cyhal_hwmgr_reserve(&CYBSP_SWDIO_obj);
    cyhal_hwmgr_reserve(&CYBSP_SWDCK_obj);
    cyhal_hwmgr_reserve(&CYBSP_CINA_obj);
    cyhal_hwmgr_reserve(&CYBSP_CINB_obj);
    cyhal_hwmgr_reserve(&CYBSP_CSD_SLD0_obj);
    cyhal_hwmgr_reserve(&CYBSP_CMOD_obj);
    cyhal_hwmgr_reserve(&CYBSP_CSD_SLD1_obj);
    cyhal_hwmgr_reserve(&CYBSP_CSD_SLD2_obj);
    cyhal_hwmgr_reserve(&CYBSP_CSD_SLD3_obj);
    cyhal_hwmgr_reserve(&CYBSP_CSD_SLD4_obj);
#endif //defined (CY_USING_HAL)
}
