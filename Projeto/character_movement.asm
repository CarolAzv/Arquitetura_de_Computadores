.text
main: 
      #addi $9, $0, 0xff # < 0x000000ff
      #sll $9, $9, 8 # < 0x0000ff00
      #addi $10, $0, 512
      #lui $5, 0x00ff
      #ori $5, $5, 0xffff
      
      lui $8, 0x1001
      lui $5, 0x00ff
      ori $5, $5, 0xffff
      addi $2, $0, 42 
      addi $10, $0, 512
      sll $9, $9, 8
      
test: beq $10, $0, fim
      addi $4, $0, 0
      addi $2, $0, 42
      syscall
      
      sw $4, 0($8)
      sw $4, 2028($8)
      addi $8, $8, 4
      
      addi $10, $10, -1
      j test      
      
fim:  lui $8, 0x1001
      lui $9, 0x00ff
      ori $9, $9, 0xffff
      
      addi $11, $0, 100
test2: beq $11, $0, parou  
      sw $9, 0($8)
      jal timer
      lw $10, 2048($8)
      sw $10, 0($8)
      addi $8, $8, 4
      
      addi $11, $11, -1
      j test2
      
parou: addi $2, $0, 10
      syscall
      
#
# função timer
timer: addi $24, $0, 100000
testT:  beq $24, $0, retorna
        nop
        nop
        addi $24, $24, -1
       
retorna: jr $31
