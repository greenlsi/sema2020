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

//////////////////////////////////////////////////////////////////
////////////////////////// FSM LED ///////////////////////////////
//////////////////////////////////////////////////////////////////

extern bool repartidor_on;

//Definicion de los estados y las FSMs
enum led_status {
  	LED_OFF,
	LED_BLINK,
};

//---- CONDICIONES DE GUARDA ---
static int repartidor_iniciado(fsm_t* this) {return repartidor_on;}
static int repartidor_apagado(fsm_t* this) {return !repartidor_on;}

//--- ASIGNACIONES ----
void encender_led (fsm_t* this) {printf("Led ON\n");}
void blink_led (fsm_t* this) {printf(".\n");}
void apagar_led (fsm_t* this) {printf("Led OFF\n");}

//--- DESCRIPCION FSM ---
fsm_trans_t estado_led[] = {

  { LED_OFF, repartidor_iniciado, LED_BLINK, encender_led},
  { LED_BLINK, repartidor_iniciado, LED_BLINK, blink_led},
  { LED_BLINK, repartidor_apagado, LED_OFF, apagar_led},

  {-1, NULL, -1, NULL },
};
