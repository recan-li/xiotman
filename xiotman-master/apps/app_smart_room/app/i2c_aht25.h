
#ifndef __I2C_AHT25_H__
#define __I2C_AHT25_H__

#include "hal_data.h"

#ifdef __cplusplus
extern "C"{
#endif
 
#define AHT25_SLAVE_ADDRESS		0x38		/* I2C从机地址 */
 
//****************************************
// 定义 AHT25 内部地址
//****************************************
#define	AHT25_STATUS_REG		0x00	//状态字 寄存器地址
#define	AHT25_INIT_REG			0xE1	//初始化 寄存器地址
#define	AHT25_SoftReset			0xBA	//软复位 单指令
#define	AHT25_TrigMeasure_REG	0xAC	//触发测量 寄存器地址
  
extern int i2c_aht25_init(void);
extern int i2c_aht25_update(uint32_t *t_out, uint32_t *h_out);

#ifdef __cplusplus
}
#endif

#endif