active proctype for() {
	int N = 10;
	int sum = 0;
	int i = 0;
	for (i : 1 .. N)
		sum = sum + 1
	rof
	printf("%d\n", sum);
}