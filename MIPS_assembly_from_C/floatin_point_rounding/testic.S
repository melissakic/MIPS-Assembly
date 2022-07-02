.section .text
.global bar
bar:
  //f12=f1
  //f14=f2
  //a2,a3=d1
  mtc1 $a2,$f10
  mtc1 $a3,$f11
  li $t0,0x40000000
  mtc1 $t0,$f4 //f4=2f
  ceil.w.s $f6,$f12
  round.w.s $f8,$f14
  trunc.w.d $f10,$f10
  cvt.s.w $f6,$f6
  cvt.s.w $f8,$f8
  cvt.s.w $f10,$f10
  sub.s $f6,$f6,$f8
  add.s $f0,$f6,$f10
  jr $ra
  else:
  jr $ra
