
#ifndef __WIFI_H__
#define __WIFI_H__

#ifdef __cplusplus
extern "C"{
#endif

extern int wifi_password_exist_checking(void);
extern int wifi_init(void *arg);
extern int wifi_ready_waiting(void);

#ifdef __cplusplus
}
#endif

#endif
