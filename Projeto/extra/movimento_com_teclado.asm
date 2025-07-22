.text

main:   lui $8, 0x1001  # $8 <= 0x10010000
        lui $18, 0x1001 # $18 <= 0x10010000
        ori $18, $18, 0x07bc # $18 <= 0x100107BC
        lui $11, 0xffff # $11 <= 0xffff0000

        addi $9, $0, 0xff # $9 <= 0x000000ff
        sll $9, $9, 8     # $9 <= 0x0000ff00
        addi $10, $0,512
        lui $5, 0x00ff
        ori $5, $5, 0xfff0 #$5 <= 0x00ffffff
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
       
        addi $23, $0, 4
       
        lui $22, 0x1001
        ori $22, $22, 0x7C  #
        lui $21, 0x1000
        ori $21, $21, 0xfffc
       
lacoNPC:  
     
        sw $9, 0($8)
        sw $9, 132($8)
        beq $8, $18, parou
        addi $16, $8, 132
        beq $16, $18, parou
        sw $9, 0($18)
       
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

cont:   lw $12, 0($11)
        beq $12, $0, lacoNPC
        lw $13, 4($11)
        addi $14, $0, ' '
        beq $13, $14, parou
        addi $14, $0, 'W'
        beq $13, $14, digW
        addi $14, $0, 'S'
        beq $13, $14, digS
        addi $14, $0, 'A'
        beq $13, $14, digA
        addi $14, $0, 'D'
        beq $13, $14, digD                        
        j lacoNPC
digS:   lw $14, 2048($18)
        sw $14, 0($18)
        addi $18, $18, 128
        sw $9, 0($18)        
        j lacoNPC
digA:   lw $14, 2048($18)
        sw $14, 0($18)
        addi $18, $18, -4
        sw $9, 0($18)        
        j lacoNPC
digD:   lw $14, 2048($18)
        sw $14, 0($18)
        addi $18, $18, 4
        sw $9, 0($18)        
        j lacoNPC
digW:   lw $14, 2048($18)
        sw $14, 0($18)
        addi $18, $18, -128
        sw $9, 0($18)        
        j lacoNPC                        
parou:  
        lui $8, 0x1001
        addi $10, $0,512
        lui $5, 0x007f
        ori $5, $5, 0x1070 #$5 <= 0x007f1070
testF:  beq $10, $0, fimT                                                                                                      
        sw $5, 0($8)
        addi $8, $8, 4
        addi $10, $10, -1
        j testF

fimT:
        addi $2, $0, 10
        syscall  

#===============================
# funcao Delay                

delay:  addi $24, $0, 100000
lacoD:  beq $24, $0, fimD
        nop
        nop
        addi $24, $24, -1
        j lacoD
fimD:   jr $31