assume cs:code

code segment
  
  start:mov ax,2000h
  	 	mov ds,ax
  	 	mov bx,0

  	  s:mov cl,[bx]
  	    jcxz ok
  	    inc bx
  	    mov cx,2
  	    jmp short s

  	 ok:mov dx,bx

  	    mov ax,4c00h
  	    int 21h

code ends

end start
