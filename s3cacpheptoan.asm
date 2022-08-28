#Bai 3-Cac thao tac phep toan +, -, *, /
.data
.text
	li $t1, 30 # $t1=30
	li $t2, 5 # $t2=5
	# phep +
	add $t3, $t1, $t2 # $t3= $t1 +$t2
	#phep -
	sub $t4, $t1, $t2 #$t4= $t1-$t2
	#phep *
	mul $t5, $t1, $t2 # $t5= $t1*$t2
	#phep /
	div $t1, $t2
	mflo $t6 #$t6 = thuong
	mfhi $t7 # $t7 = du