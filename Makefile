


IDIR     =include
CC       =gcc
CFLAGS   =-I$(IDIR)

BDIR     =build
SDIR     =src
ODIR     =bin
LDIR     =../lib

LIBS     = 

_DEPS    = simple.h assert.h
DEPS     = $(patsubst %,$(IDIR)/%,$(_DEPS))

_OBJ     = simple.o assert.o  tests.o
OBJ      = $(patsubst %,$(ODIR)/%,$(_OBJ))


_OBJEX1  = example1.o
OBJEX1   = $(patsubst %,$(ODIR)/%,$(_OBJ))

_OBJEX2  = example2.o
OBJEX2   = $(patsubst %,$(ODIR)/%,$(_OBJ))



$(ODIR)/%.o: $(SDIR)/%.c $(DEPS)
	$(CC) -c -o $@ $< $(CFLAGS)


all: $(ODIR) $(BDIR) tests

$(ODIR):
	mkdir $@

$(BDIR):
	mkdir $@




tests:  $(OBJ)
	$(CC) -o $(BDIR)/$@ $^ $(CFLAGS) $(LIBS)

# example2: $(OBJ) $(OBJEX2)
# 	$(CC) -o $(BDIR)/$@ $^ $(CFLAGS) $(LIBS)

.PHONY: clean

clean:
	rm -rf $(BDIR) $(ODIR) 