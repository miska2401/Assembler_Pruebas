// n = 10
@10
D=A
@n
M=D

// sum = 0
@sum
M=0

// i = 2
@2
D=A
@i
M=D

// ----------------------------------------
(LOOP)
// D = n - i
@n
D=M
@i
D=D-M

// n - i > 0
@END
D;JLT

// sum += 1
@i
D=M
@sum
M=M+D

// i += 2
@i
M = M + 1
@i
M = M + 1

@LOOP
0;JMP
// ----------------------------------------

(END)
@END
0;JMP



