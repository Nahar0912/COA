.MODEL SMALL
.STACK 100H
.DATA
.CODE

MAIN PROC 
    
    MOV AL, 'A' 
    
   
    CMP AL, 'A'
    JLE ELSE     
    
 
    MOV CL, '5'
    JMP PRINT_ 
    JMP EXIT
    
ELSE:
  
    MOV CL, '6'
    JMP PRINT_
    JMP EXIT
PRINT_:   
    
    MOV AH, 02H 
    ADD DL, CL
    INT 21H     
    
EXIT:
    MOV AH,4CH 
    INT 21H
    MAIN ENDP
END MAIN