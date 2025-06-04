.text
main: addi $2, $0, 5
      syscall
      add $8, $0, $2 #quantas num vai ser lido
      add $9, $0, 0 #check
      
      addi $2, $0, 5
      syscall
      add $10, $0, $2 #maior numero
      add $11, $0, 1 #quantas vezes o maior numero foi lido
      add $9, $9, 1
      
loop: beq $9, $8, fim
      
      addi $2, $0, 5
      syscall
      add $12, $0, $2 #novo numero
      
      beq $12, $10 igual
      bgt $12, $10, maior
      
      add $9, $9, 1
      j loop
      
igual:
      add $11, $11, 1
      add $9, $9, 1
      j loop
      
maior:
      add $10, $0, $12
      add $11, $0, 1
      add $9, $9, 1
      j loop
      
fim:  add $4, $0, '\n'
      addi $2, $0, 11
      syscall
      
      add $4, $0, $10
      addi $2, $0, 1
      syscall
      
      add $4, $0, '\n'
      addi $2, $0, 11
      syscall
      
      add $4, $0, $11
      addi $2, $0, 1
      syscall
      
      addi $2, $0, 10
      syscall