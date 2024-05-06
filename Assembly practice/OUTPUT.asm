.model small
.stack 100h
.code

mov ah,1
int 21h
mov bl,al

mov ah,2
mov dl,bl
int 21h

exit:
mov ah, 4ch
int 21h

end