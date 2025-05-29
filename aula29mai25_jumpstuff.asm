.text
main: addi $2, $0, 5
      syscall
      add $4, $0, $2
      addi $2, $0, 5
      syscall
      add $5, $0, $2
      
      jal adder
      add $4, $0, $2
      addi $2, $0, 1
      syscall
      
      addi $2, $0, 10
      syscall
      
      
#=================================
# função para somar dois numeros
# Entradas $4, $5
# Saida: $2
# Registradores manipulados:
#=================================
adder: add $2, $4, $5
       jr $31