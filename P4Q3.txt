INCLUDE irvine32.inc

.data

prompt1 byte "In english:You like english and espresso, excellent!",0
ee byte "e"
space byte " "
gg byte "g"
prompt2 byte "                                                                     ",0


.code
main proc
    
	mov ecx,52
	mov esi,0
	mov edi,0
	mov edx,offset prompt1
	call writestring
	call crlf

L1:
	mov al,prompt1[esi]
	mov bl,space
	cmp al,bl
	je compare
	mov prompt2[edi],al
	inc esi
	inc edi
	loop L1
	jmp last

compare:
	mov al,prompt1[esi+1]
	mov bl,ee
	cmp al,bl
	je change
	mov al,prompt1[esi]
	mov prompt2[edi],al
	inc esi
	inc edi
	loop L1

change:
	mov al,ee
	mov prompt2[edi+1],al
	mov al,gg
	mov prompt2[edi+2],al
	mov prompt2[edi+3],al
	add edi,3
	add esi,2
	inc edi
	loop L1

last:
	mov edx,offset prompt2
	call writestring
	
	
	exit
main endp
end main