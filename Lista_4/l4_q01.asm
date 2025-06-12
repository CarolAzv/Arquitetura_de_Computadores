.text
main: addi $2, $0, 5
      syscall
      
      jal dobro
      
      addi $2, $0, 1
      syscall
      
      addi $2, $0, 10
      syscall
      
      
      
#função dobro para calcular o dobro de um numero inteiro
#----------------------------------------------------------
#Entrada: $2
#Saida:   $4      

dobro: sll $4, $2, 1
       jr $31
