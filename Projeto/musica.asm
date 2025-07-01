.text
main: addi $a1 $0, 5000 #tempo
      addi $a2 $0, 0 #instrumento 1-7 pianos/ guitara/ 74-79 sopro/
      addi $a3 $0, 65 #volume
      addi $a0 $0, 60 #nota (dó)
      addi $v0 $0, 31 #syscall
      syscall
      
      #pausa
      addi $v0 $0, 32
      addi $a0 $0, 1000
      syscall
      
      addi $a1 $0, 1000 #tempo
      addi $a2 $0, 0 #instrumento
      addi $a3 $0, 65 #volume
      addi $a0 $0, 71 #nota (si)
      addi $v0 $0, 31 #syscall
      syscall
      
fim:  addi $v0, $0, 10
      syscall
      
#syscall 32 é um delay