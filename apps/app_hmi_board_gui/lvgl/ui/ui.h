// This file was generated by SquareLine Studio
// SquareLine Studio version: SquareLine Studio 1.3.2
// LVGL version: 8.3.6
// Project name: SquareLine_Project

#ifndef _SQUARELINE_PROJECT_UI_H
#define _SQUARELINE_PROJECT_UI_H

#ifdef __cplusplus
extern "C" {
#endif

    #include "lvgl.h"

#include "ui_helpers.h"
#include "ui_events.h"
// SCREEN: ui_welcomescreen
void ui_welcomescreen_screen_init(void);
void ui_event_welcomescreen( lv_event_t * e);
extern lv_obj_t *ui_welcomescreen;
extern lv_obj_t *ui_Bg7;
// SCREEN: ui_mainscreen
void ui_mainscreen_screen_init(void);
extern lv_obj_t *ui_mainscreen;
extern lv_obj_t *ui_Bg;
extern lv_obj_t *ui_LabelTitle;
void ui_event_Btnyuwenbaozang( lv_event_t * e);
extern lv_obj_t *ui_Btnyuwenbaozang;
extern lv_obj_t *ui_Label1;
void ui_event_Btnshuxueyunsuan( lv_event_t * e);
extern lv_obj_t *ui_Btnshuxueyunsuan;
extern lv_obj_t *ui_Label4;
void ui_event_Btnyingyuqimeng( lv_event_t * e);
extern lv_obj_t *ui_Btnyingyuqimeng;
extern lv_obj_t *ui_Label5;
void ui_event_Btnzhinengai( lv_event_t * e);
extern lv_obj_t *ui_Btnzhinengai;
extern lv_obj_t *ui_Label2;
void ui_event_Btnquweidonghua( lv_event_t * e);
extern lv_obj_t *ui_Btnquweidonghua;
extern lv_obj_t *ui_Label3;
void ui_event_Btnxitongshezhi( lv_event_t * e);
extern lv_obj_t *ui_Btnxitongshezhi;
extern lv_obj_t *ui_Label6;
// SCREEN: ui_xitongshezhi
void ui_xitongshezhi_screen_init(void);
extern lv_obj_t *ui_xitongshezhi;
extern lv_obj_t *ui_Bg1;
extern lv_obj_t *ui_LabelTitle1;
void ui_event_Btnxitongshengji( lv_event_t * e);
extern lv_obj_t *ui_Btnxitongshengji;
extern lv_obj_t *ui_Label7;
void ui_event_Btnwifishezhi( lv_event_t * e);
extern lv_obj_t *ui_Btnwifishezhi;
extern lv_obj_t *ui_Label10;
void ui_event_Btnfanhuizhuye( lv_event_t * e);
extern lv_obj_t *ui_Btnfanhuizhuye;
extern lv_obj_t *ui_Label11;
extern lv_obj_t *ui_TabViewxitongshezhi;
extern lv_obj_t *ui_Label29;
extern lv_obj_t *ui_Label30;
extern lv_obj_t *ui_Dropdownwifilist;
void ui_event_Keyboardwifipasswordinput( lv_event_t * e);
extern lv_obj_t *ui_Keyboardwifipasswordinput;
extern lv_obj_t *ui_textareainputpasswod;
void ui_event_Label31( lv_event_t * e);
extern lv_obj_t *ui_Label31;
extern lv_obj_t *ui_Label32;
void ui_event_Switchpasswordmode( lv_event_t * e);
extern lv_obj_t *ui_Switchpasswordmode;
// SCREEN: ui_quweidonghua
void ui_quweidonghua_screen_init(void);
void ui_event_quweidonghua( lv_event_t * e);
extern lv_obj_t *ui_quweidonghua;
extern lv_obj_t *ui_Bg2;
extern lv_obj_t *ui_LabelTitle2;
void ui_event_Btnchangchangyingyu( lv_event_t * e);
extern lv_obj_t *ui_Btnchangchangyingyu;
extern lv_obj_t *ui_Label8;
void ui_event_Btnxiaozhupeiqi( lv_event_t * e);
extern lv_obj_t *ui_Btnxiaozhupeiqi;
extern lv_obj_t *ui_Label9;
void ui_event_Btnfanhuizhuye1( lv_event_t * e);
extern lv_obj_t *ui_Btnfanhuizhuye1;
extern lv_obj_t *ui_Label12;
extern lv_obj_t *ui_TabViewquweidonghua;
extern lv_obj_t *ui_Imagequweidonghua;
// SCREEN: ui_zhinengai
void ui_zhinengai_screen_init(void);
void ui_event_zhinengai( lv_event_t * e);
extern lv_obj_t *ui_zhinengai;
extern lv_obj_t *ui_Bg3;
extern lv_obj_t *ui_LabelTitle3;
void ui_event_Btntonghuagushi( lv_event_t * e);
extern lv_obj_t *ui_Btntonghuagushi;
extern lv_obj_t *ui_Label13;
void ui_event_Btnzhishibaike( lv_event_t * e);
extern lv_obj_t *ui_Btnzhishibaike;
extern lv_obj_t *ui_Label14;
void ui_event_Btnfanhuizhuye2( lv_event_t * e);
extern lv_obj_t *ui_Btnfanhuizhuye2;
extern lv_obj_t *ui_Label15;
extern lv_obj_t *ui_TabViezhinengai;
extern lv_obj_t *ui_Imagezhinengai;
// SCREEN: ui_yuwenbaozang
void ui_yuwenbaozang_screen_init(void);
void ui_event_yuwenbaozang( lv_event_t * e);
extern lv_obj_t *ui_yuwenbaozang;
extern lv_obj_t *ui_Bg4;
extern lv_obj_t *ui_LabelTitle4;
void ui_event_Btnguoxuetangshi( lv_event_t * e);
extern lv_obj_t *ui_Btnguoxuetangshi;
extern lv_obj_t *ui_Label16;
void ui_event_Btnsanzijing( lv_event_t * e);
extern lv_obj_t *ui_Btnsanzijing;
extern lv_obj_t *ui_Label17;
void ui_event_Btnfanhuizhuye3( lv_event_t * e);
extern lv_obj_t *ui_Btnfanhuizhuye3;
extern lv_obj_t *ui_Label18;
extern lv_obj_t *ui_TabViezhinengai1;
extern lv_obj_t *ui_Imageyuwenbaozang;
// SCREEN: ui_shuxueyunsuan
void ui_shuxueyunsuan_screen_init(void);
extern lv_obj_t *ui_shuxueyunsuan;
extern lv_obj_t *ui_Bg5;
extern lv_obj_t *ui_LabelTitle5;
void ui_event_Btnjiafayunsuan( lv_event_t * e);
extern lv_obj_t *ui_Btnjiafayunsuan;
extern lv_obj_t *ui_Label19;
void ui_event_Btnjianfayunsuan( lv_event_t * e);
extern lv_obj_t *ui_Btnjianfayunsuan;
extern lv_obj_t *ui_Label20;
void ui_event_Btnfanhuizhuye4( lv_event_t * e);
extern lv_obj_t *ui_Btnfanhuizhuye4;
extern lv_obj_t *ui_Label21;
extern lv_obj_t *ui_TabViezhinengai2;
void ui_event_Btnchongxinchuti( lv_event_t * e);
extern lv_obj_t *ui_Btnchongxinchuti;
extern lv_obj_t *ui_Label25;
void ui_event_Btnchakandaan( lv_event_t * e);
extern lv_obj_t *ui_Btnchakandaan;
extern lv_obj_t *ui_Label26;
extern lv_obj_t *ui_Label27;
extern lv_obj_t *ui_Label28;
void ui_event_Dropdownmaxnum( lv_event_t * e);
extern lv_obj_t *ui_Dropdownmaxnum;
// SCREEN: ui_yingyuqimeng
void ui_yingyuqimeng_screen_init(void);
void ui_event_yingyuqimeng( lv_event_t * e);
extern lv_obj_t *ui_yingyuqimeng;
extern lv_obj_t *ui_Bg6;
extern lv_obj_t *ui_LabelTitle6;
void ui_event_Btnrenshizimu( lv_event_t * e);
extern lv_obj_t *ui_Btnrenshizimu;
extern lv_obj_t *ui_Label22;
void ui_event_Btnquweidanci( lv_event_t * e);
extern lv_obj_t *ui_Btnquweidanci;
extern lv_obj_t *ui_Label23;
void ui_event_Btnfanhuizhuye5( lv_event_t * e);
extern lv_obj_t *ui_Btnfanhuizhuye5;
extern lv_obj_t *ui_Label24;
extern lv_obj_t *ui_TabViezhinengai3;
extern lv_obj_t *ui_Imageyingyuqimeng;
extern lv_obj_t *ui____initial_actions0;

LV_IMG_DECLARE( ui_img_fengmian_png);   // assets\fengmian.png
LV_IMG_DECLARE( ui_img_bg_img_png);   // assets\bg_img.png

LV_FONT_DECLARE( ui_font_chnfont);

void ui_init(void);

#ifdef __cplusplus
} /*extern "C"*/
#endif

#endif
