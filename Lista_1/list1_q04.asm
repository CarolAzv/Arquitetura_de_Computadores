.text
main: addi $2, $0 , 5 #$2 <= $0 + 5
      syscall
      add $8, $0, $2 #S8 <= $0 + $2
      
      addi $2, $0 , 5 #$2 <= $0 + 5
      syscall
      add $9, $0, $2 #$9 <= $0 + $2
      
      add $10, $0, 2 #$10 = 2
      
      add $11, $8, $9 #$11 = $8 + $9
      div $11, $10 #lo = $11/$10
      mflo $4 #4 = lo
      
      addi $2, $0, 1
      syscall
