.data # 0x10010000
.word 3   # 0x10010000
.word 6   # 0x10010004
.word 0   # 0x10010008
.word 67  # 0x1001000c
.word 1   # 0x10010010
.word -4  # 0x10010014


.text
main: lui $8, 0x1001 # $8 <= 0x10010000
      lw $9, 4, ($8)
      
      addi $2, $0, 5
      syscall
      sw $2, 0($8)