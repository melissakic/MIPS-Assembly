.section .text
.global bar
bar:
  c.lt.s $f12,$f14
  bc1f else
  li $t0,0x40000000
  mtc1 $t0,$f4  //f4=2.f
  mtc1 $a2,$f6 //f6=d1
  mtc1 $a3,$f7
  trunc.w.d $f6,$f6
  round.w.s $f7,$f14
  ceil.w.s $f5,$f12
  cvt.s.w $f6,$f6 //d1
  cvt.s.w $f7,$f7 //f2
  cvt.s.w $f5,$f5 //f1
  mul.s $f4,$f4,$f5
  sub.s $f4,$f4,$f7
  add.s $f0,$f4,$f6
  jr $ra
  else:
  c.eq.s $f12,$f14
  bc1f kraj
  ceil.w.s $f4,$f12 //f1
  floor.w.s $f6,$f14 //f2
  mtc1 $a2,$f8
  mtc1 $a3,$f9
  trunc.w.d $f8,$f8 
  cvt.s.w $f4,$f4 //f1
  cvt.s.w $f6,$f6 //f2
  cvt.s.w $f8,$f8 //d1
  sub.s $f4,$f4,$f6
  add.s $f0,$f4,$f8
  jr $ra
  kraj:
  mtc1 $a2,$f4
  mtc1 $a3,$f5
  cvt.s.d $f0,$f4
  jr $ra

