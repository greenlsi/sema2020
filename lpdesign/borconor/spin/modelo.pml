ltl inicio {<>(repartidor_on)}
ltl fin {[]((repartidor_on) | <>(repartidor_on & <> !repartidor_on))}
ltl sensores_on {[]((!repartidor_on) | <>(repartidor_on & <> estado_sensor == SENSOR_ON))}
ltl led_on {[]((!repartidor_on) | <>(repartidor_on & <> estado_led == LED_BLINK))}
ltl detector_pastilla {[]((estado_repartidor == CAIDA && sensor_caida && n_caida < 3) -> <>(estado_repartidor == REPARTIR && !err_caida))}
ltl detector_pastilla_error {[]((estado_repartidor == CAIDA && n_caida == 3) -> <>(!err_caida))}
ltl error_abierto {[]([]((sensor_puerta) && [](timer_end)) -> [](estado_repartidor != POSICION))}
ltl error_dispensar{[]([](n_pastillas == 0) -> [](!aviso_toma))}
ltl alerta_recoger{[]((n_pastillas > 0 && [](!err_abierto) && [](!err_vaso) && [](timer_end)) -> <>(aviso_toma))}
ltl recogida_correcta{[](((estado_repartidor == RECOGIDA) && [](sensor_vaso)) -> <>(aviso_recogida_ok))}
ltl error_recogida{[](((estado_repartidor == RECOGIDA) && [](!sensor_vaso) &&[](timer_end)) -> <>(err_recoger))}


//ltl recogida_toma{[]((estado_repartidor == RECOGIDA && sensor_vaso) -> <>(aviso_recogida_ok))}
//ltl inicio { []((estado == IDLE) && start) -> <>(estado == REPARTIR) }
//ltl puerta_abierta { []((estado == ESPERA_CERRAR) W sensor_puerta) -> <>(estado == IDLE) }
//ltl vaso { []((sensor_vaso == 0) -> (recogida_ok == 0)) }
//ltl normal { []((estado != IDLE) W sensor_vaso) -> <>(recogida_ok == 1) }
//ltl sin_pastillas { []((estado == CAIDA) W sensor_caida) -> <>(estado == REPARTIR) }



mtype = { IDLE, REPARTIR, RECOGIDA, POSICION, ESPERA_VASO, CAIDA, ESPERA_CERRAR }
mtype = { LED_OFF, LED_BLINK }
mtype = { SENSOR_OFF, SENSOR_ON }

bit sensor_vaso = 0
bit sensor_puerta = 0
bit sensor_caida = 0
bit start = 0

int estado_repartidor = IDLE
int estado_led = LED_OFF
int estado_sensor = SENSOR_OFF
int repartidor[8] = {2,0,0,0,0,0,1}
int i = 0
int n_caida = 0
int n_pastillas = 0
int n_recoger = 0
int j = 0
bit timer_start = 0
bit timer_end = 0
bit repartidor_on = 0;
int n_vaso = 0;
int n_puerta = 0;

bit err_dispensar = 0
bit err_caida = 0
bit err_abierto = 0
bit err_recoger = 0
bit err_vaso = 0
bit aviso_toma = 0
bit aviso_recogida_ok = 0

active proctype fsm_repartidor(){
	estado_repartidor = IDLE
	start = 1
	do
	::(estado_repartidor == IDLE) -> atomic {
		if
		:: (start) -> printf("inicio reparto\n"); start = 0; i = 0; n_pastillas = 0; n_recoger = 0; n_vaso = 0; n_puerta = 0; repartidor_on = 1; estado_repartidor = REPARTIR; 
		fi
	}
	::(estado_repartidor == REPARTIR) -> atomic {
		if
		:: (i<8 && repartidor[i] == 0 && !sensor_puerta) ->printf("siguiente pastilla\n"); i = i + 1
		:: (i==8 && n_pastillas == 0 && !sensor_puerta) ->printf("error dispensar\n"); err_dispensar = 1; repartidor_on = 0; estado_repartidor = IDLE
		:: (i==8 && n_pastillas > 0 && !sensor_puerta) ->printf("pastilla dispensada, recoger\n"); timer_start = 1; timer_end = 0; n_recoger = n_recoger + 1; aviso_toma = 1; estado_repartidor = RECOGIDA;
		:: (i<8 && repartidor[i] > 0 && !sensor_puerta) ->printf("posicionando\n"); repartidor[i] = repartidor[i] - 1; n_caida = 0; estado_repartidor = POSICION
		:: (sensor_puerta) ->printf("puerta abierta\n"); timer_end = 0; timer_start = 1; n_puerta = n_puerta + 1; estado_repartidor = ESPERA_CERRAR
		fi
	}
	::(estado_repartidor == RECOGIDA) -> atomic {
		if
		:: (!sensor_vaso && timer_end && n_recoger < 3 ) -> printf("avisar para recoger\n"); timer_end = 0; timer_start = 1; aviso_toma = 1; n_recoger = n_recoger + 1
		:: (!sensor_vaso && timer_end && n_recoger == 3) -> printf("error recogida\n"); repartidor_on = 0; err_recoger = 1; estado_repartidor = IDLE
		:: (sensor_vaso) -> printf("recogida\n"); repartidor_on = 0; aviso_recogida_ok = 1; estado_repartidor = IDLE
		fi
	}
	::(estado_repartidor == POSICION) -> atomic {
		if
		:: (!sensor_vaso) ->printf("no hay vaso puesto\n"); timer_end = 0; timer_start = 1; n_vaso = n_vaso + 1; estado_repartidor = ESPERA_VASO
		:: (sensor_vaso) ->printf("moviendo servo\n"); n_caida = n_caida + 1; err_caida = 0; timer_end = 0; timer_start = 1; sensor_caida = 0; estado_repartidor = CAIDA
		fi
	}
	::(estado_repartidor == ESPERA_VASO) -> atomic {
		if
		:: (n_vaso == 3 || timer_end) ->printf("error vaso\n"); err_vaso = 1; repartidor_on = 0; estado_repartidor = IDLE
		:: (sensor_vaso && n_vaso < 3 && !timer_end) ->printf("moviendo servo\n"); n_caida = n_caida + 1; timer_end = 0; timer_start = 1; err_caida = 0; sensor_caida = 0; estado_repartidor = CAIDA
		fi
	}
	::(estado_repartidor == CAIDA) -> atomic {
		if
		:: ( n_caida < 3 && timer_end && !sensor_caida) ->printf("moviendo servo\n"); n_caida = n_caida + 1; timer_end = 0; timer_start = 1; 
		:: ( n_caida == 3 && timer_end && !sensor_caida) ->printf("error, no hay pastilla\n"); err_caida = 1; estado_repartidor = REPARTIR
		:: (sensor_caida) -> printf("pastilla tirada"); n_pastillas = n_pastillas + 1; estado_repartidor = REPARTIR			
		fi
	}	
	::(estado_repartidor == ESPERA_CERRAR) -> atomic {
		if
		:: (!sensor_puerta && n_puerta < 3 && !timer_end) -> printf("puerta cerrada\n"); estado_repartidor = REPARTIR; 
		:: (timer_end || n_puerta == 3) -> printf("error abierto\n"); err_abierto = 1; repartidor_on = 0; estado_repartidor = IDLE
		fi
	}
	od
}

active proctype fsm_led(){
	estado_led = LED_OFF
	do
	::(estado_led == LED_OFF) -> atomic {
		if
		:: (repartidor_on) -> printf("led on\n"); estado_led = LED_BLINK
		fi
	}
	::(estado_led == LED_BLINK) -> atomic {
		if
		:: (repartidor_on) -> printf("led blink\n")
		:: (!repartidor_on) -> printf("led off\n"); estado_led = LED_OFF
		fi
	}
	od
}

active proctype fsm_sensor(){
	estado_sensor = SENSOR_OFF
	do
	::(estado_sensor == SENSOR_OFF) -> atomic {
		if
		:: (repartidor_on) -> printf("sensor on\n"); estado_sensor = SENSOR_ON
		fi
	}
	::(estado_sensor == SENSOR_ON) -> atomic {
		if
		:: (!repartidor_on) -> printf("sensor off\n"); estado_sensor = SENSOR_OFF
		fi
	}
	od
}

//active proctype timer() {
	//do
	//:: atomic {
	//	if
	//	:: timer_start -> timer_end = 1; timer_start = 0
//		fi
//	}
//	od
//}


active proctype entorno(){
	do
	:: atomic {
		if
		:: (estado_sensor == SENSOR_ON) ->
			if
			:: sensor_vaso = 1
			:: sensor_vaso = 0
			:: sensor_caida = 1
			:: sensor_puerta = 1
			:: sensor_puerta = 0
			fi
		:: timer_start -> timer_end = 1; timer_start = 0
		:: skip -> skip
		fi
		printf("estado_repartidor=%e, puerta=%d, caida=%d, vaso=%d, time=%d\n", estado_repartidor, sensor_puerta, sensor_caida, sensor_vaso, timer_end);
		//printf("estado_sensor=%e, repartidor_on=%d\n", estado_sensor, repartidor_on);
	}
	od 	
}
