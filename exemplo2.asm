.data           # Área de declaração de variáveis
A: .word 32     # variável inicializada com 32
B: .word 10     # variável inicializada com 10
C: .word 12345  # variável inicializada com 12345

.text           # Área de instruções
la $s0,A        # Carrega endereço de A em $t0 - PSEUDO-INSTRUÇÃO
lw $t0,0($s0)   # Lê valor de A para $t0
la $s1,B        # Carrega endereço de B em $t1 - PSEUDO-INSTRUÇÃO
lw $t1,0($s1)   # Lê valor de B para $t1
add $t3,$t0,$t1 # $t0 recebe A+B
la $s2,C        # Carrega endereço de C em $t2 - PSEUDO-INSTRUÇÃO
sw $t3,0($s2)   # C recebe A+B