/* --------------- ULTRASONIC ---------------------*/

#define IDLE_US 0
#define SET_TRIGGER 1
#define WAIT_ECHO 2

/* --------------- IMU ---------------------*/

#define IDLE_IMU 0
#define DATA_ACQUISITION 1
#define DATA_PROCESSING 2
#define MAX_COUNTER 10

/* --------------- SELECT SEMAPHORE VARIABLES ---------------------*/

#define IDLE_SEM 0
#define SEL_SEM 1

/* --------------- TYPE ZONE SELECTION FSM VARIABLES ---------------------*/

# define ACERA 0
# define PASO 1
# define CARRETERA 2
# define IDLE 0

/* --------------- MSG FSM VARIABLES ---------------------*/
# define NONE 0
# define RED 1
# define INTER 2
# define GREEN 3

# define ACERA_STATE 0
# define PASO_STATE 1
# define CARRETERA_STATE 2

# define NONE_MSG 0
# define CRUZAR 1
# define NO_CRUZAR 2
# define INTER1 3
# define INTER2 4
# define PELIGRO 5
# define FIN_PELIGRO 6

ltl semaphore_spec {
    []( (data && validData && (semaphore_state == IDLE_SEM)) -> <>(semId != 0) )    
}

ltl msg_spec {
    []( (msg_state == CARRETERA_STATE) -> (msg == PELIGRO) )
    //[]( ((msg_state == PASO_STATE) && ((typeZone == PASO)U(msg == INTER2)) && (sem_light == RED) && moving) -> <>(msg == INTER2) )
    //[]( (msg_state == ACERA_STATE && sem_light == RED) -> <>(msg == NO_CRUZAR) )
}

ltl ultrasonic_spec { 
    []( ((trigger == 1) && (timer_trigger_end == 1)) -> <> (trigger == 0) ) 
}

ltl IMU_spec {
    []( ((counter >= (MAX_COUNTER-1)) && (timer_IMU_end)) -> <> (IMU_state == DATA_PROCESSING) ) &&
    []( (timer_IMU_end==1) -> <> (IMU_state == DATA_ACQUISITION) ) 
}

// /* --------------- ULTRASONIC FSM VARIABLES ---------------------*/

bit echo_received = 0;
bit trigger = 0;
bit timer_sample_start = 0;
bit timer_sample_end = 0;
bit timer_trigger_start = 0;
bit timer_trigger_end = 0;
int ultrasonic_state;

// /* --------------- ULTRASONIC FSM ---------------------*/

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

// /* --------------- IMU FSM VARIABLES ---------------------*/

int IMU_state
bit timer_IMU_start = 0
bit timer_IMU_end= 0;
bit average_ready_IMU;
int counter=0;

// /* --------------- IMU FSM ---------------------*/

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


/* --------------- SEMAPHORE SELECTION FSM VARIABLES ---------------------*/
bit data = 0;
bit validData = 0;
bit semId = 0;   // 0 = None, 1 = sem_id_x
//byte semToSelect = 0;
bit changePos = 0;

int semaphore_state;

/* --------------- SEMAPHORE SELECTION FSM ---------------------*/

active proctype semaphore_fsm() {
    
    semaphore_state = IDLE_SEM;

    do
    :: (semaphore_state == IDLE_SEM) -> atomic {
        if
        :: (data && validData) -> printf("Change to SEL_SEM... Selecting semaphore 1...\n"); validData = 0; data = 0; semId = 1; semaphore_state = SEL_SEM;
        :: (data && !validData) -> printf("Change to SEL_SEM... Selecting semaphore None...\n"); data = 0; semId = 0; semaphore_state = SEL_SEM;
        fi
    }
    :: (semaphore_state == SEL_SEM) -> atomic{ 
        if
        :: (data && changePos && validData) -> printf("Change to SEL_SEM... Selecting semaphore 1...\n"); validData = 0; changePos = 0; semId = 1; semaphore_state = SEL_SEM;
        :: (data && changePos && !validData) -> printf("Change to SEL_SEM... Selecting semaphore None...\n"); changePos = 0; semId = 0; semaphore_state = SEL_SEM;
        :: !data -> printf("Change to IDLE_SEM... No data available...\n"); semId = 0; semaphore_state = IDLE_SEM;
        fi
    }
    od

}

byte typeZone = ACERA;   // 0 = Acera, 1 = sem_id_x
//byte semToSelect = 0;
bit changePos_typeZone = 0;

int typeZone_state;

/* --------------- SEMAPHORE SELECTION FSM ---------------------*/

active proctype typeZone_fsm() {
    
    typeZone_state = IDLE;

    do
    :: (typeZone_state == IDLE) -> atomic {
        if
        :: (changePos_typeZone) -> printf("Selecting ACERA...\n"); changePos_typeZone = 0; typeZone = ACERA;
        :: (changePos_typeZone) -> printf("Selecting PASO...\n"); changePos_typeZone = 0; typeZone = PASO;
        :: (changePos_typeZone) -> printf("Selecting CARRETERA...\n"); changePos_typeZone = 0; typeZone = CARRETERA;
        fi
    }
    od

}



byte sem_light = NONE;
byte msg = NONE_MSG
bit moving = 0;
int msg_state;
bit sem_read = 1;

/* --------------- SEMAPHORE SELECTION FSM ---------------------*/

active proctype msg_fsm() {
    
    msg_state = ACERA_STATE;

    do
    :: (msg_state == ACERA_STATE) -> atomic {
        if
        :: ((sem_light == NONE) && (typeZone == ACERA)) -> msg = NONE_MSG; sem_read = 1;
        :: ((sem_light == RED) && (typeZone == ACERA)) -> msg = NO_CRUZAR; sem_read = 1;
        :: ((sem_light == INTER) && (typeZone == ACERA)) -> msg = NO_CRUZAR; sem_read = 1;
        :: ((sem_light == GREEN) && (typeZone == ACERA)) -> msg = CRUZAR; sem_read = 1;
        :: (typeZone == PASO) -> msg = NONE_MSG; msg_state = PASO_STATE;
        :: (typeZone == CARRETERA) -> msg = PELIGRO; msg_state = CARRETERA_STATE;
        fi
    }
    :: (msg_state == PASO_STATE) -> atomic {
        if
        :: ((sem_light == INTER) && (typeZone == PASO) && moving) -> msg = INTER1; sem_read = 1;
        :: ((sem_light == RED) && (typeZone == PASO) && moving) -> msg = INTER2; sem_read = 1;
        :: (typeZone == CARRETERA) -> msg = PELIGRO; msg_state = CARRETERA_STATE;
        :: (typeZone == ACERA) -> msg = NONE_MSG; msg_state = ACERA_STATE;
        :: (!moving && (typeZone == PASO) && (sem_light != NONE)) -> msg = PELIGRO; sem_read = 1;
        :: ((sem_light == NONE) && (typeZone == PASO)) -> msg = NONE_MSG; sem_read = 1;
        fi
    }
    :: (msg_state == CARRETERA_STATE) -> atomic {
        if
        :: (typeZone == ACERA) -> msg = FIN_PELIGRO; msg_state = ACERA_STATE;
        :: (typeZone == PASO) -> msg = FIN_PELIGRO; msg_state = PASO_STATE;
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

        // SEMAPHORE
        :: data = 1;
        :: data -> validData = 1;
        :: changePos = 1; changePos_typeZone = 1; moving = 1;
        
        // MSG
        :: (semId && sem_read) -> sem_light = RED; sem_read = 0;
        :: (semId && sem_read) -> sem_light = INTER; sem_read = 0;
        :: (semId && sem_read) -> sem_light = GREEN; sem_read = 0;
        :: (!semId && sem_read)-> sem_light = NONE; sem_read = 0;
        :: moving = 1;
        :: moving = 0; // viene de un sensor que puede ponerse a 0. (no registra eventos)
        :: skip
        fi
        printf("data: %d   validData: %d   changePos: %d   state: %d\n", data, validData, changePos, semaphore_state);
        printf("msg_state: %d   sem_light: %d   moving: %d  typeZone: %d \n",msg_state, sem_light, moving, typeZone);
    }
    od
}