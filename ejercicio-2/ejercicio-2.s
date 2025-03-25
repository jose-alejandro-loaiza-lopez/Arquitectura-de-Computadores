section .data
    format db "El seno del ángulo es: %lf", 10, 0  # Formato para printf
    angulo dq 0.7853981633974483  # 45 grados en radianes (π/4)

section .bss
    resultado resq 1  # Variable para almacenar el resultado

section .text
    global main
    extern printf  # Usaremos printf desde libc

main:
    fld qword [angulo]  # Cargar el ángulo en la pila de la FPU
    fsin                # Calcular el seno del valor en ST(0)
    fstp qword [resultado]  # Guardar el resultado en memoria

    # Llamada a printf
    mov rdi, format   # Formato de impresión
    movq xmm0, qword [resultado]  # Pasar el resultado como argumento (en xmm0)
    call printf       # Llamar a printf

    # Salir del programa
    mov rax, 60      # syscall: exit
    xor rdi, rdi     # código de salida 0
    syscall

