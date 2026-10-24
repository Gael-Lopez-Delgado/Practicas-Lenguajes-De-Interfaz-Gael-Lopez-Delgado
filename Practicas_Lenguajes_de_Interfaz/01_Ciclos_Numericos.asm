; Materia: Lenguajes de Interfaz
; Alumno: Gael Lopez Delgado
; Horario: 9 - 10 am
; Docente: Dr. José Luis Medina Jiménez
; Práctica: 1. Ciclos numéricos
; Descripción: Muestra una secuencia numérica usando un ciclo.

INCLUDE Irvine32.inc
; Sección de datos: declara mensajes y variables usados por el programa.
.data
mensaje BYTE "Contador: ",0
; Sección de código: contiene las instrucciones que ejecuta el procesador.
.code
; Inicio del procedimiento principal.
main PROC
    mov ecx, 10
    mov eax, 1
ciclo:
    mov edx, OFFSET mensaje
    call WriteString
    call WriteDec
    call Crlf
    inc eax
    loop ciclo
    exit
; Fin del procedimiento principal.
main ENDP
END main
