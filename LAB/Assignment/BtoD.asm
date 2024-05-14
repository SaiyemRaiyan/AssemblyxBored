include 'emu8086.inc'
.model small
.stack 100h
  .data
    msg1 db 0ah, 0dh,'Input Binary: $'
    msg2 db 0ah,0dh,'Decimal is $'
.code

 mov ax,@data
 mov ds,ax
 
 lea dx,msg1  ; print msg1
 mov ah,9
 int 21h
 
 mov bh,0 
 mov bl,10d
 mov bx,0

mov ah,1 ;input
  forLoop1:
      int 21h ; calling the loop
      
  cmp al,0dh
  je end_forLoop1
  sub al,30h ;make it 0 -> 30h
  shl bx,1 ;shift left
  or bl,al ; bl = bl+al
  jmp forLoop1
  
  end_forLoop1:
    printn
    printn

    lea dx,msg2  ; print msg2
    mov ah,9
    int 21h
    
    mov ah,2  ; output
    add bl,30h
    mov dl,bl
    int 21h 

  exit:
    mov ah,4ch
    int 21h

end