// This file was generated by SquareLine Studio
// SquareLine Studio version: SquareLine Studio 1.3.2
// LVGL version: 8.3.6
// Project name: SquareLine_Project

#include "../ui.h"

void ui_mainscreen_screen_init(void)
{
ui_mainscreen = lv_obj_create(NULL);
lv_obj_clear_flag( ui_mainscreen, LV_OBJ_FLAG_SCROLLABLE );    /// Flags

ui_Bg = lv_img_create(ui_mainscreen);
lv_img_set_src(ui_Bg, &ui_img_bg_img_png);
lv_obj_set_width( ui_Bg, LV_SIZE_CONTENT);  /// 1
lv_obj_set_height( ui_Bg, LV_SIZE_CONTENT);   /// 1
lv_obj_set_align( ui_Bg, LV_ALIGN_CENTER );
lv_obj_add_flag( ui_Bg, LV_OBJ_FLAG_ADV_HITTEST );   /// Flags
lv_obj_clear_flag( ui_Bg, LV_OBJ_FLAG_SCROLLABLE );    /// Flags

ui_LabelTitle = lv_label_create(ui_mainscreen);
lv_obj_set_width( ui_LabelTitle, LV_SIZE_CONTENT);  /// 1
lv_obj_set_height( ui_LabelTitle, LV_SIZE_CONTENT);   /// 1
lv_obj_set_x( ui_LabelTitle, 0 );
lv_obj_set_y( ui_LabelTitle, -89 );
lv_obj_set_align( ui_LabelTitle, LV_ALIGN_CENTER );
lv_label_set_text(ui_LabelTitle,"基于HMI-Board和LVGL的儿童益智学习机");
lv_obj_set_style_text_color(ui_LabelTitle, lv_color_hex(0x14FF2D), LV_PART_MAIN | LV_STATE_DEFAULT );
lv_obj_set_style_text_opa(ui_LabelTitle, 255, LV_PART_MAIN| LV_STATE_DEFAULT);
lv_obj_set_style_text_align(ui_LabelTitle, LV_TEXT_ALIGN_CENTER, LV_PART_MAIN| LV_STATE_DEFAULT);
lv_obj_set_style_text_font(ui_LabelTitle, &ui_font_chnfont, LV_PART_MAIN| LV_STATE_DEFAULT);

ui_Btnyuwenbaozang = lv_btn_create(ui_mainscreen);
lv_obj_set_width( ui_Btnyuwenbaozang, 100);
lv_obj_set_height( ui_Btnyuwenbaozang, 50);
lv_obj_set_x( ui_Btnyuwenbaozang, -140 );
lv_obj_set_y( ui_Btnyuwenbaozang, -10 );
lv_obj_set_align( ui_Btnyuwenbaozang, LV_ALIGN_CENTER );
lv_obj_add_flag( ui_Btnyuwenbaozang, LV_OBJ_FLAG_SCROLL_ON_FOCUS );   /// Flags
lv_obj_clear_flag( ui_Btnyuwenbaozang, LV_OBJ_FLAG_SCROLLABLE );    /// Flags
lv_obj_set_style_text_font(ui_Btnyuwenbaozang, &ui_font_chnfont, LV_PART_MAIN| LV_STATE_DEFAULT);

ui_Label1 = lv_label_create(ui_Btnyuwenbaozang);
lv_obj_set_width( ui_Label1, LV_SIZE_CONTENT);  /// 1
lv_obj_set_height( ui_Label1, LV_SIZE_CONTENT);   /// 1
lv_obj_set_x( ui_Label1, -1 );
lv_obj_set_y( ui_Label1, -1 );
lv_obj_set_align( ui_Label1, LV_ALIGN_CENTER );
lv_label_set_text(ui_Label1,"语文宝藏");

ui_Btnshuxueyunsuan = lv_btn_create(ui_mainscreen);
lv_obj_set_width( ui_Btnshuxueyunsuan, 100);
lv_obj_set_height( ui_Btnshuxueyunsuan, 50);
lv_obj_set_x( ui_Btnshuxueyunsuan, 0 );
lv_obj_set_y( ui_Btnshuxueyunsuan, -10 );
lv_obj_set_align( ui_Btnshuxueyunsuan, LV_ALIGN_CENTER );
lv_obj_add_flag( ui_Btnshuxueyunsuan, LV_OBJ_FLAG_SCROLL_ON_FOCUS );   /// Flags
lv_obj_clear_flag( ui_Btnshuxueyunsuan, LV_OBJ_FLAG_SCROLLABLE );    /// Flags
lv_obj_set_style_text_font(ui_Btnshuxueyunsuan, &ui_font_chnfont, LV_PART_MAIN| LV_STATE_DEFAULT);

ui_Label4 = lv_label_create(ui_Btnshuxueyunsuan);
lv_obj_set_width( ui_Label4, LV_SIZE_CONTENT);  /// 1
lv_obj_set_height( ui_Label4, LV_SIZE_CONTENT);   /// 1
lv_obj_set_x( ui_Label4, -1 );
lv_obj_set_y( ui_Label4, -1 );
lv_obj_set_align( ui_Label4, LV_ALIGN_CENTER );
lv_label_set_text(ui_Label4,"数学运算");

ui_Btnyingyuqimeng = lv_btn_create(ui_mainscreen);
lv_obj_set_width( ui_Btnyingyuqimeng, 100);
lv_obj_set_height( ui_Btnyingyuqimeng, 50);
lv_obj_set_x( ui_Btnyingyuqimeng, 140 );
lv_obj_set_y( ui_Btnyingyuqimeng, -10 );
lv_obj_set_align( ui_Btnyingyuqimeng, LV_ALIGN_CENTER );
lv_obj_add_flag( ui_Btnyingyuqimeng, LV_OBJ_FLAG_SCROLL_ON_FOCUS );   /// Flags
lv_obj_clear_flag( ui_Btnyingyuqimeng, LV_OBJ_FLAG_SCROLLABLE );    /// Flags

ui_Label5 = lv_label_create(ui_Btnyingyuqimeng);
lv_obj_set_width( ui_Label5, LV_SIZE_CONTENT);  /// 1
lv_obj_set_height( ui_Label5, LV_SIZE_CONTENT);   /// 1
lv_obj_set_x( ui_Label5, -1 );
lv_obj_set_y( ui_Label5, -1 );
lv_obj_set_align( ui_Label5, LV_ALIGN_CENTER );
lv_label_set_text(ui_Label5,"英语启蒙");
lv_obj_set_style_text_font(ui_Label5, &ui_font_chnfont, LV_PART_MAIN| LV_STATE_DEFAULT);

ui_Btnzhinengai = lv_btn_create(ui_mainscreen);
lv_obj_set_width( ui_Btnzhinengai, 100);
lv_obj_set_height( ui_Btnzhinengai, 50);
lv_obj_set_x( ui_Btnzhinengai, -140 );
lv_obj_set_y( ui_Btnzhinengai, 80 );
lv_obj_set_align( ui_Btnzhinengai, LV_ALIGN_CENTER );
lv_obj_add_flag( ui_Btnzhinengai, LV_OBJ_FLAG_SCROLL_ON_FOCUS );   /// Flags
lv_obj_clear_flag( ui_Btnzhinengai, LV_OBJ_FLAG_SCROLLABLE );    /// Flags

ui_Label2 = lv_label_create(ui_Btnzhinengai);
lv_obj_set_width( ui_Label2, LV_SIZE_CONTENT);  /// 1
lv_obj_set_height( ui_Label2, LV_SIZE_CONTENT);   /// 1
lv_obj_set_x( ui_Label2, -1 );
lv_obj_set_y( ui_Label2, -1 );
lv_obj_set_align( ui_Label2, LV_ALIGN_CENTER );
lv_label_set_text(ui_Label2,"智能 AI");
lv_obj_set_style_text_font(ui_Label2, &ui_font_chnfont, LV_PART_MAIN| LV_STATE_DEFAULT);

ui_Btnquweidonghua = lv_btn_create(ui_mainscreen);
lv_obj_set_width( ui_Btnquweidonghua, 100);
lv_obj_set_height( ui_Btnquweidonghua, 50);
lv_obj_set_x( ui_Btnquweidonghua, 0 );
lv_obj_set_y( ui_Btnquweidonghua, 80 );
lv_obj_set_align( ui_Btnquweidonghua, LV_ALIGN_CENTER );
lv_obj_add_flag( ui_Btnquweidonghua, LV_OBJ_FLAG_SCROLL_ON_FOCUS );   /// Flags
lv_obj_clear_flag( ui_Btnquweidonghua, LV_OBJ_FLAG_SCROLLABLE );    /// Flags

ui_Label3 = lv_label_create(ui_Btnquweidonghua);
lv_obj_set_width( ui_Label3, LV_SIZE_CONTENT);  /// 1
lv_obj_set_height( ui_Label3, LV_SIZE_CONTENT);   /// 1
lv_obj_set_x( ui_Label3, -1 );
lv_obj_set_y( ui_Label3, -1 );
lv_obj_set_align( ui_Label3, LV_ALIGN_CENTER );
lv_label_set_text(ui_Label3,"趣味动画");
lv_obj_set_style_text_font(ui_Label3, &ui_font_chnfont, LV_PART_MAIN| LV_STATE_DEFAULT);

ui_Btnxitongshezhi = lv_btn_create(ui_mainscreen);
lv_obj_set_width( ui_Btnxitongshezhi, 100);
lv_obj_set_height( ui_Btnxitongshezhi, 50);
lv_obj_set_x( ui_Btnxitongshezhi, 140 );
lv_obj_set_y( ui_Btnxitongshezhi, 80 );
lv_obj_set_align( ui_Btnxitongshezhi, LV_ALIGN_CENTER );
lv_obj_add_flag( ui_Btnxitongshezhi, LV_OBJ_FLAG_SCROLL_ON_FOCUS );   /// Flags
lv_obj_clear_flag( ui_Btnxitongshezhi, LV_OBJ_FLAG_SCROLLABLE );    /// Flags

ui_Label6 = lv_label_create(ui_Btnxitongshezhi);
lv_obj_set_width( ui_Label6, LV_SIZE_CONTENT);  /// 1
lv_obj_set_height( ui_Label6, LV_SIZE_CONTENT);   /// 1
lv_obj_set_x( ui_Label6, -1 );
lv_obj_set_y( ui_Label6, -1 );
lv_obj_set_align( ui_Label6, LV_ALIGN_CENTER );
lv_label_set_text(ui_Label6,"系统设置");
lv_obj_set_style_text_font(ui_Label6, &ui_font_chnfont, LV_PART_MAIN| LV_STATE_DEFAULT);

lv_obj_add_event_cb(ui_Btnyuwenbaozang, ui_event_Btnyuwenbaozang, LV_EVENT_ALL, NULL);
lv_obj_add_event_cb(ui_Btnshuxueyunsuan, ui_event_Btnshuxueyunsuan, LV_EVENT_ALL, NULL);
lv_obj_add_event_cb(ui_Btnyingyuqimeng, ui_event_Btnyingyuqimeng, LV_EVENT_ALL, NULL);
lv_obj_add_event_cb(ui_Btnzhinengai, ui_event_Btnzhinengai, LV_EVENT_ALL, NULL);
lv_obj_add_event_cb(ui_Btnquweidonghua, ui_event_Btnquweidonghua, LV_EVENT_ALL, NULL);
lv_obj_add_event_cb(ui_Btnxitongshezhi, ui_event_Btnxitongshezhi, LV_EVENT_ALL, NULL);

}
