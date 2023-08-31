
#include <stdio.h>
#include <stdint.h>
#include <string.h>

#include "rtthread.h"
#include "minIni.h"

#define sizearray(a)        (sizeof(a) / sizeof((a)[0]))

#define DATA_INI_FILE       "data.ini"
#define DATA_SECTION_NAME   "data"
#define DATA_SSID_NAME      "ssid"
#define DATA_PASSWD_NAME    "password"

void ini_test(void)
{
    char str[100] = {0};
    long n;
    int s, k;
    char section[50];

    n = ini_puts("data", "string", "correct", DATA_INI_FILE);
    rt_kprintf("n: %d, str: %s\n", n, str);

    n = ini_gets("data", "string", "", str, sizearray(str), DATA_INI_FILE);
    rt_kprintf("n: %d, str: %s\n", n, str);
}

int ini_load_wifi_ap_info(char *ssid, char *password)
{
    char str[100] = {0};
    int n;
    int ret = -1;

    n = ini_gets(DATA_SECTION_NAME, DATA_SSID_NAME, "", str, sizearray(str), DATA_INI_FILE);
    if (n && ssid) {
        strcpy(ssid, str);
        ret = 0;
    } else {
        ret = -1;
    }

    n = ini_gets(DATA_SECTION_NAME, DATA_PASSWD_NAME, "", str, sizearray(str), DATA_INI_FILE);
    if (n && password) {
        strcpy(password, str);
        ret = 0;
    } else {
        ret = -1;
    }

    return ret;
}

int ini_save_wifi_ap_info(char *ssid, char *password)
{
    int n;
    int ret = -1;

    n = ini_puts(DATA_SECTION_NAME, DATA_SSID_NAME, ssid, DATA_INI_FILE);
    if (n == 1) {
        ret = 0;
    } else {
        ret = -1;
    }

    n = ini_puts(DATA_SECTION_NAME, DATA_PASSWD_NAME, password, DATA_INI_FILE);
    if (n == 1) {
        ret = 0;
    } else {
        ret = -1;
    }

    return ret;
}
