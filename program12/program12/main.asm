;
; program12.asm
;
; Created: 2/22/2018 10:22:56 AM
; Author : 5635512110
;


; Replace with your application code
.include"m328pdef.inc"


.def VAR_A = R16
.def VAR_B = R17
.def VAR_C = R18

.cseg
.org 0x00
	ldi VAR_A,110
	ldi var_B,100

	cp VAR_A,VAR_B
	brlt LESS
	breq EQUAL
	rjmp MORE

LESS:	ldi VAR_C, -1
		rjmp ENDIF
EQUAL:	ldi VAR_C, 0
		rjmp ENDIF

MORE:	ldi VAR_C,1

ENDIF:	muls VAR_B, VAR_C
		mov  VAR_A,R0

END:	rjmp END

.dseg
.eseg




