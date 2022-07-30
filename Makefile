CFLAGS += -I src/headers

bin/main: bin/main.o bin/factorial.o
	clang -o $@ -Wall $^ 

bin/main.o: src/main.c 
	clang -c $(CFLAGS) -o $@ -Wall $< 

bin/factorial.o: src/factorial.c
	clang -c -o $@ -Wall $^ 

