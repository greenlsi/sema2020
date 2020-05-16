#include "motores.h"

#include "stdio.h"

void servo_caida(){
	printf("Servo de caida activado\n");
}

void motor_calibrar() {
	printf("Calibrando motor paso a paso \n");
}

void motor_posicion(int i){
	printf("servo de posicion moviendose a %d\n", i);
}