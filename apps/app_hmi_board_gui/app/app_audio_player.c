/*
 * Copyright (c) 2006-2021, RT-Thread Development Team
 *
 * SPDX-License-Identifier: Apache-2.0
 *
 * Change Logs:
 * Date           Author       Notes
 * 2023-09-16     Administrator       the first version
 */
#include "app_audio_player.h"
#include "pwm_audio.h"
#include <dfs_file.h>
#include <unistd.h>
#include <sys/stat.h>
#include <sys/statfs.h>
#include "rtthread.h"

#define DBG_TAG    "audio_player"
#define DBG_LVL    DBG_INFO
#include <rtdbg.h>

#define READ_BUFFER_FRAME_SIZE      (2*1024)
#define DCODE_BUFFER_SIZE           (5 * 1024)

static uint8_t *v_pbuffer;
struct player mplayer;
player_t v_player = &mplayer;
FILE* fp;

struct wav_header
{
    char  riff_id[4];                       /* "RIFF" */
    int   riff_datasize;                    /* RIFF chunk data size,exclude riff_id[4] and riff_datasize,total - 8 */

    char  riff_type[4];                     /* "WAVE" */

    char  fmt_id[4];                        /* "fmt " */
    int   fmt_datasize;                     /* fmt chunk data size,16 for pcm */
    short fmt_compression_code;             /* 1 for PCM */
    short fmt_channels;                     /* 1(mono) or 2(stereo) */
    int   fmt_sample_rate;                  /* samples per second */
    int   fmt_avg_bytes_per_sec;            /* sample_rate * channels * bit_per_sample / 8 */
    short fmt_block_align;                  /* number bytes per sample, bit_per_sample * channels / 8 */
    short fmt_bit_per_sample;               /* bits of each sample(8,16,32). */

    char  data_id[4];                       /* "data" */
    int   data_datasize;                    /* data chunk size,pcm_size - 44 */
};

static void search_files(player_t player, const char *dir_path, const char *ext)
{
    struct dirent *dirp;

    DIR *dir = opendir(dir_path);
    if (dir == NULL)
    {
        LOG_E("open directory error!");
        return;
    }
    while ((dirp = readdir(dir)))
    {
        if (dirp->d_type == DT_DIR)
        {
            if (rt_strcmp(dirp->d_name, ".") == 0 || strcmp(dirp->d_name, "..") == 0)
            {
                continue;
            }
            char subdir_path[64];
            rt_snprintf(subdir_path, sizeof(subdir_path), "%s/%s", dir_path, dirp->d_name);
            search_files(player, subdir_path, ext);
        }
        else
        {
            char *file_ext = strrchr(dirp->d_name, '.');
            if (file_ext != NULL && strcmp(file_ext, ext) == 0)
            {
                char file_path[64];
                rt_snprintf(file_path, sizeof(file_path), "%s/%s", dir_path, dirp->d_name);
                LOG_I("%s\n", file_path);
#if 0
                player->video_list[player->video_num] = rt_strdup(file_path);
                LOG_E("video_list[%d]:%s", player->video_num, player->video_list[player->video_num]);
#else
                player->video_list[player->video_num] = rt_strdup(file_path);
                LOG_E("video_list[%d]:%s", player->video_num, player->video_list[player->video_num]);
#endif
                player->video_num ++;
            }
        }
    }
    closedir(dir);
}

static int get_int(FILE *fp)
{
    char *s;
    int i;
    s = (char *)&i;
    size_t len = sizeof(int);
    int n = 0;
    for (; n < len; n++)
    {
        s[n] = getc(fp);
    }
    return i;
}

static short int get_sint(FILE *fp)
{
    char *s;
    short int i;
    s = (char *)&i;
    size_t len = sizeof(short);
    int n = 0;
    for (; n < len; n++)
    {
        s[n] = getc(fp);
    }

    return i;
}

static int music_start_parser(player_t player, int fd, char *filename)
{
    LOG_I("open file:%s doing \n",filename);
    //fd = open(&filename[2],O_RDONLY);
    fp = fopen(&filename[2],"rb");
    if(fp==RT_NULL)
    {
        LOG_I("open file:%s error\n",filename);
        return -1;
    }
    struct wav_header wav;
    struct wav_header* header = &wav;

    fread(header->riff_id, 4, 1, fp);
    header->riff_datasize = get_int(fp);
    fread(header->riff_type, 4, 1, fp);
    fread(header->fmt_id, 4, 1, fp);
    header->fmt_datasize = get_int(fp);
    header->fmt_compression_code = get_sint(fp);
    header->fmt_channels = get_sint(fp);
    header->fmt_sample_rate = get_int(fp);
    header->fmt_avg_bytes_per_sec = get_int(fp);
    header->fmt_block_align = get_sint(fp);
    header->fmt_bit_per_sample = get_sint(fp);
    fread(header->data_id, 4, 1, fp);
    header->data_datasize = get_int(fp);

    LOG_I("Information:");
    LOG_I("samplerate %d", wav.fmt_sample_rate);
    LOG_I("channels %d", wav.fmt_channels);
    LOG_I("sample bits width %d", wav.fmt_bit_per_sample);
    LOG_I("data_datasize %d", wav.data_datasize);

    player->song_time_all = wav.data_datasize;

    //
    pwm_audio_config_t pac;
    pac.duty_resolution    = 10;
    pac.gpio_num_left      = 1;
    pac.gpio_num_right     = -1;
    pac.ringbuf_len        = 1024 * 8;
    
    pwm_audio_init(&pac);
    pwm_audio_set_volume(0);
    pwm_audio_set_param(44100
        /*wav.fmt_sample_rate*/, wav.fmt_bit_per_sample, wav.fmt_channels);

    return RT_EOK;
}

static void audio_player_entry(void *parameter)
{
    int fd = -1;
    player_t player = (player_t)parameter;
    int32_t readsize =0;
    int32_t needread =0;
    size_t cnt;
    size_t readcnt;

    while (1)
    {
        if (player->status == PLAYER_READY)
        {
            fd = music_start_parser(player, fd, player->video_list[player->song_current - 1]);
            LOG_I("Player:%s ready decode\n", player->video_list[player->song_current - 1]);
            player->status = PLAYER_RUNNING;
            readsize = 0;
            needread = 0;
        }
        if (player->status == PLAYER_RUNNING)
        {
            if(fread(v_pbuffer, READ_BUFFER_FRAME_SIZE, 1, fp) == 1)
            {
                pwm_audio_write((uint8_t *)v_pbuffer, READ_BUFFER_FRAME_SIZE, &cnt, 500);
            }
        }
        if (player->status == PLAYER_STOP)
        {
            LOG_I("Stop player");

            pwm_audio_stop();

            rt_sem_take(player->sem_play, RT_WAITING_FOREVER);

            pwm_audio_start();
        }
        if (player->status == PLAYER_DELETE)
        {
            fclose(fp);
            pwm_audio_deinit();
            player->status = PLAYER_IDLE;
            LOG_I("Free %s resources", player->video_list[player->song_current - 1]);
        }
        if (player->status == PLAYER_LAST)
        {
            fclose(fp);
            pwm_audio_deinit();
            player->status = PLAYER_READY;
            LOG_I("Free %s resources", player->video_list[player->song_current - 1]);
        }
        if (player->status == PLAYER_NEXT)
        {
            fclose(fp);
            pwm_audio_deinit();
            player->status = PLAYER_READY;
            LOG_I("Free %s resources", player->video_list[player->song_current - 1]);
        }
        if (player->status == PLAYER_IDLE)
        {
            rt_sem_take(player->sem_play, RT_WAITING_FOREVER);
        }
    }
}

int audio_player_start(player_t player)
{
    static rt_uint8_t inited = 0;

    if (inited == 1)
    {
        return -RT_ERROR;
    }

    v_pbuffer = rt_malloc(DCODE_BUFFER_SIZE);
    RT_ASSERT(v_pbuffer != NULL)
    rt_memset(v_pbuffer, 0x00, DCODE_BUFFER_SIZE);
    /* read filesystem */
    search_files(v_player, "/", ".wav");
    v_player->status = PLAYER_IDLE;
    v_player->volume = 0;
    v_player->song_current = v_player->video_num;
    v_player->song_time_pass = 0;
    v_player->sem_play = rt_sem_create("sem_play", 0, RT_IPC_FLAG_FIFO);
    if (v_player->sem_play == RT_NULL)
    {
        return -RT_ERROR;
    }

    v_player->play_thread = rt_thread_create("player",
                                           audio_player_entry, v_player,
                                           2 * 1024, RT_THREAD_PRIORITY_MAX-10, 20);
    if (v_player->play_thread != RT_NULL)
    {
        rt_thread_startup(v_player->play_thread);
    }
    else
    {
        rt_sem_delete(v_player->sem_play);
        return -RT_ERROR;
    }
    inited = 1;
    return 0;
}

char* audio_play_prev(void)
{
    if (v_player->status == PLAYER_STOP)
        audio_player_control(v_player, PLAYER_CMD_PLAY, RT_NULL);
    audio_player_control(v_player, PLAYER_CMD_LAST, RT_NULL);
    return &v_player->video_list[v_player->song_current-1][2];
}

char* audio_play_next(void)
{
    if (v_player->status == PLAYER_STOP)
        audio_player_control(v_player, PLAYER_CMD_PLAY, RT_NULL);
    audio_player_control(v_player, PLAYER_CMD_NEXT, RT_NULL);
    return &v_player->video_list[v_player->song_current-1][2];
}

char* audio_play_pause(rt_bool_t flag)
{
    flag == RT_TRUE ? audio_player_control(v_player, PLAYER_CMD_PLAY, RT_NULL) :player_control(v_player, PLAYER_CMD_STOP, RT_NULL);
    return &v_player->video_list[v_player->song_current-1][2];
}

int audio_player_control(player_t player, int cmd, void *arg)
{
    rt_uint32_t level;
    int16_t mvol;

    switch (cmd)
    {
    case PLAYER_CMD_INIT:
        LOG_I("Rec res name:%s len:%d", (char *)arg, rt_strlen(arg));
        rt_memset(player->video_name, 0x00, rt_strlen(arg));
        rt_strcpy(player->video_name, arg);
        //player_init(player);
        if (player->status != PLAYER_RUNNING)
        {
            level = rt_hw_interrupt_disable();

            player->status = PLAYER_READY;

            player->song_current = 1;

            rt_hw_interrupt_enable(level);

            rt_sem_release(player->sem_play);
        }
        break;
    case PLAYER_CMD_PLAY:
        if (player->status != PLAYER_RUNNING)
        {
            level = rt_hw_interrupt_disable();

            player->status = PLAYER_RUNNING;

            rt_hw_interrupt_enable(level);

            rt_sem_release(player->sem_play);
        }
        break;
    case PLAYER_CMD_STOP:

        if (player->status == PLAYER_RUNNING)
        {
            level = rt_hw_interrupt_disable();

            player->status = PLAYER_STOP;

            rt_hw_interrupt_enable(level);
        }
        break;
    case PLAYER_CMD_LAST:

        level = rt_hw_interrupt_disable();

        if (player->song_current > 1)
        {
            player->song_current --;
        }
        else
        {
            player->song_current = player->video_num;
        }

        rt_hw_interrupt_enable(level);

        player->status = PLAYER_LAST;

        level = rt_hw_interrupt_disable();

        rt_hw_interrupt_enable(level);
        break;
    case PLAYER_CMD_NEXT:

        level = rt_hw_interrupt_disable();

        if (player->song_current < player->video_num)
        {
            player->song_current ++;
        }
        else
        {
            player->song_current = 1;
        }

        rt_hw_interrupt_enable(level);

        player->status = PLAYER_NEXT;

        level = rt_hw_interrupt_disable();

        rt_hw_interrupt_enable(level);
        break;
    case PLAYER_CMD_SET_VOL:
        mvol = *(int16_t *)arg;
        LOG_I("set vol %d",mvol);
        level = rt_hw_interrupt_disable();
        player->volume = mvol;
        rt_hw_interrupt_enable(level);
        pwm_audio_set_volume(player->volume);
        break;

    case PLAYER_CMD_GET_VOL:
        *(uint8_t *)arg = player->volume;
        break;
    case PLAYER_CMD_GET_STATUS:
        *(uint8_t *)arg = player->status;
        break;
    }
    return 0;
}

int audio_player_init(void)
{
    LOG_I("enter %s >>>\n", __func__);
    //audio_player_start(v_player);
    //audio_player_control(v_player, PLAYER_CMD_INIT, v_player->video_list[0]);

    return 0;
}

//INIT_APP_EXPORT(audio_player_init);

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

#include <stdio.h>
#include <stdint.h>
#include <string.h>
#include <stdlib.h>

typedef struct WAV_RIFF {
    /* chunk "riff" */
    char        ChunkID[4];     /* "RIFF" */
    /* sub-chunk-size */
    uint32_t    ChunkSize;  /* 36 + Subchunk2Size */
    /* sub-chunk-data */
    char        Format[4];      /* "WAVE" */
} RIFF_t;

typedef struct WAV_FMT {
    /* sub-chunk "fmt" */
    char        Subchunk1ID[4];    /* "fmt " */
    /* sub-chunk-size */
    uint32_t    Subchunk1Size; /* 16 for PCM */
    /* sub-chunk-data */
    uint16_t    AudioFormat;   /* PCM = 1*/
    uint16_t    NumChannels;   /* Mono = 1, Stereo = 2, etc. */
    uint32_t    SampleRate;    /* 8000, 44100, etc. */
    uint32_t    ByteRate;      /* = SampleRate * NumChannels * BitsPerSample/8 */
    uint16_t    BlockAlign;    /* = NumChannels * BitsPerSample/8 */
    uint16_t    BitsPerSample; /* 8bits, 16bits, etc. */
} FMT_t;

typedef struct WAV_DATA {
    /* sub-chunk "data" */
    char        Subchunk2ID[4];    /* "data" */
    /* sub-chunk-size */
    uint32_t    Subchunk2Size; /* data size */
    /* sub-chunk-data */
//    Data_block_t block;
} Data_t;

//typedef struct WAV_data_block {
//} Data_block_t;

typedef struct WAV_HEADER {
    RIFF_t  riff;
    FMT_t   fmt;
    Data_t  data;
} Wav_Header_t;

void *wav_file_decoder_init(const char *file, Wav_Header_t *header)
{
    int i;
    int if_found_data = 0;
    FILE* fp = fopen(file, "rb");
    uint8_t buf[96] = {0};
    
    if (fp == NULL) {
        rt_kprintf("Failed to open WAV file.\n");
        return NULL;
    }

    // 读取 WAV 文件头
    fread(&header->riff, 1, sizeof(header->riff), fp);
    fread(&header->fmt, 1, sizeof(header->fmt), fp);
    fread(&buf, 1, sizeof(buf), fp);
    
    // to find "data"
    for (i = 0; i < sizeof(buf); i += 2) {
        if (!memcmp(buf + i, "da", 2)) {
            if (!memcmp(buf + i + 2, "ta", 2)) {
                // found "data"
                if_found_data = 1;
                rt_kprintf("found i = %d\n", i);
                memcpy(&header->data, buf + i, sizeof(header->data));
                break;
            }
        }
    }
    
    if (!if_found_data) {
        rt_kprintf("No data part found !\n");
        fclose(fp);
        return NULL;
    }
    
    //seek file
    int offset = header->riff.ChunkSize - header->data.Subchunk2Size + 4 + 4;
    rt_kprintf("fseek: %d\n", offset);
    fseek(fp, offset, SEEK_SET);
    
    //info
    rt_kprintf("ChunkSize:      %d(%08X) = %d KB\n", \
        header->riff.ChunkSize, header->riff.ChunkSize, header->riff.ChunkSize / 1024);
    
    rt_kprintf("Subchunk1Size:  %d = %d KB\n", header->fmt.Subchunk1Size, header->fmt.Subchunk1Size / 1024);
    rt_kprintf("AudioFormat:    %d\n", header->fmt.AudioFormat);
    rt_kprintf("NumChannels:    %d\n", header->fmt.NumChannels);
    rt_kprintf("SampleRate:     %d\n", header->fmt.SampleRate);
    rt_kprintf("ByteRate:       %d\n", header->fmt.ByteRate);
    rt_kprintf("BlockAlign:     %d\n", header->fmt.BlockAlign);
    rt_kprintf("BitsPerSample:  %d\n", header->fmt.BitsPerSample);
    
    rt_kprintf("Subchunk2Size:  %d(%08X) = %d KB\n", \
        header->data.Subchunk2Size, header->data.Subchunk2Size, header->data.Subchunk2Size / 1024);
    
    pwm_audio_config_t pac;
    pac.duty_resolution    = 10;
    pac.gpio_num_left      = 1;
    pac.gpio_num_right     = -1;
    pac.ringbuf_len        = 1024 * 8;
    
    pwm_audio_init(&pac);
    pwm_audio_set_volume(16);
    pwm_audio_set_param(header->fmt.SampleRate, header->fmt.BitsPerSample, header->fmt.NumChannels);

    return fp;
}

int wav_file_decoder_processing(void *fp, Wav_Header_t *header)
{
    int total_pcm_data_len = header->data.Subchunk2Size;
    uint8_t *data = NULL;
    int max_len = 8192;
    int ret_len;
    int finished_len = 0;
    int cnt = 0;
    int wr_cnt = 0;
    
    data = (uint8_t *)malloc(max_len);
    if (!data) {
        return -1;
    }

    pwm_audio_start();
    
    while (finished_len < total_pcm_data_len) {
        ret_len = fread(data, 1, max_len, fp);
        if (ret_len == 0) {
            break;
        }

        // to play audio
        pwm_audio_write((uint8_t *)data, ret_len, &wr_cnt, 500);

        //add offset
        finished_len += ret_len;
        //rt_kprintf("cnt ----> %d -> %d -> %d/%d\n", ++cnt, ret_len, finished_len, total_pcm_data_len);
    }
    
    free(data);
    
    return 0;
}

int wav_file_decoder_deinit(void *fp)
{
    pwm_audio_stop();
    pwm_audio_deinit();
    fclose((FILE *) fp);
    return 0;
}

int wav_file_decoder(const char *file)
{
    Wav_Header_t wav_header;
    void *fp = NULL;
    
    fp = wav_file_decoder_init(file, &wav_header);
    
    wav_file_decoder_processing(fp, &wav_header);
    
    wav_file_decoder_deinit(fp); 

    return 0; 
}

#if 1

static void wav_player_test_cmd(int argc, char**argv)
{
    const char *file = "/00-1.wav";

    if (argc > 1) {
        file = argv[1];
    }

    wav_file_decoder(file); 
}

#else

static void wav_player_test_cmd(int argc, char**argv)
{
    int fd;
    int cnt;
    const char *file = "/S:00-1.wav";

    if (argc > 1) {
        file = argv[1];
    }

    v_pbuffer = (uint8_t *)rt_malloc(DCODE_BUFFER_SIZE);

    fd = music_start_parser(v_player, fd, file); 

    pwm_audio_start();

    while (1) {
        if(fread(v_pbuffer, READ_BUFFER_FRAME_SIZE, 1, fp) == 1) {
            pwm_audio_write((uint8_t *)v_pbuffer, READ_BUFFER_FRAME_SIZE, &cnt, 500);
            //rt_kprintf("write cnt: %d\n", cnt);            
        } else {
            rt_kprintf("read error ...\n");
            break;
        }
    }

    pwm_audio_wait_complete(RT_WAITING_FOREVER);

    pwm_audio_stop();

    pwm_audio_deinit();
}

#endif

MSH_CMD_EXPORT(wav_player_test_cmd, wav_palyer_test_cmd sample: wav_palyer_test_cmd);

