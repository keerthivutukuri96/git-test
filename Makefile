#CC=gcc
#all:main.o sum.o
#	$(CC) main.o sum.o -o result
#
#main.o:main.c
#	$(CC) -c main.c -o main.o
#
#sum.o:sum.c
#	$(CC) -c sum.c -o sum.o
#
#clean:
#	rm -rf *.o result
CC=gcc
OBJECTS=main.o sum.o
BINARY=result

all: $(BINARY)

$(BINARY): $(OBJECTS)
	$(CC) -o $@ $^

%.o:%.c
	$(CC) -c $^ -o $@

clean:
	rm -rf $(OBJECTS) $(BINARY)
