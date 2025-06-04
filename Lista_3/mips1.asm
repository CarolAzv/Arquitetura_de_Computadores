.text
main: add $8, $0, 0  # num 1
      add $9, $0, 10 # num 2
      add $9, $9, 1
      
loop: beq $8, $9, fim 
      
      add $4, $0, $8
      addi $2, $0, 1
      syscall
      
      add $4, $0, '\n'
      addi $2, $0, 11
      syscall
      
      add $8, $8, 1
      
      j loop
  
fim:  addi $2, $0, 10