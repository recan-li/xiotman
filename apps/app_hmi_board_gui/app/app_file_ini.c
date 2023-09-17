
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
#define DATA_MAX_NUM        "max_num"
#define DATA_TEST_MODE      "test_mode"

void ini_test(void)
{
    char str[100] = {0};
    long n;
    
    {
        int fd = 0;
        int ret;
       /* 
        fd = open(DATA_INI_FILE, O_RDONLY);
        rt_kprintf("fd: %d\n", fd);
        
        ret = lseek(fd, 5, SEEK_SET);
        rt_kprintf("ret: %d\n", ret);
        
        ret = lseek(fd, 0, SEEK_CUR);
        rt_kprintf("ret: %d\n", ret);
        
        ret = lseek(fd, -5, SEEK_END);
        rt_kprintf("ret: %d\n", ret);
        
        ret = lseek(fd, 0, SEEK_CUR);
        rt_kprintf("ret: %d\n", ret);
        
        close(fd);*/
    }

    n = ini_puts("data", "string", "correct", DATA_INI_FILE);
    rt_kprintf("n: %d, str: %s\n", n, str);
    n = ini_puts("data", "string1", "correct1", DATA_INI_FILE);
    rt_kprintf("n: %d, str: %s\n", n, str);
    n = ini_puts("data", "string2", "correct2", DATA_INI_FILE);
    rt_kprintf("n: %d, str: %s\n", n, str);

    n = ini_gets("data", "string", "", str, sizearray(str), DATA_INI_FILE);
    rt_kprintf("n: %d, str: %s\n", n, str);
    n = ini_gets("data", "string1", "", str, sizearray(str), DATA_INI_FILE);
    rt_kprintf("n: %d, str: %s\n", n, str);
    n = ini_gets("data", "string2", "", str, sizearray(str), DATA_INI_FILE);
    rt_kprintf("n: %d, str: %s\n", n, str);
}

#include <stdio.h>

void fopen_test(void)
{
    FILE *fp=NULL;
    if((fp=fopen("flog","r"))==NULL) {
        perror("fopen error\n");
    } else {
        char buf[]="hello";
        fwrite(buf,5,1,fp);
        fclose(fp);
    }
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

int ini_load_shuxueyunsuan_info(int *max_num, int *test_mode)
{
    int ret = -1;
    long value;

    if (max_num) {
        value = ini_getl(DATA_SECTION_NAME, DATA_MAX_NUM, -1, DATA_INI_FILE);
        if (value != -1) {
            *max_num = value;
            ret = 0;
        } else {
            ret = -1;
        }
    }

    if (test_mode) {
        value = ini_getl(DATA_SECTION_NAME, DATA_TEST_MODE, -1, DATA_INI_FILE);
        if (value != -1) {
            *test_mode = value;
            ret = 0;
        } else {
            ret = -1;
        }
    }

    return ret;
}

int ini_save_shuxueyunsuan_info(int *max_num, int *test_mode)
{
    int n;
    int ret = -1;
    long value;

    if (max_num) {
        value = *max_num;
        value = ini_putl(DATA_SECTION_NAME, DATA_MAX_NUM, value, DATA_INI_FILE);
        if (n == 1) {
            ret = 0;
        } else {
            ret = -1;
        }
    }

    if (test_mode) {
        value = *test_mode;
        n = ini_putl(DATA_SECTION_NAME, DATA_TEST_MODE, value, DATA_INI_FILE);
        if (n == 1) {
            ret = 0;
        } else {
            ret = -1;
        }
    }

    return ret;
}

