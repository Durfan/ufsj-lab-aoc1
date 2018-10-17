.data
a: .word 1
b: .word 1
c: .word 2

.text

la $s0,a
lw $t0,0($s0)

la $s1,b
lw $t1,0($s1)

la $s2,c
lw $t2,0($s2)

mul $t3,$t2,$t0
add $t0,$t0,$t1
add $t0,$t0,$t3

sw $t0,0($s0)
