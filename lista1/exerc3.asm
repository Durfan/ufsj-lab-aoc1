.data
vetor: .word 0:3
temp:  .word 2

.text

la $s0,vetor
la $s1,temp

lw $t5,0($s1)
sw $t5,0($s0)

lw $t0,0($s0)
mul $t0,$t0,$t5
sw $t0,4($s0)

lw $t0,0($s0)
lw $t1,4($s0)
mul $t1,$t1,$t5
add $t0,$t0,$t1
sw $t0,8($s0)




