active proctype coffee() {
	int b, B = 18
	int w, W = 13
	int t = B + W
	assert( b >= 0 && w >= 0 && b + w > 0 )	
	do
	:: w >= 2 ; w = w - 2; b = b + 1
	:: b >= 2 ; b = b - 1
	:: w >= 1 && b >= 1 ; b = b -1
	:: else -> break
	od
	assert( b + w == 1)
	printf("B = %d -  W = %d\n",b,w);
}