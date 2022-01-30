  # Compiler
  #CC = gcc

  # Flags
  #CFLAGS  = -g -Wall -Werror -Wextra -pedantic -O0

  # Target executable
  #TARGET = executable

  #all: $(TARGET)

  #$(TARGET): $(TARGET).c
  #	$(CC) $(CFLAGS) -o $(TARGET) $(TARGET).c

  #clean:
  #	$(RM) $(TARGET)

CXX=gcc
CXXFLAGS=-Wall -Wextra -pedantic -Werror -O0 -g
LDFLAGS=$(CXXFLAGS)
OBJ=$(SRC:.cc=.o)

all:  makeit

makeit: rand-int-mean.o
    $(CXX) $(LDFLAGS) -o $@ $^

%.o: %.cc %.hh
    $(CXX) $(CXXFLAGS) $(OPTFLAGS) -c -o $@ $<

clean:
    rm -rf *.o makeit