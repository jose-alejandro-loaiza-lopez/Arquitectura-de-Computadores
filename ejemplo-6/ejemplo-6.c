#include <stdio.h>
#include <stdlib.h>

float sumar(float a, float b) {
	return a + b;
}

int main(int numArgs, char ** arrayArgs) {
	float numero1 = 0.1F;
	float numero2 = 0.2F;
	float resultado;

	resultado = sumar(numero1, numero2);

	printf("\r\n%f +  %f = %f\r\n", numero1, numero2, resultado);

	exit(EXIT_SUCCESS);
}
