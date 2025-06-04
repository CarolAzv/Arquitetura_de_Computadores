.text
main: addi $2, $0, 5
      syscall
      add $8, $0, $2 # num 1
      
      addi $2, $0, 5
      syscall
      add $9, $0, $2 # num 2
      
      addi $2, $0, 5
      syscall
      add $10, $0, $2 # num 3
      
      add $11, $8, $9 # num 1 + num 2
      add $11, $11, $10 # + num3
      
      add $12, $0, 3
      div $11, $12
      
      mflo $4
      addi $2, $0, 1
      syscall 
      
      addi $2, $0, 10
      syscall
      