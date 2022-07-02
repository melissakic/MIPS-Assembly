.section .data
.global foo
foo:
  mtc1 $a3,$f4 //$f4=f2
  cvt.d.s $f4,$f4 
  cvt.d.s $f6,$f14 //$f6=f1
  //$f12=d1
  c.lt.d $f12,$f4
  bc1t if
  li $t0,0x40400000
  mtc1 $t0,$f8
  cvt.d.s $f8,$f8 //$f8=3.0
  if:
  c.eq.d $f12,$f4
  bc1f kraj
  c.eq.d $f12,$f6
  bc1t kraj
  mtc1 $0,$f10
  cvt.d.w $f10,$f10
  c.eq.d $f12,$f10
  bc1t kraj
  mul.d $f10,$f8,$f6
  div.d $f10,$f10,$f12
  trunc.w.d $f10,$f10
  mfc1 $v0,$f10
  jr $ra
  kraj:
  addiu $v0,$0,69
  jr $ra

