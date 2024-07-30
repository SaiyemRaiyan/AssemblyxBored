INCLUDE 'EMU8086.INC'      

.MODEL SMALL
.STACK 100H

.DATA
   n db 4

.CODE
    mov ax, @data
    mov ds,ax
    
    mov ax,25
    
    div n
    
    mov dl,al
    mov dh,ah
    
    mov ah,2
    add dl,30h
    int 21h
    
    mov dl, 20h
    int 21h
    
    mov dl,dh
    add dl,30h
    int 21h
    
    mov ah, 4ch
    int 21h

END