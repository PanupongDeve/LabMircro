;
; helloAsm.asm
;
; Created: 2/22/2018 9:34:57 AM
; Author : 5635512110
;


; Replace with your application code
.include"m328pdef.inc"

.def var_al = r16
.def var_ah = r17
.def var_b = r18
.def var_m = r19
.def var_cl = r20
.def var_ch = r21

.cseg
.org	0x00
	rjmp MAIN

MAIN:	ldi var_b,220
		ldi var_cl,low(500)
		ldi var_ch,high(500)
		ldi var_m,15
		rjmp CAL

CAL:	mul var_b, var_m
		movw var_al, r0
		add var_al,var_cl
		adc var_ah,var_ch
		rjmp STORE
		
STORE:  ldi zl,low(static_A)
		ldi zh,high(static_A)
		st z+, var_al
		st z+, var_ah
		st z, var_b
		rjmp END

END:	rjmp END
.dseg

.org 0x100
static_A: .byte 2
static_B: .byte 1
.eseg
