; Materia: Lenguajes de Interfaz
; Alumno: Gael Lopez Delgado
; Horario: 9 - 10 am
; Docente: Dr. José Luis Medina Jiménez
; Práctica: 12. Desplazamiento y rotación
; Descripción: Ejecuta SHL, SHR, ROL y ROR sobre un byte.

INCLUDE Irvine32.inc
; Sección de datos: declara mensajes y variables usados por el programa.
.data
valor BYTE 10000110b
msgSHL BYTE "SHL: ",0
msgSHR BYTE "SHR: ",0
msgROL BYTE "ROL: ",0
msgROR BYTE "ROR: ",0
; Sección de código: contiene las instrucciones que ejecuta el procesador.
.code
; Inicio del procedimiento principal.
main PROC
    mov edx, OFFSET msgSHL
    call WriteString
    mov al, valor
    shl al, 1
    movzx eax, al
    call WriteBin
    call Crlf
    mov edx, OFFSET msgSHR
    call WriteString
    mov al, valor
    shr al, 1
    movzx eax, al
    call WriteBin
    call Crlf
    mov edx, OFFSET msgROL
    call WriteString
    mov al, valor
    rol al, 1
    movzx eax, al
    call WriteBin
    call Crlf
    mov edx, OFFSET msgROR
    call WriteString
    mov al, valor
    ror al, 1
    movzx eax, al
    call WriteBin
    call Crlf
    exit
; Fin del procedimiento principal.
main ENDP
END main
