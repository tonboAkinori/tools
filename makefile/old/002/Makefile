TARGET = app 
SRCS = main.c sub.c
OBJS = ${SRCS:.c=.o}

${TARGET}: ${OBJS}
	${CC} -o $@ ${OBJS}

main.o: main.c
	${CC} -c main.c

sub.o: sub.c
	${CC} -c sub.c

sub.o: sub.h

clean:
	${RM} *~ *.o ${TARGET}

