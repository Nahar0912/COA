.MODEL SMALL
.STACK 100h
.DATA

.CODE

MAIN PROC

    MOV AX, 1

    OR AX, 1

    AND AX, 0

    XOR AX, 1
     

EXIT:
    MOV AH, 4CH
    INT 21h 
    
MAIN ENDP
END MAIN