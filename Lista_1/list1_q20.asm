.text
main: addi $2, $0, 5
      syscall
      add $8, $0, $2 #ano no $8
      
      addi $25, $0, 19
      div $8, $25
a:    mfhi $9
      
      addi $25, $0, 100
      div $8, $25
b:    mflo $10
c:    mfhi $11

      addi $25, $0, 4
      div $10, $25
d:    mflo $12
e:    mfhi $13
      
      addi $24, $10, 8 #b + 8
      addi $25, $0, 25
      div $24, $25
f:    mflo $14
      
      sub $24, $10, $14 #b - f
      addi $24, $24, 1 #b - f + 1
      addi $25, $0, 3
      div, $24, $25
g:    mflo $15
      
      addi $25, $0, 19
      mul $24, $9, $25 #19 x a
      add $24, $24, $10 #19 x a + b
      sub $24, $24, $12 #19 x a + b - d
      sub $24, $24, $15 #19 x a + b - d - g
      addi $24, $24, 15 #19 x a + b - d - g + 15
      addi $25, $0, 30
      div $24, $25
h:    mfhi $16
      
      addi $25, $0, 4
      div $11, $25
i:    mflo $17
k:    mfhi $18
      
      sll $23, $13, 1 # 2 x e
      sll $24, $17, 1 # 2 x i
      add $24, $23, $24 # 2 x e + 2 x i
      addi $24, $24, 32 #32 + 2 x e + 2 x i 
      sub $24, $24, $16 #32 + 2 x e + 2 x i - h
      sub $24, $24, $18 #32 + 2 x e + 2 x i - h - k
      addi $25, $0, 7
      div $24, $25
l:    mfhi $19
      
      addi $24, $0, 11
      mul $24, $24, $16 #11 x h
      addi $23, $0, 22
      mul $23, $23, $19 #22 x l
      add $24, $24, $23 #11 x h + 22 x l
      add $24, $24, $9 #a + 11 x h + 22 x l
      addi $25, $0, 451
      div $24, $25
m:    mflo $20
      
      addi $23, $0, 7
      mul $23, $23, $20 #7 x m
      add $24, $16, $19 #h + l
      sub $24, $24, $23 #h + l - 7 x m
      addi $24, $23, 114 #h + l - 7 x m + 114
      addi $25, $0, 31
      div $24, $25
mes:  mflo $21
      
      mfhi $22
dia:  add $22, $22, 2

      add $4, $0, $22
      addi $2, $0, 1
      syscall
      
      add $4, $0, '/'
      addi $2, $0, 11
      syscall
      
      add $4, $0, $21
      addi $2, $0, 1
      syscall
