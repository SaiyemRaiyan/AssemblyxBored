include "EMU8086.inc"
.model small

.stack 100h

.code
MAIN PROC
 call SCAN_NUM; CX
 mov al, cl 
 PRINTN
 call SCAN_NUM
 mov bl, cl
 CALL SUMOFSQAURES
 JMP EXIT
 
 MAIN ENDP

SUMOFSQAURES PROC
  mul al
  mov cx, ax
  mov al, bl
  mul bl
  add ax, cx
  call print_num
  RET
SUMOFSQAURES ENDP 
 
 
 EXIT: 
 MOV AH, 4ch
 int 21h
 DEFINE_SCAN_NUM
 DEFINE_PRINT_NUM
 DEFINE_PRINT_NUM_UNS
 END
 