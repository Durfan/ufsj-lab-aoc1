.data
msg: .asciiz "Total: "

.text
li $s0,0             # i = 0
li $s1,5000          # n = 5000

loop:
  slt $t0,$s1,$s0    # 5000 < 0 = 0 / 5000 < 5000 = 0 / 5000 < 5001 = 1
  bne $t0,$zero,end  # Se 1 for diferente de 0 -> end
  add $s3,$s3,$s0
  addi $s0,$s0,1     # i+1
  j loop

end:

  li $v0,56
  la $a0,msg
  move $a1,$s3
  syscall
  
  li $v0,10
  syscall
  