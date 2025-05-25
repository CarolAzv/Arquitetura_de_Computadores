.text
main: addi $2, $0, 5
      syscall
      add $8, $0, $2
      
      slt $10, $8, $0 # se ($8 < 0) $10 <- 1 senão $10 <- 0
      
      beq $10, $0, positiv
      
      mul $4, $8, $8 #quadrado de num
      j imp
      
positiv:
      sll $4, $8, 1 #dobra ao deslocar pra esquerda 1
      
imp:  addi $2, $0, 1
      syscall
      addi $2, $0, 10
      syscall
