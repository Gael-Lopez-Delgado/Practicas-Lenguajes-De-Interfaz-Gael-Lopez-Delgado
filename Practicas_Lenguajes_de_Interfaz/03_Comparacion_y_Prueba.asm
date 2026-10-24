; Materia: Lenguajes de Interfaz
; Alumno: Gael Lopez Delgado
; Horario: 9 - 10 am
; Docente: Dr. José Luis Medina Jiménez
; Práctica: 3. Comparación y prueba
; Descripción: Compara dos valores y usa TEST para revisar un bit.

INCLUDE Irvine32.inc
; Sección de datos: declara mensajes y variables usados por el programa.
.data
a DWORD 12
b DWORD 7
mayorMsg BYTE "A es mayor que B.",0
otroMsg BYTE "A no es mayor que B.",0
bitMsg BYTE "El bit menos significativo de A esta encendido.",0
; Sección de código: contiene las instrucciones que ejecuta el procesador.
.code
; Inicio del procedimiento principal.
main PROC
    mov eax, a
    cmp eax, b
    jg esMayor
    mov edx, OFFSET otroMsg
    call WriteString
    call Crlf
    jmp probar
esMayor:
    mov edx, OFFSET mayorMsg
    call WriteString
    call Crlf
probar:
    mov eax, a
    test eax, 1
    jz fin
    mov edx, OFFSET bitMsg
    call WriteString
    call Crlf
fin:
    exit
; Fin del procedimiento principal.
main ENDP
END main
