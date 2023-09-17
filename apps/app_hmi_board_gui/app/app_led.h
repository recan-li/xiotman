#ifndef _LED_H_
#define _LED_H_

int net_status_led_init(void *arg);
int sys_led_init(void *arg);
int sys_led_loop(void);
int net_status_led_on(void);
int net_status_led_off(void);

#endif  /* led.h */
