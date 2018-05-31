




# BUILDDIR      = build
# INCLUDE_DIR   = include
# BIN_DIR       = bin
# SOURCE_DIR    = src
# CC            = clang
# CFLAGS        = -I$(INCLUDE_DIR)

# SOURCES       = $(SOURCE_DIR)/simple.c 
# DEPENDS       = $(INCLUDE_DIR)/simple.h



# LDFLAGS       = -I$(INCLUDE_DIR)


# all: simple

# clean:
# 	rm -rf $(BUILDDIR)/*

# simple: $(SOURCES)
# 	$(CC) $(SOURCE_DIR)/$(OBJS) -o $@ $(CFLAGS) 

# .c.o:
# 	$(CPP) -c $(CFLAGS) $< -o $@









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