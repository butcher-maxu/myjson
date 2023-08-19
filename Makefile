CXXFLAGS=-Werror -Wall -g -std=c++11

jsoncc_test: jsoncc_test.cc jsoncc.o

jsoncc.o: jsoncc.h jsoncc.cc

test: jsoncc_test
	./jsoncc_test

.PHONY: clean
clean:
	rm -f jsoncc_test *.o *~
