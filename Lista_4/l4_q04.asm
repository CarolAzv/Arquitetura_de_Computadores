.text
main:     addi $2, $0, 5
          syscall
          add $4, $0, $2
          addi $2, $0, 5
          syscall
          add $5, $0, $2
          addi $2, $0, 5
          syscall
          add $6, $0, $2
          
          jal dvalid
          
          add $4, $0, $2
          addi $2, $0, 1
          syscall
          
          addi $2, $0, 10
          syscall
          
          
#=======================================
#Funcao dvalid para indicar se a data
#é valida
#---------------------------------------
#Entrada: $4, $5, $6
#Saída:   $2
#Registradores usados $8, $9, $10

dvalid:   addi $8, $0, 2
          beq $5, $8, fev
          addi $8, $0, 8
          div $5, $8
          mflo $9
          add $5, $9, $5
          andi $10, $5, 1
          addi $10, $10, 30 # qtd de dias do mês
          j testes
          
fev:      addi $10, $0, 28
          addi $9, $0, 400
          div $6, $9
          mfhi $8
          beq $8, $0, biss
          addi $9, $0, 100
          div $6, $9
          mfhi $8        
          beq $8, $0, testes
          addi $9, $0, 4
          div $6, $9
          mfhi $8
          bne $8, $0, testes  
          
          
biss:     addi $10, $10, 1        
          
                                 
testes:   addi $8, $0, 1
          slt $9, $4, $8 # se dia<1 então $9<=1
          slt $8, $10, $4 #se diasmes < dia então $8<=1
          or $10, $8, $9
          bne $10, $0, invalida
          addi $2, $0, 1
          jr $31
        
invalida: addi $2, $0, 0
          jr $31            
          
          addi $2, $0, 0
          jr $31