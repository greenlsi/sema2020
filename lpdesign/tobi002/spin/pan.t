#ifdef PEG
struct T_SRC {
	char *fl; int ln;
} T_SRC[NTRANS];

void
tr_2_src(int m, char *file, int ln)
{	T_SRC[m].fl = file;
	T_SRC[m].ln = ln;
}

void
putpeg(int n, int m)
{	printf("%5d	trans %4d ", m, n);
	printf("%s:%d\n",
		T_SRC[n].fl, T_SRC[n].ln);
}
#endif

void
settable(void)
{	Trans *T;
	Trans *settr(int, int, int, int, int, char *, int, int, int);

	trans = (Trans ***) emalloc(11*sizeof(Trans **));

	/* proctype 9: IMU_spec */

	trans[9] = (Trans **) emalloc(21*sizeof(Trans *));

	trans[9][8]	= settr(271,0,7,1,0,".(goto)", 0, 2, 0);
	T = trans[9][7] = settr(270,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(270,0,1,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(270,0,3,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(270,0,5,0,0,"DO", 0, 2, 0);
	trans[9][1]	= settr(264,0,12,3,0,"((!(!(((counter>=(10-1))&&timer_IMU_end)))&&!((IMU_state==2))))", 1, 2, 0);
	trans[9][2]	= settr(265,0,12,1,0,"goto accept_S5", 0, 2, 0);
	trans[9][3]	= settr(266,0,17,4,0,"((!(!((timer_IMU_end==1)))&&!((IMU_state==1))))", 1, 2, 0);
	trans[9][4]	= settr(267,0,17,1,0,"goto accept_S10", 0, 2, 0);
	trans[9][5]	= settr(268,0,7,1,0,"(1)", 0, 2, 0);
	trans[9][6]	= settr(269,0,7,1,0,"goto T0_init", 0, 2, 0);
	trans[9][9]	= settr(272,0,12,1,0,"break", 0, 2, 0);
	trans[9][13]	= settr(276,0,12,1,0,".(goto)", 0, 2, 0);
	T = trans[9][12] = settr(275,0,0,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(275,0,10,0,0,"DO", 0, 2, 0);
	trans[9][10]	= settr(273,0,12,5,0,"(!((IMU_state==2)))", 1, 2, 0);
	trans[9][11]	= settr(274,0,12,1,0,"goto accept_S5", 0, 2, 0);
	trans[9][14]	= settr(277,0,17,1,0,"break", 0, 2, 0);
	trans[9][18]	= settr(281,0,17,1,0,".(goto)", 0, 2, 0);
	T = trans[9][17] = settr(280,0,0,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(280,0,15,0,0,"DO", 0, 2, 0);
	trans[9][15]	= settr(278,0,17,6,0,"(!((IMU_state==1)))", 1, 2, 0);
	trans[9][16]	= settr(279,0,17,1,0,"goto accept_S10", 0, 2, 0);
	trans[9][19]	= settr(282,0,20,1,0,"break", 0, 2, 0);
	trans[9][20]	= settr(283,0,0,7,7,"-end-", 0, 3500, 0);

	/* proctype 8: ultrasonic_spec */

	trans[8] = (Trans **) emalloc(14*sizeof(Trans *));

	trans[8][6]	= settr(256,0,5,1,0,".(goto)", 0, 2, 0);
	T = trans[8][5] = settr(255,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(255,0,1,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(255,0,3,0,0,"DO", 0, 2, 0);
	trans[8][1]	= settr(251,0,10,8,0,"((!(!(((trigger==1)&&(timer_trigger_end==1))))&&!((trigger==0))))", 1, 2, 0);
	trans[8][2]	= settr(252,0,10,1,0,"goto accept_S4", 0, 2, 0);
	trans[8][3]	= settr(253,0,5,1,0,"(1)", 0, 2, 0);
	trans[8][4]	= settr(254,0,5,1,0,"goto T0_init", 0, 2, 0);
	trans[8][7]	= settr(257,0,10,1,0,"break", 0, 2, 0);
	trans[8][11]	= settr(261,0,10,1,0,".(goto)", 0, 2, 0);
	T = trans[8][10] = settr(260,0,0,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(260,0,8,0,0,"DO", 0, 2, 0);
	trans[8][8]	= settr(258,0,10,9,0,"(!((trigger==0)))", 1, 2, 0);
	trans[8][9]	= settr(259,0,10,1,0,"goto accept_S4", 0, 2, 0);
	trans[8][12]	= settr(262,0,13,1,0,"break", 0, 2, 0);
	trans[8][13]	= settr(263,0,0,10,10,"-end-", 0, 3500, 0);

	/* proctype 7: msg_spec */

	trans[7] = (Trans **) emalloc(11*sizeof(Trans *));

	trans[7][7]	= settr(247,0,6,1,0,".(goto)", 0, 2, 0);
	T = trans[7][6] = settr(246,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(246,0,3,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(246,0,4,0,0,"DO", 0, 2, 0);
	T = trans[ 7][3] = settr(243,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(243,2,1,0,0,"ATOMIC", 1, 2, 0);
	trans[7][1]	= settr(241,0,6,11,11,"(!((!((msg_state==2))||(msg==5))))", 1, 2, 0); /* m: 2 -> 6,0 */
	reached7[2] = 1;
	trans[7][2]	= settr(0,0,0,0,0,"assert(!(!((!((msg_state==2))||(msg==5)))))",0,0,0);
	trans[7][4]	= settr(244,0,6,1,0,"(1)", 0, 2, 0);
	trans[7][5]	= settr(245,0,6,1,0,"goto T0_init", 0, 2, 0);
	trans[7][8]	= settr(248,0,9,1,0,"break", 0, 2, 0);
	trans[7][9]	= settr(249,0,10,1,0,"(1)", 0, 2, 0);
	trans[7][10]	= settr(250,0,0,12,12,"-end-", 0, 3500, 0);

	/* proctype 6: semaphore_spec */

	trans[6] = (Trans **) emalloc(14*sizeof(Trans *));

	trans[6][6]	= settr(233,0,5,1,0,".(goto)", 0, 2, 0);
	T = trans[6][5] = settr(232,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(232,0,1,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(232,0,3,0,0,"DO", 0, 2, 0);
	trans[6][1]	= settr(228,0,10,13,0,"((!(!(((data&&validData)&&(semaphore_state==0))))&&!((semId!=0))))", 1, 2, 0);
	trans[6][2]	= settr(229,0,10,1,0,"goto accept_S4", 0, 2, 0);
	trans[6][3]	= settr(230,0,5,1,0,"(1)", 0, 2, 0);
	trans[6][4]	= settr(231,0,5,1,0,"goto T0_init", 0, 2, 0);
	trans[6][7]	= settr(234,0,10,1,0,"break", 0, 2, 0);
	trans[6][11]	= settr(238,0,10,1,0,".(goto)", 0, 2, 0);
	T = trans[6][10] = settr(237,0,0,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(237,0,8,0,0,"DO", 0, 2, 0);
	trans[6][8]	= settr(235,0,10,14,0,"(!((semId!=0)))", 1, 2, 0);
	trans[6][9]	= settr(236,0,10,1,0,"goto accept_S4", 0, 2, 0);
	trans[6][12]	= settr(239,0,13,1,0,"break", 0, 2, 0);
	trans[6][13]	= settr(240,0,0,15,15,"-end-", 0, 3500, 0);

	/* proctype 5: entorno */

	trans[5] = (Trans **) emalloc(47*sizeof(Trans *));

	trans[5][44]	= settr(225,0,43,1,0,".(goto)", 0, 2, 0);
	T = trans[5][43] = settr(224,0,0,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(224,0,1,0,0,"DO", 0, 2, 0);
	trans[5][1]	= settr(182,0,42,1,0,"(1)", 0, 2, 0);
	T = trans[ 5][42] = settr(223,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(223,2,38,0,0,"ATOMIC", 1, 2, 0);
	T = trans[5][38] = settr(219,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(219,2,2,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(219,2,4,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(219,2,7,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(219,2,10,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(219,2,12,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(219,2,14,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(219,2,17,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(219,2,18,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(219,2,20,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(219,2,23,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(219,2,26,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(219,2,29,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(219,2,32,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(219,2,35,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(219,2,36,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(219,2,37,0,0,"IF", 1, 2, 0);
	trans[5][2]	= settr(183,0,43,16,16,"(!(timer_sample_start))", 1, 2, 0); /* m: 3 -> 43,0 */
	reached5[3] = 1;
	trans[5][3]	= settr(0,0,0,0,0,"timer_sample_start = 1",0,0,0);
	trans[5][39]	= settr(220,2,40,1,0,".(goto)", 1, 2, 0); /* m: 40 -> 0,43 */
	reached5[40] = 1;
	trans[5][4]	= settr(185,0,43,17,17,"(timer_sample_start)", 1, 2, 0); /* m: 5 -> 43,0 */
	reached5[5] = 1;
	trans[5][5]	= settr(0,0,0,0,0,"timer_sample_start = 0",0,0,0);
	trans[5][6]	= settr(0,0,0,0,0,"timer_sample_end = 1",0,0,0);
	trans[5][7]	= settr(188,0,43,18,18,"(timer_trigger_start)", 1, 2, 0); /* m: 8 -> 43,0 */
	reached5[8] = 1;
	trans[5][8]	= settr(0,0,0,0,0,"timer_trigger_start = 0",0,0,0);
	trans[5][9]	= settr(0,0,0,0,0,"timer_trigger_end = 1",0,0,0);
	trans[5][10]	= settr(191,0,43,19,19,"(((echo_received==0)&&(ultrasonic_state==2)))", 1, 2, 0); /* m: 11 -> 43,0 */
	reached5[11] = 1;
	trans[5][11]	= settr(0,0,0,0,0,"echo_received = 1",0,0,0);
	trans[5][12]	= settr(193,0,43,20,20,"(!(timer_IMU_start))", 1, 2, 0); /* m: 13 -> 43,0 */
	reached5[13] = 1;
	trans[5][13]	= settr(0,0,0,0,0,"timer_IMU_start = 1",0,0,0);
	trans[5][14]	= settr(195,0,43,21,21,"(timer_IMU_start)", 1, 2, 0); /* m: 15 -> 43,0 */
	reached5[15] = 1;
	trans[5][15]	= settr(0,0,0,0,0,"timer_IMU_start = 0",0,0,0);
	trans[5][16]	= settr(0,0,0,0,0,"timer_IMU_end = 1",0,0,0);
	trans[5][17]	= settr(198,0,43,22,22,"data = 1", 1, 2, 0); /* m: 40 -> 0,43 */
	reached5[40] = 1;
	trans[5][18]	= settr(199,0,43,23,23,"(data)", 1, 2, 0); /* m: 19 -> 43,0 */
	reached5[19] = 1;
	trans[5][19]	= settr(0,0,0,0,0,"validData = 1",0,0,0);
	trans[5][20]	= settr(201,0,43,24,24,"changePos = 1", 1, 2, 0); /* m: 21 -> 0,43 */
	reached5[21] = 1;
	trans[5][21]	= settr(0,0,0,0,0,"changePos_typeZone = 1",0,0,0);
	trans[5][22]	= settr(0,0,0,0,0,"moving = 1",0,0,0);
	trans[5][23]	= settr(204,0,43,25,25,"((semId&&sem_read))", 1, 2, 0); /* m: 24 -> 43,0 */
	reached5[24] = 1;
	trans[5][24]	= settr(0,0,0,0,0,"sem_light = 1",0,0,0);
	trans[5][25]	= settr(0,0,0,0,0,"sem_read = 0",0,0,0);
	trans[5][26]	= settr(207,0,43,26,26,"((semId&&sem_read))", 1, 2, 0); /* m: 27 -> 43,0 */
	reached5[27] = 1;
	trans[5][27]	= settr(0,0,0,0,0,"sem_light = 2",0,0,0);
	trans[5][28]	= settr(0,0,0,0,0,"sem_read = 0",0,0,0);
	trans[5][29]	= settr(210,0,43,27,27,"((semId&&sem_read))", 1, 2, 0); /* m: 30 -> 43,0 */
	reached5[30] = 1;
	trans[5][30]	= settr(0,0,0,0,0,"sem_light = 3",0,0,0);
	trans[5][31]	= settr(0,0,0,0,0,"sem_read = 0",0,0,0);
	trans[5][32]	= settr(213,0,43,28,28,"((!(semId)&&sem_read))", 1, 2, 0); /* m: 33 -> 43,0 */
	reached5[33] = 1;
	trans[5][33]	= settr(0,0,0,0,0,"sem_light = 0",0,0,0);
	trans[5][34]	= settr(0,0,0,0,0,"sem_read = 0",0,0,0);
	trans[5][35]	= settr(216,0,43,29,29,"moving = 1", 1, 2, 0); /* m: 40 -> 0,43 */
	reached5[40] = 1;
	trans[5][36]	= settr(217,0,43,30,30,"moving = 0", 1, 2, 0); /* m: 40 -> 0,43 */
	reached5[40] = 1;
	trans[5][37]	= settr(218,0,43,31,31,"(1)", 1, 2, 0); /* m: 40 -> 43,0 */
	reached5[40] = 1;
	trans[5][40]	= settr(221,0,43,32,32,"printf('data: %d   validData: %d   changePos: %d   state: %d\\n',data,validData,changePos,semaphore_state)", 1, 2, 0); /* m: 41 -> 0,43 */
	reached5[41] = 1;
	trans[5][41]	= settr(0,0,0,0,0,"printf('msg_state: %d   sem_light: %d   moving: %d  typeZone: %d \\n',msg_state,sem_light,moving,typeZone)",0,0,0);
	trans[5][45]	= settr(226,0,46,1,0,"break", 0, 2, 0);
	trans[5][46]	= settr(227,0,0,33,33,"-end-", 0, 3500, 0);

	/* proctype 4: msg_fsm */

	trans[4] = (Trans **) emalloc(60*sizeof(Trans *));

	trans[4][1]	= settr(123,0,56,34,34,"msg_state = 0", 1, 2, 0);
	trans[4][57]	= settr(179,0,56,1,0,".(goto)", 0, 2, 0);
	T = trans[4][56] = settr(178,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(178,0,2,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(178,0,24,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(178,0,46,0,0,"DO", 0, 2, 0);
	trans[4][2]	= settr(124,0,23,35,0,"((msg_state==0))", 1, 2, 0);
	T = trans[ 4][23] = settr(145,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(145,2,21,0,0,"ATOMIC", 1, 2, 0);
	T = trans[4][21] = settr(143,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(143,2,3,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(143,2,6,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(143,2,9,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(143,2,12,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(143,2,15,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(143,2,18,0,0,"IF", 1, 2, 0);
	trans[4][3]	= settr(125,0,56,36,36,"(((sem_light==0)&&(typeZone==0)))", 1, 2, 0); /* m: 4 -> 56,0 */
	reached4[4] = 1;
	trans[4][4]	= settr(0,0,0,0,0,"msg = 0",0,0,0);
	trans[4][5]	= settr(0,0,0,0,0,"sem_read = 1",0,0,0);
	trans[4][22]	= settr(144,0,56,37,37,".(goto)", 1, 2, 0);
	trans[4][6]	= settr(128,0,56,38,38,"(((sem_light==1)&&(typeZone==0)))", 1, 2, 0); /* m: 7 -> 56,0 */
	reached4[7] = 1;
	trans[4][7]	= settr(0,0,0,0,0,"msg = 2",0,0,0);
	trans[4][8]	= settr(0,0,0,0,0,"sem_read = 1",0,0,0);
	trans[4][9]	= settr(131,0,56,39,39,"(((sem_light==2)&&(typeZone==0)))", 1, 2, 0); /* m: 10 -> 56,0 */
	reached4[10] = 1;
	trans[4][10]	= settr(0,0,0,0,0,"msg = 2",0,0,0);
	trans[4][11]	= settr(0,0,0,0,0,"sem_read = 1",0,0,0);
	trans[4][12]	= settr(134,0,56,40,40,"(((sem_light==3)&&(typeZone==0)))", 1, 2, 0); /* m: 13 -> 56,0 */
	reached4[13] = 1;
	trans[4][13]	= settr(0,0,0,0,0,"msg = 1",0,0,0);
	trans[4][14]	= settr(0,0,0,0,0,"sem_read = 1",0,0,0);
	trans[4][15]	= settr(137,0,56,41,41,"((typeZone==1))", 1, 2, 0); /* m: 16 -> 56,0 */
	reached4[16] = 1;
	trans[4][16]	= settr(0,0,0,0,0,"msg = 0",0,0,0);
	trans[4][17]	= settr(0,0,0,0,0,"msg_state = 1",0,0,0);
	trans[4][18]	= settr(140,0,56,42,42,"((typeZone==2))", 1, 2, 0); /* m: 19 -> 56,0 */
	reached4[19] = 1;
	trans[4][19]	= settr(0,0,0,0,0,"msg = 5",0,0,0);
	trans[4][20]	= settr(0,0,0,0,0,"msg_state = 2",0,0,0);
	trans[4][24]	= settr(146,0,45,43,0,"((msg_state==1))", 1, 2, 0);
	T = trans[ 4][45] = settr(167,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(167,2,43,0,0,"ATOMIC", 1, 2, 0);
	T = trans[4][43] = settr(165,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(165,2,25,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(165,2,28,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(165,2,31,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(165,2,34,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(165,2,37,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(165,2,40,0,0,"IF", 1, 2, 0);
	trans[4][25]	= settr(147,0,56,44,44,"((((sem_light==2)&&(typeZone==1))&&moving))", 1, 2, 0); /* m: 26 -> 56,0 */
	reached4[26] = 1;
	trans[4][26]	= settr(0,0,0,0,0,"msg = 3",0,0,0);
	trans[4][27]	= settr(0,0,0,0,0,"sem_read = 1",0,0,0);
	trans[4][44]	= settr(166,0,56,45,45,".(goto)", 1, 2, 0);
	trans[4][28]	= settr(150,0,56,46,46,"((((sem_light==1)&&(typeZone==1))&&moving))", 1, 2, 0); /* m: 29 -> 56,0 */
	reached4[29] = 1;
	trans[4][29]	= settr(0,0,0,0,0,"msg = 4",0,0,0);
	trans[4][30]	= settr(0,0,0,0,0,"sem_read = 1",0,0,0);
	trans[4][31]	= settr(153,0,56,47,47,"((typeZone==2))", 1, 2, 0); /* m: 32 -> 56,0 */
	reached4[32] = 1;
	trans[4][32]	= settr(0,0,0,0,0,"msg = 5",0,0,0);
	trans[4][33]	= settr(0,0,0,0,0,"msg_state = 2",0,0,0);
	trans[4][34]	= settr(156,0,56,48,48,"((typeZone==0))", 1, 2, 0); /* m: 35 -> 56,0 */
	reached4[35] = 1;
	trans[4][35]	= settr(0,0,0,0,0,"msg = 0",0,0,0);
	trans[4][36]	= settr(0,0,0,0,0,"msg_state = 0",0,0,0);
	trans[4][37]	= settr(159,0,56,49,49,"(((!(moving)&&(typeZone==1))&&(sem_light!=0)))", 1, 2, 0); /* m: 38 -> 56,0 */
	reached4[38] = 1;
	trans[4][38]	= settr(0,0,0,0,0,"msg = 5",0,0,0);
	trans[4][39]	= settr(0,0,0,0,0,"sem_read = 1",0,0,0);
	trans[4][40]	= settr(162,0,56,50,50,"(((sem_light==0)&&(typeZone==1)))", 1, 2, 0); /* m: 41 -> 56,0 */
	reached4[41] = 1;
	trans[4][41]	= settr(0,0,0,0,0,"msg = 0",0,0,0);
	trans[4][42]	= settr(0,0,0,0,0,"sem_read = 1",0,0,0);
	trans[4][46]	= settr(168,0,55,51,0,"((msg_state==2))", 1, 2, 0);
	T = trans[ 4][55] = settr(177,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(177,2,53,0,0,"ATOMIC", 1, 2, 0);
	T = trans[4][53] = settr(175,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(175,2,47,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(175,2,50,0,0,"IF", 1, 2, 0);
	trans[4][47]	= settr(169,0,56,52,52,"((typeZone==0))", 1, 2, 0); /* m: 48 -> 56,0 */
	reached4[48] = 1;
	trans[4][48]	= settr(0,0,0,0,0,"msg = 6",0,0,0);
	trans[4][49]	= settr(0,0,0,0,0,"msg_state = 0",0,0,0);
	trans[4][54]	= settr(176,0,56,53,53,".(goto)", 1, 2, 0);
	trans[4][50]	= settr(172,0,56,54,54,"((typeZone==1))", 1, 2, 0); /* m: 51 -> 56,0 */
	reached4[51] = 1;
	trans[4][51]	= settr(0,0,0,0,0,"msg = 6",0,0,0);
	trans[4][52]	= settr(0,0,0,0,0,"msg_state = 1",0,0,0);
	trans[4][58]	= settr(180,0,59,1,0,"break", 0, 2, 0);
	trans[4][59]	= settr(181,0,0,55,55,"-end-", 0, 3500, 0);

	/* proctype 3: typeZone_fsm */

	trans[3] = (Trans **) emalloc(22*sizeof(Trans *));

	trans[3][1]	= settr(102,0,18,56,56,"typeZone_state = 0", 1, 2, 0);
	trans[3][19]	= settr(120,0,18,1,0,".(goto)", 0, 2, 0);
	T = trans[3][18] = settr(119,0,0,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(119,0,2,0,0,"DO", 0, 2, 0);
	trans[3][2]	= settr(103,0,17,57,0,"((typeZone_state==0))", 1, 2, 0);
	T = trans[ 3][17] = settr(118,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(118,2,15,0,0,"ATOMIC", 1, 2, 0);
	T = trans[3][15] = settr(116,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(116,2,3,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(116,2,7,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(116,2,11,0,0,"IF", 1, 2, 0);
	trans[3][3]	= settr(104,0,18,58,58,"(changePos_typeZone)", 1, 2, 0); /* m: 4 -> 18,0 */
	reached3[4] = 1;
	trans[3][4]	= settr(0,0,0,0,0,"printf('Selecting ACERA...\\n')",0,0,0);
	trans[3][5]	= settr(0,0,0,0,0,"changePos_typeZone = 0",0,0,0);
	trans[3][6]	= settr(0,0,0,0,0,"typeZone = 0",0,0,0);
	trans[3][16]	= settr(117,0,18,59,59,".(goto)", 1, 2, 0);
	trans[3][7]	= settr(108,0,18,60,60,"(changePos_typeZone)", 1, 2, 0); /* m: 8 -> 18,0 */
	reached3[8] = 1;
	trans[3][8]	= settr(0,0,0,0,0,"printf('Selecting PASO...\\n')",0,0,0);
	trans[3][9]	= settr(0,0,0,0,0,"changePos_typeZone = 0",0,0,0);
	trans[3][10]	= settr(0,0,0,0,0,"typeZone = 1",0,0,0);
	trans[3][11]	= settr(112,0,18,61,61,"(changePos_typeZone)", 1, 2, 0); /* m: 12 -> 18,0 */
	reached3[12] = 1;
	trans[3][12]	= settr(0,0,0,0,0,"printf('Selecting CARRETERA...\\n')",0,0,0);
	trans[3][13]	= settr(0,0,0,0,0,"changePos_typeZone = 0",0,0,0);
	trans[3][14]	= settr(0,0,0,0,0,"typeZone = 2",0,0,0);
	trans[3][20]	= settr(121,0,21,1,0,"break", 0, 2, 0);
	trans[3][21]	= settr(122,0,0,62,62,"-end-", 0, 3500, 0);

	/* proctype 2: semaphore_fsm */

	trans[2] = (Trans **) emalloc(40*sizeof(Trans *));

	trans[2][1]	= settr(63,0,36,63,63,"semaphore_state = 0", 1, 2, 0);
	trans[2][37]	= settr(99,0,36,1,0,".(goto)", 0, 2, 0);
	T = trans[2][36] = settr(98,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(98,0,2,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(98,0,17,0,0,"DO", 0, 2, 0);
	trans[2][2]	= settr(64,0,16,64,0,"((semaphore_state==0))", 1, 2, 0);
	T = trans[ 2][16] = settr(78,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(78,2,14,0,0,"ATOMIC", 1, 2, 0);
	T = trans[2][14] = settr(76,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(76,2,3,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(76,2,9,0,0,"IF", 1, 2, 0);
	trans[2][3]	= settr(65,0,36,65,65,"((data&&validData))", 1, 2, 0); /* m: 4 -> 36,0 */
	reached2[4] = 1;
	trans[2][4]	= settr(0,0,0,0,0,"printf('Change to SEL_SEM... Selecting semaphore 1...\\n')",0,0,0);
	trans[2][5]	= settr(0,0,0,0,0,"validData = 0",0,0,0);
	trans[2][6]	= settr(0,0,0,0,0,"data = 0",0,0,0);
	trans[2][7]	= settr(0,0,0,0,0,"semId = 1",0,0,0);
	trans[2][8]	= settr(0,0,0,0,0,"semaphore_state = 1",0,0,0);
	trans[2][15]	= settr(77,0,36,66,66,".(goto)", 1, 2, 0);
	trans[2][9]	= settr(71,0,36,67,67,"((data&&!(validData)))", 1, 2, 0); /* m: 10 -> 36,0 */
	reached2[10] = 1;
	trans[2][10]	= settr(0,0,0,0,0,"printf('Change to SEL_SEM... Selecting semaphore None...\\n')",0,0,0);
	trans[2][11]	= settr(0,0,0,0,0,"data = 0",0,0,0);
	trans[2][12]	= settr(0,0,0,0,0,"semId = 0",0,0,0);
	trans[2][13]	= settr(0,0,0,0,0,"semaphore_state = 1",0,0,0);
	trans[2][17]	= settr(79,0,35,68,0,"((semaphore_state==1))", 1, 2, 0);
	T = trans[ 2][35] = settr(97,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(97,2,33,0,0,"ATOMIC", 1, 2, 0);
	T = trans[2][33] = settr(95,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(95,2,18,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(95,2,24,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(95,2,29,0,0,"IF", 1, 2, 0);
	trans[2][18]	= settr(80,0,36,69,69,"(((data&&changePos)&&validData))", 1, 2, 0); /* m: 19 -> 36,0 */
	reached2[19] = 1;
	trans[2][19]	= settr(0,0,0,0,0,"printf('Change to SEL_SEM... Selecting semaphore 1...\\n')",0,0,0);
	trans[2][20]	= settr(0,0,0,0,0,"validData = 0",0,0,0);
	trans[2][21]	= settr(0,0,0,0,0,"changePos = 0",0,0,0);
	trans[2][22]	= settr(0,0,0,0,0,"semId = 1",0,0,0);
	trans[2][23]	= settr(0,0,0,0,0,"semaphore_state = 1",0,0,0);
	trans[2][34]	= settr(96,0,36,70,70,".(goto)", 1, 2, 0);
	trans[2][24]	= settr(86,0,36,71,71,"(((data&&changePos)&&!(validData)))", 1, 2, 0); /* m: 25 -> 36,0 */
	reached2[25] = 1;
	trans[2][25]	= settr(0,0,0,0,0,"printf('Change to SEL_SEM... Selecting semaphore None...\\n')",0,0,0);
	trans[2][26]	= settr(0,0,0,0,0,"changePos = 0",0,0,0);
	trans[2][27]	= settr(0,0,0,0,0,"semId = 0",0,0,0);
	trans[2][28]	= settr(0,0,0,0,0,"semaphore_state = 1",0,0,0);
	trans[2][29]	= settr(91,0,36,72,72,"(!(data))", 1, 2, 0); /* m: 30 -> 36,0 */
	reached2[30] = 1;
	trans[2][30]	= settr(0,0,0,0,0,"printf('Change to IDLE_SEM... No data available...\\n')",0,0,0);
	trans[2][31]	= settr(0,0,0,0,0,"semId = 0",0,0,0);
	trans[2][32]	= settr(0,0,0,0,0,"semaphore_state = 0",0,0,0);
	trans[2][38]	= settr(100,0,39,1,0,"break", 0, 2, 0);
	trans[2][39]	= settr(101,0,0,73,73,"-end-", 0, 3500, 0);

	/* proctype 1: IMU_fsm */

	trans[1] = (Trans **) emalloc(32*sizeof(Trans *));

	trans[1][1]	= settr(32,0,28,74,74,"IMU_state = 0", 1, 2, 0);
	trans[1][29]	= settr(60,0,28,1,0,".(goto)", 0, 2, 0);
	T = trans[1][28] = settr(59,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(59,0,2,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(59,0,10,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(59,0,20,0,0,"DO", 0, 2, 0);
	trans[1][2]	= settr(33,0,9,75,0,"((IMU_state==0))", 1, 2, 0);
	T = trans[ 1][9] = settr(40,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(40,2,7,0,0,"ATOMIC", 1, 2, 0);
	T = trans[1][7] = settr(38,2,0,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(38,2,3,0,0,"IF", 1, 2, 0);
	trans[1][3]	= settr(34,0,28,76,76,"(timer_IMU_end)", 1, 2, 0); /* m: 4 -> 28,0 */
	reached1[4] = 1;
	trans[1][4]	= settr(0,0,0,0,0,"timer_IMU_end = 0",0,0,0);
	trans[1][5]	= settr(0,0,0,0,0,"printf('IDLE_IMU...\\n')",0,0,0);
	trans[1][6]	= settr(0,0,0,0,0,"IMU_state = 1",0,0,0);
	trans[1][8]	= settr(39,0,28,1,0,".(goto)", 1, 2, 0);
	trans[1][10]	= settr(41,0,19,77,0,"((IMU_state==1))", 1, 2, 0);
	T = trans[ 1][19] = settr(50,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(50,2,17,0,0,"ATOMIC", 1, 2, 0);
	T = trans[1][17] = settr(48,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(48,2,11,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(48,2,14,0,0,"IF", 1, 2, 0);
	trans[1][11]	= settr(42,0,28,78,78,"((counter<(10-1)))", 1, 2, 0); /* m: 12 -> 28,0 */
	reached1[12] = 1;
	trans[1][12]	= settr(0,0,0,0,0,"IMU_state = 0",0,0,0);
	trans[1][13]	= settr(0,0,0,0,0,"counter = (counter+1)",0,0,0);
	trans[1][18]	= settr(49,0,28,79,79,".(goto)", 1, 2, 0);
	trans[1][14]	= settr(45,0,28,80,80,"((counter>=(10-1)))", 1, 2, 0); /* m: 15 -> 28,0 */
	reached1[15] = 1;
	trans[1][15]	= settr(0,0,0,0,0,"counter = (counter+1)",0,0,0);
	trans[1][16]	= settr(0,0,0,0,0,"IMU_state = 2",0,0,0);
	trans[1][20]	= settr(51,0,27,81,0,"((IMU_state==2))", 1, 2, 0);
	T = trans[ 1][27] = settr(58,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(58,2,25,0,0,"ATOMIC", 1, 2, 0);
	T = trans[1][25] = settr(56,2,0,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(56,2,21,0,0,"IF", 1, 2, 0);
	trans[1][21]	= settr(52,0,28,82,82,"(1)", 1, 2, 0); /* m: 22 -> 28,0 */
	reached1[22] = 1;
	trans[1][22]	= settr(0,0,0,0,0,"counter = 0",0,0,0);
	trans[1][23]	= settr(0,0,0,0,0,"printf('Calculating average...\\n')",0,0,0);
	trans[1][24]	= settr(0,0,0,0,0,"IMU_state = 0",0,0,0);
	trans[1][26]	= settr(57,0,28,1,0,".(goto)", 1, 2, 0);
	trans[1][30]	= settr(61,0,31,1,0,"break", 0, 2, 0);
	trans[1][31]	= settr(62,0,0,83,83,"-end-", 0, 3500, 0);

	/* proctype 0: ultrasonic_fsm */

	trans[0] = (Trans **) emalloc(33*sizeof(Trans *));

	trans[0][1]	= settr(0,0,29,84,84,"ultrasonic_state = 0", 1, 2, 0);
	trans[0][30]	= settr(29,0,29,1,0,".(goto)", 0, 2, 0);
	T = trans[0][29] = settr(28,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(28,0,2,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(28,0,12,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(28,0,21,0,0,"DO", 0, 2, 0);
	trans[0][2]	= settr(1,0,11,85,0,"((ultrasonic_state==0))", 1, 2, 0);
	T = trans[ 0][11] = settr(10,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(10,2,9,0,0,"ATOMIC", 1, 2, 0);
	T = trans[0][9] = settr(8,2,0,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(8,2,3,0,0,"IF", 1, 2, 0);
	trans[0][3]	= settr(2,0,29,86,86,"(timer_sample_end)", 1, 2, 0); /* m: 4 -> 29,0 */
	reached0[4] = 1;
	trans[0][4]	= settr(0,0,0,0,0,"printf('IDLE_US...\\n')",0,0,0);
	trans[0][5]	= settr(0,0,0,0,0,"timer_sample_end = 0",0,0,0);
	trans[0][6]	= settr(0,0,0,0,0,"ultrasonic_state = 1",0,0,0);
	trans[0][7]	= settr(0,0,0,0,0,"trigger = 1",0,0,0);
	trans[0][8]	= settr(0,0,0,0,0,"timer_trigger_start = 1",0,0,0);
	trans[0][10]	= settr(9,0,29,1,0,".(goto)", 1, 2, 0);
	trans[0][12]	= settr(11,0,20,87,0,"((ultrasonic_state==1))", 1, 2, 0);
	T = trans[ 0][20] = settr(19,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(19,2,18,0,0,"ATOMIC", 1, 2, 0);
	T = trans[0][18] = settr(17,2,0,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(17,2,13,0,0,"IF", 1, 2, 0);
	trans[0][13]	= settr(12,0,29,88,88,"(timer_trigger_end)", 1, 2, 0); /* m: 14 -> 29,0 */
	reached0[14] = 1;
	trans[0][14]	= settr(0,0,0,0,0,"printf('SET_TRIGGER...\\n')",0,0,0);
	trans[0][15]	= settr(0,0,0,0,0,"timer_trigger_end = 0",0,0,0);
	trans[0][16]	= settr(0,0,0,0,0,"ultrasonic_state = 2",0,0,0);
	trans[0][17]	= settr(0,0,0,0,0,"trigger = 0",0,0,0);
	trans[0][19]	= settr(18,0,29,1,0,".(goto)", 1, 2, 0);
	trans[0][21]	= settr(20,0,28,89,0,"((ultrasonic_state==2))", 1, 2, 0);
	T = trans[ 0][28] = settr(27,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(27,2,26,0,0,"ATOMIC", 1, 2, 0);
	T = trans[0][26] = settr(25,2,0,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(25,2,22,0,0,"IF", 1, 2, 0);
	trans[0][22]	= settr(21,0,29,90,90,"(echo_received)", 1, 2, 0); /* m: 23 -> 29,0 */
	reached0[23] = 1;
	trans[0][23]	= settr(0,0,0,0,0,"printf('WAIT_ECHO...\\n')",0,0,0);
	trans[0][24]	= settr(0,0,0,0,0,"echo_received = 0",0,0,0);
	trans[0][25]	= settr(0,0,0,0,0,"ultrasonic_state = 0",0,0,0);
	trans[0][27]	= settr(26,0,29,1,0,".(goto)", 1, 2, 0);
	trans[0][31]	= settr(30,0,32,1,0,"break", 0, 2, 0);
	trans[0][32]	= settr(31,0,0,91,91,"-end-", 0, 3500, 0);
	/* np_ demon: */
	trans[_NP_] = (Trans **) emalloc(3*sizeof(Trans *));
	T = trans[_NP_][0] = settr(9997,0,1,_T5,0,"(np_)", 1,2,0);
	    T->nxt	  = settr(9998,0,0,_T2,0,"(1)",   0,2,0);
	T = trans[_NP_][1] = settr(9999,0,1,_T5,0,"(np_)", 1,2,0);
}

Trans *
settr(	int t_id, int a, int b, int c, int d,
	char *t, int g, int tpe0, int tpe1)
{	Trans *tmp = (Trans *) emalloc(sizeof(Trans));

	tmp->atom  = a&(6|32);	/* only (2|8|32) have meaning */
	if (!g) tmp->atom |= 8;	/* no global references */
	tmp->st    = b;
	tmp->tpe[0] = tpe0;
	tmp->tpe[1] = tpe1;
	tmp->tp    = t;
	tmp->t_id  = t_id;
	tmp->forw  = c;
	tmp->back  = d;
	return tmp;
}

Trans *
cpytr(Trans *a)
{	Trans *tmp = (Trans *) emalloc(sizeof(Trans));

	int i;
	tmp->atom  = a->atom;
	tmp->st    = a->st;
#ifdef HAS_UNLESS
	tmp->e_trans = a->e_trans;
	for (i = 0; i < HAS_UNLESS; i++)
		tmp->escp[i] = a->escp[i];
#endif
	tmp->tpe[0] = a->tpe[0];
	tmp->tpe[1] = a->tpe[1];
	for (i = 0; i < 6; i++)
	{	tmp->qu[i] = a->qu[i];
		tmp->ty[i] = a->ty[i];
	}
	tmp->tp    = (char *) emalloc(strlen(a->tp)+1);
	strcpy(tmp->tp, a->tp);
	tmp->t_id  = a->t_id;
	tmp->forw  = a->forw;
	tmp->back  = a->back;
	return tmp;
}

#ifndef NOREDUCE
int
srinc_set(int n)
{	if (n <= 2) return LOCAL;
	if (n <= 2+  DELTA) return Q_FULL_F; /* 's' or nfull  */
	if (n <= 2+2*DELTA) return Q_EMPT_F; /* 'r' or nempty */
	if (n <= 2+3*DELTA) return Q_EMPT_T; /* empty */
	if (n <= 2+4*DELTA) return Q_FULL_T; /* full  */
	if (n ==   5*DELTA) return GLOBAL;
	if (n ==   6*DELTA) return TIMEOUT_F;
	if (n ==   7*DELTA) return ALPHA_F;
	Uerror("cannot happen srinc_class");
	return BAD;
}
int
srunc(int n, int m)
{	switch(m) {
	case Q_FULL_F: return n-2;
	case Q_EMPT_F: return n-2-DELTA;
	case Q_EMPT_T: return n-2-2*DELTA;
	case Q_FULL_T: return n-2-3*DELTA;
	case ALPHA_F:
	case TIMEOUT_F: return 257; /* non-zero, and > MAXQ */
	}
	Uerror("cannot happen srunc");
	return 0;
}
#endif
int cnt;
#ifdef HAS_UNLESS
int
isthere(Trans *a, int b)
{	Trans *t;
	for (t = a; t; t = t->nxt)
		if (t->t_id == b)
			return 1;
	return 0;
}
#endif
#ifndef NOREDUCE
int
mark_safety(Trans *t) /* for conditional safety */
{	int g = 0, i, j, k;

	if (!t) return 0;
	if (t->qu[0])
		return (t->qu[1])?2:1;	/* marked */

	for (i = 0; i < 2; i++)
	{	j = srinc_set(t->tpe[i]);
		if (j >= GLOBAL && j != ALPHA_F)
			return -1;
		if (j != LOCAL)
		{	k = srunc(t->tpe[i], j);
			if (g == 0
			||  t->qu[0] != k
			||  t->ty[0] != j)
			{	t->qu[g] = k;
				t->ty[g] = j;
				g++;
	}	}	}
	return g;
}
#endif
void
retrans(int n, int m, int is, short srcln[], uchar reach[], uchar lpstate[])
	/* process n, with m states, is=initial state */
{	Trans *T0, *T1, *T2, *T3;
	Trans *T4, *T5; /* t_reverse or has_unless */
	int i;
#if defined(HAS_UNLESS) || !defined(NOREDUCE)
	int k;
#endif
#ifndef NOREDUCE
	int g, h, j, aa;
#endif
#ifdef HAS_UNLESS
	int p;
#endif
	if (state_tables >= 4)
	{	printf("STEP 1 %s\n", 
			procname[n]);
		for (i = 1; i < m; i++)
		for (T0 = trans[n][i]; T0; T0 = T0->nxt)
			crack(n, i, T0, srcln);
		return;
	}
	do {
		for (i = 1, cnt = 0; i < m; i++)
		{	T2 = trans[n][i];
			T1 = T2?T2->nxt:(Trans *)0;
/* prescan: */		for (T0 = T1; T0; T0 = T0->nxt)
/* choice in choice */	{	if (T0->st && trans[n][T0->st]
				&&  trans[n][T0->st]->nxt)
					break;
			}
#if 0
		if (T0)
		printf("\tstate %d / %d: choice in choice\n",
		i, T0->st);
#endif
			if (T0)
			for (T0 = T1; T0; T0 = T0->nxt)
			{	T3 = trans[n][T0->st];
				if (!T3->nxt)
				{	T2->nxt = cpytr(T0);
					T2 = T2->nxt;
					imed(T2, T0->st, n, i);
					continue;
				}
				do {	T3 = T3->nxt;
					T2->nxt = cpytr(T3);
					T2 = T2->nxt;
					imed(T2, T0->st, n, i);
				} while (T3->nxt);
				cnt++;
			}
		}
	} while (cnt);
	if (state_tables >= 3)
	{	printf("STEP 2 %s\n", 
			procname[n]);
		for (i = 1; i < m; i++)
		for (T0 = trans[n][i]; T0; T0 = T0->nxt)
			crack(n, i, T0, srcln);
		return;
	}
	for (i = 1; i < m; i++)
	{	if (trans[n][i] && trans[n][i]->nxt) /* optimize */
		{	T1 = trans[n][i]->nxt;
#if 0
			printf("\t\tpull %d (%d) to %d\n",
			T1->st, T1->forw, i);
#endif
			srcln[i] = srcln[T1->st];	/* Oyvind Teig, 5.2.0 */

			if (!trans[n][T1->st]) continue;
			T0 = cpytr(trans[n][T1->st]);
			trans[n][i] = T0;
			reach[T1->st] = 1;
			imed(T0, T1->st, n, i);
			for (T1 = T1->nxt; T1; T1 = T1->nxt)
			{
#if 0
			printf("\t\tpull %d (%d) to %d\n",
				T1->st, T1->forw, i);
#endif
		/*		srcln[i] = srcln[T1->st];  gh: not useful */
				if (!trans[n][T1->st]) continue;
				T0->nxt = cpytr(trans[n][T1->st]);
				T0 = T0->nxt;
				reach[T1->st] = 1;
				imed(T0, T1->st, n, i);
	}	}	}
	if (state_tables >= 2)
	{	printf("STEP 3 %s\n", 
			procname[n]);
		for (i = 1; i < m; i++)
		for (T0 = trans[n][i]; T0; T0 = T0->nxt)
			crack(n, i, T0, srcln);
		return;
	}
#ifdef HAS_UNLESS
	for (i = 1; i < m; i++)
	{	if (!trans[n][i]) continue;
		/* check for each state i if an
		 * escape to some state p is defined
		 * if so, copy and mark p's transitions
		 * and prepend them to the transition-
		 * list of state i
		 */
	 if (!like_java) /* the default */
	 {	for (T0 = trans[n][i]; T0; T0 = T0->nxt)
		for (k = HAS_UNLESS-1; k >= 0; k--)
		{	if (p = T0->escp[k])
			for (T1 = trans[n][p]; T1; T1 = T1->nxt)
			{	if (isthere(trans[n][i], T1->t_id))
					continue;
				T2 = cpytr(T1);
				T2->e_trans = p;
				T2->nxt = trans[n][i];
				trans[n][i] = T2;
		}	}
	 } else /* outermost unless checked first */
	 {	T4 = T3 = (Trans *) 0;
		for (T0 = trans[n][i]; T0; T0 = T0->nxt)
		for (k = HAS_UNLESS-1; k >= 0; k--)
		{	if (p = T0->escp[k])
			for (T1 = trans[n][p]; T1; T1 = T1->nxt)
			{	if (isthere(trans[n][i], T1->t_id))
					continue;
				T2 = cpytr(T1);
				T2->nxt = (Trans *) 0;
				T2->e_trans = p;
				if (T3)	T3->nxt = T2;
				else	T4 = T2;
				T3 = T2;
		}	}
		if (T4)
		{	T3->nxt = trans[n][i];
			trans[n][i] = T4;
		}
	 }
	}
#endif
#ifndef NOREDUCE
	for (i = 1; i < m; i++)
	{	if (a_cycles)
		{ /* moves through these states are visible */
	#if PROG_LAB>0 && defined(HAS_NP)
			if (progstate[n][i])
				goto degrade;
			for (T1 = trans[n][i]; T1; T1 = T1->nxt)
				if (progstate[n][T1->st])
					goto degrade;
	#endif
			if (accpstate[n][i] || visstate[n][i])
				goto degrade;
			for (T1 = trans[n][i]; T1; T1 = T1->nxt)
				if (accpstate[n][T1->st])
					goto degrade;
		}
		T1 = trans[n][i];
		if (!T1) continue;
		g = mark_safety(T1);	/* V3.3.1 */
		if (g < 0) goto degrade; /* global */
		/* check if mixing of guards preserves reduction */
		if (T1->nxt)
		{	k = 0;
			for (T0 = T1; T0; T0 = T0->nxt)
			{	if (!(T0->atom&8))
					goto degrade;
				for (aa = 0; aa < 2; aa++)
				{	j = srinc_set(T0->tpe[aa]);
					if (j >= GLOBAL && j != ALPHA_F)
						goto degrade;
					if (T0->tpe[aa]
					&&  T0->tpe[aa]
					!=  T1->tpe[0])
						k = 1;
			}	}
			/* g = 0;	V3.3.1 */
			if (k)	/* non-uniform selection */
			for (T0 = T1; T0; T0 = T0->nxt)
			for (aa = 0; aa < 2; aa++)
			{	j = srinc_set(T0->tpe[aa]);
				if (j != LOCAL)
				{	k = srunc(T0->tpe[aa], j);
					for (h = 0; h < 6; h++)
						if (T1->qu[h] == k
						&&  T1->ty[h] == j)
							break;
					if (h >= 6)
					{	T1->qu[g%6] = k;
						T1->ty[g%6] = j;
						g++;
			}	}	}
			if (g > 6)
			{	T1->qu[0] = 0;	/* turn it off */
				printf("pan: warning, line %d, ",
					srcln[i]);
			 	printf("too many stmnt types (%d)",
					g);
			  	printf(" in selection\n");
			  goto degrade;
			}
		}
		/* mark all options global if >=1 is global */
		for (T1 = trans[n][i]; T1; T1 = T1->nxt)
			if (!(T1->atom&8)) break;
		if (T1)
degrade:	for (T1 = trans[n][i]; T1; T1 = T1->nxt)
			T1->atom &= ~8;	/* mark as unsafe */
		/* can only mix 'r's or 's's if on same chan */
		/* and not mixed with other local operations */
		T1 = trans[n][i];
		if (!T1 || T1->qu[0]) continue;
		j = T1->tpe[0];
		if (T1->nxt && T1->atom&8)
		{ if (j == 5*DELTA)
		  {	printf("warning: line %d ", srcln[i]);
			printf("mixed condition ");
			printf("(defeats reduction)\n");
			goto degrade;
		  }
		  for (T0 = T1; T0; T0 = T0->nxt)
		  for (aa = 0; aa < 2; aa++)
		  if  (T0->tpe[aa] && T0->tpe[aa] != j)
		  {	printf("warning: line %d ", srcln[i]);
			printf("[%d-%d] mixed %stion ",
				T0->tpe[aa], j, 
				(j==5*DELTA)?"condi":"selec");
			printf("(defeats reduction)\n");
			printf("	'%s' <-> '%s'\n",
				T1->tp, T0->tp);
			goto degrade;
		} }
	}
#endif
	for (i = 1; i < m; i++)
	{	T2 = trans[n][i];
		if (!T2
		||  T2->nxt
		||  strncmp(T2->tp, ".(goto)", 7)
		||  !stopstate[n][i])
			continue;
		stopstate[n][T2->st] = 1;
	}
	if (state_tables && !verbose)
	{	if (dodot)
		{	char buf[256], *q = buf, *p = procname[n];
			while (*p != '\0')
			{	if (*p != ':')
				{	*q++ = *p;
				}
				p++;
			}
			*q = '\0';
			printf("digraph ");
			switch (Btypes[n]) {
			case I_PROC:  printf("init {\n"); break;
			case N_CLAIM: printf("claim_%s {\n", buf); break;
			case E_TRACE: printf("notrace {\n"); break;
			case N_TRACE: printf("trace {\n"); break;
			default:      printf("p_%s {\n", buf); break;
			}
			printf("size=\"8,10\";\n");
			printf("  GT [shape=box,style=dotted,label=\"%s\"];\n", buf);
			printf("  GT -> S%d;\n", is);
		} else
		{	switch (Btypes[n]) {
			case I_PROC:  printf("init\n"); break;
			case N_CLAIM: printf("claim %s\n", procname[n]); break;
			case E_TRACE: printf("notrace assertion\n"); break;
			case N_TRACE: printf("trace assertion\n"); break;
			default:      printf("proctype %s\n", procname[n]); break;
		}	}
		for (i = 1; i < m; i++)
		{	reach[i] = 1;
		}
		tagtable(n, m, is, srcln, reach);
		if (dodot) printf("}\n");
	} else
	for (i = 1; i < m; i++)
	{	int nrelse;
		if (Btypes[n] != N_CLAIM)
		{	for (T0 = trans[n][i]; T0; T0 = T0->nxt)
			{	if (T0->st == i
				&& strcmp(T0->tp, "(1)") == 0)
				{	printf("error: proctype '%s' ",
						procname[n]);
		  			printf("line %d, state %d: has un",
						srcln[i], i);
					printf("conditional self-loop\n");
					pan_exit(1);
		}	}	}
		nrelse = 0;
		for (T0 = trans[n][i]; T0; T0 = T0->nxt)
		{	if (strcmp(T0->tp, "else") == 0)
				nrelse++;
		}
		if (nrelse > 1)
		{	printf("error: proctype '%s' state",
				procname[n]);
		  	printf(" %d, inherits %d", i, nrelse);
		  	printf(" 'else' stmnts\n");
			pan_exit(1);
	}	}
#if !defined(LOOPSTATE) && !defined(BFS_PAR)
	if (state_tables)
#endif
	do_dfs(n, m, is, srcln, reach, lpstate);

	if (!t_reverse)
	{	return;
	}
	/* process n, with m states, is=initial state -- reverse list */
	if (!state_tables && Btypes[n] != N_CLAIM)
	{	for (i = 1; i < m; i++)
		{	Trans *Tx = (Trans *) 0; /* list of escapes */
			Trans *Ty = (Trans *) 0; /* its tail element */
			T1 = (Trans *) 0; /* reversed list */
			T2 = (Trans *) 0; /* its tail */
			T3 = (Trans *) 0; /* remembers possible 'else' */

			/* find unless-escapes, they should go first */
			T4 = T5 = T0 = trans[n][i];
	#ifdef HAS_UNLESS
			while (T4 && T4->e_trans) /* escapes are first in orig list */
			{	T5 = T4;	  /* remember predecessor */
				T4 = T4->nxt;
			}
	#endif
			/* T4 points to first non-escape, T5 to its parent, T0 to original list */
			if (T4 != T0)		 /* there was at least one escape */
			{	T3 = T5->nxt;		 /* start of non-escapes */
				T5->nxt = (Trans *) 0;	 /* separate */
				Tx = T0;		 /* start of the escapes */
				Ty = T5;		 /* its tail */
				T0 = T3;		 /* the rest, to be reversed */
			}
			/* T0 points to first non-escape, Tx to the list of escapes, Ty to its tail */

			/* first tail-add non-escape transitions, reversed */
			T3 = (Trans *) 0;
			for (T5 = T0; T5; T5 = T4)
			{	T4 = T5->nxt;
	#ifdef HAS_UNLESS
				if (T5->e_trans)
				{	printf("error: cannot happen!\n");
					continue;
				}
	#endif
				if (strcmp(T5->tp, "else") == 0)
				{	T3 = T5;
					T5->nxt = (Trans *) 0;
				} else
				{	T5->nxt = T1;
					if (!T1) { T2 = T5; }
					T1 = T5;
			}	}
			/* T3 points to a possible else, which is removed from the list */
			/* T1 points to the reversed list so far (without escapes) */
			/* T2 points to the tail element -- where the else should go */
			if (T2 && T3)
			{	T2->nxt = T3;	/* add else */
			} else
			{	if (T3) /* there was an else, but there's no tail */
				{	if (!T1)	/* and no reversed list */
					{	T1 = T3; /* odd, but possible */
					} else		/* even stranger */
					{	T1->nxt = T3;
			}	}	}

			/* add in the escapes, to that they appear at the front */
			if (Tx && Ty) { Ty->nxt = T1; T1 = Tx; }

			trans[n][i] = T1;
			/* reversed, with escapes first and else last */
	}	}
	if (state_tables && verbose)
	{	printf("FINAL proctype %s\n", 
			procname[n]);
		for (i = 1; i < m; i++)
		for (T0 = trans[n][i]; T0; T0 = T0->nxt)
			crack(n, i, T0, srcln);
	}
}
void
imed(Trans *T, int v, int n, int j)	/* set intermediate state */
{	progstate[n][T->st] |= progstate[n][v];
	accpstate[n][T->st] |= accpstate[n][v];
	stopstate[n][T->st] |= stopstate[n][v];
	mapstate[n][j] = T->st;
}
void
tagtable(int n, int m, int is, short srcln[], uchar reach[])
{	Trans *z;

	if (is >= m || !trans[n][is]
	||  is <= 0 || reach[is] == 0)
		return;
	reach[is] = 0;
	if (state_tables)
	for (z = trans[n][is]; z; z = z->nxt)
	{	if (dodot)
			dot_crack(n, is, z);
		else
			crack(n, is, z, srcln);
	}

	for (z = trans[n][is]; z; z = z->nxt)
	{
#ifdef HAS_UNLESS
		int i, j;
#endif
		tagtable(n, m, z->st, srcln, reach);
#ifdef HAS_UNLESS
		for (i = 0; i < HAS_UNLESS; i++)
		{	j = trans[n][is]->escp[i];
			if (!j) break;
			tagtable(n, m, j, srcln, reach);
		}
#endif
	}
}

extern Trans *t_id_lkup[];

void
dfs_table(int n, int m, int is, short srcln[], uchar reach[], uchar lpstate[])
{	Trans *z;

	if (is >= m || is <= 0 || !trans[n][is])
		return;
	if ((reach[is] & (4|8|16)) != 0)
	{	if ((reach[is] & (8|16)) == 16)	/* on stack, not yet recorded */
		{	lpstate[is] = 1;
			reach[is] |= 8; /* recorded */
			if (state_tables && verbose)
			{	printf("state %d line %d is a loopstate\n", is, srcln[is]);
		}	}
		return;
	}
	reach[is] |= (4|16);	/* visited | onstack */
	for (z = trans[n][is]; z; z = z->nxt)
	{	t_id_lkup[z->t_id] = z;
#ifdef HAS_UNLESS
		int i, j;
#endif
		dfs_table(n, m, z->st, srcln, reach, lpstate);
#ifdef HAS_UNLESS
		for (i = 0; i < HAS_UNLESS; i++)
		{	j = trans[n][is]->escp[i];
			if (!j) break;
			dfs_table(n, m, j, srcln, reach, lpstate);
		}
#endif
	}
	reach[is] &= ~16; /* no longer on stack */
}
void
do_dfs(int n, int m, int is, short srcln[], uchar reach[], uchar lpstate[])
{	int i;
	dfs_table(n, m, is, srcln, reach, lpstate);
	for (i = 0; i < m; i++)
		reach[i] &= ~(4|8|16);
}
void
crack(int n, int j, Trans *z, short srcln[])
{	int i;

	if (!z) return;
	printf("	state %3d -(tr %3d)-> state %3d  ",
		j, z->forw, z->st);
	printf("[id %3d tp %3d", z->t_id, z->tpe[0]);
	if (z->tpe[1]) printf(",%d", z->tpe[1]);
#ifdef HAS_UNLESS
	if (z->e_trans)
		printf(" org %3d", z->e_trans);
	else if (state_tables >= 2)
	for (i = 0; i < HAS_UNLESS; i++)
	{	if (!z->escp[i]) break;
		printf(" esc %d", z->escp[i]);
	}
#endif
	printf("]");
	printf(" [%s%s%s%s%s] %s:%d => ",
		z->atom&6?"A":z->atom&32?"D":"-",
		accpstate[n][j]?"a" :"-",
		stopstate[n][j]?"e" : "-",
		progstate[n][j]?"p" : "-",
		z->atom & 8 ?"L":"G",
		PanSource, srcln[j]);
	for (i = 0; z->tp[i]; i++)
		if (z->tp[i] == '\n')
			printf("\\n");
		else
			putchar(z->tp[i]);
	if (verbose && z->qu[0])
	{	printf("\t[");
		for (i = 0; i < 6; i++)
			if (z->qu[i])
				printf("(%d,%d)",
				z->qu[i], z->ty[i]);
		printf("]");
	}
	printf("\n");
	fflush(stdout);
}
/* spin -a m.pml; cc -o pan pan.c; ./pan -D | dot -Tps > foo.ps; ps2pdf foo.ps */
void
dot_crack(int n, int j, Trans *z)
{	int i;

	if (!z) return;
	printf("	S%d -> S%d  [color=black", j, z->st);

	if (z->atom&6) printf(",style=dashed");
	else if (z->atom&32) printf(",style=dotted");
	else if (z->atom&8) printf(",style=solid");
	else printf(",style=bold");

	printf(",label=\"");
	for (i = 0; z->tp[i]; i++)
	{	if (z->tp[i] == '\\'
		&&  z->tp[i+1] == 'n')
		{	i++; printf(" ");
		} else
		{	putchar(z->tp[i]);
	}	}
	printf("\"];\n");
	if (accpstate[n][j]) printf("  S%d [color=red,style=bold];\n", j);
	else if (progstate[n][j]) printf("  S%d [color=green,style=bold];\n", j);
	if (stopstate[n][j]) printf("  S%d [color=blue,style=bold,shape=box];\n", j);
}

#ifdef VAR_RANGES
#define BYTESIZE	32	/* 2^8 : 2^3 = 256:8 = 32 */

typedef struct Vr_Ptr {
	char	*nm;
	uchar	vals[BYTESIZE];
	struct Vr_Ptr *nxt;
} Vr_Ptr;
Vr_Ptr *ranges = (Vr_Ptr *) 0;

void
logval(char *s, int v)
{	Vr_Ptr *tmp;

	if (v<0 || v > 255) return;
	for (tmp = ranges; tmp; tmp = tmp->nxt)
		if (!strcmp(tmp->nm, s))
			goto found;
	tmp = (Vr_Ptr *) emalloc(sizeof(Vr_Ptr));
	tmp->nxt = ranges;
	ranges = tmp;
	tmp->nm = s;
found:
	tmp->vals[(v)/8] |= 1<<((v)%8);
}

void
dumpval(uchar X[], int range)
{	int w, x, i, j = -1;

	for (w = i = 0; w < range; w++)
	for (x = 0; x < 8; x++, i++)
	{
from:		if ((X[w] & (1<<x)))
		{	printf("%d", i);
			j = i;
			goto upto;
	}	}
	return;
	for (w = 0; w < range; w++)
	for (x = 0; x < 8; x++, i++)
	{
upto:		if (!(X[w] & (1<<x)))
		{	if (i-1 == j)
				printf(", ");
			else
				printf("-%d, ", i-1);
			goto from;
	}	}
	if (j >= 0 && j != 255)
		printf("-255");
}

void
dumpranges(void)
{	Vr_Ptr *tmp;
	printf("\nValues assigned within ");
	printf("interval [0..255]:\n");
	for (tmp = ranges; tmp; tmp = tmp->nxt)
	{	printf("\t%s\t: ", tmp->nm);
		dumpval(tmp->vals, BYTESIZE);
		printf("\n");
	}
}
#endif
