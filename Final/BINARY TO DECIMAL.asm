include 'emu8086.inc'

.model small

.stack 100h

.data
    ARRAY1 DB 10 DUP(?), '$'

.code

MAIN PROC    
    MOV BX, 0
    
    MOV AH, 1
    LOOP1:
    INT 21H
    CMP AL, 0DH
    JE B2D
    SHL BX, 1
    SUB AL, 30H
    OR BL, AL
    JMP LOOP1
    
    B2D:
    MOV AX, BX
    CALL CLEAR_SCREEN
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
    
    
    

    
    