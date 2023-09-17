
#ifndef __APP_WIFI_H__
#define __APP_WIFI_H__

#ifdef __cplusplus
extern "C"{
#endif

#define WIFI_MODULE_ESP8266 	0
#define WIFI_MODULE_RW007 		1
#define WIFI_MODULE_SELECT 		WIFI_MODULE_RW007

extern int wifi_password_exist_checking(void);
extern int wifi_init(void *arg);
extern int wifi_ready_waiting(void);

#ifdef __cplusplus
}
#endif

#endif
