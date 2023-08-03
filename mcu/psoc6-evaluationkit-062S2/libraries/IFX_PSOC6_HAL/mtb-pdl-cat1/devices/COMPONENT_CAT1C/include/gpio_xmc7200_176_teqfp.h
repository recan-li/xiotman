/***************************************************************************//**
* \file gpio_xmc7200_176_teqfp.h
*
* \brief
* XMC7200 device GPIO header for 176-TEQFP package
*
********************************************************************************
* \copyright
* (c) (2016-2022), Cypress Semiconductor Corporation (an Infineon company) or
* an affiliate of Cypress Semiconductor Corporation.
*
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
*******************************************************************************/

#ifndef _GPIO_XMC7200_176_TEQFP_H_
#define _GPIO_XMC7200_176_TEQFP_H_

/* Package type */
enum
{
    CY_GPIO_PACKAGE_QFN,
    CY_GPIO_PACKAGE_BGA,
    CY_GPIO_PACKAGE_CSP,
    CY_GPIO_PACKAGE_WLCSP,
    CY_GPIO_PACKAGE_LQFP,
    CY_GPIO_PACKAGE_TQFP,
    CY_GPIO_PACKAGE_TEQFP,
    CY_GPIO_PACKAGE_SMT,
};

#define CY_GPIO_PACKAGE_TYPE            CY_GPIO_PACKAGE_TEQFP
#define CY_GPIO_PIN_COUNT               176u

/* AMUXBUS Segments */
enum
{
    AMUXBUS_EFUSE,
    AMUXBUS_MAIN,
    AMUXBUS_REGHC_ISENSE,
    AMUXBUS_TEST,
    AMUXBUS_TESTECT,
    AMUXBUS_TESTSRSS,
};

/* AMUX Splitter Controls */
typedef enum
{
    AMUX_SPLIT_CTL_0                = 0x0000u,  /* Left = AMUXBUS_TESTSRSS; Right = AMUXBUS_TEST */
    AMUX_SPLIT_CTL_1                = 0x0001u,  /* Left = AMUXBUS_TEST; Right = AMUXBUS_TESTECT */
    AMUX_SPLIT_CTL_2                = 0x0002u,  /* Left = AMUXBUS_MAIN; Right = AMUXBUS_EFUSE */
    AMUX_SPLIT_CTL_3                = 0x0003u   /* Left = AMUXBUS_MAIN; Right = AMUXBUS_REGHC_ISENSE */
} cy_en_amux_split_t;

/* Port List */
/* PORT 0 (AUTOLVL) */
#define P0_0_PORT                       GPIO_PRT0
#define P0_0_PIN                        0u
#define P0_0_NUM                        0u
#define P0_0_AMUXSEGMENT                AMUXBUS_MAIN
#define P0_1_PORT                       GPIO_PRT0
#define P0_1_PIN                        1u
#define P0_1_NUM                        1u
#define P0_1_AMUXSEGMENT                AMUXBUS_MAIN
#define P0_2_PORT                       GPIO_PRT0
#define P0_2_PIN                        2u
#define P0_2_NUM                        2u
#define P0_2_AMUXSEGMENT                AMUXBUS_MAIN
#define P0_3_PORT                       GPIO_PRT0
#define P0_3_PIN                        3u
#define P0_3_NUM                        3u
#define P0_3_AMUXSEGMENT                AMUXBUS_MAIN

/* PORT 1 (AUTOLVL) */
#define P1_0_PORT                       GPIO_PRT1
#define P1_0_PIN                        0u
#define P1_0_NUM                        0u
#define P1_0_AMUXSEGMENT                AMUXBUS_MAIN
#define P1_1_PORT                       GPIO_PRT1
#define P1_1_PIN                        1u
#define P1_1_NUM                        1u
#define P1_1_AMUXSEGMENT                AMUXBUS_MAIN
#define P1_2_PORT                       GPIO_PRT1
#define P1_2_PIN                        2u
#define P1_2_NUM                        2u
#define P1_2_AMUXSEGMENT                AMUXBUS_MAIN
#define P1_3_PORT                       GPIO_PRT1
#define P1_3_PIN                        3u
#define P1_3_NUM                        3u
#define P1_3_AMUXSEGMENT                AMUXBUS_MAIN

/* PORT 2 (AUTOLVL) */
#define P2_0_PORT                       GPIO_PRT2
#define P2_0_PIN                        0u
#define P2_0_NUM                        0u
#define P2_0_AMUXSEGMENT                AMUXBUS_MAIN
#define P2_1_PORT                       GPIO_PRT2
#define P2_1_PIN                        1u
#define P2_1_NUM                        1u
#define P2_1_AMUXSEGMENT                AMUXBUS_MAIN
#define P2_2_PORT                       GPIO_PRT2
#define P2_2_PIN                        2u
#define P2_2_NUM                        2u
#define P2_2_AMUXSEGMENT                AMUXBUS_MAIN
#define P2_3_PORT                       GPIO_PRT2
#define P2_3_PIN                        3u
#define P2_3_NUM                        3u
#define P2_3_AMUXSEGMENT                AMUXBUS_MAIN
#define P2_4_PORT                       GPIO_PRT2
#define P2_4_PIN                        4u
#define P2_4_NUM                        4u
#define P2_4_AMUXSEGMENT                AMUXBUS_MAIN
#define P2_5_PORT                       GPIO_PRT2
#define P2_5_PIN                        5u
#define P2_5_NUM                        5u
#define P2_5_AMUXSEGMENT                AMUXBUS_MAIN

/* PORT 3 (AUTOLVL) */
#define P3_0_PORT                       GPIO_PRT3
#define P3_0_PIN                        0u
#define P3_0_NUM                        0u
#define P3_0_AMUXSEGMENT                AMUXBUS_MAIN
#define P3_1_PORT                       GPIO_PRT3
#define P3_1_PIN                        1u
#define P3_1_NUM                        1u
#define P3_1_AMUXSEGMENT                AMUXBUS_MAIN
#define P3_2_PORT                       GPIO_PRT3
#define P3_2_PIN                        2u
#define P3_2_NUM                        2u
#define P3_2_AMUXSEGMENT                AMUXBUS_MAIN
#define P3_3_PORT                       GPIO_PRT3
#define P3_3_PIN                        3u
#define P3_3_NUM                        3u
#define P3_3_AMUXSEGMENT                AMUXBUS_MAIN
#define P3_4_PORT                       GPIO_PRT3
#define P3_4_PIN                        4u
#define P3_4_NUM                        4u
#define P3_4_AMUXSEGMENT                AMUXBUS_MAIN
#define P3_5_PORT                       GPIO_PRT3
#define P3_5_PIN                        5u
#define P3_5_NUM                        5u
#define P3_5_AMUXSEGMENT                AMUXBUS_MAIN

/* PORT 4 (AUTOLVL) */
#define P4_0_PORT                       GPIO_PRT4
#define P4_0_PIN                        0u
#define P4_0_NUM                        0u
#define P4_0_AMUXSEGMENT                AMUXBUS_MAIN
#define P4_1_PORT                       GPIO_PRT4
#define P4_1_PIN                        1u
#define P4_1_NUM                        1u
#define P4_1_AMUXSEGMENT                AMUXBUS_MAIN
#define P4_2_PORT                       GPIO_PRT4
#define P4_2_PIN                        2u
#define P4_2_NUM                        2u
#define P4_2_AMUXSEGMENT                AMUXBUS_MAIN
#define P4_3_PORT                       GPIO_PRT4
#define P4_3_PIN                        3u
#define P4_3_NUM                        3u
#define P4_3_AMUXSEGMENT                AMUXBUS_MAIN
#define P4_4_PORT                       GPIO_PRT4
#define P4_4_PIN                        4u
#define P4_4_NUM                        4u
#define P4_4_AMUXSEGMENT                AMUXBUS_MAIN

/* PORT 5 (AUTOLVL) */
#define P5_0_PORT                       GPIO_PRT5
#define P5_0_PIN                        0u
#define P5_0_NUM                        0u
#define P5_0_AMUXSEGMENT                AMUXBUS_MAIN
#define P5_1_PORT                       GPIO_PRT5
#define P5_1_PIN                        1u
#define P5_1_NUM                        1u
#define P5_1_AMUXSEGMENT                AMUXBUS_MAIN
#define P5_2_PORT                       GPIO_PRT5
#define P5_2_PIN                        2u
#define P5_2_NUM                        2u
#define P5_2_AMUXSEGMENT                AMUXBUS_MAIN
#define P5_3_PORT                       GPIO_PRT5
#define P5_3_PIN                        3u
#define P5_3_NUM                        3u
#define P5_3_AMUXSEGMENT                AMUXBUS_MAIN
#define P5_4_PORT                       GPIO_PRT5
#define P5_4_PIN                        4u
#define P5_4_NUM                        4u
#define P5_4_AMUXSEGMENT                AMUXBUS_MAIN
#define P5_5_PORT                       GPIO_PRT5
#define P5_5_PIN                        5u
#define P5_5_NUM                        5u
#define P5_5_AMUXSEGMENT                AMUXBUS_MAIN

/* PORT 6 (AUTOLVL) */
#define P6_0_PORT                       GPIO_PRT6
#define P6_0_PIN                        0u
#define P6_0_NUM                        0u
#define P6_0_AMUXSEGMENT                AMUXBUS_MAIN
#define P6_1_PORT                       GPIO_PRT6
#define P6_1_PIN                        1u
#define P6_1_NUM                        1u
#define P6_1_AMUXSEGMENT                AMUXBUS_MAIN
#define P6_2_PORT                       GPIO_PRT6
#define P6_2_PIN                        2u
#define P6_2_NUM                        2u
#define P6_2_AMUXSEGMENT                AMUXBUS_MAIN
#define P6_3_PORT                       GPIO_PRT6
#define P6_3_PIN                        3u
#define P6_3_NUM                        3u
#define P6_3_AMUXSEGMENT                AMUXBUS_MAIN
#define P6_4_PORT                       GPIO_PRT6
#define P6_4_PIN                        4u
#define P6_4_NUM                        4u
#define P6_4_AMUXSEGMENT                AMUXBUS_MAIN
#define P6_5_PORT                       GPIO_PRT6
#define P6_5_PIN                        5u
#define P6_5_NUM                        5u
#define P6_5_AMUXSEGMENT                AMUXBUS_MAIN
#define P6_6_PORT                       GPIO_PRT6
#define P6_6_PIN                        6u
#define P6_6_NUM                        6u
#define P6_6_AMUXSEGMENT                AMUXBUS_MAIN
#define P6_7_PORT                       GPIO_PRT6
#define P6_7_PIN                        7u
#define P6_7_NUM                        7u
#define P6_7_AMUXSEGMENT                AMUXBUS_MAIN

/* PORT 7 (AUTOLVL) */
#define P7_0_PORT                       GPIO_PRT7
#define P7_0_PIN                        0u
#define P7_0_NUM                        0u
#define P7_0_AMUXSEGMENT                AMUXBUS_MAIN
#define P7_1_PORT                       GPIO_PRT7
#define P7_1_PIN                        1u
#define P7_1_NUM                        1u
#define P7_1_AMUXSEGMENT                AMUXBUS_MAIN
#define P7_2_PORT                       GPIO_PRT7
#define P7_2_PIN                        2u
#define P7_2_NUM                        2u
#define P7_2_AMUXSEGMENT                AMUXBUS_MAIN
#define P7_3_PORT                       GPIO_PRT7
#define P7_3_PIN                        3u
#define P7_3_NUM                        3u
#define P7_3_AMUXSEGMENT                AMUXBUS_MAIN
#define P7_4_PORT                       GPIO_PRT7
#define P7_4_PIN                        4u
#define P7_4_NUM                        4u
#define P7_4_AMUXSEGMENT                AMUXBUS_MAIN
#define P7_5_PORT                       GPIO_PRT7
#define P7_5_PIN                        5u
#define P7_5_NUM                        5u
#define P7_5_AMUXSEGMENT                AMUXBUS_MAIN
#define P7_6_PORT                       GPIO_PRT7
#define P7_6_PIN                        6u
#define P7_6_NUM                        6u
#define P7_6_AMUXSEGMENT                AMUXBUS_MAIN
#define P7_7_PORT                       GPIO_PRT7
#define P7_7_PIN                        7u
#define P7_7_NUM                        7u
#define P7_7_AMUXSEGMENT                AMUXBUS_MAIN

/* PORT 8 (AUTOLVL) */
#define P8_0_PORT                       GPIO_PRT8
#define P8_0_PIN                        0u
#define P8_0_NUM                        0u
#define P8_0_AMUXSEGMENT                AMUXBUS_MAIN
#define P8_1_PORT                       GPIO_PRT8
#define P8_1_PIN                        1u
#define P8_1_NUM                        1u
#define P8_1_AMUXSEGMENT                AMUXBUS_MAIN
#define P8_2_PORT                       GPIO_PRT8
#define P8_2_PIN                        2u
#define P8_2_NUM                        2u
#define P8_2_AMUXSEGMENT                AMUXBUS_MAIN
#define P8_3_PORT                       GPIO_PRT8
#define P8_3_PIN                        3u
#define P8_3_NUM                        3u
#define P8_3_AMUXSEGMENT                AMUXBUS_MAIN
#define P8_4_PORT                       GPIO_PRT8
#define P8_4_PIN                        4u
#define P8_4_NUM                        4u
#define P8_4_AMUXSEGMENT                AMUXBUS_MAIN

/* PORT 9 (AUTOLVL) */
#define P9_0_PORT                       GPIO_PRT9
#define P9_0_PIN                        0u
#define P9_0_NUM                        0u
#define P9_0_AMUXSEGMENT                AMUXBUS_MAIN
#define P9_1_PORT                       GPIO_PRT9
#define P9_1_PIN                        1u
#define P9_1_NUM                        1u
#define P9_1_AMUXSEGMENT                AMUXBUS_MAIN
#define P9_2_PORT                       GPIO_PRT9
#define P9_2_PIN                        2u
#define P9_2_NUM                        2u
#define P9_2_AMUXSEGMENT                AMUXBUS_MAIN
#define P9_3_PORT                       GPIO_PRT9
#define P9_3_PIN                        3u
#define P9_3_NUM                        3u
#define P9_3_AMUXSEGMENT                AMUXBUS_MAIN

/* PORT 10 (AUTOLVL) */
#define P10_0_PORT                      GPIO_PRT10
#define P10_0_PIN                       0u
#define P10_0_NUM                       0u
#define P10_0_AMUXSEGMENT               AMUXBUS_MAIN
#define P10_1_PORT                      GPIO_PRT10
#define P10_1_PIN                       1u
#define P10_1_NUM                       1u
#define P10_1_AMUXSEGMENT               AMUXBUS_MAIN
#define P10_2_PORT                      GPIO_PRT10
#define P10_2_PIN                       2u
#define P10_2_NUM                       2u
#define P10_2_AMUXSEGMENT               AMUXBUS_MAIN
#define P10_3_PORT                      GPIO_PRT10
#define P10_3_PIN                       3u
#define P10_3_NUM                       3u
#define P10_3_AMUXSEGMENT               AMUXBUS_MAIN
#define P10_4_PORT                      GPIO_PRT10
#define P10_4_PIN                       4u
#define P10_4_NUM                       4u
#define P10_4_AMUXSEGMENT               AMUXBUS_MAIN
#define P10_5_PORT                      GPIO_PRT10
#define P10_5_PIN                       5u
#define P10_5_NUM                       5u
#define P10_5_AMUXSEGMENT               AMUXBUS_MAIN
#define P10_6_PORT                      GPIO_PRT10
#define P10_6_PIN                       6u
#define P10_6_NUM                       6u
#define P10_6_AMUXSEGMENT               AMUXBUS_MAIN
#define P10_7_PORT                      GPIO_PRT10
#define P10_7_PIN                       7u
#define P10_7_NUM                       7u
#define P10_7_AMUXSEGMENT               AMUXBUS_MAIN

/* PORT 11 (AUTOLVL) */
#define P11_0_PORT                      GPIO_PRT11
#define P11_0_PIN                       0u
#define P11_0_NUM                       0u
#define P11_0_AMUXSEGMENT               AMUXBUS_MAIN
#define P11_1_PORT                      GPIO_PRT11
#define P11_1_PIN                       1u
#define P11_1_NUM                       1u
#define P11_1_AMUXSEGMENT               AMUXBUS_MAIN
#define P11_2_PORT                      GPIO_PRT11
#define P11_2_PIN                       2u
#define P11_2_NUM                       2u
#define P11_2_AMUXSEGMENT               AMUXBUS_MAIN

/* PORT 12 (AUTOLVL) */
#define P12_0_PORT                      GPIO_PRT12
#define P12_0_PIN                       0u
#define P12_0_NUM                       0u
#define P12_0_AMUXSEGMENT               AMUXBUS_MAIN
#define P12_1_PORT                      GPIO_PRT12
#define P12_1_PIN                       1u
#define P12_1_NUM                       1u
#define P12_1_AMUXSEGMENT               AMUXBUS_MAIN
#define P12_2_PORT                      GPIO_PRT12
#define P12_2_PIN                       2u
#define P12_2_NUM                       2u
#define P12_2_AMUXSEGMENT               AMUXBUS_MAIN
#define P12_3_PORT                      GPIO_PRT12
#define P12_3_PIN                       3u
#define P12_3_NUM                       3u
#define P12_3_AMUXSEGMENT               AMUXBUS_MAIN
#define P12_4_PORT                      GPIO_PRT12
#define P12_4_PIN                       4u
#define P12_4_NUM                       4u
#define P12_4_AMUXSEGMENT               AMUXBUS_MAIN
#define P12_5_PORT                      GPIO_PRT12
#define P12_5_PIN                       5u
#define P12_5_NUM                       5u
#define P12_5_AMUXSEGMENT               AMUXBUS_MAIN
#define P12_6_PORT                      GPIO_PRT12
#define P12_6_PIN                       6u
#define P12_6_NUM                       6u
#define P12_6_AMUXSEGMENT               AMUXBUS_MAIN
#define P12_7_PORT                      GPIO_PRT12
#define P12_7_PIN                       7u
#define P12_7_NUM                       7u
#define P12_7_AMUXSEGMENT               AMUXBUS_MAIN

/* PORT 13 (AUTOLVL) */
#define P13_0_PORT                      GPIO_PRT13
#define P13_0_PIN                       0u
#define P13_0_NUM                       0u
#define P13_0_AMUXSEGMENT               AMUXBUS_MAIN
#define P13_1_PORT                      GPIO_PRT13
#define P13_1_PIN                       1u
#define P13_1_NUM                       1u
#define P13_1_AMUXSEGMENT               AMUXBUS_MAIN
#define P13_2_PORT                      GPIO_PRT13
#define P13_2_PIN                       2u
#define P13_2_NUM                       2u
#define P13_2_AMUXSEGMENT               AMUXBUS_MAIN
#define P13_3_PORT                      GPIO_PRT13
#define P13_3_PIN                       3u
#define P13_3_NUM                       3u
#define P13_3_AMUXSEGMENT               AMUXBUS_MAIN
#define P13_4_PORT                      GPIO_PRT13
#define P13_4_PIN                       4u
#define P13_4_NUM                       4u
#define P13_4_AMUXSEGMENT               AMUXBUS_MAIN
#define P13_5_PORT                      GPIO_PRT13
#define P13_5_PIN                       5u
#define P13_5_NUM                       5u
#define P13_5_AMUXSEGMENT               AMUXBUS_MAIN
#define P13_6_PORT                      GPIO_PRT13
#define P13_6_PIN                       6u
#define P13_6_NUM                       6u
#define P13_6_AMUXSEGMENT               AMUXBUS_MAIN
#define P13_7_PORT                      GPIO_PRT13
#define P13_7_PIN                       7u
#define P13_7_NUM                       7u
#define P13_7_AMUXSEGMENT               AMUXBUS_MAIN

/* PORT 14 (AUTOLVL) */
#define P14_0_PORT                      GPIO_PRT14
#define P14_0_PIN                       0u
#define P14_0_NUM                       0u
#define P14_0_AMUXSEGMENT               AMUXBUS_MAIN
#define P14_1_PORT                      GPIO_PRT14
#define P14_1_PIN                       1u
#define P14_1_NUM                       1u
#define P14_1_AMUXSEGMENT               AMUXBUS_MAIN
#define P14_2_PORT                      GPIO_PRT14
#define P14_2_PIN                       2u
#define P14_2_NUM                       2u
#define P14_2_AMUXSEGMENT               AMUXBUS_MAIN
#define P14_3_PORT                      GPIO_PRT14
#define P14_3_PIN                       3u
#define P14_3_NUM                       3u
#define P14_3_AMUXSEGMENT               AMUXBUS_MAIN
#define P14_4_PORT                      GPIO_PRT14
#define P14_4_PIN                       4u
#define P14_4_NUM                       4u
#define P14_4_AMUXSEGMENT               AMUXBUS_MAIN
#define P14_5_PORT                      GPIO_PRT14
#define P14_5_PIN                       5u
#define P14_5_NUM                       5u
#define P14_5_AMUXSEGMENT               AMUXBUS_MAIN
#define P14_6_PORT                      GPIO_PRT14
#define P14_6_PIN                       6u
#define P14_6_NUM                       6u
#define P14_6_AMUXSEGMENT               AMUXBUS_MAIN
#define P14_7_PORT                      GPIO_PRT14
#define P14_7_PIN                       7u
#define P14_7_NUM                       7u
#define P14_7_AMUXSEGMENT               AMUXBUS_MAIN

/* PORT 15 (AUTOLVL) */
#define P15_0_PORT                      GPIO_PRT15
#define P15_0_PIN                       0u
#define P15_0_NUM                       0u
#define P15_0_AMUXSEGMENT               AMUXBUS_MAIN
#define P15_1_PORT                      GPIO_PRT15
#define P15_1_PIN                       1u
#define P15_1_NUM                       1u
#define P15_1_AMUXSEGMENT               AMUXBUS_MAIN
#define P15_2_PORT                      GPIO_PRT15
#define P15_2_PIN                       2u
#define P15_2_NUM                       2u
#define P15_2_AMUXSEGMENT               AMUXBUS_MAIN
#define P15_3_PORT                      GPIO_PRT15
#define P15_3_PIN                       3u
#define P15_3_NUM                       3u
#define P15_3_AMUXSEGMENT               AMUXBUS_MAIN

/* PORT 16 (AUTOLVL) */
#define P16_3_PORT                      GPIO_PRT16
#define P16_3_PIN                       3u
#define P16_3_NUM                       3u
#define P16_3_AMUXSEGMENT               AMUXBUS_MAIN

/* PORT 17 (AUTOLVL) */
#define P17_0_PORT                      GPIO_PRT17
#define P17_0_PIN                       0u
#define P17_0_NUM                       0u
#define P17_0_AMUXSEGMENT               AMUXBUS_MAIN
#define P17_1_PORT                      GPIO_PRT17
#define P17_1_PIN                       1u
#define P17_1_NUM                       1u
#define P17_1_AMUXSEGMENT               AMUXBUS_MAIN
#define P17_2_PORT                      GPIO_PRT17
#define P17_2_PIN                       2u
#define P17_2_NUM                       2u
#define P17_2_AMUXSEGMENT               AMUXBUS_MAIN
#define P17_3_PORT                      GPIO_PRT17
#define P17_3_PIN                       3u
#define P17_3_NUM                       3u
#define P17_3_AMUXSEGMENT               AMUXBUS_MAIN
#define P17_4_PORT                      GPIO_PRT17
#define P17_4_PIN                       4u
#define P17_4_NUM                       4u
#define P17_4_AMUXSEGMENT               AMUXBUS_MAIN
#define P17_5_PORT                      GPIO_PRT17
#define P17_5_PIN                       5u
#define P17_5_NUM                       5u
#define P17_5_AMUXSEGMENT               AMUXBUS_MAIN
#define P17_6_PORT                      GPIO_PRT17
#define P17_6_PIN                       6u
#define P17_6_NUM                       6u
#define P17_6_AMUXSEGMENT               AMUXBUS_MAIN
#define P17_7_PORT                      GPIO_PRT17
#define P17_7_PIN                       7u
#define P17_7_NUM                       7u
#define P17_7_AMUXSEGMENT               AMUXBUS_MAIN

/* PORT 18 (AUTOLVL) */
#define P18_0_PORT                      GPIO_PRT18
#define P18_0_PIN                       0u
#define P18_0_NUM                       0u
#define P18_0_AMUXSEGMENT               AMUXBUS_MAIN
#define P18_1_PORT                      GPIO_PRT18
#define P18_1_PIN                       1u
#define P18_1_NUM                       1u
#define P18_1_AMUXSEGMENT               AMUXBUS_MAIN
#define P18_2_PORT                      GPIO_PRT18
#define P18_2_PIN                       2u
#define P18_2_NUM                       2u
#define P18_2_AMUXSEGMENT               AMUXBUS_MAIN
#define P18_3_PORT                      GPIO_PRT18
#define P18_3_PIN                       3u
#define P18_3_NUM                       3u
#define P18_3_AMUXSEGMENT               AMUXBUS_MAIN
#define P18_4_PORT                      GPIO_PRT18
#define P18_4_PIN                       4u
#define P18_4_NUM                       4u
#define P18_4_AMUXSEGMENT               AMUXBUS_MAIN
#define P18_5_PORT                      GPIO_PRT18
#define P18_5_PIN                       5u
#define P18_5_NUM                       5u
#define P18_5_AMUXSEGMENT               AMUXBUS_MAIN
#define P18_6_PORT                      GPIO_PRT18
#define P18_6_PIN                       6u
#define P18_6_NUM                       6u
#define P18_6_AMUXSEGMENT               AMUXBUS_MAIN
#define P18_7_PORT                      GPIO_PRT18
#define P18_7_PIN                       7u
#define P18_7_NUM                       7u
#define P18_7_AMUXSEGMENT               AMUXBUS_MAIN

/* PORT 19 (AUTOLVL) */
#define P19_0_PORT                      GPIO_PRT19
#define P19_0_PIN                       0u
#define P19_0_NUM                       0u
#define P19_0_AMUXSEGMENT               AMUXBUS_MAIN
#define P19_1_PORT                      GPIO_PRT19
#define P19_1_PIN                       1u
#define P19_1_NUM                       1u
#define P19_1_AMUXSEGMENT               AMUXBUS_MAIN
#define P19_2_PORT                      GPIO_PRT19
#define P19_2_PIN                       2u
#define P19_2_NUM                       2u
#define P19_2_AMUXSEGMENT               AMUXBUS_MAIN
#define P19_3_PORT                      GPIO_PRT19
#define P19_3_PIN                       3u
#define P19_3_NUM                       3u
#define P19_3_AMUXSEGMENT               AMUXBUS_MAIN
#define P19_4_PORT                      GPIO_PRT19
#define P19_4_PIN                       4u
#define P19_4_NUM                       4u
#define P19_4_AMUXSEGMENT               AMUXBUS_MAIN

/* PORT 20 (AUTOLVL) */
#define P20_0_PORT                      GPIO_PRT20
#define P20_0_PIN                       0u
#define P20_0_NUM                       0u
#define P20_0_AMUXSEGMENT               AMUXBUS_MAIN
#define P20_1_PORT                      GPIO_PRT20
#define P20_1_PIN                       1u
#define P20_1_NUM                       1u
#define P20_1_AMUXSEGMENT               AMUXBUS_MAIN
#define P20_2_PORT                      GPIO_PRT20
#define P20_2_PIN                       2u
#define P20_2_NUM                       2u
#define P20_2_AMUXSEGMENT               AMUXBUS_MAIN
#define P20_3_PORT                      GPIO_PRT20
#define P20_3_PIN                       3u
#define P20_3_NUM                       3u
#define P20_3_AMUXSEGMENT               AMUXBUS_MAIN
#define P20_4_PORT                      GPIO_PRT20
#define P20_4_PIN                       4u
#define P20_4_NUM                       4u
#define P20_4_AMUXSEGMENT               AMUXBUS_MAIN
#define P20_5_PORT                      GPIO_PRT20
#define P20_5_PIN                       5u
#define P20_5_NUM                       5u
#define P20_5_AMUXSEGMENT               AMUXBUS_MAIN
#define P20_6_PORT                      GPIO_PRT20
#define P20_6_PIN                       6u
#define P20_6_NUM                       6u
#define P20_6_AMUXSEGMENT               AMUXBUS_MAIN
#define P20_7_PORT                      GPIO_PRT20
#define P20_7_PIN                       7u
#define P20_7_NUM                       7u
#define P20_7_AMUXSEGMENT               AMUXBUS_MAIN

/* PORT 21 (AUTOLVL) */
#define P21_0_PORT                      GPIO_PRT21
#define P21_0_PIN                       0u
#define P21_0_NUM                       0u
#define P21_0_AMUXSEGMENT               AMUXBUS_MAIN
#define P21_1_PORT                      GPIO_PRT21
#define P21_1_PIN                       1u
#define P21_1_NUM                       1u
#define P21_1_AMUXSEGMENT               AMUXBUS_MAIN
#define P21_2_PORT                      GPIO_PRT21
#define P21_2_PIN                       2u
#define P21_2_NUM                       2u
#define P21_2_AMUXSEGMENT               AMUXBUS_MAIN
#define P21_3_PORT                      GPIO_PRT21
#define P21_3_PIN                       3u
#define P21_3_NUM                       3u
#define P21_3_AMUXSEGMENT               AMUXBUS_MAIN
#define P21_4_PORT                      GPIO_PRT21
#define P21_4_PIN                       4u
#define P21_4_NUM                       4u
#define P21_4_AMUXSEGMENT               AMUXBUS_MAIN
#define P21_5_PORT                      GPIO_PRT21
#define P21_5_PIN                       5u
#define P21_5_NUM                       5u
#define P21_5_AMUXSEGMENT               AMUXBUS_MAIN
#define P21_6_PORT                      GPIO_PRT21
#define P21_6_PIN                       6u
#define P21_6_NUM                       6u
#define P21_6_AMUXSEGMENT               AMUXBUS_MAIN
#define P21_7_PORT                      GPIO_PRT21
#define P21_7_PIN                       7u
#define P21_7_NUM                       7u
#define P21_7_AMUXSEGMENT               AMUXBUS_MAIN

/* PORT 22 (AUTOLVL) */
#define P22_1_PORT                      GPIO_PRT22
#define P22_1_PIN                       1u
#define P22_1_NUM                       1u
#define P22_1_AMUXSEGMENT               AMUXBUS_MAIN
#define P22_2_PORT                      GPIO_PRT22
#define P22_2_PIN                       2u
#define P22_2_NUM                       2u
#define P22_2_AMUXSEGMENT               AMUXBUS_MAIN
#define P22_3_PORT                      GPIO_PRT22
#define P22_3_PIN                       3u
#define P22_3_NUM                       3u
#define P22_3_AMUXSEGMENT               AMUXBUS_MAIN
#define P22_4_PORT                      GPIO_PRT22
#define P22_4_PIN                       4u
#define P22_4_NUM                       4u
#define P22_4_AMUXSEGMENT               AMUXBUS_MAIN
#define P22_5_PORT                      GPIO_PRT22
#define P22_5_PIN                       5u
#define P22_5_NUM                       5u
#define P22_5_AMUXSEGMENT               AMUXBUS_MAIN
#define P22_6_PORT                      GPIO_PRT22
#define P22_6_PIN                       6u
#define P22_6_NUM                       6u
#define P22_6_AMUXSEGMENT               AMUXBUS_MAIN
#define P22_7_PORT                      GPIO_PRT22
#define P22_7_PIN                       7u
#define P22_7_NUM                       7u
#define P22_7_AMUXSEGMENT               AMUXBUS_MAIN

/* PORT 23 (AUTOLVL) */
#define P23_0_PORT                      GPIO_PRT23
#define P23_0_PIN                       0u
#define P23_0_NUM                       0u
#define P23_0_AMUXSEGMENT               AMUXBUS_MAIN
#define P23_1_PORT                      GPIO_PRT23
#define P23_1_PIN                       1u
#define P23_1_NUM                       1u
#define P23_1_AMUXSEGMENT               AMUXBUS_MAIN
#define P23_2_PORT                      GPIO_PRT23
#define P23_2_PIN                       2u
#define P23_2_NUM                       2u
#define P23_2_AMUXSEGMENT               AMUXBUS_MAIN
#define P23_3_PORT                      GPIO_PRT23
#define P23_3_PIN                       3u
#define P23_3_NUM                       3u
#define P23_3_AMUXSEGMENT               AMUXBUS_TEST
#define P23_4_PORT                      GPIO_PRT23
#define P23_4_PIN                       4u
#define P23_4_NUM                       4u
#define P23_4_AMUXSEGMENT               AMUXBUS_TEST
#define P23_5_PORT                      GPIO_PRT23
#define P23_5_PIN                       5u
#define P23_5_NUM                       5u
#define P23_5_AMUXSEGMENT               AMUXBUS_MAIN
#define P23_6_PORT                      GPIO_PRT23
#define P23_6_PIN                       6u
#define P23_6_NUM                       6u
#define P23_6_AMUXSEGMENT               AMUXBUS_MAIN
#define P23_7_PORT                      GPIO_PRT23
#define P23_7_PIN                       7u
#define P23_7_NUM                       7u
#define P23_7_AMUXSEGMENT               AMUXBUS_MAIN

/* Analog Connections */
#define PASS0_I_TEMP_KELVIN_PORT        21u
#define PASS0_I_TEMP_KELVIN_PIN         2u
#define PASS0_SARMUX_MOTOR0_PORT        11u
#define PASS0_SARMUX_MOTOR0_PIN         0u
#define PASS0_SARMUX_MOTOR1_PORT        11u
#define PASS0_SARMUX_MOTOR1_PIN         1u
#define PASS0_SARMUX_MOTOR2_PORT        11u
#define PASS0_SARMUX_MOTOR2_PIN         2u
#define PASS0_SARMUX_PADS0_PORT         6u
#define PASS0_SARMUX_PADS0_PIN          0u
#define PASS0_SARMUX_PADS1_PORT         6u
#define PASS0_SARMUX_PADS1_PIN          1u
#define PASS0_SARMUX_PADS16_PORT        7u
#define PASS0_SARMUX_PADS16_PIN         0u
#define PASS0_SARMUX_PADS17_PORT        7u
#define PASS0_SARMUX_PADS17_PIN         1u
#define PASS0_SARMUX_PADS18_PORT        7u
#define PASS0_SARMUX_PADS18_PIN         2u
#define PASS0_SARMUX_PADS19_PORT        7u
#define PASS0_SARMUX_PADS19_PIN         3u
#define PASS0_SARMUX_PADS2_PORT         6u
#define PASS0_SARMUX_PADS2_PIN          2u
#define PASS0_SARMUX_PADS20_PORT        7u
#define PASS0_SARMUX_PADS20_PIN         4u
#define PASS0_SARMUX_PADS21_PORT        7u
#define PASS0_SARMUX_PADS21_PIN         5u
#define PASS0_SARMUX_PADS22_PORT        7u
#define PASS0_SARMUX_PADS22_PIN         6u
#define PASS0_SARMUX_PADS23_PORT        7u
#define PASS0_SARMUX_PADS23_PIN         7u
#define PASS0_SARMUX_PADS24_PORT        8u
#define PASS0_SARMUX_PADS24_PIN         1u
#define PASS0_SARMUX_PADS25_PORT        8u
#define PASS0_SARMUX_PADS25_PIN         2u
#define PASS0_SARMUX_PADS26_PORT        8u
#define PASS0_SARMUX_PADS26_PIN         3u
#define PASS0_SARMUX_PADS27_PORT        8u
#define PASS0_SARMUX_PADS27_PIN         4u
#define PASS0_SARMUX_PADS28_PORT        9u
#define PASS0_SARMUX_PADS28_PIN         0u
#define PASS0_SARMUX_PADS29_PORT        9u
#define PASS0_SARMUX_PADS29_PIN         1u
#define PASS0_SARMUX_PADS3_PORT         6u
#define PASS0_SARMUX_PADS3_PIN          3u
#define PASS0_SARMUX_PADS30_PORT        9u
#define PASS0_SARMUX_PADS30_PIN         2u
#define PASS0_SARMUX_PADS31_PORT        9u
#define PASS0_SARMUX_PADS31_PIN         3u
#define PASS0_SARMUX_PADS32_PORT        10u
#define PASS0_SARMUX_PADS32_PIN         4u
#define PASS0_SARMUX_PADS33_PORT        10u
#define PASS0_SARMUX_PADS33_PIN         5u
#define PASS0_SARMUX_PADS34_PORT        10u
#define PASS0_SARMUX_PADS34_PIN         6u
#define PASS0_SARMUX_PADS35_PORT        10u
#define PASS0_SARMUX_PADS35_PIN         7u
#define PASS0_SARMUX_PADS36_PORT        12u
#define PASS0_SARMUX_PADS36_PIN         0u
#define PASS0_SARMUX_PADS37_PORT        12u
#define PASS0_SARMUX_PADS37_PIN         1u
#define PASS0_SARMUX_PADS38_PORT        12u
#define PASS0_SARMUX_PADS38_PIN         2u
#define PASS0_SARMUX_PADS39_PORT        12u
#define PASS0_SARMUX_PADS39_PIN         3u
#define PASS0_SARMUX_PADS4_PORT         6u
#define PASS0_SARMUX_PADS4_PIN          4u
#define PASS0_SARMUX_PADS40_PORT        12u
#define PASS0_SARMUX_PADS40_PIN         4u
#define PASS0_SARMUX_PADS41_PORT        12u
#define PASS0_SARMUX_PADS41_PIN         5u
#define PASS0_SARMUX_PADS42_PORT        12u
#define PASS0_SARMUX_PADS42_PIN         6u
#define PASS0_SARMUX_PADS43_PORT        12u
#define PASS0_SARMUX_PADS43_PIN         7u
#define PASS0_SARMUX_PADS44_PORT        13u
#define PASS0_SARMUX_PADS44_PIN         0u
#define PASS0_SARMUX_PADS45_PORT        13u
#define PASS0_SARMUX_PADS45_PIN         1u
#define PASS0_SARMUX_PADS46_PORT        13u
#define PASS0_SARMUX_PADS46_PIN         2u
#define PASS0_SARMUX_PADS47_PORT        13u
#define PASS0_SARMUX_PADS47_PIN         3u
#define PASS0_SARMUX_PADS48_PORT        13u
#define PASS0_SARMUX_PADS48_PIN         4u
#define PASS0_SARMUX_PADS49_PORT        13u
#define PASS0_SARMUX_PADS49_PIN         5u
#define PASS0_SARMUX_PADS5_PORT         6u
#define PASS0_SARMUX_PADS5_PIN          5u
#define PASS0_SARMUX_PADS50_PORT        13u
#define PASS0_SARMUX_PADS50_PIN         6u
#define PASS0_SARMUX_PADS51_PORT        13u
#define PASS0_SARMUX_PADS51_PIN         7u
#define PASS0_SARMUX_PADS52_PORT        14u
#define PASS0_SARMUX_PADS52_PIN         0u
#define PASS0_SARMUX_PADS53_PORT        14u
#define PASS0_SARMUX_PADS53_PIN         1u
#define PASS0_SARMUX_PADS54_PORT        14u
#define PASS0_SARMUX_PADS54_PIN         2u
#define PASS0_SARMUX_PADS55_PORT        14u
#define PASS0_SARMUX_PADS55_PIN         3u
#define PASS0_SARMUX_PADS56_PORT        14u
#define PASS0_SARMUX_PADS56_PIN         4u
#define PASS0_SARMUX_PADS57_PORT        14u
#define PASS0_SARMUX_PADS57_PIN         5u
#define PASS0_SARMUX_PADS58_PORT        14u
#define PASS0_SARMUX_PADS58_PIN         6u
#define PASS0_SARMUX_PADS59_PORT        14u
#define PASS0_SARMUX_PADS59_PIN         7u
#define PASS0_SARMUX_PADS6_PORT         6u
#define PASS0_SARMUX_PADS6_PIN          6u
#define PASS0_SARMUX_PADS60_PORT        15u
#define PASS0_SARMUX_PADS60_PIN         0u
#define PASS0_SARMUX_PADS61_PORT        15u
#define PASS0_SARMUX_PADS61_PIN         1u
#define PASS0_SARMUX_PADS62_PORT        15u
#define PASS0_SARMUX_PADS62_PIN         2u
#define PASS0_SARMUX_PADS63_PORT        15u
#define PASS0_SARMUX_PADS63_PIN         3u
#define PASS0_SARMUX_PADS67_PORT        16u
#define PASS0_SARMUX_PADS67_PIN         3u
#define PASS0_SARMUX_PADS7_PORT         6u
#define PASS0_SARMUX_PADS7_PIN          7u
#define PASS0_SARMUX_PADS72_PORT        17u
#define PASS0_SARMUX_PADS72_PIN         0u
#define PASS0_SARMUX_PADS73_PORT        17u
#define PASS0_SARMUX_PADS73_PIN         1u
#define PASS0_SARMUX_PADS74_PORT        17u
#define PASS0_SARMUX_PADS74_PIN         2u
#define PASS0_SARMUX_PADS75_PORT        17u
#define PASS0_SARMUX_PADS75_PIN         3u
#define PASS0_SARMUX_PADS76_PORT        17u
#define PASS0_SARMUX_PADS76_PIN         4u
#define PASS0_SARMUX_PADS77_PORT        17u
#define PASS0_SARMUX_PADS77_PIN         5u
#define PASS0_SARMUX_PADS78_PORT        17u
#define PASS0_SARMUX_PADS78_PIN         6u
#define PASS0_SARMUX_PADS79_PORT        17u
#define PASS0_SARMUX_PADS79_PIN         7u
#define PASS0_SARMUX_PADS80_PORT        18u
#define PASS0_SARMUX_PADS80_PIN         0u
#define PASS0_SARMUX_PADS81_PORT        18u
#define PASS0_SARMUX_PADS81_PIN         1u
#define PASS0_SARMUX_PADS82_PORT        18u
#define PASS0_SARMUX_PADS82_PIN         2u
#define PASS0_SARMUX_PADS83_PORT        18u
#define PASS0_SARMUX_PADS83_PIN         3u
#define PASS0_SARMUX_PADS84_PORT        18u
#define PASS0_SARMUX_PADS84_PIN         4u
#define PASS0_SARMUX_PADS85_PORT        18u
#define PASS0_SARMUX_PADS85_PIN         5u
#define PASS0_SARMUX_PADS86_PORT        18u
#define PASS0_SARMUX_PADS86_PIN         6u
#define PASS0_SARMUX_PADS87_PORT        18u
#define PASS0_SARMUX_PADS87_PIN         7u
#define PASS0_SARMUX_PADS88_PORT        19u
#define PASS0_SARMUX_PADS88_PIN         0u
#define PASS0_SARMUX_PADS89_PORT        19u
#define PASS0_SARMUX_PADS89_PIN         1u
#define PASS0_SARMUX_PADS90_PORT        19u
#define PASS0_SARMUX_PADS90_PIN         2u
#define PASS0_SARMUX_PADS91_PORT        19u
#define PASS0_SARMUX_PADS91_PIN         3u
#define PASS0_SARMUX_PADS92_PORT        19u
#define PASS0_SARMUX_PADS92_PIN         4u
#define PASS0_SARMUX_PADS93_PORT        20u
#define PASS0_SARMUX_PADS93_PIN         0u
#define PASS0_SARMUX_PADS94_PORT        20u
#define PASS0_SARMUX_PADS94_PIN         1u
#define PASS0_SARMUX_PADS95_PORT        20u
#define PASS0_SARMUX_PADS95_PIN         2u
#define PASS0_VB_TEMP_KELVIN_PORT       10u
#define PASS0_VB_TEMP_KELVIN_PIN        4u
#define PASS0_VE_TEMP_KELVIN_PORT       23u
#define PASS0_VE_TEMP_KELVIN_PIN        4u
#define SRSS_ADFT_PIN0_PORT             23u
#define SRSS_ADFT_PIN0_PIN              4u
#define SRSS_ADFT_PIN1_PORT             23u
#define SRSS_ADFT_PIN1_PIN              3u
#define SRSS_ADFT_POR_PAD_HV_PORT       21u
#define SRSS_ADFT_POR_PAD_HV_PIN        4u
#define SRSS_ECO_IN_PORT                21u
#define SRSS_ECO_IN_PIN                 2u
#define SRSS_ECO_OUT_PORT               21u
#define SRSS_ECO_OUT_PIN                3u
#define SRSS_REGHC_ISENSE_INM_PORT      22u
#define SRSS_REGHC_ISENSE_INM_PIN       2u
#define SRSS_REGHC_ISENSE_INP_PORT      22u
#define SRSS_REGHC_ISENSE_INP_PIN       1u
#define SRSS_REGHC_RST_VOUT_PORT        22u
#define SRSS_REGHC_RST_VOUT_PIN         3u
#define SRSS_VEXT_REF_REG_PORT          21u
#define SRSS_VEXT_REF_REG_PIN           3u
#define SRSS_WCO_IN_PORT                21u
#define SRSS_WCO_IN_PIN                 0u
#define SRSS_WCO_OUT_PORT               21u
#define SRSS_WCO_OUT_PIN                1u

/* HSIOM Connections */
typedef enum
{
    /* Generic HSIOM connections */
    HSIOM_SEL_GPIO                  =  0,       /* GPIO controls 'out' */
    HSIOM_SEL_GPIO_DSI              =  1,       /* GPIO controls 'out', DSI controls 'output enable' */
    HSIOM_SEL_DSI_DSI               =  2,       /* DSI controls 'out' and 'output enable' */
    HSIOM_SEL_DSI_GPIO              =  3,       /* DSI controls 'out', GPIO controls 'output enable' */
    HSIOM_SEL_AMUXA                 =  4,       /* Analog mux bus A */
    HSIOM_SEL_AMUXB                 =  5,       /* Analog mux bus B */
    HSIOM_SEL_AMUXA_DSI             =  6,       /* Analog mux bus A, DSI control */
    HSIOM_SEL_AMUXB_DSI             =  7,       /* Analog mux bus B, DSI control */
    HSIOM_SEL_ACT_0                 =  8,       /* Active functionality 0 */
    HSIOM_SEL_ACT_1                 =  9,       /* Active functionality 1 */
    HSIOM_SEL_ACT_2                 = 10,       /* Active functionality 2 */
    HSIOM_SEL_ACT_3                 = 11,       /* Active functionality 3 */
    HSIOM_SEL_DS_0                  = 12,       /* DeepSleep functionality 0 */
    HSIOM_SEL_DS_1                  = 13,       /* DeepSleep functionality 1 */
    HSIOM_SEL_DS_2                  = 14,       /* DeepSleep functionality 2 */
    HSIOM_SEL_DS_3                  = 15,       /* DeepSleep functionality 3 */
    HSIOM_SEL_ACT_4                 = 16,       /* Active functionality 4 */
    HSIOM_SEL_ACT_5                 = 17,       /* Active functionality 5 */
    HSIOM_SEL_ACT_6                 = 18,       /* Active functionality 6 */
    HSIOM_SEL_ACT_7                 = 19,       /* Active functionality 7 */
    HSIOM_SEL_ACT_8                 = 20,       /* Active functionality 8 */
    HSIOM_SEL_ACT_9                 = 21,       /* Active functionality 9 */
    HSIOM_SEL_ACT_10                = 22,       /* Active functionality 10 */
    HSIOM_SEL_ACT_11                = 23,       /* Active functionality 11 */
    HSIOM_SEL_ACT_12                = 24,       /* Active functionality 12 */
    HSIOM_SEL_ACT_13                = 25,       /* Active functionality 13 */
    HSIOM_SEL_ACT_14                = 26,       /* Active functionality 14 */
    HSIOM_SEL_ACT_15                = 27,       /* Active functionality 15 */
    HSIOM_SEL_DS_4                  = 28,       /* DeepSleep functionality 4 */
    HSIOM_SEL_DS_5                  = 29,       /* DeepSleep functionality 5 */
    HSIOM_SEL_DS_6                  = 30,       /* DeepSleep functionality 6 */
    HSIOM_SEL_DS_7                  = 31,       /* DeepSleep functionality 7 */

    /* P0.0 */
    P0_0_GPIO                       =  0,       /* GPIO controls 'out' */
    P0_0_AMUXA                      =  4,       /* Analog mux bus A */
    P0_0_AMUXB                      =  5,       /* Analog mux bus B */
    P0_0_AMUXA_DSI                  =  6,       /* Analog mux bus A, DSI control */
    P0_0_AMUXB_DSI                  =  7,       /* Analog mux bus B, DSI control */
    P0_0_TCPWM1_LINE18              =  8,       /* Digital Active - tcpwm[1].line[18]:1 */
    P0_0_TCPWM1_LINE_COMPL22        =  9,       /* Digital Active - tcpwm[1].line_compl[22]:1 */
    P0_0_TCPWM1_TR_ONE_CNT_IN54     = 10,       /* Digital Active - tcpwm[1].tr_one_cnt_in[54]:1 */
    P0_0_TCPWM1_TR_ONE_CNT_IN67     = 11,       /* Digital Active - tcpwm[1].tr_one_cnt_in[67]:1 */
    P0_0_SCB0_UART_RX               = 17,       /* Digital Active - scb[0].uart_rx:0 */
    P0_0_SCB7_I2C_SDA               = 18,       /* Digital Active - scb[7].i2c_sda:2 */
    P0_0_LIN0_LIN_RX1               = 20,       /* Digital Active - lin[0].lin_rx[1]:0 */
    P0_0_TCPWM0_LINE512             = 22,       /* Digital Active - tcpwm[0].line[512] */
    P0_0_SCB0_SPI_MISO              = 30,       /* Digital Deep Sleep - scb[0].spi_miso:0 */

    /* P0.1 */
    P0_1_GPIO                       =  0,       /* GPIO controls 'out' */
    P0_1_AMUXA                      =  4,       /* Analog mux bus A */
    P0_1_AMUXB                      =  5,       /* Analog mux bus B */
    P0_1_AMUXA_DSI                  =  6,       /* Analog mux bus A, DSI control */
    P0_1_AMUXB_DSI                  =  7,       /* Analog mux bus B, DSI control */
    P0_1_TCPWM1_LINE17              =  8,       /* Digital Active - tcpwm[1].line[17]:1 */
    P0_1_TCPWM1_LINE_COMPL18        =  9,       /* Digital Active - tcpwm[1].line_compl[18]:1 */
    P0_1_TCPWM1_TR_ONE_CNT_IN51     = 10,       /* Digital Active - tcpwm[1].tr_one_cnt_in[51]:1 */
    P0_1_TCPWM1_TR_ONE_CNT_IN55     = 11,       /* Digital Active - tcpwm[1].tr_one_cnt_in[55]:1 */
    P0_1_SCB0_UART_TX               = 17,       /* Digital Active - scb[0].uart_tx:0 */
    P0_1_SCB7_I2C_SCL               = 18,       /* Digital Active - scb[7].i2c_scl:2 */
    P0_1_LIN0_LIN_TX1               = 20,       /* Digital Active - lin[0].lin_tx[1]:0 */
    P0_1_TCPWM0_LINE_COMPL512       = 22,       /* Digital Active - tcpwm[0].line_compl[512] */
    P0_1_SCB0_SPI_MOSI              = 30,       /* Digital Deep Sleep - scb[0].spi_mosi:0 */

    /* P0.2 */
    P0_2_GPIO                       =  0,       /* GPIO controls 'out' */
    P0_2_AMUXA                      =  4,       /* Analog mux bus A */
    P0_2_AMUXB                      =  5,       /* Analog mux bus B */
    P0_2_AMUXA_DSI                  =  6,       /* Analog mux bus A, DSI control */
    P0_2_AMUXB_DSI                  =  7,       /* Analog mux bus B, DSI control */
    P0_2_TCPWM1_LINE14              =  8,       /* Digital Active - tcpwm[1].line[14]:1 */
    P0_2_TCPWM1_LINE_COMPL17        =  9,       /* Digital Active - tcpwm[1].line_compl[17]:1 */
    P0_2_TCPWM1_TR_ONE_CNT_IN42     = 10,       /* Digital Active - tcpwm[1].tr_one_cnt_in[42]:1 */
    P0_2_TCPWM1_TR_ONE_CNT_IN52     = 11,       /* Digital Active - tcpwm[1].tr_one_cnt_in[52]:1 */
    P0_2_SCB0_I2C_SCL               = 14,       /* Digital Deep Sleep - scb[0].i2c_scl:0 */
    P0_2_SCB0_UART_RTS              = 17,       /* Digital Active - scb[0].uart_rts:0 */
    P0_2_SCB4_SPI_MISO              = 19,       /* Digital Active - scb[4].spi_miso:2 */
    P0_2_LIN0_LIN_EN1               = 20,       /* Digital Active - lin[0].lin_en[1]:0 */
    P0_2_CANFD0_TTCAN_TX1           = 21,       /* Digital Active - canfd[0].ttcan_tx[1]:0 */
    P0_2_TCPWM0_TR_ONE_CNT_IN1536   = 22,       /* Digital Active - tcpwm[0].tr_one_cnt_in[1536] */
    P0_2_SCB0_SPI_CLK               = 30,       /* Digital Deep Sleep - scb[0].spi_clk:0 */

    /* P0.3 */
    P0_3_GPIO                       =  0,       /* GPIO controls 'out' */
    P0_3_AMUXA                      =  4,       /* Analog mux bus A */
    P0_3_AMUXB                      =  5,       /* Analog mux bus B */
    P0_3_AMUXA_DSI                  =  6,       /* Analog mux bus A, DSI control */
    P0_3_AMUXB_DSI                  =  7,       /* Analog mux bus B, DSI control */
    P0_3_TCPWM1_LINE13              =  8,       /* Digital Active - tcpwm[1].line[13]:1 */
    P0_3_TCPWM1_LINE_COMPL14        =  9,       /* Digital Active - tcpwm[1].line_compl[14]:1 */
    P0_3_TCPWM1_TR_ONE_CNT_IN39     = 10,       /* Digital Active - tcpwm[1].tr_one_cnt_in[39]:1 */
    P0_3_TCPWM1_TR_ONE_CNT_IN43     = 11,       /* Digital Active - tcpwm[1].tr_one_cnt_in[43]:1 */
    P0_3_SCB0_I2C_SDA               = 14,       /* Digital Deep Sleep - scb[0].i2c_sda:0 */
    P0_3_SCB0_UART_CTS              = 17,       /* Digital Active - scb[0].uart_cts:0 */
    P0_3_SCB4_SPI_MOSI              = 19,       /* Digital Active - scb[4].spi_mosi:2 */
    P0_3_CANFD0_TTCAN_RX1           = 21,       /* Digital Active - canfd[0].ttcan_rx[1]:0 */
    P0_3_TCPWM0_TR_ONE_CNT_IN1537   = 22,       /* Digital Active - tcpwm[0].tr_one_cnt_in[1537] */
    P0_3_SCB0_SPI_SELECT0           = 30,       /* Digital Deep Sleep - scb[0].spi_select0:0 */

    /* P1.0 */
    P1_0_GPIO                       =  0,       /* GPIO controls 'out' */
    P1_0_AMUXA                      =  4,       /* Analog mux bus A */
    P1_0_AMUXB                      =  5,       /* Analog mux bus B */
    P1_0_AMUXA_DSI                  =  6,       /* Analog mux bus A, DSI control */
    P1_0_AMUXB_DSI                  =  7,       /* Analog mux bus B, DSI control */
    P1_0_TCPWM1_LINE12              =  8,       /* Digital Active - tcpwm[1].line[12]:1 */
    P1_0_TCPWM1_LINE_COMPL13        =  9,       /* Digital Active - tcpwm[1].line_compl[13]:1 */
    P1_0_TCPWM1_TR_ONE_CNT_IN36     = 10,       /* Digital Active - tcpwm[1].tr_one_cnt_in[36]:1 */
    P1_0_TCPWM1_TR_ONE_CNT_IN40     = 11,       /* Digital Active - tcpwm[1].tr_one_cnt_in[40]:1 */
    P1_0_SCB0_I2C_SCL               = 14,       /* Digital Deep Sleep - scb[0].i2c_scl:1 */
    P1_0_TCPWM1_LINE516             = 16,       /* Digital Active - tcpwm[1].line[516]:0 */
    P1_0_SCB4_SPI_CLK               = 19,       /* Digital Active - scb[4].spi_clk:2 */
    P1_0_SCB0_SPI_MISO              = 30,       /* Digital Deep Sleep - scb[0].spi_miso:1 */

    /* P1.1 */
    P1_1_GPIO                       =  0,       /* GPIO controls 'out' */
    P1_1_AMUXA                      =  4,       /* Analog mux bus A */
    P1_1_AMUXB                      =  5,       /* Analog mux bus B */
    P1_1_AMUXA_DSI                  =  6,       /* Analog mux bus A, DSI control */
    P1_1_AMUXB_DSI                  =  7,       /* Analog mux bus B, DSI control */
    P1_1_TCPWM1_LINE11              =  8,       /* Digital Active - tcpwm[1].line[11]:1 */
    P1_1_TCPWM1_LINE_COMPL12        =  9,       /* Digital Active - tcpwm[1].line_compl[12]:1 */
    P1_1_TCPWM1_TR_ONE_CNT_IN33     = 10,       /* Digital Active - tcpwm[1].tr_one_cnt_in[33]:1 */
    P1_1_TCPWM1_TR_ONE_CNT_IN37     = 11,       /* Digital Active - tcpwm[1].tr_one_cnt_in[37]:1 */
    P1_1_SCB0_I2C_SDA               = 14,       /* Digital Deep Sleep - scb[0].i2c_sda:1 */
    P1_1_TCPWM1_LINE517             = 16,       /* Digital Active - tcpwm[1].line[517]:0 */
    P1_1_SCB4_SPI_SELECT0           = 19,       /* Digital Active - scb[4].spi_select0:2 */
    P1_1_SCB0_SPI_MOSI              = 30,       /* Digital Deep Sleep - scb[0].spi_mosi:1 */

    /* P1.2 */
    P1_2_GPIO                       =  0,       /* GPIO controls 'out' */
    P1_2_AMUXA                      =  4,       /* Analog mux bus A */
    P1_2_AMUXB                      =  5,       /* Analog mux bus B */
    P1_2_AMUXA_DSI                  =  6,       /* Analog mux bus A, DSI control */
    P1_2_AMUXB_DSI                  =  7,       /* Analog mux bus B, DSI control */
    P1_2_TCPWM1_LINE10              =  8,       /* Digital Active - tcpwm[1].line[10]:1 */
    P1_2_TCPWM1_LINE_COMPL11        =  9,       /* Digital Active - tcpwm[1].line_compl[11]:1 */
    P1_2_TCPWM1_TR_ONE_CNT_IN30     = 10,       /* Digital Active - tcpwm[1].tr_one_cnt_in[30]:1 */
    P1_2_TCPWM1_TR_ONE_CNT_IN34     = 11,       /* Digital Active - tcpwm[1].tr_one_cnt_in[34]:1 */
    P1_2_TCPWM1_LINE518             = 16,       /* Digital Active - tcpwm[1].line[518]:0 */
    P1_2_LIN0_LIN_RX0               = 20,       /* Digital Active - lin[0].lin_rx[0]:2 */
    P1_2_PERI_TR_IO_INPUT0          = 26,       /* Digital Active - peri.tr_io_input[0]:0 */
    P1_2_SCB0_SPI_CLK               = 30,       /* Digital Deep Sleep - scb[0].spi_clk:1 */

    /* P1.3 */
    P1_3_GPIO                       =  0,       /* GPIO controls 'out' */
    P1_3_AMUXA                      =  4,       /* Analog mux bus A */
    P1_3_AMUXB                      =  5,       /* Analog mux bus B */
    P1_3_AMUXA_DSI                  =  6,       /* Analog mux bus A, DSI control */
    P1_3_AMUXB_DSI                  =  7,       /* Analog mux bus B, DSI control */
    P1_3_TCPWM1_LINE8               =  8,       /* Digital Active - tcpwm[1].line[8]:1 */
    P1_3_TCPWM1_LINE_COMPL10        =  9,       /* Digital Active - tcpwm[1].line_compl[10]:1 */
    P1_3_TCPWM1_TR_ONE_CNT_IN24     = 10,       /* Digital Active - tcpwm[1].tr_one_cnt_in[24]:1 */
    P1_3_TCPWM1_TR_ONE_CNT_IN31     = 11,       /* Digital Active - tcpwm[1].tr_one_cnt_in[31]:1 */
    P1_3_TCPWM1_LINE519             = 16,       /* Digital Active - tcpwm[1].line[519]:0 */
    P1_3_LIN0_LIN_TX0               = 20,       /* Digital Active - lin[0].lin_tx[0]:2 */
    P1_3_PERI_TR_IO_INPUT1          = 26,       /* Digital Active - peri.tr_io_input[1]:0 */
    P1_3_SCB0_SPI_SELECT0           = 30,       /* Digital Deep Sleep - scb[0].spi_select0:1 */

    /* P2.0 */
    P2_0_GPIO                       =  0,       /* GPIO controls 'out' */
    P2_0_AMUXA                      =  4,       /* Analog mux bus A */
    P2_0_AMUXB                      =  5,       /* Analog mux bus B */
    P2_0_AMUXA_DSI                  =  6,       /* Analog mux bus A, DSI control */
    P2_0_AMUXB_DSI                  =  7,       /* Analog mux bus B, DSI control */
    P2_0_TCPWM1_LINE7               =  8,       /* Digital Active - tcpwm[1].line[7]:1 */
    P2_0_TCPWM1_LINE_COMPL8         =  9,       /* Digital Active - tcpwm[1].line_compl[8]:1 */
    P2_0_TCPWM1_TR_ONE_CNT_IN21     = 10,       /* Digital Active - tcpwm[1].tr_one_cnt_in[21]:1 */
    P2_0_TCPWM1_TR_ONE_CNT_IN25     = 11,       /* Digital Active - tcpwm[1].tr_one_cnt_in[25]:1 */
    P2_0_TCPWM1_TR_ONE_CNT_IN1548   = 16,       /* Digital Active - tcpwm[1].tr_one_cnt_in[1548]:0 */
    P2_0_SCB7_UART_RX               = 17,       /* Digital Active - scb[7].uart_rx:0 */
    P2_0_SCB7_SPI_MISO              = 19,       /* Digital Active - scb[7].spi_miso:0 */
    P2_0_LIN0_LIN_RX0               = 20,       /* Digital Active - lin[0].lin_rx[0]:0 */
    P2_0_CANFD0_TTCAN_TX0           = 21,       /* Digital Active - canfd[0].ttcan_tx[0]:0 */
    P2_0_PERI_TR_IO_INPUT2          = 26,       /* Digital Active - peri.tr_io_input[2]:0 */
    P2_0_CPUSS_SWJ_TRSTN            = 29,       /* Digital Deep Sleep - cpuss.swj_trstn:0 */
    P2_0_SCB0_SPI_SELECT1           = 30,       /* Digital Deep Sleep - scb[0].spi_select1:0 */

    /* P2.1 */
    P2_1_GPIO                       =  0,       /* GPIO controls 'out' */
    P2_1_AMUXA                      =  4,       /* Analog mux bus A */
    P2_1_AMUXB                      =  5,       /* Analog mux bus B */
    P2_1_AMUXA_DSI                  =  6,       /* Analog mux bus A, DSI control */
    P2_1_AMUXB_DSI                  =  7,       /* Analog mux bus B, DSI control */
    P2_1_TCPWM1_LINE6               =  8,       /* Digital Active - tcpwm[1].line[6]:1 */
    P2_1_TCPWM1_LINE_COMPL7         =  9,       /* Digital Active - tcpwm[1].line_compl[7]:1 */
    P2_1_TCPWM1_TR_ONE_CNT_IN18     = 10,       /* Digital Active - tcpwm[1].tr_one_cnt_in[18]:1 */
    P2_1_TCPWM1_TR_ONE_CNT_IN22     = 11,       /* Digital Active - tcpwm[1].tr_one_cnt_in[22]:1 */
    P2_1_TCPWM1_TR_ONE_CNT_IN1551   = 16,       /* Digital Active - tcpwm[1].tr_one_cnt_in[1551]:0 */
    P2_1_SCB7_UART_TX               = 17,       /* Digital Active - scb[7].uart_tx:0 */
    P2_1_SCB7_I2C_SDA               = 18,       /* Digital Active - scb[7].i2c_sda:0 */
    P2_1_SCB7_SPI_MOSI              = 19,       /* Digital Active - scb[7].spi_mosi:0 */
    P2_1_LIN0_LIN_TX0               = 20,       /* Digital Active - lin[0].lin_tx[0]:0 */
    P2_1_CANFD0_TTCAN_RX0           = 21,       /* Digital Active - canfd[0].ttcan_rx[0]:0 */
    P2_1_PERI_TR_IO_INPUT3          = 26,       /* Digital Active - peri.tr_io_input[3]:0 */
    P2_1_SCB0_SPI_SELECT2           = 30,       /* Digital Deep Sleep - scb[0].spi_select2:0 */

    /* P2.2 */
    P2_2_GPIO                       =  0,       /* GPIO controls 'out' */
    P2_2_AMUXA                      =  4,       /* Analog mux bus A */
    P2_2_AMUXB                      =  5,       /* Analog mux bus B */
    P2_2_AMUXA_DSI                  =  6,       /* Analog mux bus A, DSI control */
    P2_2_AMUXB_DSI                  =  7,       /* Analog mux bus B, DSI control */
    P2_2_TCPWM1_LINE5               =  8,       /* Digital Active - tcpwm[1].line[5]:1 */
    P2_2_TCPWM1_LINE_COMPL6         =  9,       /* Digital Active - tcpwm[1].line_compl[6]:1 */
    P2_2_TCPWM1_TR_ONE_CNT_IN15     = 10,       /* Digital Active - tcpwm[1].tr_one_cnt_in[15]:1 */
    P2_2_TCPWM1_TR_ONE_CNT_IN19     = 11,       /* Digital Active - tcpwm[1].tr_one_cnt_in[19]:1 */
    P2_2_TCPWM1_TR_ONE_CNT_IN1554   = 16,       /* Digital Active - tcpwm[1].tr_one_cnt_in[1554]:0 */
    P2_2_SCB7_UART_RTS              = 17,       /* Digital Active - scb[7].uart_rts:0 */
    P2_2_SCB7_I2C_SCL               = 18,       /* Digital Active - scb[7].i2c_scl:0 */
    P2_2_SCB7_SPI_CLK               = 19,       /* Digital Active - scb[7].spi_clk:0 */
    P2_2_LIN0_LIN_EN0               = 20,       /* Digital Active - lin[0].lin_en[0]:0 */
    P2_2_ETH0_RX_ER                 = 24,       /* Digital Active - eth[0].rx_er:0 */
    P2_2_PERI_TR_IO_INPUT4          = 26,       /* Digital Active - peri.tr_io_input[4]:0 */
    P2_2_SCB0_SPI_SELECT3           = 30,       /* Digital Deep Sleep - scb[0].spi_select3:0 */

    /* P2.3 */
    P2_3_GPIO                       =  0,       /* GPIO controls 'out' */
    P2_3_AMUXA                      =  4,       /* Analog mux bus A */
    P2_3_AMUXB                      =  5,       /* Analog mux bus B */
    P2_3_AMUXA_DSI                  =  6,       /* Analog mux bus A, DSI control */
    P2_3_AMUXB_DSI                  =  7,       /* Analog mux bus B, DSI control */
    P2_3_TCPWM1_LINE4               =  8,       /* Digital Active - tcpwm[1].line[4]:1 */
    P2_3_TCPWM1_LINE_COMPL5         =  9,       /* Digital Active - tcpwm[1].line_compl[5]:1 */
    P2_3_TCPWM1_TR_ONE_CNT_IN12     = 10,       /* Digital Active - tcpwm[1].tr_one_cnt_in[12]:1 */
    P2_3_TCPWM1_TR_ONE_CNT_IN16     = 11,       /* Digital Active - tcpwm[1].tr_one_cnt_in[16]:1 */
    P2_3_TCPWM1_TR_ONE_CNT_IN1557   = 16,       /* Digital Active - tcpwm[1].tr_one_cnt_in[1557]:0 */
    P2_3_SCB7_UART_CTS              = 17,       /* Digital Active - scb[7].uart_cts:0 */
    P2_3_SCB7_SPI_SELECT0           = 19,       /* Digital Active - scb[7].spi_select0:0 */
    P2_3_LIN0_LIN_RX5               = 20,       /* Digital Active - lin[0].lin_rx[5]:1 */
    P2_3_ETH0_ETH_TSU_TIMER_CMP_VAL = 24,       /* Digital Active - eth[0].eth_tsu_timer_cmp_val:0 */
    P2_3_SRSS_IO_CLK_HF5            = 25,       /* Digital Active - srss.io_clk_hf[5]:2 */
    P2_3_PERI_TR_IO_INPUT5          = 26,       /* Digital Active - peri.tr_io_input[5]:0 */

    /* P2.4 */
    P2_4_GPIO                       =  0,       /* GPIO controls 'out' */
    P2_4_AMUXA                      =  4,       /* Analog mux bus A */
    P2_4_AMUXB                      =  5,       /* Analog mux bus B */
    P2_4_AMUXA_DSI                  =  6,       /* Analog mux bus A, DSI control */
    P2_4_AMUXB_DSI                  =  7,       /* Analog mux bus B, DSI control */
    P2_4_TCPWM1_LINE3               =  8,       /* Digital Active - tcpwm[1].line[3]:1 */
    P2_4_TCPWM1_LINE_COMPL4         =  9,       /* Digital Active - tcpwm[1].line_compl[4]:1 */
    P2_4_TCPWM1_TR_ONE_CNT_IN9      = 10,       /* Digital Active - tcpwm[1].tr_one_cnt_in[9]:1 */
    P2_4_TCPWM1_TR_ONE_CNT_IN13     = 11,       /* Digital Active - tcpwm[1].tr_one_cnt_in[13]:1 */
    P2_4_TCPWM1_LINE_COMPL516       = 16,       /* Digital Active - tcpwm[1].line_compl[516]:0 */
    P2_4_SCB7_SPI_SELECT1           = 19,       /* Digital Active - scb[7].spi_select1:0 */
    P2_4_LIN0_LIN_TX5               = 20,       /* Digital Active - lin[0].lin_tx[5]:1 */
    P2_4_PERI_TR_IO_INPUT6          = 26,       /* Digital Active - peri.tr_io_input[6]:0 */

    /* P2.5 */
    P2_5_GPIO                       =  0,       /* GPIO controls 'out' */
    P2_5_AMUXA                      =  4,       /* Analog mux bus A */
    P2_5_AMUXB                      =  5,       /* Analog mux bus B */
    P2_5_AMUXA_DSI                  =  6,       /* Analog mux bus A, DSI control */
    P2_5_AMUXB_DSI                  =  7,       /* Analog mux bus B, DSI control */
    P2_5_TCPWM1_LINE2               =  8,       /* Digital Active - tcpwm[1].line[2]:1 */
    P2_5_TCPWM1_LINE_COMPL3         =  9,       /* Digital Active - tcpwm[1].line_compl[3]:1 */
    P2_5_TCPWM1_TR_ONE_CNT_IN6      = 10,       /* Digital Active - tcpwm[1].tr_one_cnt_in[6]:1 */
    P2_5_TCPWM1_TR_ONE_CNT_IN10     = 11,       /* Digital Active - tcpwm[1].tr_one_cnt_in[10]:1 */
    P2_5_TCPWM1_LINE_COMPL517       = 16,       /* Digital Active - tcpwm[1].line_compl[517]:0 */
    P2_5_SCB7_SPI_SELECT2           = 19,       /* Digital Active - scb[7].spi_select2:0 */
    P2_5_LIN0_LIN_EN5               = 20,       /* Digital Active - lin[0].lin_en[5]:1 */
    P2_5_PERI_TR_IO_INPUT7          = 26,       /* Digital Active - peri.tr_io_input[7]:0 */

    /* P3.0 */
    P3_0_GPIO                       =  0,       /* GPIO controls 'out' */
    P3_0_AMUXA                      =  4,       /* Analog mux bus A */
    P3_0_AMUXB                      =  5,       /* Analog mux bus B */
    P3_0_AMUXA_DSI                  =  6,       /* Analog mux bus A, DSI control */
    P3_0_AMUXB_DSI                  =  7,       /* Analog mux bus B, DSI control */
    P3_0_TCPWM1_LINE1               =  8,       /* Digital Active - tcpwm[1].line[1]:1 */
    P3_0_TCPWM1_LINE_COMPL2         =  9,       /* Digital Active - tcpwm[1].line_compl[2]:1 */
    P3_0_TCPWM1_TR_ONE_CNT_IN3      = 10,       /* Digital Active - tcpwm[1].tr_one_cnt_in[3]:1 */
    P3_0_TCPWM1_TR_ONE_CNT_IN7      = 11,       /* Digital Active - tcpwm[1].tr_one_cnt_in[7]:1 */
    P3_0_TCPWM1_LINE_COMPL518       = 16,       /* Digital Active - tcpwm[1].line_compl[518]:0 */
    P3_0_SCB6_UART_RX               = 17,       /* Digital Active - scb[6].uart_rx:0 */
    P3_0_SCB6_SPI_MISO              = 19,       /* Digital Active - scb[6].spi_miso:0 */
    P3_0_CANFD0_TTCAN_TX3           = 21,       /* Digital Active - canfd[0].ttcan_tx[3]:0 */
    P3_0_ETH0_MDIO                  = 24,       /* Digital Active - eth[0].mdio:0 */
    P3_0_PERI_TR_IO_OUTPUT0         = 27,       /* Digital Active - peri.tr_io_output[0]:0 */

    /* P3.1 */
    P3_1_GPIO                       =  0,       /* GPIO controls 'out' */
    P3_1_AMUXA                      =  4,       /* Analog mux bus A */
    P3_1_AMUXB                      =  5,       /* Analog mux bus B */
    P3_1_AMUXA_DSI                  =  6,       /* Analog mux bus A, DSI control */
    P3_1_AMUXB_DSI                  =  7,       /* Analog mux bus B, DSI control */
    P3_1_TCPWM1_LINE0               =  8,       /* Digital Active - tcpwm[1].line[0]:1 */
    P3_1_TCPWM1_LINE_COMPL1         =  9,       /* Digital Active - tcpwm[1].line_compl[1]:1 */
    P3_1_TCPWM1_TR_ONE_CNT_IN0      = 10,       /* Digital Active - tcpwm[1].tr_one_cnt_in[0]:1 */
    P3_1_TCPWM1_TR_ONE_CNT_IN4      = 11,       /* Digital Active - tcpwm[1].tr_one_cnt_in[4]:1 */
    P3_1_TCPWM1_LINE_COMPL519       = 16,       /* Digital Active - tcpwm[1].line_compl[519]:0 */
    P3_1_SCB6_UART_TX               = 17,       /* Digital Active - scb[6].uart_tx:0 */
    P3_1_SCB6_I2C_SDA               = 18,       /* Digital Active - scb[6].i2c_sda:0 */
    P3_1_SCB6_SPI_MOSI              = 19,       /* Digital Active - scb[6].spi_mosi:0 */
    P3_1_CANFD0_TTCAN_RX3           = 21,       /* Digital Active - canfd[0].ttcan_rx[3]:0 */
    P3_1_ETH0_MDC                   = 24,       /* Digital Active - eth[0].mdc:0 */
    P3_1_PERI_TR_IO_OUTPUT1         = 27,       /* Digital Active - peri.tr_io_output[1]:0 */

    /* P3.2 */
    P3_2_GPIO                       =  0,       /* GPIO controls 'out' */
    P3_2_AMUXA                      =  4,       /* Analog mux bus A */
    P3_2_AMUXB                      =  5,       /* Analog mux bus B */
    P3_2_AMUXA_DSI                  =  6,       /* Analog mux bus A, DSI control */
    P3_2_AMUXB_DSI                  =  7,       /* Analog mux bus B, DSI control */
    P3_2_TCPWM1_LINE259             =  8,       /* Digital Active - tcpwm[1].line[259]:1 */
    P3_2_TCPWM1_LINE_COMPL0         =  9,       /* Digital Active - tcpwm[1].line_compl[0]:1 */
    P3_2_TCPWM1_TR_ONE_CNT_IN777    = 10,       /* Digital Active - tcpwm[1].tr_one_cnt_in[777]:1 */
    P3_2_TCPWM1_TR_ONE_CNT_IN1      = 11,       /* Digital Active - tcpwm[1].tr_one_cnt_in[1]:1 */
    P3_2_TCPWM1_TR_ONE_CNT_IN1549   = 16,       /* Digital Active - tcpwm[1].tr_one_cnt_in[1549]:0 */
    P3_2_SCB6_UART_RTS              = 17,       /* Digital Active - scb[6].uart_rts:0 */
    P3_2_SCB6_I2C_SCL               = 18,       /* Digital Active - scb[6].i2c_scl:0 */
    P3_2_SCB6_SPI_CLK               = 19,       /* Digital Active - scb[6].spi_clk:0 */

    /* P3.3 */
    P3_3_GPIO                       =  0,       /* GPIO controls 'out' */
    P3_3_AMUXA                      =  4,       /* Analog mux bus A */
    P3_3_AMUXB                      =  5,       /* Analog mux bus B */
    P3_3_AMUXA_DSI                  =  6,       /* Analog mux bus A, DSI control */
    P3_3_AMUXB_DSI                  =  7,       /* Analog mux bus B, DSI control */
    P3_3_TCPWM1_LINE258             =  8,       /* Digital Active - tcpwm[1].line[258]:1 */
    P3_3_TCPWM1_LINE_COMPL259       =  9,       /* Digital Active - tcpwm[1].line_compl[259]:1 */
    P3_3_TCPWM1_TR_ONE_CNT_IN774    = 10,       /* Digital Active - tcpwm[1].tr_one_cnt_in[774]:1 */
    P3_3_TCPWM1_TR_ONE_CNT_IN778    = 11,       /* Digital Active - tcpwm[1].tr_one_cnt_in[778]:1 */
    P3_3_TCPWM1_TR_ONE_CNT_IN1552   = 16,       /* Digital Active - tcpwm[1].tr_one_cnt_in[1552]:0 */
    P3_3_SCB6_UART_CTS              = 17,       /* Digital Active - scb[6].uart_cts:0 */
    P3_3_SCB6_SPI_SELECT0           = 19,       /* Digital Active - scb[6].spi_select0:0 */

    /* P3.4 */
    P3_4_GPIO                       =  0,       /* GPIO controls 'out' */
    P3_4_AMUXA                      =  4,       /* Analog mux bus A */
    P3_4_AMUXB                      =  5,       /* Analog mux bus B */
    P3_4_AMUXA_DSI                  =  6,       /* Analog mux bus A, DSI control */
    P3_4_AMUXB_DSI                  =  7,       /* Analog mux bus B, DSI control */
    P3_4_TCPWM1_LINE257             =  8,       /* Digital Active - tcpwm[1].line[257]:1 */
    P3_4_TCPWM1_LINE_COMPL258       =  9,       /* Digital Active - tcpwm[1].line_compl[258]:1 */
    P3_4_TCPWM1_TR_ONE_CNT_IN771    = 10,       /* Digital Active - tcpwm[1].tr_one_cnt_in[771]:1 */
    P3_4_TCPWM1_TR_ONE_CNT_IN775    = 11,       /* Digital Active - tcpwm[1].tr_one_cnt_in[775]:1 */
    P3_4_TCPWM1_TR_ONE_CNT_IN1555   = 16,       /* Digital Active - tcpwm[1].tr_one_cnt_in[1555]:0 */
    P3_4_SCB6_SPI_SELECT1           = 19,       /* Digital Active - scb[6].spi_select1:0 */
    P3_4_LIN0_LIN_RX1               = 20,       /* Digital Active - lin[0].lin_rx[1]:2 */

    /* P3.5 */
    P3_5_GPIO                       =  0,       /* GPIO controls 'out' */
    P3_5_AMUXA                      =  4,       /* Analog mux bus A */
    P3_5_AMUXB                      =  5,       /* Analog mux bus B */
    P3_5_AMUXA_DSI                  =  6,       /* Analog mux bus A, DSI control */
    P3_5_AMUXB_DSI                  =  7,       /* Analog mux bus B, DSI control */
    P3_5_TCPWM1_LINE256             =  8,       /* Digital Active - tcpwm[1].line[256]:1 */
    P3_5_TCPWM1_LINE_COMPL257       =  9,       /* Digital Active - tcpwm[1].line_compl[257]:1 */
    P3_5_TCPWM1_TR_ONE_CNT_IN768    = 10,       /* Digital Active - tcpwm[1].tr_one_cnt_in[768]:1 */
    P3_5_TCPWM1_TR_ONE_CNT_IN772    = 11,       /* Digital Active - tcpwm[1].tr_one_cnt_in[772]:1 */
    P3_5_TCPWM1_TR_ONE_CNT_IN1558   = 16,       /* Digital Active - tcpwm[1].tr_one_cnt_in[1558]:0 */
    P3_5_SCB6_SPI_SELECT2           = 19,       /* Digital Active - scb[6].spi_select2:0 */
    P3_5_LIN0_LIN_TX1               = 20,       /* Digital Active - lin[0].lin_tx[1]:2 */

    /* P4.0 */
    P4_0_GPIO                       =  0,       /* GPIO controls 'out' */
    P4_0_AMUXA                      =  4,       /* Analog mux bus A */
    P4_0_AMUXB                      =  5,       /* Analog mux bus B */
    P4_0_AMUXA_DSI                  =  6,       /* Analog mux bus A, DSI control */
    P4_0_AMUXB_DSI                  =  7,       /* Analog mux bus B, DSI control */
    P4_0_TCPWM1_LINE4               =  8,       /* Digital Active - tcpwm[1].line[4]:0 */
    P4_0_TCPWM1_LINE_COMPL256       =  9,       /* Digital Active - tcpwm[1].line_compl[256]:1 */
    P4_0_TCPWM1_TR_ONE_CNT_IN12     = 10,       /* Digital Active - tcpwm[1].tr_one_cnt_in[12]:0 */
    P4_0_TCPWM1_TR_ONE_CNT_IN769    = 11,       /* Digital Active - tcpwm[1].tr_one_cnt_in[769]:1 */
    P4_0_PASS0_SAR_EXT_MUX_SEL0     = 16,       /* Digital Active - pass[0].sar_ext_mux_sel[0] */
    P4_0_SCB5_UART_RX               = 17,       /* Digital Active - scb[5].uart_rx:0 */
    P4_0_SCB5_SPI_MISO              = 19,       /* Digital Active - scb[5].spi_miso:0 */
    P4_0_LIN0_LIN_RX1               = 20,       /* Digital Active - lin[0].lin_rx[1]:1 */
    P4_0_PERI_TR_IO_INPUT10         = 26,       /* Digital Active - peri.tr_io_input[10]:0 */

    /* P4.1 */
    P4_1_GPIO                       =  0,       /* GPIO controls 'out' */
    P4_1_AMUXA                      =  4,       /* Analog mux bus A */
    P4_1_AMUXB                      =  5,       /* Analog mux bus B */
    P4_1_AMUXA_DSI                  =  6,       /* Analog mux bus A, DSI control */
    P4_1_AMUXB_DSI                  =  7,       /* Analog mux bus B, DSI control */
    P4_1_TCPWM1_LINE5               =  8,       /* Digital Active - tcpwm[1].line[5]:0 */
    P4_1_TCPWM1_LINE_COMPL4         =  9,       /* Digital Active - tcpwm[1].line_compl[4]:0 */
    P4_1_TCPWM1_TR_ONE_CNT_IN15     = 10,       /* Digital Active - tcpwm[1].tr_one_cnt_in[15]:0 */
    P4_1_TCPWM1_TR_ONE_CNT_IN13     = 11,       /* Digital Active - tcpwm[1].tr_one_cnt_in[13]:0 */
    P4_1_PASS0_SAR_EXT_MUX_SEL1     = 16,       /* Digital Active - pass[0].sar_ext_mux_sel[1] */
    P4_1_SCB5_UART_TX               = 17,       /* Digital Active - scb[5].uart_tx:0 */
    P4_1_SCB5_I2C_SDA               = 18,       /* Digital Active - scb[5].i2c_sda:0 */
    P4_1_SCB5_SPI_MOSI              = 19,       /* Digital Active - scb[5].spi_mosi:0 */
    P4_1_LIN0_LIN_TX1               = 20,       /* Digital Active - lin[0].lin_tx[1]:1 */
    P4_1_PERI_TR_IO_INPUT11         = 26,       /* Digital Active - peri.tr_io_input[11]:0 */

    /* P4.2 */
    P4_2_GPIO                       =  0,       /* GPIO controls 'out' */
    P4_2_AMUXA                      =  4,       /* Analog mux bus A */
    P4_2_AMUXB                      =  5,       /* Analog mux bus B */
    P4_2_AMUXA_DSI                  =  6,       /* Analog mux bus A, DSI control */
    P4_2_AMUXB_DSI                  =  7,       /* Analog mux bus B, DSI control */
    P4_2_TCPWM1_LINE6               =  8,       /* Digital Active - tcpwm[1].line[6]:0 */
    P4_2_TCPWM1_LINE_COMPL5         =  9,       /* Digital Active - tcpwm[1].line_compl[5]:0 */
    P4_2_TCPWM1_TR_ONE_CNT_IN18     = 10,       /* Digital Active - tcpwm[1].tr_one_cnt_in[18]:0 */
    P4_2_TCPWM1_TR_ONE_CNT_IN16     = 11,       /* Digital Active - tcpwm[1].tr_one_cnt_in[16]:0 */
    P4_2_PASS0_SAR_EXT_MUX_SEL2     = 16,       /* Digital Active - pass[0].sar_ext_mux_sel[2] */
    P4_2_SCB5_UART_RTS              = 17,       /* Digital Active - scb[5].uart_rts:0 */
    P4_2_SCB5_I2C_SCL               = 18,       /* Digital Active - scb[5].i2c_scl:0 */
    P4_2_SCB5_SPI_CLK               = 19,       /* Digital Active - scb[5].spi_clk:0 */
    P4_2_LIN0_LIN_EN1               = 20,       /* Digital Active - lin[0].lin_en[1]:1 */
    P4_2_PERI_TR_IO_INPUT12         = 26,       /* Digital Active - peri.tr_io_input[12]:0 */

    /* P4.3 */
    P4_3_GPIO                       =  0,       /* GPIO controls 'out' */
    P4_3_AMUXA                      =  4,       /* Analog mux bus A */
    P4_3_AMUXB                      =  5,       /* Analog mux bus B */
    P4_3_AMUXA_DSI                  =  6,       /* Analog mux bus A, DSI control */
    P4_3_AMUXB_DSI                  =  7,       /* Analog mux bus B, DSI control */
    P4_3_TCPWM1_LINE7               =  8,       /* Digital Active - tcpwm[1].line[7]:0 */
    P4_3_TCPWM1_LINE_COMPL6         =  9,       /* Digital Active - tcpwm[1].line_compl[6]:0 */
    P4_3_TCPWM1_TR_ONE_CNT_IN21     = 10,       /* Digital Active - tcpwm[1].tr_one_cnt_in[21]:0 */
    P4_3_TCPWM1_TR_ONE_CNT_IN19     = 11,       /* Digital Active - tcpwm[1].tr_one_cnt_in[19]:0 */
    P4_3_PASS0_SAR_EXT_MUX_EN0      = 16,       /* Digital Active - pass[0].sar_ext_mux_en[0] */
    P4_3_SCB5_UART_CTS              = 17,       /* Digital Active - scb[5].uart_cts:0 */
    P4_3_SCB5_SPI_SELECT0           = 19,       /* Digital Active - scb[5].spi_select0:0 */
    P4_3_CANFD0_TTCAN_TX1           = 21,       /* Digital Active - canfd[0].ttcan_tx[1]:1 */
    P4_3_PERI_TR_IO_INPUT13         = 26,       /* Digital Active - peri.tr_io_input[13]:0 */

    /* P4.4 */
    P4_4_GPIO                       =  0,       /* GPIO controls 'out' */
    P4_4_AMUXA                      =  4,       /* Analog mux bus A */
    P4_4_AMUXB                      =  5,       /* Analog mux bus B */
    P4_4_AMUXA_DSI                  =  6,       /* Analog mux bus A, DSI control */
    P4_4_AMUXB_DSI                  =  7,       /* Analog mux bus B, DSI control */
    P4_4_TCPWM1_LINE8               =  8,       /* Digital Active - tcpwm[1].line[8]:0 */
    P4_4_TCPWM1_LINE_COMPL7         =  9,       /* Digital Active - tcpwm[1].line_compl[7]:0 */
    P4_4_TCPWM1_TR_ONE_CNT_IN24     = 10,       /* Digital Active - tcpwm[1].tr_one_cnt_in[24]:0 */
    P4_4_TCPWM1_TR_ONE_CNT_IN22     = 11,       /* Digital Active - tcpwm[1].tr_one_cnt_in[22]:0 */
    P4_4_LIN0_LIN_RX15              = 18,       /* Digital Active - lin[0].lin_rx[15]:1 */
    P4_4_SCB5_SPI_SELECT1           = 19,       /* Digital Active - scb[5].spi_select1:0 */
    P4_4_CANFD0_TTCAN_RX1           = 21,       /* Digital Active - canfd[0].ttcan_rx[1]:1 */

    /* P5.0 */
    P5_0_GPIO                       =  0,       /* GPIO controls 'out' */
    P5_0_AMUXA                      =  4,       /* Analog mux bus A */
    P5_0_AMUXB                      =  5,       /* Analog mux bus B */
    P5_0_AMUXA_DSI                  =  6,       /* Analog mux bus A, DSI control */
    P5_0_AMUXB_DSI                  =  7,       /* Analog mux bus B, DSI control */
    P5_0_TCPWM1_LINE9               =  8,       /* Digital Active - tcpwm[1].line[9]:0 */
    P5_0_TCPWM1_LINE_COMPL8         =  9,       /* Digital Active - tcpwm[1].line_compl[8]:0 */
    P5_0_TCPWM1_TR_ONE_CNT_IN27     = 10,       /* Digital Active - tcpwm[1].tr_one_cnt_in[27]:0 */
    P5_0_TCPWM1_TR_ONE_CNT_IN25     = 11,       /* Digital Active - tcpwm[1].tr_one_cnt_in[25]:0 */
    P5_0_TCPWM1_LINE522             = 16,       /* Digital Active - tcpwm[1].line[522]:0 */
    P5_0_LIN0_LIN_TX15              = 18,       /* Digital Active - lin[0].lin_tx[15]:1 */
    P5_0_SCB5_SPI_SELECT2           = 19,       /* Digital Active - scb[5].spi_select2:0 */
    P5_0_LIN0_LIN_RX7               = 20,       /* Digital Active - lin[0].lin_rx[7]:0 */
    P5_0_TCPWM0_LINE256             = 22,       /* Digital Active - tcpwm[0].line[256] */
    P5_0_PERI_TR_IO_INPUT38         = 26,       /* Digital Active - peri.tr_io_input[38]:0 */

    /* P5.1 */
    P5_1_GPIO                       =  0,       /* GPIO controls 'out' */
    P5_1_AMUXA                      =  4,       /* Analog mux bus A */
    P5_1_AMUXB                      =  5,       /* Analog mux bus B */
    P5_1_AMUXA_DSI                  =  6,       /* Analog mux bus A, DSI control */
    P5_1_AMUXB_DSI                  =  7,       /* Analog mux bus B, DSI control */
    P5_1_TCPWM1_LINE10              =  8,       /* Digital Active - tcpwm[1].line[10]:0 */
    P5_1_TCPWM1_LINE_COMPL9         =  9,       /* Digital Active - tcpwm[1].line_compl[9]:0 */
    P5_1_TCPWM1_TR_ONE_CNT_IN30     = 10,       /* Digital Active - tcpwm[1].tr_one_cnt_in[30]:0 */
    P5_1_TCPWM1_TR_ONE_CNT_IN28     = 11,       /* Digital Active - tcpwm[1].tr_one_cnt_in[28]:0 */
    P5_1_TCPWM1_LINE_COMPL522       = 16,       /* Digital Active - tcpwm[1].line_compl[522]:0 */
    P5_1_SCB9_SPI_SELECT3           = 19,       /* Digital Active - scb[9].spi_select3:1 */
    P5_1_LIN0_LIN_TX7               = 20,       /* Digital Active - lin[0].lin_tx[7]:0 */
    P5_1_TCPWM0_LINE_COMPL256       = 22,       /* Digital Active - tcpwm[0].line_compl[256] */
    P5_1_PERI_TR_IO_INPUT39         = 26,       /* Digital Active - peri.tr_io_input[39]:0 */

    /* P5.2 */
    P5_2_GPIO                       =  0,       /* GPIO controls 'out' */
    P5_2_AMUXA                      =  4,       /* Analog mux bus A */
    P5_2_AMUXB                      =  5,       /* Analog mux bus B */
    P5_2_AMUXA_DSI                  =  6,       /* Analog mux bus A, DSI control */
    P5_2_AMUXB_DSI                  =  7,       /* Analog mux bus B, DSI control */
    P5_2_TCPWM1_LINE11              =  8,       /* Digital Active - tcpwm[1].line[11]:0 */
    P5_2_TCPWM1_LINE_COMPL10        =  9,       /* Digital Active - tcpwm[1].line_compl[10]:0 */
    P5_2_TCPWM1_TR_ONE_CNT_IN33     = 10,       /* Digital Active - tcpwm[1].tr_one_cnt_in[33]:0 */
    P5_2_TCPWM1_TR_ONE_CNT_IN31     = 11,       /* Digital Active - tcpwm[1].tr_one_cnt_in[31]:0 */
    P5_2_TCPWM1_TR_ONE_CNT_IN1566   = 16,       /* Digital Active - tcpwm[1].tr_one_cnt_in[1566]:0 */
    P5_2_LIN0_LIN_RX10              = 18,       /* Digital Active - lin[0].lin_rx[10]:2 */
    P5_2_LIN0_LIN_EN7               = 20,       /* Digital Active - lin[0].lin_en[7]:0 */
    P5_2_TCPWM0_TR_ONE_CNT_IN768    = 22,       /* Digital Active - tcpwm[0].tr_one_cnt_in[768] */

    /* P5.3 */
    P5_3_GPIO                       =  0,       /* GPIO controls 'out' */
    P5_3_AMUXA                      =  4,       /* Analog mux bus A */
    P5_3_AMUXB                      =  5,       /* Analog mux bus B */
    P5_3_AMUXA_DSI                  =  6,       /* Analog mux bus A, DSI control */
    P5_3_AMUXB_DSI                  =  7,       /* Analog mux bus B, DSI control */
    P5_3_TCPWM1_LINE12              =  8,       /* Digital Active - tcpwm[1].line[12]:0 */
    P5_3_TCPWM1_LINE_COMPL11        =  9,       /* Digital Active - tcpwm[1].line_compl[11]:0 */
    P5_3_TCPWM1_TR_ONE_CNT_IN36     = 10,       /* Digital Active - tcpwm[1].tr_one_cnt_in[36]:0 */
    P5_3_TCPWM1_TR_ONE_CNT_IN34     = 11,       /* Digital Active - tcpwm[1].tr_one_cnt_in[34]:0 */
    P5_3_TCPWM1_TR_ONE_CNT_IN1567   = 16,       /* Digital Active - tcpwm[1].tr_one_cnt_in[1567]:0 */
    P5_3_LIN0_LIN_TX10              = 18,       /* Digital Active - lin[0].lin_tx[10]:2 */
    P5_3_LIN0_LIN_RX2               = 20,       /* Digital Active - lin[0].lin_rx[2]:0 */
    P5_3_TCPWM0_TR_ONE_CNT_IN769    = 22,       /* Digital Active - tcpwm[0].tr_one_cnt_in[769] */

    /* P5.4 */
    P5_4_GPIO                       =  0,       /* GPIO controls 'out' */
    P5_4_AMUXA                      =  4,       /* Analog mux bus A */
    P5_4_AMUXB                      =  5,       /* Analog mux bus B */
    P5_4_AMUXA_DSI                  =  6,       /* Analog mux bus A, DSI control */
    P5_4_AMUXB_DSI                  =  7,       /* Analog mux bus B, DSI control */
    P5_4_TCPWM1_LINE13              =  8,       /* Digital Active - tcpwm[1].line[13]:0 */
    P5_4_TCPWM1_LINE_COMPL12        =  9,       /* Digital Active - tcpwm[1].line_compl[12]:0 */
    P5_4_TCPWM1_TR_ONE_CNT_IN39     = 10,       /* Digital Active - tcpwm[1].tr_one_cnt_in[39]:0 */
    P5_4_TCPWM1_TR_ONE_CNT_IN37     = 11,       /* Digital Active - tcpwm[1].tr_one_cnt_in[37]:0 */
    P5_4_TCPWM1_LINE523             = 16,       /* Digital Active - tcpwm[1].line[523]:0 */
    P5_4_LIN0_LIN_TX2               = 20,       /* Digital Active - lin[0].lin_tx[2]:0 */
    P5_4_LIN0_LIN_RX9               = 23,       /* Digital Active - lin[0].lin_rx[9]:1 */

    /* P5.5 */
    P5_5_GPIO                       =  0,       /* GPIO controls 'out' */
    P5_5_AMUXA                      =  4,       /* Analog mux bus A */
    P5_5_AMUXB                      =  5,       /* Analog mux bus B */
    P5_5_AMUXA_DSI                  =  6,       /* Analog mux bus A, DSI control */
    P5_5_AMUXB_DSI                  =  7,       /* Analog mux bus B, DSI control */
    P5_5_TCPWM1_LINE14              =  8,       /* Digital Active - tcpwm[1].line[14]:0 */
    P5_5_TCPWM1_LINE_COMPL13        =  9,       /* Digital Active - tcpwm[1].line_compl[13]:0 */
    P5_5_TCPWM1_TR_ONE_CNT_IN42     = 10,       /* Digital Active - tcpwm[1].tr_one_cnt_in[42]:0 */
    P5_5_TCPWM1_TR_ONE_CNT_IN40     = 11,       /* Digital Active - tcpwm[1].tr_one_cnt_in[40]:0 */
    P5_5_TCPWM1_LINE_COMPL523       = 16,       /* Digital Active - tcpwm[1].line_compl[523]:0 */
    P5_5_LIN0_LIN_EN2               = 20,       /* Digital Active - lin[0].lin_en[2]:0 */
    P5_5_LIN0_LIN_TX9               = 23,       /* Digital Active - lin[0].lin_tx[9]:1 */

    /* P6.0 */
    P6_0_GPIO                       =  0,       /* GPIO controls 'out' */
    P6_0_AMUXA                      =  4,       /* Analog mux bus A */
    P6_0_AMUXB                      =  5,       /* Analog mux bus B */
    P6_0_AMUXA_DSI                  =  6,       /* Analog mux bus A, DSI control */
    P6_0_AMUXB_DSI                  =  7,       /* Analog mux bus B, DSI control */
    P6_0_TCPWM1_LINE256             =  8,       /* Digital Active - tcpwm[1].line[256]:0 */
    P6_0_TCPWM1_LINE_COMPL14        =  9,       /* Digital Active - tcpwm[1].line_compl[14]:0 */
    P6_0_TCPWM1_TR_ONE_CNT_IN768    = 10,       /* Digital Active - tcpwm[1].tr_one_cnt_in[768]:0 */
    P6_0_TCPWM1_TR_ONE_CNT_IN43     = 11,       /* Digital Active - tcpwm[1].tr_one_cnt_in[43]:0 */
    P6_0_TCPWM1_TR_ONE_CNT_IN1569   = 16,       /* Digital Active - tcpwm[1].tr_one_cnt_in[1569]:0 */
    P6_0_SCB4_UART_RX               = 17,       /* Digital Active - scb[4].uart_rx:0 */
    P6_0_SCB4_SPI_MISO              = 19,       /* Digital Active - scb[4].spi_miso:0 */
    P6_0_LIN0_LIN_RX3               = 20,       /* Digital Active - lin[0].lin_rx[3]:0 */
    P6_0_TCPWM0_LINE0               = 22,       /* Digital Active - tcpwm[0].line[0] */
    P6_0_LIN0_LIN_EN9               = 23,       /* Digital Active - lin[0].lin_en[9]:1 */

    /* P6.1 */
    P6_1_GPIO                       =  0,       /* GPIO controls 'out' */
    P6_1_AMUXA                      =  4,       /* Analog mux bus A */
    P6_1_AMUXB                      =  5,       /* Analog mux bus B */
    P6_1_AMUXA_DSI                  =  6,       /* Analog mux bus A, DSI control */
    P6_1_AMUXB_DSI                  =  7,       /* Analog mux bus B, DSI control */
    P6_1_TCPWM1_LINE0               =  8,       /* Digital Active - tcpwm[1].line[0]:0 */
    P6_1_TCPWM1_LINE_COMPL256       =  9,       /* Digital Active - tcpwm[1].line_compl[256]:0 */
    P6_1_TCPWM1_TR_ONE_CNT_IN0      = 10,       /* Digital Active - tcpwm[1].tr_one_cnt_in[0]:0 */
    P6_1_TCPWM1_TR_ONE_CNT_IN769    = 11,       /* Digital Active - tcpwm[1].tr_one_cnt_in[769]:0 */
    P6_1_TCPWM1_TR_ONE_CNT_IN1570   = 16,       /* Digital Active - tcpwm[1].tr_one_cnt_in[1570]:0 */
    P6_1_SCB4_UART_TX               = 17,       /* Digital Active - scb[4].uart_tx:0 */
    P6_1_SCB4_I2C_SDA               = 18,       /* Digital Active - scb[4].i2c_sda:0 */
    P6_1_SCB4_SPI_MOSI              = 19,       /* Digital Active - scb[4].spi_mosi:0 */
    P6_1_LIN0_LIN_TX3               = 20,       /* Digital Active - lin[0].lin_tx[3]:0 */

    /* P6.2 */
    P6_2_GPIO                       =  0,       /* GPIO controls 'out' */
    P6_2_AMUXA                      =  4,       /* Analog mux bus A */
    P6_2_AMUXB                      =  5,       /* Analog mux bus B */
    P6_2_AMUXA_DSI                  =  6,       /* Analog mux bus A, DSI control */
    P6_2_AMUXB_DSI                  =  7,       /* Analog mux bus B, DSI control */
    P6_2_TCPWM1_LINE257             =  8,       /* Digital Active - tcpwm[1].line[257]:0 */
    P6_2_TCPWM1_LINE_COMPL0         =  9,       /* Digital Active - tcpwm[1].line_compl[0]:0 */
    P6_2_TCPWM1_TR_ONE_CNT_IN771    = 10,       /* Digital Active - tcpwm[1].tr_one_cnt_in[771]:0 */
    P6_2_TCPWM1_TR_ONE_CNT_IN1      = 11,       /* Digital Active - tcpwm[1].tr_one_cnt_in[1]:0 */
    P6_2_TCPWM1_LINE524             = 16,       /* Digital Active - tcpwm[1].line[524]:0 */
    P6_2_SCB4_UART_RTS              = 17,       /* Digital Active - scb[4].uart_rts:0 */
    P6_2_SCB4_I2C_SCL               = 18,       /* Digital Active - scb[4].i2c_scl:0 */
    P6_2_SCB4_SPI_CLK               = 19,       /* Digital Active - scb[4].spi_clk:0 */
    P6_2_LIN0_LIN_EN3               = 20,       /* Digital Active - lin[0].lin_en[3]:0 */
    P6_2_CANFD0_TTCAN_TX2           = 21,       /* Digital Active - canfd[0].ttcan_tx[2]:0 */
    P6_2_TCPWM0_LINE_COMPL0         = 22,       /* Digital Active - tcpwm[0].line_compl[0] */
    P6_2_SDHC0_CARD_MECH_WRITE_PROT = 25,       /* Digital Active - sdhc[0].card_mech_write_prot:0 */

    /* P6.3 */
    P6_3_GPIO                       =  0,       /* GPIO controls 'out' */
    P6_3_AMUXA                      =  4,       /* Analog mux bus A */
    P6_3_AMUXB                      =  5,       /* Analog mux bus B */
    P6_3_AMUXA_DSI                  =  6,       /* Analog mux bus A, DSI control */
    P6_3_AMUXB_DSI                  =  7,       /* Analog mux bus B, DSI control */
    P6_3_TCPWM1_LINE1               =  8,       /* Digital Active - tcpwm[1].line[1]:0 */
    P6_3_TCPWM1_LINE_COMPL257       =  9,       /* Digital Active - tcpwm[1].line_compl[257]:0 */
    P6_3_TCPWM1_TR_ONE_CNT_IN3      = 10,       /* Digital Active - tcpwm[1].tr_one_cnt_in[3]:0 */
    P6_3_TCPWM1_TR_ONE_CNT_IN772    = 11,       /* Digital Active - tcpwm[1].tr_one_cnt_in[772]:0 */
    P6_3_TCPWM1_LINE_COMPL524       = 16,       /* Digital Active - tcpwm[1].line_compl[524]:0 */
    P6_3_SCB4_UART_CTS              = 17,       /* Digital Active - scb[4].uart_cts:0 */
    P6_3_SCB4_SPI_SELECT0           = 19,       /* Digital Active - scb[4].spi_select0:0 */
    P6_3_LIN0_LIN_RX4               = 20,       /* Digital Active - lin[0].lin_rx[4]:0 */
    P6_3_CANFD0_TTCAN_RX2           = 21,       /* Digital Active - canfd[0].ttcan_rx[2]:0 */
    P6_3_SMIF0_SPIHB_CLK            = 23,       /* Digital Active - smif[0].spihb_clk:0 */
    P6_3_SDHC0_CARD_CMD             = 25,       /* Digital Active - sdhc[0].card_cmd:0 */
    P6_3_CPUSS_CAL_SUP_NZ           = 27,       /* Digital Active - cpuss.cal_sup_nz:0 */

    /* P6.4 */
    P6_4_GPIO                       =  0,       /* GPIO controls 'out' */
    P6_4_AMUXA                      =  4,       /* Analog mux bus A */
    P6_4_AMUXB                      =  5,       /* Analog mux bus B */
    P6_4_AMUXA_DSI                  =  6,       /* Analog mux bus A, DSI control */
    P6_4_AMUXB_DSI                  =  7,       /* Analog mux bus B, DSI control */
    P6_4_TCPWM1_LINE258             =  8,       /* Digital Active - tcpwm[1].line[258]:0 */
    P6_4_TCPWM1_LINE_COMPL1         =  9,       /* Digital Active - tcpwm[1].line_compl[1]:0 */
    P6_4_TCPWM1_TR_ONE_CNT_IN774    = 10,       /* Digital Active - tcpwm[1].tr_one_cnt_in[774]:0 */
    P6_4_TCPWM1_TR_ONE_CNT_IN4      = 11,       /* Digital Active - tcpwm[1].tr_one_cnt_in[4]:0 */
    P6_4_TCPWM1_TR_ONE_CNT_IN1572   = 16,       /* Digital Active - tcpwm[1].tr_one_cnt_in[1572]:0 */
    P6_4_SCB4_SPI_SELECT1           = 19,       /* Digital Active - scb[4].spi_select1:0 */
    P6_4_LIN0_LIN_TX4               = 20,       /* Digital Active - lin[0].lin_tx[4]:0 */
    P6_4_TCPWM0_TR_ONE_CNT_IN0      = 22,       /* Digital Active - tcpwm[0].tr_one_cnt_in[0] */
    P6_4_SMIF0_SPIHB_RWDS           = 23,       /* Digital Active - smif[0].spihb_rwds:0 */
    P6_4_SDHC0_CLK_CARD             = 25,       /* Digital Active - sdhc[0].clk_card:0 */

    /* P6.5 */
    P6_5_GPIO                       =  0,       /* GPIO controls 'out' */
    P6_5_AMUXA                      =  4,       /* Analog mux bus A */
    P6_5_AMUXB                      =  5,       /* Analog mux bus B */
    P6_5_AMUXA_DSI                  =  6,       /* Analog mux bus A, DSI control */
    P6_5_AMUXB_DSI                  =  7,       /* Analog mux bus B, DSI control */
    P6_5_TCPWM1_LINE2               =  8,       /* Digital Active - tcpwm[1].line[2]:0 */
    P6_5_TCPWM1_LINE_COMPL258       =  9,       /* Digital Active - tcpwm[1].line_compl[258]:0 */
    P6_5_TCPWM1_TR_ONE_CNT_IN6      = 10,       /* Digital Active - tcpwm[1].tr_one_cnt_in[6]:0 */
    P6_5_TCPWM1_TR_ONE_CNT_IN775    = 11,       /* Digital Active - tcpwm[1].tr_one_cnt_in[775]:0 */
    P6_5_TCPWM1_TR_ONE_CNT_IN1573   = 16,       /* Digital Active - tcpwm[1].tr_one_cnt_in[1573]:0 */
    P6_5_SCB4_SPI_SELECT2           = 19,       /* Digital Active - scb[4].spi_select2:0 */
    P6_5_LIN0_LIN_EN4               = 20,       /* Digital Active - lin[0].lin_en[4]:0 */
    P6_5_TCPWM0_TR_ONE_CNT_IN1      = 22,       /* Digital Active - tcpwm[0].tr_one_cnt_in[1] */
    P6_5_SMIF0_SPIHB_SELECT0        = 23,       /* Digital Active - smif[0].spihb_select0:0 */
    P6_5_SDHC0_CARD_DETECT_N        = 25,       /* Digital Active - sdhc[0].card_detect_n:0 */

    /* P6.6 */
    P6_6_GPIO                       =  0,       /* GPIO controls 'out' */
    P6_6_AMUXA                      =  4,       /* Analog mux bus A */
    P6_6_AMUXB                      =  5,       /* Analog mux bus B */
    P6_6_AMUXA_DSI                  =  6,       /* Analog mux bus A, DSI control */
    P6_6_AMUXB_DSI                  =  7,       /* Analog mux bus B, DSI control */
    P6_6_TCPWM1_LINE259             =  8,       /* Digital Active - tcpwm[1].line[259]:0 */
    P6_6_TCPWM1_LINE_COMPL2         =  9,       /* Digital Active - tcpwm[1].line_compl[2]:0 */
    P6_6_TCPWM1_TR_ONE_CNT_IN777    = 10,       /* Digital Active - tcpwm[1].tr_one_cnt_in[777]:0 */
    P6_6_TCPWM1_TR_ONE_CNT_IN7      = 11,       /* Digital Active - tcpwm[1].tr_one_cnt_in[7]:0 */
    P6_6_SCB4_SPI_SELECT3           = 19,       /* Digital Active - scb[4].spi_select3:0 */
    P6_6_PERI_TR_IO_INPUT8          = 26,       /* Digital Active - peri.tr_io_input[8]:0 */

    /* P6.7 */
    P6_7_GPIO                       =  0,       /* GPIO controls 'out' */
    P6_7_AMUXA                      =  4,       /* Analog mux bus A */
    P6_7_AMUXB                      =  5,       /* Analog mux bus B */
    P6_7_AMUXA_DSI                  =  6,       /* Analog mux bus A, DSI control */
    P6_7_AMUXB_DSI                  =  7,       /* Analog mux bus B, DSI control */
    P6_7_TCPWM1_LINE3               =  8,       /* Digital Active - tcpwm[1].line[3]:0 */
    P6_7_TCPWM1_LINE_COMPL259       =  9,       /* Digital Active - tcpwm[1].line_compl[259]:0 */
    P6_7_TCPWM1_TR_ONE_CNT_IN9      = 10,       /* Digital Active - tcpwm[1].tr_one_cnt_in[9]:0 */
    P6_7_TCPWM1_TR_ONE_CNT_IN778    = 11,       /* Digital Active - tcpwm[1].tr_one_cnt_in[778]:0 */
    P6_7_PERI_TR_IO_INPUT9          = 26,       /* Digital Active - peri.tr_io_input[9]:0 */

    /* P7.0 */
    P7_0_GPIO                       =  0,       /* GPIO controls 'out' */
    P7_0_AMUXA                      =  4,       /* Analog mux bus A */
    P7_0_AMUXB                      =  5,       /* Analog mux bus B */
    P7_0_AMUXA_DSI                  =  6,       /* Analog mux bus A, DSI control */
    P7_0_AMUXB_DSI                  =  7,       /* Analog mux bus B, DSI control */
    P7_0_TCPWM1_LINE260             =  8,       /* Digital Active - tcpwm[1].line[260]:0 */
    P7_0_TCPWM1_LINE_COMPL3         =  9,       /* Digital Active - tcpwm[1].line_compl[3]:0 */
    P7_0_TCPWM1_TR_ONE_CNT_IN780    = 10,       /* Digital Active - tcpwm[1].tr_one_cnt_in[780]:0 */
    P7_0_TCPWM1_TR_ONE_CNT_IN10     = 11,       /* Digital Active - tcpwm[1].tr_one_cnt_in[10]:0 */
    P7_0_SCB5_UART_RX               = 17,       /* Digital Active - scb[5].uart_rx:1 */
    P7_0_SCB5_SPI_MISO              = 19,       /* Digital Active - scb[5].spi_miso:1 */
    P7_0_LIN0_LIN_RX4               = 20,       /* Digital Active - lin[0].lin_rx[4]:1 */
    P7_0_TCPWM0_LINE1               = 22,       /* Digital Active - tcpwm[0].line[1] */
    P7_0_SMIF0_SPIHB_SELECT1        = 23,       /* Digital Active - smif[0].spihb_select1:0 */
    P7_0_SDHC0_CARD_IF_PWR_EN       = 25,       /* Digital Active - sdhc[0].card_if_pwr_en:0 */

    /* P7.1 */
    P7_1_GPIO                       =  0,       /* GPIO controls 'out' */
    P7_1_AMUXA                      =  4,       /* Analog mux bus A */
    P7_1_AMUXB                      =  5,       /* Analog mux bus B */
    P7_1_AMUXA_DSI                  =  6,       /* Analog mux bus A, DSI control */
    P7_1_AMUXB_DSI                  =  7,       /* Analog mux bus B, DSI control */
    P7_1_TCPWM1_LINE15              =  8,       /* Digital Active - tcpwm[1].line[15]:0 */
    P7_1_TCPWM1_LINE_COMPL260       =  9,       /* Digital Active - tcpwm[1].line_compl[260]:0 */
    P7_1_TCPWM1_TR_ONE_CNT_IN45     = 10,       /* Digital Active - tcpwm[1].tr_one_cnt_in[45]:0 */
    P7_1_TCPWM1_TR_ONE_CNT_IN781    = 11,       /* Digital Active - tcpwm[1].tr_one_cnt_in[781]:0 */
    P7_1_SCB5_UART_TX               = 17,       /* Digital Active - scb[5].uart_tx:1 */
    P7_1_SCB5_I2C_SDA               = 18,       /* Digital Active - scb[5].i2c_sda:1 */
    P7_1_SCB5_SPI_MOSI              = 19,       /* Digital Active - scb[5].spi_mosi:1 */
    P7_1_LIN0_LIN_TX4               = 20,       /* Digital Active - lin[0].lin_tx[4]:1 */
    P7_1_SMIF0_SPIHB_DATA0          = 23,       /* Digital Active - smif[0].spihb_data0:0 */
    P7_1_SDHC0_CARD_DAT_3TO00       = 25,       /* Digital Active - sdhc[0].card_dat_3to0[0]:0 */

    /* P7.2 */
    P7_2_GPIO                       =  0,       /* GPIO controls 'out' */
    P7_2_AMUXA                      =  4,       /* Analog mux bus A */
    P7_2_AMUXB                      =  5,       /* Analog mux bus B */
    P7_2_AMUXA_DSI                  =  6,       /* Analog mux bus A, DSI control */
    P7_2_AMUXB_DSI                  =  7,       /* Analog mux bus B, DSI control */
    P7_2_TCPWM1_LINE261             =  8,       /* Digital Active - tcpwm[1].line[261]:0 */
    P7_2_TCPWM1_LINE_COMPL15        =  9,       /* Digital Active - tcpwm[1].line_compl[15]:0 */
    P7_2_TCPWM1_TR_ONE_CNT_IN783    = 10,       /* Digital Active - tcpwm[1].tr_one_cnt_in[783]:0 */
    P7_2_TCPWM1_TR_ONE_CNT_IN46     = 11,       /* Digital Active - tcpwm[1].tr_one_cnt_in[46]:0 */
    P7_2_SCB5_UART_RTS              = 17,       /* Digital Active - scb[5].uart_rts:1 */
    P7_2_SCB5_I2C_SCL               = 18,       /* Digital Active - scb[5].i2c_scl:1 */
    P7_2_SCB5_SPI_CLK               = 19,       /* Digital Active - scb[5].spi_clk:1 */
    P7_2_LIN0_LIN_EN4               = 20,       /* Digital Active - lin[0].lin_en[4]:1 */
    P7_2_TCPWM0_LINE_COMPL1         = 22,       /* Digital Active - tcpwm[0].line_compl[1] */
    P7_2_SMIF0_SPIHB_DATA1          = 23,       /* Digital Active - smif[0].spihb_data1:0 */
    P7_2_SDHC0_CARD_DAT_3TO01       = 25,       /* Digital Active - sdhc[0].card_dat_3to0[1]:0 */

    /* P7.3 */
    P7_3_GPIO                       =  0,       /* GPIO controls 'out' */
    P7_3_AMUXA                      =  4,       /* Analog mux bus A */
    P7_3_AMUXB                      =  5,       /* Analog mux bus B */
    P7_3_AMUXA_DSI                  =  6,       /* Analog mux bus A, DSI control */
    P7_3_AMUXB_DSI                  =  7,       /* Analog mux bus B, DSI control */
    P7_3_TCPWM1_LINE16              =  8,       /* Digital Active - tcpwm[1].line[16]:0 */
    P7_3_TCPWM1_LINE_COMPL261       =  9,       /* Digital Active - tcpwm[1].line_compl[261]:0 */
    P7_3_TCPWM1_TR_ONE_CNT_IN48     = 10,       /* Digital Active - tcpwm[1].tr_one_cnt_in[48]:0 */
    P7_3_TCPWM1_TR_ONE_CNT_IN784    = 11,       /* Digital Active - tcpwm[1].tr_one_cnt_in[784]:0 */
    P7_3_SCB5_UART_CTS              = 17,       /* Digital Active - scb[5].uart_cts:1 */
    P7_3_SCB5_SPI_SELECT0           = 19,       /* Digital Active - scb[5].spi_select0:1 */
    P7_3_CANFD0_TTCAN_TX4           = 21,       /* Digital Active - canfd[0].ttcan_tx[4]:0 */
    P7_3_TCPWM0_TR_ONE_CNT_IN3      = 22,       /* Digital Active - tcpwm[0].tr_one_cnt_in[3] */
    P7_3_SMIF0_SPIHB_DATA2          = 23,       /* Digital Active - smif[0].spihb_data2:0 */
    P7_3_SDHC0_CARD_DAT_3TO02       = 25,       /* Digital Active - sdhc[0].card_dat_3to0[2]:0 */

    /* P7.4 */
    P7_4_GPIO                       =  0,       /* GPIO controls 'out' */
    P7_4_AMUXA                      =  4,       /* Analog mux bus A */
    P7_4_AMUXB                      =  5,       /* Analog mux bus B */
    P7_4_AMUXA_DSI                  =  6,       /* Analog mux bus A, DSI control */
    P7_4_AMUXB_DSI                  =  7,       /* Analog mux bus B, DSI control */
    P7_4_TCPWM1_LINE262             =  8,       /* Digital Active - tcpwm[1].line[262]:0 */
    P7_4_TCPWM1_LINE_COMPL16        =  9,       /* Digital Active - tcpwm[1].line_compl[16]:0 */
    P7_4_TCPWM1_TR_ONE_CNT_IN786    = 10,       /* Digital Active - tcpwm[1].tr_one_cnt_in[786]:0 */
    P7_4_TCPWM1_TR_ONE_CNT_IN49     = 11,       /* Digital Active - tcpwm[1].tr_one_cnt_in[49]:0 */
    P7_4_SCB5_SPI_SELECT1           = 19,       /* Digital Active - scb[5].spi_select1:1 */
    P7_4_CANFD0_TTCAN_RX4           = 21,       /* Digital Active - canfd[0].ttcan_rx[4]:0 */
    P7_4_TCPWM0_TR_ONE_CNT_IN4      = 22,       /* Digital Active - tcpwm[0].tr_one_cnt_in[4] */
    P7_4_SMIF0_SPIHB_DATA3          = 23,       /* Digital Active - smif[0].spihb_data3:0 */
    P7_4_SDHC0_CARD_DAT_3TO03       = 25,       /* Digital Active - sdhc[0].card_dat_3to0[3]:0 */

    /* P7.5 */
    P7_5_GPIO                       =  0,       /* GPIO controls 'out' */
    P7_5_AMUXA                      =  4,       /* Analog mux bus A */
    P7_5_AMUXB                      =  5,       /* Analog mux bus B */
    P7_5_AMUXA_DSI                  =  6,       /* Analog mux bus A, DSI control */
    P7_5_AMUXB_DSI                  =  7,       /* Analog mux bus B, DSI control */
    P7_5_TCPWM1_LINE17              =  8,       /* Digital Active - tcpwm[1].line[17]:0 */
    P7_5_TCPWM1_LINE_COMPL262       =  9,       /* Digital Active - tcpwm[1].line_compl[262]:0 */
    P7_5_TCPWM1_TR_ONE_CNT_IN51     = 10,       /* Digital Active - tcpwm[1].tr_one_cnt_in[51]:0 */
    P7_5_TCPWM1_TR_ONE_CNT_IN787    = 11,       /* Digital Active - tcpwm[1].tr_one_cnt_in[787]:0 */
    P7_5_LIN0_LIN_RX10              = 18,       /* Digital Active - lin[0].lin_rx[10]:0 */
    P7_5_SCB5_SPI_SELECT2           = 19,       /* Digital Active - scb[5].spi_select2:1 */
    P7_5_TCPWM0_LINE514             = 22,       /* Digital Active - tcpwm[0].line[514] */
    P7_5_SMIF0_SPIHB_DATA4          = 23,       /* Digital Active - smif[0].spihb_data4:0 */
    P7_5_SDHC0_CARD_DAT_7TO40       = 25,       /* Digital Active - sdhc[0].card_dat_7to4[0]:0 */

    /* P7.6 */
    P7_6_GPIO                       =  0,       /* GPIO controls 'out' */
    P7_6_AMUXA                      =  4,       /* Analog mux bus A */
    P7_6_AMUXB                      =  5,       /* Analog mux bus B */
    P7_6_AMUXA_DSI                  =  6,       /* Analog mux bus A, DSI control */
    P7_6_AMUXB_DSI                  =  7,       /* Analog mux bus B, DSI control */
    P7_6_TCPWM1_LINE263             =  8,       /* Digital Active - tcpwm[1].line[263]:0 */
    P7_6_TCPWM1_LINE_COMPL17        =  9,       /* Digital Active - tcpwm[1].line_compl[17]:0 */
    P7_6_TCPWM1_TR_ONE_CNT_IN789    = 10,       /* Digital Active - tcpwm[1].tr_one_cnt_in[789]:0 */
    P7_6_TCPWM1_TR_ONE_CNT_IN52     = 11,       /* Digital Active - tcpwm[1].tr_one_cnt_in[52]:0 */
    P7_6_LIN0_LIN_TX10              = 18,       /* Digital Active - lin[0].lin_tx[10]:0 */
    P7_6_PERI_TR_IO_INPUT16         = 26,       /* Digital Active - peri.tr_io_input[16]:0 */

    /* P7.7 */
    P7_7_GPIO                       =  0,       /* GPIO controls 'out' */
    P7_7_AMUXA                      =  4,       /* Analog mux bus A */
    P7_7_AMUXB                      =  5,       /* Analog mux bus B */
    P7_7_AMUXA_DSI                  =  6,       /* Analog mux bus A, DSI control */
    P7_7_AMUXB_DSI                  =  7,       /* Analog mux bus B, DSI control */
    P7_7_TCPWM1_LINE18              =  8,       /* Digital Active - tcpwm[1].line[18]:0 */
    P7_7_TCPWM1_LINE_COMPL263       =  9,       /* Digital Active - tcpwm[1].line_compl[263]:0 */
    P7_7_TCPWM1_TR_ONE_CNT_IN54     = 10,       /* Digital Active - tcpwm[1].tr_one_cnt_in[54]:0 */
    P7_7_TCPWM1_TR_ONE_CNT_IN790    = 11,       /* Digital Active - tcpwm[1].tr_one_cnt_in[790]:0 */
    P7_7_LIN0_LIN_EN10              = 18,       /* Digital Active - lin[0].lin_en[10]:0 */
    P7_7_PERI_TR_IO_INPUT17         = 26,       /* Digital Active - peri.tr_io_input[17]:0 */

    /* P8.0 */
    P8_0_GPIO                       =  0,       /* GPIO controls 'out' */
    P8_0_AMUXA                      =  4,       /* Analog mux bus A */
    P8_0_AMUXB                      =  5,       /* Analog mux bus B */
    P8_0_AMUXA_DSI                  =  6,       /* Analog mux bus A, DSI control */
    P8_0_AMUXB_DSI                  =  7,       /* Analog mux bus B, DSI control */
    P8_0_TCPWM1_LINE19              =  8,       /* Digital Active - tcpwm[1].line[19]:0 */
    P8_0_TCPWM1_LINE_COMPL18        =  9,       /* Digital Active - tcpwm[1].line_compl[18]:0 */
    P8_0_TCPWM1_TR_ONE_CNT_IN57     = 10,       /* Digital Active - tcpwm[1].tr_one_cnt_in[57]:0 */
    P8_0_TCPWM1_TR_ONE_CNT_IN55     = 11,       /* Digital Active - tcpwm[1].tr_one_cnt_in[55]:0 */
    P8_0_TCPWM1_LINE520             = 16,       /* Digital Active - tcpwm[1].line[520]:1 */
    P8_0_LIN0_LIN_RX2               = 20,       /* Digital Active - lin[0].lin_rx[2]:1 */
    P8_0_CANFD0_TTCAN_TX0           = 21,       /* Digital Active - canfd[0].ttcan_tx[0]:1 */
    P8_0_TCPWM0_LINE_COMPL514       = 22,       /* Digital Active - tcpwm[0].line_compl[514] */
    P8_0_SMIF0_SPIHB_DATA5          = 23,       /* Digital Active - smif[0].spihb_data5:0 */
    P8_0_SDHC0_CARD_DAT_7TO41       = 25,       /* Digital Active - sdhc[0].card_dat_7to4[1]:0 */

    /* P8.1 */
    P8_1_GPIO                       =  0,       /* GPIO controls 'out' */
    P8_1_AMUXA                      =  4,       /* Analog mux bus A */
    P8_1_AMUXB                      =  5,       /* Analog mux bus B */
    P8_1_AMUXA_DSI                  =  6,       /* Analog mux bus A, DSI control */
    P8_1_AMUXB_DSI                  =  7,       /* Analog mux bus B, DSI control */
    P8_1_TCPWM1_LINE20              =  8,       /* Digital Active - tcpwm[1].line[20]:0 */
    P8_1_TCPWM1_LINE_COMPL19        =  9,       /* Digital Active - tcpwm[1].line_compl[19]:0 */
    P8_1_TCPWM1_TR_ONE_CNT_IN60     = 10,       /* Digital Active - tcpwm[1].tr_one_cnt_in[60]:0 */
    P8_1_TCPWM1_TR_ONE_CNT_IN58     = 11,       /* Digital Active - tcpwm[1].tr_one_cnt_in[58]:0 */
    P8_1_TCPWM1_LINE_COMPL520       = 16,       /* Digital Active - tcpwm[1].line_compl[520]:1 */
    P8_1_LIN0_LIN_TX2               = 20,       /* Digital Active - lin[0].lin_tx[2]:1 */
    P8_1_CANFD0_TTCAN_RX0           = 21,       /* Digital Active - canfd[0].ttcan_rx[0]:1 */
    P8_1_TCPWM0_TR_ONE_CNT_IN1542   = 22,       /* Digital Active - tcpwm[0].tr_one_cnt_in[1542] */
    P8_1_SMIF0_SPIHB_DATA6          = 23,       /* Digital Active - smif[0].spihb_data6:0 */
    P8_1_SDHC0_CARD_DAT_7TO42       = 25,       /* Digital Active - sdhc[0].card_dat_7to4[2]:0 */
    P8_1_PERI_TR_IO_INPUT14         = 26,       /* Digital Active - peri.tr_io_input[14]:0 */

    /* P8.2 */
    P8_2_GPIO                       =  0,       /* GPIO controls 'out' */
    P8_2_AMUXA                      =  4,       /* Analog mux bus A */
    P8_2_AMUXB                      =  5,       /* Analog mux bus B */
    P8_2_AMUXA_DSI                  =  6,       /* Analog mux bus A, DSI control */
    P8_2_AMUXB_DSI                  =  7,       /* Analog mux bus B, DSI control */
    P8_2_TCPWM1_LINE21              =  8,       /* Digital Active - tcpwm[1].line[21]:0 */
    P8_2_TCPWM1_LINE_COMPL20        =  9,       /* Digital Active - tcpwm[1].line_compl[20]:0 */
    P8_2_TCPWM1_TR_ONE_CNT_IN63     = 10,       /* Digital Active - tcpwm[1].tr_one_cnt_in[63]:0 */
    P8_2_TCPWM1_TR_ONE_CNT_IN61     = 11,       /* Digital Active - tcpwm[1].tr_one_cnt_in[61]:0 */
    P8_2_TCPWM1_TR_ONE_CNT_IN1560   = 16,       /* Digital Active - tcpwm[1].tr_one_cnt_in[1560]:1 */
    P8_2_LIN0_LIN_EN2               = 20,       /* Digital Active - lin[0].lin_en[2]:1 */
    P8_2_TCPWM0_TR_ONE_CNT_IN1543   = 22,       /* Digital Active - tcpwm[0].tr_one_cnt_in[1543] */
    P8_2_SMIF0_SPIHB_DATA7          = 23,       /* Digital Active - smif[0].spihb_data7:0 */
    P8_2_SDHC0_CARD_DAT_7TO43       = 25,       /* Digital Active - sdhc[0].card_dat_7to4[3]:0 */
    P8_2_PERI_TR_IO_INPUT15         = 26,       /* Digital Active - peri.tr_io_input[15]:0 */

    /* P8.3 */
    P8_3_GPIO                       =  0,       /* GPIO controls 'out' */
    P8_3_AMUXA                      =  4,       /* Analog mux bus A */
    P8_3_AMUXB                      =  5,       /* Analog mux bus B */
    P8_3_AMUXA_DSI                  =  6,       /* Analog mux bus A, DSI control */
    P8_3_AMUXB_DSI                  =  7,       /* Analog mux bus B, DSI control */
    P8_3_TCPWM1_LINE22              =  8,       /* Digital Active - tcpwm[1].line[22]:0 */
    P8_3_TCPWM1_LINE_COMPL21        =  9,       /* Digital Active - tcpwm[1].line_compl[21]:0 */
    P8_3_TCPWM1_TR_ONE_CNT_IN66     = 10,       /* Digital Active - tcpwm[1].tr_one_cnt_in[66]:0 */
    P8_3_TCPWM1_TR_ONE_CNT_IN64     = 11,       /* Digital Active - tcpwm[1].tr_one_cnt_in[64]:0 */
    P8_3_TCPWM1_TR_ONE_CNT_IN1561   = 16,       /* Digital Active - tcpwm[1].tr_one_cnt_in[1561]:1 */
    P8_3_LIN0_LIN_RX16              = 20,       /* Digital Active - lin[0].lin_rx[16]:1 */
    P8_3_PERI_TR_IO_OUTPUT0         = 27,       /* Digital Active - peri.tr_io_output[0]:1 */

    /* P8.4 */
    P8_4_GPIO                       =  0,       /* GPIO controls 'out' */
    P8_4_AMUXA                      =  4,       /* Analog mux bus A */
    P8_4_AMUXB                      =  5,       /* Analog mux bus B */
    P8_4_AMUXA_DSI                  =  6,       /* Analog mux bus A, DSI control */
    P8_4_AMUXB_DSI                  =  7,       /* Analog mux bus B, DSI control */
    P8_4_TCPWM1_LINE23              =  8,       /* Digital Active - tcpwm[1].line[23]:0 */
    P8_4_TCPWM1_LINE_COMPL22        =  9,       /* Digital Active - tcpwm[1].line_compl[22]:0 */
    P8_4_TCPWM1_TR_ONE_CNT_IN69     = 10,       /* Digital Active - tcpwm[1].tr_one_cnt_in[69]:0 */
    P8_4_TCPWM1_TR_ONE_CNT_IN67     = 11,       /* Digital Active - tcpwm[1].tr_one_cnt_in[67]:0 */
    P8_4_LIN0_LIN_TX16              = 20,       /* Digital Active - lin[0].lin_tx[16]:1 */
    P8_4_PERI_TR_IO_OUTPUT1         = 27,       /* Digital Active - peri.tr_io_output[1]:1 */

    /* P9.0 */
    P9_0_GPIO                       =  0,       /* GPIO controls 'out' */
    P9_0_AMUXA                      =  4,       /* Analog mux bus A */
    P9_0_AMUXB                      =  5,       /* Analog mux bus B */
    P9_0_AMUXA_DSI                  =  6,       /* Analog mux bus A, DSI control */
    P9_0_AMUXB_DSI                  =  7,       /* Analog mux bus B, DSI control */
    P9_0_TCPWM1_LINE24              =  8,       /* Digital Active - tcpwm[1].line[24]:0 */
    P9_0_TCPWM1_LINE_COMPL23        =  9,       /* Digital Active - tcpwm[1].line_compl[23]:0 */
    P9_0_TCPWM1_TR_ONE_CNT_IN72     = 10,       /* Digital Active - tcpwm[1].tr_one_cnt_in[72]:0 */
    P9_0_TCPWM1_TR_ONE_CNT_IN70     = 11,       /* Digital Active - tcpwm[1].tr_one_cnt_in[70]:0 */
    P9_0_TCPWM1_LINE521             = 16,       /* Digital Active - tcpwm[1].line[521]:1 */
    P9_0_LIN0_LIN_EN16              = 20,       /* Digital Active - lin[0].lin_en[16]:1 */

    /* P9.1 */
    P9_1_GPIO                       =  0,       /* GPIO controls 'out' */
    P9_1_AMUXA                      =  4,       /* Analog mux bus A */
    P9_1_AMUXB                      =  5,       /* Analog mux bus B */
    P9_1_AMUXA_DSI                  =  6,       /* Analog mux bus A, DSI control */
    P9_1_AMUXB_DSI                  =  7,       /* Analog mux bus B, DSI control */
    P9_1_TCPWM1_LINE25              =  8,       /* Digital Active - tcpwm[1].line[25]:0 */
    P9_1_TCPWM1_LINE_COMPL24        =  9,       /* Digital Active - tcpwm[1].line_compl[24]:0 */
    P9_1_TCPWM1_TR_ONE_CNT_IN75     = 10,       /* Digital Active - tcpwm[1].tr_one_cnt_in[75]:0 */
    P9_1_TCPWM1_TR_ONE_CNT_IN73     = 11,       /* Digital Active - tcpwm[1].tr_one_cnt_in[73]:0 */
    P9_1_TCPWM1_LINE_COMPL521       = 16,       /* Digital Active - tcpwm[1].line_compl[521]:1 */
    P9_1_LIN0_LIN_RX12              = 21,       /* Digital Active - lin[0].lin_rx[12]:0 */

    /* P9.2 */
    P9_2_GPIO                       =  0,       /* GPIO controls 'out' */
    P9_2_AMUXA                      =  4,       /* Analog mux bus A */
    P9_2_AMUXB                      =  5,       /* Analog mux bus B */
    P9_2_AMUXA_DSI                  =  6,       /* Analog mux bus A, DSI control */
    P9_2_AMUXB_DSI                  =  7,       /* Analog mux bus B, DSI control */
    P9_2_TCPWM1_LINE26              =  8,       /* Digital Active - tcpwm[1].line[26]:0 */
    P9_2_TCPWM1_LINE_COMPL25        =  9,       /* Digital Active - tcpwm[1].line_compl[25]:0 */
    P9_2_TCPWM1_TR_ONE_CNT_IN78     = 10,       /* Digital Active - tcpwm[1].tr_one_cnt_in[78]:0 */
    P9_2_TCPWM1_TR_ONE_CNT_IN76     = 11,       /* Digital Active - tcpwm[1].tr_one_cnt_in[76]:0 */
    P9_2_TCPWM1_TR_ONE_CNT_IN1563   = 16,       /* Digital Active - tcpwm[1].tr_one_cnt_in[1563]:1 */
    P9_2_LIN0_LIN_TX12              = 21,       /* Digital Active - lin[0].lin_tx[12]:0 */

    /* P9.3 */
    P9_3_GPIO                       =  0,       /* GPIO controls 'out' */
    P9_3_AMUXA                      =  4,       /* Analog mux bus A */
    P9_3_AMUXB                      =  5,       /* Analog mux bus B */
    P9_3_AMUXA_DSI                  =  6,       /* Analog mux bus A, DSI control */
    P9_3_AMUXB_DSI                  =  7,       /* Analog mux bus B, DSI control */
    P9_3_TCPWM1_LINE27              =  8,       /* Digital Active - tcpwm[1].line[27]:0 */
    P9_3_TCPWM1_LINE_COMPL26        =  9,       /* Digital Active - tcpwm[1].line_compl[26]:0 */
    P9_3_TCPWM1_TR_ONE_CNT_IN81     = 10,       /* Digital Active - tcpwm[1].tr_one_cnt_in[81]:0 */
    P9_3_TCPWM1_TR_ONE_CNT_IN79     = 11,       /* Digital Active - tcpwm[1].tr_one_cnt_in[79]:0 */
    P9_3_TCPWM1_TR_ONE_CNT_IN1564   = 16,       /* Digital Active - tcpwm[1].tr_one_cnt_in[1564]:1 */
    P9_3_LIN0_LIN_EN12              = 21,       /* Digital Active - lin[0].lin_en[12]:0 */

    /* P10.0 */
    P10_0_GPIO                      =  0,       /* GPIO controls 'out' */
    P10_0_AMUXA                     =  4,       /* Analog mux bus A */
    P10_0_AMUXB                     =  5,       /* Analog mux bus B */
    P10_0_AMUXA_DSI                 =  6,       /* Analog mux bus A, DSI control */
    P10_0_AMUXB_DSI                 =  7,       /* Analog mux bus B, DSI control */
    P10_0_TCPWM1_LINE28             =  8,       /* Digital Active - tcpwm[1].line[28]:0 */
    P10_0_TCPWM1_LINE_COMPL27       =  9,       /* Digital Active - tcpwm[1].line_compl[27]:0 */
    P10_0_TCPWM1_TR_ONE_CNT_IN84    = 10,       /* Digital Active - tcpwm[1].tr_one_cnt_in[84]:0 */
    P10_0_TCPWM1_TR_ONE_CNT_IN82    = 11,       /* Digital Active - tcpwm[1].tr_one_cnt_in[82]:0 */
    P10_0_TCPWM1_LINE522            = 16,       /* Digital Active - tcpwm[1].line[522]:1 */
    P10_0_SCB4_UART_RX              = 17,       /* Digital Active - scb[4].uart_rx:1 */
    P10_0_SCB4_SPI_MISO             = 19,       /* Digital Active - scb[4].spi_miso:1 */
    P10_0_LIN0_LIN_RX7              = 20,       /* Digital Active - lin[0].lin_rx[7]:2 */
    P10_0_PERI_TR_IO_INPUT18        = 26,       /* Digital Active - peri.tr_io_input[18]:0 */

    /* P10.1 */
    P10_1_GPIO                      =  0,       /* GPIO controls 'out' */
    P10_1_AMUXA                     =  4,       /* Analog mux bus A */
    P10_1_AMUXB                     =  5,       /* Analog mux bus B */
    P10_1_AMUXA_DSI                 =  6,       /* Analog mux bus A, DSI control */
    P10_1_AMUXB_DSI                 =  7,       /* Analog mux bus B, DSI control */
    P10_1_TCPWM1_LINE29             =  8,       /* Digital Active - tcpwm[1].line[29]:0 */
    P10_1_TCPWM1_LINE_COMPL28       =  9,       /* Digital Active - tcpwm[1].line_compl[28]:0 */
    P10_1_TCPWM1_TR_ONE_CNT_IN87    = 10,       /* Digital Active - tcpwm[1].tr_one_cnt_in[87]:0 */
    P10_1_TCPWM1_TR_ONE_CNT_IN85    = 11,       /* Digital Active - tcpwm[1].tr_one_cnt_in[85]:0 */
    P10_1_TCPWM1_LINE_COMPL522      = 16,       /* Digital Active - tcpwm[1].line_compl[522]:1 */
    P10_1_SCB4_UART_TX              = 17,       /* Digital Active - scb[4].uart_tx:1 */
    P10_1_SCB4_I2C_SDA              = 18,       /* Digital Active - scb[4].i2c_sda:1 */
    P10_1_SCB4_SPI_MOSI             = 19,       /* Digital Active - scb[4].spi_mosi:1 */
    P10_1_LIN0_LIN_TX7              = 20,       /* Digital Active - lin[0].lin_tx[7]:2 */
    P10_1_PERI_TR_IO_INPUT19        = 26,       /* Digital Active - peri.tr_io_input[19]:0 */

    /* P10.2 */
    P10_2_GPIO                      =  0,       /* GPIO controls 'out' */
    P10_2_AMUXA                     =  4,       /* Analog mux bus A */
    P10_2_AMUXB                     =  5,       /* Analog mux bus B */
    P10_2_AMUXA_DSI                 =  6,       /* Analog mux bus A, DSI control */
    P10_2_AMUXB_DSI                 =  7,       /* Analog mux bus B, DSI control */
    P10_2_TCPWM1_LINE30             =  8,       /* Digital Active - tcpwm[1].line[30]:0 */
    P10_2_TCPWM1_LINE_COMPL29       =  9,       /* Digital Active - tcpwm[1].line_compl[29]:0 */
    P10_2_TCPWM1_TR_ONE_CNT_IN90    = 10,       /* Digital Active - tcpwm[1].tr_one_cnt_in[90]:0 */
    P10_2_TCPWM1_TR_ONE_CNT_IN88    = 11,       /* Digital Active - tcpwm[1].tr_one_cnt_in[88]:0 */
    P10_2_TCPWM1_TR_ONE_CNT_IN1566  = 16,       /* Digital Active - tcpwm[1].tr_one_cnt_in[1566]:1 */
    P10_2_SCB4_UART_RTS             = 17,       /* Digital Active - scb[4].uart_rts:1 */
    P10_2_SCB4_I2C_SCL              = 18,       /* Digital Active - scb[4].i2c_scl:1 */
    P10_2_SCB4_SPI_CLK              = 19,       /* Digital Active - scb[4].spi_clk:1 */
    P10_2_LIN0_LIN_RX8              = 22,       /* Digital Active - lin[0].lin_rx[8]:1 */
    P10_2_FLEXRAY0_RXDA             = 26,       /* Digital Active - flexray[0].rxda:0 */

    /* P10.3 */
    P10_3_GPIO                      =  0,       /* GPIO controls 'out' */
    P10_3_AMUXA                     =  4,       /* Analog mux bus A */
    P10_3_AMUXB                     =  5,       /* Analog mux bus B */
    P10_3_AMUXA_DSI                 =  6,       /* Analog mux bus A, DSI control */
    P10_3_AMUXB_DSI                 =  7,       /* Analog mux bus B, DSI control */
    P10_3_TCPWM1_LINE31             =  8,       /* Digital Active - tcpwm[1].line[31]:0 */
    P10_3_TCPWM1_LINE_COMPL30       =  9,       /* Digital Active - tcpwm[1].line_compl[30]:0 */
    P10_3_TCPWM1_TR_ONE_CNT_IN93    = 10,       /* Digital Active - tcpwm[1].tr_one_cnt_in[93]:0 */
    P10_3_TCPWM1_TR_ONE_CNT_IN91    = 11,       /* Digital Active - tcpwm[1].tr_one_cnt_in[91]:0 */
    P10_3_TCPWM1_TR_ONE_CNT_IN1567  = 16,       /* Digital Active - tcpwm[1].tr_one_cnt_in[1567]:1 */
    P10_3_SCB4_UART_CTS             = 17,       /* Digital Active - scb[4].uart_cts:1 */
    P10_3_SCB4_SPI_SELECT0          = 19,       /* Digital Active - scb[4].spi_select0:1 */
    P10_3_LIN0_LIN_TX8              = 22,       /* Digital Active - lin[0].lin_tx[8]:1 */
    P10_3_FLEXRAY0_TXDA             = 26,       /* Digital Active - flexray[0].txda:0 */

    /* P10.4 */
    P10_4_GPIO                      =  0,       /* GPIO controls 'out' */
    P10_4_AMUXA                     =  4,       /* Analog mux bus A */
    P10_4_AMUXB                     =  5,       /* Analog mux bus B */
    P10_4_AMUXA_DSI                 =  6,       /* Analog mux bus A, DSI control */
    P10_4_AMUXB_DSI                 =  7,       /* Analog mux bus B, DSI control */
    P10_4_TCPWM1_LINE32             =  8,       /* Digital Active - tcpwm[1].line[32]:0 */
    P10_4_TCPWM1_LINE_COMPL31       =  9,       /* Digital Active - tcpwm[1].line_compl[31]:0 */
    P10_4_TCPWM1_TR_ONE_CNT_IN96    = 10,       /* Digital Active - tcpwm[1].tr_one_cnt_in[96]:0 */
    P10_4_TCPWM1_TR_ONE_CNT_IN94    = 11,       /* Digital Active - tcpwm[1].tr_one_cnt_in[94]:0 */
    P10_4_TCPWM1_LINE523            = 16,       /* Digital Active - tcpwm[1].line[523]:1 */
    P10_4_SCB4_SPI_SELECT1          = 19,       /* Digital Active - scb[4].spi_select1:1 */
    P10_4_LIN0_LIN_EN8              = 22,       /* Digital Active - lin[0].lin_en[8]:1 */
    P10_4_FLEXRAY0_TXENA_N          = 26,       /* Digital Active - flexray[0].txena_n:0 */

    /* P10.5 */
    P10_5_GPIO                      =  0,       /* GPIO controls 'out' */
    P10_5_AMUXA                     =  4,       /* Analog mux bus A */
    P10_5_AMUXB                     =  5,       /* Analog mux bus B */
    P10_5_AMUXA_DSI                 =  6,       /* Analog mux bus A, DSI control */
    P10_5_AMUXB_DSI                 =  7,       /* Analog mux bus B, DSI control */
    P10_5_TCPWM1_LINE33             =  8,       /* Digital Active - tcpwm[1].line[33]:0 */
    P10_5_TCPWM1_LINE_COMPL32       =  9,       /* Digital Active - tcpwm[1].line_compl[32]:0 */
    P10_5_TCPWM1_TR_ONE_CNT_IN99    = 10,       /* Digital Active - tcpwm[1].tr_one_cnt_in[99]:0 */
    P10_5_TCPWM1_TR_ONE_CNT_IN97    = 11,       /* Digital Active - tcpwm[1].tr_one_cnt_in[97]:0 */
    P10_5_TCPWM1_LINE_COMPL523      = 16,       /* Digital Active - tcpwm[1].line_compl[523]:1 */
    P10_5_SCB4_SPI_SELECT2          = 19,       /* Digital Active - scb[4].spi_select2:1 */
    P10_5_LIN0_LIN_RX13             = 21,       /* Digital Active - lin[0].lin_rx[13]:0 */
    P10_5_FLEXRAY0_RXDB             = 26,       /* Digital Active - flexray[0].rxdb:0 */

    /* P10.6 */
    P10_6_GPIO                      =  0,       /* GPIO controls 'out' */
    P10_6_AMUXA                     =  4,       /* Analog mux bus A */
    P10_6_AMUXB                     =  5,       /* Analog mux bus B */
    P10_6_AMUXA_DSI                 =  6,       /* Analog mux bus A, DSI control */
    P10_6_AMUXB_DSI                 =  7,       /* Analog mux bus B, DSI control */
    P10_6_TCPWM1_LINE_COMPL33       =  9,       /* Digital Active - tcpwm[1].line_compl[33]:0 */
    P10_6_TCPWM1_TR_ONE_CNT_IN100   = 11,       /* Digital Active - tcpwm[1].tr_one_cnt_in[100]:0 */
    P10_6_TCPWM1_TR_ONE_CNT_IN1569  = 16,       /* Digital Active - tcpwm[1].tr_one_cnt_in[1569]:1 */
    P10_6_TCPWM1_TR_ONE_CNT_IN102   = 19,       /* Digital Active - tcpwm[1].tr_one_cnt_in[102]:0 */
    P10_6_LIN0_LIN_TX13             = 21,       /* Digital Active - lin[0].lin_tx[13]:0 */
    P10_6_TCPWM1_LINE34             = 22,       /* Digital Active - tcpwm[1].line[34]:0 */
    P10_6_FLEXRAY0_TXDB             = 26,       /* Digital Active - flexray[0].txdb:0 */

    /* P10.7 */
    P10_7_GPIO                      =  0,       /* GPIO controls 'out' */
    P10_7_AMUXA                     =  4,       /* Analog mux bus A */
    P10_7_AMUXB                     =  5,       /* Analog mux bus B */
    P10_7_AMUXA_DSI                 =  6,       /* Analog mux bus A, DSI control */
    P10_7_AMUXB_DSI                 =  7,       /* Analog mux bus B, DSI control */
    P10_7_TCPWM1_LINE35             =  8,       /* Digital Active - tcpwm[1].line[35]:0 */
    P10_7_TCPWM1_LINE_COMPL34       =  9,       /* Digital Active - tcpwm[1].line_compl[34]:0 */
    P10_7_TCPWM1_TR_ONE_CNT_IN105   = 10,       /* Digital Active - tcpwm[1].tr_one_cnt_in[105]:0 */
    P10_7_TCPWM1_TR_ONE_CNT_IN103   = 11,       /* Digital Active - tcpwm[1].tr_one_cnt_in[103]:0 */
    P10_7_TCPWM1_TR_ONE_CNT_IN1570  = 16,       /* Digital Active - tcpwm[1].tr_one_cnt_in[1570]:1 */
    P10_7_LIN0_LIN_EN13             = 21,       /* Digital Active - lin[0].lin_en[13]:0 */
    P10_7_FLEXRAY0_TXENB_N          = 26,       /* Digital Active - flexray[0].txenb_n:0 */

    /* P11.0 */
    P11_0_GPIO                      =  0,       /* GPIO controls 'out' */
    P11_0_AMUXA                     =  4,       /* Analog mux bus A */
    P11_0_AMUXB                     =  5,       /* Analog mux bus B */
    P11_0_AMUXA_DSI                 =  6,       /* Analog mux bus A, DSI control */
    P11_0_AMUXB_DSI                 =  7,       /* Analog mux bus B, DSI control */
    P11_0_TCPWM1_LINE61             =  8,       /* Digital Active - tcpwm[1].line[61]:2 */
    P11_0_TCPWM1_LINE_COMPL62       =  9,       /* Digital Active - tcpwm[1].line_compl[62]:2 */
    P11_0_TCPWM1_TR_ONE_CNT_IN183   = 10,       /* Digital Active - tcpwm[1].tr_one_cnt_in[183]:2 */
    P11_0_TCPWM1_TR_ONE_CNT_IN187   = 11,       /* Digital Active - tcpwm[1].tr_one_cnt_in[187]:2 */
    P11_0_AUDIOSS0_MCLK             = 25,       /* Digital Active - audioss[0].mclk:0 */

    /* P11.1 */
    P11_1_GPIO                      =  0,       /* GPIO controls 'out' */
    P11_1_AMUXA                     =  4,       /* Analog mux bus A */
    P11_1_AMUXB                     =  5,       /* Analog mux bus B */
    P11_1_AMUXA_DSI                 =  6,       /* Analog mux bus A, DSI control */
    P11_1_AMUXB_DSI                 =  7,       /* Analog mux bus B, DSI control */
    P11_1_TCPWM1_LINE60             =  8,       /* Digital Active - tcpwm[1].line[60]:2 */
    P11_1_TCPWM1_LINE_COMPL61       =  9,       /* Digital Active - tcpwm[1].line_compl[61]:2 */
    P11_1_TCPWM1_TR_ONE_CNT_IN180   = 10,       /* Digital Active - tcpwm[1].tr_one_cnt_in[180]:2 */
    P11_1_TCPWM1_TR_ONE_CNT_IN184   = 11,       /* Digital Active - tcpwm[1].tr_one_cnt_in[184]:2 */
    P11_1_AUDIOSS0_TX_SCK           = 25,       /* Digital Active - audioss[0].tx_sck:0 */

    /* P11.2 */
    P11_2_GPIO                      =  0,       /* GPIO controls 'out' */
    P11_2_AMUXA                     =  4,       /* Analog mux bus A */
    P11_2_AMUXB                     =  5,       /* Analog mux bus B */
    P11_2_AMUXA_DSI                 =  6,       /* Analog mux bus A, DSI control */
    P11_2_AMUXB_DSI                 =  7,       /* Analog mux bus B, DSI control */
    P11_2_TCPWM1_LINE59             =  8,       /* Digital Active - tcpwm[1].line[59]:2 */
    P11_2_TCPWM1_LINE_COMPL60       =  9,       /* Digital Active - tcpwm[1].line_compl[60]:2 */
    P11_2_TCPWM1_TR_ONE_CNT_IN177   = 10,       /* Digital Active - tcpwm[1].tr_one_cnt_in[177]:2 */
    P11_2_TCPWM1_TR_ONE_CNT_IN181   = 11,       /* Digital Active - tcpwm[1].tr_one_cnt_in[181]:2 */
    P11_2_AUDIOSS0_TX_WS            = 25,       /* Digital Active - audioss[0].tx_ws:0 */

    /* P12.0 */
    P12_0_GPIO                      =  0,       /* GPIO controls 'out' */
    P12_0_AMUXA                     =  4,       /* Analog mux bus A */
    P12_0_AMUXB                     =  5,       /* Analog mux bus B */
    P12_0_AMUXA_DSI                 =  6,       /* Analog mux bus A, DSI control */
    P12_0_AMUXB_DSI                 =  7,       /* Analog mux bus B, DSI control */
    P12_0_TCPWM1_LINE36             =  8,       /* Digital Active - tcpwm[1].line[36]:0 */
    P12_0_TCPWM1_TR_ONE_CNT_IN108   = 10,       /* Digital Active - tcpwm[1].tr_one_cnt_in[108]:0 */
    P12_0_SCB8_UART_RX              = 17,       /* Digital Active - scb[8].uart_rx:0 */
    P12_0_TCPWM1_TR_ONE_CNT_IN106   = 18,       /* Digital Active - tcpwm[1].tr_one_cnt_in[106]:0 */
    P12_0_SCB8_SPI_MISO             = 19,       /* Digital Active - scb[8].spi_miso:0 */
    P12_0_CANFD0_TTCAN_TX2          = 21,       /* Digital Active - canfd[0].ttcan_tx[2]:1 */
    P12_0_TCPWM0_LINE513            = 22,       /* Digital Active - tcpwm[0].line[513] */
    P12_0_TCPWM1_LINE_COMPL35       = 23,       /* Digital Active - tcpwm[1].line_compl[35]:0 */
    P12_0_AUDIOSS0_TX_SDO           = 25,       /* Digital Active - audioss[0].tx_sdo:0 */
    P12_0_PERI_TR_IO_INPUT20        = 26,       /* Digital Active - peri.tr_io_input[20]:0 */

    /* P12.1 */
    P12_1_GPIO                      =  0,       /* GPIO controls 'out' */
    P12_1_AMUXA                     =  4,       /* Analog mux bus A */
    P12_1_AMUXB                     =  5,       /* Analog mux bus B */
    P12_1_AMUXA_DSI                 =  6,       /* Analog mux bus A, DSI control */
    P12_1_AMUXB_DSI                 =  7,       /* Analog mux bus B, DSI control */
    P12_1_TCPWM1_LINE37             =  8,       /* Digital Active - tcpwm[1].line[37]:0 */
    P12_1_TCPWM1_LINE_COMPL36       =  9,       /* Digital Active - tcpwm[1].line_compl[36]:0 */
    P12_1_TCPWM1_TR_ONE_CNT_IN111   = 10,       /* Digital Active - tcpwm[1].tr_one_cnt_in[111]:0 */
    P12_1_TCPWM1_TR_ONE_CNT_IN109   = 11,       /* Digital Active - tcpwm[1].tr_one_cnt_in[109]:0 */
    P12_1_SCB8_UART_TX              = 17,       /* Digital Active - scb[8].uart_tx:0 */
    P12_1_SCB8_I2C_SDA              = 18,       /* Digital Active - scb[8].i2c_sda:0 */
    P12_1_SCB8_SPI_MOSI             = 19,       /* Digital Active - scb[8].spi_mosi:0 */
    P12_1_LIN0_LIN_EN6              = 20,       /* Digital Active - lin[0].lin_en[6]:0 */
    P12_1_CANFD0_TTCAN_RX2          = 21,       /* Digital Active - canfd[0].ttcan_rx[2]:1 */
    P12_1_TCPWM0_LINE_COMPL513      = 22,       /* Digital Active - tcpwm[0].line_compl[513] */
    P12_1_AUDIOSS0_CLK_I2S_IF       = 25,       /* Digital Active - audioss[0].clk_i2s_if:0 */
    P12_1_PERI_TR_IO_INPUT21        = 26,       /* Digital Active - peri.tr_io_input[21]:0 */

    /* P12.2 */
    P12_2_GPIO                      =  0,       /* GPIO controls 'out' */
    P12_2_AMUXA                     =  4,       /* Analog mux bus A */
    P12_2_AMUXB                     =  5,       /* Analog mux bus B */
    P12_2_AMUXA_DSI                 =  6,       /* Analog mux bus A, DSI control */
    P12_2_AMUXB_DSI                 =  7,       /* Analog mux bus B, DSI control */
    P12_2_TCPWM1_LINE38             =  8,       /* Digital Active - tcpwm[1].line[38]:0 */
    P12_2_TCPWM1_LINE_COMPL37       =  9,       /* Digital Active - tcpwm[1].line_compl[37]:0 */
    P12_2_TCPWM1_TR_ONE_CNT_IN114   = 10,       /* Digital Active - tcpwm[1].tr_one_cnt_in[114]:0 */
    P12_2_TCPWM1_TR_ONE_CNT_IN112   = 11,       /* Digital Active - tcpwm[1].tr_one_cnt_in[112]:0 */
    P12_2_PASS0_SAR_EXT_MUX_EN1     = 16,       /* Digital Active - pass[0].sar_ext_mux_en[1] */
    P12_2_SCB8_UART_RTS             = 17,       /* Digital Active - scb[8].uart_rts:0 */
    P12_2_SCB8_I2C_SCL              = 18,       /* Digital Active - scb[8].i2c_scl:0 */
    P12_2_SCB8_SPI_CLK              = 19,       /* Digital Active - scb[8].spi_clk:0 */
    P12_2_LIN0_LIN_RX6              = 20,       /* Digital Active - lin[0].lin_rx[6]:0 */
    P12_2_TCPWM0_TR_ONE_CNT_IN1539  = 22,       /* Digital Active - tcpwm[0].tr_one_cnt_in[1539] */
    P12_2_AUDIOSS0_RX_SCK           = 25,       /* Digital Active - audioss[0].rx_sck:0 */

    /* P12.3 */
    P12_3_GPIO                      =  0,       /* GPIO controls 'out' */
    P12_3_AMUXA                     =  4,       /* Analog mux bus A */
    P12_3_AMUXB                     =  5,       /* Analog mux bus B */
    P12_3_AMUXA_DSI                 =  6,       /* Analog mux bus A, DSI control */
    P12_3_AMUXB_DSI                 =  7,       /* Analog mux bus B, DSI control */
    P12_3_TCPWM1_LINE39             =  8,       /* Digital Active - tcpwm[1].line[39]:0 */
    P12_3_TCPWM1_LINE_COMPL38       =  9,       /* Digital Active - tcpwm[1].line_compl[38]:0 */
    P12_3_TCPWM1_TR_ONE_CNT_IN117   = 10,       /* Digital Active - tcpwm[1].tr_one_cnt_in[117]:0 */
    P12_3_TCPWM1_TR_ONE_CNT_IN115   = 11,       /* Digital Active - tcpwm[1].tr_one_cnt_in[115]:0 */
    P12_3_PASS0_SAR_EXT_MUX_SEL3    = 16,       /* Digital Active - pass[0].sar_ext_mux_sel[3] */
    P12_3_SCB8_UART_CTS             = 17,       /* Digital Active - scb[8].uart_cts:0 */
    P12_3_SCB8_SPI_SELECT0          = 19,       /* Digital Active - scb[8].spi_select0:0 */
    P12_3_LIN0_LIN_TX6              = 20,       /* Digital Active - lin[0].lin_tx[6]:0 */
    P12_3_TCPWM0_TR_ONE_CNT_IN1540  = 22,       /* Digital Active - tcpwm[0].tr_one_cnt_in[1540] */
    P12_3_AUDIOSS0_RX_WS            = 25,       /* Digital Active - audioss[0].rx_ws:0 */

    /* P12.4 */
    P12_4_GPIO                      =  0,       /* GPIO controls 'out' */
    P12_4_AMUXA                     =  4,       /* Analog mux bus A */
    P12_4_AMUXB                     =  5,       /* Analog mux bus B */
    P12_4_AMUXA_DSI                 =  6,       /* Analog mux bus A, DSI control */
    P12_4_AMUXB_DSI                 =  7,       /* Analog mux bus B, DSI control */
    P12_4_TCPWM1_LINE40             =  8,       /* Digital Active - tcpwm[1].line[40]:0 */
    P12_4_TCPWM1_LINE_COMPL39       =  9,       /* Digital Active - tcpwm[1].line_compl[39]:0 */
    P12_4_TCPWM1_TR_ONE_CNT_IN120   = 10,       /* Digital Active - tcpwm[1].tr_one_cnt_in[120]:0 */
    P12_4_TCPWM1_TR_ONE_CNT_IN118   = 11,       /* Digital Active - tcpwm[1].tr_one_cnt_in[118]:0 */
    P12_4_PASS0_SAR_EXT_MUX_SEL4    = 16,       /* Digital Active - pass[0].sar_ext_mux_sel[4] */
    P12_4_SCB8_SPI_SELECT1          = 19,       /* Digital Active - scb[8].spi_select1:0 */
    P12_4_CANFD1_TTCAN_TX1          = 21,       /* Digital Active - canfd[1].ttcan_tx[1]:2 */
    P12_4_TCPWM0_TR_ONE_CNT_IN7     = 22,       /* Digital Active - tcpwm[0].tr_one_cnt_in[7] */
    P12_4_AUDIOSS0_RX_SDI           = 25,       /* Digital Active - audioss[0].rx_sdi:0 */

    /* P12.5 */
    P12_5_GPIO                      =  0,       /* GPIO controls 'out' */
    P12_5_AMUXA                     =  4,       /* Analog mux bus A */
    P12_5_AMUXB                     =  5,       /* Analog mux bus B */
    P12_5_AMUXA_DSI                 =  6,       /* Analog mux bus A, DSI control */
    P12_5_AMUXB_DSI                 =  7,       /* Analog mux bus B, DSI control */
    P12_5_TCPWM1_LINE41             =  8,       /* Digital Active - tcpwm[1].line[41]:0 */
    P12_5_TCPWM1_LINE_COMPL40       =  9,       /* Digital Active - tcpwm[1].line_compl[40]:0 */
    P12_5_TCPWM1_TR_ONE_CNT_IN123   = 10,       /* Digital Active - tcpwm[1].tr_one_cnt_in[123]:0 */
    P12_5_TCPWM1_TR_ONE_CNT_IN121   = 11,       /* Digital Active - tcpwm[1].tr_one_cnt_in[121]:0 */
    P12_5_PASS0_SAR_EXT_MUX_SEL5    = 16,       /* Digital Active - pass[0].sar_ext_mux_sel[5] */
    P12_5_CANFD1_TTCAN_RX1          = 21,       /* Digital Active - canfd[1].ttcan_rx[1]:2 */

    /* P12.6 */
    P12_6_GPIO                      =  0,       /* GPIO controls 'out' */
    P12_6_AMUXA                     =  4,       /* Analog mux bus A */
    P12_6_AMUXB                     =  5,       /* Analog mux bus B */
    P12_6_AMUXA_DSI                 =  6,       /* Analog mux bus A, DSI control */
    P12_6_AMUXB_DSI                 =  7,       /* Analog mux bus B, DSI control */
    P12_6_TCPWM1_LINE42             =  8,       /* Digital Active - tcpwm[1].line[42]:0 */
    P12_6_TCPWM1_LINE_COMPL41       =  9,       /* Digital Active - tcpwm[1].line_compl[41]:0 */
    P12_6_TCPWM1_TR_ONE_CNT_IN126   = 10,       /* Digital Active - tcpwm[1].tr_one_cnt_in[126]:0 */
    P12_6_TCPWM1_TR_ONE_CNT_IN124   = 11,       /* Digital Active - tcpwm[1].tr_one_cnt_in[124]:0 */

    /* P12.7 */
    P12_7_GPIO                      =  0,       /* GPIO controls 'out' */
    P12_7_AMUXA                     =  4,       /* Analog mux bus A */
    P12_7_AMUXB                     =  5,       /* Analog mux bus B */
    P12_7_AMUXA_DSI                 =  6,       /* Analog mux bus A, DSI control */
    P12_7_AMUXB_DSI                 =  7,       /* Analog mux bus B, DSI control */
    P12_7_TCPWM1_LINE43             =  8,       /* Digital Active - tcpwm[1].line[43]:0 */
    P12_7_TCPWM1_LINE_COMPL42       =  9,       /* Digital Active - tcpwm[1].line_compl[42]:0 */
    P12_7_TCPWM1_TR_ONE_CNT_IN129   = 10,       /* Digital Active - tcpwm[1].tr_one_cnt_in[129]:0 */
    P12_7_TCPWM1_TR_ONE_CNT_IN127   = 11,       /* Digital Active - tcpwm[1].tr_one_cnt_in[127]:0 */

    /* P13.0 */
    P13_0_GPIO                      =  0,       /* GPIO controls 'out' */
    P13_0_AMUXA                     =  4,       /* Analog mux bus A */
    P13_0_AMUXB                     =  5,       /* Analog mux bus B */
    P13_0_AMUXA_DSI                 =  6,       /* Analog mux bus A, DSI control */
    P13_0_AMUXB_DSI                 =  7,       /* Analog mux bus B, DSI control */
    P13_0_TCPWM1_LINE264            =  8,       /* Digital Active - tcpwm[1].line[264]:0 */
    P13_0_TCPWM1_LINE_COMPL43       =  9,       /* Digital Active - tcpwm[1].line_compl[43]:0 */
    P13_0_TCPWM1_TR_ONE_CNT_IN792   = 10,       /* Digital Active - tcpwm[1].tr_one_cnt_in[792]:0 */
    P13_0_TCPWM1_TR_ONE_CNT_IN130   = 11,       /* Digital Active - tcpwm[1].tr_one_cnt_in[130]:0 */
    P13_0_PASS0_SAR_EXT_MUX_SEL6    = 16,       /* Digital Active - pass[0].sar_ext_mux_sel[6] */
    P13_0_SCB3_UART_RX              = 17,       /* Digital Active - scb[3].uart_rx:0 */
    P13_0_LIN0_LIN_RX3              = 20,       /* Digital Active - lin[0].lin_rx[3]:1 */
    P13_0_SCB3_SPI_MISO             = 21,       /* Digital Active - scb[3].spi_miso:0 */
    P13_0_TCPWM0_TR_ONE_CNT_IN6     = 22,       /* Digital Active - tcpwm[0].tr_one_cnt_in[6] */
    P13_0_AUDIOSS1_MCLK             = 25,       /* Digital Active - audioss[1].mclk:0 */

    /* P13.1 */
    P13_1_GPIO                      =  0,       /* GPIO controls 'out' */
    P13_1_AMUXA                     =  4,       /* Analog mux bus A */
    P13_1_AMUXB                     =  5,       /* Analog mux bus B */
    P13_1_AMUXA_DSI                 =  6,       /* Analog mux bus A, DSI control */
    P13_1_AMUXB_DSI                 =  7,       /* Analog mux bus B, DSI control */
    P13_1_TCPWM1_LINE44             =  8,       /* Digital Active - tcpwm[1].line[44]:0 */
    P13_1_TCPWM1_LINE_COMPL264      =  9,       /* Digital Active - tcpwm[1].line_compl[264]:0 */
    P13_1_TCPWM1_TR_ONE_CNT_IN132   = 10,       /* Digital Active - tcpwm[1].tr_one_cnt_in[132]:0 */
    P13_1_TCPWM1_TR_ONE_CNT_IN793   = 11,       /* Digital Active - tcpwm[1].tr_one_cnt_in[793]:0 */
    P13_1_PASS0_SAR_EXT_MUX_SEL7    = 16,       /* Digital Active - pass[0].sar_ext_mux_sel[7] */
    P13_1_SCB3_UART_TX              = 17,       /* Digital Active - scb[3].uart_tx:0 */
    P13_1_SCB3_I2C_SDA              = 18,       /* Digital Active - scb[3].i2c_sda:0 */
    P13_1_LIN0_LIN_TX3              = 20,       /* Digital Active - lin[0].lin_tx[3]:1 */
    P13_1_SCB3_SPI_MOSI             = 21,       /* Digital Active - scb[3].spi_mosi:0 */
    P13_1_TCPWM0_LINE_COMPL2        = 22,       /* Digital Active - tcpwm[0].line_compl[2] */
    P13_1_AUDIOSS1_TX_SCK           = 25,       /* Digital Active - audioss[1].tx_sck:0 */

    /* P13.2 */
    P13_2_GPIO                      =  0,       /* GPIO controls 'out' */
    P13_2_AMUXA                     =  4,       /* Analog mux bus A */
    P13_2_AMUXB                     =  5,       /* Analog mux bus B */
    P13_2_AMUXA_DSI                 =  6,       /* Analog mux bus A, DSI control */
    P13_2_AMUXB_DSI                 =  7,       /* Analog mux bus B, DSI control */
    P13_2_TCPWM1_LINE265            =  8,       /* Digital Active - tcpwm[1].line[265]:0 */
    P13_2_TCPWM1_LINE_COMPL44       =  9,       /* Digital Active - tcpwm[1].line_compl[44]:0 */
    P13_2_TCPWM1_TR_ONE_CNT_IN795   = 10,       /* Digital Active - tcpwm[1].tr_one_cnt_in[795]:0 */
    P13_2_TCPWM1_TR_ONE_CNT_IN133   = 11,       /* Digital Active - tcpwm[1].tr_one_cnt_in[133]:0 */
    P13_2_PASS0_SAR_EXT_MUX_SEL8    = 16,       /* Digital Active - pass[0].sar_ext_mux_sel[8] */
    P13_2_SCB3_UART_RTS             = 17,       /* Digital Active - scb[3].uart_rts:0 */
    P13_2_SCB3_I2C_SCL              = 18,       /* Digital Active - scb[3].i2c_scl:0 */
    P13_2_LIN0_LIN_EN3              = 20,       /* Digital Active - lin[0].lin_en[3]:1 */
    P13_2_SCB3_SPI_CLK              = 21,       /* Digital Active - scb[3].spi_clk:0 */
    P13_2_TCPWM0_LINE2              = 22,       /* Digital Active - tcpwm[0].line[2] */
    P13_2_AUDIOSS1_TX_WS            = 25,       /* Digital Active - audioss[1].tx_ws:0 */

    /* P13.3 */
    P13_3_GPIO                      =  0,       /* GPIO controls 'out' */
    P13_3_AMUXA                     =  4,       /* Analog mux bus A */
    P13_3_AMUXB                     =  5,       /* Analog mux bus B */
    P13_3_AMUXA_DSI                 =  6,       /* Analog mux bus A, DSI control */
    P13_3_AMUXB_DSI                 =  7,       /* Analog mux bus B, DSI control */
    P13_3_TCPWM1_LINE45             =  8,       /* Digital Active - tcpwm[1].line[45]:0 */
    P13_3_TCPWM1_LINE_COMPL265      =  9,       /* Digital Active - tcpwm[1].line_compl[265]:0 */
    P13_3_TCPWM1_TR_ONE_CNT_IN135   = 10,       /* Digital Active - tcpwm[1].tr_one_cnt_in[135]:0 */
    P13_3_TCPWM1_TR_ONE_CNT_IN796   = 11,       /* Digital Active - tcpwm[1].tr_one_cnt_in[796]:0 */
    P13_3_PASS0_SAR_EXT_MUX_EN2     = 16,       /* Digital Active - pass[0].sar_ext_mux_en[2] */
    P13_3_SCB3_UART_CTS             = 17,       /* Digital Active - scb[3].uart_cts:0 */
    P13_3_LIN0_LIN_RX2              = 20,       /* Digital Active - lin[0].lin_rx[2]:2 */
    P13_3_SCB3_SPI_SELECT0          = 21,       /* Digital Active - scb[3].spi_select0:0 */
    P13_3_AUDIOSS1_TX_SDO           = 25,       /* Digital Active - audioss[1].tx_sdo:0 */

    /* P13.4 */
    P13_4_GPIO                      =  0,       /* GPIO controls 'out' */
    P13_4_AMUXA                     =  4,       /* Analog mux bus A */
    P13_4_AMUXB                     =  5,       /* Analog mux bus B */
    P13_4_AMUXA_DSI                 =  6,       /* Analog mux bus A, DSI control */
    P13_4_AMUXB_DSI                 =  7,       /* Analog mux bus B, DSI control */
    P13_4_TCPWM1_LINE266            =  8,       /* Digital Active - tcpwm[1].line[266]:0 */
    P13_4_TCPWM1_LINE_COMPL45       =  9,       /* Digital Active - tcpwm[1].line_compl[45]:0 */
    P13_4_TCPWM1_TR_ONE_CNT_IN798   = 10,       /* Digital Active - tcpwm[1].tr_one_cnt_in[798]:0 */
    P13_4_TCPWM1_TR_ONE_CNT_IN136   = 11,       /* Digital Active - tcpwm[1].tr_one_cnt_in[136]:0 */
    P13_4_TCPWM1_LINE516            = 16,       /* Digital Active - tcpwm[1].line[516]:1 */
    P13_4_LIN0_LIN_TX2              = 20,       /* Digital Active - lin[0].lin_tx[2]:2 */
    P13_4_SCB3_SPI_SELECT1          = 21,       /* Digital Active - scb[3].spi_select1:0 */
    P13_4_LIN0_LIN_RX8              = 22,       /* Digital Active - lin[0].lin_rx[8]:0 */
    P13_4_AUDIOSS1_CLK_I2S_IF       = 25,       /* Digital Active - audioss[1].clk_i2s_if:0 */

    /* P13.5 */
    P13_5_GPIO                      =  0,       /* GPIO controls 'out' */
    P13_5_AMUXA                     =  4,       /* Analog mux bus A */
    P13_5_AMUXB                     =  5,       /* Analog mux bus B */
    P13_5_AMUXA_DSI                 =  6,       /* Analog mux bus A, DSI control */
    P13_5_AMUXB_DSI                 =  7,       /* Analog mux bus B, DSI control */
    P13_5_TCPWM1_LINE46             =  8,       /* Digital Active - tcpwm[1].line[46]:0 */
    P13_5_TCPWM1_LINE_COMPL266      =  9,       /* Digital Active - tcpwm[1].line_compl[266]:0 */
    P13_5_TCPWM1_TR_ONE_CNT_IN138   = 10,       /* Digital Active - tcpwm[1].tr_one_cnt_in[138]:0 */
    P13_5_TCPWM1_TR_ONE_CNT_IN799   = 11,       /* Digital Active - tcpwm[1].tr_one_cnt_in[799]:0 */
    P13_5_TCPWM1_LINE_COMPL516      = 16,       /* Digital Active - tcpwm[1].line_compl[516]:1 */
    P13_5_SCB3_SPI_SELECT2          = 21,       /* Digital Active - scb[3].spi_select2:0 */
    P13_5_LIN0_LIN_TX8              = 22,       /* Digital Active - lin[0].lin_tx[8]:0 */
    P13_5_AUDIOSS1_RX_SCK           = 25,       /* Digital Active - audioss[1].rx_sck:0 */

    /* P13.6 */
    P13_6_GPIO                      =  0,       /* GPIO controls 'out' */
    P13_6_AMUXA                     =  4,       /* Analog mux bus A */
    P13_6_AMUXB                     =  5,       /* Analog mux bus B */
    P13_6_AMUXA_DSI                 =  6,       /* Analog mux bus A, DSI control */
    P13_6_AMUXB_DSI                 =  7,       /* Analog mux bus B, DSI control */
    P13_6_TCPWM1_LINE267            =  8,       /* Digital Active - tcpwm[1].line[267]:0 */
    P13_6_TCPWM1_LINE_COMPL46       =  9,       /* Digital Active - tcpwm[1].line_compl[46]:0 */
    P13_6_TCPWM1_TR_ONE_CNT_IN801   = 10,       /* Digital Active - tcpwm[1].tr_one_cnt_in[801]:0 */
    P13_6_TCPWM1_TR_ONE_CNT_IN139   = 11,       /* Digital Active - tcpwm[1].tr_one_cnt_in[139]:0 */
    P13_6_TCPWM1_LINE517            = 16,       /* Digital Active - tcpwm[1].line[517]:1 */
    P13_6_SCB3_SPI_SELECT3          = 21,       /* Digital Active - scb[3].spi_select3:0 */
    P13_6_LIN0_LIN_EN8              = 22,       /* Digital Active - lin[0].lin_en[8]:0 */
    P13_6_AUDIOSS1_RX_WS            = 25,       /* Digital Active - audioss[1].rx_ws:0 */
    P13_6_PERI_TR_IO_INPUT22        = 26,       /* Digital Active - peri.tr_io_input[22]:0 */

    /* P13.7 */
    P13_7_GPIO                      =  0,       /* GPIO controls 'out' */
    P13_7_AMUXA                     =  4,       /* Analog mux bus A */
    P13_7_AMUXB                     =  5,       /* Analog mux bus B */
    P13_7_AMUXA_DSI                 =  6,       /* Analog mux bus A, DSI control */
    P13_7_AMUXB_DSI                 =  7,       /* Analog mux bus B, DSI control */
    P13_7_TCPWM1_LINE47             =  8,       /* Digital Active - tcpwm[1].line[47]:0 */
    P13_7_TCPWM1_LINE_COMPL267      =  9,       /* Digital Active - tcpwm[1].line_compl[267]:0 */
    P13_7_TCPWM1_TR_ONE_CNT_IN141   = 10,       /* Digital Active - tcpwm[1].tr_one_cnt_in[141]:0 */
    P13_7_TCPWM1_TR_ONE_CNT_IN802   = 11,       /* Digital Active - tcpwm[1].tr_one_cnt_in[802]:0 */
    P13_7_TCPWM1_LINE_COMPL517      = 16,       /* Digital Active - tcpwm[1].line_compl[517]:1 */
    P13_7_AUDIOSS1_RX_SDI           = 25,       /* Digital Active - audioss[1].rx_sdi:0 */
    P13_7_PERI_TR_IO_INPUT23        = 26,       /* Digital Active - peri.tr_io_input[23]:0 */

    /* P14.0 */
    P14_0_GPIO                      =  0,       /* GPIO controls 'out' */
    P14_0_AMUXA                     =  4,       /* Analog mux bus A */
    P14_0_AMUXB                     =  5,       /* Analog mux bus B */
    P14_0_AMUXA_DSI                 =  6,       /* Analog mux bus A, DSI control */
    P14_0_AMUXB_DSI                 =  7,       /* Analog mux bus B, DSI control */
    P14_0_TCPWM1_LINE48             =  8,       /* Digital Active - tcpwm[1].line[48]:0 */
    P14_0_TCPWM1_LINE_COMPL47       =  9,       /* Digital Active - tcpwm[1].line_compl[47]:0 */
    P14_0_TCPWM1_TR_ONE_CNT_IN144   = 10,       /* Digital Active - tcpwm[1].tr_one_cnt_in[144]:0 */
    P14_0_TCPWM1_TR_ONE_CNT_IN142   = 11,       /* Digital Active - tcpwm[1].tr_one_cnt_in[142]:0 */
    P14_0_TCPWM1_LINE518            = 16,       /* Digital Active - tcpwm[1].line[518]:1 */
    P14_0_SCB2_SPI_MISO             = 17,       /* Digital Active - scb[2].spi_miso:0 */
    P14_0_SCB2_UART_RX              = 19,       /* Digital Active - scb[2].uart_rx:0 */
    P14_0_CANFD1_TTCAN_TX0          = 21,       /* Digital Active - canfd[1].ttcan_tx[0]:0 */
    P14_0_TCPWM0_LINE257            = 22,       /* Digital Active - tcpwm[0].line[257] */
    P14_0_AUDIOSS2_MCLK             = 25,       /* Digital Active - audioss[2].mclk:0 */

    /* P14.1 */
    P14_1_GPIO                      =  0,       /* GPIO controls 'out' */
    P14_1_AMUXA                     =  4,       /* Analog mux bus A */
    P14_1_AMUXB                     =  5,       /* Analog mux bus B */
    P14_1_AMUXA_DSI                 =  6,       /* Analog mux bus A, DSI control */
    P14_1_AMUXB_DSI                 =  7,       /* Analog mux bus B, DSI control */
    P14_1_TCPWM1_LINE49             =  8,       /* Digital Active - tcpwm[1].line[49]:0 */
    P14_1_TCPWM1_LINE_COMPL48       =  9,       /* Digital Active - tcpwm[1].line_compl[48]:0 */
    P14_1_TCPWM1_TR_ONE_CNT_IN147   = 10,       /* Digital Active - tcpwm[1].tr_one_cnt_in[147]:0 */
    P14_1_TCPWM1_TR_ONE_CNT_IN145   = 11,       /* Digital Active - tcpwm[1].tr_one_cnt_in[145]:0 */
    P14_1_TCPWM1_LINE_COMPL518      = 16,       /* Digital Active - tcpwm[1].line_compl[518]:1 */
    P14_1_SCB2_SPI_MOSI             = 17,       /* Digital Active - scb[2].spi_mosi:0 */
    P14_1_SCB2_I2C_SDA              = 18,       /* Digital Active - scb[2].i2c_sda:0 */
    P14_1_SCB2_UART_TX              = 19,       /* Digital Active - scb[2].uart_tx:0 */
    P14_1_CANFD1_TTCAN_RX0          = 21,       /* Digital Active - canfd[1].ttcan_rx[0]:0 */
    P14_1_TCPWM0_LINE_COMPL257      = 22,       /* Digital Active - tcpwm[0].line_compl[257] */
    P14_1_AUDIOSS2_TX_SCK           = 25,       /* Digital Active - audioss[2].tx_sck:0 */

    /* P14.2 */
    P14_2_GPIO                      =  0,       /* GPIO controls 'out' */
    P14_2_AMUXA                     =  4,       /* Analog mux bus A */
    P14_2_AMUXB                     =  5,       /* Analog mux bus B */
    P14_2_AMUXA_DSI                 =  6,       /* Analog mux bus A, DSI control */
    P14_2_AMUXB_DSI                 =  7,       /* Analog mux bus B, DSI control */
    P14_2_TCPWM1_LINE50             =  8,       /* Digital Active - tcpwm[1].line[50]:0 */
    P14_2_TCPWM1_LINE_COMPL49       =  9,       /* Digital Active - tcpwm[1].line_compl[49]:0 */
    P14_2_TCPWM1_TR_ONE_CNT_IN150   = 10,       /* Digital Active - tcpwm[1].tr_one_cnt_in[150]:0 */
    P14_2_TCPWM1_TR_ONE_CNT_IN148   = 11,       /* Digital Active - tcpwm[1].tr_one_cnt_in[148]:0 */
    P14_2_TCPWM1_LINE519            = 16,       /* Digital Active - tcpwm[1].line[519]:1 */
    P14_2_SCB2_SPI_CLK              = 17,       /* Digital Active - scb[2].spi_clk:0 */
    P14_2_SCB2_I2C_SCL              = 18,       /* Digital Active - scb[2].i2c_scl:0 */
    P14_2_SCB2_UART_RTS             = 19,       /* Digital Active - scb[2].uart_rts:0 */
    P14_2_LIN0_LIN_RX6              = 20,       /* Digital Active - lin[0].lin_rx[6]:1 */
    P14_2_TCPWM0_TR_ONE_CNT_IN771   = 22,       /* Digital Active - tcpwm[0].tr_one_cnt_in[771] */

    /* P14.3 */
    P14_3_GPIO                      =  0,       /* GPIO controls 'out' */
    P14_3_AMUXA                     =  4,       /* Analog mux bus A */
    P14_3_AMUXB                     =  5,       /* Analog mux bus B */
    P14_3_AMUXA_DSI                 =  6,       /* Analog mux bus A, DSI control */
    P14_3_AMUXB_DSI                 =  7,       /* Analog mux bus B, DSI control */
    P14_3_TCPWM1_LINE51             =  8,       /* Digital Active - tcpwm[1].line[51]:0 */
    P14_3_TCPWM1_LINE_COMPL50       =  9,       /* Digital Active - tcpwm[1].line_compl[50]:0 */
    P14_3_TCPWM1_TR_ONE_CNT_IN153   = 10,       /* Digital Active - tcpwm[1].tr_one_cnt_in[153]:0 */
    P14_3_TCPWM1_TR_ONE_CNT_IN151   = 11,       /* Digital Active - tcpwm[1].tr_one_cnt_in[151]:0 */
    P14_3_TCPWM1_LINE_COMPL519      = 16,       /* Digital Active - tcpwm[1].line_compl[519]:1 */
    P14_3_SCB2_SPI_SELECT0          = 17,       /* Digital Active - scb[2].spi_select0:0 */
    P14_3_SCB2_UART_CTS             = 19,       /* Digital Active - scb[2].uart_cts:0 */
    P14_3_LIN0_LIN_TX6              = 20,       /* Digital Active - lin[0].lin_tx[6]:1 */
    P14_3_TCPWM0_TR_ONE_CNT_IN772   = 22,       /* Digital Active - tcpwm[0].tr_one_cnt_in[772] */

    /* P14.4 */
    P14_4_GPIO                      =  0,       /* GPIO controls 'out' */
    P14_4_AMUXA                     =  4,       /* Analog mux bus A */
    P14_4_AMUXB                     =  5,       /* Analog mux bus B */
    P14_4_AMUXA_DSI                 =  6,       /* Analog mux bus A, DSI control */
    P14_4_AMUXB_DSI                 =  7,       /* Analog mux bus B, DSI control */
    P14_4_TCPWM1_LINE52             =  8,       /* Digital Active - tcpwm[1].line[52]:0 */
    P14_4_TCPWM1_LINE_COMPL51       =  9,       /* Digital Active - tcpwm[1].line_compl[51]:0 */
    P14_4_TCPWM1_TR_ONE_CNT_IN156   = 10,       /* Digital Active - tcpwm[1].tr_one_cnt_in[156]:0 */
    P14_4_TCPWM1_TR_ONE_CNT_IN154   = 11,       /* Digital Active - tcpwm[1].tr_one_cnt_in[154]:0 */
    P14_4_TCPWM1_TR_ONE_CNT_IN1548  = 16,       /* Digital Active - tcpwm[1].tr_one_cnt_in[1548]:1 */
    P14_4_SCB2_SPI_SELECT1          = 17,       /* Digital Active - scb[2].spi_select1:0 */
    P14_4_LIN0_LIN_EN6              = 20,       /* Digital Active - lin[0].lin_en[6]:1 */
    P14_4_AUDIOSS2_TX_WS            = 25,       /* Digital Active - audioss[2].tx_ws:0 */

    /* P14.5 */
    P14_5_GPIO                      =  0,       /* GPIO controls 'out' */
    P14_5_AMUXA                     =  4,       /* Analog mux bus A */
    P14_5_AMUXB                     =  5,       /* Analog mux bus B */
    P14_5_AMUXA_DSI                 =  6,       /* Analog mux bus A, DSI control */
    P14_5_AMUXB_DSI                 =  7,       /* Analog mux bus B, DSI control */
    P14_5_TCPWM1_LINE53             =  8,       /* Digital Active - tcpwm[1].line[53]:0 */
    P14_5_TCPWM1_LINE_COMPL52       =  9,       /* Digital Active - tcpwm[1].line_compl[52]:0 */
    P14_5_TCPWM1_TR_ONE_CNT_IN159   = 10,       /* Digital Active - tcpwm[1].tr_one_cnt_in[159]:0 */
    P14_5_TCPWM1_TR_ONE_CNT_IN157   = 11,       /* Digital Active - tcpwm[1].tr_one_cnt_in[157]:0 */
    P14_5_TCPWM1_TR_ONE_CNT_IN1549  = 16,       /* Digital Active - tcpwm[1].tr_one_cnt_in[1549]:1 */
    P14_5_SCB2_SPI_SELECT2          = 17,       /* Digital Active - scb[2].spi_select2:0 */
    P14_5_LIN0_LIN_RX14             = 18,       /* Digital Active - lin[0].lin_rx[14]:0 */
    P14_5_AUDIOSS2_TX_SDO           = 25,       /* Digital Active - audioss[2].tx_sdo:0 */

    /* P14.6 */
    P14_6_GPIO                      =  0,       /* GPIO controls 'out' */
    P14_6_AMUXA                     =  4,       /* Analog mux bus A */
    P14_6_AMUXB                     =  5,       /* Analog mux bus B */
    P14_6_AMUXA_DSI                 =  6,       /* Analog mux bus A, DSI control */
    P14_6_AMUXB_DSI                 =  7,       /* Analog mux bus B, DSI control */
    P14_6_TCPWM1_LINE54             =  8,       /* Digital Active - tcpwm[1].line[54]:0 */
    P14_6_TCPWM1_LINE_COMPL53       =  9,       /* Digital Active - tcpwm[1].line_compl[53]:0 */
    P14_6_TCPWM1_TR_ONE_CNT_IN162   = 10,       /* Digital Active - tcpwm[1].tr_one_cnt_in[162]:0 */
    P14_6_TCPWM1_TR_ONE_CNT_IN160   = 11,       /* Digital Active - tcpwm[1].tr_one_cnt_in[160]:0 */
    P14_6_TCPWM1_TR_ONE_CNT_IN1551  = 16,       /* Digital Active - tcpwm[1].tr_one_cnt_in[1551]:1 */
    P14_6_LIN0_LIN_TX14             = 18,       /* Digital Active - lin[0].lin_tx[14]:0 */
    P14_6_PERI_TR_IO_INPUT24        = 26,       /* Digital Active - peri.tr_io_input[24]:0 */

    /* P14.7 */
    P14_7_GPIO                      =  0,       /* GPIO controls 'out' */
    P14_7_AMUXA                     =  4,       /* Analog mux bus A */
    P14_7_AMUXB                     =  5,       /* Analog mux bus B */
    P14_7_AMUXA_DSI                 =  6,       /* Analog mux bus A, DSI control */
    P14_7_AMUXB_DSI                 =  7,       /* Analog mux bus B, DSI control */
    P14_7_TCPWM1_LINE55             =  8,       /* Digital Active - tcpwm[1].line[55]:0 */
    P14_7_TCPWM1_LINE_COMPL54       =  9,       /* Digital Active - tcpwm[1].line_compl[54]:0 */
    P14_7_TCPWM1_TR_ONE_CNT_IN165   = 10,       /* Digital Active - tcpwm[1].tr_one_cnt_in[165]:0 */
    P14_7_TCPWM1_TR_ONE_CNT_IN163   = 11,       /* Digital Active - tcpwm[1].tr_one_cnt_in[163]:0 */
    P14_7_TCPWM1_TR_ONE_CNT_IN1552  = 16,       /* Digital Active - tcpwm[1].tr_one_cnt_in[1552]:1 */
    P14_7_LIN0_LIN_EN14             = 18,       /* Digital Active - lin[0].lin_en[14]:0 */
    P14_7_PERI_TR_IO_INPUT25        = 26,       /* Digital Active - peri.tr_io_input[25]:0 */

    /* P15.0 */
    P15_0_GPIO                      =  0,       /* GPIO controls 'out' */
    P15_0_AMUXA                     =  4,       /* Analog mux bus A */
    P15_0_AMUXB                     =  5,       /* Analog mux bus B */
    P15_0_AMUXA_DSI                 =  6,       /* Analog mux bus A, DSI control */
    P15_0_AMUXB_DSI                 =  7,       /* Analog mux bus B, DSI control */
    P15_0_TCPWM1_LINE56             =  8,       /* Digital Active - tcpwm[1].line[56]:0 */
    P15_0_TCPWM1_LINE_COMPL55       =  9,       /* Digital Active - tcpwm[1].line_compl[55]:0 */
    P15_0_TCPWM1_TR_ONE_CNT_IN168   = 10,       /* Digital Active - tcpwm[1].tr_one_cnt_in[168]:0 */
    P15_0_TCPWM1_TR_ONE_CNT_IN166   = 11,       /* Digital Active - tcpwm[1].tr_one_cnt_in[166]:0 */
    P15_0_TCPWM1_TR_ONE_CNT_IN1554  = 16,       /* Digital Active - tcpwm[1].tr_one_cnt_in[1554]:1 */
    P15_0_SCB9_UART_RX              = 17,       /* Digital Active - scb[9].uart_rx:0 */
    P15_0_SCB9_SPI_MISO             = 19,       /* Digital Active - scb[9].spi_miso:0 */
    P15_0_CANFD1_TTCAN_TX3          = 21,       /* Digital Active - canfd[1].ttcan_tx[3]:1 */
    P15_0_AUDIOSS2_CLK_I2S_IF       = 25,       /* Digital Active - audioss[2].clk_i2s_if:0 */

    /* P15.1 */
    P15_1_GPIO                      =  0,       /* GPIO controls 'out' */
    P15_1_AMUXA                     =  4,       /* Analog mux bus A */
    P15_1_AMUXB                     =  5,       /* Analog mux bus B */
    P15_1_AMUXA_DSI                 =  6,       /* Analog mux bus A, DSI control */
    P15_1_AMUXB_DSI                 =  7,       /* Analog mux bus B, DSI control */
    P15_1_TCPWM1_LINE57             =  8,       /* Digital Active - tcpwm[1].line[57]:0 */
    P15_1_TCPWM1_LINE_COMPL56       =  9,       /* Digital Active - tcpwm[1].line_compl[56]:0 */
    P15_1_TCPWM1_TR_ONE_CNT_IN171   = 10,       /* Digital Active - tcpwm[1].tr_one_cnt_in[171]:0 */
    P15_1_TCPWM1_TR_ONE_CNT_IN169   = 11,       /* Digital Active - tcpwm[1].tr_one_cnt_in[169]:0 */
    P15_1_TCPWM1_TR_ONE_CNT_IN1555  = 16,       /* Digital Active - tcpwm[1].tr_one_cnt_in[1555]:1 */
    P15_1_SCB9_UART_TX              = 17,       /* Digital Active - scb[9].uart_tx:0 */
    P15_1_SCB9_I2C_SDA              = 18,       /* Digital Active - scb[9].i2c_sda:0 */
    P15_1_SCB9_SPI_MOSI             = 19,       /* Digital Active - scb[9].spi_mosi:0 */
    P15_1_CANFD1_TTCAN_RX3          = 21,       /* Digital Active - canfd[1].ttcan_rx[3]:1 */
    P15_1_AUDIOSS2_RX_SCK           = 25,       /* Digital Active - audioss[2].rx_sck:0 */

    /* P15.2 */
    P15_2_GPIO                      =  0,       /* GPIO controls 'out' */
    P15_2_AMUXA                     =  4,       /* Analog mux bus A */
    P15_2_AMUXB                     =  5,       /* Analog mux bus B */
    P15_2_AMUXA_DSI                 =  6,       /* Analog mux bus A, DSI control */
    P15_2_AMUXB_DSI                 =  7,       /* Analog mux bus B, DSI control */
    P15_2_TCPWM1_LINE58             =  8,       /* Digital Active - tcpwm[1].line[58]:0 */
    P15_2_TCPWM1_LINE_COMPL57       =  9,       /* Digital Active - tcpwm[1].line_compl[57]:0 */
    P15_2_TCPWM1_TR_ONE_CNT_IN174   = 10,       /* Digital Active - tcpwm[1].tr_one_cnt_in[174]:0 */
    P15_2_TCPWM1_TR_ONE_CNT_IN172   = 11,       /* Digital Active - tcpwm[1].tr_one_cnt_in[172]:0 */
    P15_2_TCPWM1_TR_ONE_CNT_IN1557  = 16,       /* Digital Active - tcpwm[1].tr_one_cnt_in[1557]:1 */
    P15_2_SCB9_UART_RTS             = 17,       /* Digital Active - scb[9].uart_rts:0 */
    P15_2_SCB9_I2C_SCL              = 18,       /* Digital Active - scb[9].i2c_scl:0 */
    P15_2_SCB9_SPI_CLK              = 19,       /* Digital Active - scb[9].spi_clk:0 */
    P15_2_AUDIOSS2_RX_WS            = 25,       /* Digital Active - audioss[2].rx_ws:0 */

    /* P15.3 */
    P15_3_GPIO                      =  0,       /* GPIO controls 'out' */
    P15_3_AMUXA                     =  4,       /* Analog mux bus A */
    P15_3_AMUXB                     =  5,       /* Analog mux bus B */
    P15_3_AMUXA_DSI                 =  6,       /* Analog mux bus A, DSI control */
    P15_3_AMUXB_DSI                 =  7,       /* Analog mux bus B, DSI control */
    P15_3_TCPWM1_LINE59             =  8,       /* Digital Active - tcpwm[1].line[59]:0 */
    P15_3_TCPWM1_LINE_COMPL58       =  9,       /* Digital Active - tcpwm[1].line_compl[58]:0 */
    P15_3_TCPWM1_TR_ONE_CNT_IN177   = 10,       /* Digital Active - tcpwm[1].tr_one_cnt_in[177]:0 */
    P15_3_TCPWM1_TR_ONE_CNT_IN175   = 11,       /* Digital Active - tcpwm[1].tr_one_cnt_in[175]:0 */
    P15_3_TCPWM1_TR_ONE_CNT_IN1558  = 16,       /* Digital Active - tcpwm[1].tr_one_cnt_in[1558]:1 */
    P15_3_SCB9_UART_CTS             = 17,       /* Digital Active - scb[9].uart_cts:0 */
    P15_3_SCB9_SPI_SELECT0          = 19,       /* Digital Active - scb[9].spi_select0:0 */
    P15_3_AUDIOSS2_RX_SDI           = 25,       /* Digital Active - audioss[2].rx_sdi:0 */

    /* P16.3 */
    P16_3_GPIO                      =  0,       /* GPIO controls 'out' */
    P16_3_AMUXA                     =  4,       /* Analog mux bus A */
    P16_3_AMUXB                     =  5,       /* Analog mux bus B */
    P16_3_AMUXA_DSI                 =  6,       /* Analog mux bus A, DSI control */
    P16_3_AMUXB_DSI                 =  7,       /* Analog mux bus B, DSI control */
    P16_3_TCPWM1_LINE62             =  8,       /* Digital Active - tcpwm[1].line[62]:1 */
    P16_3_TCPWM1_LINE_COMPL62       =  9,       /* Digital Active - tcpwm[1].line_compl[62]:0 */
    P16_3_TCPWM1_TR_ONE_CNT_IN186   = 10,       /* Digital Active - tcpwm[1].tr_one_cnt_in[186]:1 */
    P16_3_TCPWM1_TR_ONE_CNT_IN187   = 11,       /* Digital Active - tcpwm[1].tr_one_cnt_in[187]:0 */
    P16_3_TCPWM1_LINE_COMPL513      = 16,       /* Digital Active - tcpwm[1].line_compl[513]:1 */

    /* P17.0 */
    P17_0_GPIO                      =  0,       /* GPIO controls 'out' */
    P17_0_AMUXA                     =  4,       /* Analog mux bus A */
    P17_0_AMUXB                     =  5,       /* Analog mux bus B */
    P17_0_AMUXA_DSI                 =  6,       /* Analog mux bus A, DSI control */
    P17_0_AMUXB_DSI                 =  7,       /* Analog mux bus B, DSI control */
    P17_0_TCPWM1_LINE61             =  8,       /* Digital Active - tcpwm[1].line[61]:1 */
    P17_0_TCPWM1_LINE_COMPL62       =  9,       /* Digital Active - tcpwm[1].line_compl[62]:1 */
    P17_0_TCPWM1_TR_ONE_CNT_IN183   = 10,       /* Digital Active - tcpwm[1].tr_one_cnt_in[183]:1 */
    P17_0_TCPWM1_TR_ONE_CNT_IN187   = 11,       /* Digital Active - tcpwm[1].tr_one_cnt_in[187]:1 */
    P17_0_LIN0_LIN_RX11             = 20,       /* Digital Active - lin[0].lin_rx[11]:2 */
    P17_0_CANFD1_TTCAN_TX1          = 21,       /* Digital Active - canfd[1].ttcan_tx[1]:0 */

    /* P17.1 */
    P17_1_GPIO                      =  0,       /* GPIO controls 'out' */
    P17_1_AMUXA                     =  4,       /* Analog mux bus A */
    P17_1_AMUXB                     =  5,       /* Analog mux bus B */
    P17_1_AMUXA_DSI                 =  6,       /* Analog mux bus A, DSI control */
    P17_1_AMUXB_DSI                 =  7,       /* Analog mux bus B, DSI control */
    P17_1_TCPWM1_LINE60             =  8,       /* Digital Active - tcpwm[1].line[60]:1 */
    P17_1_TCPWM1_LINE_COMPL61       =  9,       /* Digital Active - tcpwm[1].line_compl[61]:1 */
    P17_1_TCPWM1_TR_ONE_CNT_IN180   = 10,       /* Digital Active - tcpwm[1].tr_one_cnt_in[180]:1 */
    P17_1_TCPWM1_TR_ONE_CNT_IN184   = 11,       /* Digital Active - tcpwm[1].tr_one_cnt_in[184]:1 */
    P17_1_SCB3_UART_RX              = 17,       /* Digital Active - scb[3].uart_rx:1 */
    P17_1_LIN0_LIN_TX11             = 20,       /* Digital Active - lin[0].lin_tx[11]:2 */
    P17_1_CANFD1_TTCAN_RX1          = 21,       /* Digital Active - canfd[1].ttcan_rx[1]:0 */

    /* P17.2 */
    P17_2_GPIO                      =  0,       /* GPIO controls 'out' */
    P17_2_AMUXA                     =  4,       /* Analog mux bus A */
    P17_2_AMUXB                     =  5,       /* Analog mux bus B */
    P17_2_AMUXA_DSI                 =  6,       /* Analog mux bus A, DSI control */
    P17_2_AMUXB_DSI                 =  7,       /* Analog mux bus B, DSI control */
    P17_2_TCPWM1_LINE59             =  8,       /* Digital Active - tcpwm[1].line[59]:1 */
    P17_2_TCPWM1_LINE_COMPL60       =  9,       /* Digital Active - tcpwm[1].line_compl[60]:1 */
    P17_2_TCPWM1_TR_ONE_CNT_IN177   = 10,       /* Digital Active - tcpwm[1].tr_one_cnt_in[177]:1 */
    P17_2_TCPWM1_TR_ONE_CNT_IN181   = 11,       /* Digital Active - tcpwm[1].tr_one_cnt_in[181]:1 */
    P17_2_SCB3_UART_TX              = 17,       /* Digital Active - scb[3].uart_tx:1 */
    P17_2_SCB3_I2C_SDA              = 18,       /* Digital Active - scb[3].i2c_sda:1 */
    P17_2_LIN0_LIN_EN11             = 20,       /* Digital Active - lin[0].lin_en[11]:2 */

    /* P17.3 */
    P17_3_GPIO                      =  0,       /* GPIO controls 'out' */
    P17_3_AMUXA                     =  4,       /* Analog mux bus A */
    P17_3_AMUXB                     =  5,       /* Analog mux bus B */
    P17_3_AMUXA_DSI                 =  6,       /* Analog mux bus A, DSI control */
    P17_3_AMUXB_DSI                 =  7,       /* Analog mux bus B, DSI control */
    P17_3_TCPWM1_LINE58             =  8,       /* Digital Active - tcpwm[1].line[58]:1 */
    P17_3_TCPWM1_LINE_COMPL59       =  9,       /* Digital Active - tcpwm[1].line_compl[59]:1 */
    P17_3_TCPWM1_TR_ONE_CNT_IN174   = 10,       /* Digital Active - tcpwm[1].tr_one_cnt_in[174]:1 */
    P17_3_TCPWM1_TR_ONE_CNT_IN178   = 11,       /* Digital Active - tcpwm[1].tr_one_cnt_in[178]:1 */
    P17_3_TCPWM1_LINE515            = 16,       /* Digital Active - tcpwm[1].line[515]:1 */
    P17_3_SCB3_UART_RTS             = 17,       /* Digital Active - scb[3].uart_rts:1 */
    P17_3_SCB3_I2C_SCL              = 18,       /* Digital Active - scb[3].i2c_scl:1 */
    P17_3_SCB3_SPI_CLK              = 21,       /* Digital Active - scb[3].spi_clk:1 */
    P17_3_PERI_TR_IO_INPUT26        = 26,       /* Digital Active - peri.tr_io_input[26]:0 */

    /* P17.4 */
    P17_4_GPIO                      =  0,       /* GPIO controls 'out' */
    P17_4_AMUXA                     =  4,       /* Analog mux bus A */
    P17_4_AMUXB                     =  5,       /* Analog mux bus B */
    P17_4_AMUXA_DSI                 =  6,       /* Analog mux bus A, DSI control */
    P17_4_AMUXB_DSI                 =  7,       /* Analog mux bus B, DSI control */
    P17_4_TCPWM1_LINE57             =  8,       /* Digital Active - tcpwm[1].line[57]:1 */
    P17_4_TCPWM1_LINE_COMPL58       =  9,       /* Digital Active - tcpwm[1].line_compl[58]:1 */
    P17_4_TCPWM1_TR_ONE_CNT_IN171   = 10,       /* Digital Active - tcpwm[1].tr_one_cnt_in[171]:1 */
    P17_4_TCPWM1_TR_ONE_CNT_IN175   = 11,       /* Digital Active - tcpwm[1].tr_one_cnt_in[175]:1 */
    P17_4_TCPWM1_LINE_COMPL515      = 16,       /* Digital Active - tcpwm[1].line_compl[515]:1 */
    P17_4_SCB3_UART_CTS             = 17,       /* Digital Active - scb[3].uart_cts:1 */
    P17_4_SCB3_SPI_SELECT0          = 21,       /* Digital Active - scb[3].spi_select0:1 */
    P17_4_PERI_TR_IO_INPUT27        = 26,       /* Digital Active - peri.tr_io_input[27]:0 */

    /* P17.5 */
    P17_5_GPIO                      =  0,       /* GPIO controls 'out' */
    P17_5_AMUXA                     =  4,       /* Analog mux bus A */
    P17_5_AMUXB                     =  5,       /* Analog mux bus B */
    P17_5_AMUXA_DSI                 =  6,       /* Analog mux bus A, DSI control */
    P17_5_AMUXB_DSI                 =  7,       /* Analog mux bus B, DSI control */
    P17_5_TCPWM1_LINE56             =  8,       /* Digital Active - tcpwm[1].line[56]:1 */
    P17_5_TCPWM1_LINE_COMPL57       =  9,       /* Digital Active - tcpwm[1].line_compl[57]:1 */
    P17_5_TCPWM1_TR_ONE_CNT_IN168   = 10,       /* Digital Active - tcpwm[1].tr_one_cnt_in[168]:1 */
    P17_5_TCPWM1_TR_ONE_CNT_IN172   = 11,       /* Digital Active - tcpwm[1].tr_one_cnt_in[172]:1 */
    P17_5_TCPWM1_LINE514            = 16,       /* Digital Active - tcpwm[1].line[514]:1 */
    P17_5_LIN0_LIN_RX15             = 18,       /* Digital Active - lin[0].lin_rx[15]:0 */
    P17_5_SCB3_SPI_SELECT1          = 21,       /* Digital Active - scb[3].spi_select1:1 */

    /* P17.6 */
    P17_6_GPIO                      =  0,       /* GPIO controls 'out' */
    P17_6_AMUXA                     =  4,       /* Analog mux bus A */
    P17_6_AMUXB                     =  5,       /* Analog mux bus B */
    P17_6_AMUXA_DSI                 =  6,       /* Analog mux bus A, DSI control */
    P17_6_AMUXB_DSI                 =  7,       /* Analog mux bus B, DSI control */
    P17_6_TCPWM1_LINE260            =  8,       /* Digital Active - tcpwm[1].line[260]:1 */
    P17_6_TCPWM1_LINE_COMPL56       =  9,       /* Digital Active - tcpwm[1].line_compl[56]:1 */
    P17_6_TCPWM1_TR_ONE_CNT_IN780   = 10,       /* Digital Active - tcpwm[1].tr_one_cnt_in[780]:1 */
    P17_6_TCPWM1_TR_ONE_CNT_IN169   = 11,       /* Digital Active - tcpwm[1].tr_one_cnt_in[169]:1 */
    P17_6_TCPWM1_LINE_COMPL514      = 16,       /* Digital Active - tcpwm[1].line_compl[514]:1 */
    P17_6_LIN0_LIN_TX15             = 18,       /* Digital Active - lin[0].lin_tx[15]:0 */
    P17_6_SCB3_SPI_SELECT2          = 21,       /* Digital Active - scb[3].spi_select2:1 */

    /* P17.7 */
    P17_7_GPIO                      =  0,       /* GPIO controls 'out' */
    P17_7_AMUXA                     =  4,       /* Analog mux bus A */
    P17_7_AMUXB                     =  5,       /* Analog mux bus B */
    P17_7_AMUXA_DSI                 =  6,       /* Analog mux bus A, DSI control */
    P17_7_AMUXB_DSI                 =  7,       /* Analog mux bus B, DSI control */
    P17_7_TCPWM1_LINE261            =  8,       /* Digital Active - tcpwm[1].line[261]:1 */
    P17_7_TCPWM1_LINE_COMPL260      =  9,       /* Digital Active - tcpwm[1].line_compl[260]:1 */
    P17_7_TCPWM1_TR_ONE_CNT_IN783   = 10,       /* Digital Active - tcpwm[1].tr_one_cnt_in[783]:1 */
    P17_7_TCPWM1_TR_ONE_CNT_IN781   = 11,       /* Digital Active - tcpwm[1].tr_one_cnt_in[781]:1 */
    P17_7_LIN0_LIN_EN15             = 18,       /* Digital Active - lin[0].lin_en[15]:0 */
    P17_7_LIN0_LIN_RX12             = 21,       /* Digital Active - lin[0].lin_rx[12]:1 */

    /* P18.0 */
    P18_0_GPIO                      =  0,       /* GPIO controls 'out' */
    P18_0_AMUXA                     =  4,       /* Analog mux bus A */
    P18_0_AMUXB                     =  5,       /* Analog mux bus B */
    P18_0_AMUXA_DSI                 =  6,       /* Analog mux bus A, DSI control */
    P18_0_AMUXB_DSI                 =  7,       /* Analog mux bus B, DSI control */
    P18_0_TCPWM1_LINE262            =  8,       /* Digital Active - tcpwm[1].line[262]:1 */
    P18_0_TCPWM1_LINE_COMPL261      =  9,       /* Digital Active - tcpwm[1].line_compl[261]:1 */
    P18_0_TCPWM1_TR_ONE_CNT_IN786   = 10,       /* Digital Active - tcpwm[1].tr_one_cnt_in[786]:1 */
    P18_0_TCPWM1_TR_ONE_CNT_IN784   = 11,       /* Digital Active - tcpwm[1].tr_one_cnt_in[784]:1 */
    P18_0_TCPWM1_LINE512            = 16,       /* Digital Active - tcpwm[1].line[512]:0 */
    P18_0_SCB1_UART_RX              = 17,       /* Digital Active - scb[1].uart_rx:0 */
    P18_0_SCB1_SPI_MISO             = 19,       /* Digital Active - scb[1].spi_miso:0 */
    P18_0_LIN0_LIN_TX12             = 21,       /* Digital Active - lin[0].lin_tx[12]:1 */
    P18_0_ETH0_REF_CLK              = 24,       /* Digital Active - eth[0].ref_clk:0 */
    P18_0_CPUSS_FAULT_OUT0          = 27,       /* Digital Active - cpuss.fault_out[0]:0 */

    /* P18.1 */
    P18_1_GPIO                      =  0,       /* GPIO controls 'out' */
    P18_1_AMUXA                     =  4,       /* Analog mux bus A */
    P18_1_AMUXB                     =  5,       /* Analog mux bus B */
    P18_1_AMUXA_DSI                 =  6,       /* Analog mux bus A, DSI control */
    P18_1_AMUXB_DSI                 =  7,       /* Analog mux bus B, DSI control */
    P18_1_TCPWM1_LINE263            =  8,       /* Digital Active - tcpwm[1].line[263]:1 */
    P18_1_TCPWM1_LINE_COMPL262      =  9,       /* Digital Active - tcpwm[1].line_compl[262]:1 */
    P18_1_TCPWM1_TR_ONE_CNT_IN789   = 10,       /* Digital Active - tcpwm[1].tr_one_cnt_in[789]:1 */
    P18_1_TCPWM1_TR_ONE_CNT_IN787   = 11,       /* Digital Active - tcpwm[1].tr_one_cnt_in[787]:1 */
    P18_1_TCPWM1_LINE_COMPL512      = 16,       /* Digital Active - tcpwm[1].line_compl[512]:0 */
    P18_1_SCB1_UART_TX              = 17,       /* Digital Active - scb[1].uart_tx:0 */
    P18_1_SCB1_I2C_SDA              = 18,       /* Digital Active - scb[1].i2c_sda:0 */
    P18_1_SCB1_SPI_MOSI             = 19,       /* Digital Active - scb[1].spi_mosi:0 */
    P18_1_SCB3_SPI_MISO             = 21,       /* Digital Active - scb[3].spi_miso:1 */
    P18_1_ETH0_TX_CTL               = 24,       /* Digital Active - eth[0].tx_ctl:0 */
    P18_1_CPUSS_FAULT_OUT1          = 27,       /* Digital Active - cpuss.fault_out[1]:0 */

    /* P18.2 */
    P18_2_GPIO                      =  0,       /* GPIO controls 'out' */
    P18_2_AMUXA                     =  4,       /* Analog mux bus A */
    P18_2_AMUXB                     =  5,       /* Analog mux bus B */
    P18_2_AMUXA_DSI                 =  6,       /* Analog mux bus A, DSI control */
    P18_2_AMUXB_DSI                 =  7,       /* Analog mux bus B, DSI control */
    P18_2_TCPWM1_LINE55             =  8,       /* Digital Active - tcpwm[1].line[55]:1 */
    P18_2_TCPWM1_LINE_COMPL263      =  9,       /* Digital Active - tcpwm[1].line_compl[263]:1 */
    P18_2_TCPWM1_TR_ONE_CNT_IN165   = 10,       /* Digital Active - tcpwm[1].tr_one_cnt_in[165]:1 */
    P18_2_TCPWM1_TR_ONE_CNT_IN790   = 11,       /* Digital Active - tcpwm[1].tr_one_cnt_in[790]:1 */
    P18_2_TCPWM1_LINE513            = 16,       /* Digital Active - tcpwm[1].line[513]:0 */
    P18_2_SCB1_UART_RTS             = 17,       /* Digital Active - scb[1].uart_rts:0 */
    P18_2_SCB1_I2C_SCL              = 18,       /* Digital Active - scb[1].i2c_scl:0 */
    P18_2_SCB1_SPI_CLK              = 19,       /* Digital Active - scb[1].spi_clk:0 */
    P18_2_SCB3_SPI_MOSI             = 21,       /* Digital Active - scb[3].spi_mosi:1 */
    P18_2_ETH0_TX_ER                = 24,       /* Digital Active - eth[0].tx_er:0 */

    /* P18.3 */
    P18_3_GPIO                      =  0,       /* GPIO controls 'out' */
    P18_3_AMUXA                     =  4,       /* Analog mux bus A */
    P18_3_AMUXB                     =  5,       /* Analog mux bus B */
    P18_3_AMUXA_DSI                 =  6,       /* Analog mux bus A, DSI control */
    P18_3_AMUXB_DSI                 =  7,       /* Analog mux bus B, DSI control */
    P18_3_TCPWM1_LINE54             =  8,       /* Digital Active - tcpwm[1].line[54]:1 */
    P18_3_TCPWM1_LINE_COMPL55       =  9,       /* Digital Active - tcpwm[1].line_compl[55]:1 */
    P18_3_TCPWM1_TR_ONE_CNT_IN162   = 10,       /* Digital Active - tcpwm[1].tr_one_cnt_in[162]:1 */
    P18_3_TCPWM1_TR_ONE_CNT_IN166   = 11,       /* Digital Active - tcpwm[1].tr_one_cnt_in[166]:1 */
    P18_3_TCPWM1_LINE_COMPL513      = 16,       /* Digital Active - tcpwm[1].line_compl[513]:0 */
    P18_3_SCB1_UART_CTS             = 17,       /* Digital Active - scb[1].uart_cts:0 */
    P18_3_SCB1_SPI_SELECT0          = 19,       /* Digital Active - scb[1].spi_select0:0 */
    P18_3_SCB3_SPI_CLK              = 21,       /* Digital Active - scb[3].spi_clk:2 */
    P18_3_ETH0_TX_CLK               = 24,       /* Digital Active - eth[0].tx_clk:0 */
    P18_3_CPUSS_TRACE_CLOCK         = 27,       /* Digital Active - cpuss.trace_clock:0 */

    /* P18.4 */
    P18_4_GPIO                      =  0,       /* GPIO controls 'out' */
    P18_4_AMUXA                     =  4,       /* Analog mux bus A */
    P18_4_AMUXB                     =  5,       /* Analog mux bus B */
    P18_4_AMUXA_DSI                 =  6,       /* Analog mux bus A, DSI control */
    P18_4_AMUXB_DSI                 =  7,       /* Analog mux bus B, DSI control */
    P18_4_TCPWM1_LINE53             =  8,       /* Digital Active - tcpwm[1].line[53]:1 */
    P18_4_TCPWM1_LINE_COMPL54       =  9,       /* Digital Active - tcpwm[1].line_compl[54]:1 */
    P18_4_TCPWM1_TR_ONE_CNT_IN159   = 10,       /* Digital Active - tcpwm[1].tr_one_cnt_in[159]:1 */
    P18_4_TCPWM1_TR_ONE_CNT_IN163   = 11,       /* Digital Active - tcpwm[1].tr_one_cnt_in[163]:1 */
    P18_4_TCPWM1_LINE514            = 16,       /* Digital Active - tcpwm[1].line[514]:0 */
    P18_4_SCB1_SPI_SELECT1          = 19,       /* Digital Active - scb[1].spi_select1:0 */
    P18_4_SCB3_SPI_SELECT0          = 21,       /* Digital Active - scb[3].spi_select0:2 */
    P18_4_TCPWM0_LINE258            = 22,       /* Digital Active - tcpwm[0].line[258] */
    P18_4_ETH0_TXD0                 = 24,       /* Digital Active - eth[0].txd[0]:0 */
    P18_4_CPUSS_TRACE_DATA0         = 27,       /* Digital Active - cpuss.trace_data[0]:0 */

    /* P18.5 */
    P18_5_GPIO                      =  0,       /* GPIO controls 'out' */
    P18_5_AMUXA                     =  4,       /* Analog mux bus A */
    P18_5_AMUXB                     =  5,       /* Analog mux bus B */
    P18_5_AMUXA_DSI                 =  6,       /* Analog mux bus A, DSI control */
    P18_5_AMUXB_DSI                 =  7,       /* Analog mux bus B, DSI control */
    P18_5_TCPWM1_LINE52             =  8,       /* Digital Active - tcpwm[1].line[52]:1 */
    P18_5_TCPWM1_LINE_COMPL53       =  9,       /* Digital Active - tcpwm[1].line_compl[53]:1 */
    P18_5_TCPWM1_TR_ONE_CNT_IN156   = 10,       /* Digital Active - tcpwm[1].tr_one_cnt_in[156]:1 */
    P18_5_TCPWM1_TR_ONE_CNT_IN160   = 11,       /* Digital Active - tcpwm[1].tr_one_cnt_in[160]:1 */
    P18_5_TCPWM1_LINE_COMPL514      = 16,       /* Digital Active - tcpwm[1].line_compl[514]:0 */
    P18_5_SCB1_SPI_SELECT2          = 19,       /* Digital Active - scb[1].spi_select2:0 */
    P18_5_TCPWM0_LINE_COMPL258      = 22,       /* Digital Active - tcpwm[0].line_compl[258] */
    P18_5_ETH0_TXD1                 = 24,       /* Digital Active - eth[0].txd[1]:0 */
    P18_5_CPUSS_TRACE_DATA1         = 27,       /* Digital Active - cpuss.trace_data[1]:0 */

    /* P18.6 */
    P18_6_GPIO                      =  0,       /* GPIO controls 'out' */
    P18_6_AMUXA                     =  4,       /* Analog mux bus A */
    P18_6_AMUXB                     =  5,       /* Analog mux bus B */
    P18_6_AMUXA_DSI                 =  6,       /* Analog mux bus A, DSI control */
    P18_6_AMUXB_DSI                 =  7,       /* Analog mux bus B, DSI control */
    P18_6_TCPWM1_LINE51             =  8,       /* Digital Active - tcpwm[1].line[51]:1 */
    P18_6_TCPWM1_LINE_COMPL52       =  9,       /* Digital Active - tcpwm[1].line_compl[52]:1 */
    P18_6_TCPWM1_TR_ONE_CNT_IN153   = 10,       /* Digital Active - tcpwm[1].tr_one_cnt_in[153]:1 */
    P18_6_TCPWM1_TR_ONE_CNT_IN157   = 11,       /* Digital Active - tcpwm[1].tr_one_cnt_in[157]:1 */
    P18_6_TCPWM1_LINE515            = 16,       /* Digital Active - tcpwm[1].line[515]:0 */
    P18_6_SCB1_SPI_SELECT3          = 19,       /* Digital Active - scb[1].spi_select3:0 */
    P18_6_CANFD1_TTCAN_TX2          = 21,       /* Digital Active - canfd[1].ttcan_tx[2]:0 */
    P18_6_TCPWM0_TR_ONE_CNT_IN774   = 22,       /* Digital Active - tcpwm[0].tr_one_cnt_in[774] */
    P18_6_ETH0_TXD2                 = 24,       /* Digital Active - eth[0].txd[2]:0 */
    P18_6_CPUSS_TRACE_DATA2         = 27,       /* Digital Active - cpuss.trace_data[2]:0 */

    /* P18.7 */
    P18_7_GPIO                      =  0,       /* GPIO controls 'out' */
    P18_7_AMUXA                     =  4,       /* Analog mux bus A */
    P18_7_AMUXB                     =  5,       /* Analog mux bus B */
    P18_7_AMUXA_DSI                 =  6,       /* Analog mux bus A, DSI control */
    P18_7_AMUXB_DSI                 =  7,       /* Analog mux bus B, DSI control */
    P18_7_TCPWM1_LINE50             =  8,       /* Digital Active - tcpwm[1].line[50]:1 */
    P18_7_TCPWM1_LINE_COMPL51       =  9,       /* Digital Active - tcpwm[1].line_compl[51]:1 */
    P18_7_TCPWM1_TR_ONE_CNT_IN150   = 10,       /* Digital Active - tcpwm[1].tr_one_cnt_in[150]:1 */
    P18_7_TCPWM1_TR_ONE_CNT_IN154   = 11,       /* Digital Active - tcpwm[1].tr_one_cnt_in[154]:1 */
    P18_7_TCPWM1_LINE_COMPL515      = 16,       /* Digital Active - tcpwm[1].line_compl[515]:0 */
    P18_7_CANFD1_TTCAN_RX2          = 21,       /* Digital Active - canfd[1].ttcan_rx[2]:0 */
    P18_7_TCPWM0_TR_ONE_CNT_IN775   = 22,       /* Digital Active - tcpwm[0].tr_one_cnt_in[775] */
    P18_7_ETH0_TXD3                 = 24,       /* Digital Active - eth[0].txd[3]:0 */
    P18_7_CPUSS_TRACE_DATA3         = 27,       /* Digital Active - cpuss.trace_data[3]:0 */

    /* P19.0 */
    P19_0_GPIO                      =  0,       /* GPIO controls 'out' */
    P19_0_AMUXA                     =  4,       /* Analog mux bus A */
    P19_0_AMUXB                     =  5,       /* Analog mux bus B */
    P19_0_AMUXA_DSI                 =  6,       /* Analog mux bus A, DSI control */
    P19_0_AMUXB_DSI                 =  7,       /* Analog mux bus B, DSI control */
    P19_0_TCPWM1_LINE259            =  8,       /* Digital Active - tcpwm[1].line[259]:2 */
    P19_0_TCPWM1_LINE_COMPL50       =  9,       /* Digital Active - tcpwm[1].line_compl[50]:1 */
    P19_0_TCPWM1_TR_ONE_CNT_IN777   = 10,       /* Digital Active - tcpwm[1].tr_one_cnt_in[777]:2 */
    P19_0_TCPWM1_TR_ONE_CNT_IN151   = 11,       /* Digital Active - tcpwm[1].tr_one_cnt_in[151]:1 */
    P19_0_TCPWM1_TR_ONE_CNT_IN1536  = 16,       /* Digital Active - tcpwm[1].tr_one_cnt_in[1536]:0 */
    P19_0_SCB2_SPI_MISO             = 17,       /* Digital Active - scb[2].spi_miso:1 */
    P19_0_SCB2_UART_RX              = 19,       /* Digital Active - scb[2].uart_rx:1 */
    P19_0_CANFD1_TTCAN_TX3          = 21,       /* Digital Active - canfd[1].ttcan_tx[3]:0 */
    P19_0_ETH0_RXD0                 = 24,       /* Digital Active - eth[0].rxd[0]:0 */
    P19_0_CPUSS_FAULT_OUT2          = 27,       /* Digital Active - cpuss.fault_out[2]:0 */

    /* P19.1 */
    P19_1_GPIO                      =  0,       /* GPIO controls 'out' */
    P19_1_AMUXA                     =  4,       /* Analog mux bus A */
    P19_1_AMUXB                     =  5,       /* Analog mux bus B */
    P19_1_AMUXA_DSI                 =  6,       /* Analog mux bus A, DSI control */
    P19_1_AMUXB_DSI                 =  7,       /* Analog mux bus B, DSI control */
    P19_1_TCPWM1_LINE26             =  8,       /* Digital Active - tcpwm[1].line[26]:1 */
    P19_1_TCPWM1_LINE_COMPL259      =  9,       /* Digital Active - tcpwm[1].line_compl[259]:2 */
    P19_1_TCPWM1_TR_ONE_CNT_IN78    = 10,       /* Digital Active - tcpwm[1].tr_one_cnt_in[78]:1 */
    P19_1_TCPWM1_TR_ONE_CNT_IN778   = 11,       /* Digital Active - tcpwm[1].tr_one_cnt_in[778]:2 */
    P19_1_TCPWM1_TR_ONE_CNT_IN1537  = 16,       /* Digital Active - tcpwm[1].tr_one_cnt_in[1537]:0 */
    P19_1_SCB2_SPI_MOSI             = 17,       /* Digital Active - scb[2].spi_mosi:1 */
    P19_1_SCB2_I2C_SDA              = 18,       /* Digital Active - scb[2].i2c_sda:1 */
    P19_1_SCB2_UART_TX              = 19,       /* Digital Active - scb[2].uart_tx:1 */
    P19_1_CANFD1_TTCAN_RX3          = 21,       /* Digital Active - canfd[1].ttcan_rx[3]:0 */
    P19_1_ETH0_RXD1                 = 24,       /* Digital Active - eth[0].rxd[1]:0 */
    P19_1_CPUSS_FAULT_OUT3          = 27,       /* Digital Active - cpuss.fault_out[3]:0 */

    /* P19.2 */
    P19_2_GPIO                      =  0,       /* GPIO controls 'out' */
    P19_2_AMUXA                     =  4,       /* Analog mux bus A */
    P19_2_AMUXB                     =  5,       /* Analog mux bus B */
    P19_2_AMUXA_DSI                 =  6,       /* Analog mux bus A, DSI control */
    P19_2_AMUXB_DSI                 =  7,       /* Analog mux bus B, DSI control */
    P19_2_TCPWM1_LINE27             =  8,       /* Digital Active - tcpwm[1].line[27]:2 */
    P19_2_TCPWM1_LINE_COMPL26       =  9,       /* Digital Active - tcpwm[1].line_compl[26]:1 */
    P19_2_TCPWM1_TR_ONE_CNT_IN81    = 10,       /* Digital Active - tcpwm[1].tr_one_cnt_in[81]:2 */
    P19_2_TCPWM1_TR_ONE_CNT_IN79    = 11,       /* Digital Active - tcpwm[1].tr_one_cnt_in[79]:1 */
    P19_2_TCPWM1_TR_ONE_CNT_IN1539  = 16,       /* Digital Active - tcpwm[1].tr_one_cnt_in[1539]:0 */
    P19_2_SCB2_SPI_CLK              = 17,       /* Digital Active - scb[2].spi_clk:1 */
    P19_2_SCB2_I2C_SCL              = 18,       /* Digital Active - scb[2].i2c_scl:1 */
    P19_2_SCB2_UART_RTS             = 19,       /* Digital Active - scb[2].uart_rts:1 */
    P19_2_ETH0_RXD2                 = 24,       /* Digital Active - eth[0].rxd[2]:0 */
    P19_2_PERI_TR_IO_INPUT28        = 26,       /* Digital Active - peri.tr_io_input[28]:0 */

    /* P19.3 */
    P19_3_GPIO                      =  0,       /* GPIO controls 'out' */
    P19_3_AMUXA                     =  4,       /* Analog mux bus A */
    P19_3_AMUXB                     =  5,       /* Analog mux bus B */
    P19_3_AMUXA_DSI                 =  6,       /* Analog mux bus A, DSI control */
    P19_3_AMUXB_DSI                 =  7,       /* Analog mux bus B, DSI control */
    P19_3_TCPWM1_LINE28             =  8,       /* Digital Active - tcpwm[1].line[28]:2 */
    P19_3_TCPWM1_LINE_COMPL27       =  9,       /* Digital Active - tcpwm[1].line_compl[27]:2 */
    P19_3_TCPWM1_TR_ONE_CNT_IN84    = 10,       /* Digital Active - tcpwm[1].tr_one_cnt_in[84]:2 */
    P19_3_TCPWM1_TR_ONE_CNT_IN82    = 11,       /* Digital Active - tcpwm[1].tr_one_cnt_in[82]:2 */
    P19_3_TCPWM1_TR_ONE_CNT_IN1540  = 16,       /* Digital Active - tcpwm[1].tr_one_cnt_in[1540]:0 */
    P19_3_SCB2_SPI_SELECT0          = 17,       /* Digital Active - scb[2].spi_select0:1 */
    P19_3_SCB2_UART_CTS             = 19,       /* Digital Active - scb[2].uart_cts:1 */
    P19_3_ETH0_RXD3                 = 24,       /* Digital Active - eth[0].rxd[3]:0 */
    P19_3_PERI_TR_IO_INPUT29        = 26,       /* Digital Active - peri.tr_io_input[29]:0 */

    /* P19.4 */
    P19_4_GPIO                      =  0,       /* GPIO controls 'out' */
    P19_4_AMUXA                     =  4,       /* Analog mux bus A */
    P19_4_AMUXB                     =  5,       /* Analog mux bus B */
    P19_4_AMUXA_DSI                 =  6,       /* Analog mux bus A, DSI control */
    P19_4_AMUXB_DSI                 =  7,       /* Analog mux bus B, DSI control */
    P19_4_TCPWM1_LINE29             =  8,       /* Digital Active - tcpwm[1].line[29]:2 */
    P19_4_TCPWM1_LINE_COMPL28       =  9,       /* Digital Active - tcpwm[1].line_compl[28]:2 */
    P19_4_TCPWM1_TR_ONE_CNT_IN87    = 10,       /* Digital Active - tcpwm[1].tr_one_cnt_in[87]:2 */
    P19_4_TCPWM1_TR_ONE_CNT_IN85    = 11,       /* Digital Active - tcpwm[1].tr_one_cnt_in[85]:2 */
    P19_4_TCPWM1_TR_ONE_CNT_IN1542  = 16,       /* Digital Active - tcpwm[1].tr_one_cnt_in[1542]:0 */
    P19_4_SCB2_SPI_SELECT1          = 17,       /* Digital Active - scb[2].spi_select1:1 */

    /* P20.0 */
    P20_0_GPIO                      =  0,       /* GPIO controls 'out' */
    P20_0_AMUXA                     =  4,       /* Analog mux bus A */
    P20_0_AMUXB                     =  5,       /* Analog mux bus B */
    P20_0_AMUXA_DSI                 =  6,       /* Analog mux bus A, DSI control */
    P20_0_AMUXB_DSI                 =  7,       /* Analog mux bus B, DSI control */
    P20_0_TCPWM1_LINE30             =  8,       /* Digital Active - tcpwm[1].line[30]:2 */
    P20_0_TCPWM1_LINE_COMPL29       =  9,       /* Digital Active - tcpwm[1].line_compl[29]:2 */
    P20_0_TCPWM1_TR_ONE_CNT_IN90    = 10,       /* Digital Active - tcpwm[1].tr_one_cnt_in[90]:2 */
    P20_0_TCPWM1_TR_ONE_CNT_IN88    = 11,       /* Digital Active - tcpwm[1].tr_one_cnt_in[88]:2 */
    P20_0_TCPWM1_TR_ONE_CNT_IN1543  = 16,       /* Digital Active - tcpwm[1].tr_one_cnt_in[1543]:0 */
    P20_0_SCB2_SPI_SELECT2          = 17,       /* Digital Active - scb[2].spi_select2:1 */
    P20_0_LIN0_LIN_RX5              = 20,       /* Digital Active - lin[0].lin_rx[5]:0 */

    /* P20.1 */
    P20_1_GPIO                      =  0,       /* GPIO controls 'out' */
    P20_1_AMUXA                     =  4,       /* Analog mux bus A */
    P20_1_AMUXB                     =  5,       /* Analog mux bus B */
    P20_1_AMUXA_DSI                 =  6,       /* Analog mux bus A, DSI control */
    P20_1_AMUXB_DSI                 =  7,       /* Analog mux bus B, DSI control */
    P20_1_TCPWM1_LINE49             =  8,       /* Digital Active - tcpwm[1].line[49]:1 */
    P20_1_TCPWM1_LINE_COMPL30       =  9,       /* Digital Active - tcpwm[1].line_compl[30]:2 */
    P20_1_TCPWM1_TR_ONE_CNT_IN147   = 10,       /* Digital Active - tcpwm[1].tr_one_cnt_in[147]:1 */
    P20_1_TCPWM1_TR_ONE_CNT_IN91    = 11,       /* Digital Active - tcpwm[1].tr_one_cnt_in[91]:2 */
    P20_1_TCPWM1_TR_ONE_CNT_IN1545  = 16,       /* Digital Active - tcpwm[1].tr_one_cnt_in[1545]:0 */
    P20_1_LIN0_LIN_TX5              = 20,       /* Digital Active - lin[0].lin_tx[5]:0 */

    /* P20.2 */
    P20_2_GPIO                      =  0,       /* GPIO controls 'out' */
    P20_2_AMUXA                     =  4,       /* Analog mux bus A */
    P20_2_AMUXB                     =  5,       /* Analog mux bus B */
    P20_2_AMUXA_DSI                 =  6,       /* Analog mux bus A, DSI control */
    P20_2_AMUXB_DSI                 =  7,       /* Analog mux bus B, DSI control */
    P20_2_TCPWM1_LINE48             =  8,       /* Digital Active - tcpwm[1].line[48]:1 */
    P20_2_TCPWM1_LINE_COMPL49       =  9,       /* Digital Active - tcpwm[1].line_compl[49]:1 */
    P20_2_TCPWM1_TR_ONE_CNT_IN144   = 10,       /* Digital Active - tcpwm[1].tr_one_cnt_in[144]:1 */
    P20_2_TCPWM1_TR_ONE_CNT_IN148   = 11,       /* Digital Active - tcpwm[1].tr_one_cnt_in[148]:1 */
    P20_2_TCPWM1_TR_ONE_CNT_IN1546  = 16,       /* Digital Active - tcpwm[1].tr_one_cnt_in[1546]:0 */
    P20_2_LIN0_LIN_EN5              = 20,       /* Digital Active - lin[0].lin_en[5]:0 */

    /* P20.3 */
    P20_3_GPIO                      =  0,       /* GPIO controls 'out' */
    P20_3_AMUXA                     =  4,       /* Analog mux bus A */
    P20_3_AMUXB                     =  5,       /* Analog mux bus B */
    P20_3_AMUXA_DSI                 =  6,       /* Analog mux bus A, DSI control */
    P20_3_AMUXB_DSI                 =  7,       /* Analog mux bus B, DSI control */
    P20_3_TCPWM1_LINE47             =  8,       /* Digital Active - tcpwm[1].line[47]:1 */
    P20_3_TCPWM1_LINE_COMPL48       =  9,       /* Digital Active - tcpwm[1].line_compl[48]:1 */
    P20_3_TCPWM1_TR_ONE_CNT_IN141   = 10,       /* Digital Active - tcpwm[1].tr_one_cnt_in[141]:1 */
    P20_3_TCPWM1_TR_ONE_CNT_IN145   = 11,       /* Digital Active - tcpwm[1].tr_one_cnt_in[145]:1 */
    P20_3_SCB1_UART_RX              = 17,       /* Digital Active - scb[1].uart_rx:1 */
    P20_3_SCB1_SPI_MISO             = 19,       /* Digital Active - scb[1].spi_miso:1 */
    P20_3_CANFD1_TTCAN_TX2          = 21,       /* Digital Active - canfd[1].ttcan_tx[2]:1 */

    /* P20.4 */
    P20_4_GPIO                      =  0,       /* GPIO controls 'out' */
    P20_4_AMUXA                     =  4,       /* Analog mux bus A */
    P20_4_AMUXB                     =  5,       /* Analog mux bus B */
    P20_4_AMUXA_DSI                 =  6,       /* Analog mux bus A, DSI control */
    P20_4_AMUXB_DSI                 =  7,       /* Analog mux bus B, DSI control */
    P20_4_TCPWM1_LINE46             =  8,       /* Digital Active - tcpwm[1].line[46]:1 */
    P20_4_TCPWM1_LINE_COMPL47       =  9,       /* Digital Active - tcpwm[1].line_compl[47]:1 */
    P20_4_TCPWM1_TR_ONE_CNT_IN138   = 10,       /* Digital Active - tcpwm[1].tr_one_cnt_in[138]:1 */
    P20_4_TCPWM1_TR_ONE_CNT_IN142   = 11,       /* Digital Active - tcpwm[1].tr_one_cnt_in[142]:1 */
    P20_4_SCB1_UART_TX              = 17,       /* Digital Active - scb[1].uart_tx:1 */
    P20_4_SCB1_I2C_SDA              = 18,       /* Digital Active - scb[1].i2c_sda:1 */
    P20_4_SCB1_SPI_MOSI             = 19,       /* Digital Active - scb[1].spi_mosi:1 */
    P20_4_CANFD1_TTCAN_RX2          = 21,       /* Digital Active - canfd[1].ttcan_rx[2]:1 */

    /* P20.5 */
    P20_5_GPIO                      =  0,       /* GPIO controls 'out' */
    P20_5_AMUXA                     =  4,       /* Analog mux bus A */
    P20_5_AMUXB                     =  5,       /* Analog mux bus B */
    P20_5_AMUXA_DSI                 =  6,       /* Analog mux bus A, DSI control */
    P20_5_AMUXB_DSI                 =  7,       /* Analog mux bus B, DSI control */
    P20_5_TCPWM1_LINE45             =  8,       /* Digital Active - tcpwm[1].line[45]:1 */
    P20_5_TCPWM1_LINE_COMPL46       =  9,       /* Digital Active - tcpwm[1].line_compl[46]:1 */
    P20_5_TCPWM1_TR_ONE_CNT_IN135   = 10,       /* Digital Active - tcpwm[1].tr_one_cnt_in[135]:1 */
    P20_5_TCPWM1_TR_ONE_CNT_IN139   = 11,       /* Digital Active - tcpwm[1].tr_one_cnt_in[139]:1 */
    P20_5_SCB1_UART_RTS             = 17,       /* Digital Active - scb[1].uart_rts:1 */
    P20_5_SCB1_I2C_SCL              = 18,       /* Digital Active - scb[1].i2c_scl:1 */
    P20_5_SCB1_SPI_CLK              = 19,       /* Digital Active - scb[1].spi_clk:1 */

    /* P20.6 */
    P20_6_GPIO                      =  0,       /* GPIO controls 'out' */
    P20_6_AMUXA                     =  4,       /* Analog mux bus A */
    P20_6_AMUXB                     =  5,       /* Analog mux bus B */
    P20_6_AMUXA_DSI                 =  6,       /* Analog mux bus A, DSI control */
    P20_6_AMUXB_DSI                 =  7,       /* Analog mux bus B, DSI control */
    P20_6_TCPWM1_LINE44             =  8,       /* Digital Active - tcpwm[1].line[44]:1 */
    P20_6_TCPWM1_LINE_COMPL45       =  9,       /* Digital Active - tcpwm[1].line_compl[45]:1 */
    P20_6_TCPWM1_TR_ONE_CNT_IN132   = 10,       /* Digital Active - tcpwm[1].tr_one_cnt_in[132]:1 */
    P20_6_TCPWM1_TR_ONE_CNT_IN136   = 11,       /* Digital Active - tcpwm[1].tr_one_cnt_in[136]:1 */
    P20_6_SCB1_UART_CTS             = 17,       /* Digital Active - scb[1].uart_cts:1 */
    P20_6_SCB1_SPI_SELECT0          = 19,       /* Digital Active - scb[1].spi_select0:1 */
    P20_6_CANFD1_TTCAN_TX4          = 21,       /* Digital Active - canfd[1].ttcan_tx[4]:0 */

    /* P20.7 */
    P20_7_GPIO                      =  0,       /* GPIO controls 'out' */
    P20_7_AMUXA                     =  4,       /* Analog mux bus A */
    P20_7_AMUXB                     =  5,       /* Analog mux bus B */
    P20_7_AMUXA_DSI                 =  6,       /* Analog mux bus A, DSI control */
    P20_7_AMUXB_DSI                 =  7,       /* Analog mux bus B, DSI control */
    P20_7_TCPWM1_LINE43             =  8,       /* Digital Active - tcpwm[1].line[43]:1 */
    P20_7_TCPWM1_LINE_COMPL44       =  9,       /* Digital Active - tcpwm[1].line_compl[44]:1 */
    P20_7_TCPWM1_TR_ONE_CNT_IN129   = 10,       /* Digital Active - tcpwm[1].tr_one_cnt_in[129]:1 */
    P20_7_TCPWM1_TR_ONE_CNT_IN133   = 11,       /* Digital Active - tcpwm[1].tr_one_cnt_in[133]:1 */
    P20_7_SCB1_SPI_SELECT1          = 19,       /* Digital Active - scb[1].spi_select1:1 */
    P20_7_CANFD1_TTCAN_RX4          = 21,       /* Digital Active - canfd[1].ttcan_rx[4]:0 */

    /* P21.0 */
    P21_0_GPIO                      =  0,       /* GPIO controls 'out' */
    P21_0_AMUXA                     =  4,       /* Analog mux bus A */
    P21_0_AMUXB                     =  5,       /* Analog mux bus B */
    P21_0_AMUXA_DSI                 =  6,       /* Analog mux bus A, DSI control */
    P21_0_AMUXB_DSI                 =  7,       /* Analog mux bus B, DSI control */
    P21_0_TCPWM1_LINE42             =  8,       /* Digital Active - tcpwm[1].line[42]:1 */
    P21_0_TCPWM1_LINE_COMPL43       =  9,       /* Digital Active - tcpwm[1].line_compl[43]:1 */
    P21_0_TCPWM1_TR_ONE_CNT_IN126   = 10,       /* Digital Active - tcpwm[1].tr_one_cnt_in[126]:1 */
    P21_0_TCPWM1_TR_ONE_CNT_IN130   = 11,       /* Digital Active - tcpwm[1].tr_one_cnt_in[130]:1 */
    P21_0_SCB1_SPI_SELECT2          = 19,       /* Digital Active - scb[1].spi_select2:1 */

    /* P21.1 */
    P21_1_GPIO                      =  0,       /* GPIO controls 'out' */
    P21_1_AMUXA                     =  4,       /* Analog mux bus A */
    P21_1_AMUXB                     =  5,       /* Analog mux bus B */
    P21_1_AMUXA_DSI                 =  6,       /* Analog mux bus A, DSI control */
    P21_1_AMUXB_DSI                 =  7,       /* Analog mux bus B, DSI control */
    P21_1_TCPWM1_LINE41             =  8,       /* Digital Active - tcpwm[1].line[41]:1 */
    P21_1_TCPWM1_LINE_COMPL42       =  9,       /* Digital Active - tcpwm[1].line_compl[42]:1 */
    P21_1_TCPWM1_TR_ONE_CNT_IN123   = 10,       /* Digital Active - tcpwm[1].tr_one_cnt_in[123]:1 */
    P21_1_TCPWM1_TR_ONE_CNT_IN127   = 11,       /* Digital Active - tcpwm[1].tr_one_cnt_in[127]:1 */

    /* P21.2 */
    P21_2_GPIO                      =  0,       /* GPIO controls 'out' */
    P21_2_AMUXA                     =  4,       /* Analog mux bus A */
    P21_2_AMUXB                     =  5,       /* Analog mux bus B */
    P21_2_AMUXA_DSI                 =  6,       /* Analog mux bus A, DSI control */
    P21_2_AMUXB_DSI                 =  7,       /* Analog mux bus B, DSI control */
    P21_2_TCPWM1_LINE40             =  8,       /* Digital Active - tcpwm[1].line[40]:1 */
    P21_2_TCPWM1_LINE_COMPL41       =  9,       /* Digital Active - tcpwm[1].line_compl[41]:1 */
    P21_2_TCPWM1_TR_ONE_CNT_IN120   = 10,       /* Digital Active - tcpwm[1].tr_one_cnt_in[120]:1 */
    P21_2_TCPWM1_TR_ONE_CNT_IN124   = 11,       /* Digital Active - tcpwm[1].tr_one_cnt_in[124]:1 */
    P21_2_SRSS_EXT_CLK              = 22,       /* Digital Active - srss.ext_clk:0 */
    P21_2_PERI_TR_IO_OUTPUT1        = 27,       /* Digital Active - peri.tr_io_output[1]:2 */
    P21_2_SRSS_DDFT_PIN_IN1         = 31,       /* Digital Deep Sleep - srss.ddft_pin_in[1]:1 */

    /* P21.3 */
    P21_3_GPIO                      =  0,       /* GPIO controls 'out' */
    P21_3_AMUXA                     =  4,       /* Analog mux bus A */
    P21_3_AMUXB                     =  5,       /* Analog mux bus B */
    P21_3_AMUXA_DSI                 =  6,       /* Analog mux bus A, DSI control */
    P21_3_AMUXB_DSI                 =  7,       /* Analog mux bus B, DSI control */
    P21_3_TCPWM1_LINE39             =  8,       /* Digital Active - tcpwm[1].line[39]:1 */
    P21_3_TCPWM1_LINE_COMPL40       =  9,       /* Digital Active - tcpwm[1].line_compl[40]:1 */
    P21_3_TCPWM1_TR_ONE_CNT_IN117   = 10,       /* Digital Active - tcpwm[1].tr_one_cnt_in[117]:1 */
    P21_3_TCPWM1_TR_ONE_CNT_IN121   = 11,       /* Digital Active - tcpwm[1].tr_one_cnt_in[121]:1 */

    /* P21.4 */
    P21_4_GPIO                      =  0,       /* GPIO controls 'out' */
    P21_4_AMUXA                     =  4,       /* Analog mux bus A */
    P21_4_AMUXB                     =  5,       /* Analog mux bus B */
    P21_4_AMUXA_DSI                 =  6,       /* Analog mux bus A, DSI control */
    P21_4_AMUXB_DSI                 =  7,       /* Analog mux bus B, DSI control */
    P21_4_TCPWM1_LINE38             =  8,       /* Digital Active - tcpwm[1].line[38]:1 */
    P21_4_TCPWM1_LINE_COMPL39       =  9,       /* Digital Active - tcpwm[1].line_compl[39]:1 */
    P21_4_TCPWM1_TR_ONE_CNT_IN114   = 10,       /* Digital Active - tcpwm[1].tr_one_cnt_in[114]:1 */
    P21_4_TCPWM1_TR_ONE_CNT_IN118   = 11,       /* Digital Active - tcpwm[1].tr_one_cnt_in[118]:1 */

    /* P21.5 */
    P21_5_GPIO                      =  0,       /* GPIO controls 'out' */
    P21_5_AMUXA                     =  4,       /* Analog mux bus A */
    P21_5_AMUXB                     =  5,       /* Analog mux bus B */
    P21_5_AMUXA_DSI                 =  6,       /* Analog mux bus A, DSI control */
    P21_5_AMUXB_DSI                 =  7,       /* Analog mux bus B, DSI control */
    P21_5_TCPWM1_LINE37             =  8,       /* Digital Active - tcpwm[1].line[37]:1 */
    P21_5_TCPWM1_LINE_COMPL38       =  9,       /* Digital Active - tcpwm[1].line_compl[38]:1 */
    P21_5_TCPWM1_TR_ONE_CNT_IN111   = 10,       /* Digital Active - tcpwm[1].tr_one_cnt_in[111]:1 */
    P21_5_TCPWM1_TR_ONE_CNT_IN115   = 11,       /* Digital Active - tcpwm[1].tr_one_cnt_in[115]:1 */
    P21_5_TCPWM1_TR_ONE_CNT_IN106   = 18,       /* Digital Active - tcpwm[1].tr_one_cnt_in[106]:1 */
    P21_5_TCPWM1_TR_ONE_CNT_IN102   = 19,       /* Digital Active - tcpwm[1].tr_one_cnt_in[102]:1 */
    P21_5_LIN0_LIN_RX0              = 20,       /* Digital Active - lin[0].lin_rx[0]:1 */
    P21_5_CANFD1_TTCAN_TX1          = 21,       /* Digital Active - canfd[1].ttcan_tx[1]:1 */
    P21_5_TCPWM1_LINE34             = 22,       /* Digital Active - tcpwm[1].line[34]:1 */
    P21_5_TCPWM1_LINE_COMPL35       = 23,       /* Digital Active - tcpwm[1].line_compl[35]:1 */
    P21_5_ETH0_RX_CTL               = 24,       /* Digital Active - eth[0].rx_ctl:0 */
    P21_5_CPUSS_TRACE_DATA0         = 27,       /* Digital Active - cpuss.trace_data[0]:1 */

    /* P21.6 */
    P21_6_GPIO                      =  0,       /* GPIO controls 'out' */
    P21_6_AMUXA                     =  4,       /* Analog mux bus A */
    P21_6_AMUXB                     =  5,       /* Analog mux bus B */
    P21_6_AMUXA_DSI                 =  6,       /* Analog mux bus A, DSI control */
    P21_6_AMUXB_DSI                 =  7,       /* Analog mux bus B, DSI control */
    P21_6_TCPWM1_LINE36             =  8,       /* Digital Active - tcpwm[1].line[36]:1 */
    P21_6_TCPWM1_LINE_COMPL37       =  9,       /* Digital Active - tcpwm[1].line_compl[37]:1 */
    P21_6_TCPWM1_TR_ONE_CNT_IN108   = 10,       /* Digital Active - tcpwm[1].tr_one_cnt_in[108]:1 */
    P21_6_TCPWM1_TR_ONE_CNT_IN112   = 11,       /* Digital Active - tcpwm[1].tr_one_cnt_in[112]:1 */
    P21_6_LIN0_LIN_TX0              = 20,       /* Digital Active - lin[0].lin_tx[0]:1 */
    P21_6_LIN0_LIN_RX13             = 21,       /* Digital Active - lin[0].lin_rx[13]:1 */
    P21_6_CPUSS_CLK_FM_PUMP         = 26,       /* Digital Active - cpuss.clk_fm_pump */

    /* P21.7 */
    P21_7_GPIO                      =  0,       /* GPIO controls 'out' */
    P21_7_AMUXA                     =  4,       /* Analog mux bus A */
    P21_7_AMUXB                     =  5,       /* Analog mux bus B */
    P21_7_AMUXA_DSI                 =  6,       /* Analog mux bus A, DSI control */
    P21_7_AMUXB_DSI                 =  7,       /* Analog mux bus B, DSI control */
    P21_7_TCPWM1_LINE35             =  8,       /* Digital Active - tcpwm[1].line[35]:1 */
    P21_7_TCPWM1_LINE_COMPL36       =  9,       /* Digital Active - tcpwm[1].line_compl[36]:1 */
    P21_7_TCPWM1_TR_ONE_CNT_IN105   = 10,       /* Digital Active - tcpwm[1].tr_one_cnt_in[105]:1 */
    P21_7_TCPWM1_TR_ONE_CNT_IN109   = 11,       /* Digital Active - tcpwm[1].tr_one_cnt_in[109]:1 */
    P21_7_SCB6_UART_RX              = 17,       /* Digital Active - scb[6].uart_rx:1 */
    P21_7_SCB6_SPI_MISO             = 19,       /* Digital Active - scb[6].spi_miso:1 */
    P21_7_LIN0_LIN_EN0              = 20,       /* Digital Active - lin[0].lin_en[0]:1 */
    P21_7_LIN0_LIN_TX13             = 21,       /* Digital Active - lin[0].lin_tx[13]:1 */
    P21_7_CPUSS_CAL_SUP_NZ          = 27,       /* Digital Active - cpuss.cal_sup_nz:1 */
    P21_7_SRSS_CAL_WAVE             = 29,       /* Digital Deep Sleep - srss.cal_wave:0 */

    /* P22.1 */
    P22_1_GPIO                      =  0,       /* GPIO controls 'out' */
    P22_1_AMUXA                     =  4,       /* Analog mux bus A */
    P22_1_AMUXB                     =  5,       /* Analog mux bus B */
    P22_1_AMUXA_DSI                 =  6,       /* Analog mux bus A, DSI control */
    P22_1_AMUXB_DSI                 =  7,       /* Analog mux bus B, DSI control */
    P22_1_TCPWM1_LINE33             =  8,       /* Digital Active - tcpwm[1].line[33]:1 */
    P22_1_TCPWM1_LINE_COMPL34       =  9,       /* Digital Active - tcpwm[1].line_compl[34]:1 */
    P22_1_TCPWM1_TR_ONE_CNT_IN99    = 10,       /* Digital Active - tcpwm[1].tr_one_cnt_in[99]:1 */
    P22_1_TCPWM1_TR_ONE_CNT_IN103   = 11,       /* Digital Active - tcpwm[1].tr_one_cnt_in[103]:1 */
    P22_1_SCB6_UART_TX              = 17,       /* Digital Active - scb[6].uart_tx:1 */
    P22_1_SCB6_I2C_SDA              = 18,       /* Digital Active - scb[6].i2c_sda:1 */
    P22_1_SCB6_SPI_MOSI             = 19,       /* Digital Active - scb[6].spi_mosi:1 */
    P22_1_CANFD1_TTCAN_RX1          = 21,       /* Digital Active - canfd[1].ttcan_rx[1]:1 */
    P22_1_CPUSS_TRACE_DATA1         = 27,       /* Digital Active - cpuss.trace_data[1]:1 */

    /* P22.2 */
    P22_2_GPIO                      =  0,       /* GPIO controls 'out' */
    P22_2_AMUXA                     =  4,       /* Analog mux bus A */
    P22_2_AMUXB                     =  5,       /* Analog mux bus B */
    P22_2_AMUXA_DSI                 =  6,       /* Analog mux bus A, DSI control */
    P22_2_AMUXB_DSI                 =  7,       /* Analog mux bus B, DSI control */
    P22_2_TCPWM1_LINE32             =  8,       /* Digital Active - tcpwm[1].line[32]:1 */
    P22_2_TCPWM1_LINE_COMPL33       =  9,       /* Digital Active - tcpwm[1].line_compl[33]:1 */
    P22_2_TCPWM1_TR_ONE_CNT_IN96    = 10,       /* Digital Active - tcpwm[1].tr_one_cnt_in[96]:1 */
    P22_2_TCPWM1_TR_ONE_CNT_IN100   = 11,       /* Digital Active - tcpwm[1].tr_one_cnt_in[100]:1 */
    P22_2_SCB6_UART_RTS             = 17,       /* Digital Active - scb[6].uart_rts:1 */
    P22_2_SCB6_I2C_SCL              = 18,       /* Digital Active - scb[6].i2c_scl:1 */
    P22_2_SCB6_SPI_CLK              = 19,       /* Digital Active - scb[6].spi_clk:1 */
    P22_2_CPUSS_TRACE_DATA2         = 27,       /* Digital Active - cpuss.trace_data[2]:1 */

    /* P22.3 */
    P22_3_GPIO                      =  0,       /* GPIO controls 'out' */
    P22_3_AMUXA                     =  4,       /* Analog mux bus A */
    P22_3_AMUXB                     =  5,       /* Analog mux bus B */
    P22_3_AMUXA_DSI                 =  6,       /* Analog mux bus A, DSI control */
    P22_3_AMUXB_DSI                 =  7,       /* Analog mux bus B, DSI control */
    P22_3_TCPWM1_LINE31             =  8,       /* Digital Active - tcpwm[1].line[31]:1 */
    P22_3_TCPWM1_LINE_COMPL32       =  9,       /* Digital Active - tcpwm[1].line_compl[32]:1 */
    P22_3_TCPWM1_TR_ONE_CNT_IN93    = 10,       /* Digital Active - tcpwm[1].tr_one_cnt_in[93]:1 */
    P22_3_TCPWM1_TR_ONE_CNT_IN97    = 11,       /* Digital Active - tcpwm[1].tr_one_cnt_in[97]:1 */
    P22_3_SCB6_UART_CTS             = 17,       /* Digital Active - scb[6].uart_cts:1 */
    P22_3_SCB6_SPI_SELECT0          = 19,       /* Digital Active - scb[6].spi_select0:1 */
    P22_3_CPUSS_TRACE_DATA3         = 27,       /* Digital Active - cpuss.trace_data[3]:1 */

    /* P22.4 */
    P22_4_GPIO                      =  0,       /* GPIO controls 'out' */
    P22_4_AMUXA                     =  4,       /* Analog mux bus A */
    P22_4_AMUXB                     =  5,       /* Analog mux bus B */
    P22_4_AMUXA_DSI                 =  6,       /* Analog mux bus A, DSI control */
    P22_4_AMUXB_DSI                 =  7,       /* Analog mux bus B, DSI control */
    P22_4_TCPWM1_LINE30             =  8,       /* Digital Active - tcpwm[1].line[30]:1 */
    P22_4_TCPWM1_LINE_COMPL31       =  9,       /* Digital Active - tcpwm[1].line_compl[31]:1 */
    P22_4_TCPWM1_TR_ONE_CNT_IN90    = 10,       /* Digital Active - tcpwm[1].tr_one_cnt_in[90]:1 */
    P22_4_TCPWM1_TR_ONE_CNT_IN94    = 11,       /* Digital Active - tcpwm[1].tr_one_cnt_in[94]:1 */
    P22_4_SCB6_SPI_SELECT1          = 19,       /* Digital Active - scb[6].spi_select1:1 */
    P22_4_CPUSS_TRACE_CLOCK         = 27,       /* Digital Active - cpuss.trace_clock:1 */

    /* P22.5 */
    P22_5_GPIO                      =  0,       /* GPIO controls 'out' */
    P22_5_AMUXA                     =  4,       /* Analog mux bus A */
    P22_5_AMUXB                     =  5,       /* Analog mux bus B */
    P22_5_AMUXA_DSI                 =  6,       /* Analog mux bus A, DSI control */
    P22_5_AMUXB_DSI                 =  7,       /* Analog mux bus B, DSI control */
    P22_5_TCPWM1_LINE29             =  8,       /* Digital Active - tcpwm[1].line[29]:1 */
    P22_5_TCPWM1_LINE_COMPL30       =  9,       /* Digital Active - tcpwm[1].line_compl[30]:1 */
    P22_5_TCPWM1_TR_ONE_CNT_IN87    = 10,       /* Digital Active - tcpwm[1].tr_one_cnt_in[87]:1 */
    P22_5_TCPWM1_TR_ONE_CNT_IN91    = 11,       /* Digital Active - tcpwm[1].tr_one_cnt_in[91]:1 */
    P22_5_TCPWM1_LINE520            = 16,       /* Digital Active - tcpwm[1].line[520]:0 */
    P22_5_SCB6_SPI_SELECT2          = 19,       /* Digital Active - scb[6].spi_select2:1 */
    P22_5_LIN0_LIN_RX7              = 20,       /* Digital Active - lin[0].lin_rx[7]:1 */

    /* P22.6 */
    P22_6_GPIO                      =  0,       /* GPIO controls 'out' */
    P22_6_AMUXA                     =  4,       /* Analog mux bus A */
    P22_6_AMUXB                     =  5,       /* Analog mux bus B */
    P22_6_AMUXA_DSI                 =  6,       /* Analog mux bus A, DSI control */
    P22_6_AMUXB_DSI                 =  7,       /* Analog mux bus B, DSI control */
    P22_6_TCPWM1_LINE28             =  8,       /* Digital Active - tcpwm[1].line[28]:1 */
    P22_6_TCPWM1_LINE_COMPL29       =  9,       /* Digital Active - tcpwm[1].line_compl[29]:1 */
    P22_6_TCPWM1_TR_ONE_CNT_IN84    = 10,       /* Digital Active - tcpwm[1].tr_one_cnt_in[84]:1 */
    P22_6_TCPWM1_TR_ONE_CNT_IN88    = 11,       /* Digital Active - tcpwm[1].tr_one_cnt_in[88]:1 */
    P22_6_TCPWM1_LINE_COMPL520      = 16,       /* Digital Active - tcpwm[1].line_compl[520]:0 */
    P22_6_LIN0_LIN_TX7              = 20,       /* Digital Active - lin[0].lin_tx[7]:1 */

    /* P22.7 */
    P22_7_GPIO                      =  0,       /* GPIO controls 'out' */
    P22_7_AMUXA                     =  4,       /* Analog mux bus A */
    P22_7_AMUXB                     =  5,       /* Analog mux bus B */
    P22_7_AMUXA_DSI                 =  6,       /* Analog mux bus A, DSI control */
    P22_7_AMUXB_DSI                 =  7,       /* Analog mux bus B, DSI control */
    P22_7_TCPWM1_LINE27             =  8,       /* Digital Active - tcpwm[1].line[27]:1 */
    P22_7_TCPWM1_LINE_COMPL28       =  9,       /* Digital Active - tcpwm[1].line_compl[28]:1 */
    P22_7_TCPWM1_TR_ONE_CNT_IN81    = 10,       /* Digital Active - tcpwm[1].tr_one_cnt_in[81]:1 */
    P22_7_TCPWM1_TR_ONE_CNT_IN85    = 11,       /* Digital Active - tcpwm[1].tr_one_cnt_in[85]:1 */
    P22_7_TCPWM1_TR_ONE_CNT_IN1560  = 16,       /* Digital Active - tcpwm[1].tr_one_cnt_in[1560]:0 */
    P22_7_LIN0_LIN_RX14             = 18,       /* Digital Active - lin[0].lin_rx[14]:1 */
    P22_7_LIN0_LIN_EN7              = 20,       /* Digital Active - lin[0].lin_en[7]:1 */

    /* P23.0 */
    P23_0_GPIO                      =  0,       /* GPIO controls 'out' */
    P23_0_AMUXA                     =  4,       /* Analog mux bus A */
    P23_0_AMUXB                     =  5,       /* Analog mux bus B */
    P23_0_AMUXA_DSI                 =  6,       /* Analog mux bus A, DSI control */
    P23_0_AMUXB_DSI                 =  7,       /* Analog mux bus B, DSI control */
    P23_0_TCPWM1_LINE264            =  8,       /* Digital Active - tcpwm[1].line[264]:1 */
    P23_0_TCPWM1_LINE_COMPL27       =  9,       /* Digital Active - tcpwm[1].line_compl[27]:1 */
    P23_0_TCPWM1_TR_ONE_CNT_IN792   = 10,       /* Digital Active - tcpwm[1].tr_one_cnt_in[792]:1 */
    P23_0_TCPWM1_TR_ONE_CNT_IN82    = 11,       /* Digital Active - tcpwm[1].tr_one_cnt_in[82]:1 */
    P23_0_TCPWM1_TR_ONE_CNT_IN1561  = 16,       /* Digital Active - tcpwm[1].tr_one_cnt_in[1561]:0 */
    P23_0_SCB7_UART_RX              = 17,       /* Digital Active - scb[7].uart_rx:1 */
    P23_0_LIN0_LIN_TX14             = 18,       /* Digital Active - lin[0].lin_tx[14]:1 */
    P23_0_SCB7_SPI_MISO             = 19,       /* Digital Active - scb[7].spi_miso:1 */
    P23_0_CANFD1_TTCAN_TX0          = 21,       /* Digital Active - canfd[1].ttcan_tx[0]:1 */
    P23_0_CPUSS_FAULT_OUT0          = 27,       /* Digital Active - cpuss.fault_out[0]:1 */

    /* P23.1 */
    P23_1_GPIO                      =  0,       /* GPIO controls 'out' */
    P23_1_AMUXA                     =  4,       /* Analog mux bus A */
    P23_1_AMUXB                     =  5,       /* Analog mux bus B */
    P23_1_AMUXA_DSI                 =  6,       /* Analog mux bus A, DSI control */
    P23_1_AMUXB_DSI                 =  7,       /* Analog mux bus B, DSI control */
    P23_1_TCPWM1_LINE265            =  8,       /* Digital Active - tcpwm[1].line[265]:1 */
    P23_1_TCPWM1_LINE_COMPL264      =  9,       /* Digital Active - tcpwm[1].line_compl[264]:1 */
    P23_1_TCPWM1_TR_ONE_CNT_IN795   = 10,       /* Digital Active - tcpwm[1].tr_one_cnt_in[795]:1 */
    P23_1_TCPWM1_TR_ONE_CNT_IN793   = 11,       /* Digital Active - tcpwm[1].tr_one_cnt_in[793]:1 */
    P23_1_SCB7_UART_TX              = 17,       /* Digital Active - scb[7].uart_tx:1 */
    P23_1_SCB7_I2C_SDA              = 18,       /* Digital Active - scb[7].i2c_sda:1 */
    P23_1_SCB7_SPI_MOSI             = 19,       /* Digital Active - scb[7].spi_mosi:1 */
    P23_1_CANFD1_TTCAN_RX0          = 21,       /* Digital Active - canfd[1].ttcan_rx[0]:1 */
    P23_1_CPUSS_FAULT_OUT1          = 27,       /* Digital Active - cpuss.fault_out[1]:1 */

    /* P23.2 */
    P23_2_GPIO                      =  0,       /* GPIO controls 'out' */
    P23_2_AMUXA                     =  4,       /* Analog mux bus A */
    P23_2_AMUXB                     =  5,       /* Analog mux bus B */
    P23_2_AMUXA_DSI                 =  6,       /* Analog mux bus A, DSI control */
    P23_2_AMUXB_DSI                 =  7,       /* Analog mux bus B, DSI control */
    P23_2_TCPWM1_LINE266            =  8,       /* Digital Active - tcpwm[1].line[266]:1 */
    P23_2_TCPWM1_LINE_COMPL265      =  9,       /* Digital Active - tcpwm[1].line_compl[265]:1 */
    P23_2_TCPWM1_TR_ONE_CNT_IN798   = 10,       /* Digital Active - tcpwm[1].tr_one_cnt_in[798]:1 */
    P23_2_TCPWM1_TR_ONE_CNT_IN796   = 11,       /* Digital Active - tcpwm[1].tr_one_cnt_in[796]:1 */
    P23_2_SCB7_UART_RTS             = 17,       /* Digital Active - scb[7].uart_rts:1 */
    P23_2_SCB7_I2C_SCL              = 18,       /* Digital Active - scb[7].i2c_scl:1 */
    P23_2_SCB7_SPI_CLK              = 19,       /* Digital Active - scb[7].spi_clk:1 */
    P23_2_LIN0_LIN_RX6              = 20,       /* Digital Active - lin[0].lin_rx[6]:2 */
    P23_2_CPUSS_FAULT_OUT2          = 27,       /* Digital Active - cpuss.fault_out[2]:1 */

    /* P23.3 */
    P23_3_GPIO                      =  0,       /* GPIO controls 'out' */
    P23_3_AMUXA                     =  4,       /* Analog mux bus A */
    P23_3_AMUXB                     =  5,       /* Analog mux bus B */
    P23_3_AMUXA_DSI                 =  6,       /* Analog mux bus A, DSI control */
    P23_3_AMUXB_DSI                 =  7,       /* Analog mux bus B, DSI control */
    P23_3_TCPWM1_LINE267            =  8,       /* Digital Active - tcpwm[1].line[267]:1 */
    P23_3_TCPWM1_LINE_COMPL266      =  9,       /* Digital Active - tcpwm[1].line_compl[266]:1 */
    P23_3_TCPWM1_TR_ONE_CNT_IN801   = 10,       /* Digital Active - tcpwm[1].tr_one_cnt_in[801]:1 */
    P23_3_TCPWM1_TR_ONE_CNT_IN799   = 11,       /* Digital Active - tcpwm[1].tr_one_cnt_in[799]:1 */
    P23_3_SCB7_UART_CTS             = 17,       /* Digital Active - scb[7].uart_cts:1 */
    P23_3_SCB7_SPI_SELECT0          = 19,       /* Digital Active - scb[7].spi_select0:1 */
    P23_3_LIN0_LIN_TX6              = 20,       /* Digital Active - lin[0].lin_tx[6]:2 */
    P23_3_ETH0_RX_CLK               = 24,       /* Digital Active - eth[0].rx_clk:0 */
    P23_3_PERI_TR_IO_INPUT30        = 26,       /* Digital Active - peri.tr_io_input[30]:0 */
    P23_3_CPUSS_FAULT_OUT3          = 27,       /* Digital Active - cpuss.fault_out[3]:1 */
    P23_3_SRSS_DDFT_PIN_IN1         = 31,       /* Digital Deep Sleep - srss.ddft_pin_in[1]:0 */

    /* P23.4 */
    P23_4_GPIO                      =  0,       /* GPIO controls 'out' */
    P23_4_AMUXA                     =  4,       /* Analog mux bus A */
    P23_4_AMUXB                     =  5,       /* Analog mux bus B */
    P23_4_AMUXA_DSI                 =  6,       /* Analog mux bus A, DSI control */
    P23_4_AMUXB_DSI                 =  7,       /* Analog mux bus B, DSI control */
    P23_4_TCPWM1_LINE25             =  8,       /* Digital Active - tcpwm[1].line[25]:1 */
    P23_4_TCPWM1_LINE_COMPL267      =  9,       /* Digital Active - tcpwm[1].line_compl[267]:1 */
    P23_4_TCPWM1_TR_ONE_CNT_IN75    = 10,       /* Digital Active - tcpwm[1].tr_one_cnt_in[75]:1 */
    P23_4_TCPWM1_TR_ONE_CNT_IN802   = 11,       /* Digital Active - tcpwm[1].tr_one_cnt_in[802]:1 */
    P23_4_TCPWM1_LINE521            = 16,       /* Digital Active - tcpwm[1].line[521]:0 */
    P23_4_SCB2_SPI_MISO             = 17,       /* Digital Active - scb[2].spi_miso:2 */
    P23_4_SCB7_SPI_SELECT1          = 19,       /* Digital Active - scb[7].spi_select1:1 */
    P23_4_PERI_TR_IO_INPUT31        = 26,       /* Digital Active - peri.tr_io_input[31]:0 */
    P23_4_PERI_TR_IO_OUTPUT0        = 27,       /* Digital Active - peri.tr_io_output[0]:2 */
    P23_4_CPUSS_SWJ_SWO_TDO         = 29,       /* Digital Deep Sleep - cpuss.swj_swo_tdo:0 */
    P23_4_SRSS_DDFT_PIN_IN0         = 31,       /* Digital Deep Sleep - srss.ddft_pin_in[0]:0 */

    /* P23.5 */
    P23_5_GPIO                      =  0,       /* GPIO controls 'out' */
    P23_5_AMUXA                     =  4,       /* Analog mux bus A */
    P23_5_AMUXB                     =  5,       /* Analog mux bus B */
    P23_5_AMUXA_DSI                 =  6,       /* Analog mux bus A, DSI control */
    P23_5_AMUXB_DSI                 =  7,       /* Analog mux bus B, DSI control */
    P23_5_TCPWM1_LINE24             =  8,       /* Digital Active - tcpwm[1].line[24]:1 */
    P23_5_TCPWM1_LINE_COMPL25       =  9,       /* Digital Active - tcpwm[1].line_compl[25]:1 */
    P23_5_TCPWM1_TR_ONE_CNT_IN72    = 10,       /* Digital Active - tcpwm[1].tr_one_cnt_in[72]:1 */
    P23_5_TCPWM1_TR_ONE_CNT_IN76    = 11,       /* Digital Active - tcpwm[1].tr_one_cnt_in[76]:1 */
    P23_5_TCPWM1_LINE_COMPL521      = 16,       /* Digital Active - tcpwm[1].line_compl[521]:0 */
    P23_5_SCB2_SPI_MOSI             = 17,       /* Digital Active - scb[2].spi_mosi:2 */
    P23_5_SCB7_SPI_SELECT2          = 19,       /* Digital Active - scb[7].spi_select2:1 */
    P23_5_LIN0_LIN_RX9              = 23,       /* Digital Active - lin[0].lin_rx[9]:0 */
    P23_5_CPUSS_SWJ_SWCLK_TCLK      = 29,       /* Digital Deep Sleep - cpuss.swj_swclk_tclk:0 */

    /* P23.6 */
    P23_6_GPIO                      =  0,       /* GPIO controls 'out' */
    P23_6_AMUXA                     =  4,       /* Analog mux bus A */
    P23_6_AMUXB                     =  5,       /* Analog mux bus B */
    P23_6_AMUXA_DSI                 =  6,       /* Analog mux bus A, DSI control */
    P23_6_AMUXB_DSI                 =  7,       /* Analog mux bus B, DSI control */
    P23_6_TCPWM1_LINE23             =  8,       /* Digital Active - tcpwm[1].line[23]:1 */
    P23_6_TCPWM1_LINE_COMPL24       =  9,       /* Digital Active - tcpwm[1].line_compl[24]:1 */
    P23_6_TCPWM1_TR_ONE_CNT_IN69    = 10,       /* Digital Active - tcpwm[1].tr_one_cnt_in[69]:1 */
    P23_6_TCPWM1_TR_ONE_CNT_IN73    = 11,       /* Digital Active - tcpwm[1].tr_one_cnt_in[73]:1 */
    P23_6_TCPWM1_TR_ONE_CNT_IN1563  = 16,       /* Digital Active - tcpwm[1].tr_one_cnt_in[1563]:0 */
    P23_6_SCB2_SPI_CLK              = 17,       /* Digital Active - scb[2].spi_clk:2 */
    P23_6_LIN0_LIN_TX9              = 23,       /* Digital Active - lin[0].lin_tx[9]:0 */
    P23_6_CPUSS_SWJ_SWDIO_TMS       = 29,       /* Digital Deep Sleep - cpuss.swj_swdio_tms:0 */

    /* P23.7 */
    P23_7_GPIO                      =  0,       /* GPIO controls 'out' */
    P23_7_AMUXA                     =  4,       /* Analog mux bus A */
    P23_7_AMUXB                     =  5,       /* Analog mux bus B */
    P23_7_AMUXA_DSI                 =  6,       /* Analog mux bus A, DSI control */
    P23_7_AMUXB_DSI                 =  7,       /* Analog mux bus B, DSI control */
    P23_7_TCPWM1_LINE22             =  8,       /* Digital Active - tcpwm[1].line[22]:1 */
    P23_7_TCPWM1_LINE_COMPL23       =  9,       /* Digital Active - tcpwm[1].line_compl[23]:1 */
    P23_7_TCPWM1_TR_ONE_CNT_IN66    = 10,       /* Digital Active - tcpwm[1].tr_one_cnt_in[66]:1 */
    P23_7_TCPWM1_TR_ONE_CNT_IN70    = 11,       /* Digital Active - tcpwm[1].tr_one_cnt_in[70]:1 */
    P23_7_TCPWM1_TR_ONE_CNT_IN1564  = 16,       /* Digital Active - tcpwm[1].tr_one_cnt_in[1564]:0 */
    P23_7_SCB2_SPI_SELECT0          = 17,       /* Digital Active - scb[2].spi_select0:2 */
    P23_7_SRSS_EXT_CLK              = 22,       /* Digital Active - srss.ext_clk:1 */
    P23_7_LIN0_LIN_EN9              = 23,       /* Digital Active - lin[0].lin_en[9]:0 */
    P23_7_CPUSS_CAL_SUP_NZ          = 27,       /* Digital Active - cpuss.cal_sup_nz:2 */
    P23_7_CPUSS_SWJ_SWDOE_TDI       = 29,       /* Digital Deep Sleep - cpuss.swj_swdoe_tdi:0 */
    P23_7_SRSS_DDFT_PIN_IN0         = 31        /* Digital Deep Sleep - srss.ddft_pin_in[0]:1 */
} en_hsiom_sel_t;

#endif /* _GPIO_XMC7200_176_TEQFP_H_ */


/* [] END OF FILE */
