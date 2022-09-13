
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h
    
    ;Ejemplo 1
    ;MOV AH, 0   ; Configurando el modo gráfico
    ;MOV AL, 13H ; plantilla 320 x 200 pixeles / 256 colores
    ;INT 10h
    
    ;Ejemplo 2
    ;MOV AH, 0   ; Configurando el modo gráfico
    ;MOV AL, 13H ; plantilla 320 x 200 pixeles / 256 colores
    ;INT 10h
    
    ;MOV AH, 0Ch
    ;MOV AL, 0Fh
    ;MOV CX, 100 
    ;MOV DX, 100
    ;INT 10h 
    
    ;Ejemplo 3 - Trazando una línea vertical
   ; MOV AH, 0   ; Configurando el modo gráfico
   ; MOV AL, 13H ; plantilla 320 x 200 pixeles / 256 colores
    ;INT 10h
    
    ;MOV AH, 0Ch
    ;MOV AL, 0Fh
    ;MOV CX, 10 
    ;MOV DX, 10
    ;INT 10h 
    
    ;linea:
    ;    INC DX
    ;    INT 10h
    ;    CMP DX, 100
    ;    JNE linea   
        
    ;Ejemplo 4 - Trazando una línea horizontal
    ;MOV AH, 0   ; Configurando el modo gráfico
    ;MOV AL, 13H ; plantilla 320 x 200 pixeles / 256 colores
    ;INT 10h
    
    ;MOV AH, 0Ch
    ;MOV AL, 0Fh
    ;MOV CX, 10 
    ;MOV DX, 10
    ;INT 10h 
    
    ;linea:
    ;    INC CX
    ;    INT 10h
    ;    CMP CX, 100
    ;    JNE linea    
        
    
    ;Ejemplo 5 - Trazando una línea diagonal con cambio de color
    ;MOV AH, 0   ; Configurando el modo gráfico
    ;MOV AL, 13H ; plantilla 320 x 200 pixeles / 256 colores
    ;INT 10h
    
    ;MOV AH, 0Ch
    ;MOV AL, 00h
    ;MOV CX, 10 
    ;MOV DX, 10
    ;INT 10h 
    
    ;linea:
    ;    INC CX
    ;    INC DX 
    ;    INC AL
    ;    INT 10h
    ;    CMP CX, 100
    ;    JNE linea 
    
    ;Ejemplo 6 - Imprimiendo en pantalla caracteres
    ;MOV AH, 0Ah   ; Configurando el modo gráfico
    ;MOV AL, 48h ; caracter H
    ;MOV CX, 02h
    ;INT 10h
    
    ;Ejemplo 7 - Imprimiendo un caracter en posición definida              
    MOV AH, 00h ; Configurando el modo gráfico
    MOV AL, 13h ; plantilla 320 x 200 pixeles / 256 colores
    INT 10h 
    MOV AH, 02h ; Asignando posición del cursor
    MOV DH, 10  ; Posición de fila
    MOV DL, 10  ; Posición de columna
    INT 10h
    MOV AH, 0Ah ; Escribiendo caracter en la posición del cursor
    MOV AL, 48h ; Caracter ASCII 48h = 'H'
    MOV CX, 2   ; Definiendo la cantidad de veces a repetir
    INT 10h
    
ret




