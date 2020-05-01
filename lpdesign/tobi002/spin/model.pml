ltl ultrasonic_spec { 
    []( ((trigger == 1) && (timer_trigger_end == 1)) -> <> (trigger == 0) ) 
}


/* --------------- ULTRASONIC ---------------------*/

#define IDLE 0
#define SET_TRIGGER 1
#define WAIT_ECHO 2

bit echo_received;
bit trigger;
bit timer_sample_start, timer_sample_end;
bit timer_trigger_start, timer_trigger_end;
int ultrasonic_state;

active proctype ultrasonic_fsm() {
    echo_received = 0;
    trigger = 0;
    timer_sample_start = 0;
    timer_sample_end = 0;
    timer_trigger_start = 0;
    timer_trigger_end = 0;
    ultrasonic_state = IDLE;

    do
    :: (ultrasonic_state == IDLE) -> atomic {
        if
        :: timer_sample_end -> printf("IDLE...\n"); timer_sample_end = 0; ultrasonic_state = SET_TRIGGER; trigger = 1; timer_trigger_start = 1;
        fi
    }
    :: (ultrasonic_state == SET_TRIGGER) -> atomic{ 
        if
        :: timer_trigger_end -> printf("SET TRIGGER...\n"); timer_trigger_end = 0; ultrasonic_state = WAIT_ECHO; trigger = 0; 
        fi
    }
    :: (ultrasonic_state == WAIT_ECHO) -> atomic {
        if
        :: echo_received -> printf("WAIT_ECHO...\n"); echo_received = 0; ultrasonic_state = IDLE;
        fi
    }
    od

}


/* --------------- ENTORNO ---------------------*/

active proctype entorno () {
    do
    :: true -> atomic { 
        if
        :: !timer_sample_start -> timer_sample_start = 1
        :: timer_sample_start -> timer_sample_start = 0; timer_sample_end = 1 
        :: timer_trigger_start -> timer_trigger_start = 0; timer_trigger_end = 1 
        :: ((echo_received == 0) && (ultrasonic_state == WAIT_ECHO)) -> echo_received = 1
        //:: timer_sample_end = 1
        :: skip
        fi
    }
    od
}