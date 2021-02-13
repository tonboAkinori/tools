#多段Makefile
TARGET = ui.o
INCLUDE_PATH = -I../../include

SRCS = ui.c 
DEPS = ${SRCS:.c=.d}  

# COMPILE.c = $(CC) $(CFLAGS) $(CPPFLAGS) $(TARGET_ARCH) -c
# LINK.c = $(CC) $(CFLAGS) $(CPPFLAGS) $(LDFLAGS) $(TARGET_ARCH)
# OUTPUT_OPTION = -o $@
#
# %.o: %.c 
# $(COMPILE.C) $(OUTPUT_OPTION) $<

all: ${TARGET}

-include ${DEPS}

%.o: %.c 
	${COMPILE.c} ${OUTPUT_OPTION} ${INCLUDE_PATH} -MMD $<

clean:
	${RM} *~ *.o ${TARGET} ${DEPS}

