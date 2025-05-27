.text
main: addi $2, $0, 5
      syscall
      add $8, $0, $2 #base
      
      addi $2, $0, 5
      syscall
      add $9, $0, $2 #quantidade
      
      
test: beq $8, $9 saifor

      add $4, $0, $9
      addi $2, $0, 1
      syscall
      addi $9, $9, 3
      
      add $4, $0, '\n'
      addi $2, $0, 11
      syscall
      
      
      addi $8, $8, 1
      j test
      
      
saifor: 
      addi $2, $0 10
      syscall
      
      
      
      
      
