; Materia: Lenguajes de Interfaz
; Alumno: Gael Lopez Delgado
; Horario: 9 - 10 am
; Docente: Dr. José Luis Medina Jiménez
; Práctica: 7. Validación de formato
; Descripción: Comprueba que una entrada tenga exactamente cinco dígitos numéricos.

INCLUDE Irvine32.inc
; Sección de datos: declara mensajes y variables usados por el programa.
.data
pregunta BYTE "Ingresa exactamente 5 digitos: ",0
correcto BYTE "Formato correcto.",0
incorrecto BYTE "Formato incorrecto.",0
buffer BYTE 20 DUP(0)
; Sección de código: contiene las instrucciones que ejecuta el procesador.
.code
; Inicio del procedimiento principal.
main PROC
    mov edx, OFFSET pregunta
    call WriteString
    mov edx, OFFSET buffer
    mov ecx, SIZEOF buffer
    call ReadString
    cmp eax, 5
    jne invalido
    mov esi, OFFSET buffer
    mov ecx, 5
validar:
    mov al, [esi]
    cmp al, '0'
    jb invalido
    cmp al, '9'
    ja invalido
    inc esi
    loop validar
    mov edx, OFFSET correcto
    jmp mostrar
invalido:
    mov edx, OFFSET incorrecto
mostrar:
    call WriteString
    call Crlf
    exit
; Fin del procedimiento principal.
main ENDP
END main
