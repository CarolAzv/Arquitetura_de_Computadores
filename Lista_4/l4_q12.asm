.text
main:  addi $2, $0, 5
       syscall
       add $4, $2, $0
       jal triang

       addi $2, $0, 10
       syscall

# Entradas: $4
# Saida: void
# Regs usados

triang: sll $8, $4, 1
        add $13, $0, $4  #n
        addi $8, $8, -1
        addi $9, $0, +1 # incremento
        addi $11, $0, 1 # elementos na linha
       
        addi $10, $0, 0
test:   beq $10, $8, fimLE
       
        addi $12, $0, 0
        
testi:  beq $12, $11, fimLI        
        addi $4, $0, '*'
        addi $2, $0, 11
        syscall
        addi $12, $12, 1
        j testi
        
fimLI:  addi $4, $0, '\n'
        addi $2, $0, 11
        syscall
        bne $13, $11, segue
        addi $9, $0, -1
        
segue:  add $11, $11, $9      
        addi $10, $10, 1
        j test
        
fimLE:  jr $31