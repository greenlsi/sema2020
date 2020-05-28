#include "alertas.h"

#include "stdio.h"

void error_recoger() {
	printf("ERROR: No se han recogido las pastillas de la toma\n");	
}
void error_dispensar() {
	printf("ERROR: No se ha dispensado ninguna pastilla\n");
}

void error_caida(int i) {
	printf("ERROR: Pastilla no detectada en compartimento %d\n", i);
}

void error_vaso() {
	printf("ERROR: El vaso no se encuentra en su posicion\n");
}

void error_abierto() {
	printf("ERROR: El sistema tiene la compuerta abierta\n");
}

void alarma_vaso(){
	printf("Inserte el vaso en su posicion\n");
}

void alarma_abierto(){
	printf("Cierra la tapadera del repartidor\n");
}

void aviso_recoger(){
	printf("Pastillas listas para recoger. Retire el vaso\n");
}

void aviso_toma_ok() {
	printf("Toma realizada correctamente\n");
}
