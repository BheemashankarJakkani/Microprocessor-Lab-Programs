   .model small 
   .code
      mov ax,@data
      mov ds,ax

      mov ah,0h
      mov al,03h
      int 10h

      mov ah,2ah
      int 21h

      mov al,dl
      aam
      mov bx,ax
      call disp
      call displ

      mov al,dh
      aam
      mov bx,ax
      call disp
      call displ


      add cx,0f830h
      mov ax,cx
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

  displ proc
      mov dl,'/'
      mov ah,02h
      int 21h
      ret
      displ endp
      end
     
       
