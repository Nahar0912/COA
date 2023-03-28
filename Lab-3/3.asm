.MODEL SMALL        
.STACK 100h         
.DATA              
    INPUT_MSG DB 'Enter a number: $'  
.CODE  

         
MAIN PROC 

    MOV AX, @DATA
    MOV DS, AX

    MOV AH, 09h     
    LEA DX, INPUT_MSG 
    INT 21h         

    MOV AH, 01h     
    INT 21h         
    SUB AL, '0'     

    CMP AL, 1       
    JE SUM          

    CMP AL, 2       
    JE SUBTRACT     

    CMP AL, 3       
    JE PRINT        

    MOV AH, 02h     
    MOV DL, 'c'     
    INT 21h         
    JMP END_IF      

SUM:
    MOV AH, 02h     
    MOV DL, '5'     
    INT 21h         
    JMP END_IF      

SUBTRACT:
    MOV AH, 02h     
    MOV DL, '1'     
    INT 21h         
    JMP END_IF      

PRINT:
    MOV AH, 02h     
    MOV DL, AL      
    ADD DL, '0'     
    INT 21h         

END_IF:
    MOV AH, 4CH     
    INT 21h         

MAIN ENDP           
END MAIN            