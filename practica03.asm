
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h        

;Direccionamiento directo de memoria de programa      
    ;MOV AX,2020h
    ;JMP [0101h]
    
;Direccionamiento relativo de memoria de programa
    ;MOV AX,2020h
    ;JMP [2]

;Direccionamiento indirecto de memoria de programa
    ;MOV AX, offset var
    ;JMP AX 
    ;JMP [2]   
    
    ;MOV AX, 0xAABB
    ;JMP 0106H ;inst
    ;MOV DX, 1111h   
;inst:  ;Etiqueta    
    ;MOV CX, 2222h    
    
    
    ;MOV AX, 0xAABB
    ;CALL inst
    ;MOV DX, 1111h   
;inst:  ;Etiqueta    
    ;MOV CX, 2222h  
    
          
;Etiquetas con JMP    
    ;MOV AX,00
    ;MOV BX,00
    ;MOV CX,01
    
    ;L20: ;etiqueta
    ;ADD AX,01
    ;ADD BX,AX
    ;JMP L20

    ;MOV CX,5
    ;MOV DX,10
;ciclo:
    ;INC DX
    ;DEC CX
    ;JNZ ciclo
    
    
;Instrucciones aritmeticas
    ;MOV BX,offset var
    ;ADD AL,BL   ; AL = AL + BL
    ;ADD CL,44h  ; CL = CL + 44h  
    ;ADD [BX],02h
    
    ;Incrementos
    ;INC BL
    ;INC BX
    
    ;12ab1172h
    MOV AX,12abh
    MOV BX,1172h
    
    ;00000001h
    MOV CX,0000h
    MOV DX,0001h
    ;MOV DX, 0xF000
    
    ADD BX, DX
    ADC AX, CX 

ret
   var DB 25h
end




