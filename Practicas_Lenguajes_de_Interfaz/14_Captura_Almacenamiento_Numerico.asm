; Materia: Lenguajes de Interfaz
; Alumno: Gael Lopez Delgado
; Horario: 9 - 10 am
; Docente: Dr. José Luis Medina Jiménez
; Práctica: 14. Captura y almacenamiento de datos numéricos
; Descripción: Captura tres enteros, los almacena en memoria y los vuelve a mostrar.

INCLUDE Irvine32.inc
; Sección de datos: declara mensajes y variables usados por el programa.
.data
p1 BYTE "Ingresa el numero 1: ",0
p2 BYTE "Ingresa el numero 2: ",0
p3 BYTE "Ingresa el numero 3: ",0
salida BYTE "Valores guardados: ",0
numeros SDWORD 3 DUP(?)
; Sección de código: contiene las instrucciones que ejecuta el procesador.
.code
; Inicio del procedimiento principal.
main PROC
    mov edx, OFFSET p1
    call WriteString
    call ReadInt
    mov numeros, eax
    mov edx, OFFSET p2
    call WriteString
    call ReadInt
    mov numeros+4, eax
    mov edx, OFFSET p3
    call WriteString
    call ReadInt
    mov numeros+8, eax
    mov edx, OFFSET salida
    call WriteString
    mov esi, OFFSET numeros
    mov ecx, 3
mostrar:
    mov eax, [esi]
    call WriteInt
    mov al, ' '
    call WriteChar
    add esi, 4
    loop mostrar
    call Crlf
    exit
; Fin del procedimiento principal.
main ENDP
END main
