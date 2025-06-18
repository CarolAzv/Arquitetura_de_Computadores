.text
#idk how to do space
main: addi $2, $0, 5
      syscall
      
      add $4, $0, 1000
      div $2, $4
      mflo $8
      mfhi $2
      
      add $4, $0, 100
      div $2, $4
      mflo $9
      mfhi $2
      
      add $4, $0, 10
      div $2, $4
      mflo $10
      mfhi $11
      
      beq $8, $0, num1
      add $4, $0, $8
      add $2, $0, 1
      syscall
      j a
      
num1: add $4, $0, " "
      addi $2, $0, 11
      syscall
      
a:    beq $9, $0, num2
      add $4, $0, $9
      addi $2, $0, 1
      syscall
      j b
      
num2: add $4, $0, " "
      addi $2, $0, 11
      syscall
      
b:    beq $10, $0, num3
      add $4, $0, $10
      addi $2, $0, 1
      syscall
      j c
      
num3: add $4, $0, " "
      addi $2, $0, 11
      syscall
      
c:    beq $11, $0, num4
      add $4, $0, $11
      addi $2, $0, 1
      syscall
      
num4: addi $4, $0, " "
      addi $2, $0, 11
      syscall
      
      addi $2, $0, 10
      syscall
