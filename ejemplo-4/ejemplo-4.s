# Ejemplo de una funcion hecha en Assembly

.text
.global sumar
.global restar

sumar: 		# resultado =  sumar(int a, int b);
	add %rsi, %rdi
	mov %rdi, %rax
	ret

restar:		# resultado = restar(int a, int b);
	sub %rsi, %rdi
        mov %rdi, %rax
	ret
