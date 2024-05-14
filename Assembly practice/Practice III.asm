INCLUDE 'EMU8086.INC'

.MODEL SMALL

.STACK 100H

.DATA 
    MSG DB "HELLO WORLD",0
    
.CODE

    MOV AX, @DATA 
    MOV DS, AX
    
    ;print declared string is DS
    LEA SI, MSG
    CALL PRINT_STRING
    
    ; print the next declared string in the next line
    CALL PTHIS    
    DB 0AH, 0DH, "KI KHBR?",0AH,0DH,0
    
    ;take string input
    MOV DX,5
    CALL GET_STRING   
    
    CALL CLEAR_SCREEN
    
    
    ;printing get_string input 
    mov si, di
    call PRINT_STRING 
    PRINTN ""
    PRINTN "Nai"
    PRINT "ki nai?"
    
    ;setting the position of cursor
    GOTOXY 5,5
    ;can print any character
    PUTC 'Y'
    CALL CLEAR_SCREEN
    
    CALL SCAN_NUM
    INC CX
    MOV AX,CX
    CALL PRINT_NUM
    
    EXIT:
    MOV AH, 4CH
    INT 21H
    
    DEFINE_PRINT_STRING
    DEFINE_PTHIS
    DEFINE_GET_STRING
    DEFINE_CLEAR_SCREEN
    DEFINE_SCAN_NUM
    DEFINE_PRINT_NUM 
    DEFINE_PRINT_NUM_UNS 
    
    
END
    