	switch (t->back) {
	default: Uerror("bad return move");
	case  0: goto R999; /* nothing to undo */

		 /* PROC bridge */

	case 3: // STATE 5
		;
		((P0 *)this)->light = trpt->bup.ovals[6];
		((P0 *)this)->p2 = trpt->bup.ovals[5];
		((P0 *)this)->p1 = trpt->bup.ovals[4];
		((P0 *)this)->t = trpt->bup.ovals[3];
	/* 2 */	((P0 *)this)->light = trpt->bup.ovals[2];
	/* 1 */	((P0 *)this)->p2 = trpt->bup.ovals[1];
	/* 0 */	((P0 *)this)->p1 = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 7);
		goto R999;

	case 4: // STATE 11
		;
		((P0 *)this)->light = trpt->bup.ovals[6];
		((P0 *)this)->p3 = trpt->bup.ovals[5];
		((P0 *)this)->p1 = trpt->bup.ovals[4];
		((P0 *)this)->t = trpt->bup.ovals[3];
	/* 2 */	((P0 *)this)->light = trpt->bup.ovals[2];
	/* 1 */	((P0 *)this)->p3 = trpt->bup.ovals[1];
	/* 0 */	((P0 *)this)->p1 = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 7);
		goto R999;

	case 5: // STATE 17
		;
		((P0 *)this)->light = trpt->bup.ovals[6];
		((P0 *)this)->p4 = trpt->bup.ovals[5];
		((P0 *)this)->p1 = trpt->bup.ovals[4];
		((P0 *)this)->t = trpt->bup.ovals[3];
	/* 2 */	((P0 *)this)->light = trpt->bup.ovals[2];
	/* 1 */	((P0 *)this)->p4 = trpt->bup.ovals[1];
	/* 0 */	((P0 *)this)->p1 = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 7);
		goto R999;

	case 6: // STATE 23
		;
		((P0 *)this)->light = trpt->bup.ovals[5];
		((P0 *)this)->p3 = trpt->bup.ovals[4];
		((P0 *)this)->p3 = trpt->bup.ovals[3];
		((P0 *)this)->t = trpt->bup.ovals[2];
	/* 1 */	((P0 *)this)->light = trpt->bup.ovals[1];
	/* 0 */	((P0 *)this)->p3 = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 6);
		goto R999;

	case 7: // STATE 29
		;
		((P0 *)this)->light = trpt->bup.ovals[6];
		((P0 *)this)->p4 = trpt->bup.ovals[5];
		((P0 *)this)->p2 = trpt->bup.ovals[4];
		((P0 *)this)->t = trpt->bup.ovals[3];
	/* 2 */	((P0 *)this)->light = trpt->bup.ovals[2];
	/* 1 */	((P0 *)this)->p4 = trpt->bup.ovals[1];
	/* 0 */	((P0 *)this)->p2 = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 7);
		goto R999;

	case 8: // STATE 35
		;
		((P0 *)this)->light = trpt->bup.ovals[6];
		((P0 *)this)->p4 = trpt->bup.ovals[5];
		((P0 *)this)->p3 = trpt->bup.ovals[4];
		((P0 *)this)->t = trpt->bup.ovals[3];
	/* 2 */	((P0 *)this)->light = trpt->bup.ovals[2];
	/* 1 */	((P0 *)this)->p4 = trpt->bup.ovals[1];
	/* 0 */	((P0 *)this)->p3 = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 7);
		goto R999;

	case 9: // STATE 40
		;
		((P0 *)this)->light = trpt->bup.ovals[4];
		((P0 *)this)->p1 = trpt->bup.ovals[3];
		((P0 *)this)->t = trpt->bup.ovals[2];
	/* 1 */	((P0 *)this)->light = trpt->bup.ovals[1];
	/* 0 */	((P0 *)this)->p1 = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 5);
		goto R999;

	case 10: // STATE 45
		;
		((P0 *)this)->light = trpt->bup.ovals[4];
		((P0 *)this)->p2 = trpt->bup.ovals[3];
		((P0 *)this)->t = trpt->bup.ovals[2];
	/* 1 */	((P0 *)this)->light = trpt->bup.ovals[1];
	/* 0 */	((P0 *)this)->p2 = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 5);
		goto R999;

	case 11: // STATE 50
		;
		((P0 *)this)->light = trpt->bup.ovals[4];
		((P0 *)this)->p3 = trpt->bup.ovals[3];
		((P0 *)this)->t = trpt->bup.ovals[2];
	/* 1 */	((P0 *)this)->light = trpt->bup.ovals[1];
	/* 0 */	((P0 *)this)->p3 = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 5);
		goto R999;

	case 12: // STATE 55
		;
		((P0 *)this)->light = trpt->bup.ovals[4];
		((P0 *)this)->p4 = trpt->bup.ovals[3];
		((P0 *)this)->t = trpt->bup.ovals[2];
	/* 1 */	((P0 *)this)->light = trpt->bup.ovals[1];
	/* 0 */	((P0 *)this)->p4 = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 5);
		goto R999;
;
		
	case 13: // STATE 62
		goto R999;

	case 14: // STATE 65
		;
		p_restor(II);
		;
		;
		goto R999;
	}

