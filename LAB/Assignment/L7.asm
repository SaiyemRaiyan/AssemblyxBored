INCLUDE "EMU8086.INC"
.model small 
.stack 100h

.data
a db 7h
b db 5h 
msg1 db 13,10, "Maximum is: $"

.code 

 main proc
    mov ax, @data
    mov ds, ax

call SCAN_NUM
MOV BL, CL

call SCAN_NUM

    
    call max
    
    mov ah,4ch
    int 21h 
    
main endp
 
 max proc
    cmp cl,bl
    jg l1  
    
       mov ah,09h
       mov dx, offset msg1
       int 21h
       
       mov ah,2h
       mov dl,bl    ;print bl
       
       add dl,30h ; convert to character
       int 21h 
       
       ret  ; return to control
    
    l1:  
    
       mov ah,09h
       mov dx, offset msg1 ;print msg
       int 21h
       
       mov ah,2h
       mov dl,al
       
       add dl, 30h ;convert to character
       int 21h
        
   ret ; return to control
       
 max endp
 
 exit:
 mov ah,4ch
 int 21h

DEFINE_SCAN_NUM
 
 end