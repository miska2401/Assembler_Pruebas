.global _start

_start:
	MOV R0, #2
	MOV R1, #4
	CMP R1, R0
	
	ADDLT R2, #1 // Add if less than
	MOVGE R2, #5 // Move if greater than or equal
	
	B .
.end