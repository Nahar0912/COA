.MODEL SMALL
.STACK 100h
.DATA

.CODE

MAIN PROC

    MOV DL, 'F'
    OR DL, 20h
    
    MOV AH, 02h
    INT 21h

EXIT:
    MOV AH, 4CH
    INT 21h 
    
MAIN ENDP
END MAIN