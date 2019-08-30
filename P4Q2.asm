INCLUDE Irvine32.inc



.data
ALPHABET byte "A"
PROMPT1 byte "Do you want to continue printing (y/n)?",0
PROMPT2 byte "Please enter y or n only",0
INPUT byte ?

.code
main proc
	mov al, ALPHABET
	call WriteChar
	call Crlf

start:
	mov edx, OFFSET PROMPT1
	call WriteString
	call ReadChar
	mov INPUT,al

compare:
	cmp INPUT,"y"
	je printABC
	cmp INPUT,"n"
	je terminate	
	jne error

printABC :
	mov eax,0
    mov al,ALPHABET
    inc al
	call Crlf
	call WriteChar
	call Crlf
	mov ALPHABET,al
	jmp start

error:
	mov edx,OFFSET PROMPT2
	call Crlf
	call WriteString
	call Crlf
	jmp start

terminate:
	xor eax,eax
	call Crlf
	exit

main ENDP
end main