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
fim:    lui $8, 0x1001
        lui $9, 0x00ff
        ori $9, $9, 0xffff
        addi $11, $0, 4
        lui $12, 0xffff  # $12 = 0xffff0000

test2:  
        sw $9, 0($8)
        jal timer
        lw $10, 2048($8)
        sw $10, 0($8)
        add $8, $8, $11    
        lw $13, 0($12)
        bne $13, $0, dig
        j test2
dig:    lw $14, 4($12)
        addi $15, $0, ' '
        beq $14, $15, parou
        addi $15, $0, 'A'
        beq $14, $15, digA
        addi $15, $0, 'D'
        beq $14, $15, digD
        addi $15, $0, 'W'
        beq $14, $15, digW        
        addi $15, $0, 'S'
        beq $14, $15, digS        
        j test2
digA:   addi $11, $0, -4
        j test2  
digD:   addi $11, $0, 4
        j test2    
digW:   addi $11, $0, -128
        j test2              
digS:   addi $11, $0, 128
        j test2              
parou:  addi $2, $0, 10
        syscall        
#=============================================
# funcao timer        
timer:  addi $24, $0, 100000
testT:  beq $24, $0, retorna
        nop
        nop
        nop
        addi $24, $24, -1
        j testT          
retorna: jr $31