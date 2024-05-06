.model small
.stack 100h
.code
 mov ah, 1 ; input 1
 int 21h
 mov bl,al ; take bl register
 
 mov ah, 1 ; input 2  
 int 21h
 mov bh,al ; take bh register 
 
 mov ah,2 ; output 1(display)
 mov dl, bl; bl data in dl
 int 21h
 
 mov ah,2 ; output 2(display)
 mov dl, bh
 int 21h

exit:
mov ah, 4ch
int 21h

END