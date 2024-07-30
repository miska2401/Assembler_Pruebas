// Multiplies the numbers in R0 and R1

// R0 = 10
@10
D=A
@R0
M=D

// R1 = 6
@6
D=A
@R1
M=D

// mul = 0
@mul
M=0 

// i = 1
@i
M=1

// -------------------------------------
(LOOP)

// R1 - i
@R1
D=M
@i
D=D-M

// (R1 - i) > 0
@END
D;JLT

// mul += R0
@R0
D = M
@mul
M=M+D

// i += 1
@i
M=M+1

@LOOP
0;JMP
// -------------------------------------

(END)
@END
0;JMP


