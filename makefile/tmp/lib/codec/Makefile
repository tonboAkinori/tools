#多段Makefile
TARGET = codec.o
INCLUDE_PATH = -I../../include

SRCS = codec.c 
#OBJS = ${SRCS:.c=.o}
DEPS = ${SRCS:.c=.d}  

# COMPILE.c = $(CC) $(CFLAGS) $(CPPFLAGS) $(TARGET_ARCH) -c
# LINK.c = $(CC) $(CFLAGS) $(CPPFLAGS) $(LDFLAGS) $(TARGET_ARCH)
# OUTPUT_OPTION = -o $@
#
# %.o: %.c 
# $(COMPILE.C) $(OUTPUT_OPTION) $<

all: ${TARGET} 

${TARGET}:

%.o: %.c 
	${COMPILE.c} ${OUTPUT_OPTION} ${INCLUDE_PATH} -MMD $<

clean:
	${RM} *~ *.o ${TARGET} ${DEPS}

