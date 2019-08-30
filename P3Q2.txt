INCLUDE Irvine32.inc

.data
data1 BYTE "MILK",0
data2 BYTE 4 DUP ("*"),0

.code
main proc

	mov esi,0
	mov edi,3
	mov ecx,4	;initialize count register as 4

L1:
	mov al,data1[esi]	;get the character from data1
	mov data2[edi],al
	inc esi
	dec edi
	loop L1

	mov edx, OFFSET data2
	call WriteString
	call Crlf

	exit
main ENDP
end main