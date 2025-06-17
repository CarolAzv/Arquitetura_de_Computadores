.text
main: lui $8, 0x1001

      lui $5, 0x00ff
      ori $5, $5, 0xffff
      addi $2, $0, 42
      
      addi $10, $0, 512
      sll $9, $9, 8
      
test: beq $10, $0, fim
      addi $4, $0, 0
      syscall
      sw $4, 0($8)
      
      addi $8, $8, 4
      addi $10, $10, -1
      j test      
      
fim:  addi $2, $0, 10
      syscall