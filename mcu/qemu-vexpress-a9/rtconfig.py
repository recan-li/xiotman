import os

import uuid
def get_mac_address():
    mac=uuid.UUID(int = uuid.getnode()).hex[-12:]
    return "#define AUTOMAC".join([str(int(e/2) + 1) + '  0x' + mac[e:e+2] + '\n' for e in range(5,11,2)])

header = '''
#ifndef __MAC_AUTO_GENERATE_H__
#define __MAC_AUTO_GENERATE_H__

/* Automatically generated file; DO NOT EDIT. */
/* mac configure file for RT-Thread qemu */

#define AUTOMAC0  0x52
#define AUTOMAC1  0x54
#define AUTOMAC2  0x00
#define AUTOMAC'''

end = '''
#endif
'''

automac_h_fn = os.path.join(os.path.dirname(__file__), 'drivers', 'automac.h')
with open(automac_h_fn, 'w') as f:
    f.write(header + get_mac_address() + end)

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

# import user app config
user_app_config = USER_APP_DIR + '/app_config.py'
if os.path.exists(user_app_config):
    import sys
    sys.path.append(USER_APP_DIR)
    from app_config import APP_CFLAGS
    from app_config import APP_LFLAGS
else:
    APP_CFLAGS = ''
    APP_LFLAGS = ''

# packages src path
if os.getenv('PKGS_SRC_ROOT'):
    COMP_PACKAGES_DIR = os.getenv('PKGS_SRC_ROOT')
else:
    COMP_PACKAGES_DIR = 'packages'

# toolchains options
ARCH        ='arm'
CPU         ='cortex-a'
CROSS_TOOL  = 'gcc'
PLATFORM    = 'gcc'
EXEC_PATH   = os.getenv('RTT_EXEC_PATH') or r'/usr/bin'
BUILD       = 'debug'

LINK_SCRIPT = 'link.lds'

if PLATFORM == 'gcc':
    PREFIX  = os.getenv('RTT_CC_PREFIX') or 'arm-none-eabi-'
    CC      = PREFIX + 'gcc'
    CXX     = PREFIX + 'g++'
    AS      = PREFIX + 'gcc'
    AR      = PREFIX + 'ar'
    LINK    = PREFIX + 'gcc'
    TARGET_EXT = 'elf'
    SIZE    = PREFIX + 'size'
    OBJDUMP = PREFIX + 'objdump'
    OBJCPY  = PREFIX + 'objcopy'
    STRIP   = PREFIX + 'strip'
    CFPFLAGS = ' -msoft-float'
    AFPFLAGS = ' -mfloat-abi=softfp -mfpu=neon'
    DEVICE   = ' -save-temps=obj -march=armv7-a -mtune=cortex-a7 -ftree-vectorize -ffast-math -funwind-tables -fno-strict-aliasing'

    CXXFLAGS= DEVICE + CFPFLAGS + ' -Wall -fdiagnostics-color=always'
    CFLAGS  = DEVICE + CFPFLAGS + ' -Wall -Wno-cpp -std=gnu99 -D_POSIX_SOURCE -fdiagnostics-color=always'
    AFLAGS  = DEVICE + ' -c' + AFPFLAGS + ' -x assembler-with-cpp'    
    LFLAGS  = DEVICE + ' -Wl,--gc-sections,-Map=' + BUILD_OUT_DIR + 'rtthread.map,-cref,-u,system_vectors -T '+ LINK_SCRIPT + ' -lsupc++ -lgcc -static'
    CPATH   = ''
    LPATH   = ''

    # add static library for test
    #LFLAGS += ' -Wl,--whole-archive ' + BUILD_OUT_DIR + '/lib/libtest_gcc.a -Wl,--no-whole-archive'
    LFLAGS += APP_LFLAGS

    if BUILD == 'debug':
        CFLAGS   += ' -O0 -gdwarf-2'
        CXXFLAGS += ' -O0 -gdwarf-2'
        AFLAGS   += ' -gdwarf-2'
    else:
        CFLAGS   += ' -Os'
        CXXFLAGS += ' -Os'
    CXXFLAGS += ' -Woverloaded-virtual -fno-rtti'

    M_CFLAGS = CFLAGS + ' -mlong-calls -fPIC '
    M_CXXFLAGS = CXXFLAGS + ' -mlong-calls -fPIC'
    M_LFLAGS = DEVICE + CXXFLAGS + ' -Wl,--gc-sections,-z,max-page-size=0x4' +\
                                    ' -shared -fPIC -nostartfiles -nostdlib -static-libgcc'
    M_POST_ACTION = STRIP + ' -R .hash $TARGET\n' + SIZE + ' $TARGET \n'

    DUMP_ACTION = OBJDUMP + ' -D -S $TARGET > rtt.asm\n'
    POST_ACTION = OBJCPY + ' -O binary $TARGET ' + BUILD_OUT_DIR + 'rtthread.bin\n' + SIZE + ' $TARGET \n'
    POST_ACTION = POST_ACTION + 'cp -rf qemu* ' + BUILD_OUT_DIR + ' \n'
