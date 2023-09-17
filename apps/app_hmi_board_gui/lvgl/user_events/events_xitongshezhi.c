#include <stdio.h>

#include "ui.h"
#include "app.h"
#include "rtthread.h"
#include "lvgl.h"
#include "wlan_mgnt.h"

void Btnxitongshengji_event_handler(lv_event_t * e)
{
	// Your code here
	char txt[256] = {0};

	// Your code here
	snprintf(txt, sizeof(txt), 
		"当前版本信息如下:\nRT-Thread 版本号: V%d.%d.%d\nLVGL 版本号: V%d.%d.%d\n应用版本号: V%s\n\n"
		"已是最新版本，无需升级 !", \
		RT_VERSION_MAJOR, RT_VERSION_MINOR, RT_VERSION_PATCH,
		lv_version_major(), lv_version_minor(), lv_version_patch(),
		APP_VERSION
		);
	
	lv_obj_clear_flag(ui_Label29, LV_OBJ_FLAG_HIDDEN);
	lv_obj_clear_flag(ui_Label30, LV_OBJ_FLAG_HIDDEN);
	lv_label_set_text(ui_Label29, "");
	lv_label_set_text(ui_Label30, txt);
	lv_obj_add_flag(ui_Label31, LV_OBJ_FLAG_HIDDEN);
	lv_obj_add_flag(ui_Label32, LV_OBJ_FLAG_HIDDEN);
	lv_obj_add_flag(ui_Dropdownwifilist, LV_OBJ_FLAG_HIDDEN);
	lv_obj_add_flag(ui_Keyboardwifipasswordinput, LV_OBJ_FLAG_HIDDEN);
	lv_obj_add_flag(ui_textareainputpasswod, LV_OBJ_FLAG_HIDDEN);
	lv_obj_add_flag(ui_Switchpasswordmode, LV_OBJ_FLAG_HIDDEN);
}

void Btnwifishezhi_event_handler(lv_event_t * e)
{
	// Your code here	
	lv_obj_add_flag(ui_Label29, LV_OBJ_FLAG_HIDDEN);
	lv_obj_add_flag(ui_Label30, LV_OBJ_FLAG_HIDDEN);
	lv_obj_clear_flag(ui_Label31, LV_OBJ_FLAG_HIDDEN);
	lv_obj_clear_flag(ui_Label32, LV_OBJ_FLAG_HIDDEN);
	lv_obj_clear_flag(ui_Dropdownwifilist, LV_OBJ_FLAG_HIDDEN);
	lv_obj_clear_flag(ui_Keyboardwifipasswordinput, LV_OBJ_FLAG_HIDDEN);
	lv_obj_clear_flag(ui_textareainputpasswod, LV_OBJ_FLAG_HIDDEN);
	lv_obj_clear_flag(ui_Switchpasswordmode, LV_OBJ_FLAG_HIDDEN);
}

extern int wifi_scan_for_ssid_list(char *ssid_list);

static void wifi_scan(void)
{
    int ssid_num = 0;
    char ssid_list[256] = {0};
    
    rt_kprintf("begin to scan wifi list ...\n");
    lv_dropdown_set_options(ui_Dropdownwifilist, "正在扫描中");
    ssid_num = wifi_scan_for_ssid_list(ssid_list);

    lv_dropdown_set_options(ui_Dropdownwifilist, ssid_list);
}

static void wifi_save_and_connect(lv_event_t * e)
{
	char ssid_str[32] = {0};
	char *ssid_password = RT_NULL;

	lv_dropdown_get_selected_str(ui_Dropdownwifilist, ssid_str, sizeof(ssid_str));
	ssid_password = lv_textarea_get_text(ui_textareainputpasswod);
	ini_save_wifi_ap_info(ssid_str, ssid_password);

	rt_kprintf("begin to connect wifi ...\n");
	rt_wlan_disconnect();
	rt_wlan_config_autoreconnect(RT_TRUE);
    rt_wlan_connect(ssid_str, ssid_password);
}

void scanwifilist_event_handler(lv_event_t * e)
{
	// Your code here
	wifi_scan();
}

void keyenter_event_handler(lv_event_t * e)
{
	// Your code here
	//wifi_save_and_connect(e);
}

void keyready_event_handler(lv_event_t * e)
{
	// Your code here
	wifi_save_and_connect(e);
}

void keycancel_event_hadnler(lv_event_t * e)
{
	// Your code here
	lv_keyboard_t* kb = (lv_keyboard_t*)e->target;
    lv_textarea_set_text(kb->ta, "");
}

void switchpasswordmode_event_handler(lv_event_t * e)
{
	// Your code here
	lv_textarea_set_password_mode(ui_textareainputpasswod, RT_TRUE);
}

void switchnopasswordmode_event_handler(lv_event_t * e)
{
	// Your code here
	lv_textarea_set_password_mode(ui_textareainputpasswod, RT_FALSE);
}

void screen_xitongshezhi_pre_init(lv_event_t * e)
{	
	lv_label_set_text(ui_Label29, "点击<系统升级>看版本信息");
	lv_label_set_text(ui_Label30, "");
	lv_obj_add_flag(ui_Label31, LV_OBJ_FLAG_HIDDEN);
	lv_obj_add_flag(ui_Label32, LV_OBJ_FLAG_HIDDEN);
	lv_obj_add_flag(ui_Dropdownwifilist, LV_OBJ_FLAG_HIDDEN);
	lv_obj_add_flag(ui_Keyboardwifipasswordinput, LV_OBJ_FLAG_HIDDEN);
	lv_obj_add_flag(ui_textareainputpasswod, LV_OBJ_FLAG_HIDDEN);
	lv_obj_add_flag(ui_Switchpasswordmode, LV_OBJ_FLAG_HIDDEN);
	lv_keyboard_set_popovers(ui_Keyboardwifipasswordinput, RT_TRUE);
	lv_dropdown_set_options(ui_Dropdownwifilist, "Please Scan");
	lv_textarea_set_text(ui_textareainputpasswod, "");
}

