TARGET = libApp.a

INCLUDE_PATH = -Iinclude

LIB_SRCS = libA.c libB.c libC.c
LIB_OBJS = ${LIB_SRCS:.c=.o}


all: ${TARGET}

# COMPILE.c = ${CC} ${CFLAGS} ${CPPFLAGS} ${TARGET_ARCH} -c
# OUTPUT_OPTION = -o $@

${TARGET}: ${LIB_OBJS}
	ar rv $@ $?

%.o : %.c
	${COMPILE.c} ${OUTPUT_OPTION} ${INCLUDE_PATH} $<

clean:
	${RM} *~ *.o ${TARGET}
