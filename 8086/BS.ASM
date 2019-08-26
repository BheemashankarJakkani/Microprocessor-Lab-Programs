.model small
.stack
.data
arr dw 4400h,0ffffh,00a1h
len db ($-arr)/2
.code
mov ax,@data
mov ds,ax
mov cl,len
dec cl
up2:mov bl,cl
lea si,arr
up1:mov ax,[si]
add si,0002h
mov dx,[si]
cmp ax,dx
ja down
mov [si],ax
mov [si-2],dx
down:dec bl
jnz up1
loop up2
mov ah,4ch
int 21h
end
