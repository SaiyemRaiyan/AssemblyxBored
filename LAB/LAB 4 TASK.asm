INCLUDE 'EMU8086.INC'      

.MODEL SMALL
.STACK 100H

.DATA
STR1 DB "This is print string proc", 0


.CODE
MOV AX, @DATA
MOV DS, AX

LEA SI, STR1  ; LOAD OFFSET OF THE STRING TO SI TO PRINT
CALL PRINT_STRING

CALL PTHIS    ;PRINT THE STRING DECLARED IN THE CODE SEGMENT
DB 0AH, 0DH, "This is PHIS", 0AH, 0DH, 0
   
MOV DX,6   ; PLACE THE INPUT BUFFER SIZE
CALL GET_STRING   ; INPUT STRING

CALL CLEAR_SCREEN ;CLEAR THE SCREEN

CALL SCAN_NUM  ; GET ANY DECIMAL NUMBER(CAN BE MULTIDIGIT)

MOV AX,0       
ADD AX, CX
CALL SCAN_NUM


ADD AX,CX   ; ADD TWO INPUT NUMBERS

       
CALL PTHIS
DB 0AH, 0DH, 0

CALL PRINT_NUM_UNS   ; PRINT NUM UNSIGNED
   
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