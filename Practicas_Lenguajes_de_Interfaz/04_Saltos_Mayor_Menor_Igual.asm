; Materia: Lenguajes de Interfaz
; Alumno: Gael Lopez Delgado
; Horario: 9 - 10 am
; Docente: Dr. José Luis Medina Jiménez
; Práctica: 4. Saltos: mayor, menor o igual
; Descripción: Lee dos números y determina su relación usando saltos condicionales.

INCLUDE Irvine32.inc
; Sección de datos: declara mensajes y variables usados por el programa.
.data
p1 BYTE "Ingresa el primer numero: ",0
p2 BYTE "Ingresa el segundo numero: ",0
msgMayor BYTE "El primero es mayor.",0
msgMenor BYTE "El primero es menor.",0
msgIgual BYTE "Los numeros son iguales.",0
; Sección de código: contiene las instrucciones que ejecuta el procesador.
.code
; Inicio del procedimiento principal.
main PROC
    mov edx, OFFSET p1
    call WriteString
    call ReadInt
    mov ebx, eax
    mov edx, OFFSET p2
    call WriteString
    call ReadInt
    cmp ebx, eax
    jg mayor
    jl menor
    mov edx, OFFSET msgIgual
    jmp mostrar
mayor:
    mov edx, OFFSET msgMayor
    jmp mostrar
menor:
    mov edx, OFFSET msgMenor
mostrar:
    call WriteString
    call Crlf
    exit
; Fin del procedimiento principal.
main ENDP
END main
