.eqv SWITCHES, 0x11000000
.eqv VGA_READ, 0x11040000
.eqv LEDS,0x11080000
.eqv SSEGTemp, 0x11000040
.eqv SSEG, 0x110C0000
.data
MatSize:
.half 100
Mat1:
.half 0,   3,   2,   0,   3,   1,   0,   3,   2,   3,   2,   0,   3,   3,   1,   2,   3,   0,   0,   1
.half 1,   1,   2,   3,   1,   2,   3,   1,   1,   3,   2,   2,   0,   1,   3,   2,   2,   2,   0,   0
.half 1,   0,   1,   3,   3,   0,   3,   3,   3,   3,   0,   3,   2,   1,   2,   2,   0,   0,   3,   0
.half 1,   1,   0,   3,   3,   1,   2,   3,   3,   0,   1,   2,   1,   0,   1,   2,   2,   1,   0,   3
.half 1,   0,   2,   2,   1,   1,   1,   1,   1,   1,   2,   0,   3,   1,   1,   2,   2,   3,   3,   1

Mat2:
.half 1,   1,   0,   3,   1,   2,   0,   0,   0,   0,   0,   2,   1,   2,   3,   0,   0,   3,   3,   2
.half 2,   1,   2,   3,   3,   0,   2,   2,   1,   1,   2,   2,   0,   2,   2,   1,   2,   3,   2,   2
.half 3,   3,   2,   2,   1,   1,   1,   1,   2,   1,   2,   2,   3,   3,   3,   0,   0,   3,   2,   3
.half 2,   3,   1,   2,   1,   1,   2,   2,   0,   1,   0,   3,   2,   1,   1,   1,   2,   0,   1,   2
.half 2,   0,   2,   1,   3,   3,   2,   3,   2,   0,   3,   1,   3,   3,   2,   0,   1,   0,   1,   1

MatComp:
.space 200
MatRes:
.space 200 # bypassing the checking process, confirmation of successful operation can be done with inspection
.text
Init:
lui sp 0x10 # set the stack pointer
lhu s10, MatSize # s10 has the size of the matrix
addi s2, x0, 0 # s2 is 0 and will count up to s1
la s3, Mat1 # matrix 1 address
la s4, Mat2 # matrix 2 address
la s0, MatComp # matrix output address
li a0, SSEGTemp # a0 has the address of the 7 segment

MatLoop:
slli t1, s2, 1 # t1 is Matrix Position x 2
add t3, s3, t1 # add the offset to matrix 1 address
add t4, s4, t1 # add the offset to matrix 2 address
lh t5, (t3) # get the value from matrix 1 in t5
lh t6, (t4) # get the value from matrix 2 in t6
add s5, t5, t6 # result of the addition of this matrix position
add s6, s0, t1 # address to be written to
sh s5, (s6)
addi s2, s2, 1 # increment matrix position by 1
blt s2, s10, MatLoop # if the index is less than the size of the matrix, keep looping


la s3, MatRes # s3 is MatRes, s0 is MatComp, s2 is counter, s1 is size
addi s2, x0, 0 # reset the counter
MatCheck:
slli t1, s2, 1 # multiply counter by 2, use t1
add t2, s0, t1 # apply an offset to MatComp
add t3, s3, t1 # apply an offset to MatRes
lh t4, (t2) # get the value at MatComp
lh t5, (t3) # value at MatRes
bne t4, t5, Fail # if the values are not equal, fail
addi s2, s2, 1 # add 1 to the counter
blt s2, s10, MatCheck # loop if the counter is less than matrix size

Success:
li a1 0xaaaa
sw a1, (a0) # write AAAA to the Seven Segment
j End

Fail:
li a1 0xffff
sw a1, (a0) # write FFFF to the Seven Segment

End:
j End
