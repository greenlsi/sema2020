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

		 /* CLAIM IMU_spec */
	case 3: // STATE 1 - _spin_nvr.tmp:34 - [((!(!(((counter>=(10-1))&&timer_IMU_end)))&&!((IMU_state==2))))] (0:0:0 - 1)
		
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
		reached[9][1] = 1;
		if (!(( !( !(((now.counter>=(10-1))&&((int)now.timer_IMU_end))))&& !((now.IMU_state==2)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 4: // STATE 3 - _spin_nvr.tmp:35 - [((!(!((timer_IMU_end==1)))&&!((IMU_state==1))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported3 = 0;
			if (verbose && !reported3)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported3 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported3 = 0;
			if (verbose && !reported3)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported3 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[9][3] = 1;
		if (!(( !( !((((int)now.timer_IMU_end)==1)))&& !((now.IMU_state==1)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 5: // STATE 10 - _spin_nvr.tmp:40 - [(!((IMU_state==2)))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported10 = 0;
			if (verbose && !reported10)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported10 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported10 = 0;
			if (verbose && !reported10)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported10 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[9][10] = 1;
		if (!( !((now.IMU_state==2))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 6: // STATE 15 - _spin_nvr.tmp:44 - [(!((IMU_state==1)))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported15 = 0;
			if (verbose && !reported15)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported15 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported15 = 0;
			if (verbose && !reported15)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported15 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[9][15] = 1;
		if (!( !((now.IMU_state==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 7: // STATE 20 - _spin_nvr.tmp:46 - [-end-] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported20 = 0;
			if (verbose && !reported20)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported20 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported20 = 0;
			if (verbose && !reported20)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported20 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[9][20] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* CLAIM ultrasonic_spec */
	case 8: // STATE 1 - _spin_nvr.tmp:23 - [((!(!(((trigger==1)&&(timer_trigger_end==1))))&&!((trigger==0))))] (0:0:0 - 1)
		
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
		reached[8][1] = 1;
		if (!(( !( !(((((int)now.trigger)==1)&&(((int)now.timer_trigger_end)==1))))&& !((((int)now.trigger)==0)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 9: // STATE 8 - _spin_nvr.tmp:28 - [(!((trigger==0)))] (0:0:0 - 1)
		
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
		reached[8][8] = 1;
		if (!( !((((int)now.trigger)==0))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 10: // STATE 13 - _spin_nvr.tmp:30 - [-end-] (0:0:0 - 1)
		
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
		reached[8][13] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* CLAIM msg_spec */
	case 11: // STATE 1 - _spin_nvr.tmp:14 - [(!((!((msg_state==2))||(msg==5))))] (6:0:0 - 1)
		
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
		reached[7][1] = 1;
		if (!( !(( !((now.msg_state==2))||(((int)now.msg)==5)))))
			continue;
		/* merge: assert(!(!((!((msg_state==2))||(msg==5)))))(0, 2, 6) */
		reached[7][2] = 1;
		spin_assert( !( !(( !((now.msg_state==2))||(((int)now.msg)==5)))), " !( !(( !((msg_state==2))||(msg==5))))", II, tt, t);
		/* merge: .(goto)(0, 7, 6) */
		reached[7][7] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 12: // STATE 10 - _spin_nvr.tmp:19 - [-end-] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported10 = 0;
			if (verbose && !reported10)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported10 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported10 = 0;
			if (verbose && !reported10)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported10 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[7][10] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* CLAIM semaphore_spec */
	case 13: // STATE 1 - _spin_nvr.tmp:3 - [((!(!(((data&&validData)&&(semaphore_state==0))))&&!((semId!=0))))] (0:0:0 - 1)
		
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
		reached[6][1] = 1;
		if (!(( !( !(((((int)now.data)&&((int)now.validData))&&(now.semaphore_state==0))))&& !((((int)now.semId)!=0)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 14: // STATE 8 - _spin_nvr.tmp:8 - [(!((semId!=0)))] (0:0:0 - 1)
		
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
		reached[6][8] = 1;
		if (!( !((((int)now.semId)!=0))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 15: // STATE 13 - _spin_nvr.tmp:10 - [-end-] (0:0:0 - 1)
		
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
		reached[6][13] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC entorno */
	case 16: // STATE 2 - model.pml:233 - [(!(timer_sample_start))] (43:0:1 - 1)
		IfNotBlocked
		reached[5][2] = 1;
		if (!( !(((int)now.timer_sample_start))))
			continue;
		/* merge: timer_sample_start = 1(43, 3, 43) */
		reached[5][3] = 1;
		(trpt+1)->bup.oval = ((int)now.timer_sample_start);
		now.timer_sample_start = 1;
#ifdef VAR_RANGES
		logval("timer_sample_start", ((int)now.timer_sample_start));
#endif
		;
		/* merge: .(goto)(43, 39, 43) */
		reached[5][39] = 1;
		;
		/* merge: printf('data: %d   validData: %d   changePos: %d   state: %d\\n',data,validData,changePos,semaphore_state)(43, 40, 43) */
		reached[5][40] = 1;
		Printf("data: %d   validData: %d   changePos: %d   state: %d\n", ((int)now.data), ((int)now.validData), ((int)now.changePos), now.semaphore_state);
		/* merge: printf('msg_state: %d   sem_light: %d   moving: %d  typeZone: %d \\n',msg_state,sem_light,moving,typeZone)(43, 41, 43) */
		reached[5][41] = 1;
		Printf("msg_state: %d   sem_light: %d   moving: %d  typeZone: %d \n", now.msg_state, ((int)now.sem_light), ((int)now.moving), ((int)now.typeZone));
		/* merge: .(goto)(0, 44, 43) */
		reached[5][44] = 1;
		;
		_m = 3; goto P999; /* 5 */
	case 17: // STATE 4 - model.pml:234 - [(timer_sample_start)] (43:0:2 - 1)
		IfNotBlocked
		reached[5][4] = 1;
		if (!(((int)now.timer_sample_start)))
			continue;
		/* merge: timer_sample_start = 0(43, 5, 43) */
		reached[5][5] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.timer_sample_start);
		now.timer_sample_start = 0;
#ifdef VAR_RANGES
		logval("timer_sample_start", ((int)now.timer_sample_start));
#endif
		;
		/* merge: timer_sample_end = 1(43, 6, 43) */
		reached[5][6] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.timer_sample_end);
		now.timer_sample_end = 1;
#ifdef VAR_RANGES
		logval("timer_sample_end", ((int)now.timer_sample_end));
#endif
		;
		/* merge: .(goto)(43, 39, 43) */
		reached[5][39] = 1;
		;
		/* merge: printf('data: %d   validData: %d   changePos: %d   state: %d\\n',data,validData,changePos,semaphore_state)(43, 40, 43) */
		reached[5][40] = 1;
		Printf("data: %d   validData: %d   changePos: %d   state: %d\n", ((int)now.data), ((int)now.validData), ((int)now.changePos), now.semaphore_state);
		/* merge: printf('msg_state: %d   sem_light: %d   moving: %d  typeZone: %d \\n',msg_state,sem_light,moving,typeZone)(43, 41, 43) */
		reached[5][41] = 1;
		Printf("msg_state: %d   sem_light: %d   moving: %d  typeZone: %d \n", now.msg_state, ((int)now.sem_light), ((int)now.moving), ((int)now.typeZone));
		/* merge: .(goto)(0, 44, 43) */
		reached[5][44] = 1;
		;
		_m = 3; goto P999; /* 6 */
	case 18: // STATE 7 - model.pml:235 - [(timer_trigger_start)] (43:0:2 - 1)
		IfNotBlocked
		reached[5][7] = 1;
		if (!(((int)now.timer_trigger_start)))
			continue;
		/* merge: timer_trigger_start = 0(43, 8, 43) */
		reached[5][8] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.timer_trigger_start);
		now.timer_trigger_start = 0;
#ifdef VAR_RANGES
		logval("timer_trigger_start", ((int)now.timer_trigger_start));
#endif
		;
		/* merge: timer_trigger_end = 1(43, 9, 43) */
		reached[5][9] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.timer_trigger_end);
		now.timer_trigger_end = 1;
#ifdef VAR_RANGES
		logval("timer_trigger_end", ((int)now.timer_trigger_end));
#endif
		;
		/* merge: .(goto)(43, 39, 43) */
		reached[5][39] = 1;
		;
		/* merge: printf('data: %d   validData: %d   changePos: %d   state: %d\\n',data,validData,changePos,semaphore_state)(43, 40, 43) */
		reached[5][40] = 1;
		Printf("data: %d   validData: %d   changePos: %d   state: %d\n", ((int)now.data), ((int)now.validData), ((int)now.changePos), now.semaphore_state);
		/* merge: printf('msg_state: %d   sem_light: %d   moving: %d  typeZone: %d \\n',msg_state,sem_light,moving,typeZone)(43, 41, 43) */
		reached[5][41] = 1;
		Printf("msg_state: %d   sem_light: %d   moving: %d  typeZone: %d \n", now.msg_state, ((int)now.sem_light), ((int)now.moving), ((int)now.typeZone));
		/* merge: .(goto)(0, 44, 43) */
		reached[5][44] = 1;
		;
		_m = 3; goto P999; /* 6 */
	case 19: // STATE 10 - model.pml:236 - [(((echo_received==0)&&(ultrasonic_state==2)))] (43:0:1 - 1)
		IfNotBlocked
		reached[5][10] = 1;
		if (!(((((int)now.echo_received)==0)&&(now.ultrasonic_state==2))))
			continue;
		/* merge: echo_received = 1(43, 11, 43) */
		reached[5][11] = 1;
		(trpt+1)->bup.oval = ((int)now.echo_received);
		now.echo_received = 1;
#ifdef VAR_RANGES
		logval("echo_received", ((int)now.echo_received));
#endif
		;
		/* merge: .(goto)(43, 39, 43) */
		reached[5][39] = 1;
		;
		/* merge: printf('data: %d   validData: %d   changePos: %d   state: %d\\n',data,validData,changePos,semaphore_state)(43, 40, 43) */
		reached[5][40] = 1;
		Printf("data: %d   validData: %d   changePos: %d   state: %d\n", ((int)now.data), ((int)now.validData), ((int)now.changePos), now.semaphore_state);
		/* merge: printf('msg_state: %d   sem_light: %d   moving: %d  typeZone: %d \\n',msg_state,sem_light,moving,typeZone)(43, 41, 43) */
		reached[5][41] = 1;
		Printf("msg_state: %d   sem_light: %d   moving: %d  typeZone: %d \n", now.msg_state, ((int)now.sem_light), ((int)now.moving), ((int)now.typeZone));
		/* merge: .(goto)(0, 44, 43) */
		reached[5][44] = 1;
		;
		_m = 3; goto P999; /* 5 */
	case 20: // STATE 12 - model.pml:239 - [(!(timer_IMU_start))] (43:0:1 - 1)
		IfNotBlocked
		reached[5][12] = 1;
		if (!( !(((int)now.timer_IMU_start))))
			continue;
		/* merge: timer_IMU_start = 1(43, 13, 43) */
		reached[5][13] = 1;
		(trpt+1)->bup.oval = ((int)now.timer_IMU_start);
		now.timer_IMU_start = 1;
#ifdef VAR_RANGES
		logval("timer_IMU_start", ((int)now.timer_IMU_start));
#endif
		;
		/* merge: .(goto)(43, 39, 43) */
		reached[5][39] = 1;
		;
		/* merge: printf('data: %d   validData: %d   changePos: %d   state: %d\\n',data,validData,changePos,semaphore_state)(43, 40, 43) */
		reached[5][40] = 1;
		Printf("data: %d   validData: %d   changePos: %d   state: %d\n", ((int)now.data), ((int)now.validData), ((int)now.changePos), now.semaphore_state);
		/* merge: printf('msg_state: %d   sem_light: %d   moving: %d  typeZone: %d \\n',msg_state,sem_light,moving,typeZone)(43, 41, 43) */
		reached[5][41] = 1;
		Printf("msg_state: %d   sem_light: %d   moving: %d  typeZone: %d \n", now.msg_state, ((int)now.sem_light), ((int)now.moving), ((int)now.typeZone));
		/* merge: .(goto)(0, 44, 43) */
		reached[5][44] = 1;
		;
		_m = 3; goto P999; /* 5 */
	case 21: // STATE 14 - model.pml:240 - [(timer_IMU_start)] (43:0:2 - 1)
		IfNotBlocked
		reached[5][14] = 1;
		if (!(((int)now.timer_IMU_start)))
			continue;
		/* merge: timer_IMU_start = 0(43, 15, 43) */
		reached[5][15] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.timer_IMU_start);
		now.timer_IMU_start = 0;
#ifdef VAR_RANGES
		logval("timer_IMU_start", ((int)now.timer_IMU_start));
#endif
		;
		/* merge: timer_IMU_end = 1(43, 16, 43) */
		reached[5][16] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.timer_IMU_end);
		now.timer_IMU_end = 1;
#ifdef VAR_RANGES
		logval("timer_IMU_end", ((int)now.timer_IMU_end));
#endif
		;
		/* merge: .(goto)(43, 39, 43) */
		reached[5][39] = 1;
		;
		/* merge: printf('data: %d   validData: %d   changePos: %d   state: %d\\n',data,validData,changePos,semaphore_state)(43, 40, 43) */
		reached[5][40] = 1;
		Printf("data: %d   validData: %d   changePos: %d   state: %d\n", ((int)now.data), ((int)now.validData), ((int)now.changePos), now.semaphore_state);
		/* merge: printf('msg_state: %d   sem_light: %d   moving: %d  typeZone: %d \\n',msg_state,sem_light,moving,typeZone)(43, 41, 43) */
		reached[5][41] = 1;
		Printf("msg_state: %d   sem_light: %d   moving: %d  typeZone: %d \n", now.msg_state, ((int)now.sem_light), ((int)now.moving), ((int)now.typeZone));
		/* merge: .(goto)(0, 44, 43) */
		reached[5][44] = 1;
		;
		_m = 3; goto P999; /* 6 */
	case 22: // STATE 17 - model.pml:243 - [data = 1] (0:43:1 - 1)
		IfNotBlocked
		reached[5][17] = 1;
		(trpt+1)->bup.oval = ((int)now.data);
		now.data = 1;
#ifdef VAR_RANGES
		logval("data", ((int)now.data));
#endif
		;
		/* merge: .(goto)(43, 39, 43) */
		reached[5][39] = 1;
		;
		/* merge: printf('data: %d   validData: %d   changePos: %d   state: %d\\n',data,validData,changePos,semaphore_state)(43, 40, 43) */
		reached[5][40] = 1;
		Printf("data: %d   validData: %d   changePos: %d   state: %d\n", ((int)now.data), ((int)now.validData), ((int)now.changePos), now.semaphore_state);
		/* merge: printf('msg_state: %d   sem_light: %d   moving: %d  typeZone: %d \\n',msg_state,sem_light,moving,typeZone)(43, 41, 43) */
		reached[5][41] = 1;
		Printf("msg_state: %d   sem_light: %d   moving: %d  typeZone: %d \n", now.msg_state, ((int)now.sem_light), ((int)now.moving), ((int)now.typeZone));
		/* merge: .(goto)(0, 44, 43) */
		reached[5][44] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 23: // STATE 18 - model.pml:244 - [(data)] (43:0:1 - 1)
		IfNotBlocked
		reached[5][18] = 1;
		if (!(((int)now.data)))
			continue;
		/* merge: validData = 1(43, 19, 43) */
		reached[5][19] = 1;
		(trpt+1)->bup.oval = ((int)now.validData);
		now.validData = 1;
#ifdef VAR_RANGES
		logval("validData", ((int)now.validData));
#endif
		;
		/* merge: .(goto)(43, 39, 43) */
		reached[5][39] = 1;
		;
		/* merge: printf('data: %d   validData: %d   changePos: %d   state: %d\\n',data,validData,changePos,semaphore_state)(43, 40, 43) */
		reached[5][40] = 1;
		Printf("data: %d   validData: %d   changePos: %d   state: %d\n", ((int)now.data), ((int)now.validData), ((int)now.changePos), now.semaphore_state);
		/* merge: printf('msg_state: %d   sem_light: %d   moving: %d  typeZone: %d \\n',msg_state,sem_light,moving,typeZone)(43, 41, 43) */
		reached[5][41] = 1;
		Printf("msg_state: %d   sem_light: %d   moving: %d  typeZone: %d \n", now.msg_state, ((int)now.sem_light), ((int)now.moving), ((int)now.typeZone));
		/* merge: .(goto)(0, 44, 43) */
		reached[5][44] = 1;
		;
		_m = 3; goto P999; /* 5 */
	case 24: // STATE 20 - model.pml:245 - [changePos = 1] (0:43:3 - 1)
		IfNotBlocked
		reached[5][20] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((int)now.changePos);
		now.changePos = 1;
#ifdef VAR_RANGES
		logval("changePos", ((int)now.changePos));
#endif
		;
		/* merge: changePos_typeZone = 1(43, 21, 43) */
		reached[5][21] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.changePos_typeZone);
		now.changePos_typeZone = 1;
#ifdef VAR_RANGES
		logval("changePos_typeZone", ((int)now.changePos_typeZone));
#endif
		;
		/* merge: moving = 1(43, 22, 43) */
		reached[5][22] = 1;
		(trpt+1)->bup.ovals[2] = ((int)now.moving);
		now.moving = 1;
#ifdef VAR_RANGES
		logval("moving", ((int)now.moving));
#endif
		;
		/* merge: .(goto)(43, 39, 43) */
		reached[5][39] = 1;
		;
		/* merge: printf('data: %d   validData: %d   changePos: %d   state: %d\\n',data,validData,changePos,semaphore_state)(43, 40, 43) */
		reached[5][40] = 1;
		Printf("data: %d   validData: %d   changePos: %d   state: %d\n", ((int)now.data), ((int)now.validData), ((int)now.changePos), now.semaphore_state);
		/* merge: printf('msg_state: %d   sem_light: %d   moving: %d  typeZone: %d \\n',msg_state,sem_light,moving,typeZone)(43, 41, 43) */
		reached[5][41] = 1;
		Printf("msg_state: %d   sem_light: %d   moving: %d  typeZone: %d \n", now.msg_state, ((int)now.sem_light), ((int)now.moving), ((int)now.typeZone));
		/* merge: .(goto)(0, 44, 43) */
		reached[5][44] = 1;
		;
		_m = 3; goto P999; /* 6 */
	case 25: // STATE 23 - model.pml:248 - [((semId&&sem_read))] (43:0:2 - 1)
		IfNotBlocked
		reached[5][23] = 1;
		if (!((((int)now.semId)&&((int)now.sem_read))))
			continue;
		/* merge: sem_light = 1(43, 24, 43) */
		reached[5][24] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.sem_light);
		now.sem_light = 1;
#ifdef VAR_RANGES
		logval("sem_light", ((int)now.sem_light));
#endif
		;
		/* merge: sem_read = 0(43, 25, 43) */
		reached[5][25] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.sem_read);
		now.sem_read = 0;
#ifdef VAR_RANGES
		logval("sem_read", ((int)now.sem_read));
#endif
		;
		/* merge: .(goto)(43, 39, 43) */
		reached[5][39] = 1;
		;
		/* merge: printf('data: %d   validData: %d   changePos: %d   state: %d\\n',data,validData,changePos,semaphore_state)(43, 40, 43) */
		reached[5][40] = 1;
		Printf("data: %d   validData: %d   changePos: %d   state: %d\n", ((int)now.data), ((int)now.validData), ((int)now.changePos), now.semaphore_state);
		/* merge: printf('msg_state: %d   sem_light: %d   moving: %d  typeZone: %d \\n',msg_state,sem_light,moving,typeZone)(43, 41, 43) */
		reached[5][41] = 1;
		Printf("msg_state: %d   sem_light: %d   moving: %d  typeZone: %d \n", now.msg_state, ((int)now.sem_light), ((int)now.moving), ((int)now.typeZone));
		/* merge: .(goto)(0, 44, 43) */
		reached[5][44] = 1;
		;
		_m = 3; goto P999; /* 6 */
	case 26: // STATE 26 - model.pml:249 - [((semId&&sem_read))] (43:0:2 - 1)
		IfNotBlocked
		reached[5][26] = 1;
		if (!((((int)now.semId)&&((int)now.sem_read))))
			continue;
		/* merge: sem_light = 2(43, 27, 43) */
		reached[5][27] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.sem_light);
		now.sem_light = 2;
#ifdef VAR_RANGES
		logval("sem_light", ((int)now.sem_light));
#endif
		;
		/* merge: sem_read = 0(43, 28, 43) */
		reached[5][28] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.sem_read);
		now.sem_read = 0;
#ifdef VAR_RANGES
		logval("sem_read", ((int)now.sem_read));
#endif
		;
		/* merge: .(goto)(43, 39, 43) */
		reached[5][39] = 1;
		;
		/* merge: printf('data: %d   validData: %d   changePos: %d   state: %d\\n',data,validData,changePos,semaphore_state)(43, 40, 43) */
		reached[5][40] = 1;
		Printf("data: %d   validData: %d   changePos: %d   state: %d\n", ((int)now.data), ((int)now.validData), ((int)now.changePos), now.semaphore_state);
		/* merge: printf('msg_state: %d   sem_light: %d   moving: %d  typeZone: %d \\n',msg_state,sem_light,moving,typeZone)(43, 41, 43) */
		reached[5][41] = 1;
		Printf("msg_state: %d   sem_light: %d   moving: %d  typeZone: %d \n", now.msg_state, ((int)now.sem_light), ((int)now.moving), ((int)now.typeZone));
		/* merge: .(goto)(0, 44, 43) */
		reached[5][44] = 1;
		;
		_m = 3; goto P999; /* 6 */
	case 27: // STATE 29 - model.pml:250 - [((semId&&sem_read))] (43:0:2 - 1)
		IfNotBlocked
		reached[5][29] = 1;
		if (!((((int)now.semId)&&((int)now.sem_read))))
			continue;
		/* merge: sem_light = 3(43, 30, 43) */
		reached[5][30] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.sem_light);
		now.sem_light = 3;
#ifdef VAR_RANGES
		logval("sem_light", ((int)now.sem_light));
#endif
		;
		/* merge: sem_read = 0(43, 31, 43) */
		reached[5][31] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.sem_read);
		now.sem_read = 0;
#ifdef VAR_RANGES
		logval("sem_read", ((int)now.sem_read));
#endif
		;
		/* merge: .(goto)(43, 39, 43) */
		reached[5][39] = 1;
		;
		/* merge: printf('data: %d   validData: %d   changePos: %d   state: %d\\n',data,validData,changePos,semaphore_state)(43, 40, 43) */
		reached[5][40] = 1;
		Printf("data: %d   validData: %d   changePos: %d   state: %d\n", ((int)now.data), ((int)now.validData), ((int)now.changePos), now.semaphore_state);
		/* merge: printf('msg_state: %d   sem_light: %d   moving: %d  typeZone: %d \\n',msg_state,sem_light,moving,typeZone)(43, 41, 43) */
		reached[5][41] = 1;
		Printf("msg_state: %d   sem_light: %d   moving: %d  typeZone: %d \n", now.msg_state, ((int)now.sem_light), ((int)now.moving), ((int)now.typeZone));
		/* merge: .(goto)(0, 44, 43) */
		reached[5][44] = 1;
		;
		_m = 3; goto P999; /* 6 */
	case 28: // STATE 32 - model.pml:251 - [((!(semId)&&sem_read))] (43:0:2 - 1)
		IfNotBlocked
		reached[5][32] = 1;
		if (!(( !(((int)now.semId))&&((int)now.sem_read))))
			continue;
		/* merge: sem_light = 0(43, 33, 43) */
		reached[5][33] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.sem_light);
		now.sem_light = 0;
#ifdef VAR_RANGES
		logval("sem_light", ((int)now.sem_light));
#endif
		;
		/* merge: sem_read = 0(43, 34, 43) */
		reached[5][34] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.sem_read);
		now.sem_read = 0;
#ifdef VAR_RANGES
		logval("sem_read", ((int)now.sem_read));
#endif
		;
		/* merge: .(goto)(43, 39, 43) */
		reached[5][39] = 1;
		;
		/* merge: printf('data: %d   validData: %d   changePos: %d   state: %d\\n',data,validData,changePos,semaphore_state)(43, 40, 43) */
		reached[5][40] = 1;
		Printf("data: %d   validData: %d   changePos: %d   state: %d\n", ((int)now.data), ((int)now.validData), ((int)now.changePos), now.semaphore_state);
		/* merge: printf('msg_state: %d   sem_light: %d   moving: %d  typeZone: %d \\n',msg_state,sem_light,moving,typeZone)(43, 41, 43) */
		reached[5][41] = 1;
		Printf("msg_state: %d   sem_light: %d   moving: %d  typeZone: %d \n", now.msg_state, ((int)now.sem_light), ((int)now.moving), ((int)now.typeZone));
		/* merge: .(goto)(0, 44, 43) */
		reached[5][44] = 1;
		;
		_m = 3; goto P999; /* 6 */
	case 29: // STATE 35 - model.pml:252 - [moving = 1] (0:43:1 - 1)
		IfNotBlocked
		reached[5][35] = 1;
		(trpt+1)->bup.oval = ((int)now.moving);
		now.moving = 1;
#ifdef VAR_RANGES
		logval("moving", ((int)now.moving));
#endif
		;
		/* merge: .(goto)(43, 39, 43) */
		reached[5][39] = 1;
		;
		/* merge: printf('data: %d   validData: %d   changePos: %d   state: %d\\n',data,validData,changePos,semaphore_state)(43, 40, 43) */
		reached[5][40] = 1;
		Printf("data: %d   validData: %d   changePos: %d   state: %d\n", ((int)now.data), ((int)now.validData), ((int)now.changePos), now.semaphore_state);
		/* merge: printf('msg_state: %d   sem_light: %d   moving: %d  typeZone: %d \\n',msg_state,sem_light,moving,typeZone)(43, 41, 43) */
		reached[5][41] = 1;
		Printf("msg_state: %d   sem_light: %d   moving: %d  typeZone: %d \n", now.msg_state, ((int)now.sem_light), ((int)now.moving), ((int)now.typeZone));
		/* merge: .(goto)(0, 44, 43) */
		reached[5][44] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 30: // STATE 36 - model.pml:253 - [moving = 0] (0:43:1 - 1)
		IfNotBlocked
		reached[5][36] = 1;
		(trpt+1)->bup.oval = ((int)now.moving);
		now.moving = 0;
#ifdef VAR_RANGES
		logval("moving", ((int)now.moving));
#endif
		;
		/* merge: .(goto)(43, 39, 43) */
		reached[5][39] = 1;
		;
		/* merge: printf('data: %d   validData: %d   changePos: %d   state: %d\\n',data,validData,changePos,semaphore_state)(43, 40, 43) */
		reached[5][40] = 1;
		Printf("data: %d   validData: %d   changePos: %d   state: %d\n", ((int)now.data), ((int)now.validData), ((int)now.changePos), now.semaphore_state);
		/* merge: printf('msg_state: %d   sem_light: %d   moving: %d  typeZone: %d \\n',msg_state,sem_light,moving,typeZone)(43, 41, 43) */
		reached[5][41] = 1;
		Printf("msg_state: %d   sem_light: %d   moving: %d  typeZone: %d \n", now.msg_state, ((int)now.sem_light), ((int)now.moving), ((int)now.typeZone));
		/* merge: .(goto)(0, 44, 43) */
		reached[5][44] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 31: // STATE 37 - model.pml:254 - [(1)] (43:0:0 - 1)
		IfNotBlocked
		reached[5][37] = 1;
		if (!(1))
			continue;
		/* merge: .(goto)(43, 39, 43) */
		reached[5][39] = 1;
		;
		/* merge: printf('data: %d   validData: %d   changePos: %d   state: %d\\n',data,validData,changePos,semaphore_state)(43, 40, 43) */
		reached[5][40] = 1;
		Printf("data: %d   validData: %d   changePos: %d   state: %d\n", ((int)now.data), ((int)now.validData), ((int)now.changePos), now.semaphore_state);
		/* merge: printf('msg_state: %d   sem_light: %d   moving: %d  typeZone: %d \\n',msg_state,sem_light,moving,typeZone)(43, 41, 43) */
		reached[5][41] = 1;
		Printf("msg_state: %d   sem_light: %d   moving: %d  typeZone: %d \n", now.msg_state, ((int)now.sem_light), ((int)now.moving), ((int)now.typeZone));
		/* merge: .(goto)(0, 44, 43) */
		reached[5][44] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 32: // STATE 40 - model.pml:256 - [printf('data: %d   validData: %d   changePos: %d   state: %d\\n',data,validData,changePos,semaphore_state)] (0:43:0 - 17)
		IfNotBlocked
		reached[5][40] = 1;
		Printf("data: %d   validData: %d   changePos: %d   state: %d\n", ((int)now.data), ((int)now.validData), ((int)now.changePos), now.semaphore_state);
		/* merge: printf('msg_state: %d   sem_light: %d   moving: %d  typeZone: %d \\n',msg_state,sem_light,moving,typeZone)(43, 41, 43) */
		reached[5][41] = 1;
		Printf("msg_state: %d   sem_light: %d   moving: %d  typeZone: %d \n", now.msg_state, ((int)now.sem_light), ((int)now.moving), ((int)now.typeZone));
		/* merge: .(goto)(0, 44, 43) */
		reached[5][44] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 33: // STATE 46 - model.pml:260 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[5][46] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC msg_fsm */
	case 34: // STATE 1 - model.pml:192 - [msg_state = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[4][1] = 1;
		(trpt+1)->bup.oval = now.msg_state;
		now.msg_state = 0;
#ifdef VAR_RANGES
		logval("msg_state", now.msg_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 35: // STATE 2 - model.pml:195 - [((msg_state==0))] (0:0:0 - 1)
		IfNotBlocked
		reached[4][2] = 1;
		if (!((now.msg_state==0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 36: // STATE 3 - model.pml:197 - [(((sem_light==0)&&(typeZone==0)))] (56:0:2 - 1)
		IfNotBlocked
		reached[4][3] = 1;
		if (!(((((int)now.sem_light)==0)&&(((int)now.typeZone)==0))))
			continue;
		/* merge: msg = 0(56, 4, 56) */
		reached[4][4] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.msg);
		now.msg = 0;
#ifdef VAR_RANGES
		logval("msg", ((int)now.msg));
#endif
		;
		/* merge: sem_read = 1(56, 5, 56) */
		reached[4][5] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.sem_read);
		now.sem_read = 1;
#ifdef VAR_RANGES
		logval("sem_read", ((int)now.sem_read));
#endif
		;
		/* merge: .(goto)(56, 22, 56) */
		reached[4][22] = 1;
		;
		/* merge: .(goto)(0, 57, 56) */
		reached[4][57] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 37: // STATE 22 - model.pml:204 - [.(goto)] (0:56:0 - 6)
		IfNotBlocked
		reached[4][22] = 1;
		;
		/* merge: .(goto)(0, 57, 56) */
		reached[4][57] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 38: // STATE 6 - model.pml:198 - [(((sem_light==1)&&(typeZone==0)))] (56:0:2 - 1)
		IfNotBlocked
		reached[4][6] = 1;
		if (!(((((int)now.sem_light)==1)&&(((int)now.typeZone)==0))))
			continue;
		/* merge: msg = 2(56, 7, 56) */
		reached[4][7] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.msg);
		now.msg = 2;
#ifdef VAR_RANGES
		logval("msg", ((int)now.msg));
#endif
		;
		/* merge: sem_read = 1(56, 8, 56) */
		reached[4][8] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.sem_read);
		now.sem_read = 1;
#ifdef VAR_RANGES
		logval("sem_read", ((int)now.sem_read));
#endif
		;
		/* merge: .(goto)(56, 22, 56) */
		reached[4][22] = 1;
		;
		/* merge: .(goto)(0, 57, 56) */
		reached[4][57] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 39: // STATE 9 - model.pml:199 - [(((sem_light==2)&&(typeZone==0)))] (56:0:2 - 1)
		IfNotBlocked
		reached[4][9] = 1;
		if (!(((((int)now.sem_light)==2)&&(((int)now.typeZone)==0))))
			continue;
		/* merge: msg = 2(56, 10, 56) */
		reached[4][10] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.msg);
		now.msg = 2;
#ifdef VAR_RANGES
		logval("msg", ((int)now.msg));
#endif
		;
		/* merge: sem_read = 1(56, 11, 56) */
		reached[4][11] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.sem_read);
		now.sem_read = 1;
#ifdef VAR_RANGES
		logval("sem_read", ((int)now.sem_read));
#endif
		;
		/* merge: .(goto)(56, 22, 56) */
		reached[4][22] = 1;
		;
		/* merge: .(goto)(0, 57, 56) */
		reached[4][57] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 40: // STATE 12 - model.pml:200 - [(((sem_light==3)&&(typeZone==0)))] (56:0:2 - 1)
		IfNotBlocked
		reached[4][12] = 1;
		if (!(((((int)now.sem_light)==3)&&(((int)now.typeZone)==0))))
			continue;
		/* merge: msg = 1(56, 13, 56) */
		reached[4][13] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.msg);
		now.msg = 1;
#ifdef VAR_RANGES
		logval("msg", ((int)now.msg));
#endif
		;
		/* merge: sem_read = 1(56, 14, 56) */
		reached[4][14] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.sem_read);
		now.sem_read = 1;
#ifdef VAR_RANGES
		logval("sem_read", ((int)now.sem_read));
#endif
		;
		/* merge: .(goto)(56, 22, 56) */
		reached[4][22] = 1;
		;
		/* merge: .(goto)(0, 57, 56) */
		reached[4][57] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 41: // STATE 15 - model.pml:201 - [((typeZone==1))] (56:0:2 - 1)
		IfNotBlocked
		reached[4][15] = 1;
		if (!((((int)now.typeZone)==1)))
			continue;
		/* merge: msg = 0(56, 16, 56) */
		reached[4][16] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.msg);
		now.msg = 0;
#ifdef VAR_RANGES
		logval("msg", ((int)now.msg));
#endif
		;
		/* merge: msg_state = 1(56, 17, 56) */
		reached[4][17] = 1;
		(trpt+1)->bup.ovals[1] = now.msg_state;
		now.msg_state = 1;
#ifdef VAR_RANGES
		logval("msg_state", now.msg_state);
#endif
		;
		/* merge: .(goto)(56, 22, 56) */
		reached[4][22] = 1;
		;
		/* merge: .(goto)(0, 57, 56) */
		reached[4][57] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 42: // STATE 18 - model.pml:202 - [((typeZone==2))] (56:0:2 - 1)
		IfNotBlocked
		reached[4][18] = 1;
		if (!((((int)now.typeZone)==2)))
			continue;
		/* merge: msg = 5(56, 19, 56) */
		reached[4][19] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.msg);
		now.msg = 5;
#ifdef VAR_RANGES
		logval("msg", ((int)now.msg));
#endif
		;
		/* merge: msg_state = 2(56, 20, 56) */
		reached[4][20] = 1;
		(trpt+1)->bup.ovals[1] = now.msg_state;
		now.msg_state = 2;
#ifdef VAR_RANGES
		logval("msg_state", now.msg_state);
#endif
		;
		/* merge: .(goto)(56, 22, 56) */
		reached[4][22] = 1;
		;
		/* merge: .(goto)(0, 57, 56) */
		reached[4][57] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 43: // STATE 24 - model.pml:205 - [((msg_state==1))] (0:0:0 - 1)
		IfNotBlocked
		reached[4][24] = 1;
		if (!((now.msg_state==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 44: // STATE 25 - model.pml:207 - [((((sem_light==2)&&(typeZone==1))&&moving))] (56:0:2 - 1)
		IfNotBlocked
		reached[4][25] = 1;
		if (!((((((int)now.sem_light)==2)&&(((int)now.typeZone)==1))&&((int)now.moving))))
			continue;
		/* merge: msg = 3(56, 26, 56) */
		reached[4][26] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.msg);
		now.msg = 3;
#ifdef VAR_RANGES
		logval("msg", ((int)now.msg));
#endif
		;
		/* merge: sem_read = 1(56, 27, 56) */
		reached[4][27] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.sem_read);
		now.sem_read = 1;
#ifdef VAR_RANGES
		logval("sem_read", ((int)now.sem_read));
#endif
		;
		/* merge: .(goto)(56, 44, 56) */
		reached[4][44] = 1;
		;
		/* merge: .(goto)(0, 57, 56) */
		reached[4][57] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 45: // STATE 44 - model.pml:214 - [.(goto)] (0:56:0 - 6)
		IfNotBlocked
		reached[4][44] = 1;
		;
		/* merge: .(goto)(0, 57, 56) */
		reached[4][57] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 46: // STATE 28 - model.pml:208 - [((((sem_light==1)&&(typeZone==1))&&moving))] (56:0:2 - 1)
		IfNotBlocked
		reached[4][28] = 1;
		if (!((((((int)now.sem_light)==1)&&(((int)now.typeZone)==1))&&((int)now.moving))))
			continue;
		/* merge: msg = 4(56, 29, 56) */
		reached[4][29] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.msg);
		now.msg = 4;
#ifdef VAR_RANGES
		logval("msg", ((int)now.msg));
#endif
		;
		/* merge: sem_read = 1(56, 30, 56) */
		reached[4][30] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.sem_read);
		now.sem_read = 1;
#ifdef VAR_RANGES
		logval("sem_read", ((int)now.sem_read));
#endif
		;
		/* merge: .(goto)(56, 44, 56) */
		reached[4][44] = 1;
		;
		/* merge: .(goto)(0, 57, 56) */
		reached[4][57] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 47: // STATE 31 - model.pml:209 - [((typeZone==2))] (56:0:2 - 1)
		IfNotBlocked
		reached[4][31] = 1;
		if (!((((int)now.typeZone)==2)))
			continue;
		/* merge: msg = 5(56, 32, 56) */
		reached[4][32] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.msg);
		now.msg = 5;
#ifdef VAR_RANGES
		logval("msg", ((int)now.msg));
#endif
		;
		/* merge: msg_state = 2(56, 33, 56) */
		reached[4][33] = 1;
		(trpt+1)->bup.ovals[1] = now.msg_state;
		now.msg_state = 2;
#ifdef VAR_RANGES
		logval("msg_state", now.msg_state);
#endif
		;
		/* merge: .(goto)(56, 44, 56) */
		reached[4][44] = 1;
		;
		/* merge: .(goto)(0, 57, 56) */
		reached[4][57] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 48: // STATE 34 - model.pml:210 - [((typeZone==0))] (56:0:2 - 1)
		IfNotBlocked
		reached[4][34] = 1;
		if (!((((int)now.typeZone)==0)))
			continue;
		/* merge: msg = 0(56, 35, 56) */
		reached[4][35] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.msg);
		now.msg = 0;
#ifdef VAR_RANGES
		logval("msg", ((int)now.msg));
#endif
		;
		/* merge: msg_state = 0(56, 36, 56) */
		reached[4][36] = 1;
		(trpt+1)->bup.ovals[1] = now.msg_state;
		now.msg_state = 0;
#ifdef VAR_RANGES
		logval("msg_state", now.msg_state);
#endif
		;
		/* merge: .(goto)(56, 44, 56) */
		reached[4][44] = 1;
		;
		/* merge: .(goto)(0, 57, 56) */
		reached[4][57] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 49: // STATE 37 - model.pml:211 - [(((!(moving)&&(typeZone==1))&&(sem_light!=0)))] (56:0:2 - 1)
		IfNotBlocked
		reached[4][37] = 1;
		if (!((( !(((int)now.moving))&&(((int)now.typeZone)==1))&&(((int)now.sem_light)!=0))))
			continue;
		/* merge: msg = 5(56, 38, 56) */
		reached[4][38] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.msg);
		now.msg = 5;
#ifdef VAR_RANGES
		logval("msg", ((int)now.msg));
#endif
		;
		/* merge: sem_read = 1(56, 39, 56) */
		reached[4][39] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.sem_read);
		now.sem_read = 1;
#ifdef VAR_RANGES
		logval("sem_read", ((int)now.sem_read));
#endif
		;
		/* merge: .(goto)(56, 44, 56) */
		reached[4][44] = 1;
		;
		/* merge: .(goto)(0, 57, 56) */
		reached[4][57] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 50: // STATE 40 - model.pml:212 - [(((sem_light==0)&&(typeZone==1)))] (56:0:2 - 1)
		IfNotBlocked
		reached[4][40] = 1;
		if (!(((((int)now.sem_light)==0)&&(((int)now.typeZone)==1))))
			continue;
		/* merge: msg = 0(56, 41, 56) */
		reached[4][41] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.msg);
		now.msg = 0;
#ifdef VAR_RANGES
		logval("msg", ((int)now.msg));
#endif
		;
		/* merge: sem_read = 1(56, 42, 56) */
		reached[4][42] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.sem_read);
		now.sem_read = 1;
#ifdef VAR_RANGES
		logval("sem_read", ((int)now.sem_read));
#endif
		;
		/* merge: .(goto)(56, 44, 56) */
		reached[4][44] = 1;
		;
		/* merge: .(goto)(0, 57, 56) */
		reached[4][57] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 51: // STATE 46 - model.pml:215 - [((msg_state==2))] (0:0:0 - 1)
		IfNotBlocked
		reached[4][46] = 1;
		if (!((now.msg_state==2)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 52: // STATE 47 - model.pml:217 - [((typeZone==0))] (56:0:2 - 1)
		IfNotBlocked
		reached[4][47] = 1;
		if (!((((int)now.typeZone)==0)))
			continue;
		/* merge: msg = 6(56, 48, 56) */
		reached[4][48] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.msg);
		now.msg = 6;
#ifdef VAR_RANGES
		logval("msg", ((int)now.msg));
#endif
		;
		/* merge: msg_state = 0(56, 49, 56) */
		reached[4][49] = 1;
		(trpt+1)->bup.ovals[1] = now.msg_state;
		now.msg_state = 0;
#ifdef VAR_RANGES
		logval("msg_state", now.msg_state);
#endif
		;
		/* merge: .(goto)(56, 54, 56) */
		reached[4][54] = 1;
		;
		/* merge: .(goto)(0, 57, 56) */
		reached[4][57] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 53: // STATE 54 - model.pml:220 - [.(goto)] (0:56:0 - 2)
		IfNotBlocked
		reached[4][54] = 1;
		;
		/* merge: .(goto)(0, 57, 56) */
		reached[4][57] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 54: // STATE 50 - model.pml:218 - [((typeZone==1))] (56:0:2 - 1)
		IfNotBlocked
		reached[4][50] = 1;
		if (!((((int)now.typeZone)==1)))
			continue;
		/* merge: msg = 6(56, 51, 56) */
		reached[4][51] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.msg);
		now.msg = 6;
#ifdef VAR_RANGES
		logval("msg", ((int)now.msg));
#endif
		;
		/* merge: msg_state = 1(56, 52, 56) */
		reached[4][52] = 1;
		(trpt+1)->bup.ovals[1] = now.msg_state;
		now.msg_state = 1;
#ifdef VAR_RANGES
		logval("msg_state", now.msg_state);
#endif
		;
		/* merge: .(goto)(56, 54, 56) */
		reached[4][54] = 1;
		;
		/* merge: .(goto)(0, 57, 56) */
		reached[4][57] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 55: // STATE 59 - model.pml:223 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[4][59] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC typeZone_fsm */
	case 56: // STATE 1 - model.pml:166 - [typeZone_state = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[3][1] = 1;
		(trpt+1)->bup.oval = now.typeZone_state;
		now.typeZone_state = 0;
#ifdef VAR_RANGES
		logval("typeZone_state", now.typeZone_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 57: // STATE 2 - model.pml:169 - [((typeZone_state==0))] (0:0:0 - 1)
		IfNotBlocked
		reached[3][2] = 1;
		if (!((now.typeZone_state==0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 58: // STATE 3 - model.pml:171 - [(changePos_typeZone)] (18:0:2 - 1)
		IfNotBlocked
		reached[3][3] = 1;
		if (!(((int)now.changePos_typeZone)))
			continue;
		/* merge: printf('Selecting ACERA...\\n')(18, 4, 18) */
		reached[3][4] = 1;
		Printf("Selecting ACERA...\n");
		/* merge: changePos_typeZone = 0(18, 5, 18) */
		reached[3][5] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.changePos_typeZone);
		now.changePos_typeZone = 0;
#ifdef VAR_RANGES
		logval("changePos_typeZone", ((int)now.changePos_typeZone));
#endif
		;
		/* merge: typeZone = 0(18, 6, 18) */
		reached[3][6] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.typeZone);
		now.typeZone = 0;
#ifdef VAR_RANGES
		logval("typeZone", ((int)now.typeZone));
#endif
		;
		/* merge: .(goto)(18, 16, 18) */
		reached[3][16] = 1;
		;
		/* merge: .(goto)(0, 19, 18) */
		reached[3][19] = 1;
		;
		_m = 3; goto P999; /* 5 */
	case 59: // STATE 16 - model.pml:175 - [.(goto)] (0:18:0 - 3)
		IfNotBlocked
		reached[3][16] = 1;
		;
		/* merge: .(goto)(0, 19, 18) */
		reached[3][19] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 60: // STATE 7 - model.pml:172 - [(changePos_typeZone)] (18:0:2 - 1)
		IfNotBlocked
		reached[3][7] = 1;
		if (!(((int)now.changePos_typeZone)))
			continue;
		/* merge: printf('Selecting PASO...\\n')(18, 8, 18) */
		reached[3][8] = 1;
		Printf("Selecting PASO...\n");
		/* merge: changePos_typeZone = 0(18, 9, 18) */
		reached[3][9] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.changePos_typeZone);
		now.changePos_typeZone = 0;
#ifdef VAR_RANGES
		logval("changePos_typeZone", ((int)now.changePos_typeZone));
#endif
		;
		/* merge: typeZone = 1(18, 10, 18) */
		reached[3][10] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.typeZone);
		now.typeZone = 1;
#ifdef VAR_RANGES
		logval("typeZone", ((int)now.typeZone));
#endif
		;
		/* merge: .(goto)(18, 16, 18) */
		reached[3][16] = 1;
		;
		/* merge: .(goto)(0, 19, 18) */
		reached[3][19] = 1;
		;
		_m = 3; goto P999; /* 5 */
	case 61: // STATE 11 - model.pml:173 - [(changePos_typeZone)] (18:0:2 - 1)
		IfNotBlocked
		reached[3][11] = 1;
		if (!(((int)now.changePos_typeZone)))
			continue;
		/* merge: printf('Selecting CARRETERA...\\n')(18, 12, 18) */
		reached[3][12] = 1;
		Printf("Selecting CARRETERA...\n");
		/* merge: changePos_typeZone = 0(18, 13, 18) */
		reached[3][13] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.changePos_typeZone);
		now.changePos_typeZone = 0;
#ifdef VAR_RANGES
		logval("changePos_typeZone", ((int)now.changePos_typeZone));
#endif
		;
		/* merge: typeZone = 2(18, 14, 18) */
		reached[3][14] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.typeZone);
		now.typeZone = 2;
#ifdef VAR_RANGES
		logval("typeZone", ((int)now.typeZone));
#endif
		;
		/* merge: .(goto)(18, 16, 18) */
		reached[3][16] = 1;
		;
		/* merge: .(goto)(0, 19, 18) */
		reached[3][19] = 1;
		;
		_m = 3; goto P999; /* 5 */
	case 62: // STATE 21 - model.pml:178 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[3][21] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC semaphore_fsm */
	case 63: // STATE 1 - model.pml:136 - [semaphore_state = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[2][1] = 1;
		(trpt+1)->bup.oval = now.semaphore_state;
		now.semaphore_state = 0;
#ifdef VAR_RANGES
		logval("semaphore_state", now.semaphore_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 64: // STATE 2 - model.pml:139 - [((semaphore_state==0))] (0:0:0 - 1)
		IfNotBlocked
		reached[2][2] = 1;
		if (!((now.semaphore_state==0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 65: // STATE 3 - model.pml:141 - [((data&&validData))] (36:0:4 - 1)
		IfNotBlocked
		reached[2][3] = 1;
		if (!((((int)now.data)&&((int)now.validData))))
			continue;
		/* merge: printf('Change to SEL_SEM... Selecting semaphore 1...\\n')(36, 4, 36) */
		reached[2][4] = 1;
		Printf("Change to SEL_SEM... Selecting semaphore 1...\n");
		/* merge: validData = 0(36, 5, 36) */
		reached[2][5] = 1;
		(trpt+1)->bup.ovals = grab_ints(4);
		(trpt+1)->bup.ovals[0] = ((int)now.validData);
		now.validData = 0;
#ifdef VAR_RANGES
		logval("validData", ((int)now.validData));
#endif
		;
		/* merge: data = 0(36, 6, 36) */
		reached[2][6] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.data);
		now.data = 0;
#ifdef VAR_RANGES
		logval("data", ((int)now.data));
#endif
		;
		/* merge: semId = 1(36, 7, 36) */
		reached[2][7] = 1;
		(trpt+1)->bup.ovals[2] = ((int)now.semId);
		now.semId = 1;
#ifdef VAR_RANGES
		logval("semId", ((int)now.semId));
#endif
		;
		/* merge: semaphore_state = 1(36, 8, 36) */
		reached[2][8] = 1;
		(trpt+1)->bup.ovals[3] = now.semaphore_state;
		now.semaphore_state = 1;
#ifdef VAR_RANGES
		logval("semaphore_state", now.semaphore_state);
#endif
		;
		/* merge: .(goto)(36, 15, 36) */
		reached[2][15] = 1;
		;
		/* merge: .(goto)(0, 37, 36) */
		reached[2][37] = 1;
		;
		_m = 3; goto P999; /* 7 */
	case 66: // STATE 15 - model.pml:144 - [.(goto)] (0:36:0 - 2)
		IfNotBlocked
		reached[2][15] = 1;
		;
		/* merge: .(goto)(0, 37, 36) */
		reached[2][37] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 67: // STATE 9 - model.pml:142 - [((data&&!(validData)))] (36:0:3 - 1)
		IfNotBlocked
		reached[2][9] = 1;
		if (!((((int)now.data)&& !(((int)now.validData)))))
			continue;
		/* merge: printf('Change to SEL_SEM... Selecting semaphore None...\\n')(36, 10, 36) */
		reached[2][10] = 1;
		Printf("Change to SEL_SEM... Selecting semaphore None...\n");
		/* merge: data = 0(36, 11, 36) */
		reached[2][11] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((int)now.data);
		now.data = 0;
#ifdef VAR_RANGES
		logval("data", ((int)now.data));
#endif
		;
		/* merge: semId = 0(36, 12, 36) */
		reached[2][12] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.semId);
		now.semId = 0;
#ifdef VAR_RANGES
		logval("semId", ((int)now.semId));
#endif
		;
		/* merge: semaphore_state = 1(36, 13, 36) */
		reached[2][13] = 1;
		(trpt+1)->bup.ovals[2] = now.semaphore_state;
		now.semaphore_state = 1;
#ifdef VAR_RANGES
		logval("semaphore_state", now.semaphore_state);
#endif
		;
		/* merge: .(goto)(36, 15, 36) */
		reached[2][15] = 1;
		;
		/* merge: .(goto)(0, 37, 36) */
		reached[2][37] = 1;
		;
		_m = 3; goto P999; /* 6 */
	case 68: // STATE 17 - model.pml:145 - [((semaphore_state==1))] (0:0:0 - 1)
		IfNotBlocked
		reached[2][17] = 1;
		if (!((now.semaphore_state==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 69: // STATE 18 - model.pml:147 - [(((data&&changePos)&&validData))] (36:0:4 - 1)
		IfNotBlocked
		reached[2][18] = 1;
		if (!(((((int)now.data)&&((int)now.changePos))&&((int)now.validData))))
			continue;
		/* merge: printf('Change to SEL_SEM... Selecting semaphore 1...\\n')(36, 19, 36) */
		reached[2][19] = 1;
		Printf("Change to SEL_SEM... Selecting semaphore 1...\n");
		/* merge: validData = 0(36, 20, 36) */
		reached[2][20] = 1;
		(trpt+1)->bup.ovals = grab_ints(4);
		(trpt+1)->bup.ovals[0] = ((int)now.validData);
		now.validData = 0;
#ifdef VAR_RANGES
		logval("validData", ((int)now.validData));
#endif
		;
		/* merge: changePos = 0(36, 21, 36) */
		reached[2][21] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.changePos);
		now.changePos = 0;
#ifdef VAR_RANGES
		logval("changePos", ((int)now.changePos));
#endif
		;
		/* merge: semId = 1(36, 22, 36) */
		reached[2][22] = 1;
		(trpt+1)->bup.ovals[2] = ((int)now.semId);
		now.semId = 1;
#ifdef VAR_RANGES
		logval("semId", ((int)now.semId));
#endif
		;
		/* merge: semaphore_state = 1(36, 23, 36) */
		reached[2][23] = 1;
		(trpt+1)->bup.ovals[3] = now.semaphore_state;
		now.semaphore_state = 1;
#ifdef VAR_RANGES
		logval("semaphore_state", now.semaphore_state);
#endif
		;
		/* merge: .(goto)(36, 34, 36) */
		reached[2][34] = 1;
		;
		/* merge: .(goto)(0, 37, 36) */
		reached[2][37] = 1;
		;
		_m = 3; goto P999; /* 7 */
	case 70: // STATE 34 - model.pml:151 - [.(goto)] (0:36:0 - 3)
		IfNotBlocked
		reached[2][34] = 1;
		;
		/* merge: .(goto)(0, 37, 36) */
		reached[2][37] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 71: // STATE 24 - model.pml:148 - [(((data&&changePos)&&!(validData)))] (36:0:3 - 1)
		IfNotBlocked
		reached[2][24] = 1;
		if (!(((((int)now.data)&&((int)now.changePos))&& !(((int)now.validData)))))
			continue;
		/* merge: printf('Change to SEL_SEM... Selecting semaphore None...\\n')(36, 25, 36) */
		reached[2][25] = 1;
		Printf("Change to SEL_SEM... Selecting semaphore None...\n");
		/* merge: changePos = 0(36, 26, 36) */
		reached[2][26] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((int)now.changePos);
		now.changePos = 0;
#ifdef VAR_RANGES
		logval("changePos", ((int)now.changePos));
#endif
		;
		/* merge: semId = 0(36, 27, 36) */
		reached[2][27] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.semId);
		now.semId = 0;
#ifdef VAR_RANGES
		logval("semId", ((int)now.semId));
#endif
		;
		/* merge: semaphore_state = 1(36, 28, 36) */
		reached[2][28] = 1;
		(trpt+1)->bup.ovals[2] = now.semaphore_state;
		now.semaphore_state = 1;
#ifdef VAR_RANGES
		logval("semaphore_state", now.semaphore_state);
#endif
		;
		/* merge: .(goto)(36, 34, 36) */
		reached[2][34] = 1;
		;
		/* merge: .(goto)(0, 37, 36) */
		reached[2][37] = 1;
		;
		_m = 3; goto P999; /* 6 */
	case 72: // STATE 29 - model.pml:149 - [(!(data))] (36:0:2 - 1)
		IfNotBlocked
		reached[2][29] = 1;
		if (!( !(((int)now.data))))
			continue;
		/* merge: printf('Change to IDLE_SEM... No data available...\\n')(36, 30, 36) */
		reached[2][30] = 1;
		Printf("Change to IDLE_SEM... No data available...\n");
		/* merge: semId = 0(36, 31, 36) */
		reached[2][31] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.semId);
		now.semId = 0;
#ifdef VAR_RANGES
		logval("semId", ((int)now.semId));
#endif
		;
		/* merge: semaphore_state = 0(36, 32, 36) */
		reached[2][32] = 1;
		(trpt+1)->bup.ovals[1] = now.semaphore_state;
		now.semaphore_state = 0;
#ifdef VAR_RANGES
		logval("semaphore_state", now.semaphore_state);
#endif
		;
		/* merge: .(goto)(36, 34, 36) */
		reached[2][34] = 1;
		;
		/* merge: .(goto)(0, 37, 36) */
		reached[2][37] = 1;
		;
		_m = 3; goto P999; /* 5 */
	case 73: // STATE 39 - model.pml:154 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[2][39] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC IMU_fsm */
	case 74: // STATE 1 - model.pml:99 - [IMU_state = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[1][1] = 1;
		(trpt+1)->bup.oval = now.IMU_state;
		now.IMU_state = 0;
#ifdef VAR_RANGES
		logval("IMU_state", now.IMU_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 75: // STATE 2 - model.pml:102 - [((IMU_state==0))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][2] = 1;
		if (!((now.IMU_state==0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 76: // STATE 3 - model.pml:104 - [(timer_IMU_end)] (28:0:2 - 1)
		IfNotBlocked
		reached[1][3] = 1;
		if (!(((int)now.timer_IMU_end)))
			continue;
		/* merge: timer_IMU_end = 0(28, 4, 28) */
		reached[1][4] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.timer_IMU_end);
		now.timer_IMU_end = 0;
#ifdef VAR_RANGES
		logval("timer_IMU_end", ((int)now.timer_IMU_end));
#endif
		;
		/* merge: printf('IDLE_IMU...\\n')(28, 5, 28) */
		reached[1][5] = 1;
		Printf("IDLE_IMU...\n");
		/* merge: IMU_state = 1(28, 6, 28) */
		reached[1][6] = 1;
		(trpt+1)->bup.ovals[1] = now.IMU_state;
		now.IMU_state = 1;
#ifdef VAR_RANGES
		logval("IMU_state", now.IMU_state);
#endif
		;
		/* merge: .(goto)(28, 8, 28) */
		reached[1][8] = 1;
		;
		/* merge: .(goto)(0, 29, 28) */
		reached[1][29] = 1;
		;
		_m = 3; goto P999; /* 5 */
	case 77: // STATE 10 - model.pml:107 - [((IMU_state==1))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][10] = 1;
		if (!((now.IMU_state==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 78: // STATE 11 - model.pml:109 - [((counter<(10-1)))] (28:0:2 - 1)
		IfNotBlocked
		reached[1][11] = 1;
		if (!((now.counter<(10-1))))
			continue;
		/* merge: IMU_state = 0(28, 12, 28) */
		reached[1][12] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = now.IMU_state;
		now.IMU_state = 0;
#ifdef VAR_RANGES
		logval("IMU_state", now.IMU_state);
#endif
		;
		/* merge: counter = (counter+1)(28, 13, 28) */
		reached[1][13] = 1;
		(trpt+1)->bup.ovals[1] = now.counter;
		now.counter = (now.counter+1);
#ifdef VAR_RANGES
		logval("counter", now.counter);
#endif
		;
		/* merge: .(goto)(28, 18, 28) */
		reached[1][18] = 1;
		;
		/* merge: .(goto)(0, 29, 28) */
		reached[1][29] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 79: // STATE 18 - model.pml:112 - [.(goto)] (0:28:0 - 2)
		IfNotBlocked
		reached[1][18] = 1;
		;
		/* merge: .(goto)(0, 29, 28) */
		reached[1][29] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 80: // STATE 14 - model.pml:110 - [((counter>=(10-1)))] (28:0:2 - 1)
		IfNotBlocked
		reached[1][14] = 1;
		if (!((now.counter>=(10-1))))
			continue;
		/* merge: counter = (counter+1)(28, 15, 28) */
		reached[1][15] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = now.counter;
		now.counter = (now.counter+1);
#ifdef VAR_RANGES
		logval("counter", now.counter);
#endif
		;
		/* merge: IMU_state = 2(28, 16, 28) */
		reached[1][16] = 1;
		(trpt+1)->bup.ovals[1] = now.IMU_state;
		now.IMU_state = 2;
#ifdef VAR_RANGES
		logval("IMU_state", now.IMU_state);
#endif
		;
		/* merge: .(goto)(28, 18, 28) */
		reached[1][18] = 1;
		;
		/* merge: .(goto)(0, 29, 28) */
		reached[1][29] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 81: // STATE 20 - model.pml:113 - [((IMU_state==2))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][20] = 1;
		if (!((now.IMU_state==2)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 82: // STATE 21 - model.pml:115 - [(1)] (28:0:2 - 1)
		IfNotBlocked
		reached[1][21] = 1;
		if (!(1))
			continue;
		/* merge: counter = 0(28, 22, 28) */
		reached[1][22] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = now.counter;
		now.counter = 0;
#ifdef VAR_RANGES
		logval("counter", now.counter);
#endif
		;
		/* merge: printf('Calculating average...\\n')(28, 23, 28) */
		reached[1][23] = 1;
		Printf("Calculating average...\n");
		/* merge: IMU_state = 0(28, 24, 28) */
		reached[1][24] = 1;
		(trpt+1)->bup.ovals[1] = now.IMU_state;
		now.IMU_state = 0;
#ifdef VAR_RANGES
		logval("IMU_state", now.IMU_state);
#endif
		;
		/* merge: .(goto)(28, 26, 28) */
		reached[1][26] = 1;
		;
		/* merge: .(goto)(0, 29, 28) */
		reached[1][29] = 1;
		;
		_m = 3; goto P999; /* 5 */
	case 83: // STATE 31 - model.pml:120 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[1][31] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC ultrasonic_fsm */
	case 84: // STATE 1 - model.pml:66 - [ultrasonic_state = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1] = 1;
		(trpt+1)->bup.oval = now.ultrasonic_state;
		now.ultrasonic_state = 0;
#ifdef VAR_RANGES
		logval("ultrasonic_state", now.ultrasonic_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 85: // STATE 2 - model.pml:69 - [((ultrasonic_state==0))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][2] = 1;
		if (!((now.ultrasonic_state==0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 86: // STATE 3 - model.pml:71 - [(timer_sample_end)] (29:0:4 - 1)
		IfNotBlocked
		reached[0][3] = 1;
		if (!(((int)now.timer_sample_end)))
			continue;
		/* merge: printf('IDLE_US...\\n')(29, 4, 29) */
		reached[0][4] = 1;
		Printf("IDLE_US...\n");
		/* merge: timer_sample_end = 0(29, 5, 29) */
		reached[0][5] = 1;
		(trpt+1)->bup.ovals = grab_ints(4);
		(trpt+1)->bup.ovals[0] = ((int)now.timer_sample_end);
		now.timer_sample_end = 0;
#ifdef VAR_RANGES
		logval("timer_sample_end", ((int)now.timer_sample_end));
#endif
		;
		/* merge: ultrasonic_state = 1(29, 6, 29) */
		reached[0][6] = 1;
		(trpt+1)->bup.ovals[1] = now.ultrasonic_state;
		now.ultrasonic_state = 1;
#ifdef VAR_RANGES
		logval("ultrasonic_state", now.ultrasonic_state);
#endif
		;
		/* merge: trigger = 1(29, 7, 29) */
		reached[0][7] = 1;
		(trpt+1)->bup.ovals[2] = ((int)now.trigger);
		now.trigger = 1;
#ifdef VAR_RANGES
		logval("trigger", ((int)now.trigger));
#endif
		;
		/* merge: timer_trigger_start = 1(29, 8, 29) */
		reached[0][8] = 1;
		(trpt+1)->bup.ovals[3] = ((int)now.timer_trigger_start);
		now.timer_trigger_start = 1;
#ifdef VAR_RANGES
		logval("timer_trigger_start", ((int)now.timer_trigger_start));
#endif
		;
		/* merge: .(goto)(29, 10, 29) */
		reached[0][10] = 1;
		;
		/* merge: .(goto)(0, 30, 29) */
		reached[0][30] = 1;
		;
		_m = 3; goto P999; /* 7 */
	case 87: // STATE 12 - model.pml:74 - [((ultrasonic_state==1))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][12] = 1;
		if (!((now.ultrasonic_state==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 88: // STATE 13 - model.pml:76 - [(timer_trigger_end)] (29:0:3 - 1)
		IfNotBlocked
		reached[0][13] = 1;
		if (!(((int)now.timer_trigger_end)))
			continue;
		/* merge: printf('SET_TRIGGER...\\n')(29, 14, 29) */
		reached[0][14] = 1;
		Printf("SET_TRIGGER...\n");
		/* merge: timer_trigger_end = 0(29, 15, 29) */
		reached[0][15] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((int)now.timer_trigger_end);
		now.timer_trigger_end = 0;
#ifdef VAR_RANGES
		logval("timer_trigger_end", ((int)now.timer_trigger_end));
#endif
		;
		/* merge: ultrasonic_state = 2(29, 16, 29) */
		reached[0][16] = 1;
		(trpt+1)->bup.ovals[1] = now.ultrasonic_state;
		now.ultrasonic_state = 2;
#ifdef VAR_RANGES
		logval("ultrasonic_state", now.ultrasonic_state);
#endif
		;
		/* merge: trigger = 0(29, 17, 29) */
		reached[0][17] = 1;
		(trpt+1)->bup.ovals[2] = ((int)now.trigger);
		now.trigger = 0;
#ifdef VAR_RANGES
		logval("trigger", ((int)now.trigger));
#endif
		;
		/* merge: .(goto)(29, 19, 29) */
		reached[0][19] = 1;
		;
		/* merge: .(goto)(0, 30, 29) */
		reached[0][30] = 1;
		;
		_m = 3; goto P999; /* 6 */
	case 89: // STATE 21 - model.pml:79 - [((ultrasonic_state==2))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][21] = 1;
		if (!((now.ultrasonic_state==2)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 90: // STATE 22 - model.pml:81 - [(echo_received)] (29:0:2 - 1)
		IfNotBlocked
		reached[0][22] = 1;
		if (!(((int)now.echo_received)))
			continue;
		/* merge: printf('WAIT_ECHO...\\n')(29, 23, 29) */
		reached[0][23] = 1;
		Printf("WAIT_ECHO...\n");
		/* merge: echo_received = 0(29, 24, 29) */
		reached[0][24] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.echo_received);
		now.echo_received = 0;
#ifdef VAR_RANGES
		logval("echo_received", ((int)now.echo_received));
#endif
		;
		/* merge: ultrasonic_state = 0(29, 25, 29) */
		reached[0][25] = 1;
		(trpt+1)->bup.ovals[1] = now.ultrasonic_state;
		now.ultrasonic_state = 0;
#ifdef VAR_RANGES
		logval("ultrasonic_state", now.ultrasonic_state);
#endif
		;
		/* merge: .(goto)(29, 27, 29) */
		reached[0][27] = 1;
		;
		/* merge: .(goto)(0, 30, 29) */
		reached[0][30] = 1;
		;
		_m = 3; goto P999; /* 5 */
	case 91: // STATE 32 - model.pml:86 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[0][32] = 1;
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

