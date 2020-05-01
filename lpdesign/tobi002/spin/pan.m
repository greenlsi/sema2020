#define rand	pan_rand
#define pthread_equal(a,b)	((a)==(b))
#if defined(HAS_CODE) && defined(VERBOSE)
	#ifdef BFS_PAR
		bfs_printf("Pr: %d Tr: %d\n", II, t->forw);
	#else
		cpu_printf("Pr: %d Tr: %d\n", II, t->forw);
	#endif
#endif
	switch (t->forw) {
	default: Uerror("bad forward move");
	case 0:	/* if without executable clauses */
		continue;
	case 1: /* generic 'goto' or 'skip' */
		IfNotBlocked
		_m = 3; goto P999;
	case 2: /* generic 'else' */
		IfNotBlocked
		if (trpt->o_pm&1) continue;
		_m = 3; goto P999;

		 /* CLAIM ultrasonic_spec */
	case 3: // STATE 1 - _spin_nvr.tmp:3 - [((!(!(((trigger==1)&&(timer_trigger_end==1))))&&!((trigger==0))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][1] = 1;
		if (!(( !( !(((((int)now.trigger)==1)&&(((int)now.timer_trigger_end)==1))))&& !((((int)now.trigger)==0)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 4: // STATE 8 - _spin_nvr.tmp:8 - [(!((trigger==0)))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported8 = 0;
			if (verbose && !reported8)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported8 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported8 = 0;
			if (verbose && !reported8)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported8 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][8] = 1;
		if (!( !((((int)now.trigger)==0))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 5: // STATE 13 - _spin_nvr.tmp:10 - [-end-] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported13 = 0;
			if (verbose && !reported13)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported13 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported13 = 0;
			if (verbose && !reported13)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported13 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][13] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC entorno */
	case 6: // STATE 2 - model.pml:52 - [(!(timer_sample_start))] (16:0:1 - 1)
		IfNotBlocked
		reached[1][2] = 1;
		if (!( !(((int)now.timer_sample_start))))
			continue;
		/* merge: timer_sample_start = 1(16, 3, 16) */
		reached[1][3] = 1;
		(trpt+1)->bup.oval = ((int)now.timer_sample_start);
		now.timer_sample_start = 1;
#ifdef VAR_RANGES
		logval("timer_sample_start", ((int)now.timer_sample_start));
#endif
		;
		/* merge: .(goto)(16, 14, 16) */
		reached[1][14] = 1;
		;
		/* merge: .(goto)(0, 17, 16) */
		reached[1][17] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 7: // STATE 14 - model.pml:59 - [.(goto)] (0:16:0 - 5)
		IfNotBlocked
		reached[1][14] = 1;
		;
		/* merge: .(goto)(0, 17, 16) */
		reached[1][17] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 8: // STATE 4 - model.pml:53 - [(timer_sample_start)] (16:0:2 - 1)
		IfNotBlocked
		reached[1][4] = 1;
		if (!(((int)now.timer_sample_start)))
			continue;
		/* merge: timer_sample_start = 0(16, 5, 16) */
		reached[1][5] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.timer_sample_start);
		now.timer_sample_start = 0;
#ifdef VAR_RANGES
		logval("timer_sample_start", ((int)now.timer_sample_start));
#endif
		;
		/* merge: timer_sample_end = 1(16, 6, 16) */
		reached[1][6] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.timer_sample_end);
		now.timer_sample_end = 1;
#ifdef VAR_RANGES
		logval("timer_sample_end", ((int)now.timer_sample_end));
#endif
		;
		/* merge: .(goto)(16, 14, 16) */
		reached[1][14] = 1;
		;
		/* merge: .(goto)(0, 17, 16) */
		reached[1][17] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 9: // STATE 7 - model.pml:54 - [(timer_trigger_start)] (16:0:2 - 1)
		IfNotBlocked
		reached[1][7] = 1;
		if (!(((int)now.timer_trigger_start)))
			continue;
		/* merge: timer_trigger_start = 0(16, 8, 16) */
		reached[1][8] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.timer_trigger_start);
		now.timer_trigger_start = 0;
#ifdef VAR_RANGES
		logval("timer_trigger_start", ((int)now.timer_trigger_start));
#endif
		;
		/* merge: timer_trigger_end = 1(16, 9, 16) */
		reached[1][9] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.timer_trigger_end);
		now.timer_trigger_end = 1;
#ifdef VAR_RANGES
		logval("timer_trigger_end", ((int)now.timer_trigger_end));
#endif
		;
		/* merge: .(goto)(16, 14, 16) */
		reached[1][14] = 1;
		;
		/* merge: .(goto)(0, 17, 16) */
		reached[1][17] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 10: // STATE 10 - model.pml:55 - [(((echo_received==0)&&(ultrasonic_state==2)))] (16:0:1 - 1)
		IfNotBlocked
		reached[1][10] = 1;
		if (!(((((int)now.echo_received)==0)&&(now.ultrasonic_state==2))))
			continue;
		/* merge: echo_received = 1(16, 11, 16) */
		reached[1][11] = 1;
		(trpt+1)->bup.oval = ((int)now.echo_received);
		now.echo_received = 1;
#ifdef VAR_RANGES
		logval("echo_received", ((int)now.echo_received));
#endif
		;
		/* merge: .(goto)(16, 14, 16) */
		reached[1][14] = 1;
		;
		/* merge: .(goto)(0, 17, 16) */
		reached[1][17] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 11: // STATE 12 - model.pml:57 - [(1)] (16:0:0 - 1)
		IfNotBlocked
		reached[1][12] = 1;
		if (!(1))
			continue;
		/* merge: .(goto)(16, 14, 16) */
		reached[1][14] = 1;
		;
		/* merge: .(goto)(0, 17, 16) */
		reached[1][17] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 12: // STATE 19 - model.pml:61 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[1][19] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC ultrasonic_fsm */
	case 13: // STATE 1 - model.pml:17 - [echo_received = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1] = 1;
		(trpt+1)->bup.oval = ((int)now.echo_received);
		now.echo_received = 0;
#ifdef VAR_RANGES
		logval("echo_received", ((int)now.echo_received));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 14: // STATE 2 - model.pml:18 - [trigger = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[0][2] = 1;
		(trpt+1)->bup.oval = ((int)now.trigger);
		now.trigger = 0;
#ifdef VAR_RANGES
		logval("trigger", ((int)now.trigger));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 15: // STATE 3 - model.pml:19 - [timer_sample_start = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[0][3] = 1;
		(trpt+1)->bup.oval = ((int)now.timer_sample_start);
		now.timer_sample_start = 0;
#ifdef VAR_RANGES
		logval("timer_sample_start", ((int)now.timer_sample_start));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 16: // STATE 4 - model.pml:20 - [timer_sample_end = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[0][4] = 1;
		(trpt+1)->bup.oval = ((int)now.timer_sample_end);
		now.timer_sample_end = 0;
#ifdef VAR_RANGES
		logval("timer_sample_end", ((int)now.timer_sample_end));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 17: // STATE 5 - model.pml:21 - [timer_trigger_start = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[0][5] = 1;
		(trpt+1)->bup.oval = ((int)now.timer_trigger_start);
		now.timer_trigger_start = 0;
#ifdef VAR_RANGES
		logval("timer_trigger_start", ((int)now.timer_trigger_start));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 18: // STATE 6 - model.pml:22 - [timer_trigger_end = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[0][6] = 1;
		(trpt+1)->bup.oval = ((int)now.timer_trigger_end);
		now.timer_trigger_end = 0;
#ifdef VAR_RANGES
		logval("timer_trigger_end", ((int)now.timer_trigger_end));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 19: // STATE 7 - model.pml:23 - [ultrasonic_state = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[0][7] = 1;
		(trpt+1)->bup.oval = now.ultrasonic_state;
		now.ultrasonic_state = 0;
#ifdef VAR_RANGES
		logval("ultrasonic_state", now.ultrasonic_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 20: // STATE 8 - model.pml:26 - [((ultrasonic_state==0))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][8] = 1;
		if (!((now.ultrasonic_state==0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 21: // STATE 9 - model.pml:28 - [(timer_sample_end)] (35:0:4 - 1)
		IfNotBlocked
		reached[0][9] = 1;
		if (!(((int)now.timer_sample_end)))
			continue;
		/* merge: printf('IDLE...\\n')(35, 10, 35) */
		reached[0][10] = 1;
		Printf("IDLE...\n");
		/* merge: timer_sample_end = 0(35, 11, 35) */
		reached[0][11] = 1;
		(trpt+1)->bup.ovals = grab_ints(4);
		(trpt+1)->bup.ovals[0] = ((int)now.timer_sample_end);
		now.timer_sample_end = 0;
#ifdef VAR_RANGES
		logval("timer_sample_end", ((int)now.timer_sample_end));
#endif
		;
		/* merge: ultrasonic_state = 1(35, 12, 35) */
		reached[0][12] = 1;
		(trpt+1)->bup.ovals[1] = now.ultrasonic_state;
		now.ultrasonic_state = 1;
#ifdef VAR_RANGES
		logval("ultrasonic_state", now.ultrasonic_state);
#endif
		;
		/* merge: trigger = 1(35, 13, 35) */
		reached[0][13] = 1;
		(trpt+1)->bup.ovals[2] = ((int)now.trigger);
		now.trigger = 1;
#ifdef VAR_RANGES
		logval("trigger", ((int)now.trigger));
#endif
		;
		/* merge: timer_trigger_start = 1(35, 14, 35) */
		reached[0][14] = 1;
		(trpt+1)->bup.ovals[3] = ((int)now.timer_trigger_start);
		now.timer_trigger_start = 1;
#ifdef VAR_RANGES
		logval("timer_trigger_start", ((int)now.timer_trigger_start));
#endif
		;
		/* merge: .(goto)(35, 16, 35) */
		reached[0][16] = 1;
		;
		/* merge: .(goto)(0, 36, 35) */
		reached[0][36] = 1;
		;
		_m = 3; goto P999; /* 7 */
	case 22: // STATE 18 - model.pml:31 - [((ultrasonic_state==1))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][18] = 1;
		if (!((now.ultrasonic_state==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 23: // STATE 19 - model.pml:33 - [(timer_trigger_end)] (35:0:3 - 1)
		IfNotBlocked
		reached[0][19] = 1;
		if (!(((int)now.timer_trigger_end)))
			continue;
		/* merge: printf('SET TRIGGER...\\n')(35, 20, 35) */
		reached[0][20] = 1;
		Printf("SET TRIGGER...\n");
		/* merge: timer_trigger_end = 0(35, 21, 35) */
		reached[0][21] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((int)now.timer_trigger_end);
		now.timer_trigger_end = 0;
#ifdef VAR_RANGES
		logval("timer_trigger_end", ((int)now.timer_trigger_end));
#endif
		;
		/* merge: ultrasonic_state = 2(35, 22, 35) */
		reached[0][22] = 1;
		(trpt+1)->bup.ovals[1] = now.ultrasonic_state;
		now.ultrasonic_state = 2;
#ifdef VAR_RANGES
		logval("ultrasonic_state", now.ultrasonic_state);
#endif
		;
		/* merge: trigger = 0(35, 23, 35) */
		reached[0][23] = 1;
		(trpt+1)->bup.ovals[2] = ((int)now.trigger);
		now.trigger = 0;
#ifdef VAR_RANGES
		logval("trigger", ((int)now.trigger));
#endif
		;
		/* merge: .(goto)(35, 25, 35) */
		reached[0][25] = 1;
		;
		/* merge: .(goto)(0, 36, 35) */
		reached[0][36] = 1;
		;
		_m = 3; goto P999; /* 6 */
	case 24: // STATE 27 - model.pml:36 - [((ultrasonic_state==2))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][27] = 1;
		if (!((now.ultrasonic_state==2)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 25: // STATE 28 - model.pml:38 - [(echo_received)] (35:0:2 - 1)
		IfNotBlocked
		reached[0][28] = 1;
		if (!(((int)now.echo_received)))
			continue;
		/* merge: printf('WAIT_ECHO...\\n')(35, 29, 35) */
		reached[0][29] = 1;
		Printf("WAIT_ECHO...\n");
		/* merge: echo_received = 0(35, 30, 35) */
		reached[0][30] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.echo_received);
		now.echo_received = 0;
#ifdef VAR_RANGES
		logval("echo_received", ((int)now.echo_received));
#endif
		;
		/* merge: ultrasonic_state = 0(35, 31, 35) */
		reached[0][31] = 1;
		(trpt+1)->bup.ovals[1] = now.ultrasonic_state;
		now.ultrasonic_state = 0;
#ifdef VAR_RANGES
		logval("ultrasonic_state", now.ultrasonic_state);
#endif
		;
		/* merge: .(goto)(35, 33, 35) */
		reached[0][33] = 1;
		;
		/* merge: .(goto)(0, 36, 35) */
		reached[0][36] = 1;
		;
		_m = 3; goto P999; /* 5 */
	case 26: // STATE 38 - model.pml:43 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[0][38] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */
	case  _T5:	/* np_ */
		if (!((!(trpt->o_pm&4) && !(trpt->tau&128))))
			continue;
		/* else fall through */
	case  _T2:	/* true */
		_m = 3; goto P999;
#undef rand
	}

