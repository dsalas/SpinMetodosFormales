active proctype coffee2() {
	unsigned B: 31 = 34
	unsigned W: 31 = 36
	unsigned b: 31 = B
	unsigned w: 31 = W
	unsigned t: 31 = B + W
	bit W_oddness, B_oddness
	W_oddness = W & 1
	loop:
		t = b + w
		assert( (w & 1) == W_oddness)
		B_oddness = b & 1
		if
		:: w >= 1 && b >= 1 -> b--; goto loop_fin
		:: b >= 2 -> b--; goto loop_fin
		:: w >= 2 -> w=w-2; b++; goto loop_fin
		:: else -> goto fin
	loop_fin:
		assert( b + w < t)
		assert( (b & 1) != B_oddness)
		goto loop
	fin:
		printf("End\n")
}