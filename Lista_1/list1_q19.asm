.text
main: addi $2, $0, 5
      syscall
      add $8, $0, $2 #mes no 8
      
      addi $9, $0, 8
      div $8, $9
      mflo $10 #mes \ 8   
      add $11, $10, $8
      
      andi $12, $11, 1
      
      addi $4, $12, 30
      addi $2, $0, 1
      syscall
