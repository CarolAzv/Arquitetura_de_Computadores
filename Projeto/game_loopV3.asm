.globl game_loop

.data
porcohat: .word 0x10014F50 
porco:	.word 0x10014780
over: .word 0x10010C2C

porcoo: .word	0x6f66eb 0x6f66eb 0x6f66eb 0x6f66eb 0x6f66eb 0x6f66eb 0x6f66eb 0x000000 0x000000 0x000000 0x6f66eb
		0x6f66eb 0x000000 0x000000 0x000000 0x6f66eb 0x6f66eb 0x000000 0xa8e61d 0xa8e61d 0xa8e61d 0x000000
		0x000000 0xa8e61d 0xa8e61d 0xa8e61d 0x000000 0x000000 0x000000 0xa8e61d 0x22b14c 0xa8e61d 0x000000
		0x000000 0xa8e61d 0xa8e61d 0x22b14c 0xa8e61d 0xa8e61d 0xa8e61d 0xa8e61d 0xa8e61d 0xa8e61d 0x000000
		0x6f66eb 0x000000 0xffffff 0xffffff 0xa8e61d 0xa8e61d 0xa8e61d 0xa8e61d 0xffffff 0xffffff 0x000000
		0x6f66eb 0x000000 0x000000 0xffffff 0xa8e61d 0xa8e61d 0xa8e61d 0xa8e61d 0xffffff 0x000000 0x000000
		0x6f66eb 0x000000 0xa8e61d 0xa8e61d 0x22b14c 0x22b14c 0x22b14c 0x22b14c 0xa8e61d 0xa8e61d 0x000000
		0x6f66eb 0x000000 0xa8e61d 0xa8e61d 0x22b14c 0x22b14c 0x1c8c3c 0x22b14c 0xa8e61d 0xa8e61d 0x000000
		0x6f66eb 0x6f66eb 0x000000 0x000000 0xa8e61d 0xa8e61d 0xa8e61d 0xa8e61d 0x000000 0x000000 0x6f66eb
		0x6f66eb 0x6f66eb 0x6f66eb 0x6f66eb 0x000000 0x000000 0x000000 0x000000 0x6f66eb 0x6f66eb 0x6f66eb
		
porcohats: .word 0x6f66eb 0x6f66eb 0x6f66eb 0x000000 0x000000 0x000000 0x000000 0x6f66eb 0x6f66eb 0x6f66eb
		0x6f66eb 0x000000 0x000000 0xb7b7b7 0xb7b7b7 0xb7b7b7 0xb7b7b7 0x000000 0x000000 0x6f66eb
		0x000000 0xb7b7b7 0xb7b7b7 0xb7b7b7 0xb7b7b7 0xb7b7b7 0xb7b7b7 0xb7b7b7 0xb7b7b7 0x000000
		0x000000 0xb7b7b7 0xb7b7b7 0x000000 0x000000 0x000000 0x000000 0xb7b7b7 0xb7b7b7 0x000000
		0x9c5a3c 0x000000 0x000000 0xa8e61d 0xa8e61d 0xa8e61d 0xa8e61d 0x000000 0x000000 0x9c5a3c
		0x9c5a3c 0xffffff 0xffffff 0xa8e61d 0xa8e61d 0xa8e61d 0xa8e61d 0xffffff 0xffffff 0x9c5a3c
		0x9c5a3c 0x000000 0xffffff 0xa8e61d 0xa8e61d 0xa8e61d 0xa8e61d 0xffffff 0x000000 0x9c5a3c
		0x000000 0xa8e61d 0xa8e61d 0x22b14c 0x22b14c 0x22b14c 0x22b14c 0xa8e61d 0xa8e61d 0x000000
		0x000000 0xa8e61d 0xa8e61d 0x22b14c 0x1c8c3c 0x22b14c 0x22b14c 0xa8e61d 0xa8e61d 0x000000
		0x6f66eb 0x000000 0x000000 0xa8e61d 0xa8e61d 0xa8e61d 0xa8e61d 0x000000 0x000000 0x6f66eb
		0x6f66eb 0x6f66eb 0x6f66eb 0x000000 0x000000 0x000000 0x000000 0x6f66eb 0x6f66eb 0x6f66eb
		
game_over: .word    6f66eb 6f66eb 000000 000000 000000 000000 000000 000000 000000       6f66eb 6f66eb 6f66eb       6f66eb 6f66eb 000000 000000 000000 000000 000000 6f66eb 6f66eb       6f66eb 6f66eb 6f66eb       6f66eb 6f66eb 000000 000000 6f66eb 6f66eb 6f66eb 6f66eb 000000 000000 000000 6f66eb 6f66eb       6f66eb 6f66eb 6f66eb       000000 000000 000000 000000 000000 000000 000000 000000       6f66eb 6f66eb 6f66eb 6f66eb 6f66eb 6f66eb        6f66eb 6f66eb 000000 000000 000000 000000 000000 000000 6f66eb 6f66eb       6f66eb 6f66eb 6f66eb       000000 000000 000000 6f66eb 6f66eb 6f66eb 6f66eb 000000 000000 000000       6f66eb 6f66eb 6f66eb       000000 000000 000000 000000 000000 000000 000000 000000       6f66eb 6f66eb 6f66eb       000000 000000 000000 000000 000000 000000 000000 6f66eb 6f66eb
 	       	    6f66eb 000000 000000 000000 000000 000000 000000 000000 000000       6f66eb 6f66eb 6f66eb       6f66eb 000000 000000 000000 000000 000000 000000 000000 6f66eb       6f66eb 6f66eb 6f66eb       6f66eb 000000 000000 000000 000000 6f66eb 6f66eb 000000 000000 000000 000000 000000 6f66eb       6f66eb 6f66eb 6f66eb       000000 000000 000000 000000 000000 000000 000000 000000       6f66eb 6f66eb 6f66eb 6f66eb 6f66eb 6f66eb        6f66eb 000000 000000 000000 000000 000000 000000 000000 000000 6f66eb       6f66eb 6f66eb 6f66eb       000000 000000 000000 6f66eb 6f66eb 6f66eb 6f66eb 000000 000000 000000       6f66eb 6f66eb 6f66eb       000000 000000 000000 000000 000000 000000 000000 000000       6f66eb 6f66eb 6f66eb       000000 000000 000000 000000 000000 000000 000000 000000 6f66eb
 		    000000 000000 000000 000000 000000 000000 000000 000000 000000       6f66eb 6f66eb 6f66eb       000000 000000 000000 000000 000000 000000 000000 000000 000000       6f66eb 6f66eb 6f66eb       000000 000000 000000 000000 000000 000000 000000 000000 000000 000000 000000 000000 000000       6f66eb 6f66eb 6f66eb       000000 000000 000000 000000 000000 000000 000000 000000       6f66eb 6f66eb 6f66eb 6f66eb 6f66eb 6f66eb        000000 000000 000000 000000 000000 000000 000000 000000 000000 000000       6f66eb 6f66eb 6f66eb       000000 000000 000000 6f66eb 6f66eb 6f66eb 6f66eb 000000 000000 000000       6f66eb 6f66eb 6f66eb       000000 000000 000000 000000 000000 000000 000000 000000       6f66eb 6f66eb 6f66eb       000000 000000 000000 000000 000000 000000 000000 000000 000000
 	       	    000000 000000 000000 6f66eb 6f66eb 6f66eb 6f66eb 6f66eb 6f66eb       6f66eb 6f66eb 6f66eb       000000 000000 000000 6f66eb 6f66eb 6f66eb 000000 000000 000000       6f66eb 6f66eb 6f66eb       000000 000000 000000 000000 000000 000000 000000 000000 000000 000000 000000 000000 000000       6f66eb 6f66eb 6f66eb       000000 000000 000000 6f66eb 6f66eb 6f66eb 6f66eb 6f66eb       6f66eb 6f66eb 6f66eb 6f66eb 6f66eb 6f66eb        000000 000000 000000 6f66eb 6f66eb 6f66eb 6f66eb 000000 000000 000000       6f66eb 6f66eb 6f66eb       000000 000000 000000 6f66eb 6f66eb 6f66eb 6f66eb 000000 000000 000000       6f66eb 6f66eb 6f66eb       000000 000000 000000 6f66eb 6f66eb 6f66eb 6f66eb 6f66eb       6f66eb 6f66eb 6f66eb       000000 000000 000000 6f66eb 6f66eb 6f66eb 000000 000000 000000
 	       	    000000 000000 000000 6f66eb 6f66eb 6f66eb 6f66eb 6f66eb 6f66eb       6f66eb 6f66eb 6f66eb       000000 000000 000000 6f66eb 6f66eb 6f66eb 000000 000000 000000       6f66eb 6f66eb 6f66eb       000000 000000 000000 6f66eb 000000 000000 000000 000000 000000 6f66eb 000000 000000 000000       6f66eb 6f66eb 6f66eb       000000 000000 000000 6f66eb 6f66eb 6f66eb 6f66eb 6f66eb       6f66eb 6f66eb 6f66eb 6f66eb 6f66eb 6f66eb        000000 000000 000000 6f66eb 6f66eb 6f66eb 6f66eb 000000 000000 000000       6f66eb 6f66eb 6f66eb       000000 000000 000000 6f66eb 6f66eb 6f66eb 6f66eb 000000 000000 000000       6f66eb 6f66eb 6f66eb       000000 000000 000000 6f66eb 6f66eb 6f66eb 6f66eb 6f66eb       6f66eb 6f66eb 6f66eb       000000 000000 000000 6f66eb 6f66eb 6f66eb 6f66eb 000000 000000
 	      	    000000 000000 000000 6f66eb 6f66eb 6f66eb 6f66eb 6f66eb 6f66eb       6f66eb 6f66eb 6f66eb       000000 000000 000000 6f66eb 6f66eb 6f66eb 000000 000000 000000       6f66eb 6f66eb 6f66eb       000000 000000 000000 6f66eb 6f66eb 000000 000000 000000 6f66eb 6f66eb 000000 000000 000000       6f66eb 6f66eb 6f66eb       000000 000000 000000 6f66eb 6f66eb 6f66eb 6f66eb 6f66eb       6f66eb 6f66eb 6f66eb 6f66eb 6f66eb 6f66eb        000000 000000 000000 6f66eb 6f66eb 6f66eb 6f66eb 000000 000000 000000       6f66eb 6f66eb 6f66eb       000000 000000 000000 6f66eb 6f66eb 6f66eb 6f66eb 000000 000000 000000       6f66eb 6f66eb 6f66eb       000000 000000 000000 6f66eb 6f66eb 6f66eb 6f66eb 6f66eb       6f66eb 6f66eb 6f66eb       000000 000000 000000 6f66eb 6f66eb 6f66eb 6f66eb 000000 000000
  	            000000 000000 000000 6f66eb 000000 000000 000000 000000 000000       6f66eb 6f66eb 6f66eb       000000 000000 000000 6f66eb 6f66eb 6f66eb 000000 000000 000000       6f66eb 6f66eb 6f66eb       000000 000000 000000 6f66eb 6f66eb 000000 000000 000000 6f66eb 6f66eb 000000 000000 000000       6f66eb 6f66eb 6f66eb       000000 000000 000000 000000 000000 000000 000000 000000       6f66eb 6f66eb 6f66eb 6f66eb 6f66eb 6f66eb        000000 000000 000000 6f66eb 6f66eb 6f66eb 6f66eb 000000 000000 000000       6f66eb 6f66eb 6f66eb       000000 000000 000000 6f66eb 6f66eb 6f66eb 6f66eb 000000 000000 000000       6f66eb 6f66eb 6f66eb       000000 000000 000000 000000 000000 000000 000000 000000       6f66eb 6f66eb 6f66eb       000000 000000 000000 6f66eb 6f66eb 6f66eb 000000 000000 000000
 	      	    000000 000000 000000 6f66eb 000000 000000 000000 000000 000000       6f66eb 6f66eb 6f66eb       000000 000000 000000 000000 000000 000000 000000 000000 000000       6f66eb 6f66eb 6f66eb       000000 000000 000000 6f66eb 6f66eb 000000 000000 000000 6f66eb 6f66eb 000000 000000 000000       6f66eb 6f66eb 6f66eb       000000 000000 000000 000000 000000 000000 000000 000000       6f66eb 6f66eb 6f66eb 6f66eb 6f66eb 6f66eb        000000 000000 000000 6f66eb 6f66eb 6f66eb 6f66eb 000000 000000 000000       6f66eb 6f66eb 6f66eb       000000 000000 000000 6f66eb 6f66eb 6f66eb 6f66eb 000000 000000 000000       6f66eb 6f66eb 6f66eb       000000 000000 000000 000000 000000 000000 000000 000000       6f66eb 6f66eb 6f66eb       000000 000000 000000 000000 000000 000000 000000 000000 6f66eb
 	      	    000000 000000 000000 6f66eb 000000 000000 000000 000000 000000       6f66eb 6f66eb 6f66eb       000000 000000 000000 000000 000000 000000 000000 000000 000000       6f66eb 6f66eb 6f66eb       000000 000000 000000 6f66eb 6f66eb 000000 000000 000000 6f66eb 6f66eb 000000 000000 000000       6f66eb 6f66eb 6f66eb       000000 000000 000000 000000 000000 000000 000000 000000       6f66eb 6f66eb 6f66eb 6f66eb 6f66eb 6f66eb        000000 000000 000000 6f66eb 6f66eb 6f66eb 6f66eb 000000 000000 000000       6f66eb 6f66eb 6f66eb       000000 000000 000000 6f66eb 6f66eb 6f66eb 6f66eb 000000 000000 000000       6f66eb 6f66eb 6f66eb       000000 000000 000000 000000 000000 000000 000000 000000       6f66eb 6f66eb 6f66eb       000000 000000 000000 000000 000000 000000 000000 6f66eb 6f66eb
 	      	    000000 000000 000000 6f66eb 6f66eb 6f66eb 000000 000000 000000       6f66eb 6f66eb 6f66eb       000000 000000 000000 000000 000000 000000 000000 000000 000000       6f66eb 6f66eb 6f66eb       000000 000000 000000 6f66eb 6f66eb 000000 000000 000000 6f66eb 6f66eb 000000 000000 000000       6f66eb 6f66eb 6f66eb       000000 000000 000000 6f66eb 6f66eb 6f66eb 6f66eb 6f66eb       6f66eb 6f66eb 6f66eb 6f66eb 6f66eb 6f66eb        000000 000000 000000 6f66eb 6f66eb 6f66eb 6f66eb 000000 000000 000000       6f66eb 6f66eb 6f66eb       000000 000000 000000 6f66eb 6f66eb 6f66eb 6f66eb 000000 000000 000000       6f66eb 6f66eb 6f66eb       000000 000000 000000 6f66eb 6f66eb 6f66eb 6f66eb 6f66eb       6f66eb 6f66eb 6f66eb       000000 000000 000000 000000 000000 000000 000000 6f66eb 6f66eb
 	      	    000000 000000 000000 6f66eb 6f66eb 6f66eb 000000 000000 000000       6f66eb 6f66eb 6f66eb       000000 000000 000000 6f66eb 6f66eb 6f66eb 000000 000000 000000       6f66eb 6f66eb 6f66eb       000000 000000 000000 6f66eb 6f66eb 000000 000000 000000 6f66eb 6f66eb 000000 000000 000000       6f66eb 6f66eb 6f66eb       000000 000000 000000 6f66eb 6f66eb 6f66eb 6f66eb 6f66eb       6f66eb 6f66eb 6f66eb 6f66eb 6f66eb 6f66eb        000000 000000 000000 6f66eb 6f66eb 6f66eb 6f66eb 000000 000000 000000       6f66eb 6f66eb 6f66eb       000000 000000 000000 6f66eb 6f66eb 6f66eb 6f66eb 000000 000000 000000       6f66eb 6f66eb 6f66eb       000000 000000 000000 6f66eb 6f66eb 6f66eb 6f66eb 6f66eb       6f66eb 6f66eb 6f66eb       000000 000000 000000 6f66eb 6f66eb 000000 000000 000000 6f66eb
 	      	    000000 000000 000000 6f66eb 6f66eb 6f66eb 000000 000000 000000       6f66eb 6f66eb 6f66eb       000000 000000 000000 6f66eb 6f66eb 6f66eb 000000 000000 000000       6f66eb 6f66eb 6f66eb       000000 000000 000000 6f66eb 6f66eb 000000 000000 000000 6f66eb 6f66eb 000000 000000 000000       6f66eb 6f66eb 6f66eb       000000 000000 000000 6f66eb 6f66eb 6f66eb 6f66eb 6f66eb       6f66eb 6f66eb 6f66eb 6f66eb 6f66eb 6f66eb        000000 000000 000000 6f66eb 6f66eb 6f66eb 6f66eb 000000 000000 000000       6f66eb 6f66eb 6f66eb       000000 000000 000000 000000 6f66eb 6f66eb 000000 000000 000000 000000       6f66eb 6f66eb 6f66eb       000000 000000 000000 6f66eb 6f66eb 6f66eb 6f66eb 6f66eb       6f66eb 6f66eb 6f66eb       000000 000000 000000 6f66eb 6f66eb 000000 000000 000000 6f66eb
 	      	    000000 000000 000000 000000 000000 000000 000000 000000 000000       6f66eb 6f66eb 6f66eb       000000 000000 000000 6f66eb 6f66eb 6f66eb 000000 000000 000000       6f66eb 6f66eb 6f66eb       000000 000000 000000 6f66eb 6f66eb 000000 000000 000000 6f66eb 6f66eb 000000 000000 000000       6f66eb 6f66eb 6f66eb       000000 000000 000000 000000 000000 000000 000000 000000       6f66eb 6f66eb 6f66eb 6f66eb 6f66eb 6f66eb        000000 000000 000000 000000 000000 000000 000000 000000 000000 000000       6f66eb 6f66eb 6f66eb       6f66eb 000000 000000 000000 000000 000000 000000 000000 000000 6f66eb       6f66eb 6f66eb 6f66eb       000000 000000 000000 000000 000000 000000 000000 000000       6f66eb 6f66eb 6f66eb       000000 000000 000000 6f66eb 6f66eb 6f66eb 000000 000000 000000
 	      	    6f66eb 000000 000000 000000 000000 000000 000000 000000 6f66eb       6f66eb 6f66eb 6f66eb       000000 000000 000000 6f66eb 6f66eb 6f66eb 000000 000000 000000       6f66eb 6f66eb 6f66eb       000000 000000 000000 6f66eb 6f66eb 000000 000000 000000 6f66eb 6f66eb 000000 000000 000000       6f66eb 6f66eb 6f66eb       000000 000000 000000 000000 000000 000000 000000 000000       6f66eb 6f66eb 6f66eb 6f66eb 6f66eb 6f66eb        6f66eb 000000 000000 000000 000000 000000 000000 000000 000000 6f66eb       6f66eb 6f66eb 6f66eb       6f66eb 6f66eb 000000 000000 000000 000000 000000 000000 6f66eb 6f66eb       6f66eb 6f66eb 6f66eb       000000 000000 000000 000000 000000 000000 000000 000000       6f66eb 6f66eb 6f66eb       000000 000000 000000 6f66eb 6f66eb 6f66eb 000000 000000 000000
 	      	    6f66eb 6f66eb 000000 000000 000000 000000 000000 6f66eb 6f66eb       6f66eb 6f66eb 6f66eb       000000 000000 000000 6f66eb 6f66eb 6f66eb 000000 000000 000000       6f66eb 6f66eb 6f66eb       000000 000000 000000 6f66eb 6f66eb 000000 000000 000000 6f66eb 6f66eb 000000 000000 000000       6f66eb 6f66eb 6f66eb       000000 000000 000000 000000 000000 000000 000000 000000       6f66eb 6f66eb 6f66eb 6f66eb 6f66eb 6f66eb        6f66eb 6f66eb 000000 000000 000000 000000 000000 000000 6f66eb 6f66eb       6f66eb 6f66eb 6f66eb       6f66eb 6f66eb 6f66eb 000000 000000 000000 000000 6f66eb 6f66eb 6f66eb       6f66eb 6f66eb 6f66eb       000000 000000 000000 000000 000000 000000 000000 000000       6f66eb 6f66eb 6f66eb       000000 000000 000000 6f66eb 6f66eb 6f66eb 000000 000000 000000
 	      	    
PORCOHAT_LARGURA: .word 10 # 10 colunas
PORCOHAT_ALTURA:  .word 11 # 11 linhas

PORCO_LARGURA: .word 11 # 11 colunas
PORCO_ALTURA:  .word 10 # 10 linhas

GAME_OVER_LARGURA: .word 104 # 104 colunas
GAME_OVER_ALTURA:  .word 15 # 15 linhas

.text
game_loop:
	lw $4, porcohat
	lw $5,PORCOHAT_LARGURA
	lw $6, PORCOHAT_ALTURA
	jal limpar_porcos
	
	lw $4,porco
	lw $5, PORCO_LARGURA
	lw $6, PORCO_ALTURA
	jal limpar_porcos
	

    # Desenha Porco Hat
    	lw $4, porcohat          # Endereço do porcohat
	lw $5, PORCOHAT_LARGURA   # Largura do porcohat (10)
	lw $6, PORCOHAT_ALTURA    # Altura do porcohat (11)
	la $7, porcohats
	jal desenha_porco        # Chama a função para desenhar o Porco Hat

    # Desenha Porco
    	lw $4, porco              # Endereço do porco
    	lw $5, PORCO_LARGURA      # Largura do porco (11)
    	lw $6, PORCO_ALTURA       # Altura do porco (10)
    	la $7, porcoo
    	jal desenha_porco        # Chama a função para desenhar o Porco

  
    	addi $t0,$0,300000 # Contador para o delay 
delay_down_loop:
    	addi $t0,$t0,-1
    	nop
    	nop
	bne $t0,$0,delay_down_loop


    # Limpa o Porco Hat
    	lw $4, porcohat      	 # Endereço do porcohat
    	lw $5, PORCOHAT_LARGURA   # Largura do porcohat
	lw $6, PORCOHAT_ALTURA    # Altura do porcohat
	jal limpar_porcos         # Limpa o Porco Hat da posição no chão

    # Limpa o Porco
    	lw $4, porco              # Endereço do porco
	lw $5, PORCO_LARGURA      # Largura do porco
    	lw $6, PORCO_ALTURA       # Altura do porco
    
    	jal limpar_porcos        # Limpa o Porco da posição no chão



	lw $8, porcohat
    	addi $8, $8, -512      # Move porcohat para cima
    	sw $8, porcohat

    	lw $9, porco
	addi $9, $9, -512      # Move porco para cima
    	sw $9, porco

 
	lw $4, porcohat          # Endereço atual (agora "no ar")
	lw $5, PORCOHAT_LARGURA   # Largura do porcohat
	lw $6, PORCOHAT_ALTURA    # Altura do porcohat
    	la $7,porcohats
    	jal desenha_porco

    # Desenha Porco
    	lw $4, porco              # Endereço atual (agora "no ar")
    	lw $5, PORCO_LARGURA      # Largura do porco
    	lw $6, PORCO_ALTURA       # Altura do porco
    	la $7,porcoo
    	jal desenha_porco

  
    	addi $8,$0,300000 # Contador para o delay
delay_up_loop:
    	addi $8,$8,-1
    	nop
    	nop
    	bne $8,$0,delay_up_loop


	lw $4, porcohat          # Endereço atual (no ar)
	lw $5, PORCOHAT_LARGURA   # Largura do porcohat
	lw $6, PORCOHAT_ALTURA    # Altura do porcohat
	jal limpar_porcos

    # Limpa o Porco
    	lw $4, porco              # Endereço atual (no ar)
    	lw $5, PORCO_LARGURA      # Largura do porco
    	lw $6, PORCO_ALTURA       # Altura do porco
    	jal limpar_porcos

 

	lw $8, porcohat
    	addi $8, $8, 512       # Move porcohat para baixo
    	sw $8, porcohat

    	lw $9, porco
    	addi $9, $9, 512       # Move porco para baixo
	sw $9, porco
    

	j game_loop 

limpar_porcos:
# --- SALVAR REGISTRADORES $s QUE SERÃO USADOS ---
    	addi $sp, $sp, -36 
    	sw $16, 0($sp)  #  Endereço base do poroco na tela
    	sw $17, 4($sp) # $Largura(número de colunas)
    	sw $18, 8($sp) #  Altur(número de linhas)
    	sw $19, 12($sp) # contador de linhas
    	sw $20, 16($sp) # Contador de colunas
	sw $21, 20($sp) # Valor 4
    	sw $22, 24($sp) # Valor 512
    	sw $23, 28($sp) # Cor do fundo
	sw $24, 32($sp)


    	lui $23, 0x006F       # COR do FUNDO
    	ori $23, $23, 0x66EB    
    
	addi $21,$0,4           
    	addi $22,$0,512         
    
    
    	add $16,$0,$4          #  Endereço base do poroco na tela
    	add $17,$0, $5           # $Largura(número de colunas)
	add $18,$0, $6          #  Altur(número de linhas)
    
    	add $19, $0, $0         # contador de linhas

# --- LOOP EXTERNO
externo:
	# Se o contador de Linhas for igual ou maior que a ALTURA, termina a limpeza
    	bge $19,$18,end_limpeza

    	add $20,$0,0            # $contador de colunas
    
    	add $24,$0, $16        

# --- LOOP INTERNO
interno:
	# Se o contador de Colunas  for igual ou maior que a LARGURA, termina a coluna atual
    	bge $20,$17,limpacoluna

   
    	sw $23,0($16)           # Escreve a cor de fundo 
    
    	add $16,$16,$21         
    	addi $20,$20,1          
    	j interno

limpacoluna:
	sub $8, $22,$17
	mul $8,$8,$21
	add $16,$16,$8
	
	addi $19,$19,1
	j externo
	

end_limpeza:
	lw $24, 32($sp)
	lw $23, 28($sp)
    	lw $22, 24($sp)
    	lw $21, 20($sp)
	lw $20, 16($sp)
    	lw $19, 12($sp)
    	lw $18, 8($sp)
    	lw $17, 4($sp)
    	lw $16, 0($sp)
    	addi $sp, $sp, 36  
    
	jr $31
desenha_porco:
 # --- SALVAR REGISTRADORES $s QUE SERÃO USADOS ---
	addi $sp, $sp, -36 
    	sw $16, 0($sp)
    	sw $17, 4($sp) # Colunas do porco
    	sw $18, 8($sp) # Linhas do porco
    	sw $19, 12($sp) # Contador de linhas
    	sw $20, 16($sp) # Contador de colunas
    	sw $21, 20($sp) # Valor 4 
   	sw $22, 24($sp) # Valor 512
   	sw $23, 28($sp) # Dados de cores do desenho
    	sw $24, 32($sp)
    	
    	addi $21,$0,4 
    	addi $22,$0,512
    	
    	add $16,$0,$4 # Endereço base de começo do desenho
    	add $17,$0,$5 # Colunas
    	add $18,$0,$6 # Linhas
    	add $23,$0,$7 # Word dos dados de pintura
    	add $24,$0,$0 
    	add $19,$0,$0 # Contador de linhas
    	
loop_externo_desenho:
	bge $19,$18,end_desenho_porco
	add $20,$0,$0
	
loop_interno_desenho:
	bge $20,$17,termina_coluna_desenho
	
	add $9,$23,$24
	lw $8,0($9) 
	sw $8,0($16)
	
	add $16,$16,$21
	addi $24,$24,4
	addi $20,$20,1
	j loop_interno_desenho
	
termina_coluna_desenho:
	mul $11,$21,$17 # Quantidade de pixel que se moveu para a esquerda
	sub $16, $16,$11 # Volta para o começo da linha
	add $16,$16,$22 # Vai para a linha de baixo
	
	addi $19,$19,1
	j loop_externo_desenho
	
end_desenho_porco:	
	lw $24, 32($sp)
    	lw $23, 28($sp)
	lw $22, 24($sp)
    	lw $21, 20($sp)
    	lw $20, 16($sp)
    	lw $19, 12($sp)
    	lw $18, 8($sp)
    	lw $17, 4($sp)
    	lw $16, 0($sp)
    	addi $sp, $sp, 36       
    
	jr $ra
	
#para o desenho dos porcos + fazer desenho de game over
	lw $13, 4($11)
        addi $14, $0, ' '
        beq $13, $14, parou  
    	
    	
    	


	
	
	  
