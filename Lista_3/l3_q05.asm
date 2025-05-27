.text
main: add $8, $0, 0  # marca começo
      add $9, $0, 10 # marca fim
      add $10, $0, 0 #soma total

loop: beq $8, $9, fim
      addi $2, $0, 5
      syscall
      add $11, $0, $2 # num 1
      
      addi $2, $0, 5
      syscall
      add $12, $0, $2 # num 2
      
      add $10, $10, $11 # soma = soma + num 1
      add $10, $10, $12 # soma = soma + num 2
      add $8, $8, 2     # $8 +2 pra marca que recebeu num 1 e 2
      
      j loop
      
fim:  add $4, $0, $10
      addi $2, $0, 1
      syscall
      
      addi $2, $0, 10
      syscall
      
      