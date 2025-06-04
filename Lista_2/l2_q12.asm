.text
main: addi $2, $0, 5
      syscall
      add $8, $0, $2 #nota 1
      
      addi $2, $0, 5
      syscall
      add $9, $0, $2 #nota 2
      
      addi $2, $0, 5
      syscall
      add $10, $0, $2 #faltas
      
      mul $11, $8, 2 #art nota1
      mul $12, $9, 3 #art nota2
      add $13, $11, $12 #nota1 + nota2
      add $14, $0, 5 #art
      
      div $13, $14
      mfhi $15 #nota final
      
      add $20, $0, 5
      div $10, $20
      mfhi $16 #faltas
      mul  $17, $16, 10 #penalidade
      
      sub $18, $15, $17 #nota final
      
      add $4, $0, $15
      addi $2, $0, 1
      syscall
      
      addi $4, $0, '\n'
      addi $2, $0, 11
      syscall
      
      add $4, $0, $17
      addi $2, $0, 1
      syscall
      
      addi $4, $0, '\n'
      addi $2, $0, 11
      syscall
      
      add $4, $0, $18
      addi $2, $0, 1
      syscall
      
      addi $2, $0, 10
      syscall
