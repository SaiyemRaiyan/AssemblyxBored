include 'emu8086.inc'

.model small

.stack 100h

.data


.code

MAIN PROC    
    call SCAN_NUM
    mov ax, cx
    CALL CLEAR_SCREEN
    call SCAN_NUM
    
    
    call maxi
    
    exit:
    mov ah, 4ch
    int 21h
MAIN ENDP

maxi PROC
    cmp ax, cx
    JG greater1
    JMP greater2
    
    greater1:
    PRINT "First input "
    CALL PRINT_NUM
    PRINTN " is greater than second"
    ret 
    
    greater2:
    PRINT "second input " 
    mov ax, cx
    CALL PRINT_NUM
    PRINTN " is greater than FIRST"
    
    RET
    
MAXI ENDP
    DEFINE_CLEAR_SCREEN
    DEFINE_SCAN_NUM
    DEFINE_PRINT_NUM
    DEFINE_PRINT_NUM_UNS
    
    
    

    
    