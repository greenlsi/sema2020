CC=gcc
CFLAGS=-g -Wall -O -I. -DNDEBUG

all: main

main: alertas.o motores.o main.o fsm.o fsm_repartidor.o fsm_led.o fsm_sensores.o -lrt

clean:
	rm -f *.o main


