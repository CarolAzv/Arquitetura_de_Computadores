.text
main:
#começa o loop
	jal desenhar_ceu
	jal nuvens
	jal desenhar_mar
	jal desenhar_ilhas
	jal estilingue
	jal obstaculos
	jal passaro
	jal PORCOHAT
	jal porco2
	jal movimento
parou:  addi $2,$0,10
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
#-----------NUVENS---------------------------------------------------------------------------------------------   
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
	ori $8, $8, 0x13C0
	lui $9, 0x1001
	ori $9, $9, 0x13CC#endereço final linha 1
	lui $10, 0x1001 #endereço começo linha 2
	ori $10, $10, 0x15C0
	lui $11, 0x1001
	ori $11, $11, 0x15CC #endereço final linha 2
	
	lui $12, 0x1001 #endereço começo linha 3
	ori $12, $12, 0x17B8
	lui $13, 0x1001
	ori $13, $13, 0x17D4 #endereço final linha 3
	lui $14, 0x1001 #endereço começo linha 4
	ori $14, $14, 0x19B8
	lui $15, 0x1001
	ori $15, $15, 0x19D4 #endereço final linha 4
	lui $16, 0x1001 #endereço começo linha 5
	ori $16, $16, 0x1BB8
	lui $17, 0x1001
	ori $17, $17, 0x1BD4 #endereço final linha 5
	lui $18, 0x1001 #endereço começo linha 6
	ori $18, $18, 0x1DB8
	lui $19, 0x1001
	ori $19, $19, 0x1DD4 #endereço final linha 6
	
	lui $20, 0x1001 #endereço começo linha 7
	ori $20, $20, 0x1BE0
	lui $21, 0x1001
	ori $21, $21, 0x1BEC#endereço final linha 7
	lui $22, 0x1001 #endereço começo linha 8
	ori $22, $22, 0x1DE0
	lui $23, 0x1001
	ori $23, $23, 0x1DEC #endereço final linha 8
	
	lui $24, 0x1001 #endereço começo linha 9
	ori $24, $24, 0x1FB8
	lui $25, 0x1001
	ori $25, $25, 0x1FF4#endereço final linha 9
	lui $26, 0x1001 #endereço começo linha 10
	ori $26, $26, 0x21B8
	lui $27, 0x1001
	ori $27, $27, 0x21F4 #endereço final linha 10
	
	lui $28, 0x00ff #cor branca das nuvens
	ori $28, $28, 0xffff
	
nu3_1:  sw $28, 0($8)
	addi $8, $8, 4
	ble $8, $9, nu3_1
nu3_2:  sw $28, 0($10)
	addi $10, $10, 4
	ble $10, $11, nu3_2
nu3_3:  sw $28, 0($12)
	addi $12, $12, 4
	ble $12, $13, nu3_3
nu3_4:  sw $28, 0($14)
	addi $14, $14, 4
	ble $14, $15, nu3_4
nu3_5:  sw $28, 0($16)
	addi $16, $16, 4
	ble $16, $17, nu3_5
nu3_6:  sw $28, 0($18)
	addi $18, $18, 4
	ble $18, $19, nu3_6
nu3_7:  sw $28, 0($20)
	addi $20, $20, 4
	ble $20, $21, nu3_7
nu3_8:  sw $28, 0($22)
	addi $22, $22, 4
	ble $22, $23, nu3_8
nu3_9:  sw $28, 0($24)
	addi $24, $24, 4
	ble $24, $25, nu3_9
nu3_10: sw $28, 0($26)
	addi $26, $26, 4
	ble $26, $27, nu3_10
	
	lui $8, 0x1001 #endereço começo linha 1
	ori $8, $8, 0x1FA0
	lui $9, 0x1001
	ori $9, $9, 0x1FAC#endereço final linha 1
	lui $10, 0x1001 #endereço começo linha 2
	ori $10, $10, 0x21A0
	lui $11, 0x1001
	ori $11, $11, 0x21AC #endereço final linha 2
	
	lui $12, 0x1001 #endereço começo linha 3
	ori $12, $12, 0x2390
	lui $13, 0x1001
	ori $13, $13, 0x23F4 #endereço final linha 3
	lui $14, 0x1001 #endereço começo linha 4
	ori $14, $14, 0x2590
	lui $15, 0x1001
	ori $15, $15, 0x25F4 #endereço final linha 4
	
	lui $16, 0x1001 #endereço começo linha 5
	ori $16, $16, 0x2770
	lui $17, 0x1001
	ori $17, $17, 0x27FC #endereço final linha 5
	lui $18, 0x1001 #endereço começo linha 6
	ori $18, $18, 0x2970
	lui $19, 0x1001
	ori $19, $19, 0x29FC #endereço final linha 6
	lui $20, 0x1001 #endereço começo linha 7
	ori $20, $20, 0x2B70
	lui $21, 0x1001
	ori $21, $21, 0x2BFC#endereço final linha 7
	lui $22, 0x1001 #endereço começo linha 8
	ori $22, $22, 0x2D70
	lui $23, 0x1001
	ori $23, $23, 0x2DFC #endereço final linha 8
	
nu3_11:  sw $28, 0($8)
	addi $8, $8, 4
	ble $8, $9, nu3_11
nu3_12:  sw $28, 0($10)
	addi $10, $10, 4
	ble $10, $11, nu3_12
nu3_13:  sw $28, 0($12)
	addi $12, $12, 4
	ble $12, $13, nu3_13
nu3_14:  sw $28, 0($14)
	addi $14, $14, 4
	ble $14, $15, nu3_14
nu3_15:  sw $28, 0($16)
	addi $16, $16, 4
	ble $16, $17, nu3_15
nu3_16:  sw $28, 0($18)
	addi $18, $18, 4
	ble $18, $19, nu3_16
nu3_17:  sw $28, 0($20)
	addi $20, $20, 4
	ble $20, $21, nu3_17
nu3_18:  sw $28, 0($22)
	addi $22, $22, 4
	ble $22, $23, nu3_18
	
	jr $31
#------------------MAR---------------------------------------------		
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
#------------------ILHAS------------------------------------------------------------------------------------
# começando de baixo para cima
desenhar_ilhas:
	#CORES
	lui $8,0x0033  # Verde
	ori $8,$8,0xA93D
	
	lui $9,0x00B2 # Marrom Claro
	ori $9,$9,0x5C11

	lui $10,0x00A4 # Marrom escuro
	ori $10,$10,0x5511
	#PRIMEIRA ILHA
# 1 linha
	lui $11, 0x1001 # Começo da terra escura
	ori $11, $11, 0x7400
	
	lui $12, 0x1001 # Final da terra escura
	ori $12, $12, 0x74BC
d1:
	sw $10,0($11)
	addi $11,$11,4
	ble $11,$12,d1
# 2 linha
	lui $11, 0x1001 # Começo da terra escura
	ori $11, $11, 0x7200

	lui $12, 0x1001 # Final da terra escura
	ori $12, $12, 0x7244

	lui $13, 0x1001 # Começo da terra cl ara
	ori $13, $13, 0x7248

	lui $14, 0x1001 # Final da terra clara
	ori $14, $14, 0x72B8

d2:
	sw $10,0($11)
	addi $11,$11,4
	ble $11,$12,d2 # desenha o 1 tom
	
d2a:	sw $9,0($13)
	addi $13,$13,4
	ble $13,$14,d2a # desenha o 2 tom
# 3 linha
	lui $11, 0x1001 # Começo da terra escura
	ori $11, $11, 0x7000
	
	lui $12, 0x1001 # Final da terra escura
	ori $12, $12, 0x703C
	
	lui $13, 0x1001 # Começo da terra clara
	ori $13, $13, 0x7040
	
	lui $14, 0x1001 # Final da terra clara
	ori $14, $14, 0x7048

	lui $15, 0x1001 # Começo verde
	ori $15, $15, 0x704C
	
	lui $16, 0x1001 # final verde
	ori $16, $16, 0x70B4
d3:
	sw $10,0($11)
	addi $11,$11,4
	ble $11,$12,d3 # desenha o 1 tom
	
d3a:	sw $9,0($13)
	addi $13,$13,4
	ble $13,$14,d3a # desenha o 2 tom
	
d3b:	sw $8,0($15)
	addi $15,$15,4
	ble $15,$16,d3b # desenha o verde
# 4 linha	
	lui $11, 0x1001 # Começo da terra escura
	ori $11, $11, 0x6E00
	
	lui $12, 0x1001 # Final da terra escura
	ori $12, $12, 0x6E3C
	
	lui $13, 0x1001 # Começo da terra clara
	ori $13, $13, 0x6E40
	
	lui $14, 0x1001 # Final da terra clara
	ori $14, $14, 0x6E48
	
d4:
	sw $10,0($11)
	addi $11,$11,4
	ble $11,$12,d4 # desenha o 1 tom
	
d4a:	sw $9,0($13)
	addi $13,$13,4
	ble $13,$14,d4a # desenha o 2 tom
# 5 linha
	lui $11, 0x1001 # Começo da terra escura
	ori $11, $11, 0x6C00
	
	lui $12, 0x1001 # Final da terra escura
	ori $12, $12, 0x6C30
	
	lui $13, 0x1001 # Começo da terra clara
	ori $13, $13, 0x6C34
	
	lui $14, 0x1001 # Final da terra clara
	ori $14, $14, 0x6C40
	
	lui $15, 0x1001 # 1 verde
	ori $15, $15, 0x6C44
	
	lui $16, 0x1001 # 2 verde
	ori $16, $16, 0x6C48
d5:
	sw $10,0($11)
	addi $11,$11,4
	ble $11,$12,d5 # desenha o 1 tom
	
d5a:	sw $9,0($13)
	addi $13,$13,4
	ble $13,$14,d5a # desenha o 2 tom		
	
	sw $8,0($15) # pinta de verde
	sw $8,0($16) # pinta de verde
	
# 6 linha
	lui $11, 0x1001 # Começo da terra escura
	ori $11, $11, 0x6A00
	
	lui $12, 0x1001 # Final da terra escura
	ori $12, $12, 0x6A30
	
	lui $13, 0x1001 # 1 terra clara
	ori $13, $13, 0x6A34
	
	lui $14, 0x1001 # 2 terra clara
	ori $14, $14, 0x6A38
	
	lui $15, 0x1001 # 1 verde
	ori $15, $15, 0x6A3C
	
	lui $16, 0x1001 # 2 verde
	ori $16, $16, 0x6A40
d6:
	sw $10,0($11)
	addi $11,$11,4
	ble $11,$12,d6 # desenha o 1 tom
	
	sw $9,0($13) # pinta de marrom claro
	sw $9,0($14) # pinta de marrom claro		
	sw $8,0($15) # pinta de verde
	sw $8,0($16) # pinta de verde
# 7 linha
	lui $11, 0x1001 # Começo da terra escura
	ori $11, $11, 0x6800
	
	lui $12, 0x1001 # Final da terra escura
	ori $12, $12, 0x6824
	
	lui $13, 0x1001 # Começo da terra clara
	ori $13, $13, 0x6828
	
	lui $14, 0x1001 # Final da terra clara
	ori $14, $14, 0x6838
	
d7:
	sw $10,0($11)
	addi $11,$11,4
	ble $11,$12,d7 # desenha o 1 tom
	
d7a:	sw $9,0($13)
	addi $13,$13,4
	ble $13,$14,d7a # desenha o 2 tom
# 8 linha
	lui $11, 0x1001 # Começo da terra escura
	ori $11, $11, 0x6600
	
	lui $12, 0x1001 # Final da terra escura
	ori $12, $12, 0x6624
	
	lui $13, 0x1001 # 1 terra clara
	ori $13, $13, 0x6628
	
	lui $14, 0x1001 # 2 terra clara
	ori $14, $14, 0x662C

	lui $17, 0x1001 # 3 terra clara
	ori $17, $17, 0x6630
	
	lui $15, 0x1001 # 1 verde
	ori $15, $15, 0x6634
	
	lui $16, 0x1001 # 2 verde
	ori $16, $16, 0x6638
	

d8:
	sw $10,0($11)
	addi $11,$11,4
	ble $11,$12,d8 # desenha o 1 tom
	
	sw $9,0($13) # pinta de marrom claro
	sw $9,0($14) # pinta de marrom claro		
	sw $8,0($15) # pinta de verde
	sw $8,0($16) # pinta de verde
	sw $9,0($17) # pinta de marom claro
	
# 9 linha
	lui $11, 0x1001 # Começo da terra escura
	ori $11, $11, 0x6400
	
	lui $12, 0x1001 # Final da terra escura
	ori $12, $12, 0x6418
	
	lui $13, 0x1001 # Começo da terra clara
	ori $13, $13, 0x641C
	
	lui $14, 0x1001 # Final da terra clara
	ori $14, $14, 0x6430
	
d9:
	sw $10,0($11)
	addi $11,$11,4
	ble $11,$12,d9 # desenha o 1 tom
	
d9a:	sw $9,0($13)
	addi $13,$13,4
	ble $13,$14,d9a # desenha o 2 tom
#10 linha
	lui $11, 0x1001 # Começo da terra escura
	ori $11, $11, 0x6200
	
	lui $12, 0x1001 # Final da terra escura
	ori $12, $12, 0x6218
	
	lui $13, 0x1001 # começo terra clara
	ori $13, $13, 0x621C
	
	lui $14, 0x1001 # final terra clara
	ori $14, $14, 0x6228
	
	lui $15, 0x1001 # 1 verde
	ori $15, $15, 0x622C
	
	lui $16, 0x1001 # 2 verde
	ori $16, $16, 0x6230
d10:
	sw $10,0($11)
	addi $11,$11,4
	ble $11,$12,d10 # desenha o 1 tom
	
d10a:	sw $9,0($13)
	addi $13,$13,4
	ble $13,$14,d10a
			
	sw $8,0($15) # pinta de verde
	sw $8,0($16) # pinta de verde
# # 11 linha
	lui $11, 0x1001 # Começo da terra escura
	ori $11, $11, 0x6000

	lui $12, 0x1001 # Final da terra escura
	ori $12, $12, 0x6008
	
	lui $13, 0x1001 # Começo da terra clara
	ori $13, $13, 0x600C

	lui $14, 0x1001 # Final da terra clara
	ori $14, $14, 0x6028	
d11:
	sw $10,0($11)
	addi $11,$11,4
	ble $11,$12,d11 # desenha o 1 tom	
	
d11a:	sw $9,0($13)
	addi $13,$13,4
	ble $13,$14,d11a # desenha o 2 tom
# 12 linha
	lui $11, 0x1001 # Começo da terra escura
	ori $11, $11, 0x5E00
	
	lui $12, 0x1001 # Final da terra escura
	ori $12, $12, 0x5E08
	
	lui $13, 0x1001 # começo terra clara
	ori $13, $13, 0x5E0C
	
	lui $14, 0x1001 # final terra clara
	ori $14, $14, 0x5E24
	
	lui $15, 0x1001 # 1 verde
	ori $15, $15, 0x5E28		
d12:
	sw $10,0($11)
	addi $11,$11,4
	ble $11,$12,d12 # desenha o 1 tom
	
d12a:	sw $9,0($13)
	addi $13,$13,4
	ble $13,$14,d12a # desenha o 2 tom
		
	sw $8,0($15) # pinta de verde
# 13 linha
	lui $11, 0x1001 # Começo da terra clara
	ori $11, $11, 0x5C00
	
	lui $12, 0x1001 # Final da terra clara
	ori $12, $12, 0x5C20

	lui $13, 0x1001 # 1 verde
	ori $13, $13, 0x5C24		
d13:
	sw $9,0($11)
	addi $11,$11,4
	ble $11,$12,d13 # desenha o 1 tom
	
	sw $8,0($13) # pinta verde
# 14 linha
	lui $11, 0x1001 # Começo da terra clara
	ori $11, $11, 0x5A00
	
	lui $12, 0x1001 # Final da terra clara
	ori $12, $12, 0x5A1C

	lui $13, 0x1001 # 1 verde
	ori $13, $13, 0x5A20		
d14:
	sw $9,0($11)
	addi $11,$11,4
	ble $11,$12,d14 # desenha o 1 tom
	
	sw $8,0($13) # pinta verde
# 15 linha
	lui $11, 0x1001 # Começo da terra clara
	ori $11, $11, 0x5800
	
	lui $12, 0x1001 # Final da terra clara
	ori $12, $12, 0x5814
	
	lui $13, 0x1001 # 1 verde
	ori $13, $13, 0x5818
	
	lui $14, 0x1001 # 2 verde
	ori $14, $14, 0x581C
	

d15:
	sw $9,0($11)
	addi $11,$11,4
	ble $11,$12,d15 # desenha o 1 tom
	
	sw $8,0($13) # pinta verde
	sw $8,0($14) # pinta verde
# 16 linha 
	lui $11, 0x1001 # Começo da terra clara
	ori $11, $11, 0x5600
	
	lui $12, 0x1001 # Final da terra clara
	ori $12, $12, 0x5614
		
d16:
	sw $9,0($11)
	addi $11,$11,4
	ble $11,$12,d16 # desenha o 1 tom
# 17 linha
	lui $11, 0x1001 # Começo da terra clara
	ori $11, $11, 0x5400
	
	lui $12, 0x1001 # Final da terra clara
	ori $12, $12, 0x5414
		
d17:
	sw $9,0($11)
	addi $11,$11,4
	ble $11,$12,d17 # desenha o 1 tom
# 18 linha
	lui $11, 0x1001 # Começo da terra clara
	ori $11, $11, 0x5200
	
	lui $12, 0x1001 # Final da terra clara
	ori $12, $12, 0x5214
		
d18:
	sw $9,0($11)
	addi $11,$11,4
	ble $11,$12,d18 # desenha o 1 tom
# 19 linha
	lui $11, 0x1001 # Começo da terra clara
	ori $11, $11, 0x5000

	lui $12, 0x1001 # Final da terra clara
	ori $12, $12, 0x5008
	
	lui $13, 0x1001 # Começo verde
	ori $13, $13, 0x500C

	lui $14, 0x1001 # Final verde
	ori $14, $14, 0x5014	
d19:
	sw $9,0($11)
	addi $11,$11,4
	ble $11,$12,d19 # desenha o 1 tom	
	
d19a:	sw $8,0($13)
	addi $13,$13,4
	ble $13,$14,d19a # desenha o 2 tom	
# 20 linha
	lui $11, 0x1001 # Começo da terra clara
	ori $11, $11, 0x4E00

	lui $12, 0x1001 # Final da terra clara
	ori $12, $12, 0x4E08
	
d20:
	sw $9,0($11)
	addi $11,$11,4
	ble $11,$12,d20 # desenha o 1 tom
# 21 linha
	lui $11, 0x1001 # Começo da terra clara
	ori $11, $11, 0x4C00

	lui $12, 0x1001 # Final da terra clara
	ori $12, $12, 0x4C08
	
d21:
	sw $9,0($11)
	addi $11,$11,4
	ble $11,$12,d21 # desenha o 1 tom
# 22 linha
	lui $11, 0x1001 # Começo da terra clara
	ori $11, $11, 0x4A00

	lui $12, 0x1001 # Final da terra clara
	ori $12, $12, 0x4A08
	
d22:
	sw $9,0($11)
	addi $11,$11,4
	ble $11,$12,d22 # desenha o 1 tom
# 23 linha
	lui $11, 0x1001 # Começo verde
	ori $11, $11, 0x4800

	lui $12, 0x1001 # Final verde
	ori $12, $12, 0x4808
	
d23:
	sw $8,0($11)
	addi $11,$11,4
	ble $11,$12,d23 # desenha o 1 tom
	
#++++++++++ SEGUNDA ILHA +++++++++++
# 1 linha
	lui $11, 0x1001 # Começo da terra escura
	ori $11, $11, 0x7544

	lui $12, 0x1001 # Final da terra escura
	ori $12, $12, 0x75FC
f1:
	sw $10,0($11)
	addi $11,$11,4
	ble $11,$12,f1
# 2 linha
	lui $11, 0x1001 # Começo da terra escura
	ori $11, $11, 0x73B8

	lui $12, 0x1001 # Final da terra escura
	ori $12, $12, 0x73FC

	lui $13, 0x1001 # Começo da terra clara
	ori $13, $13, 0x7348

	lui $14, 0x1001 # Final da terra clara
	ori $14, $14, 0x73B4
	
f2:
	sw $10,0($11)
	addi $11,$11,4
	ble $11,$12,f2 # desenha o 1 tom
	
f2a:	sw $9,0($13)
	addi $13,$13,4
	ble $13,$14,f2a # desenha o 2 tom
# 3 linha
	lui $11, 0x1001 # Começo da terra escura
	ori $11, $11, 0x71C0
	
	lui $12, 0x1001 # Final da terra escura
	ori $12, $12, 0x71FC
	
	lui $13, 0x1001 # Começo da terra clara
	ori $13, $13, 0x71B4
	
	lui $14, 0x1001 # Final da terra clara
	ori $14, $14, 0x71BC
	
	lui $15, 0x1001 # Começo verde
	ori $15, $15, 0x714C

	lui $16, 0x1001 # final verde
	ori $16, $16, 0x71B0
f3:
	sw $10,0($11)
	addi $11,$11,4
	ble $11,$12,f3 # desenha o 1 tom
	
f3a:	sw $9,0($13)
	addi $13,$13,4
	ble $13,$14,f3a # desenha o 2 tom
	
f3b:	sw $8,0($15)
	addi $15,$15,4
	ble $15,$16,f3b # desenha o verde
# 4 linha	
	lui $11, 0x1001 # Começo da terra escura
	ori $11, $11, 0x6FC0
	
	lui $12, 0x1001 # Final da terra escura
	ori $12, $12, 0x6FFC
	
	lui $13, 0x1001 # Começo da terra clara
	ori $13, $13, 0x6FB4

	lui $14, 0x1001 # Final da terra clara
	ori $14, $14, 0x6FC8
	
f4:
	sw $10,0($11)
	addi $11,$11,4
	ble $11,$12,f4 # desenha o 1 tom
	
f4a:	sw $9,0($13)
	addi $13,$13,4
	ble $13,$14,f4a # desenha o 2 tom
# 5 linha
	lui $11, 0x1001 # Começo da terra escura
	ori $11, $11, 0x6DCC
	
	lui $12, 0x1001 # Final da terra escura
	ori $12, $12, 0x6DFC
	
	lui $13, 0x1001 # Começo da terra clara
	ori $13, $13, 0x6DBC

	lui $14, 0x1001 # Final da terra clara
	ori $14, $14, 0x6DC8
	
	lui $15, 0x1001 # 1 verde
	ori $15, $15, 0x6DB4

	lui $16, 0x1001 # 2 verde
	ori $16, $16, 0x6DB8
f5:
	sw $10,0($11)
	addi $11,$11,4
	ble $11,$12,f5 # desenha o 1 tom
	
f5a:	sw $9,0($13)
	addi $13,$13,4
	ble $13,$14,f5a # desenha o 2 tom		
	
	sw $8,0($15) # pinta de verde
	sw $8,0($16) # pinta de verde
	
# 6 linha
	lui $11, 0x1001 # Começo da terra escura
	ori $11, $11, 0x6BCC
	
	lui $12, 0x1001 # Final da terra escura
	ori $12, $12, 0x6BFC
	
	lui $13, 0x1001 # 1 terra clara
	ori $13, $13, 0x6BC4

	lui $14, 0x1001 # 2 terra clara
	ori $14, $14, 0x6BC8
	
	lui $15, 0x1001 # 1 verde
	ori $15, $15, 0x6BBC

	lui $16, 0x1001 # 2 verde
	ori $16, $16, 0x6BC0
f6:
	sw $10,0($11)
	addi $11,$11,4
	ble $11,$12,f6 # desenha o 1 tom
	
	sw $9,0($13) # pinta de marrom claro
	sw $9,0($14) # pinta de marrom claro		
	sw $8,0($15) # pinta de verde
	sw $8,0($16) # pinta de verde
# 7 linha
	lui $11, 0x1001 # Começo da terra escura
	ori $11, $11, 0x69D8
	
	lui $12, 0x1001 # Final da terra escura
	ori $12, $12, 0x69FC
	
	lui $13, 0x1001 # Começo da terra clara
	ori $13, $13, 0x69C4
	
	lui $14, 0x1001 # Final da terra clara
	ori $14, $14, 0x69D4
	
f7:
	sw $10,0($11)
	addi $11,$11,4
	ble $11,$12,f7 # desenha o 1 tom
	
f7a:	sw $9,0($13)
	addi $13,$13,4
	ble $13,$14,f7a # desenha o 2 tom
# 8 linha
	lui $11, 0x1001 # Começo da terra escura
	ori $11, $11, 0x67E4
	
	lui $12, 0x1001 # Final da terra escura
	ori $12, $12, 0x67FC
	
	lui $13, 0x1001 # começo terra clara
	ori $13, $13, 0x67CC

	lui $14, 0x1001 # final terra clara
	ori $14, $14, 0x67E0

	lui $15, 0x1001 # 1 verde
	ori $15, $15, 0x67C4
	
	lui $16, 0x1001 # 2 verde
	ori $16, $16, 0x67C8
f8:
	sw $10,0($11)
	addi $11,$11,4
	ble $11,$12,f8 # desenha o 1 tom
f8a:	
	sw $9,0($13) # pinta de marrom claro
	addi $13,$13,4
	ble $13,$14,f8a
		
	sw $8,0($15) # pinta de verde
	sw $8,0($16) # pinta de verde
# 9 linha
	lui $11, 0x1001 # Começo da terra escura
	ori $11, $11, 0x65E4
	
	lui $12, 0x1001 # Final da terra escura
	ori $12, $12, 0x65FC
	
	lui $13, 0x1001 # Começo da terra clara
	ori $13, $13, 0x65CC
	
	lui $14, 0x1001 # Final da terra clara
	ori $14, $14, 0x65E0
	
f9:
	sw $10,0($11)
	addi $11,$11,4
	ble $11,$12,f9 # desenha o 1 tom
	
f9a:	sw $9,0($13)
	addi $13,$13,4
	ble $13,$14,f9a # desenha o 2 tom
#10 linha
	lui $11, 0x1001 # Começo da terra escura
	ori $11, $11, 0x63E4
	
	lui $12, 0x1001 # Final da terra escura
	ori $12, $12, 0x63FC
	
	lui $13, 0x1001 # começo terra clara
	ori $13, $13, 0x63D4

	lui $14, 0x1001 # final terra clara
	ori $14, $14, 0x63E0

	lui $15, 0x1001 # 1 verde
	ori $15, $15, 0x63CC
	
	lui $16, 0x1001 # 2 verde
	ori $16, $16, 0x63D0
f10:
	sw $10,0($11)
	addi $11,$11,4
	ble $11,$12,f10 # desenha o 1 tom
f10a:	
	sw $9,0($13) # pinta de marrom claro
	addi $13,$13,4
	ble $13,$14,f10a
			
	sw $8,0($15) # pinta de verde
	sw $8,0($16) # pinta de verde
# # 11 linha
	lui $11, 0x1001 # Começo da terra escura
	ori $11, $11, 0x61F4

	lui $12, 0x1001 # Final da terra escura
	ori $12, $12, 0x61FC

	lui $13, 0x1001 # Começo da terra clara
	ori $13, $13, 0x61D4

	lui $14, 0x1001 # Final da terra clara
	ori $14, $14, 0x61F0	
f11:
	sw $10,0($11)
	addi $11,$11,4
	ble $11,$12,f11 # desenha o 1 tom	
	
f11a:	sw $9,0($13)
	addi $13,$13,4
	ble $13,$14,f11a # desenha o 2 tom
# 12 linha
	lui $11, 0x1001 # Começo da terra escura
	ori $11, $11, 0x5FF4
	
	lui $12, 0x1001 # Final da terra escura
	ori $12, $12, 0x5FFC
	
	lui $13, 0x1001 # começo terra clara
	ori $13, $13, 0x5FD8
	
	lui $14, 0x1001 # final terra clara
	ori $14, $14, 0x5FF0
	
	lui $15, 0x1001 # 1 verde
	ori $15, $15, 0x5FD4		
f12:
	sw $10,0($11)
	addi $11,$11,4
	ble $11,$12,f12 # desenha o 1 tom
f12a:	
	sw $9,0($13) # pinta de marrom claro
	addi $13,$13,4
	ble $13,$14,f12a
		
	sw $8,0($15) # pinta de verde
# 13 linha
	lui $11, 0x1001 # Começo da terra clara
	ori $11, $11, 0x5DDC
	
	lui $12, 0x1001 # Final da terra clara
	ori $12, $12, 0x5DFC

	lui $13, 0x1001 # 1 verde
	ori $13, $13, 0x5DD8		
f13:
	sw $9,0($11)
	addi $11,$11,4
	ble $11,$12,f13 # desenha o 1 tom
	
	sw $8,0($13) # pinta verde
# 14 linha
	lui $11, 0x1001 # Começo da terra clara
	ori $11, $11, 0x5BE0
	
	lui $12, 0x1001 # Final da terra clara
	ori $12, $12, 0x5BFC

	lui $13, 0x1001 # 1 verde
	ori $13, $13, 0x5BDC		
f14:
	sw $9,0($11)
	addi $11,$11,4
	ble $11,$12,f14 # desenha o 1 tom
	
	sw $8,0($13) # pinta verde
# 15 linha
	lui $11, 0x1001 # Começo da terra clara
	ori $11, $11, 0x59E8
	
	lui $12, 0x1001 # Final da terra clara
	ori $12, $12, 0x59FC
	
	lui $13, 0x1001 # 1 verde
	ori $13, $13, 0x59E0

	lui $14, 0x1001 # 2 verde
	ori $14, $14, 0x59E4
	

f15:
	sw $9,0($11)
	addi $11,$11,4
	ble $11,$12,f15 # desenha o 1 tom
	
	sw $8,0($13) # pinta verde
	sw $8,0($14) # pinta verde
# 16 linha 
	lui $11, 0x1001 # Começo da terra clara
	ori $11, $11, 0x57E8
	
	lui $12, 0x1001 # Final da terra clara
	ori $12, $12, 0x57FC
		
f16:
	sw $9,0($11)
	addi $11,$11,4
	ble $11,$12,f16 # desenha o 1 tom
# 17 linha
	lui $11, 0x1001 # Começo da terra clara
	ori $11, $11, 0x55E8
	
	lui $12, 0x1001 # Final da terra clara
	ori $12, $12, 0x55FC
		
f17:
	sw $9,0($11)
	addi $11,$11,4
	ble $11,$12,f17 # desenha o 1 tom
# 18 linha
	lui $11, 0x1001 # Começo da terra clara
	ori $11, $11, 0x53E8
	
	lui $12, 0x1001 # Final da terra clara
	ori $12, $12, 0x53FC
		
f18:
	sw $9,0($11)
	addi $11,$11,4
	ble $11,$12,f18 # desenha o 1 tom
# 19 linha
	lui $11, 0x1001 # Começo da terra clara
	ori $11, $11, 0x51F4

	lui $12, 0x1001 # Final da terra clara
	ori $12, $12, 0x51FC
	
	lui $13, 0x1001 # Começo verde
	ori $13, $13, 0x51E8

	lui $14, 0x1001 # Final verde
	ori $14, $14, 0x51F0	
f19:
	sw $9,0($11)
	addi $11,$11,4
	ble $11,$12,f19 # desenha o 1 tom	
	
f19a:	sw $8,0($13)
	addi $13,$13,4
	ble $13,$14,f19a # desenha o 2 tom	
# 20 linha
	lui $11, 0x1001 # Começo da terra clara
	ori $11, $11, 0x4FF4

	lui $12, 0x1001 # Final da terra clara
	ori $12, $12, 0x4FFC
	
f20:
	sw $9,0($11)
	addi $11,$11,4
	ble $11,$12,f20 # desenha o 1 tom
# 21 linha
	lui $11, 0x1001 # Começo da terra clara
	ori $11, $11, 0x4DF4

	lui $12, 0x1001 # Final da terra clara
	ori $12, $12, 0x4DFC
	
f21:
	sw $9,0($11)
	addi $11,$11,4
	ble $11,$12,f21 # desenha o 1 tom
# 22 linha
	lui $11, 0x1001 # Começo da terra clara
	ori $11, $11, 0x4BF4

	lui $12, 0x1001 # Final da terra clara
	ori $12, $12, 0x4BFC
	
f22:
	sw $9,0($11)
	addi $11,$11,4
	ble $11,$12,f22 # desenha o 1 tom
# 23 linha
	lui $11, 0x1001 # Começo verde
	ori $11, $11, 0x49F4

	lui $12, 0x1001 # Final verde
	ori $12, $12, 0x49FC
	
	
f23:
	sw $8,0($11)
	addi $11,$11,4
	ble $11,$12,f23 # desenha o 1 tom
	
	jr $31
#----------------Estilingue-------------------------------------------------------------------------------	
estilingue:
	# CORES
	
	lui $8,0x0074 # Cor marrom do estilingue
	ori $8,$8,0x3C0B
	
	lui $9,0x006b  # vermelho corda
	ori $9,$9,0x0002
	
	# 1 coluna
	lui $10, 0x1001 # Começo marrom
	ori $10, $10, 0x4850
	
	lui $11, 0x1001 #  final marrom
	ori $11, $11, 0x5A50
	
	lui $12, 0x1001 # 1 corda
	ori $12, $12, 0x4E50
	
	lui $13, 0x1001 # 2 corda
	ori $13, $13, 0x5050

c1:
	sw $8,0($10)
	addi $10,$10,512
	ble $10,$11,c1
	
	sw $9,0($12)	
	sw $9,0($13)	
	# 2 coluna
	lui $10, 0x1001 # Começo marrom
	ori $10, $10, 0x4854
	
	lui $11, 0x1001 #  final marrom
	ori $11, $11, 0x5E54
	
	lui $12, 0x1001 # 1 corda
	ori $12, $12, 0x4E54
	
	lui $13, 0x1001 # 2 corda
	ori $13, $13, 0x5054

c2:
	sw $8,0($10)
	addi $10,$10,512
	ble $10,$11,c2
	
	sw $9,0($12)	
	sw $9,0($13)	
	# 3 coluna
	lui $10, 0x1001 # Começo marrom
	ori $10, $10, 0x5A58
	
	lui $11, 0x1001 #  final marrom
	ori $11, $11, 0x5E58	
c3:
	sw $8,0($10)
	addi $10,$10,512
	ble $10,$11,c3
	
	# 4 coluna
	lui $10, 0x1001 # Começo marrom
	ori $10, $10, 0x5C5C
	
	lui $11, 0x1001 #  final marrom
	ori $11, $11, 0x605C	
c4:
	sw $8,0($10)
	addi $10,$10,512
	ble $10,$11,c4
	
	# 5 coluna	
	lui $10, 0x1001 # Começo marrom
	ori $10, $10, 0x6060
	
	lui $11, 0x1001 #  final marrom
	ori $11, $11, 0x6E60	
c5:
	sw $8,0($10)
	addi $10,$10,512
	ble $10,$11,c5
	# 6 coluna
	lui $10, 0x1001 # Começo marrom
	ori $10, $10, 0x6064
	
	lui $11, 0x1001 #  final marrom
	ori $11, $11, 0x6E64	
c6:
	sw $8,0($10)
	addi $10,$10,512
	ble $10,$11,c6
	# 7 coluna
	lui $10, 0x1001 # Começo marrom
	ori $10, $10, 0x6068
	
	lui $11, 0x1001 #  final marrom
	ori $11, $11, 0x6E68	
c7:
	sw $8,0($10)
	addi $10,$10,512
	ble $10,$11,c7
	# 8 coluna
	lui $10, 0x1001 # Começo marrom
	ori $10, $10, 0x606C
	
	lui $11, 0x1001 #  final marrom
	ori $11, $11, 0x6E6C	
c8:
	sw $8,0($10)
	addi $10,$10,512
	ble $10,$11,c8
	# 9 coluna
	lui $10, 0x1001 # Começo marrom
	ori $10, $10, 0x5C70
	
	lui $11, 0x1001 #  final marrom
	ori $11, $11, 0x6070
c9:
	sw $8,0($10)
	addi $10,$10,512
	ble $10,$11,c9
	# 10 coluna
	lui $10, 0x1001 # Começo marrom
	ori $10, $10, 0x5A74

	lui $11, 0x1001 #  final marrom
	ori $11, $11, 0x5E74
c10:
	sw $8,0($10)
	addi $10,$10,512
	ble $10,$11,c10
	# 11 coluna
	lui $10, 0x1001 # Começo marrom
	ori $10, $10, 0x4878
	
	lui $11, 0x1001 #  final marrom
	ori $11, $11, 0x5C78
	
	lui $12, 0x1001 # 1 corda
	ori $12, $12, 0x4E78
	
	lui $13, 0x1001 # 2 corda
	ori $13, $13, 0x5078

c11:
	sw $8,0($10)
	addi $10,$10,512
	ble $10,$11,c11
	sw $9,0($12)
	sw $9,0($13)
	# 12 coluna
	lui $10, 0x1001 # Começo marrom
	ori $10, $10, 0x487C
	
	lui $11, 0x1001 #  final marrom
	ori $11, $11, 0x5A7C
	
	lui $12, 0x1001 # 1 corda
	ori $12, $12, 0x4E7C
	
	lui $13, 0x1001 # 2 corda
	ori $13, $13, 0x507C

c12:
	sw $8,0($10)
	addi $10,$10,512
	ble $10,$11,c12
	
	sw $9,0($12)
	sw $9,0($13)
	jr $31

#---------------OBSTACULOS-------------------------------------------------------------------------------------
obstaculos:
	
	# Primeira coluna
	lui $8, 0x1001 # endereço começo
	ori $8, $8, 0x6758
	lui $9, 0x1001 # endereço final
	ori $9, $9, 0x6F58
	
	# Segunda coluna
	lui $10, 0x1001 # endereço começo
	ori $10, $10, 0x6770
	lui $11, 0x1001 # endereço final
	ori $11, $11, 0x6F70
	
	# Terceira coluna
	lui $12, 0x1001 # endereço começo
	ori $12, $12, 0x5D8C
	lui $13, 0x1001 # endereço final
	ori $13, $13, 0x6F8C
	
	# Quarta coluna
	lui $14, 0x1001 # endereço começo
	ori $14, $14, 0x5DA4
	lui $15, 0x1001 # endereço final
	ori $15, $15, 0x6FA4
	
	# Primeira linha
	lui $16, 0x1001 # endereço começo
	ori $16, $16, 0x6550
	lui $17, 0x1001 # endereço final
	ori $17, $17, 0x6578
	
	# Segunda linha
	lui $18, 0x1001 # endereço começo
	ori $18, $18, 0x5B84
	lui $19, 0x1001 # endereço final
	ori $19, $19, 0x5BAC
	
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
# -----------------PASSARO-------------------------------------------------------------------------------------
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
	
	lui $13,0x006F # Cor do fundo
	ori $13,$13,0x66Eb
	
	# Primeira coluna
	lui $14, 0x1001 # começo preto
	ori $14, $14, 0x4A58
	
	lui $15, 0x1001 # final preto
	ori $15, $15, 0x5A58
	
	lui $16,0x1001  # Endereço Fundo
	ori $16,$16,0x5058 
	
p:	sw $9,0($14)
	addi $14,$14,512
	ble $14,$15,p
	
	sw $13,0($16)
	
	#Segunda coluna
	lui $14, 0x1001 # começo preto
	ori $14, $14, 0x485C
	
	lui $15,0x1001 
	ori $15, $15, 0x5C5C # final preto
	
	lui $16,0x1001
	ori $16, $16, 0x4C5C # 1 red
	
	lui $17,0x1001 
	ori $17, $17, 0x525C# 2 red
	
	lui $18,0x1001
	ori $18, $18, 0x545C # 3 red
	
	lui $19, 0x1001 # 4 red
	ori $19, $19, 0x565C
	
	lui $20, 0x1001 # 5 red
	ori $20, $20, 0x585C
s:
	sw $9,0($14)
	addi $14,$14,512
	ble $14,$15,s
	
	sw $10,0($16) 
	sw $10,0($17)
	sw $10,0($18)
	sw $10,0($19)
	sw $10,0($20)
	
	# Terceira coluna
	lui $14, 0x1001 # começo preto
	ori $14, $14, 0x4860
	
	lui $15,0x1001 
	ori $15, $15, 0x5C60 # final preto
	
	lui $16,0x1001
	ori $16, $16, 0x4A60# 1 red
	
	lui $17,0x1001 
	ori $17, $17, 0x4C60# 2 red
	
	lui $18,0x1001
	ori $18, $18, 0x5060 # 3 red
	
	lui $19, 0x1001 # 4 red
	ori $19, $19, 0x5660
	
	lui $20, 0x1001 # 1 beje
	ori $20, $20, 0x5860
	
	lui $21, 0x1001 # 2 beje
	ori $21, $21, 0x5A60
t:
	sw $9,0($14)
	addi $14,$14,512
	ble $14,$15,t
	
	sw $10,0($16) 
	sw $10,0($17)
	sw $10,0($18)
	sw $10,0($19)
	sw $12,0($20)
	sw $12,0($21)
	
	#Quarta coluna
	lui $14, 0x1001 # começo preto
	ori $14, $14, 0x4864

	lui $15,0x1001 
	ori $15, $15, 0x5C64 # final preto

	lui $16,0x1001
	ori $16, $16, 0x4A64  # 1 red
	
	lui $17,0x1001 
	ori $17, $17, 0x4C64 # 2 red
	
	lui $18,0x1001
	ori $18, $18, 0x4E64 # 3 red
	
	lui $19, 0x1001 # 1 branco
	ori $19, $19, 0x5264
	
	lui $20, 0x1001 # 2 branco
	ori $20, $20, 0x5464
	
	lui $21, 0x1001 # 1 beje
	ori $21, $21, 0x5864
	
	lui $22, 0x1001 # 2 beje
	ori $22, $22, 0x5A64
qa:	
	sw $9,0($14)
	addi $14,$14,512
	ble $14,$15,qa
	
	sw $10,0($16)
	sw $10,0($17)
	sw $10,0($18)
	sw $8,0($19)
	sw $8,0($20)
	sw $12,0($21)
	sw $12,0($22)
	
	# Quinta coluna
	lui $14, 0x1001 # começo preto
	ori $14, $14, 0x4868

	lui $15,0x1001 
	ori $15, $15, 0x5C68# final preto

	lui $16,0x1001
	ori $16, $16, 0x4A68  # 1 red
	
	lui $17,0x1001 
	ori $17, $17, 0x4C68 # 2 red
	
	lui $18,0x1001
	ori $18, $18, 0x4E68 # 3 red
	
	lui $19, 0x1001 # 4 red
	ori $19, $19, 0x5068
	
	lui $20, 0x1001 #  branco
	ori $20, $20, 0x5468
	
	lui $21, 0x1001 # amarelo
	ori $21, $21, 0x5868

	lui $22, 0x1001 #  beje
	ori $22, $22, 0x5A68
qi:	
	sw $9,0($14)
	addi $14,$14,512
	ble $14,$15,qi
	
	sw $10,0($16)
	sw $10,0($17)
	sw $10,0($18)
	sw $10,0($19)
	sw $8,0($20)
	sw $11,0($21)
	sw $12,0($22)
	
	#Sexta coluna
	lui $14, 0x1001 # começo preto
	ori $14, $14, 0x486C

	lui $15,0x1001 
	ori $15, $15, 0x5C6C  # final preto

	lui $16,0x1001
	ori $16, $16, 0x4A6C # 1 red
	
	lui $17,0x1001 
	ori $17, $17, 0x4C6C # 2 red
	
	lui $18,0x1001
	ori $18, $18, 0x4E6C # 3 red
	
	lui $19, 0x1001 # 4 red
	ori $19, $19, 0x506C
	
	lui $20, 0x1001 #  1 amarelo
	ori $20, $20, 0x566C
	
	lui $21, 0x1001 # 2 amarelo
	ori $21, $21, 0x586C

	lui $22, 0x1001 #  beje
	ori $22, $22, 0x5A6C
sex:	
	sw $9,0($14)
	addi $14,$14,512
	ble $14,$15,sex
	
	sw $10,0($16)
	sw $10,0($17)
	sw $10,0($18)
	sw $10,0($19)
	sw $11,0($20)
	sw $11,0($21)
	sw $12,0($22)
	
	# Sétima coluna
	lui $14, 0x1001 # começo preto
	ori $14, $14, 0x4A70

	lui $15,0x1001 
	ori $15, $15, 0x5C70  # final preto

	lui $16,0x1001
	ori $16, $16, 0x4C70 # 1 red
	
	lui $17,0x1001 
	ori $17, $17, 0x4E70 # 2 red
	
	lui $18,0x1001
	ori $18, $18, 0x5070 # 3 red
	
	lui $19, 0x1001 # branco
	ori $19, $19, 0x5470
	
	lui $20, 0x1001 #  1 amarelo
	ori $20, $20, 0x5670
	
	lui $21, 0x1001 # 2 amarelo
	ori $21, $21, 0x5870

	lui $22, 0x1001 #  beje
	ori $22, $22, 0x5A70
	
set:
	sw $9,0($14)
	addi $14,$14,512
	ble $14,$15,set
	
	sw $10,0($16)
	sw $10,0($17)
	sw $10,0($18)
	sw $8,0($19)
	sw $11,0($20)
	sw $11,0($21)
	sw $12,0($22)
	
	# OITAVA COLUNA
	
	lui $14, 0x1001 # começo preto
	ori $14, $14, 0x4C74

	lui $15,0x1001 
	ori $15, $15, 0x5C74  # final preto

	lui $16,0x1001
	ori $16, $16, 0x4E74 #  red
	
	lui $17,0x1001 
	ori $17, $17, 0x5674# 1 amarelo
	
	lui $18,0x1001
	ori $18, $18, 0x5874 # 2 amarelo

	lui $19, 0x1001 # beje
	ori $19, $19, 0x5A74
oitr:
	sw $9,0($14)
	addi $14,$14,512
	ble $14,$15,oitr
	
	sw $10,0($16)
	sw $11,0($17)
	sw $11,0($18)
	sw $12,0($19)
	# NONA COLUNA
	lui $14, 0x1001 # começo preto
	ori $14, $14, 0x4E78

	lui $15,0x1001 
	ori $15, $15, 0x5A78 # final preto

	lui $16,0x1001
	ori $16, $16, 0x5278 #  1 branco

	lui $17,0x1001 
	ori $17, $17, 0x5478 # 2 branco

	lui $18,0x1001
	ori $18, $18, 0x5678# 1 amarelo

	lui $19, 0x1001 # 2 amarelo
	ori $19, $19, 0x5878
novar:
	sw $9,0($14)
	addi $14,$14,512
	ble $14,$15,novar
	
	sw $8,0($16)
	sw $8,0($17)
	sw $11,0($18)
	sw $11,0($19)
	
	# DECIMA COLUNA
	lui $14, 0x1001 # começo preto
	ori $14, $14, 0x507C

	lui $15,0x1001 
	ori $15, $15, 0x567C # final preto

	lui $16,0x1001
	ori $16, $16, 0x587C #  amarelo

dezr:	
	sw $9,0($14)
	addi $14,$14,512
	ble $14,$15,dezr
	
	sw $11,0($16)
	
	jr $31


#-------------------------Primeiro Porco---------------------
PORCOHAT
    addi $5, $0, 10 # base do porco
    addi $6, $0, 11 # altura do porco
    mul $7, $5, $6 # area do porco
    addi $7, $7, 110 # area do porco hat + area do porco
    addi $7, $7, 8192 # tamanho da tela + area dos porcos
    addi $8, $0, 84 # x inicial 
    addi $9, $0, 40 # y inicial #0x10014F50
    addi $10, $0, 94 # x final. max 127
    addi $11, $0, 50 # y final. max 63 #0x10016374
    
# carregar personagem porcohat
	addi $8 $0 111 # endereco do inicio do personagem na memoria
	sll $8 $8 3 # 2 telas * 4 bits
	mul $17 $5 $6 # linhas * colunas do desenho
	sll $17 $17 2 
	add $8 $8 $17
	addi $8 $8 0x10010000 
	add $9, $0, $22 # base (colunas do desenho)
	add $10, $0, $23 # altura (linhas do desenho)
	add $11, $0, $18 # x
	add $12, $0, $19 # y
	jal PorcoHat
	
PorcoHat:  
        lui $15, 0x1001
	sll $11, $11, 2
        sll $12, $12, 9 
        add $15, $15, $11
        add $15, $15, $12 # posicao inicial a ser desenhada
        add $13, $0, $9 # largura 

#-------------------------Segundo Porco---------------------
# TEM QUE SALVAR O FUNDO PARA FAZER QUALQUER TIPO DE ANIMAÇÃO!!!!!!!
porco2: #CORES
	lui $8,0x00ff # Branco
	ori $8,$8,0xffff
	
	lui $9,0x0000 # Preto
	ori $9,$9,0x0000
	
	lui $10,0x00a8 # Verde 1
	ori $10,$10,0xe61d
	
	lui $11,0x0022 # Verde 2
	ori $11,$11,0xb14c
	
	
	# Primeira linha
	lui $13, 0x1001 # endereço começo Preto
	ori $13, $13, 0x479C
	lui $14, 0x1001 # endereço final
	ori $14, $14, 0x47A4
	
	# Segunda linha
	lui $15, 0x1001 # endereço começo Preto
	ori $15, $15, 0x4984
	lui $16, 0x1001 # endereço final
	ori $16, $16, 0x498C
	lui $17, 0x1001 # endereço começo Preto
	ori $17, $17, 0x4998
	lui $18, 0x1001 # endereço final
	ori $18, $18, 0x49A8
	lui $19, 0x1001 # endereço começo Verde 1
	ori $19, $19, 0x499C
	lui $20, 0x1001 # endereço final
	ori $20, $20, 0x49A4
	
p2_l1:  sw $9, 0($13)
	addi $13, $13, 4
	ble $13, $14, p2_l1
p2_l2_1:sw $9, 0($15)
	addi $15, $15, 4
	ble $15, $16, p2_l2_1
p2_l2_2:sw $9, 0($17)
	addi $17, $17, 4
	ble $17, $18, p2_l2_2
p2_l2_3:sw $10, 0($19)
	addi $19, $19, 4
	ble $19, $20, p2_l2_3
	
	# Terceira linha
	lui $13, 0x1001 # endereço começo Preto
	ori $13, $13, 0x4B80
	lui $14, 0x1001 # endereço final
	ori $14, $14, 0x4BA8
	lui $15, 0x1001 # endereço começo Verde 1
	ori $15, $15, 0x4B84
	lui $16, 0x1001 # endereço final
	ori $16, $16, 0x4B8C
	lui $17, 0x1001 # endereço começo Verde 1
	ori $17, $17, 0x4B9C
	lui $18, 0x1001 # endereço final
	ori $18, $18, 0x4BA4
	
	# Quarta linha
	lui $19, 0x1001 # endereço começo Preto
	ori $19, $19, 0x4D80
	lui $20, 0x1001 # endereço final
	ori $20, $20, 0x4DA8
	lui $21, 0x1001 # endereço começo Verde 1
	ori $21, $21, 0x4D84
	lui $22, 0x1001 # endereço final
	ori $22, $22, 0x4DA4
	
p2_l3_1:sw $9, 0($13)
	addi $13, $13, 4
	ble $13, $14, p2_l3_1
p2_l3_2:sw $10, 0($15)
	addi $15, $15, 4
	ble $15, $16, p2_l3_2
p2_l3_3:sw $10, 0($17)
	addi $17, $17, 4
	ble $17, $18, p2_l3_3
p2_l4_1:sw $9, 0($19)
	addi $19, $19, 4
	ble $19, $20, p2_l4_1
p2_l4_2:sw $10, 0($21)
	addi $21, $21, 4
	ble $21, $22, p2_l4_2
	
	# Quinta linha
	lui $12, 0x1001 # endereço começo preto
	ori $12, $12, 0x4F84
	lui $13, 0x1001 # endereço final
	ori $13, $13, 0x4FA8
	lui $14, 0x1001 # endereço começo Branco
	ori $14, $14, 0x4F88
	lui $15, 0x1001 # endereço final
	ori $15, $15, 0x4FA4
	lui $16, 0x1001 # endereço começo Verde 1
	ori $16, $16, 0x4F90
	lui $17, 0x1001 # endereço final
	ori $17, $17, 0x4F9C
	
	# Sexta linha
	lui $18, 0x1001 # endereço começo Preto
	ori $18, $18, 0x5184
	lui $19, 0x1001 # endereço final
	ori $19, $19, 0x51A8
	lui $20, 0x1001 # endereço começo Branco
	ori $20, $20, 0x518C
	lui $21, 0x1001 # endereço final
	ori $21, $21, 0x51A0
	lui $22, 0x1001 # endereço começo verde 1
	ori $22, $22, 0x5190
	lui $23, 0x1001 # endereço final
	ori $23, $23, 0x519C
	
p2_l5_1:sw $9, 0($12)
	addi $12, $12, 4
	ble $12, $13, p2_l5_1
p2_l5_2:sw $8, 0($14)
	addi $14, $14, 4
	ble $14, $15, p2_l5_2
p2_l5_3:sw $10, 0($16)
	addi $16, $16, 4
	ble $16, $17, p2_l5_3
p2_l6_1:sw $9, 0($18)
	addi $18, $18, 4
	ble $18, $19, p2_l6_1
p2_l6_2:sw $8, 0($20)
	addi $20, $20, 4
	ble $20, $21, p2_l6_2
p2_l6_3:sw $10, 0($22)
	addi $22, $22, 4
	ble $22, $23, p2_l6_3
	
	# Setima linha
	lui $12, 0x1001 # endereço começo Preto
	ori $12, $12, 0x5384
	lui $13, 0x1001 # endereço final
	ori $13, $13, 0x53A8
	lui $14, 0x1001 # endereço começo Verde 1
	ori $14, $14, 0x5388
	lui $15, 0x1001 # endereço final
	ori $15, $15, 0x53A4
	lui $16, 0x1001 # endereço começo Verde 2
	ori $16, $16, 0x5390
	lui $17, 0x1001 # endereço final
	ori $17, $17, 0x539C
	
	# Oitava linha
	lui $18, 0x1001 # endereço começo Preto
	ori $18, $18, 0x5584
	lui $19, 0x1001 # endereço final
	ori $19, $19, 0x55A8
	lui $20, 0x1001 # endereço começo Verde 1
	ori $20, $20, 0x5588
	lui $21, 0x1001 # endereço fim
	ori $21, $21, 0x55A4
	lui $22, 0x1001 # endereço começo Verde 2
	ori $22, $22, 0x5590
	lui $23, 0x1001 # endereço fim
	ori $23, $23, 0x559C
	
p2_l7_1:sw $9, 0($12)
	addi $12, $12, 4
	ble $12, $13, p2_l7_1
p2_l7_2:sw $10, 0($14)
	addi $14, $14, 4
	ble $14, $15, p2_l7_2
p2_l7_3:sw $11, 0($16)
	addi $16, $16, 4
	ble $16, $17, p2_l7_3
p2_l8_1:sw $9, 0($18)
	addi $18, $18, 4
	ble $18, $19, p2_l8_1
p2_l8_2:sw $10, 0($20)
	addi $20, $20, 4
	ble $20, $21, p2_l8_2
p2_l8_3:sw $11, 0($22)
	addi $22, $22, 4
	ble $22, $23, p2_l8_3
	
	# Nona linha
	lui $12, 0x1001 # endereço começo Preto
	ori $12, $12, 0x5788
	lui $13, 0x1001 # endereço final
	ori $13, $13, 0x57A4
	lui $14, 0x1001 # endereço começo Verde 1
	ori $14, $14, 0x5790
	lui $15, 0x1001 # endereço final
	ori $15, $15, 0x579C
	
	# Decima linha
	lui $16, 0x1001 # endereço começo Preto
	ori $16, $16, 0x5990
	lui $17, 0x1001 # endereço final
	ori $17, $17, 0x599C
	
p2_l9_1:sw $9, 0($12)
	addi $12, $12, 4
	ble $12, $13, p2_l9_1
p2_l9_2:sw $10, 0($14)
	addi $14, $14, 4
	ble $14, $15, p2_l9_2
p2_l10_1:sw $9, 0($16)
	addi $16, $16, 4
	ble $16, $17, p2_l10_1
	
	# Ponto verde 2
	lui $12, 0x1001 # endereço começo e fim verde 3
	ori $12, $12, 0x4D8C
	lui $13, 0x1001
	ori $13, $13, 0x4D8C
	
	# Ponto verde 2
	lui $14, 0x1001 # endereço começo e fim verde 3
	ori $14, $14, 0x4BA0
	lui $15, 0x1001
	ori $15, $15, 0x4BA0
	
	# Ponto verde 3
	lui $16, 0x1001 # endereço começo e fim verde 3
	ori $16, $16, 0x5598
	lui $17, 0x1001
	ori $17, $17, 0x5598
	
	lui $10,0x001c # Verde 3
	ori $10,$10,0x8c3c
	
p2_p1:  sw $11, 0($12)
	addi $12, $12, 4
	ble $12, $13, p2_p1
p2_p2:  sw $11, 0($14)
	addi $14, $14, 4
	ble $14, $15, p2_p2
p2_p3:  sw $10, 0($16)
	addi $16, $16, 4
	ble $16, $17, p2_p3
	
	jr $31
