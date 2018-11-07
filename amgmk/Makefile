#BHEADER****************************************************************
# (c) 2007   The Regents of the University of California               *
#                                                                      *
# See the file COPYRIGHT_and_DISCLAIMER for a complete copyright       *
# notice and disclaimer.                                               *
#                                                                      *
#EHEADER****************************************************************
CC       = gcc
LDR      = gcc

CFLAGS   = -O3 -fopenmp -c

LDFLAGS  = -O3 -fopenmp -lm

LIBS     = -ltimer
LIB_DIRS = -L.

PROG     = AMGMk AMGMk_original

OBJS     = main.o \
           csr_matrix.o   csr_matvec.o  \
           laplace.o relax.o \
           hypre_error.o hypre_memory.o \
           vector.o

OBJS_ORIGINAL     = main.o \
          csr_matrix.o   csr_matvec_original.o  \
          laplace.o relax_original.o \
          hypre_error.o hypre_memory.o \
          vector_original.o

all : $(PROG)

AMGMk : $(OBJS)
	$(LDR)  $(LDFLAGS) -o AMGMk $(OBJS) $(LIB_DIRS) $(LIBS) -no-pie

AMGMk_original : $(OBJS_ORIGINAL)
		$(LDR)  $(LDFLAGS) -o AMGMk_original $(OBJS_ORIGINAL) $(LIB_DIRS) $(LIBS) -no-pie


clean :
	rm -f *.o $(PROG) core *~


.SUFFIXES : .o  .c

#*****************************************************************
#* Rules for C object file dependencies
#*****************************************************************
.c.o :
	$(CC) $(CFLAGS) $*.c
