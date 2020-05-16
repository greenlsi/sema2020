#include <assert.h>
#include <stdio.h>
#include <string.h>
#include <unistd.h>
#include <sys/select.h>
#include <sys/time.h>
#include <time.h>
#include <signal.h>
#include <poll.h>
#include <stdlib.h>

#include "fsm.h"
#include "alertas.h"
#include "motores.h"

#define NUMERO_COMPARTIMENTOS	8

extern fsm_trans_t estado_repartidor[];
extern fsm_trans_t estado_led[];
extern fsm_trans_t estado_sensor[];

int repartidor[NUMERO_COMPARTIMENTOS] = {0};


// wait until next_activation (absolute time)
void delay_until (struct timeval* next_activation) {
  struct timeval now, timeout;
  gettimeofday (&now, NULL);
  timersub(next_activation, &now, &timeout);
  if (timeout.tv_sec != -1) select (0, NULL, NULL, NULL, &timeout);
  else printf("overperiod\n");
}

static void set_frecuency(float perc) {
}

int main (int argc, char *argv[]) {
	
	//Toma los datos de pastillas a repartir
	if (argc-1 > NUMERO_COMPARTIMENTOS) {
		printf("El máximo de compartimentos es %d", NUMERO_COMPARTIMENTOS);
		return 1;
	}
	for (int i = 1; i < argc; i++) {
		repartidor[i-1] = atoi(argv[i]);
	}
	printf("Iniciando FSM\n");
	
	//Inicializa FSM
	fsm_t* estado_sensor_fsm = fsm_new(estado_sensor);
	fsm_t* estado_repartidor_fsm = fsm_new (estado_repartidor);
	fsm_t* estado_led_fsm = fsm_new (estado_led);
	
	//Funciones de tiempo
	struct timeval clk_period = { 0, 100*1000}; //Periodo de 100ms
	struct timeval next_activation;
	gettimeofday (&next_activation, NULL);
	timeradd(&next_activation, &clk_period, &next_activation);	

	int frame = 0;  

	while(1) {
		
		//Ejecutivo cíclico
		switch (frame) {
			case 4:
			set_frecuency(0.005);
			fsm_fire (estado_sensor_fsm);
			fsm_fire (estado_repartidor_fsm);
			fsm_fire (estado_led_fsm);	
			break;
			default :
			set_frecuency(0.0045);
			fsm_fire (estado_sensor_fsm);
			fsm_fire (estado_repartidor_fsm);	
			break;
		}
		frame = (frame + 1) % 5;
		
	    //Espera a próxima ejecución
      	delay_until (&next_activation);
		timeradd(&next_activation, &clk_period, &next_activation);	
	}
	return 1;
}
