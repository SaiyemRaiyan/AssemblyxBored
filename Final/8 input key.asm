.model small
.stack 100h

.code
mov ah,1
mov cx,8

input: 
int 21h

loop input