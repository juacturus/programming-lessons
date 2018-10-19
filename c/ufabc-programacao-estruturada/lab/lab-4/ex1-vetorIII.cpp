#include <stdio.h>
#include <stdlib.h>

int main() {
	
	// n é o ponteiro para double
	double *n;
	
	n = (double*)malloc(100*sizeof(double));
	
	scanf("%lf", n);
	int i;
	
	for (i=1; i<100; i++) 
		*(n + 1) = *(n + (i - 1)) / 2.00;
		
	for (i=0; i<100; i++)
		printf("N[%d] = %.4lf\n", i, *(n + 1));
		
	return 0;
}
