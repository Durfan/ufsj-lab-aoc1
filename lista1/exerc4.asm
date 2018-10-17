.data

a: .word 0:2
b: .word 0
c: .word 0
d: .word 0
e: .word 0

.text

la $s0,a
la $s1,b
la $s2,c
la $s3,d
la $s4,e

li $t0,10
sw $t0,0($s0)

lw $t0,0($s0)
li $t1,5
add $t0,$t0,$t1
sw $t0,4($s0)

lw $t0,0($s0)
lw $t1,4($s0)

add $t2,$t0,$t1
sw $t2,0($s1)

sub $t2,$t0,$t1
sw $t2,0($s2)

lw $t0,0($s1)
lw $t1,0($s2)
add $t2,$t0,$t1
sw $t2,0($s3)

lw $t0,0($s1)
lw $t1,0($s0)
add $t0,$t0,$t1

li $t5,2
lw $t1,0($s3)
mul $t2,$t5,$t1

lw $t1,0($s2)
mul $t3,$t5,$t1
add $t2,$t2,$t3

lw $t1,4($s0)
sub $t2,$t2,$t1

sub $t0,$t0,$t2
sw $t0,0($s4)
