.model small
.data
 arr dw 5558h,4447h,7885h,8863h
 cnt equ ($-arr)/2
.code
 mov ax,@data
 mov ds,ax
 mov dl,cnt-1

l1:mov cl,dl
   lea si,arr

l2:mov ax,[si]
   cmp ax,[si+2]
   jc l3
   xchg [si+2],ax
   xchg [si],ax

l3:inc si
   inc si
   loop l2
   dec dl
   jnz l1

   int 3h
   align 16
end

