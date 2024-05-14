.model small

.stack 100h

.code
    mov ah,1
    int 21h
    mov bl, al
    int 21h
    mov bh, al
    int 21h
    mov cl, al
    int 21h
    mov ch, al
    
    ;output
    ;newline  
    mov ah,2
    mov dl, 10
    int 21h
    mov dl, 0dh
    int 21h
    
    
    mov dl, bh
    int 21h
    mov dl, cl
    int 21h 
    
;exit
mov ah, 4ch
int 21h