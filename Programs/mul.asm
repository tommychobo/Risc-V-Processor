.eqv SWITCHES, 0x11000000
.eqv VGA_READ, 0x11040000
.eqv LEDS,0x11080000
.eqv SSEGTemp, 0x11000040
.eqv SSEG, 0x110C0000
.text
Init:
lui sp, 0x10
li s0, SWITCHES # s0 has the address of switches
li s6, SSEGTemp
lhu s1, (s0) # s1 has the LSBs of switches
lhu s2, 2(s0) # s2 has the MSBs of switches
addi s3, x0, 1 # s3 is our one-hot operator
addi s4, x0, 0 # s4 stores the product and is initialized to 0
MulLoop:
and t2, s1, s3 # if t2 is 1, add s2 to s4. shift s2 left
beqz t2, NoMult
add s4, s4, s2 # s4 will store our product
NoMult:
slli s2, s2, 1 
slli s3, s3, 1 # one-hot bit
lui s5, 0x10
bgt s5, s3, MulLoop # if the one-hot bit is less than 0x10000, keep going
sw s4, (s6)
End:
j End
