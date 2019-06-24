#サフィックスルールを調べる
TARGET = app
SRCS = main.c sub.c
OBJS = ${SRCS:.c=.o}
# MAKEFLAGS += --no-builtin-rules

# COMPILE.c = $(CC) $(CFLAGS) $(CPPFLAGS) $(TARGET_ARCH) -c
# LINK.c = $(CC) $(CFLAGS) $(CPPFLAGS) $(LDFLAGS) $(TARGET_ARCH)
# OUTPUT_OPTION = -o $@

# %.o: %.c
# $(COMPILE.C) $(OUTPUT_OPTION) $<

%.o: %.c
	${COMPILE.c} ${OUTPUT_OPTION} $<

${TARGET}: ${OBJS}
	${LINK.c} ${OUTPUT_OPTION} ${OBJS} ${LIB}

sub.o: sub.h

clean:
	${RM} *~ *.o ${TARGET}

