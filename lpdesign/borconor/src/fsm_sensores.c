#include <assert.h>
#include <stdio.h>
#include <string.h>
#include <unistd.h>
#include <sys/select.h>
#include <sys/time.h>
#include <time.h>
#include <signal.h>
#include <poll.h>
#include <stdbool.h>

#include "fsm.h"

static struct pollfd mypoll = { STDIN_FILENO, POLLIN | POLLPRI};

//////////////////////////////////////////////////////////////////
////////////////////////// FSM LED ///////////////////////////////
//////////////////////////////////////////////////////////////////

//Variables compartidas
extern bool repartidor_on;
extern bool sensor_vaso;
extern bool sensor_caida;
extern bool sensor_abierto;

//Definicion de los estados y las FSMs
enum led_status {
  	SENSOR_OFF,
	SENSOR_ON,
};

//---- CONDICIONES DE GUARDA ---
static int repartidor_iniciado(fsm_t* this) {return repartidor_on;}
static int repartidor_apagado(fsm_t* this) {return !repartidor_on;}
static int sensor_disponible(fsm_t* this) {return poll(&mypoll, 1, 0);}

//--- ASIGNACIONES ----
void encender_sensores (fsm_t* this) {printf("Sensores activados\n"); while(poll(&mypoll, 1, 0));}
void apagar_sensores (fsm_t* this) {printf("Sensores apagados\n");}
void leer_sensor(fsm_t* this) { 
		char tecla = getchar();
		if (tecla == 'v') {sensor_vaso = !sensor_vaso; printf("sensor_vaso (%d)\n", sensor_vaso);}
		else if (tecla == 'a') {sensor_abierto = !sensor_abierto; printf("sensor_abierto (%d)\n", sensor_abierto);}
		else if (tecla == 'c') {sensor_caida = 1; printf("sensor_caida (%d)\n", sensor_caida);}
}

//--- DESCRIPCION FSM ---
fsm_trans_t estado_sensor[] = {
  { SENSOR_OFF, repartidor_iniciado, SENSOR_ON, encender_sensores},
  { SENSOR_ON, repartidor_apagado, SENSOR_OFF, apagar_sensores},
  { SENSOR_ON, sensor_disponible, SENSOR_ON, leer_sensor},

  {-1, NULL, -1, NULL },
};

