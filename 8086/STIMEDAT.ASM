   .model small
   .stack
   .code
      mov ah,0h
      mov al,03h
      int 10h

      mov ah,2ch
      int 21h

      mov al,ch
      aam
      mov bx,ax
      call disp
      call disp1

      mov al,cl
      aam
      mov bx,ax
      call disp
      call disp1

      mov al,dh
      aam
      mov bx,ax
      call disp
      mov dl,0ah
      mov ah,02h
      int 21h

      mov dl,0dh
      mov ah,02h
      int 21h

      mov ah,2ah
      int 21h

      mov al,dl
      aam
      mov bx,ax
      call disp
      call disp2

      mov al,dh
      aam
      mov bx,ax
      call disp
      call disp2


      mov ax,cx
      mov dx,0
      mov cx,1000
      div cx
      push dx
      add al,30h
      mov dl,al
      mov ah,02h
      int 21h

      pop ax
      mov cx,100
      mov dx,0
      div cx
      push dx
      add al,30h
      mov dl,al
      mov ah,02h
      int 21h
      pop ax
      aam
      mov bx,ax
      call disp
      mov ah,4ch
      int 21h

     
  disp proc
      mov dl,bh
      add dl,30h
      mov ah,02h
      int 21h

      mov dl,bl
      add dl,30h
      mov ah,02h
      int 21h
      ret
      disp endp

  disp1 proc
      mov dl,':'
      mov ah,02h
      int 21h
      ret
      disp1 endp

  disp2 proc
      mov dl,'/'
      mov ah,02h
      int 21h
      ret
      disp2 endp

      end
     
       
