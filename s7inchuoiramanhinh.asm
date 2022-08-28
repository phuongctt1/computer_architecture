#bai7: in chuoi ra man hinh
.data
	chuoi: .asciiz "xin chao\n"
.text
	li $v0,4
	la $a0, chuoi
	syscall
	
	la $a0, chuoi
	li $v0,4
	syscall
	