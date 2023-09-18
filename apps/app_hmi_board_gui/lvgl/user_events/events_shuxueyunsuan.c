
#include <stdlib.h>
#include <stdio.h>
#include <time.h>

#include "ui.h"
#include "rtthread.h"
#include "app_file_ini.h"

#define TEST_IN_ADD 	0
#define TEST_IN_MIN 	1
#define TEST_MAX_NUM 	10

static int g_test_mode = TEST_IN_ADD;
static int g_max_num = TEST_MAX_NUM;
static int g_random_num1, g_random_num2;

static void update_test_mode(void)
{
	char txt[64] = {0};

	// Your code here
	snprintf(txt, sizeof(txt), "当前模式:      以内的%s法", \
		(g_test_mode == TEST_IN_ADD) ? "加" : "减");
	
	lv_label_set_text(ui_Label27, txt);

	snprintf(txt, sizeof(txt), "点击<重新出题>开始测试");
	
	lv_label_set_text(ui_Label28, txt);

	if (g_test_mode == TEST_IN_ADD) {
		lv_obj_add_state( ui_Btnjiafayunsuan, LV_STATE_CHECKED );
		lv_obj_clear_state( ui_Btnjianfayunsuan, LV_STATE_CHECKED );
	} else {
		lv_obj_clear_state( ui_Btnjiafayunsuan, LV_STATE_CHECKED );
		lv_obj_add_state( ui_Btnjianfayunsuan, LV_STATE_CHECKED );
	}
}

void Btnjiafayunsuan_event_handler(lv_event_t * e)
{
	// Your code here
	g_test_mode = TEST_IN_ADD;
	ini_save_shuxueyunsuan_info(NULL, &g_test_mode);
	update_test_mode();	
}

void Btnjianfayunsuan_event_handler(lv_event_t * e)
{
	// Your code here
	g_test_mode = TEST_IN_MIN;
	ini_save_shuxueyunsuan_info(NULL, &g_test_mode);
	update_test_mode();
}

void Btnchongxinchuti_event_handler(lv_event_t * e)
{
	// Your code here
	char txt[64] = {0};

	lv_label_set_text(ui_Label28, "正在出题中 ...");
	
	srand((unsigned)time(NULL));
	g_random_num1 = rand() % g_max_num;	

	if (g_test_mode == TEST_IN_MIN) {
		do {
			if (g_random_num1 == 0 || g_random_num1 == 1) {
				g_random_num2 = 0;
				break;
			}
			rt_thread_mdelay(200);
			g_random_num2 = rand() % (g_random_num1 - 1);
		} while(0);
	} else {
		rt_thread_mdelay(200);
		g_random_num2 = rand() % g_max_num;
	}

	rt_kprintf("random num: %d %d\n", g_random_num1, g_random_num2);

	snprintf(txt, sizeof(txt), "请你计算: %d %c %d = ? ", \
		g_random_num1, 
		(g_test_mode == TEST_IN_ADD) ? '+' : '-',
		g_random_num2);
	
	lv_label_set_text(ui_Label28, txt);
}

void Btnchakandaan_event_handler(lv_event_t * e)
{
	char txt[64] = {0};

	// Your code here
	snprintf(txt, sizeof(txt), "正确答案: %d %c %d = %-2d", \
		g_random_num1, 
		(g_test_mode == TEST_IN_ADD) ? '+' : '-',
		g_random_num2,
		(g_test_mode == TEST_IN_ADD) ? g_random_num1 + g_random_num2 : g_random_num1 - g_random_num2);
	
	lv_label_set_text(ui_Label28, txt);
}

void Dropdownmaxnum_event_handler(lv_event_t * e)
{
	// Your code here
	//get cur max num
	char max_num_str[8] = {0};
	lv_dropdown_get_selected_str(ui_Dropdownmaxnum, max_num_str, sizeof(max_num_str));
	g_max_num = atoi(max_num_str);
	ini_save_shuxueyunsuan_info(&g_max_num, NULL);
}

void Btnfanhuizhuye4_event_handler(lv_event_t * e)
{
	// Your code here
	//update_test_mode();
}

void screen_shuxueyunsuan_pre_init(lv_event_t * e)
{
	int max_num = 0;
	int test_mode = 0;

	rt_kprintf(" %s >>>\n", __func__);

	if (ini_load_shuxueyunsuan_info(&max_num, &test_mode)) {
		rt_kprintf("fail to load max num and test mode\n");
		ini_save_shuxueyunsuan_info(&g_max_num, &g_test_mode);
	} else {
		g_max_num = (max_num == 0) ? TEST_MAX_NUM : max_num;
		g_test_mode = test_mode;
		rt_kprintf("load max num and test mode: %d %d\n", g_max_num, g_test_mode);
	}

	update_test_mode();

	int index = g_max_num / 5 - 1;
	lv_dropdown_set_selected(ui_Dropdownmaxnum, index);
}
