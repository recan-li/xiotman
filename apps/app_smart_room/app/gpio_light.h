
#ifndef __GPIO_LIGHT_H__
#define __GPIO_LIGHT_H__

#ifdef __cplusplus
extern "C"{
#endif
 
extern int gpio_light_init(void);
extern int gpio_light_on(void);
extern int gpio_light_off(void);

#ifdef __cplusplus
}
#endif

#endif