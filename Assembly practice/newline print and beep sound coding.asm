.model small
.stack 100h

.code
mov ah,1   ; input 1
int 21h
mov bl,al

mov ah,2   ;newline for input 1
mov dl,10
int 21h
mov dl,13
int 21h

mov ah,1   ; input 2
int 21h
mov bh,al

mov ah,2   ;newline for input 2
mov dl,10
int 21h
mov dl,13
int 21h

mov ah,2   ; output 1
mov dl,bl
int 21h

mov ah,2   ;newline for output 2
mov dl,10
int 21h
mov dl,13
int 21h

mov ah,2   ; output 2
mov dl,bh
int 21h
    
    
;BEEP SOUND

mov ah,2
mov dl,07  ; ASCII code for beep = 007
int 21h


exit:
mov ah,4ch
int 21h
