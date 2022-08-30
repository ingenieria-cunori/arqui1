
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

    MOV AX,5
    MOV DX,5                
    
    CMP AX, DX
    JE igual
    JMP distinto
    
igual:
    MOV BX, 1 ; Si son iguales
    JMP final
distinto:
    MOV BX, 0 ; Si son distintos
final:     


    MOV AX,5
    MOV DX,5                
    
    CMP AX, DX
    JAE mayor_igual
    JMP menor
    
mayor_igual:
    MOV BX, 1 ; Si son iguales
    JMP final
menor:
    MOV BX, 0 ; Si son distintos
final: 



    MOV AX,5
    MOV DX,5                
    
    CMP AX, DX
    JE igual 
    MOV BX, 0; si son distintos
    JMP final
    
igual:
    MOV BX, 1 ; Si son iguales
    JMP final

final:
ret




