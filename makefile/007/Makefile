#Â¿ÃÊMakefile
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
# $(COMPILE.C) $(OUTPUT_OPTION) $<

all: ${TARGET} ${SUB_TARGET}

${TARGET}: ${OBJS} lib/ui/ui.o lib/codec/codec.o 
	${LINK.c} ${OUTPUT_OPTION} ${OBJS} lib/ui/ui.o lib/codec/codec.o 

${SUB_TARGET}:
	${MAKE} -C lib/$@

%.o: %.c 
	${COMPILE.c} ${OUTPUT_OPTION} ${INCLUDE_PATH} -MMD $<


clean:
	${RM} *~ *.o ${TARGET} ${DEPS} 

