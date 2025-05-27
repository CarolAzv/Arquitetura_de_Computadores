.text
main: add $9, $0, 0
      
loop: addi $2, $0, 5
      syscall
      srl $8, $2, 31
      bne $8, $0, menos
      
      add $8, $0, $2
      beq $8, $0, fim 
      
      add $9, $9, $8
      
menos: j loop

fim:  add $4, $0, $9
      add $2, $0, 1
      syscall
      
      addi $2, $0, 10
      syscall
      
      #srl $8, $2, 31
      #bne $8, $0, sai