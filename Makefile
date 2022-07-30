bin/main: bin/main.o bin/factorial.o
	clang -o $@ -Wall $^ 

bin/main.o: main.c 
	clang -c -I. -o $@ -Wall $< 

bin/factorial.o: factorial.c
	clang -c -o $@ -Wall $^ 

