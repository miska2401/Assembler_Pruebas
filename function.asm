.global _start

_start:
	MOV R0, #2
	MOV R1, #4
	BL add2
	MOV R3, #4
	B .
add2:
	ADD R2, R0, R1
	bx lr
