digW:   # Primeira coluna
	lui $14, 0x1001 # começo preto
	ori $14, $14, 0x4A58
	
	lui $15, 0x1001 # final preto
	ori $15, $15, 0x5A58
	
	lui $16,0x1001  # Endereço Fundo
	ori $16,$16,0x5058 
	
wp:	sw $9,-512($14)
	addi $14,$14,512
	ble $14,$15,wp
	
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
ws:
	sw $9,-512($14)
	addi $14,$14,512
	ble $14,$15,ws
	
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
wt:
	sw $9,-512($14)
	addi $14,$14,512
	ble $14,$15,wt
	
	sw $10,-512($16) 
	sw $10,-512($17)
	sw $10,-512($18)
	sw $10,-512($19)
	sw $12,-512($20)
	sw $12,-512($21)
	
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
wqa:	
	sw $9,-512($14)
	addi $14,$14,512
	ble $14,$15,wqa
	
	sw $10,-512($16)
	sw $10,-512($17)
	sw $10,-512($18)
	sw $8,-512($19)
	sw $8,-512($20)
	sw $12,-512($21)
	sw $12,-512($22)
	
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
wqi:	
	sw $9,0($14)
	addi $14,$14,512
	ble $14,$15,wqi
	
	sw $10,-512($16)
	sw $10,-512($17)
	sw $10,-512($18)
	sw $10,-512($19)
	sw $8,-512($20)
	sw $11,-512($21)
	sw $12,-512($22)
	
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
wsex:	
	sw $9,0($14)
	addi $14,$14,512
	ble $14,$15,wsex
	
	sw $10,-512($16)
	sw $10,-512($17)
	sw $10,-512($18)
	sw $10,-512($19)
	sw $11,-512($20)
	sw $11,-512($21)
	sw $12,-512($22)
	
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
	
wset:
	sw $9,0($14)
	addi $14,$14,512
	ble $14,$15,wset
	
	sw $10,-512($16)
	sw $10,-512($17)
	sw $10,-512($18)
	sw $8,-512($19)
	sw $11,-512($20)
	sw $11,-512($21)
	sw $12,-512($22)
	
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
woitr:
	sw $9,-512($14)
	addi $14,$14,512
	ble $14,$15,woitr
	
	sw $10,-512($16)
	sw $11,-512($17)
	sw $11,-512($18)
	sw $12,-512($19)
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
wnovar:
	sw $9,-512($14)
	addi $14,$14,512
	ble $14,$15,wnovar
	
	sw $8,-512($16)
	sw $8,-512($17)
	sw $11,-512($18)
	sw $11,-512($19)
	
	# DECIMA COLUNA
	lui $14, 0x1001 # começo preto
	ori $14, $14, 0x507C

	lui $15,0x1001 
	ori $15, $15, 0x567C # final preto

	lui $16,0x1001
	ori $16, $16, 0x587C #  amarelo