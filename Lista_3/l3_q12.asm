.text
main: addi $2, $0, 5
      syscall
      add $8, $0, $2 # n
      
      add $10, $0, 1
      add $11, $0, 1
      
      addi $9, $0, 0 # i = 0
      
test: beq $9, $8, fim
      
      add $4, $0, $10
      addi $2, $0, 1
      syscall
      
      addi $4, $0 ' '
      addi $2, $0, 11
      syscall
      
      add $12, $11, $10
      add $10, $0, $11
      add $11, $0, $12
      
      
      addi $9, $9, 1 # i-/ = i + 1
      j test
      
fim:  addi $2, $0, 10
      syscall