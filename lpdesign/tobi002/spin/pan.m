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

		 /* CLAIM msg_spec */
	case 3: // STATE 1 - _spin_nvr.tmp:14 - [(!((!((msg_state==2))||(msg==5))))] (6:0:0 - 1)
		
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
		if (!( !(( !((now.msg_state==2))||(((int)now.msg)==5)))))
			continue;
		/* merge: assert(!(!((!((msg_state==2))||(msg==5)))))(0, 2, 6) */
		reached[5][2] = 1;
		spin_assert( !( !(( !((now.msg_state==2))||(((int)now.msg)==5)))), " !( !(( !((msg_state==2))||(msg==5))))", II, tt, t);
		/* merge: .(goto)(0, 7, 6) */
		reached[5][7] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 4: // STATE 10 - _spin_nvr.tmp:19 - [-end-] (0:0:0 - 1)
		
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
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* CLAIM semaphore_spec */
	case 5: // STATE 1 - _spin_nvr.tmp:3 - [((!(!(((data&&validData)&&(semaphore_state==0))))&&!((semId!=0))))] (0:0:0 - 1)
		
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
		if (!(( !( !(((((int)now.data)&&((int)now.validData))&&(now.semaphore_state==0))))&& !((((int)now.semId)!=0)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 6: // STATE 8 - _spin_nvr.tmp:8 - [(!((semId!=0)))] (0:0:0 - 1)
		
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
		if (!( !((((int)now.semId)!=0))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 7: // STATE 13 - _spin_nvr.tmp:10 - [-end-] (0:0:0 - 1)
		
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
	case 8: // STATE 2 - model_process.pml:147 - [data = 1] (0:28:1 - 1)
		IfNotBlocked
		reached[3][2] = 1;
		(trpt+1)->bup.oval = ((int)now.data);
		now.data = 1;
#ifdef VAR_RANGES
		logval("data", ((int)now.data));
#endif
		;
		/* merge: .(goto)(28, 24, 28) */
		reached[3][24] = 1;
		;
		/* merge: printf('data: %d   validData: %d   changePos: %d   state: %d\\n',data,validData,changePos,semaphore_state)(28, 25, 28) */
		reached[3][25] = 1;
		Printf("data: %d   validData: %d   changePos: %d   state: %d\n", ((int)now.data), ((int)now.validData), ((int)now.changePos), now.semaphore_state);
		/* merge: printf('msg_state: %d   sem_light: %d   moving: %d  typeZone: %d \\n',msg_state,sem_light,moving,typeZone)(28, 26, 28) */
		reached[3][26] = 1;
		Printf("msg_state: %d   sem_light: %d   moving: %d  typeZone: %d \n", now.msg_state, ((int)now.sem_light), ((int)now.moving), ((int)now.typeZone));
		/* merge: .(goto)(0, 29, 28) */
		reached[3][29] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 9: // STATE 3 - model_process.pml:148 - [(data)] (28:0:1 - 1)
		IfNotBlocked
		reached[3][3] = 1;
		if (!(((int)now.data)))
			continue;
		/* merge: validData = 1(28, 4, 28) */
		reached[3][4] = 1;
		(trpt+1)->bup.oval = ((int)now.validData);
		now.validData = 1;
#ifdef VAR_RANGES
		logval("validData", ((int)now.validData));
#endif
		;
		/* merge: .(goto)(28, 24, 28) */
		reached[3][24] = 1;
		;
		/* merge: printf('data: %d   validData: %d   changePos: %d   state: %d\\n',data,validData,changePos,semaphore_state)(28, 25, 28) */
		reached[3][25] = 1;
		Printf("data: %d   validData: %d   changePos: %d   state: %d\n", ((int)now.data), ((int)now.validData), ((int)now.changePos), now.semaphore_state);
		/* merge: printf('msg_state: %d   sem_light: %d   moving: %d  typeZone: %d \\n',msg_state,sem_light,moving,typeZone)(28, 26, 28) */
		reached[3][26] = 1;
		Printf("msg_state: %d   sem_light: %d   moving: %d  typeZone: %d \n", now.msg_state, ((int)now.sem_light), ((int)now.moving), ((int)now.typeZone));
		/* merge: .(goto)(0, 29, 28) */
		reached[3][29] = 1;
		;
		_m = 3; goto P999; /* 5 */
	case 10: // STATE 5 - model_process.pml:149 - [changePos = 1] (0:28:3 - 1)
		IfNotBlocked
		reached[3][5] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((int)now.changePos);
		now.changePos = 1;
#ifdef VAR_RANGES
		logval("changePos", ((int)now.changePos));
#endif
		;
		/* merge: changePos_typeZone = 1(28, 6, 28) */
		reached[3][6] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.changePos_typeZone);
		now.changePos_typeZone = 1;
#ifdef VAR_RANGES
		logval("changePos_typeZone", ((int)now.changePos_typeZone));
#endif
		;
		/* merge: moving = 1(28, 7, 28) */
		reached[3][7] = 1;
		(trpt+1)->bup.ovals[2] = ((int)now.moving);
		now.moving = 1;
#ifdef VAR_RANGES
		logval("moving", ((int)now.moving));
#endif
		;
		/* merge: .(goto)(28, 24, 28) */
		reached[3][24] = 1;
		;
		/* merge: printf('data: %d   validData: %d   changePos: %d   state: %d\\n',data,validData,changePos,semaphore_state)(28, 25, 28) */
		reached[3][25] = 1;
		Printf("data: %d   validData: %d   changePos: %d   state: %d\n", ((int)now.data), ((int)now.validData), ((int)now.changePos), now.semaphore_state);
		/* merge: printf('msg_state: %d   sem_light: %d   moving: %d  typeZone: %d \\n',msg_state,sem_light,moving,typeZone)(28, 26, 28) */
		reached[3][26] = 1;
		Printf("msg_state: %d   sem_light: %d   moving: %d  typeZone: %d \n", now.msg_state, ((int)now.sem_light), ((int)now.moving), ((int)now.typeZone));
		/* merge: .(goto)(0, 29, 28) */
		reached[3][29] = 1;
		;
		_m = 3; goto P999; /* 6 */
	case 11: // STATE 8 - model_process.pml:152 - [((semId&&sem_read))] (28:0:2 - 1)
		IfNotBlocked
		reached[3][8] = 1;
		if (!((((int)now.semId)&&((int)now.sem_read))))
			continue;
		/* merge: sem_light = 1(28, 9, 28) */
		reached[3][9] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.sem_light);
		now.sem_light = 1;
#ifdef VAR_RANGES
		logval("sem_light", ((int)now.sem_light));
#endif
		;
		/* merge: sem_read = 0(28, 10, 28) */
		reached[3][10] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.sem_read);
		now.sem_read = 0;
#ifdef VAR_RANGES
		logval("sem_read", ((int)now.sem_read));
#endif
		;
		/* merge: .(goto)(28, 24, 28) */
		reached[3][24] = 1;
		;
		/* merge: printf('data: %d   validData: %d   changePos: %d   state: %d\\n',data,validData,changePos,semaphore_state)(28, 25, 28) */
		reached[3][25] = 1;
		Printf("data: %d   validData: %d   changePos: %d   state: %d\n", ((int)now.data), ((int)now.validData), ((int)now.changePos), now.semaphore_state);
		/* merge: printf('msg_state: %d   sem_light: %d   moving: %d  typeZone: %d \\n',msg_state,sem_light,moving,typeZone)(28, 26, 28) */
		reached[3][26] = 1;
		Printf("msg_state: %d   sem_light: %d   moving: %d  typeZone: %d \n", now.msg_state, ((int)now.sem_light), ((int)now.moving), ((int)now.typeZone));
		/* merge: .(goto)(0, 29, 28) */
		reached[3][29] = 1;
		;
		_m = 3; goto P999; /* 6 */
	case 12: // STATE 11 - model_process.pml:153 - [((semId&&sem_read))] (28:0:2 - 1)
		IfNotBlocked
		reached[3][11] = 1;
		if (!((((int)now.semId)&&((int)now.sem_read))))
			continue;
		/* merge: sem_light = 2(28, 12, 28) */
		reached[3][12] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.sem_light);
		now.sem_light = 2;
#ifdef VAR_RANGES
		logval("sem_light", ((int)now.sem_light));
#endif
		;
		/* merge: sem_read = 0(28, 13, 28) */
		reached[3][13] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.sem_read);
		now.sem_read = 0;
#ifdef VAR_RANGES
		logval("sem_read", ((int)now.sem_read));
#endif
		;
		/* merge: .(goto)(28, 24, 28) */
		reached[3][24] = 1;
		;
		/* merge: printf('data: %d   validData: %d   changePos: %d   state: %d\\n',data,validData,changePos,semaphore_state)(28, 25, 28) */
		reached[3][25] = 1;
		Printf("data: %d   validData: %d   changePos: %d   state: %d\n", ((int)now.data), ((int)now.validData), ((int)now.changePos), now.semaphore_state);
		/* merge: printf('msg_state: %d   sem_light: %d   moving: %d  typeZone: %d \\n',msg_state,sem_light,moving,typeZone)(28, 26, 28) */
		reached[3][26] = 1;
		Printf("msg_state: %d   sem_light: %d   moving: %d  typeZone: %d \n", now.msg_state, ((int)now.sem_light), ((int)now.moving), ((int)now.typeZone));
		/* merge: .(goto)(0, 29, 28) */
		reached[3][29] = 1;
		;
		_m = 3; goto P999; /* 6 */
	case 13: // STATE 14 - model_process.pml:154 - [((semId&&sem_read))] (28:0:2 - 1)
		IfNotBlocked
		reached[3][14] = 1;
		if (!((((int)now.semId)&&((int)now.sem_read))))
			continue;
		/* merge: sem_light = 3(28, 15, 28) */
		reached[3][15] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.sem_light);
		now.sem_light = 3;
#ifdef VAR_RANGES
		logval("sem_light", ((int)now.sem_light));
#endif
		;
		/* merge: sem_read = 0(28, 16, 28) */
		reached[3][16] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.sem_read);
		now.sem_read = 0;
#ifdef VAR_RANGES
		logval("sem_read", ((int)now.sem_read));
#endif
		;
		/* merge: .(goto)(28, 24, 28) */
		reached[3][24] = 1;
		;
		/* merge: printf('data: %d   validData: %d   changePos: %d   state: %d\\n',data,validData,changePos,semaphore_state)(28, 25, 28) */
		reached[3][25] = 1;
		Printf("data: %d   validData: %d   changePos: %d   state: %d\n", ((int)now.data), ((int)now.validData), ((int)now.changePos), now.semaphore_state);
		/* merge: printf('msg_state: %d   sem_light: %d   moving: %d  typeZone: %d \\n',msg_state,sem_light,moving,typeZone)(28, 26, 28) */
		reached[3][26] = 1;
		Printf("msg_state: %d   sem_light: %d   moving: %d  typeZone: %d \n", now.msg_state, ((int)now.sem_light), ((int)now.moving), ((int)now.typeZone));
		/* merge: .(goto)(0, 29, 28) */
		reached[3][29] = 1;
		;
		_m = 3; goto P999; /* 6 */
	case 14: // STATE 17 - model_process.pml:155 - [((!(semId)&&sem_read))] (28:0:2 - 1)
		IfNotBlocked
		reached[3][17] = 1;
		if (!(( !(((int)now.semId))&&((int)now.sem_read))))
			continue;
		/* merge: sem_light = 0(28, 18, 28) */
		reached[3][18] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.sem_light);
		now.sem_light = 0;
#ifdef VAR_RANGES
		logval("sem_light", ((int)now.sem_light));
#endif
		;
		/* merge: sem_read = 0(28, 19, 28) */
		reached[3][19] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.sem_read);
		now.sem_read = 0;
#ifdef VAR_RANGES
		logval("sem_read", ((int)now.sem_read));
#endif
		;
		/* merge: .(goto)(28, 24, 28) */
		reached[3][24] = 1;
		;
		/* merge: printf('data: %d   validData: %d   changePos: %d   state: %d\\n',data,validData,changePos,semaphore_state)(28, 25, 28) */
		reached[3][25] = 1;
		Printf("data: %d   validData: %d   changePos: %d   state: %d\n", ((int)now.data), ((int)now.validData), ((int)now.changePos), now.semaphore_state);
		/* merge: printf('msg_state: %d   sem_light: %d   moving: %d  typeZone: %d \\n',msg_state,sem_light,moving,typeZone)(28, 26, 28) */
		reached[3][26] = 1;
		Printf("msg_state: %d   sem_light: %d   moving: %d  typeZone: %d \n", now.msg_state, ((int)now.sem_light), ((int)now.moving), ((int)now.typeZone));
		/* merge: .(goto)(0, 29, 28) */
		reached[3][29] = 1;
		;
		_m = 3; goto P999; /* 6 */
	case 15: // STATE 20 - model_process.pml:156 - [moving = 1] (0:28:1 - 1)
		IfNotBlocked
		reached[3][20] = 1;
		(trpt+1)->bup.oval = ((int)now.moving);
		now.moving = 1;
#ifdef VAR_RANGES
		logval("moving", ((int)now.moving));
#endif
		;
		/* merge: .(goto)(28, 24, 28) */
		reached[3][24] = 1;
		;
		/* merge: printf('data: %d   validData: %d   changePos: %d   state: %d\\n',data,validData,changePos,semaphore_state)(28, 25, 28) */
		reached[3][25] = 1;
		Printf("data: %d   validData: %d   changePos: %d   state: %d\n", ((int)now.data), ((int)now.validData), ((int)now.changePos), now.semaphore_state);
		/* merge: printf('msg_state: %d   sem_light: %d   moving: %d  typeZone: %d \\n',msg_state,sem_light,moving,typeZone)(28, 26, 28) */
		reached[3][26] = 1;
		Printf("msg_state: %d   sem_light: %d   moving: %d  typeZone: %d \n", now.msg_state, ((int)now.sem_light), ((int)now.moving), ((int)now.typeZone));
		/* merge: .(goto)(0, 29, 28) */
		reached[3][29] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 16: // STATE 21 - model_process.pml:157 - [moving = 0] (0:28:1 - 1)
		IfNotBlocked
		reached[3][21] = 1;
		(trpt+1)->bup.oval = ((int)now.moving);
		now.moving = 0;
#ifdef VAR_RANGES
		logval("moving", ((int)now.moving));
#endif
		;
		/* merge: .(goto)(28, 24, 28) */
		reached[3][24] = 1;
		;
		/* merge: printf('data: %d   validData: %d   changePos: %d   state: %d\\n',data,validData,changePos,semaphore_state)(28, 25, 28) */
		reached[3][25] = 1;
		Printf("data: %d   validData: %d   changePos: %d   state: %d\n", ((int)now.data), ((int)now.validData), ((int)now.changePos), now.semaphore_state);
		/* merge: printf('msg_state: %d   sem_light: %d   moving: %d  typeZone: %d \\n',msg_state,sem_light,moving,typeZone)(28, 26, 28) */
		reached[3][26] = 1;
		Printf("msg_state: %d   sem_light: %d   moving: %d  typeZone: %d \n", now.msg_state, ((int)now.sem_light), ((int)now.moving), ((int)now.typeZone));
		/* merge: .(goto)(0, 29, 28) */
		reached[3][29] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 17: // STATE 22 - model_process.pml:158 - [(1)] (28:0:0 - 1)
		IfNotBlocked
		reached[3][22] = 1;
		if (!(1))
			continue;
		/* merge: .(goto)(28, 24, 28) */
		reached[3][24] = 1;
		;
		/* merge: printf('data: %d   validData: %d   changePos: %d   state: %d\\n',data,validData,changePos,semaphore_state)(28, 25, 28) */
		reached[3][25] = 1;
		Printf("data: %d   validData: %d   changePos: %d   state: %d\n", ((int)now.data), ((int)now.validData), ((int)now.changePos), now.semaphore_state);
		/* merge: printf('msg_state: %d   sem_light: %d   moving: %d  typeZone: %d \\n',msg_state,sem_light,moving,typeZone)(28, 26, 28) */
		reached[3][26] = 1;
		Printf("msg_state: %d   sem_light: %d   moving: %d  typeZone: %d \n", now.msg_state, ((int)now.sem_light), ((int)now.moving), ((int)now.typeZone));
		/* merge: .(goto)(0, 29, 28) */
		reached[3][29] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 18: // STATE 25 - model_process.pml:160 - [printf('data: %d   validData: %d   changePos: %d   state: %d\\n',data,validData,changePos,semaphore_state)] (0:28:0 - 11)
		IfNotBlocked
		reached[3][25] = 1;
		Printf("data: %d   validData: %d   changePos: %d   state: %d\n", ((int)now.data), ((int)now.validData), ((int)now.changePos), now.semaphore_state);
		/* merge: printf('msg_state: %d   sem_light: %d   moving: %d  typeZone: %d \\n',msg_state,sem_light,moving,typeZone)(28, 26, 28) */
		reached[3][26] = 1;
		Printf("msg_state: %d   sem_light: %d   moving: %d  typeZone: %d \n", now.msg_state, ((int)now.sem_light), ((int)now.moving), ((int)now.typeZone));
		/* merge: .(goto)(0, 29, 28) */
		reached[3][29] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 19: // STATE 31 - model_process.pml:164 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[3][31] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC msg_fsm */
	case 20: // STATE 1 - model_process.pml:106 - [msg_state = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[2][1] = 1;
		(trpt+1)->bup.oval = now.msg_state;
		now.msg_state = 0;
#ifdef VAR_RANGES
		logval("msg_state", now.msg_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 21: // STATE 2 - model_process.pml:109 - [((msg_state==0))] (0:0:0 - 1)
		IfNotBlocked
		reached[2][2] = 1;
		if (!((now.msg_state==0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 22: // STATE 3 - model_process.pml:111 - [(((sem_light==0)&&(typeZone==0)))] (56:0:2 - 1)
		IfNotBlocked
		reached[2][3] = 1;
		if (!(((((int)now.sem_light)==0)&&(((int)now.typeZone)==0))))
			continue;
		/* merge: msg = 0(56, 4, 56) */
		reached[2][4] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.msg);
		now.msg = 0;
#ifdef VAR_RANGES
		logval("msg", ((int)now.msg));
#endif
		;
		/* merge: sem_read = 1(56, 5, 56) */
		reached[2][5] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.sem_read);
		now.sem_read = 1;
#ifdef VAR_RANGES
		logval("sem_read", ((int)now.sem_read));
#endif
		;
		/* merge: .(goto)(56, 22, 56) */
		reached[2][22] = 1;
		;
		/* merge: .(goto)(0, 57, 56) */
		reached[2][57] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 23: // STATE 22 - model_process.pml:118 - [.(goto)] (0:56:0 - 6)
		IfNotBlocked
		reached[2][22] = 1;
		;
		/* merge: .(goto)(0, 57, 56) */
		reached[2][57] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 24: // STATE 6 - model_process.pml:112 - [(((sem_light==1)&&(typeZone==0)))] (56:0:2 - 1)
		IfNotBlocked
		reached[2][6] = 1;
		if (!(((((int)now.sem_light)==1)&&(((int)now.typeZone)==0))))
			continue;
		/* merge: msg = 2(56, 7, 56) */
		reached[2][7] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.msg);
		now.msg = 2;
#ifdef VAR_RANGES
		logval("msg", ((int)now.msg));
#endif
		;
		/* merge: sem_read = 1(56, 8, 56) */
		reached[2][8] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.sem_read);
		now.sem_read = 1;
#ifdef VAR_RANGES
		logval("sem_read", ((int)now.sem_read));
#endif
		;
		/* merge: .(goto)(56, 22, 56) */
		reached[2][22] = 1;
		;
		/* merge: .(goto)(0, 57, 56) */
		reached[2][57] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 25: // STATE 9 - model_process.pml:113 - [(((sem_light==2)&&(typeZone==0)))] (56:0:2 - 1)
		IfNotBlocked
		reached[2][9] = 1;
		if (!(((((int)now.sem_light)==2)&&(((int)now.typeZone)==0))))
			continue;
		/* merge: msg = 2(56, 10, 56) */
		reached[2][10] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.msg);
		now.msg = 2;
#ifdef VAR_RANGES
		logval("msg", ((int)now.msg));
#endif
		;
		/* merge: sem_read = 1(56, 11, 56) */
		reached[2][11] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.sem_read);
		now.sem_read = 1;
#ifdef VAR_RANGES
		logval("sem_read", ((int)now.sem_read));
#endif
		;
		/* merge: .(goto)(56, 22, 56) */
		reached[2][22] = 1;
		;
		/* merge: .(goto)(0, 57, 56) */
		reached[2][57] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 26: // STATE 12 - model_process.pml:114 - [(((sem_light==3)&&(typeZone==0)))] (56:0:2 - 1)
		IfNotBlocked
		reached[2][12] = 1;
		if (!(((((int)now.sem_light)==3)&&(((int)now.typeZone)==0))))
			continue;
		/* merge: msg = 1(56, 13, 56) */
		reached[2][13] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.msg);
		now.msg = 1;
#ifdef VAR_RANGES
		logval("msg", ((int)now.msg));
#endif
		;
		/* merge: sem_read = 1(56, 14, 56) */
		reached[2][14] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.sem_read);
		now.sem_read = 1;
#ifdef VAR_RANGES
		logval("sem_read", ((int)now.sem_read));
#endif
		;
		/* merge: .(goto)(56, 22, 56) */
		reached[2][22] = 1;
		;
		/* merge: .(goto)(0, 57, 56) */
		reached[2][57] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 27: // STATE 15 - model_process.pml:115 - [((typeZone==1))] (56:0:2 - 1)
		IfNotBlocked
		reached[2][15] = 1;
		if (!((((int)now.typeZone)==1)))
			continue;
		/* merge: msg = 0(56, 16, 56) */
		reached[2][16] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.msg);
		now.msg = 0;
#ifdef VAR_RANGES
		logval("msg", ((int)now.msg));
#endif
		;
		/* merge: msg_state = 1(56, 17, 56) */
		reached[2][17] = 1;
		(trpt+1)->bup.ovals[1] = now.msg_state;
		now.msg_state = 1;
#ifdef VAR_RANGES
		logval("msg_state", now.msg_state);
#endif
		;
		/* merge: .(goto)(56, 22, 56) */
		reached[2][22] = 1;
		;
		/* merge: .(goto)(0, 57, 56) */
		reached[2][57] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 28: // STATE 18 - model_process.pml:116 - [((typeZone==2))] (56:0:2 - 1)
		IfNotBlocked
		reached[2][18] = 1;
		if (!((((int)now.typeZone)==2)))
			continue;
		/* merge: msg = 5(56, 19, 56) */
		reached[2][19] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.msg);
		now.msg = 5;
#ifdef VAR_RANGES
		logval("msg", ((int)now.msg));
#endif
		;
		/* merge: msg_state = 2(56, 20, 56) */
		reached[2][20] = 1;
		(trpt+1)->bup.ovals[1] = now.msg_state;
		now.msg_state = 2;
#ifdef VAR_RANGES
		logval("msg_state", now.msg_state);
#endif
		;
		/* merge: .(goto)(56, 22, 56) */
		reached[2][22] = 1;
		;
		/* merge: .(goto)(0, 57, 56) */
		reached[2][57] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 29: // STATE 24 - model_process.pml:119 - [((msg_state==1))] (0:0:0 - 1)
		IfNotBlocked
		reached[2][24] = 1;
		if (!((now.msg_state==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 30: // STATE 25 - model_process.pml:121 - [((((sem_light==2)&&(typeZone==1))&&moving))] (56:0:2 - 1)
		IfNotBlocked
		reached[2][25] = 1;
		if (!((((((int)now.sem_light)==2)&&(((int)now.typeZone)==1))&&((int)now.moving))))
			continue;
		/* merge: msg = 3(56, 26, 56) */
		reached[2][26] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.msg);
		now.msg = 3;
#ifdef VAR_RANGES
		logval("msg", ((int)now.msg));
#endif
		;
		/* merge: sem_read = 1(56, 27, 56) */
		reached[2][27] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.sem_read);
		now.sem_read = 1;
#ifdef VAR_RANGES
		logval("sem_read", ((int)now.sem_read));
#endif
		;
		/* merge: .(goto)(56, 44, 56) */
		reached[2][44] = 1;
		;
		/* merge: .(goto)(0, 57, 56) */
		reached[2][57] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 31: // STATE 44 - model_process.pml:128 - [.(goto)] (0:56:0 - 6)
		IfNotBlocked
		reached[2][44] = 1;
		;
		/* merge: .(goto)(0, 57, 56) */
		reached[2][57] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 32: // STATE 28 - model_process.pml:122 - [((((sem_light==1)&&(typeZone==1))&&moving))] (56:0:2 - 1)
		IfNotBlocked
		reached[2][28] = 1;
		if (!((((((int)now.sem_light)==1)&&(((int)now.typeZone)==1))&&((int)now.moving))))
			continue;
		/* merge: msg = 4(56, 29, 56) */
		reached[2][29] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.msg);
		now.msg = 4;
#ifdef VAR_RANGES
		logval("msg", ((int)now.msg));
#endif
		;
		/* merge: sem_read = 1(56, 30, 56) */
		reached[2][30] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.sem_read);
		now.sem_read = 1;
#ifdef VAR_RANGES
		logval("sem_read", ((int)now.sem_read));
#endif
		;
		/* merge: .(goto)(56, 44, 56) */
		reached[2][44] = 1;
		;
		/* merge: .(goto)(0, 57, 56) */
		reached[2][57] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 33: // STATE 31 - model_process.pml:123 - [((typeZone==2))] (56:0:2 - 1)
		IfNotBlocked
		reached[2][31] = 1;
		if (!((((int)now.typeZone)==2)))
			continue;
		/* merge: msg = 5(56, 32, 56) */
		reached[2][32] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.msg);
		now.msg = 5;
#ifdef VAR_RANGES
		logval("msg", ((int)now.msg));
#endif
		;
		/* merge: msg_state = 2(56, 33, 56) */
		reached[2][33] = 1;
		(trpt+1)->bup.ovals[1] = now.msg_state;
		now.msg_state = 2;
#ifdef VAR_RANGES
		logval("msg_state", now.msg_state);
#endif
		;
		/* merge: .(goto)(56, 44, 56) */
		reached[2][44] = 1;
		;
		/* merge: .(goto)(0, 57, 56) */
		reached[2][57] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 34: // STATE 34 - model_process.pml:124 - [((typeZone==0))] (56:0:2 - 1)
		IfNotBlocked
		reached[2][34] = 1;
		if (!((((int)now.typeZone)==0)))
			continue;
		/* merge: msg = 0(56, 35, 56) */
		reached[2][35] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.msg);
		now.msg = 0;
#ifdef VAR_RANGES
		logval("msg", ((int)now.msg));
#endif
		;
		/* merge: msg_state = 0(56, 36, 56) */
		reached[2][36] = 1;
		(trpt+1)->bup.ovals[1] = now.msg_state;
		now.msg_state = 0;
#ifdef VAR_RANGES
		logval("msg_state", now.msg_state);
#endif
		;
		/* merge: .(goto)(56, 44, 56) */
		reached[2][44] = 1;
		;
		/* merge: .(goto)(0, 57, 56) */
		reached[2][57] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 35: // STATE 37 - model_process.pml:125 - [(((!(moving)&&(typeZone==1))&&(sem_light!=0)))] (56:0:2 - 1)
		IfNotBlocked
		reached[2][37] = 1;
		if (!((( !(((int)now.moving))&&(((int)now.typeZone)==1))&&(((int)now.sem_light)!=0))))
			continue;
		/* merge: msg = 5(56, 38, 56) */
		reached[2][38] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.msg);
		now.msg = 5;
#ifdef VAR_RANGES
		logval("msg", ((int)now.msg));
#endif
		;
		/* merge: sem_read = 1(56, 39, 56) */
		reached[2][39] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.sem_read);
		now.sem_read = 1;
#ifdef VAR_RANGES
		logval("sem_read", ((int)now.sem_read));
#endif
		;
		/* merge: .(goto)(56, 44, 56) */
		reached[2][44] = 1;
		;
		/* merge: .(goto)(0, 57, 56) */
		reached[2][57] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 36: // STATE 40 - model_process.pml:126 - [(((sem_light==0)&&(typeZone==1)))] (56:0:2 - 1)
		IfNotBlocked
		reached[2][40] = 1;
		if (!(((((int)now.sem_light)==0)&&(((int)now.typeZone)==1))))
			continue;
		/* merge: msg = 0(56, 41, 56) */
		reached[2][41] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.msg);
		now.msg = 0;
#ifdef VAR_RANGES
		logval("msg", ((int)now.msg));
#endif
		;
		/* merge: sem_read = 1(56, 42, 56) */
		reached[2][42] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.sem_read);
		now.sem_read = 1;
#ifdef VAR_RANGES
		logval("sem_read", ((int)now.sem_read));
#endif
		;
		/* merge: .(goto)(56, 44, 56) */
		reached[2][44] = 1;
		;
		/* merge: .(goto)(0, 57, 56) */
		reached[2][57] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 37: // STATE 46 - model_process.pml:129 - [((msg_state==2))] (0:0:0 - 1)
		IfNotBlocked
		reached[2][46] = 1;
		if (!((now.msg_state==2)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 38: // STATE 47 - model_process.pml:131 - [((typeZone==0))] (56:0:2 - 1)
		IfNotBlocked
		reached[2][47] = 1;
		if (!((((int)now.typeZone)==0)))
			continue;
		/* merge: msg = 6(56, 48, 56) */
		reached[2][48] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.msg);
		now.msg = 6;
#ifdef VAR_RANGES
		logval("msg", ((int)now.msg));
#endif
		;
		/* merge: msg_state = 0(56, 49, 56) */
		reached[2][49] = 1;
		(trpt+1)->bup.ovals[1] = now.msg_state;
		now.msg_state = 0;
#ifdef VAR_RANGES
		logval("msg_state", now.msg_state);
#endif
		;
		/* merge: .(goto)(56, 54, 56) */
		reached[2][54] = 1;
		;
		/* merge: .(goto)(0, 57, 56) */
		reached[2][57] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 39: // STATE 54 - model_process.pml:134 - [.(goto)] (0:56:0 - 2)
		IfNotBlocked
		reached[2][54] = 1;
		;
		/* merge: .(goto)(0, 57, 56) */
		reached[2][57] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 40: // STATE 50 - model_process.pml:132 - [((typeZone==1))] (56:0:2 - 1)
		IfNotBlocked
		reached[2][50] = 1;
		if (!((((int)now.typeZone)==1)))
			continue;
		/* merge: msg = 6(56, 51, 56) */
		reached[2][51] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.msg);
		now.msg = 6;
#ifdef VAR_RANGES
		logval("msg", ((int)now.msg));
#endif
		;
		/* merge: msg_state = 1(56, 52, 56) */
		reached[2][52] = 1;
		(trpt+1)->bup.ovals[1] = now.msg_state;
		now.msg_state = 1;
#ifdef VAR_RANGES
		logval("msg_state", now.msg_state);
#endif
		;
		/* merge: .(goto)(56, 54, 56) */
		reached[2][54] = 1;
		;
		/* merge: .(goto)(0, 57, 56) */
		reached[2][57] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 41: // STATE 59 - model_process.pml:137 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[2][59] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC typeZone_fsm */
	case 42: // STATE 1 - model_process.pml:80 - [typeZone_state = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[1][1] = 1;
		(trpt+1)->bup.oval = now.typeZone_state;
		now.typeZone_state = 0;
#ifdef VAR_RANGES
		logval("typeZone_state", now.typeZone_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 43: // STATE 2 - model_process.pml:83 - [((typeZone_state==0))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][2] = 1;
		if (!((now.typeZone_state==0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 44: // STATE 3 - model_process.pml:85 - [(changePos_typeZone)] (18:0:2 - 1)
		IfNotBlocked
		reached[1][3] = 1;
		if (!(((int)now.changePos_typeZone)))
			continue;
		/* merge: printf('Selecting ACERA...\\n')(18, 4, 18) */
		reached[1][4] = 1;
		Printf("Selecting ACERA...\n");
		/* merge: changePos_typeZone = 0(18, 5, 18) */
		reached[1][5] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.changePos_typeZone);
		now.changePos_typeZone = 0;
#ifdef VAR_RANGES
		logval("changePos_typeZone", ((int)now.changePos_typeZone));
#endif
		;
		/* merge: typeZone = 0(18, 6, 18) */
		reached[1][6] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.typeZone);
		now.typeZone = 0;
#ifdef VAR_RANGES
		logval("typeZone", ((int)now.typeZone));
#endif
		;
		/* merge: .(goto)(18, 16, 18) */
		reached[1][16] = 1;
		;
		/* merge: .(goto)(0, 19, 18) */
		reached[1][19] = 1;
		;
		_m = 3; goto P999; /* 5 */
	case 45: // STATE 16 - model_process.pml:89 - [.(goto)] (0:18:0 - 3)
		IfNotBlocked
		reached[1][16] = 1;
		;
		/* merge: .(goto)(0, 19, 18) */
		reached[1][19] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 46: // STATE 7 - model_process.pml:86 - [(changePos_typeZone)] (18:0:2 - 1)
		IfNotBlocked
		reached[1][7] = 1;
		if (!(((int)now.changePos_typeZone)))
			continue;
		/* merge: printf('Selecting PASO...\\n')(18, 8, 18) */
		reached[1][8] = 1;
		Printf("Selecting PASO...\n");
		/* merge: changePos_typeZone = 0(18, 9, 18) */
		reached[1][9] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.changePos_typeZone);
		now.changePos_typeZone = 0;
#ifdef VAR_RANGES
		logval("changePos_typeZone", ((int)now.changePos_typeZone));
#endif
		;
		/* merge: typeZone = 1(18, 10, 18) */
		reached[1][10] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.typeZone);
		now.typeZone = 1;
#ifdef VAR_RANGES
		logval("typeZone", ((int)now.typeZone));
#endif
		;
		/* merge: .(goto)(18, 16, 18) */
		reached[1][16] = 1;
		;
		/* merge: .(goto)(0, 19, 18) */
		reached[1][19] = 1;
		;
		_m = 3; goto P999; /* 5 */
	case 47: // STATE 11 - model_process.pml:87 - [(changePos_typeZone)] (18:0:2 - 1)
		IfNotBlocked
		reached[1][11] = 1;
		if (!(((int)now.changePos_typeZone)))
			continue;
		/* merge: printf('Selecting CARRETERA...\\n')(18, 12, 18) */
		reached[1][12] = 1;
		Printf("Selecting CARRETERA...\n");
		/* merge: changePos_typeZone = 0(18, 13, 18) */
		reached[1][13] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.changePos_typeZone);
		now.changePos_typeZone = 0;
#ifdef VAR_RANGES
		logval("changePos_typeZone", ((int)now.changePos_typeZone));
#endif
		;
		/* merge: typeZone = 2(18, 14, 18) */
		reached[1][14] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.typeZone);
		now.typeZone = 2;
#ifdef VAR_RANGES
		logval("typeZone", ((int)now.typeZone));
#endif
		;
		/* merge: .(goto)(18, 16, 18) */
		reached[1][16] = 1;
		;
		/* merge: .(goto)(0, 19, 18) */
		reached[1][19] = 1;
		;
		_m = 3; goto P999; /* 5 */
	case 48: // STATE 21 - model_process.pml:92 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[1][21] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC semaphore_fsm */
	case 49: // STATE 1 - model_process.pml:50 - [semaphore_state = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1] = 1;
		(trpt+1)->bup.oval = now.semaphore_state;
		now.semaphore_state = 0;
#ifdef VAR_RANGES
		logval("semaphore_state", now.semaphore_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 50: // STATE 2 - model_process.pml:53 - [((semaphore_state==0))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][2] = 1;
		if (!((now.semaphore_state==0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 51: // STATE 3 - model_process.pml:55 - [((data&&validData))] (36:0:4 - 1)
		IfNotBlocked
		reached[0][3] = 1;
		if (!((((int)now.data)&&((int)now.validData))))
			continue;
		/* merge: printf('Change to SEL_SEM... Selecting semaphore 1...\\n')(36, 4, 36) */
		reached[0][4] = 1;
		Printf("Change to SEL_SEM... Selecting semaphore 1...\n");
		/* merge: validData = 0(36, 5, 36) */
		reached[0][5] = 1;
		(trpt+1)->bup.ovals = grab_ints(4);
		(trpt+1)->bup.ovals[0] = ((int)now.validData);
		now.validData = 0;
#ifdef VAR_RANGES
		logval("validData", ((int)now.validData));
#endif
		;
		/* merge: data = 0(36, 6, 36) */
		reached[0][6] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.data);
		now.data = 0;
#ifdef VAR_RANGES
		logval("data", ((int)now.data));
#endif
		;
		/* merge: semId = 1(36, 7, 36) */
		reached[0][7] = 1;
		(trpt+1)->bup.ovals[2] = ((int)now.semId);
		now.semId = 1;
#ifdef VAR_RANGES
		logval("semId", ((int)now.semId));
#endif
		;
		/* merge: semaphore_state = 1(36, 8, 36) */
		reached[0][8] = 1;
		(trpt+1)->bup.ovals[3] = now.semaphore_state;
		now.semaphore_state = 1;
#ifdef VAR_RANGES
		logval("semaphore_state", now.semaphore_state);
#endif
		;
		/* merge: .(goto)(36, 15, 36) */
		reached[0][15] = 1;
		;
		/* merge: .(goto)(0, 37, 36) */
		reached[0][37] = 1;
		;
		_m = 3; goto P999; /* 7 */
	case 52: // STATE 15 - model_process.pml:58 - [.(goto)] (0:36:0 - 2)
		IfNotBlocked
		reached[0][15] = 1;
		;
		/* merge: .(goto)(0, 37, 36) */
		reached[0][37] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 53: // STATE 9 - model_process.pml:56 - [((data&&!(validData)))] (36:0:3 - 1)
		IfNotBlocked
		reached[0][9] = 1;
		if (!((((int)now.data)&& !(((int)now.validData)))))
			continue;
		/* merge: printf('Change to SEL_SEM... Selecting semaphore None...\\n')(36, 10, 36) */
		reached[0][10] = 1;
		Printf("Change to SEL_SEM... Selecting semaphore None...\n");
		/* merge: data = 0(36, 11, 36) */
		reached[0][11] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((int)now.data);
		now.data = 0;
#ifdef VAR_RANGES
		logval("data", ((int)now.data));
#endif
		;
		/* merge: semId = 0(36, 12, 36) */
		reached[0][12] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.semId);
		now.semId = 0;
#ifdef VAR_RANGES
		logval("semId", ((int)now.semId));
#endif
		;
		/* merge: semaphore_state = 1(36, 13, 36) */
		reached[0][13] = 1;
		(trpt+1)->bup.ovals[2] = now.semaphore_state;
		now.semaphore_state = 1;
#ifdef VAR_RANGES
		logval("semaphore_state", now.semaphore_state);
#endif
		;
		/* merge: .(goto)(36, 15, 36) */
		reached[0][15] = 1;
		;
		/* merge: .(goto)(0, 37, 36) */
		reached[0][37] = 1;
		;
		_m = 3; goto P999; /* 6 */
	case 54: // STATE 17 - model_process.pml:59 - [((semaphore_state==1))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][17] = 1;
		if (!((now.semaphore_state==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 55: // STATE 18 - model_process.pml:61 - [(((data&&changePos)&&validData))] (36:0:4 - 1)
		IfNotBlocked
		reached[0][18] = 1;
		if (!(((((int)now.data)&&((int)now.changePos))&&((int)now.validData))))
			continue;
		/* merge: printf('Change to SEL_SEM... Selecting semaphore 1...\\n')(36, 19, 36) */
		reached[0][19] = 1;
		Printf("Change to SEL_SEM... Selecting semaphore 1...\n");
		/* merge: validData = 0(36, 20, 36) */
		reached[0][20] = 1;
		(trpt+1)->bup.ovals = grab_ints(4);
		(trpt+1)->bup.ovals[0] = ((int)now.validData);
		now.validData = 0;
#ifdef VAR_RANGES
		logval("validData", ((int)now.validData));
#endif
		;
		/* merge: changePos = 0(36, 21, 36) */
		reached[0][21] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.changePos);
		now.changePos = 0;
#ifdef VAR_RANGES
		logval("changePos", ((int)now.changePos));
#endif
		;
		/* merge: semId = 1(36, 22, 36) */
		reached[0][22] = 1;
		(trpt+1)->bup.ovals[2] = ((int)now.semId);
		now.semId = 1;
#ifdef VAR_RANGES
		logval("semId", ((int)now.semId));
#endif
		;
		/* merge: semaphore_state = 1(36, 23, 36) */
		reached[0][23] = 1;
		(trpt+1)->bup.ovals[3] = now.semaphore_state;
		now.semaphore_state = 1;
#ifdef VAR_RANGES
		logval("semaphore_state", now.semaphore_state);
#endif
		;
		/* merge: .(goto)(36, 34, 36) */
		reached[0][34] = 1;
		;
		/* merge: .(goto)(0, 37, 36) */
		reached[0][37] = 1;
		;
		_m = 3; goto P999; /* 7 */
	case 56: // STATE 34 - model_process.pml:65 - [.(goto)] (0:36:0 - 3)
		IfNotBlocked
		reached[0][34] = 1;
		;
		/* merge: .(goto)(0, 37, 36) */
		reached[0][37] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 57: // STATE 24 - model_process.pml:62 - [(((data&&changePos)&&!(validData)))] (36:0:3 - 1)
		IfNotBlocked
		reached[0][24] = 1;
		if (!(((((int)now.data)&&((int)now.changePos))&& !(((int)now.validData)))))
			continue;
		/* merge: printf('Change to SEL_SEM... Selecting semaphore None...\\n')(36, 25, 36) */
		reached[0][25] = 1;
		Printf("Change to SEL_SEM... Selecting semaphore None...\n");
		/* merge: changePos = 0(36, 26, 36) */
		reached[0][26] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((int)now.changePos);
		now.changePos = 0;
#ifdef VAR_RANGES
		logval("changePos", ((int)now.changePos));
#endif
		;
		/* merge: semId = 0(36, 27, 36) */
		reached[0][27] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.semId);
		now.semId = 0;
#ifdef VAR_RANGES
		logval("semId", ((int)now.semId));
#endif
		;
		/* merge: semaphore_state = 1(36, 28, 36) */
		reached[0][28] = 1;
		(trpt+1)->bup.ovals[2] = now.semaphore_state;
		now.semaphore_state = 1;
#ifdef VAR_RANGES
		logval("semaphore_state", now.semaphore_state);
#endif
		;
		/* merge: .(goto)(36, 34, 36) */
		reached[0][34] = 1;
		;
		/* merge: .(goto)(0, 37, 36) */
		reached[0][37] = 1;
		;
		_m = 3; goto P999; /* 6 */
	case 58: // STATE 29 - model_process.pml:63 - [(!(data))] (36:0:2 - 1)
		IfNotBlocked
		reached[0][29] = 1;
		if (!( !(((int)now.data))))
			continue;
		/* merge: printf('Change to IDLE_SEM... No data available...\\n')(36, 30, 36) */
		reached[0][30] = 1;
		Printf("Change to IDLE_SEM... No data available...\n");
		/* merge: semId = 0(36, 31, 36) */
		reached[0][31] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.semId);
		now.semId = 0;
#ifdef VAR_RANGES
		logval("semId", ((int)now.semId));
#endif
		;
		/* merge: semaphore_state = 0(36, 32, 36) */
		reached[0][32] = 1;
		(trpt+1)->bup.ovals[1] = now.semaphore_state;
		now.semaphore_state = 0;
#ifdef VAR_RANGES
		logval("semaphore_state", now.semaphore_state);
#endif
		;
		/* merge: .(goto)(36, 34, 36) */
		reached[0][34] = 1;
		;
		/* merge: .(goto)(0, 37, 36) */
		reached[0][37] = 1;
		;
		_m = 3; goto P999; /* 5 */
	case 59: // STATE 39 - model_process.pml:68 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[0][39] = 1;
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

