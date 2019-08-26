.model small
.stack
.data
  arr dw 9999h,9999h,9999h,9999h
  len dw ($-arr)/2
  res db 00h,00h,00h
.code
  mov ax,@data
  mov ds,ax
  lea si,arr
  mov cx,len
  dec len
  mov bx,[si]
up:inc si
  inc si
  mov dx,[si]
  mov al,bl
  add al,dl
  daa
  mov bl,al
  mov al,bh
  adc al,dh
  daa
  mov bh,al
  lea di,res
  mov ah,[di]
  adc ah,00h
  mov [di],ah
  loop up
  inc di
  mov [di],bh
  inc di
  mov [di],bl
  mov ah,4ch
  int 21h
  end
