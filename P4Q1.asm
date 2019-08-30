INCLUDE Irvine32.inc


.data
list word 1200,-209,-900,501,-480,200,240,0
positive byte 0
negative byte 0

.code
main proc
	mov esi, OFFSET list

compare:
	xor eax,eax
	cmp word ptr [esi],0
	jg posit
	jl negat
	je terminate

posit :
	inc positive
	add esi, TYPE list
	jmp compare

negat :
	inc negative
	add esi, TYPE list
	jmp compare

terminate:
	xor eax,eax
	mov al,positive
	call WriteDec
	call Crlf
	mov al,negative
	call WriteDec
	call Crlf
	exit

main ENDP
end main