; Materia: Lenguajes de Interfaz
; Alumno: Gael Lopez Delgado
; Horario: 9 - 10 am
; Docente: Dr. José Luis Medina Jiménez
; Práctica: 6. Decremento e incremento: estacionamiento
; Descripción: Registra entradas y salidas de vehículos sin superar la capacidad indicada.

INCLUDE Irvine32.inc
; Sección de datos: declara mensajes y variables usados por el programa.
.data
capacidad DWORD 10
ocupados DWORD 0
menu BYTE "1=Entrada, 2=Salida, 0=Terminar: ",0
lleno BYTE "Estacionamiento lleno.",0
vacio BYTE "No hay autos para registrar salida.",0
estado BYTE "Autos estacionados: ",0
; Sección de código: contiene las instrucciones que ejecuta el procesador.
.code
; Inicio del procedimiento principal.
main PROC
ciclo:
    mov edx, OFFSET menu
    call WriteString
    call ReadInt
    cmp eax, 0
    je fin
    cmp eax, 1
    je entrada
    cmp eax, 2
    je salida
    jmp ciclo
entrada:
    mov eax, ocupados
    cmp eax, capacidad
    jae estacionamientoLleno
    inc ocupados
    jmp mostrar
estacionamientoLleno:
    mov edx, OFFSET lleno
    call WriteString
    call Crlf
    jmp ciclo
salida:
    cmp ocupados, 0
    je estacionamientoVacio
    dec ocupados
    jmp mostrar
estacionamientoVacio:
    mov edx, OFFSET vacio
    call WriteString
    call Crlf
    jmp ciclo
mostrar:
    mov edx, OFFSET estado
    call WriteString
    mov eax, ocupados
    call WriteDec
    call Crlf
    jmp ciclo
fin:
    exit
; Fin del procedimiento principal.
main ENDP
END main
