OBJ = add.o sub.o mul.o div.o

.PHONY: clean

main: $(OBJ) libmylib.a main.o
	gcc -g $(OBJ) main.o -o main -L. -l mylib

libmylib.a: $(OBJ)
	ar rc libmylib.a $(OBJ)
	
add.o: add.c functions.h 
	gcc -c -g add.c -o add.o

sub.o: sub.c functions.h 
	gcc -c -g sub.c -o sub.o

mul.o: mul.c functions.h 
	gcc -c -g mul.c -o mul.o

div.o: div.c functions.h 
	gcc -c -g div.c -o div.o	

main.o: main.c
	gcc -c -g main.c -o main.o

clean: 
	rm *o main libmylib.a