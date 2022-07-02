addiu $t0,$0,2
addiu $t1,$0,5
andi $t2,$t0,0
andi $t3,$t1,3
ori $t2,$t1,2
xori $t3,$t1,3
sw $t1,0($0)
lw $t8,0($0)
