INCLUDE "EMU8086.INC"
.model small
.stack 100h
 .data
    msg1 db 0ah, 0dh,'Factorial of 5 is: $'
.code 
    mov ax, @data
    mov ds,ax
 
    lea dx,msg1
    mov ah,9
    int 21h
 
    mov bh,0 
    mov bl,10d
    mov cx,5
    mov al,1     
 top:
    mul cl
    loop top 
    
    call print_num
    
exit:   
    mov ah,4ch
    int 21h     

    DEFINE_PRINT_NUM
    DEFINE_PRINT_NUM_UNS
    
   
end