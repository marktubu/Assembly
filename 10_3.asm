assume cs:code

code segment

        mov ax,0
        call far ptr s
        inc ax

      s:pop ax
        add ax,ax
        pop bx
        add ax,bx

        mov ax,4c00h
        int 21h

code ends
end
