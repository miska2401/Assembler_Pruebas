// Multiplies list1 and list2 values. Each multiplication is summed up

.global _start

list1:
.hword 1, 2, 3, 4
list2:
.hword 4, 7, 2, 5

_start:	
	LDR R0, =list1 // list1 direction
	LDR R1, =list2 // list2 direction
	MOV R2, #1 // Initializes counter i
	
	LOOP:
		CMP R2, #5 // Compares counter with 5
		BEQ END // if i == 5, goto END 
		
		LDRH R3, [R0], #2 // Loads list1 value into R3
		LDRH R4, [R1], #2 // Loads list2 value into R4 
		
		MUL R5, R3, R4 // Multiplies list1 and list2 values
		ADD R6, R5, R6 // Adds multiplication result to R6
		
		ADD R2, R2, #1 // Updates counter
		B LOOP // goto LOOP
	END:
	
	B . // Infinite loop
	
.end