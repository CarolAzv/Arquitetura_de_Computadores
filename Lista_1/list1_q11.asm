.text
main: addi $2, $0 , 5 #$2 <= $0 + 5
      syscall
      add $8, $0, $2 #S8 <= $0 + $2
      
      add $11, $0, 100 #$10 = 0 + 100
      
      div $8, $11 #lo = $11/$10
      mflo $9 #9 = lo
      add $12, $0, $9 # 12 = 9 primeiro digito
      mul $9, $9, $11
      sub $8, $8, $9
            
      add $11, $0, 10 #$10 = 0 + 10
      
      div $8, $11 #lo = $11/$10
      mflo $10 #10 = lo
      add $13, $0, $10 # 12 = 10 segundo digito
      mul $10, $10, $11
      sub $8, $8, $10
      
      
      add $4, $0, $8
      addi $2, $0, 1
      syscall
      
      add $4, $0, $13
      addi $2, $0, 1
      syscall
      
      add $4, $0, $12
      addi $2, $0, 1
      syscall
