#bai1- Cach gan so nguyen cho mot thanh ghi
# Gán 10 cho thanh ghi $t1
# Gan 15 cho thanh ghi $t2
# gan 20 cho thanh ghi $t3
.data #phan de khai bao du lieu
	number: .word 10
.text # phan code chinh
	lw $t1, number #cach 1  lay gia tri cua nhan number gan vao thanh ghi $t1
	li $t2, 15 # $t2= 15
	addi $t3, $zero, 20 #$t3= 0+20
