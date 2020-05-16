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
#include "alertas.h"
#include "motores.h"

static int timer = 0;

static timer_t timerid = 0;
static void timer_isr(union sigval arg) {timer = 1;}
static void timer_start(int ms) {
  timer = 0;	
  if (timerid != 0) timer_delete(timerid);
  struct itimerspec spec;
  struct sigevent se;
  se.sigev_notify = SIGEV_THREAD;
  se.sigev_value.sival_ptr = &timerid;
  se.sigev_notify_function = timer_isr;
  se.sigev_notify_attributes = NULL;
  spec.it_value.tv_sec = ms / 1000;
  spec.it_value.tv_nsec = (ms % 1000) * 1000000;
  spec.it_interval.tv_sec = 0;
  spec.it_interval.tv_nsec = 0;
  timer_create (CLOCK_REALTIME, &se, &timerid);
  timer_settime (timerid, 0, &spec, NULL);
}

//////////////////////////////////////////////////////////////////
////////////////////////// FSM REPARTIDOR ////////////////////////
//////////////////////////////////////////////////////////////////

//Configuracion
#define NUMERO_COMPARTIMENTOS	8
#define AVISOS_RECOGER_T		5000 	//Tiempo entre dos avisos de recoger consecutivos
#define AVISOS_RECOGER_MAX  	3	 	//Numero de avisos de recoger maximos
#define AVISOS_ABIERTO_MAX		3		//Numero de avisos por compuerta abierta máximos permitidos
#define  AVISOS_VASO_MAX		3		//Numero de avisos por vaso no colocado máximos permitidos
#define INTENTOS_CAIDA_MAX  	3	 	//Numero de intentos de soltar una pastilla si no es detectada por el sensor
#define ESPERA_CERRAR_MAX		10000	//Tiempo que espera a cerrar la compuerta como maximo
#define ESPERA_VASO_MAX			10000	//Tiempo que espera a que el vaso se coloque en su posicion como maximo
#define ESPERA_CAIDA_MAX		2000	//Tiempo que se espera a que el sensor de caida detecte la pastilla tras soltarla

//Definicion de los estados y las FSMs
enum deliverer_status {
  	IDLE,
	REPARTIR,
	ESPERA_CERRAR,
	POSICION,
	ESPERA_VASO,
	CAIDA,
	RECOGIDA,	
};

//variables compartidas (entradas y salidas)
extern int repartidor[NUMERO_COMPARTIMENTOS];
bool start = 1; 
bool repartidor_on = 0;
bool sensor_vaso = 0;
bool sensor_caida = 0;
bool sensor_abierto = 0;
bool sensor_caida_on = 0;

//Variables internas
static int i = 0; //Contador de iteraciones en el vector "repartidor"
static int n_caida = 0; //Numero de intentos de soltar pastilla
static int n_pastilas = 0; //Numero total de pastillas que se han dispensado
static int n_recoger = 0; //Numero de avisos de recoger
static int n_puerta = 0;  //Numero de avisos de cerrar
static int n_vaso = 0;   //Numero de avisos de colocar el vaso

//---- CONDICIONES DE GUARDA ---
static int iniciar (fsm_t* this) {return start;}
static int no_repartir_i (fsm_t* this) {
	if (i < NUMERO_COMPARTIMENTOS && !sensor_abierto) {return repartidor[i] == 0;}
	else return 0;
}
static int repartir_i (fsm_t* this) {
	if (i < NUMERO_COMPARTIMENTOS && !sensor_abierto) {return repartidor[i] > 0;}
	else return 0;
}
static int ciclo_completado_ok (fsm_t* this) {return i == NUMERO_COMPARTIMENTOS && n_pastilas > 0;}
static int ciclo_completado_err (fsm_t* this) {return i == NUMERO_COMPARTIMENTOS && n_pastilas == 0;}
static int sens_vaso_on (fsm_t* this) {return sensor_vaso;}
static int sens_vaso_on2 (fsm_t* this) {return sensor_vaso && n_vaso < AVISOS_VASO_MAX && !timer;}
static int sens_vaso_off (fsm_t* this) {return !sensor_vaso;}
static int sens_abierto_on (fsm_t* this) {return sensor_abierto;}
static int sens_abierto_off (fsm_t* this) {return !sensor_abierto && n_puerta < AVISOS_ABIERTO_MAX && !timer;}
static int sens_caida_on (fsm_t* this) {return sensor_caida;}
static int sens_caida_off (fsm_t* this) {return timer && !sensor_caida && n_caida < INTENTOS_CAIDA_MAX;}
static int intentos_caida_max (fsm_t* this) {return timer && !sensor_caida && n_caida == INTENTOS_CAIDA_MAX;}
static int intentos_recoger_max (fsm_t* this) {return timer && n_recoger == AVISOS_RECOGER_MAX;}
static int recoger_timeout (fsm_t* this) {return timer && n_recoger < AVISOS_RECOGER_MAX;}
static int vaso_timeout (fsm_t* this) {return timer || n_vaso == AVISOS_VASO_MAX;};
static int abierto_timeout (fsm_t* this) {return timer || n_puerta == AVISOS_ABIERTO_MAX;}

//--- ASIGNACIONES ----
static void func_start(){start = 0; repartidor_on = 1; i = 0; n_pastilas = 0; n_recoger = 0; n_puerta = 0; n_vaso = 0; motor_calibrar();}
static void inc_i(){i++;}
static void func_motor_pos(){repartidor[i]--; n_caida = 0; motor_posicion(i);}
static void func_alarma_vaso(){timer_start(ESPERA_VASO_MAX); n_vaso++; alarma_vaso();}
static void soltar_pastilla(){timer_start(ESPERA_CAIDA_MAX); sensor_caida = 0; servo_caida(); n_caida++;}
static void pastilla_ok(){n_pastilas++;}
static void func_aviso_recoger(){n_recoger++; timer_start(AVISOS_RECOGER_T); aviso_recoger();}
static void func_alarma_abierto(){timer_start(ESPERA_CERRAR_MAX); n_puerta++; alarma_abierto();}
static void toma_ok() {repartidor_on = 0; aviso_toma_ok();}
static void send_err_caida(){error_caida(i);}
static void send_err_disp() {repartidor_on = 0; error_dispensar();}
static void send_err_recoger() {repartidor_on = 0; error_recoger();}
static void send_err_vaso() {repartidor_on = 0; error_vaso();}
static void send_err_abierto() {repartidor_on = 0; error_abierto();}

//--- DESCRIPCION FSM ---
fsm_trans_t estado_repartidor[] = {

  { IDLE, iniciar, REPARTIR, func_start},

  { REPARTIR, no_repartir_i, REPARTIR, inc_i},
  { REPARTIR, sens_abierto_on, ESPERA_CERRAR, func_alarma_abierto}, 
  { REPARTIR, repartir_i, POSICION, func_motor_pos},
  { REPARTIR, ciclo_completado_ok, RECOGIDA, func_aviso_recoger},
  { REPARTIR, ciclo_completado_err, IDLE, send_err_disp},  
  
  { POSICION, sens_vaso_off, ESPERA_VASO, func_alarma_vaso},
  { POSICION, sens_vaso_on, CAIDA, soltar_pastilla},  

  { ESPERA_VASO, sens_vaso_on2, CAIDA, soltar_pastilla},  
  { ESPERA_VASO, vaso_timeout, IDLE, send_err_vaso},   

  { CAIDA, sens_caida_off, CAIDA, soltar_pastilla},
  { CAIDA, sens_caida_on, REPARTIR, pastilla_ok}, 
  { CAIDA, intentos_caida_max, REPARTIR, send_err_caida},

  { RECOGIDA, recoger_timeout, RECOGIDA, func_aviso_recoger},
  { RECOGIDA, intentos_recoger_max, IDLE, send_err_recoger},
  { RECOGIDA, sens_vaso_off, IDLE, toma_ok},

  { ESPERA_CERRAR, sens_abierto_off, REPARTIR, NULL},
  { ESPERA_CERRAR, abierto_timeout, IDLE, send_err_abierto},

  {-1, NULL, -1, NULL },
};