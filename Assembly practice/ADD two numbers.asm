.model small
.stack 100h

.data
  a db 'Input first digit: $'
  b db 'Input second digit: $'
  c db 'Sum is: $'
  
.code
  mov ax, @data
  mov ds, ax
  
  mov ah, 9
  lea dx, a ;input string 1
  int 21h
   
  
  mov ah,1 
  int 21h
  mov bl, al
  
  mov ah,2
  mov dl,10
  int 21h
  mov dl,13
  int 21h
  
  
  mov ah,9 
  lea dx, b ;input string 2
  int 21h
  
  mov ah,1   
  int 21h
  mov bh, al
  
  mov ah,2
  mov dl,10
  int 21h
  mov dl,13
  int 21h  
  
  mov ah,9
  lea dx,c  ;input string 3
  int 21h 
  
 
  add bl,bh ; bl = bl+bh
  sub bl,48
  
  mov ah,2 ; OUTPUT
  mov dl,bl
  int 21h
  
  
exit:
mov ah,4ch
int 21h

end_if: