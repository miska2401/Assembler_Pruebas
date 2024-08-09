.global _start
.equ SWITCH, 0xff200040 // Switch address
.equ LED, 0xff200000 // Led address

_start:
	LDR R0, =SWITCH // Loads Switch address
	LDR R1, [R0] // Loads Switch value
	
	LDR R0, =LED // Loads LED Address
	STR R1, [R0] // Stores Switch value into LED
	
	