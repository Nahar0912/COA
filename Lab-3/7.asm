.MODEL SMALL
.STACK 100H
.DATA
    String DB 6 
.CODE

MAIN PROC

    MOV AX,@DATA
    MOV DS,AX

    MOV AH,0AH 
    MOV DX,OFFSET String
    INT 21H 
EXIT:
    MOV AH, 4CH 
    INT 21H 

MAIN ENDP