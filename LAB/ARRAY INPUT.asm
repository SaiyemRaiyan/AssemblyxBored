.MODEL SMALL
.STACK 100H

.DATA
    V1 DB 35H
    K EQU 0
    ARRAY1 DB 1,2,3,4,5
    ARRAY2 DB 4 DUP(?)
    VAR1 DW 'HELLO!$',0


.CODE

    MOV AX, @DATA
    MOV DS, AX   ;STORING AT DATA SEGMENT
           
   
    MOV AH, 1     ; INPUTS
    INT 21H
    MOV ARRAY2[0],AL
   
    MOV AH, 1
    INT 21H
    MOV ARRAY2[1],AL
   
    MOV AH, 1
    INT 21H
    MOV ARRAY2[2],AL  
   
    MOV AH,2     ; OUTPUT
    MOV DL,10    ; NEW LINE
    INT 21H
    MOV DL, 0DH  ; CURSOR
    INT 21H
   
   
    MOV DL, V1   ;INPUT ASCII VALUE OF 35
    MOV AH,2
    INT 21H
   
    MOV AH,2     ; OUTPUT BLOCK
    MOV DL,10    ; NEW LINE
    INT 21H
    MOV DL, 0DH  ; CURSOR 
    INT 21H
   
   
    LEA DX, VAR1  ; PRINT STRING
    MOV AH,9
    INT 21H    
   
   
    MOV AH,2     ; OUTPUT BLOCK
    MOV DL,10    ; NEW LINE
    INT 21H
    MOV DL, 0DH  ; CURSOR SOLVE
    INT 21H
   
    MOV DL, ARRAY2[0]  ; OUTPUTS
    INT 21H
   
    MOV DL, ARRAY2[1]
    INT 21H
   
    MOV DL, ARRAY2[2]
    INT 21H
   
   
EXIT:
    MOV AH, 4CH
    INT 21H
