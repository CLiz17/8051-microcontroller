;to find the largest no. from 10 no.
MOV R0,#0AH
MOV DPTR,#4200H
MOV F0,#00H
MOVX A,@DPTR
CJNE A,F0,7
INC DPTR
JC 10
MOV F0,A
DJNZ R0,5
MOV DPTR,#4300H
MOVX @DPTR,A
SJMP 13

;to find the smallest no. from 10 no.
MOV R0,#0AH
MOV DPTR,#4200H
MOVX A,@DPTR
MOV F0,A
MOVX A,@DPTR
CJNE A,F0,22
INC DPTR
JNC 25
MOV F0,A
DJNZ R0,20
MOV DPTR,#4300H
MOV A,F0
MOVX @DPTR,A
SJMP 29