// Initializes R0
@11
D=A
@R0
M=D

// Initializes R1
@24
D=A
@R1
M=D

// R0 + R1 + 17
@R0
D=M
@R1
D=D+M
@17
D=D+A
@R3
M=D