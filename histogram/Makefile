#----- Modify CC and CFLAGS as appropriate in your environment
CC = gcc
CFLAGS = -O3 -fopenmp

LIB = -lm -lc

UNITFILES =

#------------ EXECUTABLE FILES ---------------
all : histo histo_locks histo_atomic histo_creative
# origianl implementation
histo : histo.o $(UNITFILES)
	$(CC) $(CFLAGS) -o histo histo.o $(UNITFILES) $(LIB)

histo.o : histo.c
	$(CC) $(CFLAGS) -c histo.c $(INCLUDE)

# lock implementation
histo_locks : histo_locks.o $(UNITFILES)
	$(CC) $(CFLAGS) -o histo_locks histo_locks.o $(UNITFILES) $(LIB)

histo_locks.o : histo_locks.c
	$(CC) $(CFLAGS) -c histo_locks.c $(INCLUDE)

# atomic implementation
histo_atomic : histo_atomic.o $(UNITFILES)
	$(CC) $(CFLAGS) -o histo_atomic histo_atomic.o $(UNITFILES) $(LIB)

histo_atomic.o : histo_atomic.c
	$(CC) $(CFLAGS) -c histo_atomic.c $(INCLUDE)

# creative implementation
histo_creative : histo_creative.o $(UNITFILES)
	$(CC) $(CFLAGS) -o histo_creative histo_creative.o $(UNITFILES) $(LIB)

histo_creative.o : histo_creative.c
	$(CC) $(CFLAGS) -c histo_creative.c $(INCLUDE)

clean:
	rm -f histo histo_locks histo_atomic histo_creative *.o
