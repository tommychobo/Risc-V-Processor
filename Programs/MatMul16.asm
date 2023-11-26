.eqv SWITCHES, 0x11000000
.eqv VGA_READ, 0x11040000
.eqv LEDS,0x11080000
.eqv SSEGTemp, 0x11000040
.eqv SSEG, 0x110C0000
.data
MatDim:
.half 16
Mat1:
.half 0,   3,   2,   0,   3,   1,   0,   3,   2,   3,   2,   0,   3,   3,   1,   2,   3,   0,   0,   1
.half 1,   1,   2,   3,   1,   2,   3,   1,   1,   3,   2,   2,   0,   1,   3,   2,   2,   2,   0,   0
.half 1,   0,   1,   3,   3,   0,   3,   3,   3,   3,   0,   3,   2,   1,   2,   2,   0,   0,   3,   0
.half 1,   1,   0,   3,   3,   1,   2,   3,   3,   0,   1,   2,   1,   0,   1,   2,   2,   1,   0,   3
.half 1,   0,   2,   2,   1,   1,   1,   1,   1,   1,   2,   0,   3,   1,   1,   2,   2,   3,   3,   1
.half 3,   2,   0,   0,   0,   3,   3,   3,   2,   1,   2,   3,   1,   0,   0,   0,   0,   1,   2,   2
.half 1,   1,   3,   3,   3,   1,   1,   2,   3,   1,   3,   3,   2,   3,   2,   1,   2,   3,   0,   2
.half 2,   1,   1,   0,   0,   0,   0,   0,   1,   3,   3,   1,   1,   1,   2,   2,   3,   2,   1,   1
.half 1,   1,   3,   0,   2,   2,   1,   3,   2,   1,   2,   2,   1,   3,   1,   3,   1,   3,   2,   3
.half 1,   2,   1,   3,   2,   2,   0,   1,   0,   0,   1,   2,   3,   3,   1,   0,   0,   0,   3,   1
.half 2,   3,   2,   3,   2,   0,   0,   0,   0,   0,   3,   1,   3,   0,   0,   0,   3,   1,   1,   1
.half 1,   2,   1,   2,   3,   2,   0,   0,   2,   2,   3,   0,   3,   0,   0,   3,   0,   3,   1,   3
.half 3,   1,   1,   1,   2,   2,   1,   3,   0,   3,   3,   1,   0,   0,   3,   2

Mat2:
.half 1,   1,   0,   3,   1,   2,   0,   0,   0,   0,   0,   2,   1,   2,   3,   0,   0,   3,   3,   2
.half 2,   1,   2,   3,   3,   0,   2,   2,   1,   1,   2,   2,   0,   2,   2,   1,   2,   3,   2,   2
.half 3,   3,   2,   2,   1,   1,   1,   1,   2,   1,   2,   2,   3,   3,   3,   0,   0,   3,   2,   3
.half 2,   3,   1,   2,   1,   1,   2,   2,   0,   1,   0,   3,   2,   1,   1,   1,   2,   0,   1,   2
.half 2,   0,   2,   1,   3,   3,   2,   3,   2,   0,   3,   1,   3,   3,   2,   0,   1,   0,   1,   1
.half 2,   2,   1,   1,   2,   2,   1,   2,   3,   3,   1,   3,   2,   2,   2,   3,   3,   1,   0,   2
.half 1,   0,   0,   0,   1,   1,   2,   0,   3,   2,   3,   3,   0,   2,   3,   1,   0,   0,   2,   1
.half 2,   0,   2,   1,   1,   2,   3,   1,   3,   2,   1,   0,   0,   0,   0,   0,   2,   2,   0,   2
.half 1,   2,   0,   3,   2,   2,   0,   0,   3,   2,   1,   1,   3,   0,   2,   0,   0,   1,   0,   2
.half 3,   3,   1,   3,   3,   0,   0,   2,   2,   0,   0,   0,   1,   0,   0,   1,   3,   0,   2,   1
.half 3,   2,   2,   1,   3,   2,   0,   1,   2,   2,   3,   2,   1,   1,   1,   1,   3,   0,   1,   3
.half 2,   2,   3,   1,   1,   2,   0,   2,   1,   1,   2,   3,   1,   0,   1,   0,   1,   1,   0,   0
.half 2,   0,   3,   0,   3,   0,   3,   2,   2,   3,   3,   2,   1,   0,   2,   2

MatComp:
.space 512
MatRes:
.half 36,  44,  57,  50,  54,  36,  38,  46,  55,  25,  38,  34,  51,  30,  40,  32,  37,  34,  38,  52
.half 51,  40,  28,  32,  41,  22,  26,  35,  49,  35,  42,  23,  26,  26,  33,  36,  52,  40,  45,  49
.half 50,  34,  41,  35,  44,  25,  23,  23,  31,  29,  39,  46,  50,  36,  31,  32,  42,  32,  34,  41
.half 44,  33,  43,  30,  31,  28,  39,  46,  50,  40,  35,  37,  43,  35,  33,  43,  43,  29,  37,  29
.half 27,  22,  30,  33,  43,  31,  32,  25,  36,  31,  31,  29,  40,  28,  26,  22,  29,  42,  48,  51
.half 65,  52,  43,  54,  63,  34,  42,  44,  56,  33,  38,  32,  26,  22,  23,  38,  49,  32,  26,  30
.half 43,  22,  24,  27,  45,  24,  26,  17,  35,  35,  47,  51,  59,  59,  43,  42,  43,  28,  37,  43
.half 56,  48,  36,  32,  28,  19,  28,  34,  46,  34,  28,  34,  45,  20,  29,  28,  50,  32,  26,  21
.half 37,  38,  51,  50,  55,  45,  38,  49,  56,  28,  38,  40,  50,  29,  44,  26,  32,  35,  50,  43
.half 53,  44,  41,  41,  34,  24,  35,  34,  39,  33,  34,  29,  21,  33,  31,  45,  48,  42,  27,  29
.half 40,  17,  21,  32,  45,  30,  29,  26,  26,  27,  38,  33,  29,  31,  32,  31,  35,  25,  29,  29
.half 34,  15,  25,  23,  34,  28,  44,  45,  41,  41,  37,  45,  45,  17,  34,  44,  46,  30,  43,  29
.half 31,  36,  37,  50,  54,  44,  28,  40,  38,  22,  27,  28,  45,  32,  36,  22

.text
Init:
lui sp, 0x10
li s5, SSEGTemp
sw x0, (s5) # set the SSEG to 0 (for testing)
# Computed Matrix address = a3
la a3, MatComp
# MATRIX DIMENSION = s1
la s1, MatDim
lhu s1, (s1)
# ROW DATA OFFSET = s2 = s1 * 2
slli s2, s1, 1
# Set row M1 (a4) and col M2 (a5) to their addresses
la a4, Mat1
# t4 is the counter for a4 (row M1) and t5 is the counter for a5 (col M2)
addi t4, x0, 0
# a5 just gets incremented by 2 then reset
MatRowLoop:
la a5, Mat2 # reset the column
addi t5, x0, 0 # counter for MatColLoop
MatColLoop:
#####DOT!!!
	addi sp, sp, -4
	sw t2, (sp)
	addi sp, sp, -4
	sw t3, (sp)
	addi sp, sp, -4
	sw t4, (sp)
	addi sp, sp, -4
	sw t5, (sp)
	addi sp, sp, -4
	sw ra, (sp)
	call Dot
	lw ra, (sp)
	addi sp, sp, 4
	lw t5, (sp)
	addi sp, sp, 4
	lw t4, (sp)
	addi sp, sp, 4
	lw t3, (sp)
	addi sp, sp, 4
	lw t2, (sp)
	addi sp, sp, 4
# Increment: a5 + 2, t5 + 1, a3 + 2
addi a5, a5, 2 # go to the next column of M2
addi t5, t5, 1 # increment the column counter
addi a3, a3, 2 # increment the index of the Computed matrix
blt t5, s1, MatColLoop
# Increment: a4 + s2, t4 + 1
add a4, a4, s2 # go to the next row of M1
addi t4, t4, 1
blt t4, s1, MatRowLoop
# at this point, the computed matrix should be fully computed.
# square the matrix dimension to get the size of the matrix:
addi a1, s1, 0
addi a2, s1, 0
# assigns a0 to MatDim * MatDim
	addi sp, sp, -4
	sw ra, (sp)
	call Mult
	lw ra, (sp)
	addi sp, sp, 4
#counter starts at 1 so it can be displayed to the SSEG as the number of correct matrix entries
addi t2, x0, 1
la a3, MatComp
la a4, MatRes
MatCheckLoop:
lh t3, (a3)
lh t4, (a4)
bne t3, t4, MatFail
sw t2, (s5) # display the matrix position on the SSEG
addi a3, a3, 2 # go to the next value in MatComp
addi a4, a4, 2 # go to the next value in MatRes
addi t2, t2, 1 # increment the counter
ble t2, a0, MatCheckLoop
End:
j End

MatFail:
li t6, 0xFFFF
sw t6, (s5) # put FFFF in the SSEG
j End
	
	
Dot: # Arguments are a4 (address of row of M1) and a5 (address of column of M2) and a3 (address to store the dot product)
	# total = t2
	addi t2, x0, 0
	# position = t3
	addi t3, x0, 0
	# copy adresses from a4 and a5 to t4 and t5 for manipulation
	addi t4, a4, 0
	addi t5, a5, 0
	# t5 address must have s2 (column offset) added to it every loop
	# t4 must have 2 added to it every loop
	# do this loop while position (t3) is less than the matrix dimension (s1)
	DotLoop:
	lh a1, (t4)
	lh a2, (t5)
	# store temporary registers
		addi sp, sp, -4
		sw t2, (sp)
		addi sp, sp, -4
		sw t3, (sp)
		addi sp, sp, -4
		sw t4, (sp)
		addi sp, sp, -4
		sw t5, (sp)
		addi sp, sp, -4
		sw t6, (sp)
		addi sp, sp, -4
		sw ra, (sp)
		# multiply a1 and a2
		call Mult
		# retrieve registers
		lw ra, (sp)
		addi sp, sp, 4
		lw t6, (sp)
		addi sp, sp, 4
		lw t5, (sp)
		addi sp, sp, 4
		lw t4, (sp)
		addi sp, sp, 4
		lw t3, (sp)
		addi sp, sp, 4
		lw t2, (sp)
		addi sp, sp, 4
	# a0 now has the product of the values at t4 and t5
	add t2, t2, a0 # add the product to the total
	# increment t4 + 2, t5 + s2, t3 + 1
	addi t4, t4, 2
	addi t3, t3, 1
	add t5, t5, s2
	blt t3, s1, DotLoop
	# t2 now has the value of the dot product. store it at a3
	sh t2, (a3)
	ret



Mult: # Arguments are a1 and a2. Product is a0. a2 must be less than the value of t6. Uses t2 through t6
	addi a0, x0, 0 # product is initialized to 0
	addi t2, a1, 0
	addi t3, a2, 0 # copy the aguments to temporary registers
	addi t4, x0, 1 # the shift counter
	lui t6, 0x10 # the max value for the shift counter (max value of a2, above the halfword size)
	MultLoop:
	and t5, t4, t2 # if the counter and the first operand are both 1
	beqz t5, MultNoAdd
	add a0, a0, t3 # add the second operand to the product
	MultNoAdd:
	slli t3, t3, 1 # shift the second operand left 1 bit
	slli t4, t4, 1 # shift the counter left 1 bit
	blt t4, t6, MultLoop
	ret
