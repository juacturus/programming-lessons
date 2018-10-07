#include <stdio.h>

int main() {
	
	double num;
	float N[100], half;
	int i;
	
	scanf("%lf", &num);
	N[0] = num;
	printf("N[%d] = %.4lf\n", 0, N[0]);
		
	for(i=1; i<100; i++) {
		num /= 2;
		N[i] = num;
		printf("N[%d] = %.4lf\n", i, N[i]);
	}
	
	return 0;
}
