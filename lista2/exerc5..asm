.data
vetor: .word 0:20000

.text
la $s6,vetor

li $t5,-5

sw $t5,8($s6)
sw $t5,12($s6)
sw $t5,20($s6)
sw $t5,24($s6)
sw $t5,32($s6)

loop:
  slti $t1,$t2,20000
  beq $t1,$zero,end

  lw $t0,($s6)
  slti $t1,$t0,0
  beq $t1,$zero,next
  addi $s0,$s0,1

next:
  addi $s6,$s6,4
  addi $t2,$t2,1
  j loop
  
end: