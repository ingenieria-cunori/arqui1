
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

    MOV AH, 01h
    INT 21h
    
    ;---------------------
    
    MOV AH, 01h
    MOV DL, 61h
    INT 21h                           
                          
    ;---------------------                      
                          
    MOV AH, 09h
    MOV DX, offset msg
    INT 21h
    
    ;---------------------
    
    MOV AH, 0Ah
    MOV DX, offset msg2
    INT 21h 
    
    ;---------------------
    
    MOV AH, 0Ah     ;entrada de cadena
    MOV DX, offset msg2
    INT 21h  
    
    MOV AH, 02h     ;salida de caracter
    MOV DL, 10      ;10 ASCII salto de línea
    INT 21h 
    MOV DL, 13      ;retorno de carro
    INT 21h
    
    MOV AH, 09h     ;salida de cadena
    MOV DX, offset msg
    INT 21h
    
    MOV AH, 09h     ;salida de cadena   
    MOV DX, offset msg2 + 2 ;usar msg2 comentada
    INT 21h
    
    ;---------------------
    
    MOV AH, 08h     ;entrada de caracteres sin eco
    INT 21h

ret                                  
    ; agregar $ fin de string
    msg DB "Hola mundo desde Assembly$"
    msg2 DB 25 DUP('1')
    
    ;msg2 DB 25 DUP('$')
end



