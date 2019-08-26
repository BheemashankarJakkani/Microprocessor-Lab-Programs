.model small
.stack
.data
n db 5
r db 3
res db 0

.code
mov ax,@data
mov ds,ax
mov al,n
mov bl,r

call ncr
MOV AL,RES
aam
mov bx,ax
call disp
mov ah,4ch
int 21h

ncr proc
 cmp bl,0
 jne l1
 mov res,01
 ret

l1:cmp bl,al
   jne l2
   mov res,01
   ret

l2:cmp bl,01
   jne l3
   mov res,al
   ret
l3:dec al
   cmp bl,al
   jne l4
   inc al
   mov res,al
   ret
l4:push ax
   push bx
   call ncr
   pop bx
   pop ax

   dec bx

   push ax
   push bx
   call ncr
   pop bx
   pop ax
   ret
ncr endp

disp proc
   mov dl,bh
   add dl,30h
   mov ah,02h
   int 21h

   mov dl,bl
   add dl,30h
   mov ah,02h
   int 21h
disp endp
  end





