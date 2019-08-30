.MODEL SMALL
.STACK 64
.DATA
CHAR_A DB 61H

.CODE
MAIN PROC
        MOV AX,@DATA
        MOV DS,AX


        ;---------START CODING HERE

         MOV AH,02H ;DISPLAY LOWER A
         MOV DL,CHAR_A
	 INT 21H

	
	;---------DIPLAY COMMA
	
	 MOV DL,","	 
         INT 21H
	
	
	;---------CONVERT A TO LOWERCASE
	
	SUB CHAR_A,20H

	

	;---------DISPLAY A
		
	MOV DL,CHAR_A
	INT 21H
	


        ;---------TERMINATE PROGRAM
        MOV AX,4C00H
        INT 21H
MAIN ENDP
END MAIN
