#include "ui.h"

#define TEST_IN_TONGHUAGUSHI 	0
#define TEST_IN_ZHISHIBAIKE		1

#define TONGHUAGUSHI_SRC_PATH	"/assets/ai/tonghua/"
#define ZHISHIBAIKE_SRC_PATH	"/assets/ai/baike/"

static int g_zhinengai_mode = TEST_IN_TONGHUAGUSHI;
static int g_tonghuagushi_index = 1;
static int g_tonghuagushi_total_cnt = 0;
static int g_zhishibaike_index = 1;
static int g_zhishibaike_total_cnt = 0;

static void update_zhinengai_screen(void)
{
	char path[64] = {0};

	if (g_zhinengai_mode == TEST_IN_TONGHUAGUSHI) {
		snprintf(path, sizeof(path), "S:%s%d.bin", TONGHUAGUSHI_SRC_PATH, g_tonghuagushi_index);
	} else {
		snprintf(path, sizeof(path), "S:%s%d.bin", ZHISHIBAIKE_SRC_PATH, g_zhishibaike_index);
	}
	rt_kprintf("src -> %s\n", path);
	lv_img_set_src(ui_Imagezhinengai, path);
}

void Btntonghuagushi_event_handler(lv_event_t * e)
{
	// Your code here
	lv_obj_add_state( ui_Btntonghuagushi, LV_STATE_CHECKED );
	lv_obj_clear_state( ui_Btnzhishibaike, LV_STATE_CHECKED );
	g_zhinengai_mode = TEST_IN_TONGHUAGUSHI;
	update_zhinengai_screen();
}

void Btnzhishibaike_event_handler(lv_event_t * e)
{
	// Your code here
	lv_obj_clear_state( ui_Btntonghuagushi, LV_STATE_CHECKED );
	lv_obj_add_state( ui_Btnzhishibaike, LV_STATE_CHECKED );
	g_zhinengai_mode = TEST_IN_ZHISHIBAIKE;
	update_zhinengai_screen();
}

void Screenzhinengaileft_event_handler(lv_event_t * e)
{
	// Your code here
	if (g_zhinengai_mode == TEST_IN_TONGHUAGUSHI) {
		g_tonghuagushi_index++;
		if (g_tonghuagushi_index == (g_tonghuagushi_total_cnt + 1)) {
			g_tonghuagushi_index = 1;	
		}
		rt_kprintf("%s >>> %d/%d\n", __func__, g_tonghuagushi_index, g_tonghuagushi_total_cnt);
	} else {
		g_zhishibaike_index++;
		if (g_zhishibaike_index == (g_zhishibaike_total_cnt + 1)) {
			g_zhishibaike_index = 1;	
		}
		rt_kprintf("%s >>> %d/%d\n", __func__, g_zhishibaike_index, g_zhishibaike_total_cnt);
	}
	update_zhinengai_screen();
}

void Screenzhinengairight_event_handler(lv_event_t * e)
{
	// Your code here
	if (g_zhinengai_mode == TEST_IN_TONGHUAGUSHI) {
		g_tonghuagushi_index--;
		if (g_tonghuagushi_index == 0) {
			g_tonghuagushi_index = g_tonghuagushi_total_cnt;
		}
		rt_kprintf("%s >>> %d/%d\n", __func__, g_tonghuagushi_index, g_tonghuagushi_total_cnt);
	} else {
		g_zhishibaike_index--;
		if (g_zhishibaike_index == 0) {
			g_zhishibaike_index = g_zhishibaike_total_cnt;
		}
		rt_kprintf("%s >>> %d/%d\n", __func__, g_zhishibaike_index, g_zhishibaike_total_cnt);
	}
	update_zhinengai_screen();
}

void screen_zhinengai_pre_init(lv_event_t * e)
{
	int max_num = 0;
	int test_mode = 0;

	rt_kprintf("%s >>>\n", __func__);

	g_tonghuagushi_total_cnt = fs_cnt_bin_files(TONGHUAGUSHI_SRC_PATH);
	g_zhishibaike_total_cnt = fs_cnt_bin_files(ZHISHIBAIKE_SRC_PATH);

	if (g_zhinengai_mode == TEST_IN_TONGHUAGUSHI) {
		lv_obj_add_state( ui_Btntonghuagushi, LV_STATE_CHECKED );
		lv_obj_clear_state( ui_Btnzhishibaike, LV_STATE_CHECKED );
	} else {
		lv_obj_clear_state( ui_Btntonghuagushi, LV_STATE_CHECKED );
		lv_obj_add_state( ui_Btnzhishibaike, LV_STATE_CHECKED );
	}

	update_zhinengai_screen();
}
