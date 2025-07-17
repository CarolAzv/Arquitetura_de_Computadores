.include "porcosAlt.asm"

.text

main:
#PORCOHAT
    addi $5, $0, 10 # base do porco
    addi $6, $0, 11 # altura do porco
    mul $7, $5, $6 # area do porco
    addi $7, $7, 110 # area do porco hat + area do porco
    addi $7, $7, 8192 # tamanho da tela + area dos porcos
    addi $8, $0, 84 # x inicial 
    addi $9, $0, 40 # y inicial #0x10014F50
    addi $10, $0, 94 # x final. max 127
    addi $11, $0, 50 # y final. max 63 #0x10016374

#PORCO
    addi $12, $0, 96 # x inicial #0x10014780
    addi $13, $0, 36 # y inicial
    addi $14, $0, 107 # x final. max 127 #0x10014780
    addi $15, $0, 45  # y final. max 63

#guardar cenario e nota na memoria
    add $16, $0, $7 # conf do endereco
    add $17, $0, $16
    sll $17, $17, 2
    addi $17, $17, 0x10010000
    addi $17, $17, -4 # local lido
    add $18, $0, $16
    sll $18 $18, 2
    add $18 $18 $17 # local armazenado
    jal store
    
# carregar personagem porcohat
	addi $8 $0 111 # endereco do inicio do personagem na memoria
	sll $8 $8 3 # 2 telas * 4 bits
	mul $17 $22 $23 # linhas * colunas do desenho
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
store:
    lw $19,0($17)
    sw $19,0($18)
    addi $17,$17,-4
    addi $18,$18,-4
    addi $16,$16,-1
    bne $16,0,store
    jr $31
