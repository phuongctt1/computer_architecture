.data

Message1: .asciiz "Input string: "
userString: .space 20
newline: .asciiz "\n"

.text

li $v0, 4
la $a0, Message1
syscall

li $v0, 8
la $a0, userString
li $a1, 20
syscall

li $v0, 4
syscall

add $t0, $a0, $zero
lb $t5, newline
find_end:
	lb $t1, ($t0)
	addi $t0, $t0, 1
	beq $t5, $t1, end
	bne $t1, $zero, find_end
end:
	addi $t0, $t0, -2

swap: #reverse string
	lb $t2, ($a0) 
	lb $t3, ($t0)
	sb $t2, ($t0)
	sb $t3, ($a0)
	addi $a0, $a0, 1
	addi $t0, $t0, -1
	ble $a0, $t0, swap

li $v0, 4
la $a0, userString
syscall

li $v0, 10
syscall
