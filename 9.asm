// Screen Registers Index
@screen_register
M=0

// ---------------------------------------
(LOOP)
// Pressed Key
@KBD
D=M

// If no key is pressed
@NO_KEY
D;JEQ

(PRESSED_KEY)
@SCREEN
D=A
@screen_register
A=D+M
M=-1

@screen_register
M=M+1

@LOOP
D;JMP

(NO_KEY)
@SCREEN
D=A
@screen_register
A=D+M
M=0

@screen_register
D=M
@LOOP
D;JEQ

@screen_register
M=M-1

@LOOP
0;JMP
// ---------------------------------------