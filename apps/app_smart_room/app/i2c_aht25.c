#include "rtthread.h"
#include "i2c_aht25.h"
#include "hal_data.h"

#define MAX_CNT 		500
#define I2C_API_CTRL 	&g_i2c3_ctrl
#define I2C_API_CFG 	&g_i2c3_cfg

static i2c_master_event_t g_i2c_callback_status;

static void ra_i2c_init(void)
{
	fsp_err_t err;
    err = R_SCI_I2C_Open(I2C_API_CTRL, I2C_API_CFG);
    assert(FSP_SUCCESS == err);	
}

void sci_i2c3_master_callback(i2c_master_callback_args_t * p_args)
{
	//rt_kprintf("event: %d\n", p_args->event);
	g_i2c_callback_status = p_args->event;
}

static fsp_err_t R_SCI_I2C_Write_Sync(
							uint8_t * const           p_src,
                           	uint32_t const            bytes,
                           	bool const                restart)
{
	uint16_t i = 0;
	fsp_err_t err = 0;

	g_i2c_callback_status = I2C_MASTER_EVENT_ABORTED;
	err = R_SCI_I2C_Write(I2C_API_CTRL, p_src, bytes, restart);
	while (i++ > MAX_CNT) {		
		if (g_i2c_callback_status == I2C_MASTER_EVENT_TX_COMPLETE) {
			break;
		} else {
			rt_thread_mdelay(1);
		}
	}

	//rt_kprintf("i=%d\n", i);
	return err;	
}

static fsp_err_t R_SCI_I2C_Read_Sync(
							uint8_t * const           	p_dest,
                          	uint32_t const            	bytes,
                          	bool const                	restart)
{
	uint16_t i = 0;
	fsp_err_t err = 0;

	g_i2c_callback_status = I2C_MASTER_EVENT_ABORTED;
	err = R_SCI_I2C_Read(I2C_API_CTRL, p_dest, bytes, restart);
	while (i++ > MAX_CNT) {
		if (g_i2c_callback_status == I2C_MASTER_EVENT_RX_COMPLETE) {
			break;
		} else {
			rt_thread_mdelay(1);
		}
	}

	rt_thread_mdelay(5);
	//rt_kprintf("i=%d\n", i);
	return err;	
}

static uint8_t AHT25_Read_Status(void)
{
	uint8_t data[1] = {0x00};	

	R_SCI_I2C_Write_Sync(data, sizeof(data), 1);

	data[0] = 0xFF;
	R_SCI_I2C_Read_Sync(data, sizeof(data), 0);
	//rt_kprintf("sw: 0x%02x\n", data[0]);

	return data[0];
}

static void reset_AHT25(void)
{
	uint8_t data[] = {AHT25_SoftReset};

	//rt_kprintf("send: %02x\n", data[0]);
	R_SCI_I2C_Write_Sync(data, sizeof(data), 0);
}

static void JH_Reset_REG(uint8_t addr)
{
	uint8_t data[5] = {0};

	data[0] = addr;
	data[1] = 0x00;
	data[2] = 0x00;
	//rt_kprintf("1send: %02x %02x %02x\n", data[0], data[1], data[2]);
	R_SCI_I2C_Write_Sync(data, 3, 0);

	rt_thread_mdelay(5);

	memset(data, 0, sizeof(data));
	R_SCI_I2C_Read_Sync(data, 3, 0);
	//rt_kprintf("2recv: %02x %02x %02x\n", data[0], data[1], data[2]);
	
    rt_thread_mdelay(10);

	data[0] = 0xB0|addr;
	//rt_kprintf("3send: %02x %02x %02x\n", data[0], data[1], data[2]);
	R_SCI_I2C_Write_Sync(data, 3, 0);
}

static void reg_AHT25(void)
{
	JH_Reset_REG(0x1b);
	JH_Reset_REG(0x1c);
	JH_Reset_REG(0x1e);
}

static void init_AHT25(void)
{
	uint8_t data[] = {0xE1, 0x08, 0x00};

	//rt_kprintf("send: %02x %02x %02x\n", data[0], data[1], data[2]);
	R_SCI_I2C_Write_Sync(data, sizeof(data), 0);
}

static void startMeasure_AHT25(void)
{
	uint8_t data[] = {0xAC, 0x33, 0x00};

	//rt_kprintf("send: %02x %02x %02x\n", data[0], data[1], data[2]);
	R_SCI_I2C_Write_Sync(data, sizeof(data), 0);
}

static int read_AHT25(uint32_t *t_out, uint32_t *h_out)
{
	uint8_t readByte[6] = {0};
	uint32_t  H1 = 0;  //Humility
	uint32_t  T1 = 0;  //Temperature
	uint8_t   AHT25_OutData[4];

	R_SCI_I2C_Read_Sync(readByte, sizeof(readByte), 0);

	if( (readByte[0] & 0x68) == 0x08 )
	{
		H1 = readByte[1];
		H1 = (H1<<8) | readByte[2];
		H1 = (H1<<8) | readByte[3];
		H1 = H1>>4;

		H1 = (H1*1000)/1024/1024;

		T1 = readByte[3];
		T1 = T1 & 0x0000000F;
		T1 = (T1<<8) | readByte[4];
		T1 = (T1<<8) | readByte[5];

		T1 = (T1*2000)/1024/1024 - 500;

		AHT25_OutData[0] = (H1>>8) & 0x000000FF;
		AHT25_OutData[1] = H1 & 0x000000FF;

		AHT25_OutData[2] = (T1>>8) & 0x000000FF;
		AHT25_OutData[3] = T1 & 0x000000FF;
	}
	else
	{
		AHT25_OutData[0] = 0xFF;
		AHT25_OutData[1] = 0xFF;

		AHT25_OutData[2] = 0xFF;
		AHT25_OutData[3] = 0xFF;
		rt_kprintf("error\n");
		return -1;
	}

	*t_out = T1;
	*h_out = H1;

	return 0;
}

static int read_AHT25_once(uint32_t *t_out, uint32_t *h_out)
{
	uint8_t status;
	static uint8_t is_frist = 0;

	if (!is_frist) {
		is_frist = 1;
		rt_thread_mdelay(100);
		status = AHT25_Read_Status();
		if ((status & 0x18) != 0x18) {
			reg_AHT25();
			AHT25_Read_Status();	
		}

		reset_AHT25();//重置AHT25芯片
		rt_thread_mdelay(10);

		init_AHT25();//初始化AHT25芯片
		rt_thread_mdelay(10);
	}

	startMeasure_AHT25();//开始测试AHT25芯片
	rt_thread_mdelay(80);

	status = AHT25_Read_Status();

	return read_AHT25(t_out, h_out);//读取AHT25采集的到的数据
}

int i2c_aht25_init(void)
{
	ra_i2c_init();
    return 0;	
}

int i2c_aht25_update(uint32_t *t_out, uint32_t *h_out)
{
	return read_AHT25_once(t_out, h_out);
}
