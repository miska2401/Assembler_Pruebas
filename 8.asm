@screen_register
M = 0

(LOOP)
@KBD
D=M

@NO_KEY
D;JEQ

@SCREEN
D=A
@screen_register
A=D+M
M=-1
@screen_register
M=M+1
@LOOP
0;JMP

(NO_KEY)
@screen_register
D=M
@LOOP
D;JEQ
@SCREEN
D=A
@screen_register
A=D+M
M=0
@screen_register
M=M-1
@LOOP
0;JMP









