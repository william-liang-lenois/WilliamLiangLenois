.model small
.stack 100h
.data


x dw ?
y dw ?
.code
main proc
mov ax,26
mov bl,5
div bl
mov x,al
mov y,ah

mov dl,x
add dl,48
mov ah,2
int 21h



mov dl,y
add dl,48
mov ah,2
int 21h

mov ah,4ch
int 21h


main endp
end main