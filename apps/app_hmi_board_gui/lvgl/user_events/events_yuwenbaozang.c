#include "ui.h"

void Btnguoxuetangshi_event_handler(lv_event_t * e)
{
	// Your code here
}

void Btnsanzijing_event_handler(lv_event_t * e)
{
	// Your code here
}


void Imageyuwenbaozangleft_event_handler(lv_event_t * e)
{
	// Your code here
	rt_kprintf("%s >>>\n", __func__);
}

void Imageyuwenbaozangright_event_handler(lv_event_t * e)
{
	// Your code here
	rt_kprintf("%s >>>\n", __func__);
}

void screen_yuwenbaozang_pre_init(lv_event_t * e)
{
	int max_num = 0;
	int test_mode = 0;

	rt_kprintf("%s >>>\n", __func__);

	//lv_obj_set_top(ui_Imageyuwenbaozang, true);
	lv_obj_move_foreground(ui_Imageyuwenbaozang);
	lv_img_set_src(ui_Imageyuwenbaozang, "S:/jys.bin");
	rt_kprintf("type: %d\n", lv_img_src_get_type("S:/jys.bin"));
}
