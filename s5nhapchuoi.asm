#bai 5 - nhap chuoi
.data
	chuoi : .asciiz
.text
	li $v0,8 # $v0=8
	la $a0, chuoi #gan chuoi vao thanh ghi $a0
	li $a1, 30 # so ki tu toi da co the nhap la 29
	syscall
	
