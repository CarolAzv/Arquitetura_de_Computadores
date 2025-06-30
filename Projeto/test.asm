.text
main: lui $8, 0x1001

      lui $5, 0x006e
      ori $5, $5, 0xaaff
      addi $2, $0, 42
      
      addi $10, $0, 8192
      add $11, $0, 2560
      
test: beq $10, $11, cor
      sw $5, 0($8)
      addiu $8, $8, 4

      addi $10, $10, -1
      j test
      
cor:  lui $5, 0x006e
      ori $5, $5, 0xaa5e
      
tesT: beq $10, $0, fim
      sw $5, 0($8)
      addiu $8, $8, 4

      addi $10, $10, -1
      j tesT
      
fim:  addi $2, $0, 10
      syscall