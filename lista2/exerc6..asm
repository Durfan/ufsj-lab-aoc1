.data
vetor: .word 0-100

.text
la $s5,vetor
li $t0,1

loop:
slti $t1,$t0,100
beq $t1,$zero,end

sw $t0,($s5)
addi $s5,$s5,4
addi $t0,$t0,1
j loop

end: