#include <stdio.h>

double fatorial(int n) {
	if (n==0)
		return 1;
	else 
		return fatorial(n-1)*n;
}

int main() {
	int num1, num2;
	double soma, fat1, fat2;
	
	while (1) {
		scanf("%d %d", &num1, &num2);
		soma = fatorial(num1) + fatorial(num2);
		printf("%.0lf\n", soma);
	}
	
	return 0;
}
