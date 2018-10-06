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

		 /* PROC bridge */
	case 3: // STATE 1 - bridge4.pml:9 - [((((p1==1)&&(p2==1))&&(light==1)))] (59:0:7 - 1)
		IfNotBlocked
		reached[0][1] = 1;
		if (!((((((int)((P0 *)this)->p1)==1)&&(((int)((P0 *)this)->p2)==1))&&(((int)((P0 *)this)->light)==1))))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: p1 */  (trpt+1)->bup.ovals = grab_ints(7);
		(trpt+1)->bup.ovals[0] = ((P0 *)this)->p1;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P0 *)this)->p1 = 0;
		if (TstOnly) return 1; /* TT */
		/* dead 1: p2 */  (trpt+1)->bup.ovals[1] = ((P0 *)this)->p2;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P0 *)this)->p2 = 0;
		if (TstOnly) return 1; /* TT */
		/* dead 1: light */  (trpt+1)->bup.ovals[2] = ((P0 *)this)->light;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P0 *)this)->light = 0;
		/* merge: t = (t+2)(59, 2, 59) */
		reached[0][2] = 1;
		(trpt+1)->bup.ovals[3] = ((P0 *)this)->t;
		((P0 *)this)->t = (((P0 *)this)->t+2);
#ifdef VAR_RANGES
		logval("bridge:t", ((P0 *)this)->t);
#endif
		;
		/* merge: p1 = 0(59, 3, 59) */
		reached[0][3] = 1;
		(trpt+1)->bup.ovals[4] = ((int)((P0 *)this)->p1);
		((P0 *)this)->p1 = 0;
#ifdef VAR_RANGES
		logval("bridge:p1", ((int)((P0 *)this)->p1));
#endif
		;
		/* merge: p2 = 0(59, 4, 59) */
		reached[0][4] = 1;
		(trpt+1)->bup.ovals[5] = ((int)((P0 *)this)->p2);
		((P0 *)this)->p2 = 0;
#ifdef VAR_RANGES
		logval("bridge:p2", ((int)((P0 *)this)->p2));
#endif
		;
		/* merge: light = 0(59, 5, 59) */
		reached[0][5] = 1;
		(trpt+1)->bup.ovals[6] = ((int)((P0 *)this)->light);
		((P0 *)this)->light = 0;
#ifdef VAR_RANGES
		logval("bridge:light", ((int)((P0 *)this)->light));
#endif
		;
		/* merge: printf('p1 p2 ->\\n')(59, 6, 59) */
		reached[0][6] = 1;
		Printf("p1 p2 ->\n");
		/* merge: .(goto)(0, 60, 59) */
		reached[0][60] = 1;
		;
		_m = 3; goto P999; /* 6 */
	case 4: // STATE 7 - bridge4.pml:10 - [((((p1==1)&&(p3==1))&&(light==1)))] (59:0:7 - 1)
		IfNotBlocked
		reached[0][7] = 1;
		if (!((((((int)((P0 *)this)->p1)==1)&&(((int)((P0 *)this)->p3)==1))&&(((int)((P0 *)this)->light)==1))))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: p1 */  (trpt+1)->bup.ovals = grab_ints(7);
		(trpt+1)->bup.ovals[0] = ((P0 *)this)->p1;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P0 *)this)->p1 = 0;
		if (TstOnly) return 1; /* TT */
		/* dead 1: p3 */  (trpt+1)->bup.ovals[1] = ((P0 *)this)->p3;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P0 *)this)->p3 = 0;
		if (TstOnly) return 1; /* TT */
		/* dead 1: light */  (trpt+1)->bup.ovals[2] = ((P0 *)this)->light;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P0 *)this)->light = 0;
		/* merge: t = (t+5)(59, 8, 59) */
		reached[0][8] = 1;
		(trpt+1)->bup.ovals[3] = ((P0 *)this)->t;
		((P0 *)this)->t = (((P0 *)this)->t+5);
#ifdef VAR_RANGES
		logval("bridge:t", ((P0 *)this)->t);
#endif
		;
		/* merge: p1 = 0(59, 9, 59) */
		reached[0][9] = 1;
		(trpt+1)->bup.ovals[4] = ((int)((P0 *)this)->p1);
		((P0 *)this)->p1 = 0;
#ifdef VAR_RANGES
		logval("bridge:p1", ((int)((P0 *)this)->p1));
#endif
		;
		/* merge: p3 = 0(59, 10, 59) */
		reached[0][10] = 1;
		(trpt+1)->bup.ovals[5] = ((int)((P0 *)this)->p3);
		((P0 *)this)->p3 = 0;
#ifdef VAR_RANGES
		logval("bridge:p3", ((int)((P0 *)this)->p3));
#endif
		;
		/* merge: light = 0(59, 11, 59) */
		reached[0][11] = 1;
		(trpt+1)->bup.ovals[6] = ((int)((P0 *)this)->light);
		((P0 *)this)->light = 0;
#ifdef VAR_RANGES
		logval("bridge:light", ((int)((P0 *)this)->light));
#endif
		;
		/* merge: printf('p1 p3 ->\\n')(59, 12, 59) */
		reached[0][12] = 1;
		Printf("p1 p3 ->\n");
		/* merge: .(goto)(0, 60, 59) */
		reached[0][60] = 1;
		;
		_m = 3; goto P999; /* 6 */
	case 5: // STATE 13 - bridge4.pml:11 - [((((p1==1)&&(p4==1))&&(light==1)))] (59:0:7 - 1)
		IfNotBlocked
		reached[0][13] = 1;
		if (!((((((int)((P0 *)this)->p1)==1)&&(((int)((P0 *)this)->p4)==1))&&(((int)((P0 *)this)->light)==1))))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: p1 */  (trpt+1)->bup.ovals = grab_ints(7);
		(trpt+1)->bup.ovals[0] = ((P0 *)this)->p1;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P0 *)this)->p1 = 0;
		if (TstOnly) return 1; /* TT */
		/* dead 1: p4 */  (trpt+1)->bup.ovals[1] = ((P0 *)this)->p4;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P0 *)this)->p4 = 0;
		if (TstOnly) return 1; /* TT */
		/* dead 1: light */  (trpt+1)->bup.ovals[2] = ((P0 *)this)->light;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P0 *)this)->light = 0;
		/* merge: t = (t+10)(59, 14, 59) */
		reached[0][14] = 1;
		(trpt+1)->bup.ovals[3] = ((P0 *)this)->t;
		((P0 *)this)->t = (((P0 *)this)->t+10);
#ifdef VAR_RANGES
		logval("bridge:t", ((P0 *)this)->t);
#endif
		;
		/* merge: p1 = 0(59, 15, 59) */
		reached[0][15] = 1;
		(trpt+1)->bup.ovals[4] = ((int)((P0 *)this)->p1);
		((P0 *)this)->p1 = 0;
#ifdef VAR_RANGES
		logval("bridge:p1", ((int)((P0 *)this)->p1));
#endif
		;
		/* merge: p4 = 0(59, 16, 59) */
		reached[0][16] = 1;
		(trpt+1)->bup.ovals[5] = ((int)((P0 *)this)->p4);
		((P0 *)this)->p4 = 0;
#ifdef VAR_RANGES
		logval("bridge:p4", ((int)((P0 *)this)->p4));
#endif
		;
		/* merge: light = 0(59, 17, 59) */
		reached[0][17] = 1;
		(trpt+1)->bup.ovals[6] = ((int)((P0 *)this)->light);
		((P0 *)this)->light = 0;
#ifdef VAR_RANGES
		logval("bridge:light", ((int)((P0 *)this)->light));
#endif
		;
		/* merge: printf('p1 p4 ->\\n')(59, 18, 59) */
		reached[0][18] = 1;
		Printf("p1 p4 ->\n");
		/* merge: .(goto)(0, 60, 59) */
		reached[0][60] = 1;
		;
		_m = 3; goto P999; /* 6 */
	case 6: // STATE 19 - bridge4.pml:12 - [((((p2==1)&&(p3==1))&&(light==1)))] (59:0:6 - 1)
		IfNotBlocked
		reached[0][19] = 1;
		if (!((((((int)((P0 *)this)->p2)==1)&&(((int)((P0 *)this)->p3)==1))&&(((int)((P0 *)this)->light)==1))))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: p3 */  (trpt+1)->bup.ovals = grab_ints(6);
		(trpt+1)->bup.ovals[0] = ((P0 *)this)->p3;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P0 *)this)->p3 = 0;
		if (TstOnly) return 1; /* TT */
		/* dead 1: light */  (trpt+1)->bup.ovals[1] = ((P0 *)this)->light;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P0 *)this)->light = 0;
		/* merge: t = (t+5)(59, 20, 59) */
		reached[0][20] = 1;
		(trpt+1)->bup.ovals[2] = ((P0 *)this)->t;
		((P0 *)this)->t = (((P0 *)this)->t+5);
#ifdef VAR_RANGES
		logval("bridge:t", ((P0 *)this)->t);
#endif
		;
		/* merge: p3 = 0(59, 21, 59) */
		reached[0][21] = 1;
		(trpt+1)->bup.ovals[3] = ((int)((P0 *)this)->p3);
		((P0 *)this)->p3 = 0;
#ifdef VAR_RANGES
		logval("bridge:p3", ((int)((P0 *)this)->p3));
#endif
		;
		/* merge: p3 = 0(59, 22, 59) */
		reached[0][22] = 1;
		(trpt+1)->bup.ovals[4] = ((int)((P0 *)this)->p3);
		((P0 *)this)->p3 = 0;
#ifdef VAR_RANGES
		logval("bridge:p3", ((int)((P0 *)this)->p3));
#endif
		;
		/* merge: light = 0(59, 23, 59) */
		reached[0][23] = 1;
		(trpt+1)->bup.ovals[5] = ((int)((P0 *)this)->light);
		((P0 *)this)->light = 0;
#ifdef VAR_RANGES
		logval("bridge:light", ((int)((P0 *)this)->light));
#endif
		;
		/* merge: printf('p2 p3 ->\\n')(59, 24, 59) */
		reached[0][24] = 1;
		Printf("p2 p3 ->\n");
		/* merge: .(goto)(0, 60, 59) */
		reached[0][60] = 1;
		;
		_m = 3; goto P999; /* 6 */
	case 7: // STATE 25 - bridge4.pml:13 - [((((p2==1)&&(p4==1))&&(light==1)))] (59:0:7 - 1)
		IfNotBlocked
		reached[0][25] = 1;
		if (!((((((int)((P0 *)this)->p2)==1)&&(((int)((P0 *)this)->p4)==1))&&(((int)((P0 *)this)->light)==1))))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: p2 */  (trpt+1)->bup.ovals = grab_ints(7);
		(trpt+1)->bup.ovals[0] = ((P0 *)this)->p2;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P0 *)this)->p2 = 0;
		if (TstOnly) return 1; /* TT */
		/* dead 1: p4 */  (trpt+1)->bup.ovals[1] = ((P0 *)this)->p4;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P0 *)this)->p4 = 0;
		if (TstOnly) return 1; /* TT */
		/* dead 1: light */  (trpt+1)->bup.ovals[2] = ((P0 *)this)->light;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P0 *)this)->light = 0;
		/* merge: t = (t+10)(59, 26, 59) */
		reached[0][26] = 1;
		(trpt+1)->bup.ovals[3] = ((P0 *)this)->t;
		((P0 *)this)->t = (((P0 *)this)->t+10);
#ifdef VAR_RANGES
		logval("bridge:t", ((P0 *)this)->t);
#endif
		;
		/* merge: p2 = 0(59, 27, 59) */
		reached[0][27] = 1;
		(trpt+1)->bup.ovals[4] = ((int)((P0 *)this)->p2);
		((P0 *)this)->p2 = 0;
#ifdef VAR_RANGES
		logval("bridge:p2", ((int)((P0 *)this)->p2));
#endif
		;
		/* merge: p4 = 0(59, 28, 59) */
		reached[0][28] = 1;
		(trpt+1)->bup.ovals[5] = ((int)((P0 *)this)->p4);
		((P0 *)this)->p4 = 0;
#ifdef VAR_RANGES
		logval("bridge:p4", ((int)((P0 *)this)->p4));
#endif
		;
		/* merge: light = 0(59, 29, 59) */
		reached[0][29] = 1;
		(trpt+1)->bup.ovals[6] = ((int)((P0 *)this)->light);
		((P0 *)this)->light = 0;
#ifdef VAR_RANGES
		logval("bridge:light", ((int)((P0 *)this)->light));
#endif
		;
		/* merge: printf('p2 p4 ->\\n')(59, 30, 59) */
		reached[0][30] = 1;
		Printf("p2 p4 ->\n");
		/* merge: .(goto)(0, 60, 59) */
		reached[0][60] = 1;
		;
		_m = 3; goto P999; /* 6 */
	case 8: // STATE 31 - bridge4.pml:14 - [((((p3==1)&&(p4==1))&&(light==1)))] (59:0:7 - 1)
		IfNotBlocked
		reached[0][31] = 1;
		if (!((((((int)((P0 *)this)->p3)==1)&&(((int)((P0 *)this)->p4)==1))&&(((int)((P0 *)this)->light)==1))))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: p3 */  (trpt+1)->bup.ovals = grab_ints(7);
		(trpt+1)->bup.ovals[0] = ((P0 *)this)->p3;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P0 *)this)->p3 = 0;
		if (TstOnly) return 1; /* TT */
		/* dead 1: p4 */  (trpt+1)->bup.ovals[1] = ((P0 *)this)->p4;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P0 *)this)->p4 = 0;
		if (TstOnly) return 1; /* TT */
		/* dead 1: light */  (trpt+1)->bup.ovals[2] = ((P0 *)this)->light;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P0 *)this)->light = 0;
		/* merge: t = (t+10)(59, 32, 59) */
		reached[0][32] = 1;
		(trpt+1)->bup.ovals[3] = ((P0 *)this)->t;
		((P0 *)this)->t = (((P0 *)this)->t+10);
#ifdef VAR_RANGES
		logval("bridge:t", ((P0 *)this)->t);
#endif
		;
		/* merge: p3 = 0(59, 33, 59) */
		reached[0][33] = 1;
		(trpt+1)->bup.ovals[4] = ((int)((P0 *)this)->p3);
		((P0 *)this)->p3 = 0;
#ifdef VAR_RANGES
		logval("bridge:p3", ((int)((P0 *)this)->p3));
#endif
		;
		/* merge: p4 = 0(59, 34, 59) */
		reached[0][34] = 1;
		(trpt+1)->bup.ovals[5] = ((int)((P0 *)this)->p4);
		((P0 *)this)->p4 = 0;
#ifdef VAR_RANGES
		logval("bridge:p4", ((int)((P0 *)this)->p4));
#endif
		;
		/* merge: light = 0(59, 35, 59) */
		reached[0][35] = 1;
		(trpt+1)->bup.ovals[6] = ((int)((P0 *)this)->light);
		((P0 *)this)->light = 0;
#ifdef VAR_RANGES
		logval("bridge:light", ((int)((P0 *)this)->light));
#endif
		;
		/* merge: printf('p3 p4 ->\\n')(59, 36, 59) */
		reached[0][36] = 1;
		Printf("p3 p4 ->\n");
		/* merge: .(goto)(0, 60, 59) */
		reached[0][60] = 1;
		;
		_m = 3; goto P999; /* 6 */
	case 9: // STATE 37 - bridge4.pml:15 - [((((p1==0)&&(light==0))&&(((p2+p3)+p4)>0)))] (59:0:5 - 1)
		IfNotBlocked
		reached[0][37] = 1;
		if (!((((((int)((P0 *)this)->p1)==0)&&(((int)((P0 *)this)->light)==0))&&(((((int)((P0 *)this)->p2)+((int)((P0 *)this)->p3))+((int)((P0 *)this)->p4))>0))))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: p1 */  (trpt+1)->bup.ovals = grab_ints(5);
		(trpt+1)->bup.ovals[0] = ((P0 *)this)->p1;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P0 *)this)->p1 = 0;
		if (TstOnly) return 1; /* TT */
		/* dead 1: light */  (trpt+1)->bup.ovals[1] = ((P0 *)this)->light;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P0 *)this)->light = 0;
		/* merge: t = (t+1)(59, 38, 59) */
		reached[0][38] = 1;
		(trpt+1)->bup.ovals[2] = ((P0 *)this)->t;
		((P0 *)this)->t = (((P0 *)this)->t+1);
#ifdef VAR_RANGES
		logval("bridge:t", ((P0 *)this)->t);
#endif
		;
		/* merge: p1 = 1(59, 39, 59) */
		reached[0][39] = 1;
		(trpt+1)->bup.ovals[3] = ((int)((P0 *)this)->p1);
		((P0 *)this)->p1 = 1;
#ifdef VAR_RANGES
		logval("bridge:p1", ((int)((P0 *)this)->p1));
#endif
		;
		/* merge: light = 1(59, 40, 59) */
		reached[0][40] = 1;
		(trpt+1)->bup.ovals[4] = ((int)((P0 *)this)->light);
		((P0 *)this)->light = 1;
#ifdef VAR_RANGES
		logval("bridge:light", ((int)((P0 *)this)->light));
#endif
		;
		/* merge: printf('p1 <-\\n')(59, 41, 59) */
		reached[0][41] = 1;
		Printf("p1 <-\n");
		/* merge: .(goto)(0, 60, 59) */
		reached[0][60] = 1;
		;
		_m = 3; goto P999; /* 5 */
	case 10: // STATE 42 - bridge4.pml:16 - [((((p2==0)&&(light==0))&&(((p1+p3)+p4)>0)))] (59:0:5 - 1)
		IfNotBlocked
		reached[0][42] = 1;
		if (!((((((int)((P0 *)this)->p2)==0)&&(((int)((P0 *)this)->light)==0))&&(((((int)((P0 *)this)->p1)+((int)((P0 *)this)->p3))+((int)((P0 *)this)->p4))>0))))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: p2 */  (trpt+1)->bup.ovals = grab_ints(5);
		(trpt+1)->bup.ovals[0] = ((P0 *)this)->p2;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P0 *)this)->p2 = 0;
		if (TstOnly) return 1; /* TT */
		/* dead 1: light */  (trpt+1)->bup.ovals[1] = ((P0 *)this)->light;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P0 *)this)->light = 0;
		/* merge: t = (t+2)(59, 43, 59) */
		reached[0][43] = 1;
		(trpt+1)->bup.ovals[2] = ((P0 *)this)->t;
		((P0 *)this)->t = (((P0 *)this)->t+2);
#ifdef VAR_RANGES
		logval("bridge:t", ((P0 *)this)->t);
#endif
		;
		/* merge: p2 = 1(59, 44, 59) */
		reached[0][44] = 1;
		(trpt+1)->bup.ovals[3] = ((int)((P0 *)this)->p2);
		((P0 *)this)->p2 = 1;
#ifdef VAR_RANGES
		logval("bridge:p2", ((int)((P0 *)this)->p2));
#endif
		;
		/* merge: light = 1(59, 45, 59) */
		reached[0][45] = 1;
		(trpt+1)->bup.ovals[4] = ((int)((P0 *)this)->light);
		((P0 *)this)->light = 1;
#ifdef VAR_RANGES
		logval("bridge:light", ((int)((P0 *)this)->light));
#endif
		;
		/* merge: printf('p2 <-\\n')(59, 46, 59) */
		reached[0][46] = 1;
		Printf("p2 <-\n");
		/* merge: .(goto)(0, 60, 59) */
		reached[0][60] = 1;
		;
		_m = 3; goto P999; /* 5 */
	case 11: // STATE 47 - bridge4.pml:17 - [((((p3==0)&&(light==0))&&(((p2+p1)+p4)>0)))] (59:0:5 - 1)
		IfNotBlocked
		reached[0][47] = 1;
		if (!((((((int)((P0 *)this)->p3)==0)&&(((int)((P0 *)this)->light)==0))&&(((((int)((P0 *)this)->p2)+((int)((P0 *)this)->p1))+((int)((P0 *)this)->p4))>0))))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: p3 */  (trpt+1)->bup.ovals = grab_ints(5);
		(trpt+1)->bup.ovals[0] = ((P0 *)this)->p3;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P0 *)this)->p3 = 0;
		if (TstOnly) return 1; /* TT */
		/* dead 1: light */  (trpt+1)->bup.ovals[1] = ((P0 *)this)->light;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P0 *)this)->light = 0;
		/* merge: t = (t+5)(59, 48, 59) */
		reached[0][48] = 1;
		(trpt+1)->bup.ovals[2] = ((P0 *)this)->t;
		((P0 *)this)->t = (((P0 *)this)->t+5);
#ifdef VAR_RANGES
		logval("bridge:t", ((P0 *)this)->t);
#endif
		;
		/* merge: p3 = 1(59, 49, 59) */
		reached[0][49] = 1;
		(trpt+1)->bup.ovals[3] = ((int)((P0 *)this)->p3);
		((P0 *)this)->p3 = 1;
#ifdef VAR_RANGES
		logval("bridge:p3", ((int)((P0 *)this)->p3));
#endif
		;
		/* merge: light = 1(59, 50, 59) */
		reached[0][50] = 1;
		(trpt+1)->bup.ovals[4] = ((int)((P0 *)this)->light);
		((P0 *)this)->light = 1;
#ifdef VAR_RANGES
		logval("bridge:light", ((int)((P0 *)this)->light));
#endif
		;
		/* merge: printf('p3 <-\\n')(59, 51, 59) */
		reached[0][51] = 1;
		Printf("p3 <-\n");
		/* merge: .(goto)(0, 60, 59) */
		reached[0][60] = 1;
		;
		_m = 3; goto P999; /* 5 */
	case 12: // STATE 52 - bridge4.pml:18 - [((((p4==0)&&(light==0))&&(((p1+p2)+p3)>0)))] (59:0:5 - 1)
		IfNotBlocked
		reached[0][52] = 1;
		if (!((((((int)((P0 *)this)->p4)==0)&&(((int)((P0 *)this)->light)==0))&&(((((int)((P0 *)this)->p1)+((int)((P0 *)this)->p2))+((int)((P0 *)this)->p3))>0))))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: p4 */  (trpt+1)->bup.ovals = grab_ints(5);
		(trpt+1)->bup.ovals[0] = ((P0 *)this)->p4;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P0 *)this)->p4 = 0;
		if (TstOnly) return 1; /* TT */
		/* dead 1: light */  (trpt+1)->bup.ovals[1] = ((P0 *)this)->light;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P0 *)this)->light = 0;
		/* merge: t = (t+10)(59, 53, 59) */
		reached[0][53] = 1;
		(trpt+1)->bup.ovals[2] = ((P0 *)this)->t;
		((P0 *)this)->t = (((P0 *)this)->t+10);
#ifdef VAR_RANGES
		logval("bridge:t", ((P0 *)this)->t);
#endif
		;
		/* merge: p4 = 1(59, 54, 59) */
		reached[0][54] = 1;
		(trpt+1)->bup.ovals[3] = ((int)((P0 *)this)->p4);
		((P0 *)this)->p4 = 1;
#ifdef VAR_RANGES
		logval("bridge:p4", ((int)((P0 *)this)->p4));
#endif
		;
		/* merge: light = 1(59, 55, 59) */
		reached[0][55] = 1;
		(trpt+1)->bup.ovals[4] = ((int)((P0 *)this)->light);
		((P0 *)this)->light = 1;
#ifdef VAR_RANGES
		logval("bridge:light", ((int)((P0 *)this)->light));
#endif
		;
		/* merge: printf('p4 <-\\n')(59, 56, 59) */
		reached[0][56] = 1;
		Printf("p4 <-\n");
		/* merge: .(goto)(0, 60, 59) */
		reached[0][60] = 1;
		;
		_m = 3; goto P999; /* 5 */
	case 13: // STATE 62 - bridge4.pml:22 - [assert(((light==0)&&((((p1+p2)+p3)+p4)==0)))] (0:65:0 - 3)
		IfNotBlocked
		reached[0][62] = 1;
		spin_assert(((((int)((P0 *)this)->light)==0)&&((((((int)((P0 *)this)->p1)+((int)((P0 *)this)->p2))+((int)((P0 *)this)->p3))+((int)((P0 *)this)->p4))==0)), "((light==0)&&((((p1+p2)+p3)+p4)==0))", II, tt, t);
		/* merge: assert((t>=17))(65, 63, 65) */
		reached[0][63] = 1;
		spin_assert((((P0 *)this)->t>=17), "(t>=17)", II, tt, t);
		/* merge: printf('We did it in %d seconds\\n',t)(65, 64, 65) */
		reached[0][64] = 1;
		Printf("We did it in %d seconds\n", ((P0 *)this)->t);
		_m = 3; goto P999; /* 2 */
	case 14: // STATE 65 - bridge4.pml:26 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[0][65] = 1;
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

