.text
main:  addi $2, $0, 5
       syscall
       add $8, $0, $2 # menor num
       add $9, $0, $2 # maior num

loop:  addi $2, $0, 5
       syscall
       add $10, $0, $2
      
      beq $10, $0, fim
      
       blt $10, $8, menor
       bgt $10, $9, maior
       
       j loop
       
menor: add $8, $0, $10 # menor num
       j loop
       
maior: add $9, $0, $10 # maior num
       j loop
       
fim:   add $4, $0, $8
       addi $2, $0, 1
       syscall
       
       addi $4, $0, '\n'
       addi $2, $0, 11
       syscall
       
       add $4, $0, $9
       addi $2, $0, 1
       syscall
       
       addi $2, $0, 10
       syscall
