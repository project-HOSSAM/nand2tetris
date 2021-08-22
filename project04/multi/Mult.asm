// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)
//
// This program only needs to handle arguments that satisfy
// R0 >= 0, R1 >= 0, and R0*R1 < 32768.

// Put your code here.

@R0
D=M
@num
M=D // initialize num

@R1
D=M
@i
M=D // initialize n

@product
M=0 // initialize product

(LOOP)
@i
D=M
@STOP
D;JEQ // if i < 1 goto STOP
@R0
D=M
@product
M=D+M
@i
D=M
D=D - 1
@i
M=D
@LOOP
0;JMP

(STOP)
@product
D=M
@R2
M=D

(END)
@END
0;JMP
