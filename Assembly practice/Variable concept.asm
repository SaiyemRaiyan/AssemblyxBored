.MODEL
.STACK 100H       

.DATA
msg db 3  ; DEFINED BYTES
msg1 db ? ; UNKNOWN VALUE  

.CODE

  MOV AX, @DATA
  MOV DS, AX
  
  MOV AH, 2 
  ADD msg, 48 ; MSG+48=51=3 (PRINT)
  MOV DL, msg
  INT 21H 
  
  MOV AH, 1 ; USER INPUT
  INT 21H
  MOV msg1, AL ; ALL VALUES IN AL REGSITER BY DEFAULT
  
  MOV AH, 2   ; OUTPUT USER INPUT VALUE
  MOV DL, 10  ; NEW LINE
  INT 21H
  MOV DL, 13  
  INT 21H
  
  MOV AH, 2
  MOV DL, msg1
  INT 21H 
  
EXIT:
  MOV AH, 4CH
  INT 21H

END