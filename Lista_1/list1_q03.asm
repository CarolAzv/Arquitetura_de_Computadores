.text
main: addi $2, $0 , 5 #$2 <= $0 + 5
      syscall
      add $8, $0, $2 #S8 <- $0 + $2
      
      addi $2, $0 , 5 #$2 <= $0 + 5
      syscall
      add $9, $0, $2 #$9 <- $0 + $2

      mul $4, $8, $9 #$4 <= $8 x $9
      addi $2, $0, 1
      syscall 
