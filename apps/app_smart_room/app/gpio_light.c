#include "rtthread.h"
#include "drivers/pin.h"
#include "hal_data.h"
#include "drivers/spi.h"
#ifdef __cplusplus
extern "C"{
#endif
#include "bsp_api.h"
#include "spi_msd.h"
#ifdef __cplusplus
}
#endif

int gpio_light_init(void)
{
    rt_pin_mode(BSP_IO_PORT_04_PIN_07, PIN_MODE_OUTPUT);
    return 0;
}

int gpio_light_on(void)
{
	rt_pin_write(BSP_IO_PORT_04_PIN_07, 0);
	return 0;
}

int gpio_light_off(void)
{
	rt_pin_write(BSP_IO_PORT_04_PIN_07, 1);
	return 0;
}