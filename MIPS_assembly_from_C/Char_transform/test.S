.section .text
.global transform
transform:
  addiu $sp,$sp,-32
  sw $ra,28($sp)
  sw $a0,24($sp)
  addiu $t0,$t0,0 //t0=i
  for:
  slt $t1,$t0,$a1
  beq $t1,$0,kraj
  lw $t2,24($sp)
  addu $t2,$t2,$t0
  lb $a0,($t2)
  sw $t0,20($sp)
  sw $t2,16($sp)
  jalr $a2
  lw $t0,20($sp)
  lw $t2,16($sp)
  sb $v0,($t2)
  addiu $t0,$t0,1
  j for
  kraj:
  lw $ra,28($sp)
  addiu $sp,$sp,32
  jr $ra
