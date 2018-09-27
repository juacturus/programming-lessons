#include <stdio.h>
#include <stdlib.h>
#include <time.h>

int main() {
	double A[100];
	int i;
	
	srand(time(NULL));
	
	for(i=0; i<100; i++) {
		A[i] = rand()%200;
		if (A[i] <= 10) {
			printf("A[%d] = %.1lf\n", i, A[i]);
		}
		
	}
	
	return 0;
}
