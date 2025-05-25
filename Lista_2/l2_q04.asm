.text
main: addi $2, $0, 5
      syscall
      add $8, $0, $2
      
      addi $2, $0, 5
      syscall
      add $9, $0, $2
      
      sub $10, $8, $9
      
      bne  $10, $0, diff
      
      add $4, $0, $8
      addi $2, $0, 1
      syscall
      
      addi $2, $0, 11
      add $4, $0, '='
      syscall
      
      addi $2, $0, 1
      add $4, $0, $9
      syscall
      
      
diff: slt $10, $8, $9 # se ($8 < $9) %10 <- 1; senão $10 <- 0

      beq $10, $0, maior8
      add $4, $0, $8
      addi $2, $0, 1
      syscall
      j fim
      
      addi $2, $0, 11
      add $4, $0, '<'
      syscall
      
      addi $2, $0, 1
      add $4, $0, $9
      syscall
      
      j fim
      
      
maior8: add $4, $0, $8
        addi $2, $0, 1
        syscall
      
        addi $2, $0, 11
        add $4, $0, '>'
        syscall
      
        addi $2, $0, 1
        add $4, $0, $9
        syscall

      
fim: addi $2, $0, 10
     syscall
