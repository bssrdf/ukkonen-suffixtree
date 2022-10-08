CC=gcc
CFLAGS=-c -Wall -DMEMWATCH -DMAIN
LDFLAGS=-lm
SOURCES=main.c print_tree.c test.c tree.c path.c hashtable.c memwatch.c error.c benchmark.c
OBJECTS=$(SOURCES:.c=.o)
EXECUTABLE1=suffix

$(EXECUTABLE1): $(OBJECTS) 
	$(CC) $(LDFLAGS) $(OBJECTS) -o $@

.c.o:
	$(CC) $(CFLAGS) $< -o $@

clean: 
	rm -rf *.o suffix
