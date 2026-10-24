; Materia: Lenguajes de Interfaz
; Alumno: Gael Lopez Delgado
; Horario: 9 - 10 am
; Docente: Dr. José Luis Medina Jiménez
; Práctica: 9. PUSH y POP
; Descripción: Guarda registros en la pila y recupera sus valores.

INCLUDE Irvine32.inc
; Sección de datos: declara mensajes y variables usados por el programa.
.data
msg BYTE "Valor recuperado: ",0
; Sección de código: contiene las instrucciones que ejecuta el procesador.
.code
; Inicio del procedimiento principal.
main PROC
    mov eax, 25
    mov ebx, 40
    push eax
    push ebx
    xor eax, eax
    xor ebx, ebx
    pop ebx
    pop eax
    mov edx, OFFSET msg
    call WriteString
    call WriteDec
    call Crlf
    mov edx, OFFSET msg
    call WriteString
    mov eax, ebx
    call WriteDec
    call Crlf
    exit
; Fin del procedimiento principal.
main ENDP
END main
