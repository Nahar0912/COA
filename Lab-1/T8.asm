
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

; add your code here
MAIN PROC
    
    MOV AH, 1
    INT 21h
   
    CMP AL, 'a'
    JE PERFORM_A_OP
   
    CMP AL, 'b'
    JE PERFORM_B_OP
    
   
    JMP END_IF

PERFORM_B_OP:
    MOV AL, 3
    MOV BL, 2
    SUB AL, BL
    ADD AL, '0'

    MOV AH, 2
    MOV DL, AL
    INT 21h
    JMP END_IF

PERFORM_A_OP:
    MOV AL, 3
    MOV BL, 2
    ADD AL, BL
    ADD AL, '0'

    MOV AH, 2
    MOV DL, AL
    INT 21h

END_IF:
    MOV AH, 4CH
    INT 21h

MAIN ENDP
END MAIN
ret




