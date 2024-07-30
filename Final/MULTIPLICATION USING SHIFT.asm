include 'emu8086.inc'

.model small

.stack 100h

.data
    ARRAY1 DB 10 DUP(?), '$'

.code

MAIN PROC    
    CALL SCAN_NUM
    MOV AX, CX
    SHL AX, 2
    
    CALL PRINT_NUM
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
    
    
    

    
    