	switch (t->back) {
	default: Uerror("bad return move");
	case  0: goto R999; /* nothing to undo */

		 /* CLAIM IMU_spec */
;
		;
		;
		;
		;
		;
		;
		;
		
	case 7: // STATE 20
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* CLAIM ultrasonic_spec */
;
		;
		;
		;
		
	case 10: // STATE 13
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* CLAIM msg_spec */
;
		
	case 11: // STATE 1
		goto R999;

	case 12: // STATE 10
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* CLAIM semaphore_spec */
;
		;
		;
		;
		
	case 15: // STATE 13
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC entorno */

	case 16: // STATE 3
		;
		now.timer_sample_start = trpt->bup.oval;
		;
		goto R999;

	case 17: // STATE 6
		;
		now.timer_sample_end = trpt->bup.ovals[1];
		now.timer_sample_start = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 18: // STATE 9
		;
		now.timer_trigger_end = trpt->bup.ovals[1];
		now.timer_trigger_start = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 19: // STATE 11
		;
		now.echo_received = trpt->bup.oval;
		;
		goto R999;

	case 20: // STATE 13
		;
		now.timer_IMU_start = trpt->bup.oval;
		;
		goto R999;

	case 21: // STATE 16
		;
		now.timer_IMU_end = trpt->bup.ovals[1];
		now.timer_IMU_start = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 22: // STATE 17
		;
		now.data = trpt->bup.oval;
		;
		goto R999;

	case 23: // STATE 19
		;
		now.validData = trpt->bup.oval;
		;
		goto R999;

	case 24: // STATE 22
		;
		now.moving = trpt->bup.ovals[2];
		now.changePos_typeZone = trpt->bup.ovals[1];
		now.changePos = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;

	case 25: // STATE 25
		;
		now.sem_read = trpt->bup.ovals[1];
		now.sem_light = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 26: // STATE 28
		;
		now.sem_read = trpt->bup.ovals[1];
		now.sem_light = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 27: // STATE 31
		;
		now.sem_read = trpt->bup.ovals[1];
		now.sem_light = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 28: // STATE 34
		;
		now.sem_read = trpt->bup.ovals[1];
		now.sem_light = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 29: // STATE 35
		;
		now.moving = trpt->bup.oval;
		;
		goto R999;

	case 30: // STATE 36
		;
		now.moving = trpt->bup.oval;
		;
		goto R999;
;
		
	case 31: // STATE 37
		goto R999;
;
		
	case 32: // STATE 40
		goto R999;

	case 33: // STATE 46
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC msg_fsm */

	case 34: // STATE 1
		;
		now.msg_state = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 36: // STATE 5
		;
		now.sem_read = trpt->bup.ovals[1];
		now.msg = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		
	case 37: // STATE 22
		goto R999;

	case 38: // STATE 8
		;
		now.sem_read = trpt->bup.ovals[1];
		now.msg = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 39: // STATE 11
		;
		now.sem_read = trpt->bup.ovals[1];
		now.msg = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 40: // STATE 14
		;
		now.sem_read = trpt->bup.ovals[1];
		now.msg = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 41: // STATE 17
		;
		now.msg_state = trpt->bup.ovals[1];
		now.msg = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 42: // STATE 20
		;
		now.msg_state = trpt->bup.ovals[1];
		now.msg = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 44: // STATE 27
		;
		now.sem_read = trpt->bup.ovals[1];
		now.msg = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		
	case 45: // STATE 44
		goto R999;

	case 46: // STATE 30
		;
		now.sem_read = trpt->bup.ovals[1];
		now.msg = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 47: // STATE 33
		;
		now.msg_state = trpt->bup.ovals[1];
		now.msg = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 48: // STATE 36
		;
		now.msg_state = trpt->bup.ovals[1];
		now.msg = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 49: // STATE 39
		;
		now.sem_read = trpt->bup.ovals[1];
		now.msg = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 50: // STATE 42
		;
		now.sem_read = trpt->bup.ovals[1];
		now.msg = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 52: // STATE 49
		;
		now.msg_state = trpt->bup.ovals[1];
		now.msg = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		
	case 53: // STATE 54
		goto R999;

	case 54: // STATE 52
		;
		now.msg_state = trpt->bup.ovals[1];
		now.msg = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 55: // STATE 59
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC typeZone_fsm */

	case 56: // STATE 1
		;
		now.typeZone_state = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 58: // STATE 6
		;
		now.typeZone = trpt->bup.ovals[1];
		now.changePos_typeZone = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		
	case 59: // STATE 16
		goto R999;

	case 60: // STATE 10
		;
		now.typeZone = trpt->bup.ovals[1];
		now.changePos_typeZone = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 61: // STATE 14
		;
		now.typeZone = trpt->bup.ovals[1];
		now.changePos_typeZone = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 62: // STATE 21
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC semaphore_fsm */

	case 63: // STATE 1
		;
		now.semaphore_state = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 65: // STATE 8
		;
		now.semaphore_state = trpt->bup.ovals[3];
		now.semId = trpt->bup.ovals[2];
		now.data = trpt->bup.ovals[1];
		now.validData = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 4);
		goto R999;
;
		
	case 66: // STATE 15
		goto R999;

	case 67: // STATE 13
		;
		now.semaphore_state = trpt->bup.ovals[2];
		now.semId = trpt->bup.ovals[1];
		now.data = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;
;
		;
		
	case 69: // STATE 23
		;
		now.semaphore_state = trpt->bup.ovals[3];
		now.semId = trpt->bup.ovals[2];
		now.changePos = trpt->bup.ovals[1];
		now.validData = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 4);
		goto R999;
;
		
	case 70: // STATE 34
		goto R999;

	case 71: // STATE 28
		;
		now.semaphore_state = trpt->bup.ovals[2];
		now.semId = trpt->bup.ovals[1];
		now.changePos = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;

	case 72: // STATE 32
		;
		now.semaphore_state = trpt->bup.ovals[1];
		now.semId = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 73: // STATE 39
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC IMU_fsm */

	case 74: // STATE 1
		;
		now.IMU_state = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 76: // STATE 6
		;
		now.IMU_state = trpt->bup.ovals[1];
		now.timer_IMU_end = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 78: // STATE 13
		;
		now.counter = trpt->bup.ovals[1];
		now.IMU_state = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		
	case 79: // STATE 18
		goto R999;

	case 80: // STATE 16
		;
		now.IMU_state = trpt->bup.ovals[1];
		now.counter = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 82: // STATE 24
		;
		now.IMU_state = trpt->bup.ovals[1];
		now.counter = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 83: // STATE 31
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC ultrasonic_fsm */

	case 84: // STATE 1
		;
		now.ultrasonic_state = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 86: // STATE 8
		;
		now.timer_trigger_start = trpt->bup.ovals[3];
		now.trigger = trpt->bup.ovals[2];
		now.ultrasonic_state = trpt->bup.ovals[1];
		now.timer_sample_end = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 4);
		goto R999;
;
		;
		
	case 88: // STATE 17
		;
		now.trigger = trpt->bup.ovals[2];
		now.ultrasonic_state = trpt->bup.ovals[1];
		now.timer_trigger_end = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;
;
		;
		
	case 90: // STATE 25
		;
		now.ultrasonic_state = trpt->bup.ovals[1];
		now.echo_received = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 91: // STATE 32
		;
		p_restor(II);
		;
		;
		goto R999;
	}

