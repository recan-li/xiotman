
#include "ui.h"
#include "rtthread.h"

#define WELCOME_BG_PIC 	"S:/assets/welcome/test.bin"

static lv_obj_t * ui_Bg_welcome = RT_NULL;

void welcomescreen_load_bg_pic(void)
{
	lv_obj_t * ui_Bg_welcome = lv_img_create(ui_welcomescreen);
	lv_img_set_src(ui_Bg_welcome, WELCOME_BG_PIC);
	lv_obj_set_width( ui_Bg_welcome, LV_SIZE_CONTENT);  /// 1
	lv_obj_set_height( ui_Bg_welcome, LV_SIZE_CONTENT);   /// 1
	lv_obj_set_align( ui_Bg_welcome, LV_ALIGN_CENTER );
	lv_obj_add_flag( ui_Bg_welcome, LV_OBJ_FLAG_ADV_HITTEST );   /// Flags
	lv_obj_clear_flag( ui_Bg_welcome, LV_OBJ_FLAG_SCROLLABLE );    /// Flags
}

void welcomescreen_event_handler(lv_event_t * e)
{
	int delay_s = 3;
/*
	while (sdcard_is_ready() != 1) {
		rt_thread_mdelay(10);
	}

	welcomescreen_load_bg_pic();
*/
	// Your code here
	rt_kprintf("change screen after %d seconds ...\n", delay_s);
	//rt_thread_mdelay(delay_s * 1000);
	//_ui_screen_change( &ui_mainscreen, LV_SCR_LOAD_ANIM_FADE_ON, 500, delay_s * 1000, &ui_mainscreen_screen_init);
	lv_scr_load_anim(ui_mainscreen, LV_SCR_LOAD_ANIM_FADE_ON, 500, delay_s * 1000, true); 
	// 加载屏幕TWO,动画效果为LV_SCR_LOAD_ANIM_FADE_ON,切换时间为500ms,延迟5000ms后从第一屏开始切换，切换完成后删除屏幕一
}
