bin/main: bin/main.o bin/factorial.o
	gcc $^ -o $@ -Wall

bin/main.o: main.c factorial.h
	gcc $< -c -o $@ -Wall

bin/factorial.o: factorial.c
	gcc $^ -c -o $@ -Wall

