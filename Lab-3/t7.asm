.MODEL SMALL
.STACK 100h
.DATA

.CODE

MAIN PROC   

   
    MOV AX, 0001h

    SHR AX, 1
    
    MOV AH, 4CH
    INT 21h 
    
MAIN ENDP
END MAIN