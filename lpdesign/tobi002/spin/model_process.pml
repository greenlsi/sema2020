
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