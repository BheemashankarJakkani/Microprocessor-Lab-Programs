.model small
.stack
.data
n dw 0004h
r dw 0002h
res dw 0000h
msg db "invalid inputs$"
.code
mov ax,@data
mov ds,ax
mov ax,n
mov bx,r
cmp ax,bx
jc display
call ncr
jmp stop
display:lea dx,msg
mov ax,09h
int 21h
stop:mov ah,4ch
int 21h
ncr proc
cmp ax,bx
je dn1
cmp bx,0000h
je dn1
dec ax
cmp ax,bx
je dn2
cmp bx,0001h
je dn2
push ax
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
dn1:inc res
ret
dn2:inc res
add res,ax
ret
ncr endp
end
