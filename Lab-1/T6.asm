
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

; add your code here
MAIN PROC                 
   
    MOV AH, 1 
    INT 21H   
    MOV BL,AL 
    SUB BL, '0' 
    
    
    MOV AH, 1 
    INT 21H   
    MOV CL,AL 
    SUB CL, '0' 
              
   
    SUB BL, CL    
    
    
    MOV AL, BL
    ADD AL, '0'          
    
    
 
    MOV AH, 2 
    MOV DL,AL
    INT 21H 
    
    MOV AH,4CH
    INT 21H
    MAIN ENDP
       
END MAIN
ret




