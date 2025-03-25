
.text

.global calculadoraCiclos

calculadoraCiclos:
	# xmm0 funcion (xmm0, rdi, xmm1)
	mulss %xmm1, %xmm0	# SS significa: s (scalar: escalar) y S (single: float)

# Queremos realizar n ciclos (rdi = 5)
# do-while
#ciclos:

	# Codigo

#	dec %rdi
#	cmp $0, %rdi	# Comparacion entre rsi y cero
#	jne ciclos	# Podemos usar jne o jnz arbitrariamente para saltar al numero de ciclos

# while
ciclos:
	cmp $0, %rdi	# Comparacion entre rsi y cero
	je fin	# Podemos usar jne o jnz arbitrariamente

	addss %xmm0, %xmm0	# xmm0 = xmmo + xmm0;

	dec %rdi
	jmp ciclos

fin:

	ret
