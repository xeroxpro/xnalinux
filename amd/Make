all: surec.so

surec.so: surec.c
	gcc -Wall -fPIC -shared -o surec.so surec.c -ldl

.PHONY clean:
	rm -f surec.so
