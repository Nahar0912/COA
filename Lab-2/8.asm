.MODEL SMALL
.STACK 100h
.DATA
    prompt DB 'Enter a character: $'
.CODE
MAIN PROC
    MOV AX, @DATA
    MOV DS, AX

   
    MOV AL, 3 
    
    CMP AL, 2
    JLE ELSE
    CMP AL, 9
    JGE ELSE
    
    
    MOV AH, 9
    LEA DX, prompt
    INT 21h
    
    MOV AH, 1
    INT 21h
    MOV DL, AL
    MOV AH, 2
    INT 21h
    
    JMP END_IF

    
ELSE:

    MOV AH, 1
    INT 21h

    CMP AL, 'a'
    JL PRINT_N 
    
    CMP AL, 'z'
    JG CHECK_UPPERCASE
    JMP PRINT_C
 
 
CHECK_UPPERCASE:

    CMP AL, 'A'
    JL PRINT_N 
    
    CMP AL, 'Z'
    JG PRINT_N
    JMP PRINT_C

    
PRINT_C:
   
    MOV AH, 02H
    MOV DL, 'c'
    INT 21h
    
    JMP END_IF
 
    
PRINT_N:
   
    MOV AH, 02H
    MOV DL, 'n'
    INT 21h

    
END_IF:
    MOV AH, 4CH
    INT 21h

    
MAIN ENDP
END MAIN