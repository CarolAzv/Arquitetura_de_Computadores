.text
main:
#começa o loop
	jal desenhar_ceu
	jal desenhar_mar
	#jal desenhar_base
	#jal estilingue
	#jal passaro
	jal nuvens
	
	addi $2, $0, 10
	syscall
	
desenhar_ceu:
	
	lui $8, 0x1001 #endereço começo
	ori $8, $8, 0x0000
	
	lui $9, 0x1001
	ori $9, $9, 0x63FC #endereço final
	
	lui $10, 0x006e #cor azul do céu
	ori $10, $10, 0xaaff
ceu_loop:
	sw $10, 0($8)
	
	addi $8, $8, 4
	ble $8, $9, ceu_loop
	
desenhar_mar:
	
	lui $8, 0x1001 #endereço começo
	ori $8, $8, 0x6400
	
	lui $9, 0x1001
	ori $9, $9, 0x7FFC #endereço final
	
	lui $10, 0x0012 #cor azul do mar
	ori $10, $10, 0x4db4
mar_loop:
	sw $10, 0($8)
	
	addi $8, $8, 4
	ble $8, $9, mar_loop
	
	jr $31
	
nuvens:
	lui $8, 0x1001 #endereço começo linha 1
	ori $8, $8, 0x0C10
	lui $9, 0x1001
	ori $9, $9, 0x0C4C #endereço final linha 1
	lui $10, 0x1001 #endereço começo linha 2
	ori $10, $10, 0x0E10
	lui $11, 0x1001
	ori $11, $11, 0x0E4C #endereço final linha 2
	lui $12, 0x1001 #endereço começo linha 3
	ori $12, $12, 0x1010
	lui $13, 0x1001
	ori $13, $13, 0x104C #endereço final linha 3
	lui $14, 0x1001 #endereço começo linha 4
	ori $14, $14, 0x1210
	lui $15, 0x1001
	ori $15, $15, 0x124C #endereço final linha 4
	lui $16, 0x1001 #endereço começo linha 5
	ori $16, $16, 0x1410
	lui $17, 0x1001
	ori $17, $17, 0x144C #endereço final linha 5
	lui $18, 0x1001 #endereço começo linha 6
	ori $18, $18, 0x1610
	lui $19, 0x1001
	ori $19, $19, 0x164C #endereço final linha 6
	lui $20, 0x1001 #endereço começo linha 7
	ori $20, $20, 0x1810
	lui $21, 0x1001
	ori $21, $21, 0x184C #endereço final linha 7
	lui $22, 0x1001 #endereço começo linha 8
	ori $22, $22, 0x1A10
	lui $23, 0x1001
	ori $23, $23, 0x1A4C #endereço final linha 8
	lui $24, 0x1001 #endereço começo linha 9
	ori $24, $24, 0x1C10
	lui $25, 0x1001
	ori $25, $25, 0x1C4C #endereço final linha 9
	lui $26, 0x00ff #cor branca das nuvens
	ori $26, $26, 0xffff
	
nuvens_loop1:
	sw $26, 0($8)
	addi $8, $8, 4
	sw $26, 0($10)
	addi $10, $10, 4
	sw $26, 0($12)
	addi $12, $12, 4
	sw $26, 0($14)
	addi $14, $14, 4
	sw $26, 0($16)
	addi $16, $16, 4
	sw $26, 0($18)
	addi $18, $18, 4
	sw $26, 0($20)
	addi $20, $20, 4
	sw $26, 0($22)
	addi $22, $22, 4
	sw $26, 0($24)
	addi $24, $24, 4
	ble $24, $25, nuvens_loop1
	
	#nuvem 2
	lui $8, 0x1001 #endereço começo linha 1
	ori $8, $8, 0x1598
	lui $9, 0x1001
	ori $9, $9, 0x15F0 #endereço final linha 1
	lui $10, 0x1001 #endereço começo linha 2
	ori $10, $10, 0x1798
	lui $11, 0x1001
	ori $11, $11, 0x17F0 #endereço final linha 2
	lui $12, 0x1001 #endereço começo linha 3
	ori $12, $12, 0x1998
	lui $13, 0x1001
	ori $13, $13, 0x19F0 #endereço final linha 3
	lui $14, 0x1001 #endereço começo linha 4
	ori $14, $14, 0x1B98
	lui $15, 0x1001
	ori $15, $15, 0x1BF0 #endereço final linha 4
	lui $16, 0x1001 #endereço começo linha 5
	ori $16, $16, 0x1D98
	lui $17, 0x1001
	ori $17, $17, 0x1DF0 #endereço final linha 5
	lui $18, 0x1001 #endereço começo linha 6
	ori $18, $18, 0x1F98
	lui $19, 0x1001
	ori $19, $19, 0x1FF0 #endereço final linha 6
	lui $20, 0x1001 #endereço começo linha 7
	ori $20, $20, 0x2198
	lui $21, 0x1001
	ori $21, $21, 0x21F0 #endereço final linha 7
	lui $22, 0x1001 #endereço começo linha 8
	ori $22, $22, 0x2398
	lui $23, 0x1001
	ori $23, $23, 0x23F0 #endereço final linha 8
	lui $24, 0x1001 #endereço começo linha 9
	ori $24, $24, 0x2598
	lui $25, 0x1001
	ori $25, $25, 0x25F0 #endereço final linha 9
	lui $26, 0x1001 #endereço começo linha 10
	ori $26, $26, 0x2798
	lui $27, 0x1001
	ori $27, $27, 0x27F0 #endereço final linha 10
	lui $28, 0x00ff #cor branca das nuvens
	ori $28, $28, 0xffff
	
nuvens_loop2:
	sw $28, 0($8)
	addi $8, $8, 4
	sw $28, 0($10)
	addi $10, $10, 4
	sw $28, 0($12)
	addi $12, $12, 4
	sw $28, 0($14)
	addi $14, $14, 4
	sw $28, 0($16)
	addi $16, $16, 4
	sw $28, 0($18)
	addi $18, $18, 4
	sw $28, 0($20)
	addi $20, $20, 4
	sw $28, 0($22)
	addi $22, $22, 4
	sw $28, 0($24)
	addi $24, $24, 4
	sw $28, 0($26)
	addi $26, $26, 4
	ble $26, $27, nuvens_loop2
	
	#nuvem 3 p1
	lui $8, 0x1001 #endereço começo linha 1
	ori $8, $8, 0x14E0
	lui $9, 0x1001
	ori $9, $9, 0x1524 #endereço final linha 1
	
	lui $10, 0x1001 #endereço começo linha 2
	ori $10, $10, 0x16E0
	lui $11, 0x1001
	ori $11, $11, 0x1724 #endereço final linha 2
	
	lui $12, 0x1001 #endereço começo linha 3
	ori $12, $12, 0x18E0
	lui $13, 0x1001
	ori $13, $13, 0x1924 #endereço final linha 3
	
	lui $14, 0x1001 #endereço começo linha 4
	ori $14, $14, 0x1AE0
	lui $15, 0x1001
	ori $15, $15, 0x1B24 #endereço final linha 4
	
	lui $16, 0x1001 #endereço começo linha 5
	ori $16, $16, 0x1CE0
	lui $17, 0x1001
	ori $17, $17, 0x1D24 #endereço final linha 5
	
	lui $18, 0x1001 #endereço começo linha 6
	ori $18, $18, 0x1EE0
	lui $19, 0x1001
	ori $19, $19, 0x1F24 #endereço final linha 6
	
	lui $20, 0x1001 #endereço começo linha 7
	ori $20, $20, 0x20E0
	lui $21, 0x1001
	ori $21, $21, 0x2124 #endereço final linha 7
	
	lui $22, 0x1001 #endereço começo linha 8
	ori $22, $22, 0x22A8
	lui $23, 0x1001
	ori $23, $23, 0x2324 #endereço final linha 8
	
	lui $24, 0x1001 #endereço começo linha 9
	ori $24, $24, 0x24A8
	lui $25, 0x1001
	ori $25, $25, 0x2524 #endereço final linha 9
	
	lui $26, 0x00ff #cor branca das nuvens
	ori $26, $26, 0xffff
	
nuvens_loop3a:
	sw $26, 0($8)
	addi $8, $8, 4
	sw $26, 0($10)
	addi $10, $10, 4
	sw $26, 0($12)
	addi $12, $12, 4
	sw $26, 0($14)
	addi $14, $14, 4
	sw $26, 0($16)
	addi $16, $16, 4
	sw $26, 0($18)
	addi $18, $18, 4
	sw $26, 0($20)
	addi $20, $20, 4
	sw $26, 0($22)
	addi $22, $22, 4
	sw $26, 0($24)
	addi $24, $24, 4
	ble $24, $25, nuvens_loop3a
	
	#nuvem 3 p2
	lui $8, 0x1001 #endereço começo linha 1
	ori $8, $8, 0x26A8
	lui $9, 0x1001
	ori $9, $9, 0x2724 #endereço final linha 1

	lui $10, 0x1001 #endereço começo linha 2
	ori $10, $10, 0x28A8
	lui $11, 0x1001
	ori $11, $11, 0x2924 #endereço final linha 2
	
	lui $12, 0x1001 #endereço começo linha 3
	ori $12, $12, 0x2AA8
	lui $13, 0x1001
	ori $13, $13, 0x2B24 #endereço final linha 3
	
	lui $14, 0x1001 #endereço começo linha 4
	ori $14, $14, 0x2CA8
	lui $15, 0x1001
	ori $15, $15, 0x2D24 #endereço final linha 4
	
	lui $16, 0x1001 #endereço começo linha 5
	ori $16, $16, 0x2EA8
	lui $17, 0x1001
	ori $17, $17, 0x2EF0 #endereço final linha 5
	
	lui $18, 0x1001 #endereço começo linha 6
	ori $18, $18, 0x30A8
	lui $19, 0x1001
	ori $19, $19, 0x30F0 #endereço final linha 6
	
	lui $20, 0x1001 #endereço começo linha 7
	ori $20, $20, 0x32A8
	lui $21, 0x1001
	ori $21, $21, 0x32F0 #endereço final linha 7
	
	lui $22, 0x1001 #endereço começo linha 8
	ori $22, $22, 0x34A8
	lui $23, 0x1001
	ori $23, $23, 0x34F0 #endereço final linha 8
	
	lui $24, 0x1001 #endereço começo linha 9
	ori $24, $24, 0x36A8
	lui $25, 0x1001
	ori $25, $25, 0x36F0 #endereço final linha 9
	
	lui $26, 0x00ff #cor branca das nuvens
	ori $26, $26, 0xffff
	
nuvens_loop3b:
	sw $26, 0($8)
	addi $8, $8, 4
	sw $26, 0($10)
	addi $10, $10, 4
	sw $26, 0($12)
	addi $12, $12, 4
	sw $26, 0($14)
	addi $14, $14, 4
	sw $26, 0($16)
	addi $16, $16, 4
	sw $26, 0($18)
	addi $18, $18, 4
	sw $26, 0($20)
	addi $20, $20, 4
	sw $26, 0($22)
	addi $22, $22, 4
	sw $26, 0($24)
	addi $24, $24, 4
	ble $24, $25, nuvens_loop3b
	
	jr $31