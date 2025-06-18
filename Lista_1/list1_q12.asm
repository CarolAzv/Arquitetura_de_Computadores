.text
main: addi $2, $0, 5 
      syscall
      add $8, $0, $2
      
      addi $2, $0, 5
      syscall
      add $9, $0, $2
      
      addi $2, $0, 5
      syscall
      add $10, $0, $2
      
      addi $11 , $0, 27 #soma dos pesos
      
      sll $18, $8, 1 #left 1 para dobro
      add $18, $18, $8 #adiciona o base para = *3
      
      sll $19, $9, 3
      add $19, $19, $9
      
      sll $20, $10, 4
      sub $20, $20, $10
      
      add $12, $18, $19
      add $12, $12, $20
      
      div $12, $11
      
      mflo $4
      addi $2, $0, 1
      syscall 
