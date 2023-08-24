
import os

# define use app FLAGS

APP_CFLAGS = ''

APP_LFLAGS = ' -Wl,--whole-archive ' + os.getenv('BUILD_OUT_DIR') + '/lib/libtest_gcc.a -Wl,--no-whole-archive'

