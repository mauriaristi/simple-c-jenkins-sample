


IDIR     =include
CC       =gcc
CFLAGS   =-I$(IDIR) 

BDIR     =build
SDIR     =src
ODIR     =bin
LDIR     =../lib

LIBS     = 

_DEPS    = simple.h
DEPS     = $(patsubst %,$(IDIR)/%,$(_DEPS))

_OBJ     = simple.o example1.o
OBJ      = $(patsubst %,$(ODIR)/%,$(_OBJ))




$(ODIR)/%.o: $(SDIR)/%.c $(DEPS)
	$(CC) -c -o $@ $< $(CFLAGS)

example1: $(OBJ)
	$(CC) -o $(BDIR)/$@ $^ $(CFLAGS) $(LIBS)

.PHONY: clean

clean:
	rm -f $(BDIR)/* $(ODIR)/*.o *~ core $(INCDIR)/*~ 