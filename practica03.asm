
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h        

;Direccionamiento directo de memoria de programa      
    MOV AX,2020h
    JMP [0101h]
    
;Direccionamiento relativo de memoria de programa
    MOV AX,2020h
    JMP [2]

;Direccionamiento indirecto de memoria de programa
    MOV AX, offset var
    JMP AX 
    JMP [2]   
    
    MOV AX, 0xAABB
    JMP 0106H ;inst
    MOV DX, 1111h   
inst:  ;Etiqueta    
    MOV CX, 2222h    
    
    
    MOV AX, 0xAABB
    CALL inst2
    MOV DX, 1111h   
inst2:  ;Etiqueta    
    MOV CX, 2222h  
    
          
;Etiquetas con JMP    
    MOV AX,00
    MOV BX,00
    MOV CX,01
     
    ; Bucle infinito 
    ;L20: ;etiqueta
    ;ADD AX,01
    ;ADD BX,AX
    ;JMP L20

    
    
;Instrucciones aritmeticas
    ;suma de registros
    MOV AX,05h
    MOV BX,05h
    ADD AX,BX ;     equivalente AX = AX + BX       AX+=BX   
    
    ;suma inmediata
    ADD AX,01h
    
    ;Suma de memoria a registro
    
    MOV DI,offset var2
    MOV AL,0
    ADD AL,[DI]
    ADD AL,[DI + 1]
             
    ;MOV BX, offset var
    ;ADD AX, var2
    ;MOV CX,[BX]
    ;ADD AL,[BX]
    
    
    ;Suma de incremento
    INC AX   ; equivalente AX = AX + 1      AX+= 1
    
    
    ;Suma con acarreo
    MOV AX,0xFFFF
    MOV CX,0xBCFF
    MOV BX,0xFFFF
    MOV DX,0xFFAB
    ADD AX,CX
    ADC BX,DX  
    
    
    ;Resta entre registros
    SUB BX,CX   ; BX = BX - CX
                          
    ;resta directa
    SUB BX,24h
    
    
    ;resta con decremento
    DEC BX      ; BX = BX - 1       BX-=1                      
    
    ;Resta con acarreo
    MOV AX,0xFFFF
    MOV CX,0xBCFF
    MOV BX,0xFFFF
    MOV DX,0xFFAB
    SUB AX,CX
    SBB BX,DX ; considerando el acarreo previo

ret
   var DB 25h
   var2 DW 10b    ;dimensión de 8 bits  DB
   ;var2 DW 10b   ;word (palabra) 16bits
end




