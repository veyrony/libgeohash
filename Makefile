# Simple Makefile for static library construction and testing

all: library test

library:
	gcc -c -g -O0 geohash.c -o geohash.o
	ar rcs libgeohash.a geohash.o
	rm geohash.o
	
test:
	gcc -g geohash_test.c geohash.c -o test
	./test
	rm test
	
clean: 
	rm -rf *.a *.o
