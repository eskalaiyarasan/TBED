#
# 'make depend' uses make depend to automatically generate dependencies
#
# 'make'  build executable
# 'make clean'  removes all .o and executable files
#

#define the Compile to use
CC=g++

#define any compile-time flags
CFLAGS= -Wall 

INCLUDES=-I./

# define library
# LFLAGS=-L

#sources
SRCS=xtea.cpp

OBJS=$(SRCS:.c=.o)

MAIN=xtea

.PHONY: depend clean

all: $(MAIN)
	@echo compile .1.2.3.
$(MAIN): $(OBJS)
	$(CC) $(CFLAGS) $(INCLUDES) -o $(MAIN) $(OBJS) 

.c.o:
	$(CC) -C $(CFLAGS) $(INCLUDES) -c $< -o $@


depend: $(SRCS)
	makedepend $(INCLUDES) $^

#DO NOT DELETE THIS LINE -- make depend needs it
