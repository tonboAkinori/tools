#サフィックスルールを調べる
TARGET = app
SRCS = main.c sub.c

.SUFFIXES:
.SUFFIXES: .o .c

OBJS = ${SRCS:.c=.o}

${TARGET}: ${OBJS}
	${CC} -o $@ ${OBJS}

sub.o: sub.h

clean:
	${RM} *~ *.o ${TARGET}

