.text
main: addi $2, $0, 5
      syscall
      add $8, $0, $2 # dai
      
      addi $2, $0, 5
      syscall
      add $9, $0, $2 # mes
      
      addi $2, $0, 5
      syscall
      add $10, $0, $2 # ano
      
      bgt $8, 31, nao
      bgt $8, 12, nao
      
      add $4, $0, 't'
      addi $2, $0, 11
      syscall
      
      j fim
      
nao:  add $4, $0, 'i'
      addi $2, $0, 11
      syscall
      
      
fim:  add $2, $0, 10
      syscall
