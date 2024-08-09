.global _start
_start:
	LDR R0, =list // List direction
	MOV R1, #0 // Sum = 0
	
	LOOP:
		LDRH R2, [R0], #2 // Loads list vaslue
		CMP R2, #0 // list value is equal to 0?
		BEQ LOOP_END // if list value is equal to 0 goto LOOP_END
		BL sum // if list value is not equal to 0 goto sum
		B LOOP 
	LOOP_END:
	
	B .
	
sum: // Sum R2 to R1
	ADD R1, R1, R2
	BX lr // Return
	
.data
	list:
	.hword 1, 2, 3, 4, 0
