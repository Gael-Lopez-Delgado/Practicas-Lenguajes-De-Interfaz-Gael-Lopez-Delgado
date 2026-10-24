; Materia: Lenguajes de Interfaz
; Alumno: Gael Lopez Delgado
; Horario: 9 - 10 am
; Docente: Dr. José Luis Medina Jiménez
; Práctica: 15. Manipulación de archivos
; Descripción: Crea un archivo de texto y escribe un mensaje usando Irvine32.

INCLUDE Irvine32.inc
; Sección de datos: declara mensajes y variables usados por el programa.
.data
nombreArchivo BYTE "practica15.txt",0
contenido BYTE "Archivo creado desde MASM con Irvine32.",0
manejador DWORD ?
bytesEscritos DWORD ?
msgOk BYTE "Se escribio el archivo practica15.txt.",0
msgError BYTE "No se pudo crear el archivo.",0
; Sección de código: contiene las instrucciones que ejecuta el procesador.
.code
; Inicio del procedimiento principal.
main PROC
    mov edx, OFFSET nombreArchivo
    call CreateOutputFile
    mov manejador, eax
    cmp eax, INVALID_HANDLE_VALUE
    je errorArchivo
    mov eax, manejador
    mov edx, OFFSET contenido
    mov ecx, SIZEOF contenido - 1
    call WriteToFile
    mov bytesEscritos, eax
    mov eax, manejador
    call CloseFile
    mov edx, OFFSET msgOk
    call WriteString
    call Crlf
    exit
errorArchivo:
    mov edx, OFFSET msgError
    call WriteString
    call Crlf
    exit
; Fin del procedimiento principal.
main ENDP
END main
