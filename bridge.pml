active proctype bridge () {
	int t  = 0
	bit light = 1
	bit p1 = 1
	bit p2 = 1
	bit p3 = 1
	do
		:: p1 == 1 && p2 == 1 && light == 1 -> t = t + 2 ; p1 = 0; p2 = 0; light = 0; printf("p1 p2 ->\n")
		:: p1 == 1 && p3 == 1 && light == 1 -> t = t + 5 ; p1 = 0; p3 = 0; light = 0; printf("p1 p3 ->\n")
		:: p2 == 1 && p3 == 1 && light == 1 -> t = t + 5 ; p3 = 0; p3 = 0; light = 0; printf("p2 p3 ->\n")
		:: p1 == 0 && light == 0 && (p2 + p3 > 0)  -> t = t + 1; p1 = 1; light = 1; printf("p1 <-\n")
		:: p2 == 0 && light == 0 && (p1 + p3 > 0) -> t = t + 2; p2 = 1; light = 1; printf("p2 <-\n")
		:: p3 == 0 && light == 0 && (p2 + p1 > 0) -> t = t + 5; p3 = 1; light = 1; printf("p3 <-\n")
		:: else -> break;
	od
	printf("We did it in %d seconds\n", t);
}