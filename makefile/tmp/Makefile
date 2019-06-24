#‘½’iMakefile
TARGET = app 
SUB_TARGET = ui codec
LIB_UI_DIR = lib/ui
LIB_CODEC_DIR = lib/codec
INCLUDE_PATH = -Iinclude

SRCS = main.c 
OBJS = ${SRCS:.c=.o}
DEPS = ${SRCS:.c=.d}  

# COMPILE.c = $(CC) $(CFLAGS) $(CPPFLAGS) $(TARGET_ARCH) -c
# LINK.c = $(CC) $(CFLAGS) $(CPPFLAGS) $(LDFLAGS) $(TARGET_ARCH)
# OUTPUT_OPTION = -o $@
#
# %.o: %.c 
define template
	echo $1

endef


SRCS := $(wildcard lib/*.c)

LIST := hoge fuga
WORK := $(foreach var, ${LIST}, $(call template, ${var}))



hoge:
	${WORK}
	echo ${SRCS}

