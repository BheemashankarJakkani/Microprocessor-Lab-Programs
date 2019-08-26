  .model small
  .data
     str db "MADAS$"
     revstr db 10 dup(?)                          
     msg1 db 10,13,"it is palindrome$"
     msg2 db 10,13,"it is not a palindrome$"
     len equ 5

  .code
        mov ax,@data
        mov ds,ax
        mov es,ax
        lea si,str
        lea di,revstr
        mov cx,len
        add si,cx
        dec si

   back:mov al,[si]
        mov [di],al
        dec si
        inc di
        loop back

        lea si,str
        lea di,revstr
        mov cx,len
        cld
        repe cmpsb
        jcxz match
        mov dx,offset msg2
        jmp terminate

 match:mov dx,offset msg1

 terminate:mov ah,09h
           int 21h
           mov ah,4ch
           int 21h
           end





                       
