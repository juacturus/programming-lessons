#include <stdio.h>
#include <stdlib.h>
#include <time.h>

int main() {
	
	int linha, i, j;
	double M[12][12], soma=0.0;
	char operacao;
	srand(time(NULL));
	
	scanf("%d %c", &linha, &operacao);
	for (i=0; i<12; j++) {
		for (j=0; j<12; j++) {
			//scanf("%lf", &M[i][j]);
			M[i][j] = rand()%100;
			if (linha == i) {
				soma += M[i][j];
			}
		}
	}
	
	if (operacao == 'S') 
		printf("%.1lf\n", soma);
	else if (operacao == 'M') 
		printf("%.1lf\n", soma/12.0);
	
	return 0;
}
