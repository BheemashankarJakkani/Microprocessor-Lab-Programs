.model small
.stack
.data
n dw 000ah
res dw 2 dup(0)
.code
mov ax,@data
mov ds,ax
mov ax,n
up:cmp ax,10000
ja d1
cmp ax,1000
ja d2
cmp ax,100
ja d3
cmp ax,000ah
ja d4
add res+2,ax
jmp exit
d1:sub ax,10000
add res,01h
jmp up
d2:sub ax,1000
add res+1,10h
jmp up
d3:sub ax,100
add res+1,01h
jmp up
d4:sub ax,10
add res+2,10
jmp up
exit:mov ah,4ch
int 21h
end

