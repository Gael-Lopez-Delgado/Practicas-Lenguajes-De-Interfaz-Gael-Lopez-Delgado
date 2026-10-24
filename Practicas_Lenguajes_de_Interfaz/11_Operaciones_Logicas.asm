; Materia: Lenguajes de Interfaz
; Alumno: Gael Lopez Delgado
; Horario: 9 - 10 am
; Docente: Dr. José Luis Medina Jiménez
; Práctica: 11. Operaciones lógicas
; Descripción: Muestra los resultados de AND, OR y XOR entre dos valores.

INCLUDE Irvine32.inc
; Sección de datos: declara mensajes y variables usados por el programa.
.data
a DWORD 10101010b
b DWORD 11001100b
andMsg BYTE "AND: ",0
orMsg BYTE "OR: ",0
xorMsg BYTE "XOR: ",0
; Sección de código: contiene las instrucciones que ejecuta el procesador.
.code
; Inicio del procedimiento principal.
main PROC
    mov edx, OFFSET andMsg
    call WriteString
    mov eax, a
    and eax, b
    call WriteBin
    call Crlf
    mov edx, OFFSET orMsg
    call WriteString
    mov eax, a
    or eax, b
    call WriteBin
    call Crlf
    mov edx, OFFSET xorMsg
    call WriteString
    mov eax, a
    xor eax, b
    call WriteBin
    call Crlf
    exit
; Fin del procedimiento principal.
main ENDP
END main
