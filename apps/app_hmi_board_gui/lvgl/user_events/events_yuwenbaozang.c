#include <stdio.h>
#include <dirent.h>
#include <string.h>

#include "ui.h"

#define TEST_IN_GUOXUETANGSHI 	0
#define TEST_IN_SANZIJING 		1

#define GUOXUETANGSHI_SRC_PATH	"/assets/yuwen/guoxue/"
#define SANZIJING_SRC_PATH		"/assets/yuwen/sanzijing/"

static int g_yuwenbaozang_mode = TEST_IN_GUOXUETANGSHI;
static int g_guoxuetangshi_index = 1;
static int g_guoxuetangshi_total_cnt = 0;
static int g_sanzijing_index = 1;
static int g_sanzijing_total_cnt = 0;

int fs_cnt_bin_files(const char* directory) 
{
    int count = 0;
    DIR* dir;
    struct dirent* entry;

    // 打开目录
    dir = opendir(directory);
    if (dir == NULL) {
        rt_kprintf("open dir fail： %s", directory);
        return -1;
    }

    // 遍历目录中的文件
    while ((entry = readdir(dir)) != NULL) {
        if (strstr(entry->d_name, ".bin") != NULL) {
            count++;
        }
    }

    // 关闭目录
    closedir(dir);

    return count;
}

static void update_yuwenbaozang_screen(void)
{
	char path[64] = {0};

	if (g_yuwenbaozang_mode == TEST_IN_GUOXUETANGSHI) {
		snprintf(path, sizeof(path), "S:%s%d.bin", GUOXUETANGSHI_SRC_PATH, g_guoxuetangshi_index);
	} else {
		snprintf(path, sizeof(path), "S:%s%d.bin", SANZIJING_SRC_PATH, g_sanzijing_index);
	}
	rt_kprintf("src -> %s\n", path);
	lv_img_set_src(ui_Imageyuwenbaozang, path);
}

void Btnguoxuetangshi_event_handler(lv_event_t * e)
{
	// Your code here
	lv_obj_add_state( ui_Btnguoxuetangshi, LV_STATE_CHECKED );
	lv_obj_clear_state( ui_Btnsanzijing, LV_STATE_CHECKED );
	g_yuwenbaozang_mode = TEST_IN_GUOXUETANGSHI;
	update_yuwenbaozang_screen();
}

void Btnsanzijing_event_handler(lv_event_t * e)
{
	// Your code here
	lv_obj_clear_state( ui_Btnguoxuetangshi, LV_STATE_CHECKED );
	lv_obj_add_state( ui_Btnsanzijing, LV_STATE_CHECKED );
	g_yuwenbaozang_mode = TEST_IN_SANZIJING;
	update_yuwenbaozang_screen();
}

void Screenyuwenbaozangleft_event_handler(lv_event_t * e)
{
	// Your code here
	if (g_yuwenbaozang_mode == TEST_IN_GUOXUETANGSHI) {
		g_guoxuetangshi_index++;
		if (g_guoxuetangshi_index == (g_guoxuetangshi_total_cnt + 1)) {
			g_guoxuetangshi_index = 1;	
		}
		rt_kprintf("%s >>> %d/%d\n", __func__, g_guoxuetangshi_index, g_guoxuetangshi_total_cnt);
	} else {
		g_sanzijing_index++;
		if (g_sanzijing_index == (g_sanzijing_total_cnt + 1)) {
			g_sanzijing_index = 1;	
		}
		rt_kprintf("%s >>> %d/%d\n", __func__, g_sanzijing_index, g_sanzijing_total_cnt);
	}
	update_yuwenbaozang_screen();
}

void Screenyuwenbaozangright_event_handler(lv_event_t * e)
{
	// Your code here
	if (g_yuwenbaozang_mode == TEST_IN_GUOXUETANGSHI) {
		g_guoxuetangshi_index--;
		if (g_guoxuetangshi_index == 0) {
			g_guoxuetangshi_index = g_guoxuetangshi_total_cnt;
		}
		rt_kprintf("%s >>> %d/%d\n", __func__, g_guoxuetangshi_index, g_guoxuetangshi_total_cnt);
	} else {
		g_sanzijing_index--;
		if (g_sanzijing_index == 0) {
			g_sanzijing_index = g_sanzijing_total_cnt;
		}
		rt_kprintf("%s >>> %d/%d\n", __func__, g_sanzijing_index, g_sanzijing_total_cnt);
	}
	update_yuwenbaozang_screen();
}

void screen_yuwenbaozang_pre_init(lv_event_t * e)
{
	int max_num = 0;
	int test_mode = 0;

	rt_kprintf("%s >>>\n", __func__);

	g_guoxuetangshi_total_cnt = fs_cnt_bin_files(GUOXUETANGSHI_SRC_PATH);
	g_sanzijing_total_cnt = fs_cnt_bin_files(SANZIJING_SRC_PATH);

	if (g_yuwenbaozang_mode == TEST_IN_GUOXUETANGSHI) {
		lv_obj_add_state( ui_Btnguoxuetangshi, LV_STATE_CHECKED );
		lv_obj_clear_state( ui_Btnsanzijing, LV_STATE_CHECKED );
	} else {
		lv_obj_clear_state( ui_Btnguoxuetangshi, LV_STATE_CHECKED );
		lv_obj_add_state( ui_Btnsanzijing, LV_STATE_CHECKED );
	}

	update_yuwenbaozang_screen();
}
