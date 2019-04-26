#ヘッダファイルの依存関係に対応する
TARGET = app
SRCS = main.c sub_ab.c parse.c 
OBJS = ${SRCS:.c=.o}
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
	${COMPILE.c} ${OUTPUT_OPTION} -MMD $<

${TARGET}: ${OBJS}
	${LINK.c} ${OUTPUT_OPTION} ${OBJS}

clean:
	${RM} *~ *.o ${TARGET} ${DEPS}

