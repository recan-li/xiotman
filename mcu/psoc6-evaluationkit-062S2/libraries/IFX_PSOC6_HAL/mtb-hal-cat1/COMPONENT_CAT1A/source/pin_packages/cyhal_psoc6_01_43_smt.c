/***************************************************************************//**
* \file cyhal_psoc6_01_43_smt.c
*
* \brief
* PSoC6_01 device GPIO HAL header for 43-SMT package
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

#include "cy_device_headers.h"
#include "cyhal_hw_types.h"

#if defined(_GPIO_PSOC6_01_43_SMT_H_)
#include "pin_packages/cyhal_psoc6_01_43_smt.h"

/* Pin connections */
/* Connections for: audioss_clk_i2s_if */
const cyhal_resource_pin_mapping_t cyhal_pin_map_audioss_clk_i2s_if[1] = {
    {0u, 0u, P5_0, P5_0_AUDIOSS_CLK_I2S_IF},
};

/* Connections for: audioss_pdm_clk */
const cyhal_resource_pin_mapping_t cyhal_pin_map_audioss_pdm_clk[1] = {
    {0u, 0u, P10_4, P10_4_AUDIOSS_PDM_CLK},
};

/* Connections for: audioss_pdm_data */
const cyhal_resource_pin_mapping_t cyhal_pin_map_audioss_pdm_data[1] = {
    {0u, 0u, P10_5, P10_5_AUDIOSS_PDM_DATA},
};

/* Connections for: audioss_rx_sck */
const cyhal_resource_pin_mapping_t cyhal_pin_map_audioss_rx_sck[1] = {
    {0u, 0u, P5_4, P5_4_AUDIOSS_RX_SCK},
};

/* Connections for: audioss_rx_sdi */
const cyhal_resource_pin_mapping_t cyhal_pin_map_audioss_rx_sdi[1] = {
    {0u, 0u, P5_6, P5_6_AUDIOSS_RX_SDI},
};

/* Connections for: audioss_rx_ws */
const cyhal_resource_pin_mapping_t cyhal_pin_map_audioss_rx_ws[1] = {
    {0u, 0u, P5_5, P5_5_AUDIOSS_RX_WS},
};

/* Connections for: audioss_tx_sck */
const cyhal_resource_pin_mapping_t cyhal_pin_map_audioss_tx_sck[1] = {
    {0u, 0u, P5_1, P5_1_AUDIOSS_TX_SCK},
};

/* Connections for: audioss_tx_sdo */
const cyhal_resource_pin_mapping_t cyhal_pin_map_audioss_tx_sdo[1] = {
    {0u, 0u, P5_3, P5_3_AUDIOSS_TX_SDO},
};

/* Connections for: audioss_tx_ws */
const cyhal_resource_pin_mapping_t cyhal_pin_map_audioss_tx_ws[1] = {
    {0u, 0u, P5_2, P5_2_AUDIOSS_TX_WS},
};

/* Connections for: bless_ext_lna_rx_ctl_out */
const cyhal_resource_pin_mapping_t cyhal_pin_map_bless_ext_lna_rx_ctl_out[1] = {
    {0u, 0u, NC, HSIOM_SEL_GPIO},
};

/* Connections for: bless_ext_pa_lna_chip_en_out */
const cyhal_resource_pin_mapping_t cyhal_pin_map_bless_ext_pa_lna_chip_en_out[1] = {
    {0u, 0u, NC, HSIOM_SEL_GPIO},
};

/* Connections for: bless_ext_pa_tx_ctl_out */
const cyhal_resource_pin_mapping_t cyhal_pin_map_bless_ext_pa_tx_ctl_out[1] = {
    {0u, 0u, NC, HSIOM_SEL_GPIO},
};

/* Connections for: bless_mxd_act_bpktctl */
const cyhal_resource_pin_mapping_t cyhal_pin_map_bless_mxd_act_bpktctl[1] = {
    {0u, 0u, NC, HSIOM_SEL_GPIO},
};

/* Connections for: bless_mxd_act_dbus_rx_en */
const cyhal_resource_pin_mapping_t cyhal_pin_map_bless_mxd_act_dbus_rx_en[1] = {
    {0u, 0u, NC, HSIOM_SEL_GPIO},
};

/* Connections for: bless_mxd_act_dbus_tx_en */
const cyhal_resource_pin_mapping_t cyhal_pin_map_bless_mxd_act_dbus_tx_en[1] = {
    {0u, 0u, NC, HSIOM_SEL_GPIO},
};

/* Connections for: bless_mxd_act_txd_rxd */
const cyhal_resource_pin_mapping_t cyhal_pin_map_bless_mxd_act_txd_rxd[1] = {
    {0u, 0u, NC, HSIOM_SEL_GPIO},
};

/* Connections for: bless_mxd_dpslp_act_ldo_en */
const cyhal_resource_pin_mapping_t cyhal_pin_map_bless_mxd_dpslp_act_ldo_en[1] = {
    {0u, 0u, NC, HSIOM_SEL_GPIO},
};

/* Connections for: bless_mxd_dpslp_buck_en */
const cyhal_resource_pin_mapping_t cyhal_pin_map_bless_mxd_dpslp_buck_en[1] = {
    {0u, 0u, NC, HSIOM_SEL_GPIO},
};

/* Connections for: bless_mxd_dpslp_clk_en */
const cyhal_resource_pin_mapping_t cyhal_pin_map_bless_mxd_dpslp_clk_en[1] = {
    {0u, 0u, NC, HSIOM_SEL_GPIO},
};

/* Connections for: bless_mxd_dpslp_dig_ldo_en */
const cyhal_resource_pin_mapping_t cyhal_pin_map_bless_mxd_dpslp_dig_ldo_en[1] = {
    {0u, 0u, NC, HSIOM_SEL_GPIO},
};

/* Connections for: bless_mxd_dpslp_isolate_n */
const cyhal_resource_pin_mapping_t cyhal_pin_map_bless_mxd_dpslp_isolate_n[1] = {
    {0u, 0u, NC, HSIOM_SEL_GPIO},
};

/* Connections for: bless_mxd_dpslp_mxd_clk_out */
const cyhal_resource_pin_mapping_t cyhal_pin_map_bless_mxd_dpslp_mxd_clk_out[1] = {
    {0u, 0u, NC, HSIOM_SEL_GPIO},
};

/* Connections for: bless_mxd_dpslp_rcb_clk */
const cyhal_resource_pin_mapping_t cyhal_pin_map_bless_mxd_dpslp_rcb_clk[1] = {
    {0u, 0u, NC, HSIOM_SEL_GPIO},
};

/* Connections for: bless_mxd_dpslp_rcb_data */
const cyhal_resource_pin_mapping_t cyhal_pin_map_bless_mxd_dpslp_rcb_data[1] = {
    {0u, 0u, NC, HSIOM_SEL_GPIO},
};

/* Connections for: bless_mxd_dpslp_rcb_le */
const cyhal_resource_pin_mapping_t cyhal_pin_map_bless_mxd_dpslp_rcb_le[1] = {
    {0u, 0u, NC, HSIOM_SEL_GPIO},
};

/* Connections for: bless_mxd_dpslp_reset_n */
const cyhal_resource_pin_mapping_t cyhal_pin_map_bless_mxd_dpslp_reset_n[1] = {
    {0u, 0u, NC, HSIOM_SEL_GPIO},
};

/* Connections for: bless_mxd_dpslp_ret_ldo_ol_hv */
const cyhal_resource_pin_mapping_t cyhal_pin_map_bless_mxd_dpslp_ret_ldo_ol_hv[1] = {
    {0u, 0u, NC, HSIOM_SEL_GPIO},
};

/* Connections for: bless_mxd_dpslp_ret_switch_hv */
const cyhal_resource_pin_mapping_t cyhal_pin_map_bless_mxd_dpslp_ret_switch_hv[1] = {
    {0u, 0u, NC, HSIOM_SEL_GPIO},
};

/* Connections for: bless_mxd_dpslp_xtal_en */
const cyhal_resource_pin_mapping_t cyhal_pin_map_bless_mxd_dpslp_xtal_en[1] = {
    {0u, 0u, NC, HSIOM_SEL_GPIO},
};

/* Connections for: cpuss_clk_fm_pump */
const cyhal_resource_pin_mapping_t cyhal_pin_map_cpuss_clk_fm_pump[1] = {
    {0u, 0u, P7_7, P7_7_CPUSS_CLK_FM_PUMP},
};

/* Connections for: cpuss_fault_out */
const cyhal_resource_pin_mapping_t cyhal_pin_map_cpuss_fault_out[1] = {
    {0u, 0u, NC, HSIOM_SEL_GPIO},
};

/* Connections for: cpuss_swj_swclk_tclk */
const cyhal_resource_pin_mapping_t cyhal_pin_map_cpuss_swj_swclk_tclk[1] = {
    {0u, 0u, P6_7, P6_7_CPUSS_SWJ_SWCLK_TCLK},
};

/* Connections for: cpuss_swj_swdio_tms */
const cyhal_resource_pin_mapping_t cyhal_pin_map_cpuss_swj_swdio_tms[1] = {
    {0u, 0u, P6_6, P6_6_CPUSS_SWJ_SWDIO_TMS},
};

/* Connections for: cpuss_swj_swdoe_tdi */
const cyhal_resource_pin_mapping_t cyhal_pin_map_cpuss_swj_swdoe_tdi[1] = {
    {0u, 0u, P6_5, P6_5_CPUSS_SWJ_SWDOE_TDI},
};

/* Connections for: cpuss_swj_swo_tdo */
const cyhal_resource_pin_mapping_t cyhal_pin_map_cpuss_swj_swo_tdo[1] = {
    {0u, 0u, P6_4, P6_4_CPUSS_SWJ_SWO_TDO},
};

/* Connections for: cpuss_swj_trstn */
const cyhal_resource_pin_mapping_t cyhal_pin_map_cpuss_swj_trstn[1] = {
    {0u, 0u, P0_1, P0_1_CPUSS_SWJ_TRSTN},
};

/* Connections for: cpuss_trace_clock */
const cyhal_resource_pin_mapping_t cyhal_pin_map_cpuss_trace_clock[1] = {
    {0u, 0u, NC, HSIOM_SEL_GPIO},
};

/* Connections for: cpuss_trace_data */
const cyhal_resource_pin_mapping_t cyhal_pin_map_cpuss_trace_data[9] = {
    {0u, 0u, P7_7, P7_7_CPUSS_TRACE_DATA0},
    {0u, 3u, P9_0, P9_0_CPUSS_TRACE_DATA3},
    {0u, 2u, P9_1, P9_1_CPUSS_TRACE_DATA2},
    {0u, 1u, P9_2, P9_2_CPUSS_TRACE_DATA1},
    {0u, 0u, P9_3, P9_3_CPUSS_TRACE_DATA0},
    {0u, 3u, P10_0, P10_0_CPUSS_TRACE_DATA3},
    {0u, 2u, P10_1, P10_1_CPUSS_TRACE_DATA2},
    {0u, 1u, P10_2, P10_2_CPUSS_TRACE_DATA1},
    {0u, 0u, P10_3, P10_3_CPUSS_TRACE_DATA0},
};

/* Connections for: dac_ctdac_voutsw */
const cyhal_resource_pin_mapping_t cyhal_pin_map_dac_ctdac_voutsw[1] = {
    {0u, 0u, P9_6, HSIOM_SEL_GPIO},
};

/* Connections for: lpcomp_dsi_comp */
const cyhal_resource_pin_mapping_t cyhal_pin_map_lpcomp_dsi_comp[1] = {
    {0u, 0u, NC, HSIOM_SEL_GPIO},
};

/* Connections for: lpcomp_inn_comp */
const cyhal_resource_pin_mapping_t cyhal_pin_map_lpcomp_inn_comp[1] = {
    {0u, 1u, P6_3, HSIOM_SEL_GPIO},
};

/* Connections for: lpcomp_inp_comp */
const cyhal_resource_pin_mapping_t cyhal_pin_map_lpcomp_inp_comp[2] = {
    {0u, 0u, P5_6, HSIOM_SEL_GPIO},
    {0u, 1u, P6_2, HSIOM_SEL_GPIO},
};

/* Connections for: opamp_dsi_ctb_cmp */
const cyhal_resource_pin_mapping_t cyhal_pin_map_opamp_dsi_ctb_cmp[2] = {
    {0u, 0u, P9_2, P9_2_PASS_DSI_CTB_CMP0},
    {0u, 1u, P9_3, P9_3_PASS_DSI_CTB_CMP1},
};

/* Connections for: opamp_out_10x */
const cyhal_resource_pin_mapping_t cyhal_pin_map_opamp_out_10x[2] = {
    {0u, 0u, P9_2, HSIOM_SEL_GPIO},
    {0u, 1u, P9_3, HSIOM_SEL_GPIO},
};

/* Connections for: opamp_vin_m */
const cyhal_resource_pin_mapping_t cyhal_pin_map_opamp_vin_m[2] = {
    {0u, 0u, P9_1, HSIOM_SEL_GPIO},
    {0u, 1u, P9_4, HSIOM_SEL_GPIO},
};

/* Connections for: opamp_vin_p0 */
const cyhal_resource_pin_mapping_t cyhal_pin_map_opamp_vin_p0[2] = {
    {0u, 0u, P9_0, HSIOM_SEL_GPIO},
    {0u, 1u, P9_5, HSIOM_SEL_GPIO},
};

/* Connections for: opamp_vin_p1 */
const cyhal_resource_pin_mapping_t cyhal_pin_map_opamp_vin_p1[1] = {
    {0u, 0u, P9_6, HSIOM_SEL_GPIO},
};

/* Connections for: pass_sarmux_pads */
const cyhal_resource_pin_mapping_t cyhal_pin_map_pass_sarmux_pads[7] = {
    {0u, 0u, P10_0, HSIOM_SEL_GPIO},
    {0u, 1u, P10_1, HSIOM_SEL_GPIO},
    {0u, 2u, P10_2, HSIOM_SEL_GPIO},
    {0u, 3u, P10_3, HSIOM_SEL_GPIO},
    {0u, 4u, P10_4, HSIOM_SEL_GPIO},
    {0u, 5u, P10_5, HSIOM_SEL_GPIO},
    {0u, 6u, P10_6, HSIOM_SEL_GPIO},
};

/* Connections for: peri_tr_io_input */
/* The actual channel_num has no value to how the connection works. However, the HAL driver needs
   to know the index of the input or output trigger line. Store that in the channel_num field
   instead. */
const cyhal_resource_pin_mapping_t cyhal_pin_map_peri_tr_io_input[11] = {
    {0u, 0u, P0_0, P0_0_PERI_TR_IO_INPUT0},
    {0u, 1u, P0_1, P0_1_PERI_TR_IO_INPUT1},
    {0u, 10u, P5_0, P5_0_PERI_TR_IO_INPUT10},
    {0u, 11u, P5_1, P5_1_PERI_TR_IO_INPUT11},
    {0u, 12u, P6_4, P6_4_PERI_TR_IO_INPUT12},
    {0u, 13u, P6_5, P6_5_PERI_TR_IO_INPUT13},
    {0u, 15u, P7_1, P7_1_PERI_TR_IO_INPUT15},
    {0u, 18u, P9_0, P9_0_PERI_TR_IO_INPUT18},
    {0u, 19u, P9_1, P9_1_PERI_TR_IO_INPUT19},
    {0u, 20u, P10_0, P10_0_PERI_TR_IO_INPUT20},
    {0u, 21u, P10_1, P10_1_PERI_TR_IO_INPUT21},
};

/* Connections for: peri_tr_io_output */
/* The actual channel_num has no value to how the connection works. However, the HAL driver needs
   to know the index of the input or output trigger line. Store that in the channel_num field
   instead. */
const cyhal_resource_pin_mapping_t cyhal_pin_map_peri_tr_io_output[4] = {
    {0u, 0u, P0_4, P0_4_PERI_TR_IO_OUTPUT0},
    {0u, 1u, P0_5, P0_5_PERI_TR_IO_OUTPUT1},
    {0u, 0u, P6_4, P6_4_PERI_TR_IO_OUTPUT0},
    {0u, 1u, P6_5, P6_5_PERI_TR_IO_OUTPUT1},
};

/* Connections for: scb_i2c_scl */
const cyhal_resource_pin_mapping_t cyhal_pin_map_scb_i2c_scl[5] = {
    {5u, 0u, P5_0, P5_0_SCB5_I2C_SCL},
    {6u, 0u, P6_4, P6_4_SCB6_I2C_SCL},
    {8u, 0u, P6_4, P6_4_SCB8_I2C_SCL},
    {2u, 0u, P9_0, P9_0_SCB2_I2C_SCL},
    {1u, 0u, P10_0, P10_0_SCB1_I2C_SCL},
};

/* Connections for: scb_i2c_sda */
const cyhal_resource_pin_mapping_t cyhal_pin_map_scb_i2c_sda[6] = {
    {5u, 0u, P5_1, P5_1_SCB5_I2C_SDA},
    {6u, 0u, P6_5, P6_5_SCB6_I2C_SDA},
    {8u, 0u, P6_5, P6_5_SCB8_I2C_SDA},
    {4u, 0u, P7_1, P7_1_SCB4_I2C_SDA},
    {2u, 0u, P9_1, P9_1_SCB2_I2C_SDA},
    {1u, 0u, P10_1, P10_1_SCB1_I2C_SDA},
};

/* Connections for: scb_spi_m_clk */
const cyhal_resource_pin_mapping_t cyhal_pin_map_scb_spi_m_clk[9] = {
    {0u, 0u, P0_4, P0_4_SCB0_SPI_CLK},
    {5u, 0u, P5_2, P5_2_SCB5_SPI_CLK},
    {3u, 0u, P6_2, P6_2_SCB3_SPI_CLK},
    {8u, 0u, P6_2, P6_2_SCB8_SPI_CLK},
    {6u, 0u, P6_6, P6_6_SCB6_SPI_CLK},
    {8u, 0u, P6_6, P6_6_SCB8_SPI_CLK},
    {4u, 0u, P7_2, P7_2_SCB4_SPI_CLK},
    {2u, 0u, P9_2, P9_2_SCB2_SPI_CLK},
    {1u, 0u, P10_2, P10_2_SCB1_SPI_CLK},
};

/* Connections for: scb_spi_m_miso */
const cyhal_resource_pin_mapping_t cyhal_pin_map_scb_spi_m_miso[6] = {
    {5u, 0u, P5_1, P5_1_SCB5_SPI_MISO},
    {6u, 0u, P6_5, P6_5_SCB6_SPI_MISO},
    {8u, 0u, P6_5, P6_5_SCB8_SPI_MISO},
    {4u, 0u, P7_1, P7_1_SCB4_SPI_MISO},
    {2u, 0u, P9_1, P9_1_SCB2_SPI_MISO},
    {1u, 0u, P10_1, P10_1_SCB1_SPI_MISO},
};

/* Connections for: scb_spi_m_mosi */
const cyhal_resource_pin_mapping_t cyhal_pin_map_scb_spi_m_mosi[5] = {
    {5u, 0u, P5_0, P5_0_SCB5_SPI_MOSI},
    {6u, 0u, P6_4, P6_4_SCB6_SPI_MOSI},
    {8u, 0u, P6_4, P6_4_SCB8_SPI_MOSI},
    {2u, 0u, P9_0, P9_0_SCB2_SPI_MOSI},
    {1u, 0u, P10_0, P10_0_SCB1_SPI_MOSI},
};

/* Connections for: scb_spi_m_select0 */
const cyhal_resource_pin_mapping_t cyhal_pin_map_scb_spi_m_select0[8] = {
    {0u, 0u, P0_5, P0_5_SCB0_SPI_SELECT0},
    {5u, 0u, P5_3, P5_3_SCB5_SPI_SELECT0},
    {3u, 0u, P6_3, P6_3_SCB3_SPI_SELECT0},
    {8u, 0u, P6_3, P6_3_SCB8_SPI_SELECT0},
    {6u, 0u, P6_7, P6_7_SCB6_SPI_SELECT0},
    {8u, 0u, P6_7, P6_7_SCB8_SPI_SELECT0},
    {2u, 0u, P9_3, P9_3_SCB2_SPI_SELECT0},
    {1u, 0u, P10_3, P10_3_SCB1_SPI_SELECT0},
};

/* Connections for: scb_spi_m_select1 */
const cyhal_resource_pin_mapping_t cyhal_pin_map_scb_spi_m_select1[5] = {
    {0u, 0u, P0_0, P0_0_SCB0_SPI_SELECT1},
    {5u, 0u, P5_4, P5_4_SCB5_SPI_SELECT1},
    {3u, 0u, P7_7, P7_7_SCB3_SPI_SELECT1},
    {2u, 0u, P9_4, P9_4_SCB2_SPI_SELECT1},
    {1u, 0u, P10_4, P10_4_SCB1_SPI_SELECT1},
};

/* Connections for: scb_spi_m_select2 */
const cyhal_resource_pin_mapping_t cyhal_pin_map_scb_spi_m_select2[4] = {
    {0u, 0u, P0_1, P0_1_SCB0_SPI_SELECT2},
    {5u, 0u, P5_5, P5_5_SCB5_SPI_SELECT2},
    {2u, 0u, P9_5, P9_5_SCB2_SPI_SELECT2},
    {1u, 0u, P10_5, P10_5_SCB1_SPI_SELECT2},
};

/* Connections for: scb_spi_m_select3 */
const cyhal_resource_pin_mapping_t cyhal_pin_map_scb_spi_m_select3[4] = {
    {5u, 0u, P5_6, P5_6_SCB5_SPI_SELECT3},
    {2u, 0u, P9_6, P9_6_SCB2_SPI_SELECT3},
    {1u, 0u, P10_6, P10_6_SCB1_SPI_SELECT3},
    {6u, 0u, P12_6, P12_6_SCB6_SPI_SELECT3},
};

/* Connections for: scb_spi_s_clk */
const cyhal_resource_pin_mapping_t cyhal_pin_map_scb_spi_s_clk[9] = {
    {0u, 0u, P0_4, P0_4_SCB0_SPI_CLK},
    {5u, 0u, P5_2, P5_2_SCB5_SPI_CLK},
    {3u, 0u, P6_2, P6_2_SCB3_SPI_CLK},
    {8u, 0u, P6_2, P6_2_SCB8_SPI_CLK},
    {6u, 0u, P6_6, P6_6_SCB6_SPI_CLK},
    {8u, 0u, P6_6, P6_6_SCB8_SPI_CLK},
    {4u, 0u, P7_2, P7_2_SCB4_SPI_CLK},
    {2u, 0u, P9_2, P9_2_SCB2_SPI_CLK},
    {1u, 0u, P10_2, P10_2_SCB1_SPI_CLK},
};

/* Connections for: scb_spi_s_miso */
const cyhal_resource_pin_mapping_t cyhal_pin_map_scb_spi_s_miso[6] = {
    {5u, 0u, P5_1, P5_1_SCB5_SPI_MISO},
    {6u, 0u, P6_5, P6_5_SCB6_SPI_MISO},
    {8u, 0u, P6_5, P6_5_SCB8_SPI_MISO},
    {4u, 0u, P7_1, P7_1_SCB4_SPI_MISO},
    {2u, 0u, P9_1, P9_1_SCB2_SPI_MISO},
    {1u, 0u, P10_1, P10_1_SCB1_SPI_MISO},
};

/* Connections for: scb_spi_s_mosi */
const cyhal_resource_pin_mapping_t cyhal_pin_map_scb_spi_s_mosi[5] = {
    {5u, 0u, P5_0, P5_0_SCB5_SPI_MOSI},
    {6u, 0u, P6_4, P6_4_SCB6_SPI_MOSI},
    {8u, 0u, P6_4, P6_4_SCB8_SPI_MOSI},
    {2u, 0u, P9_0, P9_0_SCB2_SPI_MOSI},
    {1u, 0u, P10_0, P10_0_SCB1_SPI_MOSI},
};

/* Connections for: scb_spi_s_select0 */
const cyhal_resource_pin_mapping_t cyhal_pin_map_scb_spi_s_select0[8] = {
    {0u, 0u, P0_5, P0_5_SCB0_SPI_SELECT0},
    {5u, 0u, P5_3, P5_3_SCB5_SPI_SELECT0},
    {3u, 0u, P6_3, P6_3_SCB3_SPI_SELECT0},
    {8u, 0u, P6_3, P6_3_SCB8_SPI_SELECT0},
    {6u, 0u, P6_7, P6_7_SCB6_SPI_SELECT0},
    {8u, 0u, P6_7, P6_7_SCB8_SPI_SELECT0},
    {2u, 0u, P9_3, P9_3_SCB2_SPI_SELECT0},
    {1u, 0u, P10_3, P10_3_SCB1_SPI_SELECT0},
};

/* Connections for: scb_spi_s_select1 */
const cyhal_resource_pin_mapping_t cyhal_pin_map_scb_spi_s_select1[5] = {
    {0u, 0u, P0_0, P0_0_SCB0_SPI_SELECT1},
    {5u, 0u, P5_4, P5_4_SCB5_SPI_SELECT1},
    {3u, 0u, P7_7, P7_7_SCB3_SPI_SELECT1},
    {2u, 0u, P9_4, P9_4_SCB2_SPI_SELECT1},
    {1u, 0u, P10_4, P10_4_SCB1_SPI_SELECT1},
};

/* Connections for: scb_spi_s_select2 */
const cyhal_resource_pin_mapping_t cyhal_pin_map_scb_spi_s_select2[4] = {
    {0u, 0u, P0_1, P0_1_SCB0_SPI_SELECT2},
    {5u, 0u, P5_5, P5_5_SCB5_SPI_SELECT2},
    {2u, 0u, P9_5, P9_5_SCB2_SPI_SELECT2},
    {1u, 0u, P10_5, P10_5_SCB1_SPI_SELECT2},
};

/* Connections for: scb_spi_s_select3 */
const cyhal_resource_pin_mapping_t cyhal_pin_map_scb_spi_s_select3[4] = {
    {5u, 0u, P5_6, P5_6_SCB5_SPI_SELECT3},
    {2u, 0u, P9_6, P9_6_SCB2_SPI_SELECT3},
    {1u, 0u, P10_6, P10_6_SCB1_SPI_SELECT3},
    {6u, 0u, P12_6, P12_6_SCB6_SPI_SELECT3},
};

/* Connections for: scb_uart_cts */
const cyhal_resource_pin_mapping_t cyhal_pin_map_scb_uart_cts[6] = {
    {0u, 0u, P0_5, P0_5_SCB0_UART_CTS},
    {5u, 0u, P5_3, P5_3_SCB5_UART_CTS},
    {3u, 0u, P6_3, P6_3_SCB3_UART_CTS},
    {6u, 0u, P6_7, P6_7_SCB6_UART_CTS},
    {2u, 0u, P9_3, P9_3_SCB2_UART_CTS},
    {1u, 0u, P10_3, P10_3_SCB1_UART_CTS},
};

/* Connections for: scb_uart_rts */
const cyhal_resource_pin_mapping_t cyhal_pin_map_scb_uart_rts[7] = {
    {0u, 0u, P0_4, P0_4_SCB0_UART_RTS},
    {5u, 0u, P5_2, P5_2_SCB5_UART_RTS},
    {3u, 0u, P6_2, P6_2_SCB3_UART_RTS},
    {6u, 0u, P6_6, P6_6_SCB6_UART_RTS},
    {4u, 0u, P7_2, P7_2_SCB4_UART_RTS},
    {2u, 0u, P9_2, P9_2_SCB2_UART_RTS},
    {1u, 0u, P10_2, P10_2_SCB1_UART_RTS},
};

/* Connections for: scb_uart_rx */
const cyhal_resource_pin_mapping_t cyhal_pin_map_scb_uart_rx[4] = {
    {5u, 0u, P5_0, P5_0_SCB5_UART_RX},
    {6u, 0u, P6_4, P6_4_SCB6_UART_RX},
    {2u, 0u, P9_0, P9_0_SCB2_UART_RX},
    {1u, 0u, P10_0, P10_0_SCB1_UART_RX},
};

/* Connections for: scb_uart_tx */
const cyhal_resource_pin_mapping_t cyhal_pin_map_scb_uart_tx[5] = {
    {5u, 0u, P5_1, P5_1_SCB5_UART_TX},
    {6u, 0u, P6_5, P6_5_SCB6_UART_TX},
    {4u, 0u, P7_1, P7_1_SCB4_UART_TX},
    {2u, 0u, P9_1, P9_1_SCB2_UART_TX},
    {1u, 0u, P10_1, P10_1_SCB1_UART_TX},
};

/* Connections for: smif_spi_clk */
const cyhal_resource_pin_mapping_t cyhal_pin_map_smif_spi_clk[1] = {
    {0u, 0u, NC, HSIOM_SEL_GPIO},
};

/* Connections for: smif_spi_data0 */
const cyhal_resource_pin_mapping_t cyhal_pin_map_smif_spi_data0[1] = {
    {0u, 0u, NC, HSIOM_SEL_GPIO},
};

/* Connections for: smif_spi_data1 */
const cyhal_resource_pin_mapping_t cyhal_pin_map_smif_spi_data1[1] = {
    {0u, 0u, NC, HSIOM_SEL_GPIO},
};

/* Connections for: smif_spi_data2 */
const cyhal_resource_pin_mapping_t cyhal_pin_map_smif_spi_data2[1] = {
    {0u, 0u, NC, HSIOM_SEL_GPIO},
};

/* Connections for: smif_spi_data3 */
const cyhal_resource_pin_mapping_t cyhal_pin_map_smif_spi_data3[1] = {
    {0u, 0u, NC, HSIOM_SEL_GPIO},
};

/* Connections for: smif_spi_data4 */
const cyhal_resource_pin_mapping_t cyhal_pin_map_smif_spi_data4[1] = {
    {0u, 0u, NC, HSIOM_SEL_GPIO},
};

/* Connections for: smif_spi_data5 */
const cyhal_resource_pin_mapping_t cyhal_pin_map_smif_spi_data5[1] = {
    {0u, 0u, NC, HSIOM_SEL_GPIO},
};

/* Connections for: smif_spi_data6 */
const cyhal_resource_pin_mapping_t cyhal_pin_map_smif_spi_data6[1] = {
    {0u, 0u, NC, HSIOM_SEL_GPIO},
};

/* Connections for: smif_spi_data7 */
const cyhal_resource_pin_mapping_t cyhal_pin_map_smif_spi_data7[1] = {
    {0u, 0u, NC, HSIOM_SEL_GPIO},
};

/* Connections for: smif_spi_select0 */
const cyhal_resource_pin_mapping_t cyhal_pin_map_smif_spi_select0[1] = {
    {0u, 0u, NC, HSIOM_SEL_GPIO},
};

/* Connections for: smif_spi_select1 */
const cyhal_resource_pin_mapping_t cyhal_pin_map_smif_spi_select1[1] = {
    {0u, 0u, NC, HSIOM_SEL_GPIO},
};

/* Connections for: smif_spi_select2 */
const cyhal_resource_pin_mapping_t cyhal_pin_map_smif_spi_select2[1] = {
    {0u, 0u, NC, HSIOM_SEL_GPIO},
};

/* Connections for: smif_spi_select3 */
const cyhal_resource_pin_mapping_t cyhal_pin_map_smif_spi_select3[1] = {
    {0u, 0u, NC, HSIOM_SEL_GPIO},
};

/* Connections for: tcpwm_line */
const cyhal_resource_pin_mapping_t cyhal_pin_map_tcpwm_line[38] = {
    {0u, 0u, P0_0, P0_0_TCPWM0_LINE0},
    {1u, 0u, P0_0, P0_0_TCPWM1_LINE0},
    {0u, 2u, P0_4, P0_4_TCPWM0_LINE2},
    {1u, 2u, P0_4, P0_4_TCPWM1_LINE2},
    {0u, 4u, P5_0, P5_0_TCPWM0_LINE4},
    {1u, 4u, P5_0, P5_0_TCPWM1_LINE4},
    {0u, 5u, P5_2, P5_2_TCPWM0_LINE5},
    {1u, 5u, P5_2, P5_2_TCPWM1_LINE5},
    {0u, 6u, P5_4, P5_4_TCPWM0_LINE6},
    {1u, 6u, P5_4, P5_4_TCPWM1_LINE6},
    {0u, 7u, P5_6, P5_6_TCPWM0_LINE7},
    {1u, 7u, P5_6, P5_6_TCPWM1_LINE7},
    {0u, 1u, P6_2, P6_2_TCPWM0_LINE1},
    {1u, 9u, P6_2, P6_2_TCPWM1_LINE9},
    {0u, 2u, P6_4, P6_4_TCPWM0_LINE2},
    {1u, 10u, P6_4, P6_4_TCPWM1_LINE10},
    {0u, 3u, P6_6, P6_6_TCPWM0_LINE3},
    {1u, 11u, P6_6, P6_6_TCPWM1_LINE11},
    {0u, 5u, P7_2, P7_2_TCPWM0_LINE5},
    {1u, 13u, P7_2, P7_2_TCPWM1_LINE13},
    {0u, 4u, P9_0, P9_0_TCPWM0_LINE4},
    {1u, 20u, P9_0, P9_0_TCPWM1_LINE20},
    {0u, 5u, P9_2, P9_2_TCPWM0_LINE5},
    {1u, 21u, P9_2, P9_2_TCPWM1_LINE21},
    {0u, 7u, P9_4, P9_4_TCPWM0_LINE7},
    {1u, 0u, P9_4, P9_4_TCPWM1_LINE0},
    {0u, 0u, P9_6, P9_6_TCPWM0_LINE0},
    {1u, 1u, P9_6, P9_6_TCPWM1_LINE1},
    {0u, 6u, P10_0, P10_0_TCPWM0_LINE6},
    {1u, 22u, P10_0, P10_0_TCPWM1_LINE22},
    {0u, 7u, P10_2, P10_2_TCPWM0_LINE7},
    {1u, 23u, P10_2, P10_2_TCPWM1_LINE23},
    {0u, 0u, P10_4, P10_4_TCPWM0_LINE0},
    {1u, 0u, P10_4, P10_4_TCPWM1_LINE0},
    {0u, 1u, P10_6, P10_6_TCPWM0_LINE1},
    {1u, 2u, P10_6, P10_6_TCPWM1_LINE2},
    {0u, 7u, P12_6, P12_6_TCPWM0_LINE7},
    {1u, 7u, P12_6, P12_6_TCPWM1_LINE7},
};

/* Connections for: tcpwm_line_compl */
const cyhal_resource_pin_mapping_t cyhal_pin_map_tcpwm_line_compl[34] = {
    {0u, 0u, P0_1, P0_1_TCPWM0_LINE_COMPL0},
    {1u, 0u, P0_1, P0_1_TCPWM1_LINE_COMPL0},
    {0u, 2u, P0_5, P0_5_TCPWM0_LINE_COMPL2},
    {1u, 2u, P0_5, P0_5_TCPWM1_LINE_COMPL2},
    {0u, 4u, P5_1, P5_1_TCPWM0_LINE_COMPL4},
    {1u, 4u, P5_1, P5_1_TCPWM1_LINE_COMPL4},
    {0u, 5u, P5_3, P5_3_TCPWM0_LINE_COMPL5},
    {1u, 5u, P5_3, P5_3_TCPWM1_LINE_COMPL5},
    {0u, 6u, P5_5, P5_5_TCPWM0_LINE_COMPL6},
    {1u, 6u, P5_5, P5_5_TCPWM1_LINE_COMPL6},
    {0u, 1u, P6_3, P6_3_TCPWM0_LINE_COMPL1},
    {1u, 9u, P6_3, P6_3_TCPWM1_LINE_COMPL9},
    {0u, 2u, P6_5, P6_5_TCPWM0_LINE_COMPL2},
    {1u, 10u, P6_5, P6_5_TCPWM1_LINE_COMPL10},
    {0u, 3u, P6_7, P6_7_TCPWM0_LINE_COMPL3},
    {1u, 11u, P6_7, P6_7_TCPWM1_LINE_COMPL11},
    {0u, 4u, P7_1, P7_1_TCPWM0_LINE_COMPL4},
    {1u, 12u, P7_1, P7_1_TCPWM1_LINE_COMPL12},
    {0u, 7u, P7_7, P7_7_TCPWM0_LINE_COMPL7},
    {1u, 15u, P7_7, P7_7_TCPWM1_LINE_COMPL15},
    {0u, 4u, P9_1, P9_1_TCPWM0_LINE_COMPL4},
    {1u, 20u, P9_1, P9_1_TCPWM1_LINE_COMPL20},
    {0u, 5u, P9_3, P9_3_TCPWM0_LINE_COMPL5},
    {1u, 21u, P9_3, P9_3_TCPWM1_LINE_COMPL21},
    {0u, 7u, P9_5, P9_5_TCPWM0_LINE_COMPL7},
    {1u, 0u, P9_5, P9_5_TCPWM1_LINE_COMPL0},
    {0u, 6u, P10_1, P10_1_TCPWM0_LINE_COMPL6},
    {1u, 22u, P10_1, P10_1_TCPWM1_LINE_COMPL22},
    {0u, 7u, P10_3, P10_3_TCPWM0_LINE_COMPL7},
    {1u, 23u, P10_3, P10_3_TCPWM1_LINE_COMPL23},
    {0u, 0u, P10_5, P10_5_TCPWM0_LINE_COMPL0},
    {1u, 0u, P10_5, P10_5_TCPWM1_LINE_COMPL0},
    {0u, 7u, P12_7, P12_7_TCPWM0_LINE_COMPL7},
    {1u, 7u, P12_7, P12_7_TCPWM1_LINE_COMPL7},
};

/* Connections for: usb_usb_dm_pad */
const cyhal_resource_pin_mapping_t cyhal_pin_map_usb_usb_dm_pad[1] = {
    {0u, 0u, NC, HSIOM_SEL_GPIO},
};

/* Connections for: usb_usb_dp_pad */
const cyhal_resource_pin_mapping_t cyhal_pin_map_usb_usb_dp_pad[1] = {
    {0u, 0u, NC, HSIOM_SEL_GPIO},
};

#endif
