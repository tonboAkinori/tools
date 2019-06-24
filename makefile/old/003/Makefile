TARGET = app hoge
SRCS = main.c sub.c
OBJS = ${SRCS:.c=.o}

all: ${TARGET}

${TARGET}: ${OBJS}
	${CC} -o $@ ${OBJS}

main.o: main.c
	${CC} -c $<

sub.o: sub.c
	${CC} -c $<

sub.o: sub.h

clean:
	${RM} *~ *.o ${TARGET}

