.model small
.stack 100h
   
  .data
    a db ?
    msg1 db 0ah,0dh,'Enter Number: $'
    msg2 db 0ah,0dh,'Not a prime number $'
    msg3 db 0ah,0dh,'Prime Number $'

.code
 mov ax,@data
 mov ds,ax
 
 lea dx,msg1
 mov ah,9
 int 21h
 
 mov bh,0 
 mov bl,10d
 
input:
 mov ah,1
 int 21h
 cmp al,13d
 jne num
 
 jmp check
 
num:
 sub al,30h
 mov cl,al
 mov al,bh
 mul bl
 add al,cl
 mov bh,al
 
 jmp input 
 
check:
 cmp bh,1
 jle not_prime
 
 mov cx,2
 and ax,0
 and dx,0
 
 mov al,bh
 div cx
 
 ;dx:ax / cx = rem at dx, quotient at ax
 mov cx,ax
 
IsPrime:
 cmp cx,2
 jl prime
 and ax,0
 and dx,0
 mov al,bh
 div cx
 dec cx
 cmp dx,0
 je not_prime
 jmp IsPrime
 
not_prime:
 mov ah,2
 mov dl,0ah
 int 21h
 mov dl,0dh
 int 21h
 lea dx,msg2
 mov ah,9
 int 21h
 
 jmp exit
 
Prime:
 mov ah,2
 mov dl,0ah
 int 21h
 mov dl,0dh
 int 21h
 lea dx,msg3
 mov ah,9
 int 21h
 
 jmp exit
 
 
exit:
 mov ah,4ch
 int 21h
 
 end

