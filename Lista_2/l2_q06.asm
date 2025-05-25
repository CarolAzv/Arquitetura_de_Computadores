.text
main: addi $2, $0, 5
      syscall
      add $8, $0, $2 # idade
      
      addi $2, $0, 5
      syscall
      add $9, $0, $2 # tempo de serviso
      
      #condições
      add $10, $0, 65 # ter, ao menos, 65 anos
      add $11, $0, 40 #ter trabalhado 40 anos
      add $12, $0, 60 #ter pelo menos 60 anos e...
      add $13, $0, 35 # ... mais de 35 anos
      
      bge $8, $10, sim
      bge $9, $11, sim
      bge $8, $12, p2

nao:  add $4, $0, 'N'
      addi $2, $0, 11
      syscall   
      
      j fim

p2:   blt $9, $13, nao
                        
sim:  add $4, $0, 'S'
      addi $2, $0, 11
      syscall
      
fim: addi $2, $0, 10
     syscall
