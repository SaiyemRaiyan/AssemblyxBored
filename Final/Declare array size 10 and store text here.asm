.model small
.stack 100h
.data
msg db "Enter text $"
array db 10 dup(?), '$'
newl db 0ah,0dh, '$'

.code
mov ax,@data
mov ds, ax

mov cx,10
mov ah,1
lea si, array

_in:
int 21h
mov [si], al
inc si

loop _in

mov ah,9
lea dx, newl
int 21h
lea dx, array
int 21h

mov ah,4ch
int 21h