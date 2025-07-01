.text
main:
#começa o loop
	jal desenhar_ceu
	jal nuvens
	jal desenhar_mar
	jal desenhar_base
#	jal estilingue
	jal obstaculos
#	jal passaro
	
	addi $2,$0,10
	syscall
desenhar_ceu:

    lui $8, 0x1001 #endereço começo
    ori $8, $8, 0x0000

    lui $9, 0x1001
    ori $9, $9, 0x63FC #endereço final

    lui $10, 0x006F #cor azul do céu
    ori $10, $10, 0x66EB
ceu_loop:
    sw $10, 0($8)

    addi $8, $8, 4
    ble $8, $9, ceu_loop
    
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
		
desenhar_mar:
	
	lui $8,0x1001 # endereço começo
	ori $8,$8,0x6400
	
	lui $9,0x1001
	ori $9,$9,0x7FFC # endereço final
	
	lui $10,0x0012 # Cor azul mar
	ori $10,$10,0x4db4
mar_loop:
	sw $10,0($8)
	
	addi $8,$8,4
	ble $8,$9,mar_loop
	
	jr $31
	
desenhar_base:
	# Primeira base
	lui $8,0x1001
	ori $8,$8,0x6020  # endereço começo - primeira linha
	
	lui $9,0x1001
	ori $9,$9,0x60BC  # endereço final - primeira linha
	
	lui $10,0x1001
	ori $10,$10,0x6220  # endereço começo - segunda linha
	
	lui $11,0x1001
	ori $11,$11,0x62BC # endereço final - primeira linha
	
	lui $18,0x1001 # endereço começo - linha verde
	ori $18,$18,0x5E20
	
	lui $19,0x1001 # endereço final - linha verde
	ori $19,$19,0x5EBC
	
	#Segunda base
	lui $12,0x1001   
	ori $12,$12,0x6140  # endereço começo - primeira linha
	
	lui $13,0x1001
	ori $13,$13,0x61DC  # endereço final - segunda linha
	
	lui $14,0x1001
	ori $14,$14,0x6340 # endereço começo - segunda linha 
	
	lui $15,0x1001
	ori $15,$15,0x63DC  # endereço final - segunda linha
	
	lui  $16,0x0074 # Cor marrom da base
	ori $16,$16,0x3C0B
	
	lui $17,0x0033 # Cor verde base
	ori $17,$17,0xA93D  
	#  primeira Base vermelha escuro
	
	lui $20,0x1001 # endereço começo - linha vermelha
	ori $20,$20,0x5F40

	lui $21,0x1001 # endereço final - linha vermelha
	ori $21,$21,0x5FDC #             
#	DESENHA A PRIMEIRA BASE
red_loop:
	sw $17,0($18)
	addi $18,$18,4
	ble $18,$19,red_loop # desenha linha vermelha
marrom1:	
	sw $16, 0($8)
	addi $8,$8,4
	ble $8,$9,marrom1
marrom2:
	sw $16,0($10)
	addi $10,$10,4
	ble $10,$11, marrom2
#	DESENHA A SEGUNDA BASE
red2_loop:
	sw $17,0($20)
	addi $20,$20,4
	ble $20,$21,red2_loop
	
m1:	sw $16, 0($12)
	addi $12,$12,4
	ble $12,$13,m1
	
m2:	sw $16, 0($14)
	addi $14,$14,4
	ble $14,$15,m2
	
	jr $31
	
obstaculos:
	
	lui $8, 0x1001 #endereço começo linha 1
	ori $8, $8, 0x2D64
	lui $9, 0x1001
	ori $9, $9, 0x2D74 #endereço final linha 1

	lui $10, 0x1001 #endereço começo linha 2
	ori $10, $10, 0x2F64
	lui $11, 0x1001
	ori $11, $11, 0x2F64 #endereço final linha 2
	
	lui $12, 0x1001 #endereço começo linha 3
	ori $12, $12, 0x2F74
	lui $13, 0x1001
	ori $13, $13, 0x2F74 #endereço final linha 3
	
	lui $14, 0x1001 #endereço começo linha 4
	ori $14, $14, 0x3164
	lui $15, 0x1001
	ori $15, $15, 0x3164 #endereço final linha 4
	
	lui $16, 0x1001 #endereço começo linha 5
	ori $16, $16, 0x3164
	lui $17, 0x1001
	ori $17, $17, 0x3164 #endereço final linha 5
	
	lui $18, 0x1001 #endereço começo linha 6
	ori $18, $18, 0x3174
	lui $19, 0x1001
	ori $19, $19, 0x3174 #endereço final linha 6
	
	lui $20, 0x1001 #endereço começo linha 7
	ori $20, $20, 0x3364
	lui $21, 0x1001
	ori $21, $21, 0x3364 #endereço final linha 7
	
	lui $22, 0x1001 #endereço começo linha 8
	ori $22, $22, 0x3374
	lui $23, 0x1001
	ori $23, $23, 0x3374 #endereço final linha 8
	
	lui $24, 0x1001 #endereço começo linha 9
	ori $24, $24, 0x3564
	lui $25, 0x1001
	ori $25, $25, 0x3564 #endereço final linha 9
	
	lui $26, 0x00bd #cor marrom dos obstaculos
	ori $26, $26, 0x901b
	
obstaculos_loop1:
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
	ble $24, $25, obstaculos_loop1
	
	lui $8, 0x1001 #endereço começo linha 1
	ori $8, $8, 0x3574
	lui $9, 0x1001
	ori $9, $9, 0x3574 #endereço final linha 1

	lui $10, 0x1001 #endereço começo linha 2
	ori $10, $10, 0x3764
	lui $11, 0x1001
	ori $11, $11, 0x3764 #endereço final linha 2
	
	lui $12, 0x1001 #endereço começo linha 3
	ori $12, $12, 0x3774
	lui $13, 0x1001
	ori $13, $13, 0x3774 #endereço final linha 3
	
	lui $14, 0x1001 #endereço começo linha 4
	ori $14, $14, 0x3964
	lui $15, 0x1001
	ori $15, $15, 0x3964 #endereço final linha 4
	
	lui $16, 0x1001 #endereço começo linha 5
	ori $16, $16, 0x3974
	lui $17, 0x1001
	ori $17, $17, 0x3974 #endereço final linha 5
	
	lui $18, 0x1001 #endereço começo linha 6
	ori $18, $18, 0x3B64
	lui $19, 0x1001
	ori $19, $19, 0x3B64 #endereço final linha 6
	
	lui $20, 0x1001 #endereço começo linha 7
	ori $20, $20, 0x3B74
	lui $21, 0x1001
	ori $21, $21, 0x3B74 #endereço final linha 7
	
	lui $22, 0x1001 #endereço começo linha 8
	ori $22, $22, 0x3D64
	lui $23, 0x1001
	ori $23, $23, 0x3D64 #endereço final linha 8
	
	lui $24, 0x1001 #endereço começo linha 9
	ori $24, $24, 0x3D74
	lui $25, 0x1001
	ori $25, $25, 0x3D74 #endereço final linha 9
	
	lui $26, 0x1001 #endereço começo linha 10
	ori $26, $26, 0x4974
	lui $27, 0x1001
	ori $27, $27, 0x4974 #endereço final linha 10
	
	lui $28, 0x00bd #cor marrom dos obstaculos
	ori $28, $28, 0x901b
	
obstaculos_loop2:
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
	ble $26, $27, obstaculos_loop2
	
	lui $8, 0x1001 #endereço começo linha 1
	ori $8, $8, 0x3F64
	lui $9, 0x1001
	ori $9, $9, 0x3F64 #endereço final linha 1

	lui $10, 0x1001 #endereço começo linha 2
	ori $10, $10, 0x3F74
	lui $11, 0x1001
	ori $11, $11, 0x3F74 #endereço final linha 2
	
	lui $12, 0x1001 #endereço começo linha 3
	ori $12, $12, 0x4164
	lui $13, 0x1001
	ori $13, $13, 0x4164 #endereço final linha 3
	
	lui $14, 0x1001 #endereço começo linha 4
	ori $14, $14, 0x4174
	lui $15, 0x1001
	ori $15, $15, 0x4174 #endereço final linha 4
	
	lui $16, 0x1001 #endereço começo linha 5
	ori $16, $16, 0x4364
	lui $17, 0x1001
	ori $17, $17, 0x4364 #endereço final linha 5
	
	lui $18, 0x1001 #endereço começo linha 6
	ori $18, $18, 0x4374
	lui $19, 0x1001
	ori $19, $19, 0x4374 #endereço final linha 6
	
	lui $20, 0x1001 #endereço começo linha 7
	ori $20, $20, 0x4554
	lui $21, 0x1001
	ori $21, $21, 0x4574 #endereço final linha 7
	
	lui $22, 0x1001 #endereço começo linha 8
	ori $22, $22, 0x4754
	lui $23, 0x1001
	ori $23, $23, 0x4754 #endereço final linha 8
	
	lui $24, 0x1001 #endereço começo linha 9
	ori $24, $24, 0x4954
	lui $25, 0x1001
	ori $25, $25, 0x4954 #endereço final linha 9
	
	lui $26, 0x1001 #endereço começo linha 10
	ori $26, $26, 0x4774
	lui $27, 0x1001
	ori $27, $27, 0x4774 #endereço final linha 10
	
	lui $28, 0x00bd #cor marrom dos obstaculos
	ori $28, $28, 0x901b
	
obstaculos_loop3:
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
	ble $26, $27, obstaculos_loop3
	
	lui $8, 0x1001 #endereço começo linha 1
	ori $8, $8, 0x4B54
	lui $9, 0x1001
	ori $9, $9, 0x4B54 #endereço final linha 1

	lui $10, 0x1001 #endereço começo linha 2
	ori $10, $10, 0x4D54
	lui $11, 0x1001
	ori $11, $11, 0x4D54 #endereço final linha 2
	
	lui $12, 0x1001 #endereço começo linha 3
	ori $12, $12, 0x4F54
	lui $13, 0x1001
	ori $13, $13, 0x4F54 #endereço final linha 3
	
	lui $14, 0x1001 #endereço começo linha 4
	ori $14, $14, 0x5154
	lui $15, 0x1001
	ori $15, $15, 0x5154 #endereço final linha 4
	
	lui $16, 0x1001 #endereço começo linha 5
	ori $16, $16, 0x5354
	lui $17, 0x1001
	ori $17, $17, 0x5354 #endereço final linha 5
	
	lui $18, 0x1001 #endereço começo linha 6
	ori $18, $18, 0x5554
	lui $19, 0x1001
	ori $19, $19, 0x5554 #endereço final linha 6
	
	lui $20, 0x1001 #endereço começo linha 7
	ori $20, $20, 0x5754
	lui $21, 0x1001
	ori $21, $21, 0x5754 #endereço final linha 7
	
	lui $22, 0x1001 #endereço começo linha 8
	ori $22, $22, 0x5954
	lui $23, 0x1001
	ori $23, $23, 0x5954 #endereço final linha 8
	
	lui $24, 0x1001 #endereço começo linha 9
	ori $24, $24, 0x5B54
	lui $25, 0x1001
	ori $25, $25, 0x5B54 #endereço final linha 9
	
	lui $26, 0x1001 #endereço começo linha 10
	ori $26, $26, 0x5D54
	lui $27, 0x1001
	ori $27, $27, 0x5D54 #endereço final linha 10
	
	lui $28, 0x00bd #cor marrom dos obstaculos
	ori $28, $28, 0x901b
	
obstaculos_loop4:
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
	ble $26, $27, obstaculos_loop4
	
	lui $8, 0x1001 #endereço começo linha 1
	ori $8, $8, 0x4B74
	lui $9, 0x1001
	ori $9, $9, 0x4B74 #endereço final linha 1

	lui $10, 0x1001 #endereço começo linha 2
	ori $10, $10, 0x4D74
	lui $11, 0x1001
	ori $11, $11, 0x4D74 #endereço final linha 2
	
	lui $12, 0x1001 #endereço começo linha 3
	ori $12, $12, 0x4F74
	lui $13, 0x1001
	ori $13, $13, 0x4F74 #endereço final linha 3
	
	lui $14, 0x1001 #endereço começo linha 4
	ori $14, $14, 0x5174
	lui $15, 0x1001
	ori $15, $15, 0x5174 #endereço final linha 4
	
	lui $16, 0x1001 #endereço começo linha 5
	ori $16, $16, 0x5374
	lui $17, 0x1001
	ori $17, $17, 0x5374 #endereço final linha 5
	
	lui $18, 0x1001 #endereço começo linha 6
	ori $18, $18, 0x5574
	lui $19, 0x1001
	ori $19, $19, 0x5574 #endereço final linha 6
	
	lui $20, 0x1001 #endereço começo linha 7
	ori $20, $20, 0x5774
	lui $21, 0x1001
	ori $21, $21, 0x5774 #endereço final linha 7
	
	lui $22, 0x1001 #endereço começo linha 8
	ori $22, $22, 0x5974
	lui $23, 0x1001
	ori $23, $23, 0x5974 #endereço final linha 8
	
	lui $24, 0x1001 #endereço começo linha 9
	ori $24, $24, 0x5B74
	lui $25, 0x1001
	ori $25, $25, 0x5B74 #endereço final linha 9
	
	lui $26, 0x1001 #endereço começo linha 10
	ori $26, $26, 0x5D74
	lui $27, 0x1001
	ori $27, $27, 0x5D74 #endereço final linha 10
	
	lui $28, 0x00bd #cor marrom dos obstaculos
	ori $28, $28, 0x901b
	
obstaculos_loop5:
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
	ble $26, $27, obstaculos_loop5
	
	jr $31
	
