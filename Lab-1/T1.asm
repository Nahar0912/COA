
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

; add your code here 
MAIN PROC
    MOV BL,5
    ADD BL,'0'
    MOV AL,BL
    
    MOV AH,2
    MOV DL,AL
    INT 21H  
    MAIN ENDP
END MAIN
ret




