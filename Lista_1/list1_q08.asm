.text
main: addi $2, $0 , 5 #$2 <= $0 + 5
      syscall
      add $8, $0, $2 #S8 <= $0 + $2 horas
      
      addi $2, $0 , 5 #$2 <= $0 + 5
      syscall
      add $9, $0, $2 #S9 <= $0 + $2 minutos
      
      addi $2, $0 , 5 #$2 <= $0 + 5
      syscall
      add $10, $0, $2 #S10 <= $0 + $2 segundos
      
      mul $11, $8, 3600 #S11 <= $8(horas) x 3600 (segundos em uma hora)
      mul $12, $9, 60 #S12 <= $9(minutos) x 60 (segundos em um minuto)
      
      add $13, $11, $12 #$13 = $11 horas + $12 minutos
      add $13, $13, $10 #$13 = $13 horas+minutos + $10 segundos
      
      add $4, $0, $13 #$4 = $13
      addi $2, $0, 1
      syscall
