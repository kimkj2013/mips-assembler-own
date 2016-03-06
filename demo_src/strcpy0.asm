#
#�Data�Declarations
	.data
	string1:	.asciiz "\nPlease input a number: "	    # declaration for string variable		
	string2:	.asciiz "\nThe input data is:      "   	# declaration for string variable		


	.text
main:	

    # Print out string1 

	li	$v0, 4	# load code for printing strings
	la	$a0, string1	# load address of string to be printed into $a0
	syscall			# call operating system to perform print operation


	li	$v0, 4	# load code for printing strings
	la	$a0, string2	# load address of string to be printed into $a0
	syscall			# call operating system to perform print operation

	
	
	

	li $v0, 10
	syscall #�terminate�program
.end main


strcpy:
    addi $sp, $sp, -4      # adjust stack for 1 item
    sw   $s0, 0($sp)       # save $s0
    add  $s0, $zero, $zero # i = 0
L1: add  $t1, $s0, $a1     # addr of y[i] in $t1
    lbu  $t2, 0($t1)       # $t2 = y[i]
	add  $t3, $s0, $a0     # addr of x[i] in $t3
	sb   $t2, 0($t3)       # x[i] = y[i]
    beq  $t2, $zero, L2    # exit loop if y[i] == 0
    addi $s0, $s0, 1       # i = i + 1
    j    L1                # next iteration of loop
L2: lw   $s0, 0($sp)       # restore saved $s0
    addi $sp, $sp, 4       # pop 1 item from stack
	jr   $ra               # and return
