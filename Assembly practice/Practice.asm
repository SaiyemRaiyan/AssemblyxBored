.MODEL SMALL

.STACK 100H

.CODE
      MOV AH,2
      ADD AH,5
      MOV AL,3
      SUB AH,AL
      
      INC BL
      DEC DH
      
MOV AH, 4CH
INT 21H
