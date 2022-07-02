.section .text
.global foo
foo:
  //f12,f13
  //
  lw $t0,16($sp)
  lwc1 $f4,($t0)
  swc1 $f4,4($a0)
  sw $a2,8($a0)
  sw $a3,12($a0)
  jr $ra
