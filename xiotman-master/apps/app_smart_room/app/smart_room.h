
#ifndef __SMART_ROOM_H__
#define __SMART_ROOM_H__

#ifdef __cplusplus
extern "C"{
#endif

typedef struct __smart_room_info_t {
	uint32_t t;
	uint32_t rh;
	uint8_t  ac_status;
	uint8_t  light_status; 
} smart_room_info_t;

extern int smart_room_init(void);
extern smart_room_info_t * smart_room_get_info(void);
extern int smart_room_ac_on_off(uint8_t on_off);
extern int smart_room_light_on_off(uint8_t on_off);

#ifdef __cplusplus
}
#endif

#endif