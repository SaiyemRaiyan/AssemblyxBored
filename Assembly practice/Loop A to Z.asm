.model small
.stack 100h

.data
a db 'Print Alphabates: $'

.code
mov ax,@data
mov ds,ax

mov ah,9
lea dx, a
int 21h 

mov ah,2
mov dl,10
int 21h
mov dl,13
int 21h

mov cx,26 ; cx register works with 26 times for any data
mov ah,2
mov dl,'A'; A print first
 
 ;EXECUTE LOOP
 
level1:
int 21h
inc dl   ; increment dl register upto 26
loop level1 ;loop level1 execute

exit: 
mov ah,4ch 
int 21h