.MODEL SMALL
.STACK 100h
.DATA
    input DB ?
    promptMsg DB 'Enter a character: $'
    newLine DB 0Dh, 0Ah, '$'
.CODE


MAIN PROC
    MOV AX, @DATA
    MOV DS, AX
    
INPUT_LOOP: 

    MOV AH, 9
    LEA DX, newLine
    INT 21H
    MOV AH, 9
    LEA DX, promptMsg
    INT 21h
        
    MOV AH, 1
    INT 21h
    MOV input, AL 
    
   
    CMP input, 0DH 
    JE END_LOOP
    
    
    LEA DX, newLine
    MOV AH, 9
    INT 21H
    MOV AH, 2 
    MOV DL, input 
    INT 21h 
    
    JMP INPUT_LOOP

END_LOOP:
    MOV AH, 4CH 
    INT 21h 
    
MAIN ENDP
END MAIN