org 100h

start:
  mov ah, 1      
  int 21h        
  cmp al, 0Dh    
  je exit        
  mov ah, 2      
  mov dl, al     
  int 21h        
  mov ah, 2      
  mov dl, 0Ah    
  int 21h        
  mov ah, 2      
  mov dl, al     
  mov bl, dl     
  shr bl, 4      
  call print_hex 
  mov dl, bl     
  call print_hex 
  mov ah, 2      
  mov dl, 0Ah    
  int 21h        
  jmp start      

exit:
  mov ah, 4Ch    
  int 21h        

print_hex:
  push bx        
  push ax        
  mov bh, 0      
  mov bl, dl     
  and bl, 0Fh    
  cmp bl, 0Ah    
  jb hex_digit   
  add bl, 7h 
     
hex_digit:
  add bl, 30h    
  mov dl, bl     
  mov ah, 2      
  int 21h        
  pop ax         
  pop bx         
  ret            