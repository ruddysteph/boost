SHELL = /bin/sh
CC = g++
RM = rm -f

CPPFLAGS = -I. -std=c++14
CFLAGS = -Wall -O3
LDFLAGS = 

PROGNAME = boost_adj
PACKAGE=$(PROGNAME)
VERSION = 1.0
HEADERS = 
SOURCES = boost_adj.cpp
OBJ = $(SOURCES:.cpp=.o)


all: $(PROGNAME)

$(PROGNAME): $(OBJ)
	$(CC) $(OBJ) $(LDFLAGS) -o $(PROGNAME)
	$(PROGNAME)

%.o: %.c
	$(CC) -g $(CPPFLAGS) $(CFLAGS) -c $< -o $@

clean:
	@$(RM) -r $(PROGNAME) $(OBJ)
