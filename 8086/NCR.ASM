.model small
.stack
.data
   n db 5
   r db 3
   res db ?

.code
  mov ax,@data
  mov ds,ax

  mov al,n
  mov bl,r
  call ncr
  mov al,res
  aam
  mov bx,ax
  call disp
  mov ah,4ch
  int 21h

ncr proc
  cmp bl,0
  jne L1
  add res,1
  ret

L1:cmp bl,al
   jne L2
   add res,1
   ret

L2:cmp bl,1
   jne L3
   add res,al
   ret

L3:dec al
   cmp bl,al
   jne L4
   inc al
   add res,al
   ret

L4:push ax
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
    mov dl,30h
    mov ah,02h
    int 21h
    mov dl,bl
    add dl,30h
    mov ah,02h
    int 21h
disp endp
end
