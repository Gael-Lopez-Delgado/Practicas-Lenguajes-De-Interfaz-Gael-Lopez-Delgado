; Materia: Lenguajes de Interfaz
; Alumno: Gael Lopez Delgado
; Horario: 9 - 10 am
; Docente: Dr. José Luis Medina Jiménez
; Práctica: 10. Obtención de una cadena decimal
; Descripción: Lee un entero y muestra su representación decimal.

INCLUDE Irvine32.inc
; Sección de datos: declara mensajes y variables usados por el programa.
.data
pregunta BYTE "Ingresa un numero entero: ",0
salida BYTE "Representacion decimal: ",0
; Sección de código: contiene las instrucciones que ejecuta el procesador.
.code
; Inicio del procedimiento principal.
main PROC
    mov edx, OFFSET pregunta
    call WriteString
    call ReadInt
    mov ebx, eax
    mov edx, OFFSET salida
    call WriteString
    mov eax, ebx
    call WriteInt
    call Crlf
    exit
; Fin del procedimiento principal.
main ENDP
END main
