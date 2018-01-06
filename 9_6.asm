assume cs:code,ds:data

data segment
		db 'welcome to masm!'
		db 8ah
		db 0cah
		db 0f9h
data ends

stack segment
		db 0,0,0,0
stack ends

code segment
 
  start:mov ax,data
  		mov ds,ax

  		mov ax,stack
  		mov ss,ax
  		mov sp,16

  		mov bx,0
  		mov cx,3
  		mov si,0

  	  s:mov ax,0b8a0h
  	    mov es,ax

  	    mov ah,[bx+16]
  	    mov al,0

  	    push cx
  	    push bx

  	    mov bx,0
  	    mov cx,16

  	 s0:mov al,ds:[bx]
  	    push bx
  	    add bx,bx
  	    mov es:[si+bx],ax
  	    pop bx
  	    inc bx
  	    loop s0

  	    pop bx
  	    pop cx
  	    inc bx
  	    add si,160
  	    loop s

  	    mov ax,4c00h
  	    int 21h

code ends

end start
