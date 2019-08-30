.MODEL SMALL
.STACK 64
.DATA
INPUT1 DB ?
PROMPT1 DB "PLEASE ENTER A NUMBER: $"
RESULT DB ?

.CODE
MAIN PROC
     MOV AX,@DATA
     MOV DS,AX


     ;----------START HERE
     MOV AH,09H
     LEA DX,PROMPT1
     INT 21H

     ;----------GET INPUT
     MOV AH,01H
     INT 21H
     MOV INPUT1,AL

     ;----------ASCII ADJUSTMENT
     SUB INPUT1,30H

     ;----------CALCULATION
     XOR AX,AX   ;--------CLEAR REGISTER
     MOV AL,INPUT1
     MUL INPUT1


     MOV RESULT,AL


     ;----------ENTER NEW LINE
     MOV AH,02H
     MOV DL,0AH
     INT 21H
     MOV DL,0DH
     INT 21H


     ;----------DISPLAY
     MOV AH,02H
     MOV DL,RESULT
     ADD DL,30H   ;-----------ASCII ADJUSTMENT
     INT 21H



     ;----------END HERE
     MOV AX,4C00H
     INT 21H

MAIN ENDP
END MAIN
