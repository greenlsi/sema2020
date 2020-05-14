	switch (t->back) {
	default: Uerror("bad return move");
	case  0: goto R999; /* nothing to undo */

		 /* CLAIM msg_spec */
;
		
	case 3: // STATE 1
		goto R999;

	case 4: // STATE 10
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
		
	case 7: // STATE 13
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC entorno */

	case 8: // STATE 2
		;
		now.data = trpt->bup.oval;
		;
		goto R999;

	case 9: // STATE 4
		;
		now.validData = trpt->bup.oval;
		;
		goto R999;

	case 10: // STATE 7
		;
		now.moving = trpt->bup.ovals[2];
		now.changePos_typeZone = trpt->bup.ovals[1];
		now.changePos = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;

	case 11: // STATE 10
		;
		now.sem_read = trpt->bup.ovals[1];
		now.sem_light = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 12: // STATE 13
		;
		now.sem_read = trpt->bup.ovals[1];
		now.sem_light = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 13: // STATE 16
		;
		now.sem_read = trpt->bup.ovals[1];
		now.sem_light = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 14: // STATE 19
		;
		now.sem_read = trpt->bup.ovals[1];
		now.sem_light = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 15: // STATE 20
		;
		now.moving = trpt->bup.oval;
		;
		goto R999;

	case 16: // STATE 21
		;
		now.moving = trpt->bup.oval;
		;
		goto R999;
;
		
	case 17: // STATE 22
		goto R999;
;
		
	case 18: // STATE 25
		goto R999;

	case 19: // STATE 31
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC msg_fsm */

	case 20: // STATE 1
		;
		now.msg_state = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 22: // STATE 5
		;
		now.sem_read = trpt->bup.ovals[1];
		now.msg = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		
	case 23: // STATE 22
		goto R999;

	case 24: // STATE 8
		;
		now.sem_read = trpt->bup.ovals[1];
		now.msg = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 25: // STATE 11
		;
		now.sem_read = trpt->bup.ovals[1];
		now.msg = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 26: // STATE 14
		;
		now.sem_read = trpt->bup.ovals[1];
		now.msg = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 27: // STATE 17
		;
		now.msg_state = trpt->bup.ovals[1];
		now.msg = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 28: // STATE 20
		;
		now.msg_state = trpt->bup.ovals[1];
		now.msg = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 30: // STATE 27
		;
		now.sem_read = trpt->bup.ovals[1];
		now.msg = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		
	case 31: // STATE 44
		goto R999;

	case 32: // STATE 30
		;
		now.sem_read = trpt->bup.ovals[1];
		now.msg = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 33: // STATE 33
		;
		now.msg_state = trpt->bup.ovals[1];
		now.msg = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 34: // STATE 36
		;
		now.msg_state = trpt->bup.ovals[1];
		now.msg = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 35: // STATE 39
		;
		now.sem_read = trpt->bup.ovals[1];
		now.msg = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 36: // STATE 42
		;
		now.sem_read = trpt->bup.ovals[1];
		now.msg = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 38: // STATE 49
		;
		now.msg_state = trpt->bup.ovals[1];
		now.msg = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		
	case 39: // STATE 54
		goto R999;

	case 40: // STATE 52
		;
		now.msg_state = trpt->bup.ovals[1];
		now.msg = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 41: // STATE 59
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC typeZone_fsm */

	case 42: // STATE 1
		;
		now.typeZone_state = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 44: // STATE 6
		;
		now.typeZone = trpt->bup.ovals[1];
		now.changePos_typeZone = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		
	case 45: // STATE 16
		goto R999;

	case 46: // STATE 10
		;
		now.typeZone = trpt->bup.ovals[1];
		now.changePos_typeZone = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 47: // STATE 14
		;
		now.typeZone = trpt->bup.ovals[1];
		now.changePos_typeZone = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 48: // STATE 21
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC semaphore_fsm */

	case 49: // STATE 1
		;
		now.semaphore_state = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 51: // STATE 8
		;
		now.semaphore_state = trpt->bup.ovals[3];
		now.semId = trpt->bup.ovals[2];
		now.data = trpt->bup.ovals[1];
		now.validData = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 4);
		goto R999;
;
		
	case 52: // STATE 15
		goto R999;

	case 53: // STATE 13
		;
		now.semaphore_state = trpt->bup.ovals[2];
		now.semId = trpt->bup.ovals[1];
		now.data = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;
;
		;
		
	case 55: // STATE 23
		;
		now.semaphore_state = trpt->bup.ovals[3];
		now.semId = trpt->bup.ovals[2];
		now.changePos = trpt->bup.ovals[1];
		now.validData = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 4);
		goto R999;
;
		
	case 56: // STATE 34
		goto R999;

	case 57: // STATE 28
		;
		now.semaphore_state = trpt->bup.ovals[2];
		now.semId = trpt->bup.ovals[1];
		now.changePos = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;

	case 58: // STATE 32
		;
		now.semaphore_state = trpt->bup.ovals[1];
		now.semId = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 59: // STATE 39
		;
		p_restor(II);
		;
		;
		goto R999;
	}

