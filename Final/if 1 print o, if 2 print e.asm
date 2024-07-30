.model small
.stack 100h

.code 

mov ah,1
mov cx,10
int 21h

cmp al, '1'
je print_o

cmp al,32h
je print_e

jmp exit

print_o:
mov ah,2
mov dl, 'o'
int 21h

jmp exit

print_e:
mov ah,2
mov dl, 'e'
int 21h

exit:
mov ah,4ch
int 21h

end