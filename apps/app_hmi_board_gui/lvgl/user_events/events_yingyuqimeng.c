#include "ui.h"

#define TEST_IN_RENSHIZIMU 		0
#define TEST_IN_QUWEIDANCI 		1

#define RENSHIZIMU_SRC_PATH		"/assets/yingyu/zimu/"
#define QUWEIDANCI_SRC_PATH		"/assets/yingyu/danci/"

static int g_yingyuqimeng_mode = TEST_IN_RENSHIZIMU;
static int g_renshizimu_index = 1;
static int g_renshizimu_total_cnt = 0;
static int g_quweidanci_index = 1;
static int g_quweidanci_total_cnt = 0;

static void update_yingyuqimeng_screen(void)
{
	char path[64] = {0};

	if (g_yingyuqimeng_mode == TEST_IN_RENSHIZIMU) {		
		srand((unsigned)time(NULL));
		g_renshizimu_index = rand() % 26 + 1;	
		snprintf(path, sizeof(path), "S:%s%d.bin", RENSHIZIMU_SRC_PATH, g_renshizimu_index);
	} else {
		snprintf(path, sizeof(path), "S:%s%d.bin", QUWEIDANCI_SRC_PATH, g_quweidanci_index);
	}
	rt_kprintf("src -> %s\n", path);
	lv_img_set_src(ui_Imageyingyuqimeng, path);
}

void Btnrenshizimu_event_handler(lv_event_t * e)
{
	// Your code here
	lv_obj_add_state( ui_Btnrenshizimu, LV_STATE_CHECKED );
	lv_obj_clear_state( ui_Btnquweidanci, LV_STATE_CHECKED );
	g_yingyuqimeng_mode = TEST_IN_RENSHIZIMU;
	update_yingyuqimeng_screen();
}

void Btnquweidanci_event_handler(lv_event_t * e)
{
	// Your code here
	lv_obj_clear_state( ui_Btnrenshizimu, LV_STATE_CHECKED );
	lv_obj_add_state( ui_Btnquweidanci, LV_STATE_CHECKED );
	g_yingyuqimeng_mode = TEST_IN_QUWEIDANCI;
	update_yingyuqimeng_screen();
}

void Screenyingyuqimengleft_event_handler(lv_event_t * e)
{
	// Your code here
	if (g_yingyuqimeng_mode == TEST_IN_RENSHIZIMU) {
		g_renshizimu_index++;
		if (g_renshizimu_index == (g_renshizimu_total_cnt + 1)) {
			g_renshizimu_index = 1;	
		}
		rt_kprintf("%s >>> %d/%d\n", __func__, g_renshizimu_index, g_renshizimu_total_cnt);
	} else {
		g_quweidanci_index++;
		if (g_quweidanci_index == (g_quweidanci_total_cnt + 1)) {
			g_quweidanci_index = 1;	
		}
		rt_kprintf("%s >>> %d/%d\n", __func__, g_quweidanci_index, g_quweidanci_total_cnt);
	}
	update_yingyuqimeng_screen();
}

void Screenyingyuqimengright_event_handler(lv_event_t * e)
{
	// Your code here
	if (g_yingyuqimeng_mode == TEST_IN_RENSHIZIMU) {
		g_renshizimu_index--;
		if (g_renshizimu_index == 0) {
			g_renshizimu_index = g_renshizimu_total_cnt;
		}
		rt_kprintf("%s >>> %d/%d\n", __func__, g_renshizimu_index, g_renshizimu_total_cnt);
	} else {
		g_quweidanci_index--;
		if (g_quweidanci_index == 0) {
			g_quweidanci_index = g_quweidanci_total_cnt;
		}
		rt_kprintf("%s >>> %d/%d\n", __func__, g_quweidanci_index, g_quweidanci_total_cnt);
	}
	update_yingyuqimeng_screen();
}

void screen_yingyuqimeng_pre_init(lv_event_t * e)
{
	int max_num = 0;
	int test_mode = 0;

	rt_kprintf("%s >>>\n", __func__);

	g_renshizimu_total_cnt = fs_cnt_bin_files(RENSHIZIMU_SRC_PATH);
	g_quweidanci_total_cnt = fs_cnt_bin_files(QUWEIDANCI_SRC_PATH);

	if (g_yingyuqimeng_mode == TEST_IN_RENSHIZIMU) {
		lv_obj_add_state( ui_Btnrenshizimu, LV_STATE_CHECKED );
		lv_obj_clear_state( ui_Btnquweidanci, LV_STATE_CHECKED );
	} else {
		lv_obj_clear_state( ui_Btnrenshizimu, LV_STATE_CHECKED );
		lv_obj_add_state( ui_Btnquweidanci, LV_STATE_CHECKED );
	}

	update_yingyuqimeng_screen();
}
