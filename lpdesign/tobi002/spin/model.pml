/* --------------- ULTRASONIC ---------------------*/

#define IDLE_US 0
#define SET_TRIGGER 1
#define WAIT_ECHO 2

/* --------------- IMU ---------------------*/

#define IDLE_IMU 0
#define DATA_ACQUISITION 1
#define DATA_PROCESSING 2
#define MAX_COUNTER 10

ltl ultrasonic_spec { 
    []( ((trigger == 1) && (timer_trigger_end == 1)) -> <> (trigger == 0) ) 
}

ltl IMU_spec {
    []( ((counter >= (MAX_COUNTER-1)) && (timer_IMU_end)) -> <> (IMU_state == DATA_PROCESSING) ) &&
    []( (timer_IMU_end==1) -> <> (IMU_state == DATA_ACQUISITION) ) 
}




/* --------------- ULTRASONIC FSM VARIABLES ---------------------*/

bit echo_received = 0;
bit trigger = 0;
bit timer_sample_start = 0;
bit timer_sample_end = 0;
bit timer_trigger_start = 0;
bit timer_trigger_end = 0;
int ultrasonic_state;

/* --------------- ULTRASONIC FSM ---------------------*/

active proctype ultrasonic_fsm() {
    
    ultrasonic_state = IDLE_US;

    do
    :: (ultrasonic_state == IDLE_US) -> atomic {
        if
        :: timer_sample_end -> printf("IDLE_US...\n"); timer_sample_end = 0; ultrasonic_state = SET_TRIGGER; trigger = 1; timer_trigger_start = 1;
        fi
    }
    :: (ultrasonic_state == SET_TRIGGER) -> atomic{ 
        if
        :: timer_trigger_end -> printf("SET_TRIGGER...\n"); timer_trigger_end = 0; ultrasonic_state = WAIT_ECHO; trigger = 0; 
        fi
    }
    :: (ultrasonic_state == WAIT_ECHO) -> atomic {
        if
        :: echo_received -> printf("WAIT_ECHO...\n"); echo_received = 0; ultrasonic_state = IDLE_US;
        fi
    }
    od

}

/* --------------- IMU FSM VARIABLES ---------------------*/

int IMU_state
bit timer_IMU_start = 0
bit timer_IMU_end= 0;
bit average_ready_IMU;
int counter=0;

/* --------------- IMU FSM ---------------------*/

active proctype IMU_fsm() {
    IMU_state = IDLE_IMU;        

    do
    :: (IMU_state == IDLE_IMU) -> atomic {
        if
        :: timer_IMU_end -> timer_IMU_end = 0; printf("IDLE_IMU...\n"); IMU_state = DATA_ACQUISITION
        fi
    }
    :: (IMU_state == DATA_ACQUISITION) -> atomic{ 
        if
        :: (counter < MAX_COUNTER-1) -> IMU_state = IDLE_IMU; counter = counter + 1
        :: (counter >= MAX_COUNTER-1) -> counter = counter + 1; IMU_state = DATA_PROCESSING;
        fi
    }
    :: (IMU_state == DATA_PROCESSING) -> atomic {
        if
        :: true -> counter = 0; printf("Calculating average...\n"); IMU_state = IDLE_IMU
        fi
    }
    od

}


/* --------------- ENTORNO ---------------------*/

active proctype entorno () {
    do
    :: true -> atomic { 
        if
        // Ultrasonidos
        :: !timer_sample_start -> timer_sample_start = 1
        :: timer_sample_start -> timer_sample_start = 0; timer_sample_end = 1 
        :: timer_trigger_start -> timer_trigger_start = 0; timer_trigger_end = 1 
        :: ((echo_received == 0) && (ultrasonic_state == WAIT_ECHO)) -> echo_received = 1
        
        // IMU
        :: !timer_IMU_start -> timer_IMU_start = 1
        :: timer_IMU_start -> timer_IMU_start = 0; timer_IMU_end = 1         

        :: skip
        fi
    }
    od
}