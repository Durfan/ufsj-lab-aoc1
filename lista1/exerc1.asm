.data
a: .word 3
b: .word 6
c: .word 

.text
la $s0,a
lw $t0,0($s0)
la $s1,b
lw $t1,0($s1)

add $t0,$t0,$t1

la $s2,c
sw $t0,0($s2)
