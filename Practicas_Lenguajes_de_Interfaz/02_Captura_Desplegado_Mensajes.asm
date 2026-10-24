; Materia: Lenguajes de Interfaz
; Alumno: Gael Lopez Delgado
; Horario: 9 - 10 am
; Docente: Dr. José Luis Medina Jiménez
; Práctica: 2. Captura y desplegado de mensajes
; Descripción: Solicita el nombre del usuario y muestra un saludo.

INCLUDE Irvine32.inc
; Sección de datos: declara mensajes y variables usados por el programa.
.data
pregunta BYTE "Escribe tu nombre: ",0
saludo BYTE "Hola, ",0
nombre BYTE 50 DUP(0)
; Sección de código: contiene las instrucciones que ejecuta el procesador.
.code
; Inicio del procedimiento principal.
main PROC
    mov edx, OFFSET pregunta
    call WriteString
    mov edx, OFFSET nombre
    mov ecx, SIZEOF nombre
    call ReadString
    mov edx, OFFSET saludo
    call WriteString
    mov edx, OFFSET nombre
    call WriteString
    call Crlf
    exit
; Fin del procedimiento principal.
main ENDP
END main
