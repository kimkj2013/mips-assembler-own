	.data
string1:	.asciiz "\nPlease input a number: "	# declaration for string variable		
string2:	.asciiz "\nThe input data is: "   	# declaration for string variable		
int_val:        .word 15

	.text
main:	

# Print integer value contained in register $t1
li	$t1, 55	# set $t1 = 55
li	$v0, 1	# load appropriate system call code into register $v0
		# code for printing is 1
move	$a0, $t1	# move integer to be printed into $a0: $a0 = $t1
syscall		# call operating system to perform operation


# Print out string (useful for prompts)

li	$v0, 4	# load code for printing strings
la	$a0, string1	# load address of string to be printed into $a0
syscall			# call operating system to perform print operation


# Read integer from user and store it in RAM
li	$v0, 5	# load appropriate system call code into register $v0
		# code for reading integers is 5
syscall		# call operating system to perform operation
sw	$v0, int_val	# store what user entered into RAM at address int_val

# Print out string (useful for prompts)

li	$v0, 4	# load code for printing strings
la	$a0, string2	# load address of string to be printed into $a0
syscall			# call operating system to perform print operation

# Print integer value contained in register $t1
la	$t2, int_val	# load address of int_val
lw      $t1, 0($t2)        # load the value of int_val 
li	$v0, 1	# load appropriate system call code into register $v0
		# code for printing is 1
move	$a0, $t1	# move integer to be printed into $a0: $a0 = $t1
syscall		# call operating system to perform operation

