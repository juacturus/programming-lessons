#include <stdio.h>

int main() {
	
	int num;
	double N[100];
	int i;
	
	scanf("%d", &num);
	N[0] = num;
	printf("N[%d] = %.4lf\n", 0, N[0]);
		
	for(i=1; i<100; i++) {
		N[i] = N[i-1] / 2;
		printf("N[%d] = %.4lf\n", i, N[i]);
	}
	
	return 0;
}
