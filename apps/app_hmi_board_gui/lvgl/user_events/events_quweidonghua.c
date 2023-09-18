#include "ui.h"

#define TEST_IN_CHANGCHANGYINGYU 	0
#define TEST_IN_XIAOZHUPEIQI		1

#define CHANGCHANGYINGYU_SRC_PATH	"/assets/donghua/singsing/"
#define XIAOZHUPEIQI_SRC_PATH		"/assets/donghua/peppa/"

static int g_quweidonghua_mode = TEST_IN_CHANGCHANGYINGYU;
static int g_changchangyingyu_index = 1;
static int g_changchangyingyu_total_cnt = 0;
static int g_xiaozhupeiqi_index = 1;
static int g_xiaozhupeiqi_total_cnt = 0;

static void update_quweidonghua_screen(void)
{
	char path[64] = {0};

	if (g_quweidonghua_mode == TEST_IN_CHANGCHANGYINGYU) {
		snprintf(path, sizeof(path), "S:%s%d.bin", CHANGCHANGYINGYU_SRC_PATH, g_changchangyingyu_index);
	} else {
		snprintf(path, sizeof(path), "S:%s%d.bin", XIAOZHUPEIQI_SRC_PATH, g_xiaozhupeiqi_index);
	}
	rt_kprintf("src -> %s\n", path);
	lv_img_set_src(ui_Imagequweidonghua, path);
}

void Btnchangchangyingyu_event_handler(lv_event_t * e)
{
	// Your code here
	lv_obj_add_state( ui_Btnchangchangyingyu, LV_STATE_CHECKED );
	lv_obj_clear_state( ui_Btnxiaozhupeiqi, LV_STATE_CHECKED );
	g_quweidonghua_mode = TEST_IN_CHANGCHANGYINGYU;
	update_quweidonghua_screen();
}

void Btnxiaozhupeiqi_event_handler(lv_event_t * e)
{
	// Your code here
	lv_obj_clear_state( ui_Btnchangchangyingyu, LV_STATE_CHECKED );
	lv_obj_add_state( ui_Btnxiaozhupeiqi, LV_STATE_CHECKED );
	g_quweidonghua_mode = TEST_IN_XIAOZHUPEIQI;
	update_quweidonghua_screen();
}

void Screenquweidonghualeft_event_handler(lv_event_t * e)
{
	// Your code here
	if (g_quweidonghua_mode == TEST_IN_CHANGCHANGYINGYU) {
		g_changchangyingyu_index++;
		if (g_changchangyingyu_index == (g_changchangyingyu_total_cnt + 1)) {
			g_changchangyingyu_index = 1;	
		}
		rt_kprintf("%s >>> %d/%d\n", __func__, g_changchangyingyu_index, g_changchangyingyu_total_cnt);
	} else {
		g_xiaozhupeiqi_index++;
		if (g_xiaozhupeiqi_index == (g_xiaozhupeiqi_total_cnt + 1)) {
			g_xiaozhupeiqi_index = 1;	
		}
		rt_kprintf("%s >>> %d/%d\n", __func__, g_xiaozhupeiqi_index, g_xiaozhupeiqi_total_cnt);
	}
	update_quweidonghua_screen();
}

void Screenquweidonghuaright_event_handler(lv_event_t * e)
{
	// Your code here
	if (g_quweidonghua_mode == TEST_IN_CHANGCHANGYINGYU) {
		g_changchangyingyu_index--;
		if (g_changchangyingyu_index == 0) {
			g_changchangyingyu_index = g_changchangyingyu_total_cnt;
		}
		rt_kprintf("%s >>> %d/%d\n", __func__, g_changchangyingyu_index, g_changchangyingyu_total_cnt);
	} else {
		g_xiaozhupeiqi_index--;
		if (g_xiaozhupeiqi_index == 0) {
			g_xiaozhupeiqi_index = g_xiaozhupeiqi_total_cnt;
		}
		rt_kprintf("%s >>> %d/%d\n", __func__, g_xiaozhupeiqi_index, g_xiaozhupeiqi_total_cnt);
	}
	update_quweidonghua_screen();
}

void screen_quweidonghua_pre_init(lv_event_t * e)
{
	rt_kprintf("%s >>>\n", __func__);

	g_changchangyingyu_total_cnt = fs_cnt_bin_files(CHANGCHANGYINGYU_SRC_PATH);
	g_xiaozhupeiqi_total_cnt = fs_cnt_bin_files(XIAOZHUPEIQI_SRC_PATH);

	if (g_quweidonghua_mode == TEST_IN_CHANGCHANGYINGYU) {
		lv_obj_add_state( ui_Btnchangchangyingyu, LV_STATE_CHECKED );
		lv_obj_clear_state( ui_Btnxiaozhupeiqi, LV_STATE_CHECKED );
	} else {
		lv_obj_clear_state( ui_Btnchangchangyingyu, LV_STATE_CHECKED );
		lv_obj_add_state( ui_Btnxiaozhupeiqi, LV_STATE_CHECKED );
	}

	update_quweidonghua_screen();
}

