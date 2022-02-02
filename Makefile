CXX=gcc
CXXFLAGS= -std=c11 -Wall -Wextra -Wpedantic -Werror -O0 -g
LDFLAGS=$(CXXFLAGS)
OBJ=$(SRC:.c=.o)

all:	rand-int-mean

makeit:	rand-int-mean.o
	$(CXX) $(LDFLAGS) -o $@ $^

%.o: %.c %.h
	$(CXX) $(CXXFLAGS) $(OPTFLAGS) -c -o $@ $<

clean:
	rm -rf *.o rand-int-mean