/*
 * Copyright (c) 2006-2021, RT-Thread Development Team
 *
 * SPDX-License-Identifier: Apache-2.0
 *
 * Change Logs:
 * Date           Author       Notes
 * 2023-09-16     Administrator       the first version
 */
#ifndef BOARD_PORTS_AUDIO_AUDIOPLAYER_H_
#define BOARD_PORTS_AUDIO_AUDIOPLAYER_H_

#include <rtthread.h>
#include <rthw.h>

enum PLAYER_STATUS
{
    PLAYER_IDLE,
    PLAYER_READY,
    PLAYER_RUNNING,
    PLAYER_STOP,
    PLAYER_DELETE,
    PLAYER_LAST,
    PLAYER_NEXT,
};
#define PLAYER_SONG_NUM_MAX          128
#define PLAYER_SONG_NAME_LEN_MAX     32
struct audio_ops
{
    int (*init)(void);
    int (*open)(void);
    int (*close)(void);
    int (*control)(int cmd, void *arg);
    int (*write)(void *buffer, int size);
};
enum PLAYER_CMD
{
    PLAYER_CMD_INIT,
    PLAYER_CMD_PLAY,
    PLAYER_CMD_STOP,
    PLAYER_CMD_LAST,
    PLAYER_CMD_NEXT,
    PLAYER_CMD_SET_VOL,
    PLAYER_CMD_GET_VOL,
    PLAYER_CMD_GET_STATUS
};
struct player
{
    enum PLAYER_STATUS  status;             /*state*/
    int16_t             volume;             /*Sound Size*/
    uint8_t             song_current;       /*Playing music*/
    uint8_t             video_num;          /*Total number of music*/
    uint16_t            song_time_pass;     /*Played time*/
    uint16_t            song_time_all;      /*Played all time*/
    char  *             video_list[PLAYER_SONG_NUM_MAX];
    char                video_name[PLAYER_SONG_NAME_LEN_MAX];
    rt_sem_t            sem_play;
    rt_thread_t         play_thread;
    struct audio_ops    *audio;
};

typedef struct player *player_t;
extern player_t v_player;



int audio_player_start(player_t player);
int audio_player_control(player_t player, int cmd, void *arg);
char* audio_play_prev(void);
char* audio_play_next(void);
char* audio_play_pause(rt_bool_t flag);
int wav_file_decoder(const char *file);

#endif /* BOARD_PORTS_AUDIO_AUDIOPLAYER_H_ */
