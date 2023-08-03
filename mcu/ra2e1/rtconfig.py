import os
import sys

# build out path
if os.getenv('BUILD_OUT_DIR'):
    BUILD_OUT_DIR = os.getenv('BUILD_OUT_DIR')
else:
    BUILD_OUT_DIR = ''

# user app root path
if os.getenv('APP_ROOT'):
    USER_APP_DIR = os.getenv('APP_ROOT')
else:
    USER_APP_DIR = ''

# packages src path
if os.getenv('PKGS_SRC_ROOT'):
    COMP_PACKAGES_DIR = os.getenv('PKGS_SRC_ROOT')
else:
    COMP_PACKAGES_DIR = 'packages'

# toolchains options
ARCH='arm'
CPU='cortex-m23'
CROSS_TOOL='gcc'
USED_ENV_ARM_GCC=False

if os.getenv('RTT_CC'):
    CROSS_TOOL = os.getenv('RTT_CC')
if os.getenv('RTT_ROOT'):
    RTT_ROOT = os.getenv('RTT_ROOT')

# cross_tool provides the cross compiler
# EXEC_PATH is the compiler execute path, for example, CodeSourcery, Keil MDK, IAR
if  CROSS_TOOL == 'gcc':
    PLATFORM    = 'gcc'
    EXEC_PATH   = 'C:\RT-ThreadStudio\\repo\Extract\ToolChain_Support_Packages\ARM\GNU_Tools_for_ARM_Embedded_Processors\\10.2.1\\bin'
elif CROSS_TOOL == 'keil':
    PLATFORM    = 'armclang'
    EXEC_PATH   = 'C:/Keil_v5'
elif CROSS_TOOL == 'iar':
    PLATFORM = 'iccarm'
    EXEC_PATH   = 'C:/Program Files/IAR Systems/Embedded Workbench 8.0'

# maybe it's got from ENV envrionment
if USED_ENV_ARM_GCC and os.getenv('RTT_EXEC_PATH'):
    EXEC_PATH = os.getenv('RTT_EXEC_PATH')

BUILD = 'debug'
# BUILD = 'release'

if PLATFORM == 'gcc':
    # toolchains
    PREFIX = 'arm-none-eabi-'
    CC = PREFIX + 'gcc'
    AS = PREFIX + 'gcc'
    AR = PREFIX + 'ar'
    CXX = PREFIX + 'g++'
    LINK = PREFIX + 'gcc'
    TARGET_EXT = 'elf'
    SIZE = PREFIX + 'size'
    OBJDUMP = PREFIX + 'objdump'
    OBJCPY = PREFIX + 'objcopy'
    NM = PREFIX + 'nm'

    DEVICE = ' -mcpu=cortex-m23 -mthumb -ffunction-sections -fdata-sections'
    CFLAGS = DEVICE + ' -Dgcc -fsigned-char -std=c99'
    AFLAGS = DEVICE + ' -x assembler-with-cpp -Wa,-mimplicit-it=thumb  -c'
    LFLAGS = DEVICE + ' -Wl,--gc-sections,-Map=' + BUILD_OUT_DIR + 'rtthread.map,-cref,-u,Reset_Handler -T script/fsp.ld -L script/'

    CPATH = ''
    LPATH = ''

    if BUILD == 'debug':
        CFLAGS += ' -O0 -gdwarf-2 -g -Wall'
        AFLAGS += ' -gdwarf-2'
    else:
        CFLAGS += ' -Os'

    POST_ACTION = OBJCPY + ' -O ihex $TARGET ' + BUILD_OUT_DIR + 'rtthread.hex\n' + SIZE + ' $TARGET \n'
    # POST_ACTION += OBJCPY + ' -O binary $TARGET ' + BUILD_OUT_DIR + 'rtthread.bin\n' + SIZE + ' $TARGET \n'

elif PLATFORM == 'armclang':
    # toolchains
    CC = 'armclang'
    CXX = 'armclang'
    AS = 'armasm'
    AR = 'armar'
    LINK = 'armlink'
    TARGET_EXT = 'axf'

    DEVICE = ' --cpu Cortex-M23 '

    CFLAGS = ' --target=arm-arm-none-eabi -mcpu=cortex-M23 -std=c99'
    CFLAGS += ' -fgnu -xc -c -fno-rtti -funsigned-char -gdwarf-3 -ffunction-sections '
    CFLAGS += ' -I' + EXEC_PATH + '/ARM/ARMCLANG/include'

    AFLAGS = DEVICE + ' --apcs=interwork '

    LFLAGS = DEVICE + ' --scatter ' + 'script/fsp.scat'
    LFLAGS += ' --info sizes --info totals --info unused --info veneers'
    LFLAGS += ' --list rt-thread.map --strict'
    LFLAGS += ' --libpath=' + EXEC_PATH + '/ARM/ARMCLANG/lib'
    LFLAGS += ' --diag_suppress 6319,6314 --summary_stderr --info summarysizes'
    LFLAGS += ' --map --load_addr_map_info --xref --callgraph --symbols'

    EXEC_PATH += '/ARM/ARMCLANG/bin/'

    if BUILD == 'debug':
        CFLAGS += ' -g -O0'
        AFLAGS += ' -g'
    else:
        CFLAGS += ' -Os'

    POST_ACTION = 'fromelf --bin $TARGET --output ' + BUILD_OUT_DIR + 'rtthread.bin \nfromelf -z $TARGET \n'

def dist_handle(BSP_ROOT, dist_dir):
    import sys
    cwd_path = os.getcwd()
    sys.path.append(os.path.join(os.path.dirname(BSP_ROOT), 'tools'))
    from sdk_dist import dist_do_building
    dist_do_building(BSP_ROOT, dist_dir)
