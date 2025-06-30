.text
main: lui $8, 0x1001

      lui $5, 0x006e
      ori $5, $5, 0xaa5e
      addi $2, $0, 42
      
      addi $10, $0, 8192
      
test: beq $10, $0, fim
      sw $5, 0($8)
      addiu $8, $8, 4

      addi $10, $10, -1
      j test  
      
fim:  addi $2, $0, 10
      syscall
