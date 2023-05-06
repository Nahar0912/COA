.MODEL SMALL
.STACK 100h
.DATA

.CODE

MAIN PROC

    MOV DX, 5

    MOV AH , 1H   
    
    INT 21H
    AND AL, 0FH
    MOV CL, AL

    SHR DX, CL

    MOV AH, 2H
    INT 21H

    MOV AH, 4CH
    INT 21h 
    
MAIN ENDP
END MAIN