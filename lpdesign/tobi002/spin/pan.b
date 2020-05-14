	switch (t->back) {
	default: Uerror("bad return move");
	case  0: goto R999; /* nothing to undo */

		 /* CLAIM semaphore_spec */
;
		;
		;
		;
		
	case 5: // STATE 13
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* CLAIM IMU_spec */
;
		;
		;
		;
		;
		;
		;
		;
		
	case 10: // STATE 20
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
		
	case 13: // STATE 13
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC entorno */

	case 14: // STATE 3
		;
		now.timer_sample_start = trpt->bup.oval;
		;
		goto R999;
;
		
	case 15: // STATE 45
		goto R999;

	case 16: // STATE 6
		;
		now.timer_sample_end = trpt->bup.ovals[1];
		now.timer_sample_start = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 17: // STATE 9
		;
		now.timer_trigger_end = trpt->bup.ovals[1];
		now.timer_trigger_start = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 18: // STATE 11
		;
		now.echo_received = trpt->bup.oval;
		;
		goto R999;

	case 19: // STATE 13
		;
		now.timer_IMU_start = trpt->bup.oval;
		;
		goto R999;

	case 20: // STATE 16
		;
		now.timer_IMU_end = trpt->bup.ovals[1];
		now.timer_IMU_start = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 21: // STATE 17
		;
		now.data = trpt->bup.oval;
		;
		goto R999;

	case 22: // STATE 20
		;
		now.semToSelect = trpt->bup.ovals[1];
		now.validData = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 23: // STATE 23
		;
		now.semToSelect = trpt->bup.ovals[1];
		now.validData = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 24: // STATE 26
		;
		now.semToSelect = trpt->bup.ovals[1];
		now.validData = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 25: // STATE 29
		;
		now.semToSelect = trpt->bup.ovals[1];
		now.validData = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 26: // STATE 32
		;
		now.semToSelect = trpt->bup.ovals[1];
		now.validData = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 27: // STATE 35
		;
		now.semToSelect = trpt->bup.ovals[1];
		now.validData = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 28: // STATE 38
		;
		now.semToSelect = trpt->bup.ovals[1];
		now.validData = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 29: // STATE 41
		;
		now.semToSelect = trpt->bup.ovals[1];
		now.validData = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 30: // STATE 42
		;
		now.changePos = trpt->bup.oval;
		;
		goto R999;
;
		
	case 31: // STATE 43
		goto R999;

	case 32: // STATE 51
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC semaphore_fsm */

	case 33: // STATE 1
		;
		now.semaphore_state = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 35: // STATE 8
		;
		now.semaphore_state = trpt->bup.ovals[3];
		now.semId = trpt->bup.ovals[2];
		now.data = trpt->bup.ovals[1];
		now.validData = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 4);
		goto R999;
;
		
	case 36: // STATE 15
		goto R999;

	case 37: // STATE 13
		;
		now.semaphore_state = trpt->bup.ovals[2];
		now.semId = trpt->bup.ovals[1];
		now.data = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;
;
		;
		
	case 39: // STATE 23
		;
		now.semaphore_state = trpt->bup.ovals[3];
		now.semId = trpt->bup.ovals[2];
		now.changePos = trpt->bup.ovals[1];
		now.validData = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 4);
		goto R999;
;
		
	case 40: // STATE 35
		goto R999;

	case 41: // STATE 28
		;
		now.semaphore_state = trpt->bup.ovals[2];
		now.semId = trpt->bup.ovals[1];
		now.changePos = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;

	case 42: // STATE 33
		;
		now.semaphore_state = trpt->bup.ovals[2];
		now.semId = trpt->bup.ovals[1];
		no_data = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;

	case 43: // STATE 40
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC IMU_fsm */

	case 44: // STATE 1
		;
		now.IMU_state = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 46: // STATE 6
		;
		now.IMU_state = trpt->bup.ovals[1];
		now.timer_IMU_end = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 48: // STATE 13
		;
		now.counter = trpt->bup.ovals[1];
		now.IMU_state = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		
	case 49: // STATE 18
		goto R999;

	case 50: // STATE 16
		;
		now.IMU_state = trpt->bup.ovals[1];
		now.counter = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 52: // STATE 24
		;
		now.IMU_state = trpt->bup.ovals[1];
		now.counter = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 53: // STATE 31
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC ultrasonic_fsm */

	case 54: // STATE 1
		;
		now.ultrasonic_state = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 56: // STATE 8
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
		
	case 58: // STATE 17
		;
		now.trigger = trpt->bup.ovals[2];
		now.ultrasonic_state = trpt->bup.ovals[1];
		now.timer_trigger_end = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;
;
		;
		
	case 60: // STATE 25
		;
		now.ultrasonic_state = trpt->bup.ovals[1];
		now.echo_received = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 61: // STATE 32
		;
		p_restor(II);
		;
		;
		goto R999;
	}

