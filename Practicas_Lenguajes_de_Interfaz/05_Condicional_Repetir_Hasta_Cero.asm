; Materia: Lenguajes de Interfaz
; Alumno: Gael Lopez Delgado
; Horario: 9 - 10 am
; Docente: Dr. José Luis Medina Jiménez
; Práctica: 5. Condicionales: repetir hasta cero
; Descripción: Suma los números ingresados hasta que el usuario escriba cero.

INCLUDE Irvine32.inc
; Sección de datos: declara mensajes y variables usados por el programa.
.data
pregunta BYTE "Ingresa un numero (0 para terminar): ",0
resultado BYTE "Suma total: ",0
; Sección de código: contiene las instrucciones que ejecuta el procesador.
.code
; Inicio del procedimiento principal.
main PROC
    xor ebx, ebx
leer:
    mov edx, OFFSET pregunta
    call WriteString
    call ReadInt
    cmp eax, 0
    je terminar
    add ebx, eax
    jmp leer
terminar:
    mov edx, OFFSET resultado
    call WriteString
    mov eax, ebx
    call WriteInt
    call Crlf
    exit
; Fin del procedimiento principal.
main ENDP
END main
