;
; helloAsm.asm
;
; Created: 2/22/2018 9:34:57 AM
; Author : 5635512110
;


; Replace with your application code
.include"m328pdef.inc"

.def VAR_A = R16
.def VAR_B = R17

.cseg
.org	0x00
	ldi VAR_B,0XFF 
	
	ldi VAR_A,30
FOR:	cpi VAR_A,10
		brsh LOOP
		rjmp ENDLOOP
LOOP:	lsl VAR_A
 		add VAR_B,VAR_A
		brcc ENDIF
		clr VAR_A	
ENDIF:	dec VAR_A
		rjmp FOR

ENDLOOP:	inc VAR_A
END:	rjmp END
.dseg
.eseg
