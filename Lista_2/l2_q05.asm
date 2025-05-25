.text
main: addi $2, $0, 5
      syscall
      add $8, $0, $2 #nota 1
      
      addi $2, $0, 5
      syscall
      add $9, $0, $2 #nota 2
      sll $19, $9, 1 #nota 2
      
      addi $2, $0, 5
      syscall
      add $10, $0, $2 #nota 3
      sll $20, $10, 1
      add $20, $20, $10 #nota 3
      
      add $21, $8, $19
      add $21, $21, $20
      
      add $22, $0, 6
      
      div $21, $22
      mflo $22
      
      mflo $4
      addi $2, $0, 1
      syscall
      
      
      add $23, $0, 60
      
      slt $24, $22, $23 #se $22 < 60; $24 <- 1 senão $24 <- 0
      
      beq $24, $0, aprovado
      addi $4, $0, 'R'
      
      j imp
      
aprovado: addi $4, $0, 'A'

imp: addi $2, $0, 11
     syscall
