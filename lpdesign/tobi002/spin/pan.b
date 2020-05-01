	switch (t->back) {
	default: Uerror("bad return move");
	case  0: goto R999; /* nothing to undo */

		 /* CLAIM ultrasonic_spec */
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

		 /* PROC entorno */

	case 6: // STATE 3
		;
		now.timer_sample_start = trpt->bup.oval;
		;
		goto R999;
;
		
	case 7: // STATE 14
		goto R999;

	case 8: // STATE 6
		;
		now.timer_sample_end = trpt->bup.ovals[1];
		now.timer_sample_start = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 9: // STATE 9
		;
		now.timer_trigger_end = trpt->bup.ovals[1];
		now.timer_trigger_start = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 10: // STATE 11
		;
		now.echo_received = trpt->bup.oval;
		;
		goto R999;
;
		
	case 11: // STATE 12
		goto R999;

	case 12: // STATE 19
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC ultrasonic_fsm */

	case 13: // STATE 1
		;
		now.echo_received = trpt->bup.oval;
		;
		goto R999;

	case 14: // STATE 2
		;
		now.trigger = trpt->bup.oval;
		;
		goto R999;

	case 15: // STATE 3
		;
		now.timer_sample_start = trpt->bup.oval;
		;
		goto R999;

	case 16: // STATE 4
		;
		now.timer_sample_end = trpt->bup.oval;
		;
		goto R999;

	case 17: // STATE 5
		;
		now.timer_trigger_start = trpt->bup.oval;
		;
		goto R999;

	case 18: // STATE 6
		;
		now.timer_trigger_end = trpt->bup.oval;
		;
		goto R999;

	case 19: // STATE 7
		;
		now.ultrasonic_state = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 21: // STATE 14
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
		
	case 23: // STATE 23
		;
		now.trigger = trpt->bup.ovals[2];
		now.ultrasonic_state = trpt->bup.ovals[1];
		now.timer_trigger_end = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;
;
		;
		
	case 25: // STATE 31
		;
		now.ultrasonic_state = trpt->bup.ovals[1];
		now.echo_received = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 26: // STATE 38
		;
		p_restor(II);
		;
		;
		goto R999;
	}

