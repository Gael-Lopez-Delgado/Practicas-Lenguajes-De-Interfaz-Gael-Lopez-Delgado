; Materia: Lenguajes de Interfaz
; Alumno: Gael Lopez Delgado
; Horario: 9 - 10 am
; Docente: Dr. José Luis Medina Jiménez
; Práctica: 8. Operaciones aritméticas
; Descripción: Realiza suma, resta, multiplicación y división entera.

INCLUDE Irvine32.inc
; Sección de datos: declara mensajes y variables usados por el programa.
.data
p1 BYTE "Primer numero: ",0
p2 BYTE "Segundo numero: ",0
sumaMsg BYTE "Suma: ",0
restaMsg BYTE "Resta: ",0
multiMsg BYTE "Multiplicacion: ",0
divMsg BYTE "Division entera: ",0
errorMsg BYTE "No se puede dividir entre cero.",0
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
    mov ecx, eax
    mov edx, OFFSET sumaMsg
    call WriteString
    mov eax, ebx
    add eax, ecx
    call WriteInt
    call Crlf
    mov edx, OFFSET restaMsg
    call WriteString
    mov eax, ebx
    sub eax, ecx
    call WriteInt
    call Crlf
    mov edx, OFFSET multiMsg
    call WriteString
    mov eax, ebx
    imul eax, ecx
    call WriteInt
    call Crlf
    cmp ecx, 0
    je sinDivision
    mov edx, OFFSET divMsg
    call WriteString
    mov eax, ebx
    cdq
    idiv ecx
    call WriteInt
    call Crlf
    jmp fin
sinDivision:
    mov edx, OFFSET errorMsg
    call WriteString
    call Crlf
fin:
    exit
; Fin del procedimiento principal.
main ENDP
END main
