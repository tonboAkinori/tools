TARGET := app
SUB_TARGET := ui codec

LIB_UI_DIR := lib/ui
#lib/uiのソースコードを探索
LIB_UI_SRC := $(shell find ${LIB_UI_DIR} -type f -name \*.c)
LIB_UI_OBJS := ${LIB_UI_SRC:.c=.o}

LIB_CODEC_DIR = lib/codec
#lib/codecのソースコード探索
LIB_CODEC_SRC := $(shell find ${LIB_CODEC_DIR} -type f -name \*.c)
LIB_CODEC_OBJS := ${LIB_CODEC_SRC:.c=.o}

INCLUDE_PATH = -Iinclude

SRCS = main.c 
OBJS = ${SRCS:.c=.o}
DEPS = ${SRCS:.c=.d}  

# COMPILE.c = $(CC) $(CFLAGS) $(CPPFLAGS) $(TARGET_ARCH) -c
# LINK.c = $(CC) $(CFLAGS) $(CPPFLAGS) $(LDFLAGS) $(TARGET_ARCH)
# OUTPUT_OPTION = -o $@
#
# %.o: %.c 
# $(COMPILE.C) $(OUTPUT_OPTION) $<

all: ${SUB_TARGET} ${TARGET} 

${SUB_TARGET}:
	${MAKE} -C lib/$@

${TARGET}: ${OBJS} ${LIB_UI_OBJS} ${LIB_CODEC_OBJS}
	${LINK.c} ${OUTPUT_OPTION} ${OBJS} ${LIB_UI_OBJS} ${LIB_CODEC_OBJS} 


%.o: %.c 
	${COMPILE.c} ${OUTPUT_OPTION} ${INCLUDE_PATH} -MMD $<


clean:
	${RM} *~ *.o ${TARGET} ${DEPS} 
	${MAKE} -C ${LIB_UI_DIR} clean
	${MAKE} -C ${LIB_CODEC_DIR} clean
