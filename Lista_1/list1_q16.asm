.text
main: addi $2, $0, 5
      syscall
      add $8, $0, $2
      add $11, $0, 2
      
      div $8, $11
      mflo $9
      
      slt $10, $9, $0 # se ($9 < 0) $10 <- 1 senão $10 <- 0
      beq $10, $0, par
      
      addi $4, $0, -1
      
      j imp
      
par:  add $4, $0, 0

imp:  addi $2, $0, 1
      syscall
