org 100h

start:
 
  mov ah, 9
  mov dx, offset prompt
  int 21h

 
  mov si, offset binary
  mov cx, 16  
read_digit:
  mov ah, 1   
  int 21h     
  cmp al, 0Dh 
  je convert  
  cmp al, '0' 
  jb error    
  cmp al, '1' 
  ja error    
  mov [si], al
  inc si      
  loop read_digit 

convert:

  mov cx, 4   
  mov bx, 0   
next_digit:
  mov al, [binary]
  shr al, cl      
  and al, 0Fh     
  cmp al, 0Ah     
  jl hex_digit    
  add al, 7h      
hex_digit:
  add bl, al      
  shl bl, cl      
  add [hex], bl   
  mov bl, 0       
  add si, 1       
  loop next_digit 

  
  mov ah, 9
  mov dx, offset hex_output
  int 21h

  
  mov ah, 4Ch
  int 21h

error:
 
  mov ah, 9
  mov dx, offset error_msg
  int 21h
  jmp start


binary db 16 dup(0)
hex db 8 dup(0)
prompt db 'Enter a binary number of 16 digits or less:', 0Dh, 0Ah, '$'
error_msg db 'Error: illegal character entered. Please try again.', 0Dh, 0Ah, '$'
hex_output db 'The hexadecimal equivalent is:', 0Dh, 0Ah, '$'