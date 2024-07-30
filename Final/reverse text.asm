.model small
.stack 100h

.data
 a db "Enter text: $"
 b db "reverse text:$"
 c db "empty $"
 
 .code
 
  mov ax, @data
  mov ds, ax
  
  mov ah,9
  lea dx, a
  int 21h 
  
  mov cx,0
  
 input:
   mov ah,1
   int 21h
   cmp al,0dh ; check cret
   je display
   
   mov ah,0
   push ax
   inc cx
   jmp input   
 
 display:
    cmp cx,0h
    je empty_stack 
    
    mov ah,9
    lea dx, b
    int 21h
    
 reverse:
   pop dx
   mov ah,2 
   int 21h
   
   loop reverse
   jmp exit
   
   empty_stack:
   mov ah,9
   lea dx, c 
   int 21h
   
   exit:
   mov ah,4ch
   int 21h