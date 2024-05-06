.MODEL SMALL
.STACK 100H

.CODE
     MOV AH, 1
     INT 21H        ; INPUT 1
     MOV BL, AL 
      
     MOV AH, 1
     INT 21H        ; INPUT 2
     MOV BH, AL   
     
     MOV AH, 1
     INT 21H        ; INPUT 3
     MOV CL, AL
     
     MOV AH, 2
     MOV DL, 10     ; NEW LINE WITH SPACE
     INT 21H 
     MOV DL, 0DH    ; SPACE REMOVE
     INT 21H

     
     MOV AH, 2
     MOV DL, BH     ; OUTPUT FOR SHOWING K
     INT 21H
     
EXIT:
      MOV AH, 4CH         ; EXIT
      INT 21H     