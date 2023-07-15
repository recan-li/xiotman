#ifndef _MQTT_H_
#define _MQTT_H_

int mqtt_bafa_init(void *arg);
int update_device_status(int idx, int nvalue);
int mqtt_comm_init(void *arg);

#endif  /* mqtt.h */
