.text

main:   lui $8, 0x1001  # $8 <= 0x10010000

        addi $9, $0, 0xff # $9 <= 0x000000ff
        sll $9, $9, 8     # $9 <= 0x0000ff00
        addi $10, $0,512
        lui $5, 0x00ff
        ori $5, $5, 0xffff #$5 <= 0x00ffffff
test:   beq $10, $0, fim
        addi $4, $0, 0
        addi $2, $0, 42
        syscall
                                                                                                             
        sw $4, 0($8)
        sw $4, 2048($8)
        addi $8, $8, 4
       
        addi $10, $10, -1
        j test
fim:    ori $9, $0, 0xffff
        sll $9, $9, 8
        ori $9, $9, 0x00ff
       
        lui $8, 0x1001
        addi $11, $0, 2000
        addi $23, $0, 4
       
        lui $22, 0x1001
        ori $22, $22, 0x7C  #
        lui $21, 0x1000
        ori $21, $21, 0xfffc
       
lacoNPC: beq $11, $0, parou  
     
        sw $9, 0($8)
        sw $9, 132($8)
       
        jal delay
       
        lw $10, 2048($8)
        sw $10, 0($8)
        lw $10, 2180($8)
        sw $10, 132($8)
       
       
        add $8, $8, $23
       
        beq $22, $8, lbaixo
        beq $21, $8, lant
        j cont
lant:   addi $8, $8, 4
        addi $23, $0, 4          
        j cont      
                   
lbaixo: addi $8, $8, -4
        addi $23, $0, -4

cont:   addi $11, $11, -1
        j lacoNPC
parou:

        addi $2, $0, 10
        syscall  

#===============================
# funcao Delay                

delay:  addi $24, $0, 10000
lacoD:  beq $24, $0, fimD
        nop
        nop
        addi $24, $24, -1
        j lacoD
fimD:   jr $31
