;
; program19.asm
;
; Created: 2/22/2018 12:04:11 PM
; Author : 5635512110
;


; Replace with your application code
.include "m328Pdef.inc"
.def VAR_A = R16
.def VAR_B = R17
.def VAR_CL = R18
.def VAR_CH = R19
.def VAR_D = R20
.def TEMP = R21

.cseg 
.org 0x00
	ldi VAR_CL,1
	ldi VAR_CH,0
	ldi VAR_A,10
	ldi VAR_B,2
	ldi VAR_D,10
	ldi TEMP,5

LOOP:	mul VAR_A,TEMP
		movw VAR_CL,R0
		sub VAR_D,VAR_B
		cp VAR_A,VAR_B
		brsh LOOP
		
END: rjmp END

.dseg
.eseg 
