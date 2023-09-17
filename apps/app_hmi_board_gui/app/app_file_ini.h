#ifndef __FILE_INI_H__
#define __FILE_INI_H__

extern int ini_load_wifi_ap_info(char *ssid, char *password);
extern int ini_save_wifi_ap_info(char *ssid, char *password);
extern int ini_load_shuxueyunsuan_info(int *max_num, int *test_mode);
extern int ini_save_shuxueyunsuan_info(int *max_num, int *test_mode);

#endif  /* __FILE_INI_H__ */
