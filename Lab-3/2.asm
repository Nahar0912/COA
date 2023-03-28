.MODEL SMALL        
.STACK 100h         
.DATA              
.CODE              

MAIN PROC           
    MOV AH, 02h     
    MOV BL, 'b'     
    MOV DL, 2       
    MOV CL, 1       

    CMP DL, 3       
    JGE END_IF      
    
    CMP CL, 3       
    JGE END_IF      
    
    MOV DL, BL      
    INT 21h         
    
END_IF:
    MOV AH, 4CH     
    INT 21h         

MAIN ENDP           
END MAIN            