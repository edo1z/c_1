CFLAGS += -I src/headers
CPPFLAGS += -I$(CPPUTEST_HOME)/include -I src/headers
LDFLAGS = -L$(CPPUTEST_HOME)/lib -lCppUTest -lCppUTestExt

bin/main: bin/main.o bin/number.o
	clang -o $@ $^ 

bin/test: bin/test.o bin/number.o
	clang++ -o $@ $(CPPFLAGS) $(LDFLAGS) $^ 

bin/test.o: test/test.cpp  
	clang++ -c -o $@ $(CPPFLAGS) $^

bin/main.o: src/main.c 
	clang -c $(CFLAGS) -o $@ $< 

bin/number.o: src/number.c
	clang -c -o $@ $^ 

main:
	bin/main

t:
	bin/test

clean:
	rm -rf bin
	mkdir bin

