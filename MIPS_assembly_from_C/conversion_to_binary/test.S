.section .text
.global converzija
converzija:
  addiu $t0,$t0,0 //i=0
  for:
  move $t2,$a0 //t2=broj
  slt $t1,$0,$a0
  beq $t1,$0,kraj
  li $t1,2
  div $0,$a0,$t1
  mflo $t2 //t2=dijeljenje
  mfhi $t3 //t3=ostatak
  addiu $t3,$t3,48
  addu $t4,$a1,$t0
  sb $t3,($t4)
  move $a0,$t2
  addiu $t0,$t0,1
  j for
  kraj:
  addu $t4,$a1,$t0
  sb $0,($t4)
  move $v0,$t0
  jr $ra


