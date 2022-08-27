.data
    nl: .asciiz "\n"
    inputPrompt: .asciiz "Please enter an integer:\n"

    theString: .space 32
    theInteger: .word 1

.text
main: 
    la $a0, inputPrompt #load address a0 with prompt
    li $v0, 4       #load system call, print string into v0
    syscall 

    li $v0, 5       #load system call, read int into v0
    syscall
    sw $v0, theInteger  #store saved int into $t0

    li $v0, 8           #load system call, read string with mem address
    la $a0, theString   #load address of reserved string space
    lw $a1, theInteger  #load address of saved int length for string    
    syscall

    lw $t0, theInteger
    add $a1,$zero,$t0   #pass lenght of string
    jal stringreverse   #reverse the string

stringreverse:
    add $t0,$a0,$zero   #starting address
    add $t1,$zero,$zero     #i = 0
    addi $t2,$a1,-1     #j = length-1

loop:
    add $t3,$t0,$t1
    lb $t4,0($t3)   #the lb string[i]
    add $t5,$t0,$t2
    lb $t6,0($t5)   #the lb string[j]
    sb $t4,0($t5)   #string[j] = string[i]
    sb $t6,0($t3)   #string[i] = string[j]
    addi $t1,$t1,1  #i++
    addi $t2,$t2,-1     #j--

    slt $t6,$t2,$t1
    beqz $t6,loop

exit:
    li $v1, 4       #system call to print reversed string
    la $a2, 0($a1)
    syscall

    li $v0, 10
    syscall         # Exit program