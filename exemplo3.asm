.data
vetor: .word 0:4    # vetor de 4 inteiros
a: .word -1         # variável inicializada com -1

.text 

# manipulando os endereços
la $s2, a           # $s2 = endereço de A
la $s1, vetor       # s1 recebe o endereço de memória da primeira posição do vetor

# inicializando o vetor e a variável
li $t0, 10          # $t0 = 10
sw $t0, 0($s1)      # vetor[0] = $t0 = 10
li $t0, 20          # $t0 = 20
sw $t0, 4($s1)      # vetor[1] = $t0 = 20
li $t0, 30          # $t0 = 30
sw $t0, 8($s1)      # vetor[2] = $t0 = 30
li $t0, 100         #$t0 = 100
sw $t0, 0($s2)      # a = 100

# ....... realizando alguma tarefa

# realizando a operação desejada
lw $t0, 0($s1)      #$t0 = vetor[0] = conteúdo da posição 0
lw $t1, 4($s1)      #$t1 = vetor[1] = conteúdo da posição 1
mul $t2, $t0, $t1   #t2 = vetor[0] * vetor[1]
lw $t3, 0($s2)      #$t4 = conteúdo de a
add $t4, $t2, $t3   #$t4
sw $t4, 12($s1)