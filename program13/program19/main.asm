;
; program19.asm
;
; Created: 2/22/2018 9:34:57 AM
; Author : 5635512110
;


; Replace with your application code
.include"m328pdef.inc"

.def VAR_A = R16
.def VAR_B = R17
.def VAR_CL = R18
.def VAR_CH = R19
.def TEMP = R20


.cseg
.org	0x00
		ldi XL, low(pointerA)
		ldi XH, high(pointerA)
		ld VAR_A,X+
		ld VAR_B,X+
		ld VAR_CL,X+
		ld VAR_CH,X+

		ldi TEMP,0

		cp VAR_B,VAR_A
		brsh TRUE
		rjmp FALSE
TRUE:	add VAR_CL,VAR_A
		adc VAR_CH,TEMP
		rjmp ENDIF

FALSE:	add VAR_CL,VAR_B 
		adc VAR_CH, TEMP
		
ENDIF:	ldi XL, low(pointerC)
		ldi XH, high(pointerC)
		st X+,VAR_CL
		st X+,VAR_CH
.dseg

.org 0x10A
pointerA: .byte 1
pointerB: .byte 1
pointerC: .byte 2
.eseg
