.text
main: addi $8, $0, 0
      addi $10, $0, 10
      addi $9, $0, 3
      addi $11, $0, 3
      
test: beq $8, $10, saifor

      add $4, $0, $9
      addi $2, $0, 1
      syscall
      
      add $4, $0, '\n'
      addi $2, $0, 11
      syscall
      
      add $9, $9, $11
      addi $8, $8, 1
      j test
saifor: 
      addi $2, $0 10
      syscall