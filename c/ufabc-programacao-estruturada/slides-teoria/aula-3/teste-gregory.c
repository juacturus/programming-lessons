#include <stdio.h>

void pi(int t) {
	int x = 1;
	float res = 0;
	int i;
	for (i=1; i <= t; i++) {
		if (i % 2 == 0) {
			res = res + 1/x;
		} 
		else {
			res = res - 1/x;
		}		
		x = x+2;
	}
	
}

void main(){
	printf("%lf\n", pi(1));
	printf("%lf\n", pi(10));
	printf("%lf\n", pi(100));
	printf("%lf\n", pi(1000));
}