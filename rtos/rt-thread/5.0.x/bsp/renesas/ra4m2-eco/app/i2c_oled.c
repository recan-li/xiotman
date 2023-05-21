#include "rtthread.h"
#include "i2c_oled.h"
#include "i2c_oled_font.h"
#include "i2c_aht25.h"
#include "hal_data.h"
#include "smart_room.h"

#define OLED_SLAVE_ADDRESS		0x3C		/* I2C从机地址 */
 
#define MAX_CNT 				500
#define I2C_API_CTRL 			&g_i2c2_ctrl
#define I2C_API_CFG 			&g_i2c2_cfg

static i2c_master_event_t g_i2c_callback_status;

static void ra_i2c_init(void)
{
	fsp_err_t err;
    err = R_SCI_I2C_Open(I2C_API_CTRL, I2C_API_CFG);
    assert(FSP_SUCCESS == err);	
}

void sci_i2c2_master_callback(i2c_master_callback_args_t * p_args)
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

	rt_thread_mdelay(1);
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

	//rt_thread_mdelay(5);
	//rt_kprintf("i=%d\n", i);
	return err;	
}

/////////////////////////////////////////////////////////

#define OLED_CMD  		0	//Ð´ÃüÁî
#define OLED_DATA 		1	//Ð´Êý¾Ý
#define OLED_MODE 		0
#define SIZE 			16
#define XLevelL			0x02
#define XLevelH			0x10
#define Max_Column		128
#define Max_Row			64
#define	Brightness		0xFF 
#define X_WIDTH 		128
#define Y_WIDTH 		64	
#define LCD_WIDTH_MAX 	128
#define LCD_HEIGHT_MAX 	64

#define LCD_MODE_NONE 	0x01
#define LCD_MODE_MIDDLE 0x02
#define LCD_MODE_LEFT 	0x04
#define LCD_MODE_RIGHT 	0x08

//OLED的显存
//存放格式如下.
//[0]0 1 2 3 ... 127	
//[1]0 1 2 3 ... 127	
//[2]0 1 2 3 ... 127	
//[3]0 1 2 3 ... 127	
//[4]0 1 2 3 ... 127	
//[5]0 1 2 3 ... 127	
//[6]0 1 2 3 ... 127	
//[7]0 1 2 3 ... 127 

/**********************************************
// IIC Write Command
**********************************************/
void Write_IIC_Command(uint8_t IIC_Command)
{
	uint8_t data[2] = {0};

	data[0] = 0x00;
	data[1] = IIC_Command;

	R_SCI_I2C_Write_Sync(data, sizeof(data), 0);
}

/**********************************************
// IIC Write Data
**********************************************/
void Write_IIC_Data(uint8_t IIC_Data)
{
	uint8_t data[2] = {0};

	data[0] = 0x40;
	data[1] = IIC_Data;

	R_SCI_I2C_Write_Sync(data, sizeof(data), 0);
}

void OLED_WR_Byte(unsigned dat, unsigned cmd)
{
	if(cmd) {
		Write_IIC_Data(dat);
	} else {
   		Write_IIC_Command(dat);
	}
}

#if 0
/********************************************
// fill_Picture
********************************************/
void fill_picture(uint8_t fill_Data)
{
	uint8_t m, n;

	for(m=0;m<8;m++) {
		OLED_WR_Byte(0xb0+m, 0);		//page0-page1
		OLED_WR_Byte(0x00, 0);		//low column start address
		OLED_WR_Byte(0x10, 0);		//high column start address
		for(n=0;n<128;n++) {
			OLED_WR_Byte(fill_Data, 1);
		}
	}
}
#endif

#if 0
/***********************Delay****************************************/
void Delay_50ms(uint32_t Del_50ms)
{
	uint32_t m;
	for(;Del_50ms>0;Del_50ms--)
		for(m=6245;m>0;m--);
}

void Delay_1ms(uint32_t Del_1ms)
{
	uint8_t j;
	while(Del_1ms--)
	{	
		for(j=0;j<123;j++);
	}
}
#endif

//坐标设置
void OLED_Set_Pos(uint8_t x,  uint8_t y) 
{ 	
	OLED_WR_Byte(0xb0+y, OLED_CMD);
	OLED_WR_Byte(((x&0xf0)>>4)|0x10, OLED_CMD);
	OLED_WR_Byte((x&0x0f), OLED_CMD); 
} 

//开启OLED显示    
void OLED_Display_On(void)
{
	OLED_WR_Byte(0X8D, OLED_CMD);  //SET DCDC命令
	OLED_WR_Byte(0X14, OLED_CMD);  //DCDC ON
	OLED_WR_Byte(0XAF, OLED_CMD);  //DISPLAY ON
}

//关闭OLED显示     
void OLED_Display_Off(void)
{
	OLED_WR_Byte(0X8D, OLED_CMD);  //SET DCDC命令
	OLED_WR_Byte(0X10, OLED_CMD);  //DCDC OFF
	OLED_WR_Byte(0XAE, OLED_CMD);  //DISPLAY OFF
}	

//清屏函数, 清完屏, 整个屏幕是黑色的!和没点亮一样!!!	  
void OLED_Clear(void)  
{  
	uint8_t i, n;		    
	for(i=0;i<8;i++)  
	{  
		OLED_WR_Byte (0xb0+i, OLED_CMD);    //设置页地址（0~7）
		OLED_WR_Byte (0x00, OLED_CMD);      //设置显示位置―列低地址
		OLED_WR_Byte (0x10, OLED_CMD);      //设置显示位置―列高地址   
		for(n=0;n<128;n++)OLED_WR_Byte(0, OLED_DATA); 
	} //更新显示
}

void OLED_On(void)  
{  
	uint8_t i, n;	

	for(i=0;i<8;i++)  
	{  
		OLED_WR_Byte (0xb0+i, OLED_CMD);    //设置页地址（0~7）
		OLED_WR_Byte (0x00, OLED_CMD);      //设置显示位置―列低地址
		OLED_WR_Byte (0x10, OLED_CMD);      //设置显示位置―列高地址   
		for(n=0;n<128;n++)OLED_WR_Byte(1, OLED_DATA); 
	} //更新显示
}

//在指定位置显示一个字符, 包括部分字符
//x:0~127
//y:0~63
//mode:0, 反白显示;1, 正常显示				 
//size:选择字体 16/12 
void OLED_ShowChar(uint8_t x, uint8_t y, uint8_t chr, uint8_t char_size)
{      	
	uint8_t c=0, i=0;

	c=chr-' ';//得到偏移后的值			
	if(x>Max_Column-1){x=0;y=y+2;}
	if(char_size ==16)
	{
		OLED_Set_Pos(x, y);	
		for(i=0;i<8;i++)
		{
			OLED_WR_Byte(F8X16[c*16+i], OLED_DATA);
		}
		OLED_Set_Pos(x, y+1);
		for(i=0;i<8;i++)
		{
			OLED_WR_Byte(F8X16[c*16+i+8], OLED_DATA);
		}
	}
	else 
	{	
		OLED_Set_Pos(x, y);
		for(i=0;i<6;i++)
		{
			OLED_WR_Byte(F6x8[c][i], OLED_DATA);
		}
	}
}

#if 0
//m^n函数
u32 oled_pow(uint8_t m, uint8_t n)
{
	u32 result=1;

	while(n--)
	{
		result*=m;
	}

	return result;
}

//显示2个数字
//x, y :起点坐标	 
//len :数字的位数
//size:字体大小
//mode:模式	0, 填充模式;1, 叠加模式
//num:数值(0~4294967295);	 		  
void OLED_ShowNum(uint8_t x, uint8_t y, u32 num, uint8_t len, uint8_t size2)
{         	
	uint8_t t, temp;
	uint8_t enshow=0;						   
	for(t=0;t<len;t++)
	{
		temp=(num/oled_pow(10, len-t-1))%10;
		if(enshow==0&&t<(len-1))
		{
			if(temp==0)
			{
				OLED_ShowChar(x+(size2/2)*t, y, ' ', size2);
				continue;
			}
			else 
			{
				enshow=1;
			} 
		 	 
		}
	 	OLED_ShowChar(x+(size2/2)*t, y, temp+'0', size2); 
	}
}
#endif

//显示一个字符号串
void lcd_display_string(uint8_t x, uint8_t y, uint8_t *chr, uint8_t char_size)
{
	uint8_t j=0;
	while (chr[j]!='\0')
	{		
		OLED_ShowChar(x, y, chr[j], char_size);
		x+=8;
		if(x>120)
		{
			x=0;
			y+=2;
		}
		j++;
	}
}

//x: 0-128 y:0-7
void lcd_line_display_string(uint8_t line, uint8_t x, uint8_t *chr, uint8_t char_size, uint8_t mode)
{
	uint8_t new_x;
	uint8_t len = strlen(chr);

	if (mode & LCD_MODE_NONE) {
		new_x = x;
	} else if (mode & LCD_MODE_MIDDLE) {
		new_x = (LCD_WIDTH_MAX - len * (char_size >> 1)) >> 1;
	} else if (mode & LCD_MODE_LEFT) {
		new_x = 0;
	} else if (mode & LCD_MODE_RIGHT) {
		new_x = LCD_WIDTH_MAX - len * (char_size >> 1);
	} else {
		new_x = x;
	}

	if (line < 4) {
		lcd_display_string(new_x, line << 1, chr, char_size);
	}
}

//显示汉字 x: 0-128 y:0-7
void lcd_display_string_ch(uint8_t x, uint8_t y, uint8_t no, const uint8_t ch[][32])
{      			    
	uint8_t t, adder=0;

	OLED_Set_Pos(x, y);	
    for(t=0; t<16; t++) 
    {
		OLED_WR_Byte(ch[2*no][t],  OLED_DATA);
		adder+=1;
    }	
	
	OLED_Set_Pos(x, y+1);	
    for(t=0; t<16; t++) 
    {	
		OLED_WR_Byte(ch[2*no+1][t],  OLED_DATA);
		adder+=1;
    }					
}

void lcd_line_display_string_ch(uint8_t x, uint8_t line, uint8_t no, const uint8_t ch[][32])
{
	return lcd_display_string_ch(x, line << 1, no, ch);
}

#if 0
void OLED_ShowChineseString(uint8_t x,  uint8_t y,  uint8_t no)
{

}
#endif

void OLED_ShowNum(uint8_t x, uint8_t y, uint8_t chr_hex, uint8_t char_size)
{
	uint8_t h, l;

	h = (chr_hex >> 4);
	if (0 <= h && h <= 0x09) {
		h += '0';
	} else {
		h += 'A';
	}
	l = (chr_hex & 0x0F);
	if (0 <= l && l <= 0x09) {
		l += '0';
	} else {
		l += 'A';
	}
	OLED_ShowChar(x, y, h, char_size);
	OLED_ShowChar(x + char_size / 2, y, l, char_size);
}

/***********功能描述：显示显示BMP图片128×64起始点坐标(x, y), x的范围0～127，y为页的范围0～7*****************/
void lcd_display_bmp(uint8_t x0,  uint8_t y0, uint8_t x1,  uint8_t y1, uint8_t BMP[])
{ 	
	uint32_t j=0;
	uint8_t x, y;

	if(y1%8==0) {
		y=y1/8;      
	} else {
		y=y1/8+1;
	}

	for(y=y0;y<y1;y++) {
		OLED_Set_Pos(x0, y);
		for(x=x0;x<x1;x++) {      
			OLED_WR_Byte(BMP[j++], OLED_DATA);	    	
		}
	}
} 

//初始化SSD1306					    
void OLED_Init(void)
{ 	
	OLED_WR_Byte(0xAE, OLED_CMD);//--display off
	OLED_WR_Byte(0x00, OLED_CMD);//---set low column address
	OLED_WR_Byte(0x10, OLED_CMD);//---set high column address
	OLED_WR_Byte(0x40, OLED_CMD);//--set start line address  
	OLED_WR_Byte(0xB0, OLED_CMD);//--set page address
	OLED_WR_Byte(0x81, OLED_CMD); // contract control
	OLED_WR_Byte(0xFF, OLED_CMD);//--128   
	OLED_WR_Byte(0xA1, OLED_CMD);//set segment remap 
	OLED_WR_Byte(0xA6, OLED_CMD);//--normal / reverse
	OLED_WR_Byte(0xA8, OLED_CMD);//--set multiplex ratio(1 to 64)
	OLED_WR_Byte(0x3F, OLED_CMD);//--1/32 duty
	OLED_WR_Byte(0xC8, OLED_CMD);//Com scan direction
	OLED_WR_Byte(0xD3, OLED_CMD);//-set display offset
	OLED_WR_Byte(0x00, OLED_CMD);//
	
	OLED_WR_Byte(0xD5, OLED_CMD);//set osc division
	OLED_WR_Byte(0x80, OLED_CMD);//
	
	OLED_WR_Byte(0xD8, OLED_CMD);//set area color mode off
	OLED_WR_Byte(0x05, OLED_CMD);//
	
	OLED_WR_Byte(0xD9, OLED_CMD);//Set Pre-Charge Period
	OLED_WR_Byte(0xF1, OLED_CMD);//
	
	OLED_WR_Byte(0xDA, OLED_CMD);//set com pin configuartion
	OLED_WR_Byte(0x12, OLED_CMD);//
	
	OLED_WR_Byte(0xDB, OLED_CMD);//set Vcomh
	OLED_WR_Byte(0x30, OLED_CMD);//
	
	OLED_WR_Byte(0x8D, OLED_CMD);//set charge pump enable
	OLED_WR_Byte(0x14, OLED_CMD);//
	
	OLED_WR_Byte(0xAF, OLED_CMD);//--turn on oled panel
} 

void lcd_oled_init(void)
{
	OLED_Init();			//初始化OLED  
	OLED_Clear(); 
} 

void lcd_on(void)
{
	OLED_Display_On();
}

void lcd_off(void)
{
	OLED_Display_Off();
}

void lcd_clear(void)
{
	OLED_Clear();
}

#if 1
void i2c_oled_test_main(void)
{	
 	uint8_t t;

	OLED_Init();			//初始化OLED  
	OLED_Clear(); 

	t=' ';

	while(1) 
	{		
		OLED_Clear();

		lcd_line_display_string_ch( 0, 0, 0, string_ch);
		lcd_line_display_string_ch(16, 0, 1, string_ch);
		lcd_line_display_string_ch(32, 0, 2, string_ch);
		lcd_line_display_string_ch(48, 0, 3, string_ch);

		//lcd_display_string(0, 0, "Smart Room Center", 16);
		lcd_display_string(6, 2, "0.96' OLED TEST", 16);
		lcd_display_string(0, 6, "ASCII:", 16);  
		lcd_display_string(63, 6, "CODE:", 16);  
		OLED_ShowChar(48, 6, t, 16);//显示ASCII字符

		t++;
		if(t > '~') {
			t = ' ';
		}

		OLED_ShowNum(103, 6, t, 16);//显示ASCII字符的码值 	

		rt_thread_mdelay(3000);

		//lcd_display_bmp(0, 0, 128, 8, BMP1);  //图片显示(图片显示慎用，生成的字表较大，会占用较多空间，FLASH空间8K以下慎用)
		//rt_thread_mdelay(1000);

		//lcd_display_bmp(0, 0, 128, 8, BMP2);
		//rt_thread_mdelay(1000);
	}	  
}
#endif

static void i2c_oled_menu_update(smart_room_info_t *info)
{
	static smart_room_info_t last_info;
	char line[64];

	//T
	if (last_info.t != info->t) {
		memset(line, 0, sizeof(line));
		snprintf(line, sizeof(line), "%d%d.%d'C", info->t/100, (info->t/10)%10, info->t%10);
		lcd_display_string(48, 2, line, 16);
		//rt_kprintf("line: %s\n", line);
		last_info.t = info->t;
	}

	//H
	if (last_info.rh != info->rh) {
		memset(line, 0, sizeof(line));
		snprintf(line, sizeof(line), "%d%d.%d%%", info->rh/100, (info->rh/10)%10, info->rh%10);
		lcd_display_string(48, 4, line, 16);
		//rt_kprintf("line: %s\n", line);
		last_info.rh = info->rh;
	}

	//AC
	if (last_info.ac_status != info->ac_status) {
		if (info->ac_status) {
			lcd_line_display_string_ch(48,  3, 10,  string_ch);
		} else {
			lcd_line_display_string_ch(48,  3, 11,  string_ch);
		}
		last_info.ac_status = info->ac_status;
	}

	//light
	if (last_info.light_status != info->light_status) {
		if (info->light_status) {
			lcd_line_display_string_ch(112,  3, 10,  string_ch);
		} else {
			lcd_line_display_string_ch(112,  3, 11,  string_ch);
		}
		last_info.light_status = info->light_status;
	}
}

static void oled_show_main_info(void)
{
	OLED_Init();			//初始化OLED  
	OLED_Clear();

	//智能卧室小管家
	lcd_line_display_string_ch( 8,  0, 0, string_ch);
	lcd_line_display_string_ch(24,  0, 1, string_ch);
	lcd_line_display_string_ch(40,  0, 2, string_ch);
	lcd_line_display_string_ch(56,  0, 3, string_ch);

	lcd_line_display_string_ch(72,  0, 18, string_ch);
	lcd_line_display_string_ch(88,  0, 19, string_ch);
	lcd_line_display_string_ch(104, 0, 20, string_ch);

	//温度: 
	//湿度: 
	lcd_line_display_string_ch( 0,  1, 12, string_ch);
	lcd_line_display_string_ch(16,  1, 13, string_ch);
	lcd_display_string(32, 2, ":", 16);
	lcd_line_display_string_ch( 0,  2, 14, string_ch);
	lcd_line_display_string_ch(16,  2, 15, string_ch);
	lcd_display_string(32, 4, ":", 16);

	//空调:关
	//灯光:关
	lcd_line_display_string_ch( 0,  3, 8,  string_ch);
	lcd_line_display_string_ch(16,  3, 9,  string_ch);
	lcd_display_string(32, 6, ":", 16);
	lcd_line_display_string_ch(48,  3, 11,  string_ch);

	lcd_line_display_string_ch(80,  3, 16, string_ch);
	//lcd_line_display_string_ch(80,  3, 17, string_ch);
	lcd_display_string(96, 6, ":", 16);
	lcd_line_display_string_ch(112,  3, 11,  string_ch);	
}

static void oled_thread_entry(void *parameter)
{
	int cnt = 0;

	oled_show_main_info();

	//i2c_oled_test_main();

	while (1) {
		smart_room_info_t *info = smart_room_get_info();		
		//rt_kprintf("TEMP: %d%d.%d'C\n", info->t/100, (info->t/10)%10, info->t%10);
        //rt_kprintf("  RH: %d%d.%d%%\n", info->rh/100, (info->rh/10)%10, info->rh%10);
		i2c_oled_menu_update(info);
		rt_thread_mdelay(1000);

		if (cnt++ >= 60) {
			cnt = 0;
			oled_show_main_info();
		}
	}
}

int i2c_oled_init(void)
{
	int ret = 0;

	ra_i2c_init();

	/* 创建 serial 线程 */
    rt_thread_t thread = rt_thread_create("oled", oled_thread_entry, RT_NULL, 1024, 25, 10);
    /* 创建成功则启动线程 */
    if (thread != RT_NULL)
    {
        rt_thread_startup(thread);
    }
    else
    {
        ret = RT_ERROR;
    }

    return ret;	
}
