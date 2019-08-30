INCLUDE Irvine32.inc

.data
ACLASS byte 80
BCLASS byte 70
CCLASS byte 60
DCLASS byte 50
SCORE byte 50, 67, 82, 42, 80, 77, 65
Result byte "Grades: ",0

.code
main proc

	mov edx,OFFSET Result
	call WriteString
	mov esi,0

start:
	mov al,SCORE[esi]
	 .IF al >= ACLASS  
      mov al,'A' 
	  call WriteChar
	  mov al, ','
	  call WriteChar
	  inc esi
    .ELSEIF al >= BCLASS
      mov al,'B'
	  call WriteChar
	  mov al, ','
	  call WriteChar
	  inc esi
    .ELSEIF al >= CCLASS
      mov al,'C'
	  call WriteChar
	  mov al, ','
	  call WriteChar
	  inc esi
    .ELSEIF al >= DCLASS
      mov al,'D'
	  call WriteChar
	  mov al, ','
	  call WriteChar
	  inc esi
    .ELSE
      mov al,'E'
	  call WriteChar
	  mov al, ','
	  call WriteChar
	  inc esi
    .ENDIF
	cmp esi,7
	jne start
	exit

main ENDP
end main