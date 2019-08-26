.model small
.stack
.data
m db "00:00:00$"
.code
mov ax,@data
mov ds,ax
mov ah,2ch
int 21h
mov al,ch
aam
or ax,3030h
mov m[0],ah
mov m[1],al
mov al,dh
aam
or ax,3030h
mov m[6],ah
mov m[7],al
lea dx,m
mov ah,09h
int 21h
mov ah,4ch
int 21h
end

