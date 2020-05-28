ltl LockerNoBlock { [](<>(LockerState == INIT_locker)) }            // The FSM always comes back to the initial state (doesn't block)
ltl AlarmNoBlock { [](<>(AlarmState == CLOSE_alarm)) }              // The FSM always comes back to the initial state (doesn't block)
ltl HubNoBlock { [](<>(HubState == INIT_hub)) }                     // The FSM always comes back to the initial state (doesn't block)
ltl RMTNoBlock { [](<>(RMTState == INIT_RMT)) }                     // The FSM always comes back to the initial state (doesn't block)
ltl LockerTimeout { [](!(StartTimeoutLocker && TimeoutLocker)) }    // A timeout isn't started if another has activated
ltl AlarmTimeout { [](!(StartTimeoutAlarm && TimeoutAlarm)) }       // A timeout isn't started if another has activated
ltl HubTimeout { [](!(StartTimeoutHub && TimeoutHub)) }             // A timeout isn't started if another has activated
ltl RMTTimeout { [](!(StartTimeoutRMT && TimeoutRMT)) }             // A timeout isn't started if another has activated
ltl NoLogProblems { []((Log > 0) -> [](Log > 0)) }                  // Once the log starts, it doesn't get erased
ltl LockerToHub { !(RMTState == WAIT_RESPONSE_RMT) W CardDetectedLocker }           // The hub doesn't process a locker query if a card hasn't been detected
ltl OpenLockerDoor { !(LockerState == OPEN_DOOR_locker) W PermissionAcceptedRMT }   // The locker door doesn't open if the hub doesn't give permission
ltl HubToHub { !(HubState == WAIT_RESPONSE_RPI_hub) W CardDetectedHub }             // The hub doesn't process a hub query if a card hasn't been detected
ltl OpenHubDoor { !(HubState == OPEN_DOOR_hub) W AccessAcceptedHub }                // The hub door doesn't open if it doesn't get the permission
ltl AccessLocker { [](!(AccessAcceptedLocker && AccessDeniedLocker)) }              // The access for the locker isn't granted and denied at the same time
ltl AccessHub { [](!(AccessAcceptedHub && AccessDeniedHub)) }                       // The access for the hub isn't granted and denied at the same time
ltl PermissionRMT { [](!(PermissionAcceptedRMT && PermissionDeniedRMT)) }           // The remote permission for the locker isn't granted and denied at the same time
ltl AlarmStart { !(AlarmState == ALARM_alarm) W (DoorOpenedAlarm || TimeoutAlarm) } // The alarm does not goes off if the door is not opened or the tiemout has not activated

mtype = {INIT_locker, WAIT_RESPONSE_locker, OPEN_DOOR_locker};
mtype = {CLOSE_alarm, OPEN_alarm, ALARM_alarm};
mtype = {INIT_hub, WAIT_RESPONSE_RPI_hub, OPEN_DOOR_hub};
mtype = {INIT_RMT, WAIT_RESPONSE_RMT, SEND_RESPONSE_RMT};
byte LockerState;
byte AlarmState;
byte HubState;
byte RMTState

bit CardDetectedLocker, RequestAccessLocker, AccessAcceptedLocker, AccessDeniedLocker, StartTimeoutLocker, TimeoutLocker = 0;
bit DoorOpenedAlarm, DoorClosedAlarm, AlarmON, StartTimeoutAlarm, TimeoutAlarm = 0;
bit DoorReadyAlarm = 1;
bit DoorOpen = 0;
bit CardDetectedHub, RequestAccessHub, AccessAcceptedHub, AccessDeniedHub, StartTimeoutHub, TimeoutHub = 0;
bit GetPermissionRMT, PermissionDeniedRMT, PermissionAcceptedRMT, StartTimeoutRMT, TimeoutRMT = 0;
int Log = 0;

active proctype locker(){
    LockerState = INIT_locker;
    do
    ::  atomic{LockerState == INIT_locker && CardDetectedLocker -> CardDetectedLocker = 0; DoorReadyAlarm = 0; RequestAccessLocker = 1; StartTimeoutLocker = 1; LockerState = WAIT_RESPONSE_locker}
    ::  atomic{LockerState == WAIT_RESPONSE_locker && AccessAcceptedLocker -> AccessAcceptedLocker = 0; AccessDeniedLocker = 0; TimeoutLocker = 0; StartTimeoutLocker = 1; LockerState = OPEN_DOOR_locker}
    ::  atomic{LockerState == WAIT_RESPONSE_locker && (AccessDeniedLocker || TimeoutLocker) -> AccessAcceptedLocker = 0; AccessDeniedLocker = 0; TimeoutLocker = 0; StartTimeoutLocker = 0; RequestAccessLocker = 0; DoorReadyAlarm = 0; LockerState = INIT_locker}
    ::  atomic{LockerState == OPEN_DOOR_locker && TimeoutLocker && DoorReadyAlarm -> TimeoutLocker = 0; LockerState = INIT_locker}
    od
}

active proctype alarm(){
    AlarmState = CLOSE_alarm;
    do
    :: atomic{AlarmState == CLOSE_alarm && DoorOpenedAlarm && LockerState == OPEN_DOOR_locker -> DoorOpenedAlarm = 0; StartTimeoutAlarm = 1; AlarmState = OPEN_alarm}
    :: atomic{AlarmState == OPEN_alarm && DoorClosedAlarm -> DoorClosedAlarm = 0; DoorReadyAlarm = 1; StartTimeoutAlarm = 0; TimeoutAlarm = 0; AlarmState = CLOSE_alarm}
    :: atomic{AlarmState == OPEN_alarm && TimeoutAlarm -> StartTimeoutAlarm = 0; TimeoutAlarm = 0; AlarmON = 1; AlarmState = ALARM_alarm}
    :: atomic{AlarmState == CLOSE_alarm && DoorOpenedAlarm && !(LockerState == OPEN_DOOR_locker) -> DoorOpenedAlarm = 0; AlarmON = 1; AlarmState = ALARM_alarm}
    :: atomic{AlarmState == ALARM_alarm && DoorClosedAlarm -> DoorClosedAlarm = 0; AlarmON = 0; DoorReadyAlarm = 1; AlarmState = CLOSE_alarm}
    od
}

active proctype hub(){
    HubState = INIT_hub;
    do
    ::  atomic{HubState == INIT_hub && CardDetectedHub -> CardDetectedHub = 0; RequestAccessHub = 1; StartTimeoutHub = 1; HubState = WAIT_RESPONSE_RPI_hub}
    ::  atomic{HubState == WAIT_RESPONSE_RPI_hub && AccessAcceptedHub -> AccessAcceptedHub = 0; AccessDeniedHub = 0; TimeoutHub = 0; StartTimeoutHub = 1; Log = Log + 1; HubState = OPEN_DOOR_hub}
    ::  atomic{HubState == WAIT_RESPONSE_RPI_hub && (AccessDeniedHub || TimeoutHub) -> AccessAcceptedHub = 0; AccessDeniedHub = 0; TimeoutHub = 0; StartTimeoutHub = 0; RequestAccessHub = 0; Log = Log + 1; HubState = INIT_hub}
    ::  atomic{HubState == OPEN_DOOR_hub && TimeoutHub -> TimeoutHub = 0; HubState = INIT_hub}
    od
}

active proctype RMT(){
    RMTState = INIT_RMT;
    do
    ::  atomic{RMTState == INIT_RMT && RequestAccessLocker -> RequestAccessLocker = 0; GetPermissionRMT = 1; StartTimeoutRMT = 1; RMTState = WAIT_RESPONSE_RMT}
    ::  atomic{RMTState == WAIT_RESPONSE_RMT && (PermissionDeniedRMT || PermissionAcceptedRMT || TimeoutRMT) ->
                AccessAcceptedLocker = PermissionAcceptedRMT; AccessDeniedLocker = PermissionDeniedRMT;
                PermissionDeniedRMT = 0; PermissionAcceptedRMT = 0; TimeoutRMT = 0; StartTimeoutRMT = 0; GetPermissionRMT = 0; RMTState = SEND_RESPONSE_RMT}
    ::  atomic{RMTState == SEND_RESPONSE_RMT -> Log = Log + 1; RMTState = INIT_RMT}
    od
}

active proctype context(){
    do
    ::  atomic{printf("LockerState: %e, AlarmState: %e, HubState: %e, RMTState: %e, Log: %d, CardDetectedLocker: %d, CardDetectedHub: %d, DoorOpenedAlarm: %d, DoorClosedAlarm: %d, DoorOpen: %d\n", LockerState, AlarmState, HubState, RMTState, Log, CardDetectedLocker, CardDetectedHub, DoorOpenedAlarm, DoorClosedAlarm, DoorOpen);
        if
        :: CardDetectedLocker = 1;
        :: CardDetectedHub = 1;
        :: atomic{!DoorOpen -> DoorOpenedAlarm = 1; DoorClosedAlarm = 0; DoorOpen = 1}
        :: atomic{DoorOpen -> DoorClosedAlarm = 1; DoorOpenedAlarm = 0; DoorOpen = 0}
        fi}
    od
}

active proctype API_locker(){
    do
    :: atomic{StartTimeoutLocker -> StartTimeoutLocker = 0; TimeoutLocker = 1;}
    od
}

active proctype API_alarm(){
    do
    :: atomic{StartTimeoutAlarm -> StartTimeoutAlarm = 0; TimeoutAlarm = 1;}
    od
}

active proctype API_hub(){
    do
    :: atomic{RequestAccessHub -> RequestAccessHub = 0; StartTimeoutHub = 0; AccessAcceptedHub = 1;}
    :: atomic{RequestAccessHub -> RequestAccessHub = 0; StartTimeoutHub = 0; AccessDeniedHub = 1;}
    :: atomic{StartTimeoutHub  -> StartTimeoutHub  = 0; TimeoutHub = 1;}
    od
}

active proctype API_RMT(){
    do
    :: atomic{GetPermissionRMT -> GetPermissionRMT = 0; StartTimeoutRMT = 0; PermissionAcceptedRMT = 1;}
    :: atomic{GetPermissionRMT -> GetPermissionRMT = 0; StartTimeoutRMT = 0; PermissionDeniedRMT = 1;}
    :: atomic{StartTimeoutRMT  -> StartTimeoutRMT  = 0; TimeoutRMT = 1;}
    od
}