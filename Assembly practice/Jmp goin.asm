.model small
.stack 100h

.data
a db 'Jmp $'
b db 'Assembly $'
c db 'Programming $'

.code
 mov ax, @data
 mov ds, ax
 
 mov ah,9   ; TAKE MESSEGE 1 (a)
 lea dx,a
 int 21h
 
 mov ah,2   ;NEW LINE
 mov dl,10
 int 21h
 mov dl,13  ;SPACE REMOVE
 int 21h
  
  ;JUMP CONCEPT
 m:
 mov ah,9
 lea dx,b
 int 21h
 jmp n     ;FINDING JMP n level
 
 n:
 mov ah,9
 lea dx,c
 int 21h
 jmp exit  ;JUMP IS GOING TO EXIT
 
exit:
mov ah,4ch
int 21h

end_if: