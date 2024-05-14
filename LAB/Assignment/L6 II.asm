INCLUDE "EMU8086.INC"
.model small
.stack 100h

.code

 call SCAN_NUM; CX
 mov ax, cx 
 PRINTN
 
 SHR ax,1       ;case of 4
 call PRINT_NUM     ; First division
 PRINTN
  
 SHR ax,1
 call PRINT_NUM  ; Second division
 PRINTN 
 
 SHR ax,1
 call PRINT_NUM  ; Third division
 PRINTN
 
 SHR ax,1
 call PRINT_NUM  ; Forth division
 
 EXIT: 
 mov ah, 4ch
 int 21h 
 
 DEFINE_SCAN_NUM
 DEFINE_PRINT_NUM
 DEFINE_PRINT_NUM_UNS
 
end