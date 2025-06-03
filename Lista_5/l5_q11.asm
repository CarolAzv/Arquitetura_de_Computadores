.data
A: .word 0, 0, 0, 0, 0, 0


.text
main: lui $8, 0x1001
      addi $9, $0, 1
      sw $9, 0($8)
      addi $9, $0, 0
      sw $9, 4($8)
      addi $9, $0, 5
      sw $9, 8($8)
      addi $9, $0, -2
      sw $9, 12($8)
      addi $9, $0, -5
      sw $9, 16($8)
      addi $9, $0, 7
      sw $9, 20($8)
#------------------------------
      
      lw $9, 0($8)
      lw $10, 4($8)
      lw $11, 20($8)
      
      add $4, $9, $10
      add $4, $4, $11
      addi $2, $0, 1
      syscall
      
      add $4, $0, '\n'
      addi $2, $0, 11
      syscall
#------------------------------
      
      addi $10, $0, 100
      sw $10, 16($8) 
#------------------------------
      
      addi $9, $0, 6
      addi $10, $0, 0
      
test: beq $9, $10, fim
      
      lw $4, 0($8)
      addi $2, $0, 1
      syscall
      
      add $4, $0, '\n'
      addi $2, $0, 11
      syscall
      
      addi $8, $8, 4
      
      addi $10, $10, 1
      j test
      
fim:  addi $2, $0, 10
      syscall