.text
main:
#começa o loop
	jal desenhar_ceu
	jal nuvens
	jal desenhar_mar
	jal desenhar_base
	jal estilingue
	jal obstaculos
 	#jal passaro
	
	addi $2,$0,10
	syscall
desenhar_ceu:

    lui $8, 0x1001 #endereço começo
    ori $8, $8, 0x0000

    lui $9, 0x1001
    ori $9, $9, 0x75FC #endereço final

    lui $10, 0x006F #cor azul do céu
    ori $10, $10, 0x66EB
ceu_loop:
    sw $10, 0($8)

    addi $8, $8, 4
    ble $8, $9, ceu_loop
    
nuvens:
	#nuvem 1
	lui $8, 0x1001 #endereço começo linha 1
	ori $8, $8, 0x1638
	lui $9, 0x1001
	ori $9, $9, 0x1644 #endereço final linha 1
	lui $10, 0x1001 #endereço começo linha 2
	ori $10, $10, 0x1838
	lui $11, 0x1001
	ori $11, $11, 0x1844 #endereço final linha 2
	
	lui $12, 0x1001 #endereço começo linha 3
	ori $12, $12, 0x1A30
	lui $13, 0x1001
	ori $13, $13, 0x1A50 #endereço final linha 3
	lui $14, 0x1001 #endereço começo linha 4
	ori $14, $14, 0x1C30
	lui $15, 0x1001
	ori $15, $15, 0x1C50 #endereço final linha 4
	
	lui $16, 0x1001 #endereço começo linha 5
	ori $16, $16, 0x1A60
	lui $17, 0x1001
	ori $17, $17, 0x1A7C #endereço final linha 5
	lui $18, 0x1001 #endereço começo linha 6
	ori $18, $18, 0x1C60
	lui $19, 0x1001
	ori $19, $19, 0x1C7C #endereço final linha 6
	
	lui $20, 0x1001 #endereço começo linha 7
	ori $20, $20, 0x1E24
	lui $21, 0x1001
	ori $21, $21, 0x1E88 #endereço final linha 7
	lui $22, 0x1001 #endereço começo linha 8
	ori $22, $22, 0x2024
	lui $23, 0x1001
	ori $23, $23, 0x2088 #endereço final linha 8
	
	lui $24, 0x1001 #endereço começo linha 9
	ori $24, $24, 0x2210
	lui $25, 0x1001
	ori $25, $25, 0x229C #endereço final linha 9
	lui $26, 0x1001 #endereço começo linha 10
	ori $26, $26, 0x2410
	lui $27, 0x1001
	ori $27, $27, 0x249C #endereço final linha 10
	
	lui $28, 0x00ff #cor branca das nuvens
	ori $28, $28, 0xffff
	
nu1_1:  sw $28, 0($8)
	addi $8, $8, 4
	sw $28, 0($10)
	addi $10, $10, 4
	ble $10, $11, nu1_1
nu1_2:  sw $28, 0($12)
	addi $12, $12, 4
	sw $28, 0($14)
	addi $14, $14, 4
	ble $14, $15, nu1_2
nu1_3:  sw $28, 0($16)
	addi $16, $16, 4
	sw $28, 0($18)
	addi $18, $18, 4
	ble $18, $19, nu1_3
nu1_4:  sw $28, 0($20)
	addi $20, $20, 4
	sw $28, 0($22)
	addi $22, $22, 4
	ble $22, $23, nu1_4
nu1_5:  sw $28, 0($24)
	addi $24, $24, 4
	sw $28, 0($26)
	addi $26, $26, 4
	ble $26, $27, nu1_5
	
	lui $8, 0x1001 #endereço começo linha 1
	ori $8, $8, 0x2610
	lui $9, 0x1001
	ori $9, $9, 0x269C #endereço final linha 1
	lui $10, 0x1001 #endereço começo linha 2
	ori $10, $10, 0x2810
	lui $11, 0x1001
	ori $11, $11, 0x289C #endereço final linha 2
	
nu1_6:  sw $28, 0($8)
	addi $8, $8, 4
	sw $28, 0($10)
	addi $10, $10, 4
	ble $10, $11, nu1_6
	
	
	#nuvem 2
	lui $8, 0x1001 #endereço começo linha 1
	ori $8, $8, 0x0D08
	lui $9, 0x1001
	ori $9, $9, 0x0D1C#endereço final linha 1
	lui $10, 0x1001 #endereço começo linha 2
	ori $10, $10, 0x0F08
	lui $11, 0x1001
	ori $11, $11, 0x0F1C #endereço final linha 2
	
	lui $12, 0x1001 #endereço começo linha 3
	ori $12, $12, 0x10F8
	lui $13, 0x1001
	ori $13, $13, 0x1124 #endereço final linha 3
	lui $14, 0x1001 #endereço começo linha 4
	ori $14, $14, 0x12F8
	lui $15, 0x1001
	ori $15, $15, 0x1324 #endereço final linha 4
	
	lui $16, 0x1001 #endereço começo linha 5
	ori $16, $16, 0x14F0
	lui $17, 0x1001
	ori $17, $17, 0x1524 #endereço final linha 5
	lui $18, 0x1001 #endereço começo linha 6
	ori $18, $18, 0x16F0
	lui $19, 0x1001
	ori $19, $19, 0x1724 #endereço final linha 6
	
	lui $20, 0x1001 #endereço começo linha 7
	ori $20, $20, 0x18F0
	lui $21, 0x1001
	ori $21, $21, 0x193C#endereço final linha 7
	lui $22, 0x1001 #endereço começo linha 8
	ori $22, $22, 0x1AF0
	lui $23, 0x1001
	ori $23, $23, 0x1B3C #endereço final linha 8
	
	lui $24, 0x1001 #endereço começo linha 9
	ori $24, $24, 0x18F0
	lui $25, 0x1001
	ori $25, $25, 0x193C#endereço final linha 9
	lui $26, 0x1001 #endereço começo linha 10
	ori $26, $26, 0x1AF0
	lui $27, 0x1001
	ori $27, $27, 0x1B3C #endereço final linha 10
	
	lui $28, 0x00ff #cor branca das nuvens
	ori $28, $28, 0xffff
	
nu2_1:  sw $28, 0($8)
	addi $8, $8, 4
	ble $8, $9, nu2_1
nu2_2:  sw $28, 0($10)
	addi $10, $10, 4
	ble $10, $11, nu2_2
nu2_3:  sw $28, 0($12)
	addi $12, $12, 4
	ble $12, $13, nu2_3
nu2_4:  sw $28, 0($14)
	addi $14, $14, 4
	ble $14, $15, nu2_4
nu2_5:  sw $28, 0($16)
	addi $16, $16, 4
	ble $16, $17, nu2_5
nu2_6:  sw $28, 0($18)
	addi $18, $18, 4
	ble $18, $19, nu2_6
nu2_7:  sw $28, 0($20)
	addi $20, $20, 4
	ble $20, $21, nu2_7
nu2_8:  sw $28, 0($22)
	addi $22, $22, 4
	ble $22, $23, nu2_8
nu2_9:  sw $28, 0($24)
	addi $24, $24, 4
	ble $24, $25, nu2_9
nu2_10: sw $28, 0($26)
	addi $26, $26, 4
	ble $26, $27, nu2_10
	
	lui $8, 0x1001 #endereço começo linha 1
	ori $8, $8, 0x1CE0
	lui $9, 0x1001
	ori $9, $9, 0x1D3C#endereço final linha 1
	lui $10, 0x1001 #endereço começo linha 2
	ori $10, $10, 0x1EE0
	lui $11, 0x1001
	ori $11, $11, 0x1F3C #endereço final linha 2
	
	lui $12, 0x1001 #endereço começo linha 3
	ori $12, $12, 0x20D8
	lui $13, 0x1001
	ori $13, $13, 0x2144 #endereço final linha 3
	lui $14, 0x1001 #endereço começo linha 4
	ori $14, $14, 0x22D8
	lui $15, 0x1001
	ori $15, $15, 0x2344 #endereço final linha 4
	
nu2_11:  sw $28, 0($8)
	addi $8, $8, 4
	ble $8, $9, nu2_11
nu2_12:  sw $28, 0($10)
	addi $10, $10, 4
	ble $10, $11, nu2_12
nu2_13:  sw $28, 0($12)
	addi $12, $12, 4
	ble $12, $13, nu2_13
nu2_14:  sw $28, 0($14)
	addi $14, $14, 4
	ble $14, $15, nu2_14
	
	#nuvem 3
	lui $8, 0x1001 #endereço começo linha 1
	ori $8, $8, 0x15E0
	lui $9, 0x1001
	ori $9, $9, 0x15EC #endereço final linha 1
	lui $10, 0x1001 #endereço começo linha 2
	ori $10, $10, 0x17DC
	lui $11, 0x1001
	ori $11, $11, 0x17F0 #endereço final linha 2
	lui $12, 0x1001 #endereço começo linha 3
	ori $12, $12, 0x19D8
	lui $13, 0x1001
	ori $13, $13, 0x19F4 #endereço final linha 3
	lui $14, 0x1001 #endereço começo linha 4
	ori $14, $14, 0x1BD4
	lui $15, 0x1001
	ori $15, $15, 0x1BF8 #endereço final linha 4
	lui $16, 0x1001 #endereço começo linha 5
	ori $16, $16, 0x1DD0
	lui $17, 0x1001
	ori $17, $17, 0x1DFC #endereço final linha 5
	lui $26, 0x00ff #cor branca das nuvens
	ori $26, $26, 0xffff
	
nu3_1:  sw $26, 0($8)
	addi $8, $8, 4
	ble $8, $9, nu3_1
nu3_2:  sw $26, 0($10)
	addi $10, $10, 4
	ble $10, $11, nu3_2
nu3_3:  sw $26, 0($12)
	addi $12, $12, 4
	ble $12, $13, nu3_3
nu3_4:  sw $26, 0($14)
	addi $14, $14, 4
	ble $14, $15, nu3_4
nu3_5:  sw $26, 0($16)
	addi $16, $16, 4
	ble $16, $17, nu3_5
	
	jr $31
		
desenhar_mar:
	
	lui $8,0x1001 # endereço começo
	ori $8,$8,0x7600
	
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
	ori $8,$8,0x7220  # endereço começo - primeira linha
	
	lui $9,0x1001
	ori $9,$9,0x72BC # endereço final - primeira linha
	
	lui $10,0x1001
	ori $10,$10,0x7420 # endereço começo - segunda linha
	
	lui $11,0x1001
	ori $11,$11,0x74BC # endereço final - primeira linha
	
	lui $18,0x1001 # endereço começo - linha verde
	ori $18,$18,0x7020
	
	lui $19,0x1001 # endereço final - linha verde
	ori $19,$19,0x70BC
	
	#Segunda base
	lui $12,0x1001   
	ori $12,$12,0x7340  # endereço começo - primeira linha
	
	lui $13,0x1001
	ori $13,$13,0x73DC  # endereço final - segunda linha
	
	lui $14,0x1001
	ori $14,$14,0x7540 # endereço começo - segunda linha 
	
	lui $15,0x1001
	ori $15,$15,0x75DC # endereço final - segunda linha
	
	lui  $16,0x0074 # Cor marrom da base
	ori $16,$16,0x3C0B
	
	lui $17,0x0033 # Cor verde base
	ori $17,$17,0xA93D  
	#  primeira Base vermelha escuro
	
	lui $20,0x1001 # endereço começo - linha vermelha
	ori $20,$20,0x7140

	lui $21,0x1001 # endereço final - linha vermelha
	ori $21,$21,0x71DC #             
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
	
estilingue:
	# CORES
	lui $8,0x005c  # Marrom sombra
	ori $8,$8,0x0404
	
	lui  $9,0x0074 # Cor marrom da base
	ori $9,$9,0x3C0B
	
	lui $10,0x006b  # vermelho corda
	ori $10,$10,0x0002
	
	# Primeira coluna
	lui $11, 0x1001 # endereço começo
	ori $11, $11, 0x5658
	
	lui $12, 0x1001 # endereço final
	ori $12, $12, 0x6058
	
	lui $13, 0x1001 # endereço começo da corda
	ori $13, $13, 0x5A58

#	lui $14, 0x1001 # endereço final da corda
#	ori $14, $14, 0x3C5C
prim_loop:
	sw $9,0($11)
	addi $11,$11,512
	ble $11,$12,prim_loop
	
	sw $10,0($13)	
	# Segunda coluna
	lui $11, 0x1001 # endereço começo
	ori $11, $11, 0x605C
	
	lui $12, 0x1001 # endereço final
	ori $12, $12, 0x625C
	
seg_loop:
	sw $9,0($11)
	addi $11,$11,512
	ble $11,$12,seg_loop

	#Terceira coluna
	lui $11, 0x1001 # endereço começo
	ori $11, $11, 0x6260
	
	lui $12, 0x1001 # endereço final
	ori $12, $12, 0x6E60
	
ter_loop:
	sw $9,0($11)
	addi $11,$11,512
	ble $11,$12,ter_loop
	
	# Quarta coluna
	lui $11, 0x1001 # endereço começo
	ori $11, $11, 0x6264
	
	lui $12, 0x1001 # endereço final
	ori $12, $12, 0x6E64

	
quar_loop:
	sw $9,0($11)
	addi $11,$11,512
	ble $11,$12,quar_loop

	# Quinta coluna
	lui $11, 0x1001 # endereço começo
	ori $11, $11, 0x6268
	
	lui $12, 0x1001 # endereço final
	ori $12, $12, 0x6E68

	

	
quin_loop:
	sw $9,0($11)
	addi $11,$11,512
	ble $11,$12,quin_loop	
			
	# Sexta coluna
	lui $11, 0x1001 # endereço começo
	ori $11, $11, 0x606C
	
	lui $12, 0x1001 # endereço final
	ori $12, $12, 0x626C
sext_loop:
	sw $9,0($11)
	addi $11,$11,512
	ble $11,$12,sext_loop
	# Sétima coluna
	lui $11, 0x1001 # endereço começo
	ori $11, $11, 0x5670
	
	lui $12, 0x1001 # endereço final
	ori $12, $12, 0x6070

	lui $13, 0x1001 # endereço começo da corda
	ori $13, $13, 0x5A70
set_loop:
	sw $9,0($11)
	addi $11,$11,512
	ble $11,$12,set_loop
	sw $10,0($13)
	
obstaculos:
	
	# Primeira coluna
	lui $8, 0x1001 # endereço começo
	ori $8, $8, 0x5774
	lui $9, 0x1001 # endereço final
	ori $9, $9, 0x6574
	
	# Segunda coluna
	lui $10, 0x1001 # endereço começo
	ori $10, $10, 0x5784
	lui $11, 0x1001 # endereço final
	ori $11, $11, 0x6584
	
	# Terceira coluna
	lui $12, 0x1001 # endereço começo
	ori $12, $12, 0x6970
	lui $13, 0x1001 # endereço final
	ori $13, $13, 0x6F70
	
	# Quarta coluna
	lui $14, 0x1001 # endereço começo
	ori $14, $14, 0x6988
	lui $15, 0x1001 # endereço final
	ori $15, $15, 0x6F88
	
	# Primeira linha
	lui $16, 0x1001 # endereço começo
	ori $16, $16, 0x556C
	lui $17, 0x1001 # endereço final
	ori $17, $17, 0x558C
	
	# Segunda linha
	lui $18, 0x1001 # endereço começo
	ori $18, $18, 0x6770
	lui $19, 0x1001 # endereço final
	ori $19, $19, 0x6788
	
	lui $20, 0x007c #cor marrom dos obstaculos
	ori $20, $20, 0x542a
	lui $21, 0x006e #cor azul dos obstaculos
	ori $21, $21, 0xaaff
	
obstaculos_loop1:
	sw $21, 0($8)
	addi $8, $8, 512
	ble $8, $9, obstaculos_loop1
	
obstaculos_loop2:
	sw $21, 0($10)
	addi $10, $10, 512
	ble $10, $11, obstaculos_loop2
	
obstaculos_loop3:
	sw $21, 0($12)
	addi $12, $12, 512
	ble $12, $13, obstaculos_loop3
	
obstaculos_loop4:
	sw $21, 0($14)
	addi $14, $14, 512
	ble $14, $15, obstaculos_loop4
	
obstaculos_loop5:
	sw $20, 0($16)
	addi $16, $16, 4
	ble $16, $17, obstaculos_loop5
	
obstaculos_loop6:
	sw $20, 0($18)
	addi $18, $18, 4
	ble $18, $19, obstaculos_loop6
	
	jr $31
	
passaro:
	#CORES
	lui $8,0x00ff # Branco
	ori $8,$8,0xffff
	
	lui $9,0x0000 # Preto
	ori $9,$9,0x0000
	
	lui $10,0x00ff # Vermelho
	ori $10,$10,0x0000
	
	lui $11,0x00D9 # Amarelo
	ori $11,$11,0xE229
	
	lui $12,0x00E9 # cor do peito
	ori $12,$12,0xAA88
	
	# Primeira coluna
	lui $13, 0x1001 # endereço começo
	ori $13, $13, 0x3C84
	
	lui $14, 0x1001 # endereço final
	ori $14, $14, 0x4884
	
p:	sw $9,0($13)
	addi $13,$13,512
	ble $13,$14,p
	
	#Segunda coluna
	lui $13, 0x1001 # Começo preto
	ori $13, $13, 0x3A88
	
	lui $14,0x1001 
	ori $14, $14, 0x3C88 # Começo vermelho 
	
	lui $15,0x1001
	ori $15, $15, 0x4888 # final vermelho
	
	lui $16,0x1001 
	ori $16, $16, 0x4088 # Começo branco
	
	lui $17,0x1001
	ori $17, $17, 0x4288 # final branco
	
	lui $18, 0x1001 # Final preto
	ori $18, $18, 0x4A88
s:
	sw $9,0($13) # pinta preto
	addi $13,$18,512
	ble $13,$18,s
	
s1:	
	sw $10,0($14)
	addi $14,$14,512
	ble $14,$15,s1 #pinta vermelho
	
s2:	sw $8,0($16)
	addi $16,$16,512
	ble $16,$17,s2 # pinta branco
	
	sw $9,0($18) # Pinta preto
	
	# Terceira coluna
	lui $13, 0x1001 # Começo preto 1
	ori $13, $13, 0x3A8C
	lui $14, 0x1001 # Final preto 1
	ori $14, $14, 0x4C8C
	
	lui $15,0x1001 
	ori $15, $15, 0x3C8C # Começo vermelho 
	lui $16,0x1001
	ori $16, $16, 0x4888 # final vermelho
	
	lui $17,0x1001 
	ori $17, $17, 0x488C # Começo bariga
	lui $18,0x1001
	ori $18, $18, 0x4A8C # final bariga
	
	lui $19, 0x1001 # Começo preto 2
	ori $19, $19, 0x3E8C
	lui $20, 0x1001 # Final preto 2
	ori $20, $20, 0x428C
	
	lui $21,0x1001 
	ori $21, $21, 0x488C # branco
	
tc3_1:  sw $9,0($13)
	addi $13,$14,512
	ble $14,$14,tc3_1 # pinta preto
	
tc3_2:	sw $10,0($15)
	addi $15,$15,512
	ble $15,$16,tc3_2 #pinta vermelho
	
tc3_3:	sw $12,0($17)
	addi $17,$17,512
	ble $17,$18,tc3_3 # pinta bariga
	
tc3_4:	sw $9,0($19)
	addi $19,$19,512
	ble $19,$20,tc3_1 # pinta preto 2
	
tc3_5:	sw $8,0($21)
	addi $21,$21,512
	ble $21,$21,tc3_5 # pinta branco
	
	sw $9,0($14) # Pinta preto
	

	
	jr $31
	
	
	
