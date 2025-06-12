.text
main: addi $2, $0, 5
      syscall
      
      jal check
      
      addi $2, $0, 1
      syscall
      
      addi $2, $0, 10
      syscall
      
      
check:
      beq $2, $0, zero
      
      bgt $2, $0, mais
      
      add $4, $0, -1
      jr $31
      
zero: add $4, $0, 0
      jr $31
      
mais: add $4, $0, 1
      jr $31