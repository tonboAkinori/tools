TARGET = app

LIB_INCLUDE_PATH = -Ilib/include

SRCS = main.c
OBJS = ${SRCS:.c=.o}

LDFLAGS = -Llib
LDLIBS = -lApp


all: ${TARGET}

# COMPILE.c = ${CC} ${CFLAGS} ${CPPFLAGS} ${TARGET_ARCH} -c
# OUTPUT_OPTION = -o $@

${TARGET}: ${OBJS}
	${CC} ${OUTPUT_OPTION} $< ${LDFLAGS} ${LDLIBS}  

%.o : %.c
	${COMPILE.c} ${LIB_INCLUDE_PATH} ${OUTPUT_OPTION} $<

clean:
	${RM} *~ *.o ${TARGET}
