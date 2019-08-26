.model small
.data
    bufo db "The BIOS date is : $"
    buf db 8 dup(0), '$'

.code

start :
    mov ax, data
    mov ds, ax
    mov es, ax
    mov ax, 0ffffh
    mov ds, ax
    mov si, 0005h
    mov di, offset buf
    cld
    mov cx, 08h
next :
    lodsb
    stosb
    loop next

    mov ah, 09h
    mov bx, data
    mov ds, bx
    lea dx, bufo
    int 21h

    lea dx, buf
    int 21h

    mov ax, 4c00h
    int 21h
    end start
    end
