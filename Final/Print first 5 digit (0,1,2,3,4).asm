.model small
.stack 100h

.code
mov ah,2
mov cx,5
mov dl,30h

_loop:
int 21h
inc dl

loop _loop