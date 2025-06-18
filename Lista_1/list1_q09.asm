.text
main: addi $2, $0 , 5 #$2 <= $0 + 5
      syscall
      add $8, $0, $2 #S8 <= $0 + $2 segundos total
      
      div $9, $8, 3600 #$8(segundos) % 3600 (segundos em uma hora)
      mflo $10 # total de horas
      mfhi $11 # segundo sem as horas
      
      add $8 , $0, $11 # $8 recebe os segundos sem horas de $11
      
      div $9, $8, 60 #$8(segundos) % 60 (segundos em um minuto)
      mflo $11 # total de minutos
      mfhi $12 # segundo sem as horas e minutos
    
      add $4, $0, $10 #$4 = $13
      addi $2, $0, 1
      syscall
      
      addi $4, $0, ':'
      addi $2, $0, 11
      syscall
      
      
      add $4, $0, $11 #$4 = $11
      addi $2, $0, 1
      syscall
      
      addi $4, $0, ':'
      addi $2, $0, 11
      syscall
      
      add $4, $0, $12 #$4 = $12
      addi $2, $0, 1
      syscall
