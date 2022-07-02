.section .rodata
str1:
 .asciiz "%c"

str2:
  .asciiz "\n"

.section .bss
.global d
d:
  .word

.section .text
.global combinations
combinations:
  addiu $sp,$sp,-32
  sw $ra,28($sp)
  sw $a0,24($sp)
  sw $a1,20($sp)
  sw $a2,16($sp)
  move $a0,$a2
  jal malloc
  la $t0,d
  sw $v0,($t0)
  lw $a0,24($sp)
  lw $a2,20($sp)
  lw $a1,16($sp)
  lw $a3,16($sp)
  jal combinations_impl
  lw $ra,28($sp)
  addiu $sp,$sp,32
  jr $ra

.global print_comb
print_comb:
  addiu $sp,$sp,-32
  sw $ra,28($sp)
  sw $s0,24($sp)
  sw $s1,20($sp)
  move $s0,$a0
  li $s1,0 //i=0
  for:
  slt $t1,$s1,$s0
  beq $t1,$0,kraj
  la $t1,d
  lw $t1,($t1)
  addu $t1,$t1,$s1
  lb $a1,($t1)
  la $a0,str1
  jal printf
  addiu $s1,$s1,1
  j for
  kraj:
  la $a0,str2
  jal printf
  lw $ra,28($sp)
  lw $s0,24($sp)
  lw $s1,20($sp)
  addiu $sp,$sp,32
  jr $ra


.global combinations_impl
combinations_impl:
  addiu $sp,$sp,-48
  bne $a3,$0,kraj1
  move $a0,$a1
  jal printf
  lw $ra,28($sp)
  jal $ra
  kraj1:
  la $t1,d
  lw $t1,($t1) //t1=char* d
  li $t0,0 //i=0
  for1:
  slt $t2,$t0,$a2
  beq $t0,$0,izlaz
  addu $t3,$a0,$t0
  lb $t3,($t3)
  subu $t4,$a1,$a3
  addu $t5,$t1,$t4
  sb $t3,($t5)
  sw $ra,28($sp)
  sw $t0
  addiu $a3,$a3,-1
  jal combinations_impl
  izlaz:
  jr $ra









