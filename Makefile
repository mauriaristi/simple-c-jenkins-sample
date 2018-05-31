




BUILDDIR      = build
INCLUDE_DIR   = include
BIN_DIR       = bin
SOURCE_DIR    = src
CC            = clang
CFLAGS        = 
SOURCES       = simple.c 

OBJS          = $(SOURCES:.c=.o)

LDFLAGS       = -I$(INCLUDE_DIR)


all: simple

clean:
	rm -rf $(BUILDDIR)/*

simple: $(OBJS)
	$(CC) $(LDFLAGS) $(SOURCE_DIR)/$(OBJS) -o $(BUILDDIR)/$@

.c.o:
	$(CPP) -c $(CFLAGS) $< -o $@