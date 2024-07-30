include 'emu8086.inc'

.model small

.stack 100h

.data


.code

MAIN PROC    
    PRINT "ENTER AX: "
    call SCAN_NUM
    mov ax, cx
    CALL CLEAR_SCREEN
    PRINT "ENTER cX: "
    call SCAN_NUM
    
    CALL PRINT1
    
    PRINTN "NOW SWAPPING"
    
    call SWAP1
    
    CALL PRINT1
    
    exit:
    mov ah, 4ch
    int 21h
MAIN ENDP

SWAP1 PROC
    XCHG AX, CX
    
    RET
    
SWAP1 ENDP

PRINT1 PROC
    PRINT "THE VALUE OF AX IS: "
    CALL PRINT_NUM
    PRINTN ""
    PRINT "THE VALUE OF CX IS: "
    XCHG AX, CX
    CALL PRINT_NUM
    PRINTN ""
    XCHG AX, CX
    RET
    
PRINT1 ENDP
    DEFINE_CLEAR_SCREEN
    DEFINE_SCAN_NUM
    DEFINE_PRINT_NUM
    DEFINE_PRINT_NUM_UNS
    
    
    

    
    