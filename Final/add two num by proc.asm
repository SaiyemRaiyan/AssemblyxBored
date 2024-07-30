include emu8086.inc
.model small
.stack 100h

.code

main proc 
    
    call scan_num
    printn
    mov ax,cx
    call scan_num
    printn
    
  call sum
  
  call print_num  
    
    exit:
    mov ah,4ch
    int 21h
    
   main endp

sum proc
    add ax,cx
    
    ret
 sum endp

define_scan_num
define_print_num
define_print_num_uns