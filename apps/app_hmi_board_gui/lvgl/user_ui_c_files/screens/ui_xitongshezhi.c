// This file was generated by SquareLine Studio
// SquareLine Studio version: SquareLine Studio 1.3.2
// LVGL version: 8.3.6
// Project name: SquareLine_Project

#include "../ui.h"

void ui_xitongshezhi_screen_init(void)
{
ui_xitongshezhi = lv_obj_create(NULL);
lv_obj_clear_flag( ui_xitongshezhi, LV_OBJ_FLAG_SCROLLABLE );    /// Flags

ui_Bg1 = lv_img_create(ui_xitongshezhi);
lv_img_set_src(ui_Bg1, &ui_img_bg_img_png);
lv_obj_set_width( ui_Bg1, LV_SIZE_CONTENT);  /// 1
lv_obj_set_height( ui_Bg1, LV_SIZE_CONTENT);   /// 1
lv_obj_set_align( ui_Bg1, LV_ALIGN_CENTER );
lv_obj_add_flag( ui_Bg1, LV_OBJ_FLAG_ADV_HITTEST );   /// Flags
lv_obj_clear_flag( ui_Bg1, LV_OBJ_FLAG_SCROLLABLE );    /// Flags

ui_LabelTitle1 = lv_label_create(ui_xitongshezhi);
lv_obj_set_width( ui_LabelTitle1, LV_SIZE_CONTENT);  /// 1
lv_obj_set_height( ui_LabelTitle1, LV_SIZE_CONTENT);   /// 1
lv_obj_set_x( ui_LabelTitle1, 60 );
lv_obj_set_y( ui_LabelTitle1, -110 );
lv_obj_set_align( ui_LabelTitle1, LV_ALIGN_CENTER );
lv_label_set_text(ui_LabelTitle1,"系统设置");
lv_obj_set_style_text_color(ui_LabelTitle1, lv_color_hex(0x14FF2D), LV_PART_MAIN | LV_STATE_DEFAULT );
lv_obj_set_style_text_opa(ui_LabelTitle1, 255, LV_PART_MAIN| LV_STATE_DEFAULT);
lv_obj_set_style_text_align(ui_LabelTitle1, LV_TEXT_ALIGN_CENTER, LV_PART_MAIN| LV_STATE_DEFAULT);
lv_obj_set_style_text_font(ui_LabelTitle1, &ui_font_chnfont, LV_PART_MAIN| LV_STATE_DEFAULT);

ui_Btnxitongshengji = lv_btn_create(ui_xitongshezhi);
lv_obj_set_width( ui_Btnxitongshengji, 100);
lv_obj_set_height( ui_Btnxitongshengji, 50);
lv_obj_set_x( ui_Btnxitongshengji, -170 );
lv_obj_set_y( ui_Btnxitongshengji, -50 );
lv_obj_set_align( ui_Btnxitongshengji, LV_ALIGN_CENTER );
lv_obj_add_flag( ui_Btnxitongshengji, LV_OBJ_FLAG_CHECKABLE | LV_OBJ_FLAG_SCROLL_ON_FOCUS );   /// Flags
lv_obj_clear_flag( ui_Btnxitongshengji, LV_OBJ_FLAG_SCROLLABLE );    /// Flags
lv_obj_set_style_text_font(ui_Btnxitongshengji, &ui_font_chnfont, LV_PART_MAIN| LV_STATE_DEFAULT);

ui_Label7 = lv_label_create(ui_Btnxitongshengji);
lv_obj_set_width( ui_Label7, LV_SIZE_CONTENT);  /// 1
lv_obj_set_height( ui_Label7, LV_SIZE_CONTENT);   /// 1
lv_obj_set_align( ui_Label7, LV_ALIGN_CENTER );
lv_label_set_text(ui_Label7,"系统升级");

ui_Btnwifishezhi = lv_btn_create(ui_xitongshezhi);
lv_obj_set_width( ui_Btnwifishezhi, 100);
lv_obj_set_height( ui_Btnwifishezhi, 50);
lv_obj_set_x( ui_Btnwifishezhi, -170 );
lv_obj_set_y( ui_Btnwifishezhi, 25 );
lv_obj_set_align( ui_Btnwifishezhi, LV_ALIGN_CENTER );
lv_obj_add_flag( ui_Btnwifishezhi, LV_OBJ_FLAG_CHECKABLE | LV_OBJ_FLAG_SCROLL_ON_FOCUS );   /// Flags
lv_obj_clear_flag( ui_Btnwifishezhi, LV_OBJ_FLAG_SCROLLABLE );    /// Flags

ui_Label10 = lv_label_create(ui_Btnwifishezhi);
lv_obj_set_width( ui_Label10, LV_SIZE_CONTENT);  /// 1
lv_obj_set_height( ui_Label10, LV_SIZE_CONTENT);   /// 1
lv_obj_set_align( ui_Label10, LV_ALIGN_CENTER );
lv_label_set_text(ui_Label10,"WiFi设置");
lv_obj_add_state( ui_Label10, LV_STATE_CHECKED );     /// States
lv_obj_add_flag( ui_Label10, LV_OBJ_FLAG_CHECKABLE );   /// Flags
lv_obj_set_style_text_font(ui_Label10, &ui_font_chnfont, LV_PART_MAIN| LV_STATE_DEFAULT);

ui_Btnfanhuizhuye = lv_btn_create(ui_xitongshezhi);
lv_obj_set_width( ui_Btnfanhuizhuye, 100);
lv_obj_set_height( ui_Btnfanhuizhuye, 50);
lv_obj_set_x( ui_Btnfanhuizhuye, -170 );
lv_obj_set_y( ui_Btnfanhuizhuye, 100 );
lv_obj_set_align( ui_Btnfanhuizhuye, LV_ALIGN_CENTER );
lv_obj_add_flag( ui_Btnfanhuizhuye, LV_OBJ_FLAG_SCROLL_ON_FOCUS );   /// Flags
lv_obj_clear_flag( ui_Btnfanhuizhuye, LV_OBJ_FLAG_SCROLLABLE );    /// Flags

ui_Label11 = lv_label_create(ui_Btnfanhuizhuye);
lv_obj_set_width( ui_Label11, LV_SIZE_CONTENT);  /// 1
lv_obj_set_height( ui_Label11, LV_SIZE_CONTENT);   /// 1
lv_obj_set_align( ui_Label11, LV_ALIGN_CENTER );
lv_label_set_text(ui_Label11,"返回主页");
lv_obj_set_style_text_font(ui_Label11, &ui_font_chnfont, LV_PART_MAIN| LV_STATE_DEFAULT);

ui_TabViewxitongshezhi = lv_tabview_create(ui_xitongshezhi, LV_DIR_TOP, 50);
lv_obj_set_width( ui_TabViewxitongshezhi, 300);
lv_obj_set_height( ui_TabViewxitongshezhi, 200);
lv_obj_set_x( ui_TabViewxitongshezhi, 60 );
lv_obj_set_y( ui_TabViewxitongshezhi, 21 );
lv_obj_set_align( ui_TabViewxitongshezhi, LV_ALIGN_CENTER );
lv_obj_clear_flag( ui_TabViewxitongshezhi, LV_OBJ_FLAG_SCROLLABLE );    /// Flags


ui_Label29 = lv_label_create(ui_xitongshezhi);
lv_obj_set_width( ui_Label29, LV_SIZE_CONTENT);  /// 313
lv_obj_set_height( ui_Label29, LV_SIZE_CONTENT);   /// 1
lv_obj_set_x( ui_Label29, 63 );
lv_obj_set_y( ui_Label29, -46 );
lv_obj_set_align( ui_Label29, LV_ALIGN_CENTER );
lv_label_set_text(ui_Label29,"点击<系统升级>看版本信息");
lv_obj_set_style_text_color(ui_Label29, lv_color_hex(0xEBEE49), LV_PART_MAIN | LV_STATE_DEFAULT );
lv_obj_set_style_text_opa(ui_Label29, 255, LV_PART_MAIN| LV_STATE_DEFAULT);
lv_obj_set_style_text_font(ui_Label29, &ui_font_chnfont, LV_PART_MAIN| LV_STATE_DEFAULT);

ui_Label30 = lv_label_create(ui_xitongshezhi);
lv_obj_set_width( ui_Label30, LV_SIZE_CONTENT);  /// 313
lv_obj_set_height( ui_Label30, LV_SIZE_CONTENT);   /// 1
lv_obj_set_x( ui_Label30, 65 );
lv_obj_set_y( ui_Label30, 14 );
lv_obj_set_align( ui_Label30, LV_ALIGN_CENTER );
lv_label_set_text(ui_Label30,"");
lv_obj_set_style_text_color(ui_Label30, lv_color_hex(0x5D49EE), LV_PART_MAIN | LV_STATE_DEFAULT );
lv_obj_set_style_text_opa(ui_Label30, 255, LV_PART_MAIN| LV_STATE_DEFAULT);
lv_obj_set_style_text_font(ui_Label30, &ui_font_chnfont, LV_PART_MAIN| LV_STATE_DEFAULT);

ui_Dropdownwifilist = lv_dropdown_create(ui_xitongshezhi);
lv_dropdown_set_options( ui_Dropdownwifilist, "Please Scan" );
lv_obj_set_width( ui_Dropdownwifilist, 129);
lv_obj_set_height( ui_Dropdownwifilist, LV_SIZE_CONTENT);   /// 1
lv_obj_set_x( ui_Dropdownwifilist, 127 );
lv_obj_set_y( ui_Dropdownwifilist, -46 );
lv_obj_set_align( ui_Dropdownwifilist, LV_ALIGN_CENTER );
lv_obj_add_flag( ui_Dropdownwifilist, LV_OBJ_FLAG_SCROLL_ON_FOCUS );   /// Flags



ui_Keyboardwifipasswordinput = lv_keyboard_create(ui_xitongshezhi);
lv_obj_set_width( ui_Keyboardwifipasswordinput, 293);
lv_obj_set_height( ui_Keyboardwifipasswordinput, 88);
lv_obj_set_x( ui_Keyboardwifipasswordinput, 60 );
lv_obj_set_y( ui_Keyboardwifipasswordinput, 72 );
lv_obj_set_align( ui_Keyboardwifipasswordinput, LV_ALIGN_CENTER );

ui_textareainputpasswod = lv_textarea_create(ui_xitongshezhi);
lv_obj_set_width( ui_textareainputpasswod, 129);
lv_obj_set_height( ui_textareainputpasswod, LV_SIZE_CONTENT);   /// 38
lv_obj_set_x( ui_textareainputpasswod, 128 );
lv_obj_set_y( ui_textareainputpasswod, 2 );
lv_obj_set_align( ui_textareainputpasswod, LV_ALIGN_CENTER );
lv_textarea_set_max_length(ui_textareainputpasswod,32);
lv_textarea_set_placeholder_text(ui_textareainputpasswod,"Input Passwd");
lv_textarea_set_one_line(ui_textareainputpasswod,true);
lv_textarea_set_password_mode(ui_textareainputpasswod, true);



ui_Label31 = lv_label_create(ui_xitongshezhi);
lv_obj_set_width( ui_Label31, LV_SIZE_CONTENT);  /// 313
lv_obj_set_height( ui_Label31, LV_SIZE_CONTENT);   /// 1
lv_obj_set_x( ui_Label31, -13 );
lv_obj_set_y( ui_Label31, -46 );
lv_obj_set_align( ui_Label31, LV_ALIGN_CENTER );
lv_label_set_text(ui_Label31,"扫描WIFI名称");
lv_obj_add_flag( ui_Label31, LV_OBJ_FLAG_CLICKABLE );   /// Flags
lv_obj_set_style_text_color(ui_Label31, lv_color_hex(0xEBEE49), LV_PART_MAIN | LV_STATE_DEFAULT );
lv_obj_set_style_text_opa(ui_Label31, 255, LV_PART_MAIN| LV_STATE_DEFAULT);
lv_obj_set_style_text_font(ui_Label31, &ui_font_chnfont, LV_PART_MAIN| LV_STATE_DEFAULT);

ui_Label32 = lv_label_create(ui_xitongshezhi);
lv_obj_set_width( ui_Label32, LV_SIZE_CONTENT);  /// 313
lv_obj_set_height( ui_Label32, LV_SIZE_CONTENT);   /// 1
lv_obj_set_x( ui_Label32, -33 );
lv_obj_set_y( ui_Label32, 0 );
lv_obj_set_align( ui_Label32, LV_ALIGN_CENTER );
lv_label_set_text(ui_Label32,"WIFI密码");
lv_obj_set_style_text_color(ui_Label32, lv_color_hex(0xEBEE49), LV_PART_MAIN | LV_STATE_DEFAULT );
lv_obj_set_style_text_opa(ui_Label32, 255, LV_PART_MAIN| LV_STATE_DEFAULT);
lv_obj_set_style_text_font(ui_Label32, &ui_font_chnfont, LV_PART_MAIN| LV_STATE_DEFAULT);

ui_Switchpasswordmode = lv_switch_create(ui_xitongshezhi);
lv_obj_set_width( ui_Switchpasswordmode, 39);
lv_obj_set_height( ui_Switchpasswordmode, 25);
lv_obj_set_x( ui_Switchpasswordmode, 38 );
lv_obj_set_y( ui_Switchpasswordmode, 2 );
lv_obj_set_align( ui_Switchpasswordmode, LV_ALIGN_CENTER );


lv_obj_add_event_cb(ui_Btnxitongshengji, ui_event_Btnxitongshengji, LV_EVENT_ALL, NULL);
lv_obj_add_event_cb(ui_Btnwifishezhi, ui_event_Btnwifishezhi, LV_EVENT_ALL, NULL);
lv_obj_add_event_cb(ui_Btnfanhuizhuye, ui_event_Btnfanhuizhuye, LV_EVENT_ALL, NULL);
lv_keyboard_set_textarea(ui_Keyboardwifipasswordinput,ui_textareainputpasswod);
lv_obj_add_event_cb(ui_Keyboardwifipasswordinput, ui_event_Keyboardwifipasswordinput, LV_EVENT_ALL, NULL);
lv_obj_add_event_cb(ui_Label31, ui_event_Label31, LV_EVENT_ALL, NULL);
lv_obj_add_event_cb(ui_Switchpasswordmode, ui_event_Switchpasswordmode, LV_EVENT_ALL, NULL);

}