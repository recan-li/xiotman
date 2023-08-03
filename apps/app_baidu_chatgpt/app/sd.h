
#ifndef __SD_H__
#define __SD_H__

#ifdef __cplusplus
extern "C"{
#endif

extern int sd_init(void);
extern int sd_save_data(const uint8_t *data, uint16_t len);

#ifdef __cplusplus
}
#endif

#endif