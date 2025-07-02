.include "background.asm"
.text
main:
	
	# carregar cenario
	lui $t0, 0x1001 # local escrito
	add $t8 $0 $26
	sll $t8 $t8 4
	add $t8 $t8 $t0 # local lido
	addi $t2, $0, 0
	jal load
	
	add $18, $0, $18 # x inicial
	add $19, $0, $19 # y inicial
	add $20, $0, $20 # x final
	add $21, $0, $21 # y final. max 61
	add $22, $0, $22 # base
	add $23, $0, $23 #
	 
	# funcao para carregar cenario na tela
load:	lw $t1, 0($t8)
	sw $t1, 0($t0)
	addi $t0, $t0, 4
	addi $t8, $t8, 4
	addi $t2, $t2, 1
	bne $t2, 8192, load
	jr $31