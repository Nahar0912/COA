.MODEL SMALL
.STACK 100h
.DATA

.CODE

MAIN PROC

    MOV AL , 4H
    MOV BL , 14H

    OR AL , BL 

  
    MOV AH, 02H
    MOV DL, AL
    INT 21H

EXIT:
    MOV AH, 4CH
    INT 21h 
    
MAIN ENDP
END MAIN