
# Data stored in memory
       .data
value:				# a value stored in memory
	.word  7		
result:				# where result is stored
	.word 0

# The program
       .text
	lw	$s0, value
	move	$s1, $s0
	sll	$s0, $s0, 2
	add	$s0, $s0, $s1
	sw	$s0, result
	
	