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

		 /* CLAIM semaphore_spec */
	case 3: // STATE 1 - _spin_nvr.tmp:30 - [((!(!(((data&&validData)&&(semaphore_state==0))))&&!((semId!=0))))] (0:0:0 - 1)
		
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
	case 4: // STATE 8 - _spin_nvr.tmp:35 - [(!((semId!=0)))] (0:0:0 - 1)
		
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
	case 5: // STATE 13 - _spin_nvr.tmp:37 - [-end-] (0:0:0 - 1)
		
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

		 /* CLAIM IMU_spec */
	case 6: // STATE 1 - _spin_nvr.tmp:14 - [((!(!(((counter>=(10-1))&&timer_IMU_end)))&&!((IMU_state==2))))] (0:0:0 - 1)
		
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
		reached[5][1] = 1;
		if (!(( !( !(((now.counter>=(10-1))&&((int)now.timer_IMU_end))))&& !((now.IMU_state==2)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 7: // STATE 3 - _spin_nvr.tmp:15 - [((!(!((timer_IMU_end==1)))&&!((IMU_state==1))))] (0:0:0 - 1)
		
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
		reached[5][3] = 1;
		if (!(( !( !((((int)now.timer_IMU_end)==1)))&& !((now.IMU_state==1)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 8: // STATE 10 - _spin_nvr.tmp:20 - [(!((IMU_state==2)))] (0:0:0 - 1)
		
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
		reached[5][10] = 1;
		if (!( !((now.IMU_state==2))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 9: // STATE 15 - _spin_nvr.tmp:24 - [(!((IMU_state==1)))] (0:0:0 - 1)
		
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
		reached[5][15] = 1;
		if (!( !((now.IMU_state==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 10: // STATE 20 - _spin_nvr.tmp:26 - [-end-] (0:0:0 - 1)
		
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
		reached[5][20] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* CLAIM ultrasonic_spec */
	case 11: // STATE 1 - _spin_nvr.tmp:3 - [((!(!(((trigger==1)&&(timer_trigger_end==1))))&&!((trigger==0))))] (0:0:0 - 1)
		
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
		reached[4][1] = 1;
		if (!(( !( !(((((int)now.trigger)==1)&&(((int)now.timer_trigger_end)==1))))&& !((((int)now.trigger)==0)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 12: // STATE 8 - _spin_nvr.tmp:8 - [(!((trigger==0)))] (0:0:0 - 1)
		
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
		reached[4][8] = 1;
		if (!( !((((int)now.trigger)==0))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 13: // STATE 13 - _spin_nvr.tmp:10 - [-end-] (0:0:0 - 1)
		
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
		reached[4][13] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC entorno */
	case 14: // STATE 2 - model.pml:164 - [(!(timer_sample_start))] (48:0:1 - 1)
		IfNotBlocked
		reached[3][2] = 1;
		if (!( !(((int)now.timer_sample_start))))
			continue;
		/* merge: timer_sample_start = 1(48, 3, 48) */
		reached[3][3] = 1;
		(trpt+1)->bup.oval = ((int)now.timer_sample_start);
		now.timer_sample_start = 1;
#ifdef VAR_RANGES
		logval("timer_sample_start", ((int)now.timer_sample_start));
#endif
		;
		/* merge: .(goto)(48, 45, 48) */
		reached[3][45] = 1;
		;
		/* merge: printf('data: %d   validData: %d   changePos: %d   state: %d\\n',data,validData,changePos,semaphore_state)(48, 46, 48) */
		reached[3][46] = 1;
		Printf("data: %d   validData: %d   changePos: %d   state: %d\n", ((int)now.data), ((int)now.validData), ((int)now.changePos), now.semaphore_state);
		/* merge: .(goto)(0, 49, 48) */
		reached[3][49] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 15: // STATE 45 - model.pml:190 - [.(goto)] (0:48:0 - 17)
		IfNotBlocked
		reached[3][45] = 1;
		;
		/* merge: printf('data: %d   validData: %d   changePos: %d   state: %d\\n',data,validData,changePos,semaphore_state)(48, 46, 48) */
		reached[3][46] = 1;
		Printf("data: %d   validData: %d   changePos: %d   state: %d\n", ((int)now.data), ((int)now.validData), ((int)now.changePos), now.semaphore_state);
		/* merge: .(goto)(0, 49, 48) */
		reached[3][49] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 16: // STATE 4 - model.pml:165 - [(timer_sample_start)] (48:0:2 - 1)
		IfNotBlocked
		reached[3][4] = 1;
		if (!(((int)now.timer_sample_start)))
			continue;
		/* merge: timer_sample_start = 0(48, 5, 48) */
		reached[3][5] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.timer_sample_start);
		now.timer_sample_start = 0;
#ifdef VAR_RANGES
		logval("timer_sample_start", ((int)now.timer_sample_start));
#endif
		;
		/* merge: timer_sample_end = 1(48, 6, 48) */
		reached[3][6] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.timer_sample_end);
		now.timer_sample_end = 1;
#ifdef VAR_RANGES
		logval("timer_sample_end", ((int)now.timer_sample_end));
#endif
		;
		/* merge: .(goto)(48, 45, 48) */
		reached[3][45] = 1;
		;
		/* merge: printf('data: %d   validData: %d   changePos: %d   state: %d\\n',data,validData,changePos,semaphore_state)(48, 46, 48) */
		reached[3][46] = 1;
		Printf("data: %d   validData: %d   changePos: %d   state: %d\n", ((int)now.data), ((int)now.validData), ((int)now.changePos), now.semaphore_state);
		/* merge: .(goto)(0, 49, 48) */
		reached[3][49] = 1;
		;
		_m = 3; goto P999; /* 5 */
	case 17: // STATE 7 - model.pml:166 - [(timer_trigger_start)] (48:0:2 - 1)
		IfNotBlocked
		reached[3][7] = 1;
		if (!(((int)now.timer_trigger_start)))
			continue;
		/* merge: timer_trigger_start = 0(48, 8, 48) */
		reached[3][8] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.timer_trigger_start);
		now.timer_trigger_start = 0;
#ifdef VAR_RANGES
		logval("timer_trigger_start", ((int)now.timer_trigger_start));
#endif
		;
		/* merge: timer_trigger_end = 1(48, 9, 48) */
		reached[3][9] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.timer_trigger_end);
		now.timer_trigger_end = 1;
#ifdef VAR_RANGES
		logval("timer_trigger_end", ((int)now.timer_trigger_end));
#endif
		;
		/* merge: .(goto)(48, 45, 48) */
		reached[3][45] = 1;
		;
		/* merge: printf('data: %d   validData: %d   changePos: %d   state: %d\\n',data,validData,changePos,semaphore_state)(48, 46, 48) */
		reached[3][46] = 1;
		Printf("data: %d   validData: %d   changePos: %d   state: %d\n", ((int)now.data), ((int)now.validData), ((int)now.changePos), now.semaphore_state);
		/* merge: .(goto)(0, 49, 48) */
		reached[3][49] = 1;
		;
		_m = 3; goto P999; /* 5 */
	case 18: // STATE 10 - model.pml:167 - [(((echo_received==0)&&(ultrasonic_state==2)))] (48:0:1 - 1)
		IfNotBlocked
		reached[3][10] = 1;
		if (!(((((int)now.echo_received)==0)&&(now.ultrasonic_state==2))))
			continue;
		/* merge: echo_received = 1(48, 11, 48) */
		reached[3][11] = 1;
		(trpt+1)->bup.oval = ((int)now.echo_received);
		now.echo_received = 1;
#ifdef VAR_RANGES
		logval("echo_received", ((int)now.echo_received));
#endif
		;
		/* merge: .(goto)(48, 45, 48) */
		reached[3][45] = 1;
		;
		/* merge: printf('data: %d   validData: %d   changePos: %d   state: %d\\n',data,validData,changePos,semaphore_state)(48, 46, 48) */
		reached[3][46] = 1;
		Printf("data: %d   validData: %d   changePos: %d   state: %d\n", ((int)now.data), ((int)now.validData), ((int)now.changePos), now.semaphore_state);
		/* merge: .(goto)(0, 49, 48) */
		reached[3][49] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 19: // STATE 12 - model.pml:170 - [(!(timer_IMU_start))] (48:0:1 - 1)
		IfNotBlocked
		reached[3][12] = 1;
		if (!( !(((int)now.timer_IMU_start))))
			continue;
		/* merge: timer_IMU_start = 1(48, 13, 48) */
		reached[3][13] = 1;
		(trpt+1)->bup.oval = ((int)now.timer_IMU_start);
		now.timer_IMU_start = 1;
#ifdef VAR_RANGES
		logval("timer_IMU_start", ((int)now.timer_IMU_start));
#endif
		;
		/* merge: .(goto)(48, 45, 48) */
		reached[3][45] = 1;
		;
		/* merge: printf('data: %d   validData: %d   changePos: %d   state: %d\\n',data,validData,changePos,semaphore_state)(48, 46, 48) */
		reached[3][46] = 1;
		Printf("data: %d   validData: %d   changePos: %d   state: %d\n", ((int)now.data), ((int)now.validData), ((int)now.changePos), now.semaphore_state);
		/* merge: .(goto)(0, 49, 48) */
		reached[3][49] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 20: // STATE 14 - model.pml:171 - [(timer_IMU_start)] (48:0:2 - 1)
		IfNotBlocked
		reached[3][14] = 1;
		if (!(((int)now.timer_IMU_start)))
			continue;
		/* merge: timer_IMU_start = 0(48, 15, 48) */
		reached[3][15] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.timer_IMU_start);
		now.timer_IMU_start = 0;
#ifdef VAR_RANGES
		logval("timer_IMU_start", ((int)now.timer_IMU_start));
#endif
		;
		/* merge: timer_IMU_end = 1(48, 16, 48) */
		reached[3][16] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.timer_IMU_end);
		now.timer_IMU_end = 1;
#ifdef VAR_RANGES
		logval("timer_IMU_end", ((int)now.timer_IMU_end));
#endif
		;
		/* merge: .(goto)(48, 45, 48) */
		reached[3][45] = 1;
		;
		/* merge: printf('data: %d   validData: %d   changePos: %d   state: %d\\n',data,validData,changePos,semaphore_state)(48, 46, 48) */
		reached[3][46] = 1;
		Printf("data: %d   validData: %d   changePos: %d   state: %d\n", ((int)now.data), ((int)now.validData), ((int)now.changePos), now.semaphore_state);
		/* merge: .(goto)(0, 49, 48) */
		reached[3][49] = 1;
		;
		_m = 3; goto P999; /* 5 */
	case 21: // STATE 17 - model.pml:177 - [data = 1] (0:48:1 - 1)
		IfNotBlocked
		reached[3][17] = 1;
		(trpt+1)->bup.oval = ((int)now.data);
		now.data = 1;
#ifdef VAR_RANGES
		logval("data", ((int)now.data));
#endif
		;
		/* merge: .(goto)(48, 45, 48) */
		reached[3][45] = 1;
		;
		/* merge: printf('data: %d   validData: %d   changePos: %d   state: %d\\n',data,validData,changePos,semaphore_state)(48, 46, 48) */
		reached[3][46] = 1;
		Printf("data: %d   validData: %d   changePos: %d   state: %d\n", ((int)now.data), ((int)now.validData), ((int)now.changePos), now.semaphore_state);
		/* merge: .(goto)(0, 49, 48) */
		reached[3][49] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 22: // STATE 18 - model.pml:178 - [(data)] (48:0:2 - 1)
		IfNotBlocked
		reached[3][18] = 1;
		if (!(((int)now.data)))
			continue;
		/* merge: validData = 1(48, 19, 48) */
		reached[3][19] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.validData);
		now.validData = 1;
#ifdef VAR_RANGES
		logval("validData", ((int)now.validData));
#endif
		;
		/* merge: semToSelect = 1(48, 20, 48) */
		reached[3][20] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.semToSelect);
		now.semToSelect = 1;
#ifdef VAR_RANGES
		logval("semToSelect", ((int)now.semToSelect));
#endif
		;
		/* merge: .(goto)(48, 45, 48) */
		reached[3][45] = 1;
		;
		/* merge: printf('data: %d   validData: %d   changePos: %d   state: %d\\n',data,validData,changePos,semaphore_state)(48, 46, 48) */
		reached[3][46] = 1;
		Printf("data: %d   validData: %d   changePos: %d   state: %d\n", ((int)now.data), ((int)now.validData), ((int)now.changePos), now.semaphore_state);
		/* merge: .(goto)(0, 49, 48) */
		reached[3][49] = 1;
		;
		_m = 3; goto P999; /* 5 */
	case 23: // STATE 21 - model.pml:179 - [(data)] (48:0:2 - 1)
		IfNotBlocked
		reached[3][21] = 1;
		if (!(((int)now.data)))
			continue;
		/* merge: validData = 1(48, 22, 48) */
		reached[3][22] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.validData);
		now.validData = 1;
#ifdef VAR_RANGES
		logval("validData", ((int)now.validData));
#endif
		;
		/* merge: semToSelect = 2(48, 23, 48) */
		reached[3][23] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.semToSelect);
		now.semToSelect = 2;
#ifdef VAR_RANGES
		logval("semToSelect", ((int)now.semToSelect));
#endif
		;
		/* merge: .(goto)(48, 45, 48) */
		reached[3][45] = 1;
		;
		/* merge: printf('data: %d   validData: %d   changePos: %d   state: %d\\n',data,validData,changePos,semaphore_state)(48, 46, 48) */
		reached[3][46] = 1;
		Printf("data: %d   validData: %d   changePos: %d   state: %d\n", ((int)now.data), ((int)now.validData), ((int)now.changePos), now.semaphore_state);
		/* merge: .(goto)(0, 49, 48) */
		reached[3][49] = 1;
		;
		_m = 3; goto P999; /* 5 */
	case 24: // STATE 24 - model.pml:180 - [(data)] (48:0:2 - 1)
		IfNotBlocked
		reached[3][24] = 1;
		if (!(((int)now.data)))
			continue;
		/* merge: validData = 1(48, 25, 48) */
		reached[3][25] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.validData);
		now.validData = 1;
#ifdef VAR_RANGES
		logval("validData", ((int)now.validData));
#endif
		;
		/* merge: semToSelect = 3(48, 26, 48) */
		reached[3][26] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.semToSelect);
		now.semToSelect = 3;
#ifdef VAR_RANGES
		logval("semToSelect", ((int)now.semToSelect));
#endif
		;
		/* merge: .(goto)(48, 45, 48) */
		reached[3][45] = 1;
		;
		/* merge: printf('data: %d   validData: %d   changePos: %d   state: %d\\n',data,validData,changePos,semaphore_state)(48, 46, 48) */
		reached[3][46] = 1;
		Printf("data: %d   validData: %d   changePos: %d   state: %d\n", ((int)now.data), ((int)now.validData), ((int)now.changePos), now.semaphore_state);
		/* merge: .(goto)(0, 49, 48) */
		reached[3][49] = 1;
		;
		_m = 3; goto P999; /* 5 */
	case 25: // STATE 27 - model.pml:181 - [(data)] (48:0:2 - 1)
		IfNotBlocked
		reached[3][27] = 1;
		if (!(((int)now.data)))
			continue;
		/* merge: validData = 1(48, 28, 48) */
		reached[3][28] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.validData);
		now.validData = 1;
#ifdef VAR_RANGES
		logval("validData", ((int)now.validData));
#endif
		;
		/* merge: semToSelect = 4(48, 29, 48) */
		reached[3][29] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.semToSelect);
		now.semToSelect = 4;
#ifdef VAR_RANGES
		logval("semToSelect", ((int)now.semToSelect));
#endif
		;
		/* merge: .(goto)(48, 45, 48) */
		reached[3][45] = 1;
		;
		/* merge: printf('data: %d   validData: %d   changePos: %d   state: %d\\n',data,validData,changePos,semaphore_state)(48, 46, 48) */
		reached[3][46] = 1;
		Printf("data: %d   validData: %d   changePos: %d   state: %d\n", ((int)now.data), ((int)now.validData), ((int)now.changePos), now.semaphore_state);
		/* merge: .(goto)(0, 49, 48) */
		reached[3][49] = 1;
		;
		_m = 3; goto P999; /* 5 */
	case 26: // STATE 30 - model.pml:182 - [(data)] (48:0:2 - 1)
		IfNotBlocked
		reached[3][30] = 1;
		if (!(((int)now.data)))
			continue;
		/* merge: validData = 1(48, 31, 48) */
		reached[3][31] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.validData);
		now.validData = 1;
#ifdef VAR_RANGES
		logval("validData", ((int)now.validData));
#endif
		;
		/* merge: semToSelect = 5(48, 32, 48) */
		reached[3][32] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.semToSelect);
		now.semToSelect = 5;
#ifdef VAR_RANGES
		logval("semToSelect", ((int)now.semToSelect));
#endif
		;
		/* merge: .(goto)(48, 45, 48) */
		reached[3][45] = 1;
		;
		/* merge: printf('data: %d   validData: %d   changePos: %d   state: %d\\n',data,validData,changePos,semaphore_state)(48, 46, 48) */
		reached[3][46] = 1;
		Printf("data: %d   validData: %d   changePos: %d   state: %d\n", ((int)now.data), ((int)now.validData), ((int)now.changePos), now.semaphore_state);
		/* merge: .(goto)(0, 49, 48) */
		reached[3][49] = 1;
		;
		_m = 3; goto P999; /* 5 */
	case 27: // STATE 33 - model.pml:183 - [(data)] (48:0:2 - 1)
		IfNotBlocked
		reached[3][33] = 1;
		if (!(((int)now.data)))
			continue;
		/* merge: validData = 1(48, 34, 48) */
		reached[3][34] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.validData);
		now.validData = 1;
#ifdef VAR_RANGES
		logval("validData", ((int)now.validData));
#endif
		;
		/* merge: semToSelect = 6(48, 35, 48) */
		reached[3][35] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.semToSelect);
		now.semToSelect = 6;
#ifdef VAR_RANGES
		logval("semToSelect", ((int)now.semToSelect));
#endif
		;
		/* merge: .(goto)(48, 45, 48) */
		reached[3][45] = 1;
		;
		/* merge: printf('data: %d   validData: %d   changePos: %d   state: %d\\n',data,validData,changePos,semaphore_state)(48, 46, 48) */
		reached[3][46] = 1;
		Printf("data: %d   validData: %d   changePos: %d   state: %d\n", ((int)now.data), ((int)now.validData), ((int)now.changePos), now.semaphore_state);
		/* merge: .(goto)(0, 49, 48) */
		reached[3][49] = 1;
		;
		_m = 3; goto P999; /* 5 */
	case 28: // STATE 36 - model.pml:184 - [(data)] (48:0:2 - 1)
		IfNotBlocked
		reached[3][36] = 1;
		if (!(((int)now.data)))
			continue;
		/* merge: validData = 1(48, 37, 48) */
		reached[3][37] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.validData);
		now.validData = 1;
#ifdef VAR_RANGES
		logval("validData", ((int)now.validData));
#endif
		;
		/* merge: semToSelect = 7(48, 38, 48) */
		reached[3][38] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.semToSelect);
		now.semToSelect = 7;
#ifdef VAR_RANGES
		logval("semToSelect", ((int)now.semToSelect));
#endif
		;
		/* merge: .(goto)(48, 45, 48) */
		reached[3][45] = 1;
		;
		/* merge: printf('data: %d   validData: %d   changePos: %d   state: %d\\n',data,validData,changePos,semaphore_state)(48, 46, 48) */
		reached[3][46] = 1;
		Printf("data: %d   validData: %d   changePos: %d   state: %d\n", ((int)now.data), ((int)now.validData), ((int)now.changePos), now.semaphore_state);
		/* merge: .(goto)(0, 49, 48) */
		reached[3][49] = 1;
		;
		_m = 3; goto P999; /* 5 */
	case 29: // STATE 39 - model.pml:185 - [(data)] (48:0:2 - 1)
		IfNotBlocked
		reached[3][39] = 1;
		if (!(((int)now.data)))
			continue;
		/* merge: validData = 1(48, 40, 48) */
		reached[3][40] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.validData);
		now.validData = 1;
#ifdef VAR_RANGES
		logval("validData", ((int)now.validData));
#endif
		;
		/* merge: semToSelect = 8(48, 41, 48) */
		reached[3][41] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.semToSelect);
		now.semToSelect = 8;
#ifdef VAR_RANGES
		logval("semToSelect", ((int)now.semToSelect));
#endif
		;
		/* merge: .(goto)(48, 45, 48) */
		reached[3][45] = 1;
		;
		/* merge: printf('data: %d   validData: %d   changePos: %d   state: %d\\n',data,validData,changePos,semaphore_state)(48, 46, 48) */
		reached[3][46] = 1;
		Printf("data: %d   validData: %d   changePos: %d   state: %d\n", ((int)now.data), ((int)now.validData), ((int)now.changePos), now.semaphore_state);
		/* merge: .(goto)(0, 49, 48) */
		reached[3][49] = 1;
		;
		_m = 3; goto P999; /* 5 */
	case 30: // STATE 42 - model.pml:186 - [changePos = 1] (0:48:1 - 1)
		IfNotBlocked
		reached[3][42] = 1;
		(trpt+1)->bup.oval = ((int)now.changePos);
		now.changePos = 1;
#ifdef VAR_RANGES
		logval("changePos", ((int)now.changePos));
#endif
		;
		/* merge: .(goto)(48, 45, 48) */
		reached[3][45] = 1;
		;
		/* merge: printf('data: %d   validData: %d   changePos: %d   state: %d\\n',data,validData,changePos,semaphore_state)(48, 46, 48) */
		reached[3][46] = 1;
		Printf("data: %d   validData: %d   changePos: %d   state: %d\n", ((int)now.data), ((int)now.validData), ((int)now.changePos), now.semaphore_state);
		/* merge: .(goto)(0, 49, 48) */
		reached[3][49] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 31: // STATE 43 - model.pml:188 - [(1)] (48:0:0 - 1)
		IfNotBlocked
		reached[3][43] = 1;
		if (!(1))
			continue;
		/* merge: .(goto)(48, 45, 48) */
		reached[3][45] = 1;
		;
		/* merge: printf('data: %d   validData: %d   changePos: %d   state: %d\\n',data,validData,changePos,semaphore_state)(48, 46, 48) */
		reached[3][46] = 1;
		Printf("data: %d   validData: %d   changePos: %d   state: %d\n", ((int)now.data), ((int)now.validData), ((int)now.changePos), now.semaphore_state);
		/* merge: .(goto)(0, 49, 48) */
		reached[3][49] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 32: // STATE 51 - model.pml:193 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[3][51] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC semaphore_fsm */
	case 33: // STATE 1 - model.pml:110 - [semaphore_state = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[2][1] = 1;
		(trpt+1)->bup.oval = now.semaphore_state;
		now.semaphore_state = 0;
#ifdef VAR_RANGES
		logval("semaphore_state", now.semaphore_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 34: // STATE 2 - model.pml:113 - [((semaphore_state==0))] (0:0:0 - 1)
		IfNotBlocked
		reached[2][2] = 1;
		if (!((now.semaphore_state==0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 35: // STATE 3 - model.pml:131 - [((data&&validData))] (37:0:4 - 1)
		IfNotBlocked
		reached[2][3] = 1;
		if (!((((int)now.data)&&((int)now.validData))))
			continue;
		/* merge: printf('Change to SEL_SEM... Selecting semaphore 1...\\n')(37, 4, 37) */
		reached[2][4] = 1;
		Printf("Change to SEL_SEM... Selecting semaphore 1...\n");
		/* merge: validData = 0(37, 5, 37) */
		reached[2][5] = 1;
		(trpt+1)->bup.ovals = grab_ints(4);
		(trpt+1)->bup.ovals[0] = ((int)now.validData);
		now.validData = 0;
#ifdef VAR_RANGES
		logval("validData", ((int)now.validData));
#endif
		;
		/* merge: data = 0(37, 6, 37) */
		reached[2][6] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.data);
		now.data = 0;
#ifdef VAR_RANGES
		logval("data", ((int)now.data));
#endif
		;
		/* merge: semId = semToSelect(37, 7, 37) */
		reached[2][7] = 1;
		(trpt+1)->bup.ovals[2] = ((int)now.semId);
		now.semId = ((int)now.semToSelect);
#ifdef VAR_RANGES
		logval("semId", ((int)now.semId));
#endif
		;
		/* merge: semaphore_state = 1(37, 8, 37) */
		reached[2][8] = 1;
		(trpt+1)->bup.ovals[3] = now.semaphore_state;
		now.semaphore_state = 1;
#ifdef VAR_RANGES
		logval("semaphore_state", now.semaphore_state);
#endif
		;
		/* merge: .(goto)(37, 15, 37) */
		reached[2][15] = 1;
		;
		/* merge: .(goto)(0, 38, 37) */
		reached[2][38] = 1;
		;
		_m = 3; goto P999; /* 7 */
	case 36: // STATE 15 - model.pml:134 - [.(goto)] (0:37:0 - 2)
		IfNotBlocked
		reached[2][15] = 1;
		;
		/* merge: .(goto)(0, 38, 37) */
		reached[2][38] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 37: // STATE 9 - model.pml:132 - [((data&&!(validData)))] (37:0:3 - 1)
		IfNotBlocked
		reached[2][9] = 1;
		if (!((((int)now.data)&& !(((int)now.validData)))))
			continue;
		/* merge: printf('Change to SEL_SEM... Selecting semaphore None...\\n')(37, 10, 37) */
		reached[2][10] = 1;
		Printf("Change to SEL_SEM... Selecting semaphore None...\n");
		/* merge: data = 0(37, 11, 37) */
		reached[2][11] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((int)now.data);
		now.data = 0;
#ifdef VAR_RANGES
		logval("data", ((int)now.data));
#endif
		;
		/* merge: semId = 0(37, 12, 37) */
		reached[2][12] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.semId);
		now.semId = 0;
#ifdef VAR_RANGES
		logval("semId", ((int)now.semId));
#endif
		;
		/* merge: semaphore_state = 1(37, 13, 37) */
		reached[2][13] = 1;
		(trpt+1)->bup.ovals[2] = now.semaphore_state;
		now.semaphore_state = 1;
#ifdef VAR_RANGES
		logval("semaphore_state", now.semaphore_state);
#endif
		;
		/* merge: .(goto)(37, 15, 37) */
		reached[2][15] = 1;
		;
		/* merge: .(goto)(0, 38, 37) */
		reached[2][38] = 1;
		;
		_m = 3; goto P999; /* 6 */
	case 38: // STATE 17 - model.pml:135 - [((semaphore_state==1))] (0:0:0 - 1)
		IfNotBlocked
		reached[2][17] = 1;
		if (!((now.semaphore_state==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 39: // STATE 18 - model.pml:147 - [(((data&&changePos)&&validData))] (37:0:4 - 1)
		IfNotBlocked
		reached[2][18] = 1;
		if (!(((((int)now.data)&&((int)now.changePos))&&((int)now.validData))))
			continue;
		/* merge: printf('Change to SEL_SEM... Selecting semaphore 1...\\n')(37, 19, 37) */
		reached[2][19] = 1;
		Printf("Change to SEL_SEM... Selecting semaphore 1...\n");
		/* merge: validData = 0(37, 20, 37) */
		reached[2][20] = 1;
		(trpt+1)->bup.ovals = grab_ints(4);
		(trpt+1)->bup.ovals[0] = ((int)now.validData);
		now.validData = 0;
#ifdef VAR_RANGES
		logval("validData", ((int)now.validData));
#endif
		;
		/* merge: changePos = 0(37, 21, 37) */
		reached[2][21] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.changePos);
		now.changePos = 0;
#ifdef VAR_RANGES
		logval("changePos", ((int)now.changePos));
#endif
		;
		/* merge: semId = semToSelect(37, 22, 37) */
		reached[2][22] = 1;
		(trpt+1)->bup.ovals[2] = ((int)now.semId);
		now.semId = ((int)now.semToSelect);
#ifdef VAR_RANGES
		logval("semId", ((int)now.semId));
#endif
		;
		/* merge: semaphore_state = 1(37, 23, 37) */
		reached[2][23] = 1;
		(trpt+1)->bup.ovals[3] = now.semaphore_state;
		now.semaphore_state = 1;
#ifdef VAR_RANGES
		logval("semaphore_state", now.semaphore_state);
#endif
		;
		/* merge: .(goto)(37, 35, 37) */
		reached[2][35] = 1;
		;
		/* merge: .(goto)(0, 38, 37) */
		reached[2][38] = 1;
		;
		_m = 3; goto P999; /* 7 */
	case 40: // STATE 35 - model.pml:151 - [.(goto)] (0:37:0 - 3)
		IfNotBlocked
		reached[2][35] = 1;
		;
		/* merge: .(goto)(0, 38, 37) */
		reached[2][38] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 41: // STATE 24 - model.pml:148 - [(((data&&changePos)&&!(validData)))] (37:0:3 - 1)
		IfNotBlocked
		reached[2][24] = 1;
		if (!(((((int)now.data)&&((int)now.changePos))&& !(((int)now.validData)))))
			continue;
		/* merge: printf('Change to SEL_SEM... Selecting semaphore None...\\n')(37, 25, 37) */
		reached[2][25] = 1;
		Printf("Change to SEL_SEM... Selecting semaphore None...\n");
		/* merge: changePos = 0(37, 26, 37) */
		reached[2][26] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((int)now.changePos);
		now.changePos = 0;
#ifdef VAR_RANGES
		logval("changePos", ((int)now.changePos));
#endif
		;
		/* merge: semId = 0(37, 27, 37) */
		reached[2][27] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.semId);
		now.semId = 0;
#ifdef VAR_RANGES
		logval("semId", ((int)now.semId));
#endif
		;
		/* merge: semaphore_state = 1(37, 28, 37) */
		reached[2][28] = 1;
		(trpt+1)->bup.ovals[2] = now.semaphore_state;
		now.semaphore_state = 1;
#ifdef VAR_RANGES
		logval("semaphore_state", now.semaphore_state);
#endif
		;
		/* merge: .(goto)(37, 35, 37) */
		reached[2][35] = 1;
		;
		/* merge: .(goto)(0, 38, 37) */
		reached[2][38] = 1;
		;
		_m = 3; goto P999; /* 6 */
	case 42: // STATE 29 - model.pml:149 - [(!(data))] (37:0:3 - 1)
		IfNotBlocked
		reached[2][29] = 1;
		if (!( !(((int)now.data))))
			continue;
		/* merge: printf('Change to IDLE_SEM... No data available...\\n')(37, 30, 37) */
		reached[2][30] = 1;
		Printf("Change to IDLE_SEM... No data available...\n");
		/* merge: no_data = 0(37, 31, 37) */
		reached[2][31] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((int)no_data);
		no_data = 0;
#ifdef VAR_RANGES
		logval("no_data", ((int)no_data));
#endif
		;
		/* merge: semId = 0(37, 32, 37) */
		reached[2][32] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.semId);
		now.semId = 0;
#ifdef VAR_RANGES
		logval("semId", ((int)now.semId));
#endif
		;
		/* merge: semaphore_state = 0(37, 33, 37) */
		reached[2][33] = 1;
		(trpt+1)->bup.ovals[2] = now.semaphore_state;
		now.semaphore_state = 0;
#ifdef VAR_RANGES
		logval("semaphore_state", now.semaphore_state);
#endif
		;
		/* merge: .(goto)(37, 35, 37) */
		reached[2][35] = 1;
		;
		/* merge: .(goto)(0, 38, 37) */
		reached[2][38] = 1;
		;
		_m = 3; goto P999; /* 6 */
	case 43: // STATE 40 - model.pml:154 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[2][40] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC IMU_fsm */
	case 44: // STATE 1 - model.pml:73 - [IMU_state = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[1][1] = 1;
		(trpt+1)->bup.oval = now.IMU_state;
		now.IMU_state = 0;
#ifdef VAR_RANGES
		logval("IMU_state", now.IMU_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 45: // STATE 2 - model.pml:76 - [((IMU_state==0))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][2] = 1;
		if (!((now.IMU_state==0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 46: // STATE 3 - model.pml:78 - [(timer_IMU_end)] (28:0:2 - 1)
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
	case 47: // STATE 10 - model.pml:81 - [((IMU_state==1))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][10] = 1;
		if (!((now.IMU_state==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 48: // STATE 11 - model.pml:83 - [((counter<(10-1)))] (28:0:2 - 1)
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
	case 49: // STATE 18 - model.pml:86 - [.(goto)] (0:28:0 - 2)
		IfNotBlocked
		reached[1][18] = 1;
		;
		/* merge: .(goto)(0, 29, 28) */
		reached[1][29] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 50: // STATE 14 - model.pml:84 - [((counter>=(10-1)))] (28:0:2 - 1)
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
	case 51: // STATE 20 - model.pml:87 - [((IMU_state==2))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][20] = 1;
		if (!((now.IMU_state==2)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 52: // STATE 21 - model.pml:89 - [(1)] (28:0:2 - 1)
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
	case 53: // STATE 31 - model.pml:94 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[1][31] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC ultrasonic_fsm */
	case 54: // STATE 1 - model.pml:40 - [ultrasonic_state = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1] = 1;
		(trpt+1)->bup.oval = now.ultrasonic_state;
		now.ultrasonic_state = 0;
#ifdef VAR_RANGES
		logval("ultrasonic_state", now.ultrasonic_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 55: // STATE 2 - model.pml:43 - [((ultrasonic_state==0))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][2] = 1;
		if (!((now.ultrasonic_state==0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 56: // STATE 3 - model.pml:45 - [(timer_sample_end)] (29:0:4 - 1)
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
	case 57: // STATE 12 - model.pml:48 - [((ultrasonic_state==1))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][12] = 1;
		if (!((now.ultrasonic_state==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 58: // STATE 13 - model.pml:50 - [(timer_trigger_end)] (29:0:3 - 1)
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
	case 59: // STATE 21 - model.pml:53 - [((ultrasonic_state==2))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][21] = 1;
		if (!((now.ultrasonic_state==2)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 60: // STATE 22 - model.pml:55 - [(echo_received)] (29:0:2 - 1)
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
	case 61: // STATE 32 - model.pml:60 - [-end-] (0:0:0 - 1)
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

