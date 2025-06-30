.text
# começa o loop de pintar, pegar a cor do céu
main: lui $8, 0x1001

      lui $5, 0x006e
      ori $5, $5, 0xaaff
      addi $2, $0, 42
      
      addi $10, $0, 8192
      addi $11, $0, 1654 #128
      
# pinta o céu até o começo da primeira ilha
loop: beq $10, $11, ilha
      sw $5, 0($8)
      addiu $8, $8, 4

      addi $10, $10, -1
      j loop
      
#pega a cor da ilha
ilha: lui $5, 0x0074
      ori $5, $5, 0x3c0b
      addi $12, $0, 42

# pinta a primeira ilha
test: beq $10, $0, fim
      beq $12, $0, ilhb
      sw $5, 0($8)
      addiu $8, $8, 4

      addi $10, $10, -1
      addi $12, $12, -1
      j test
    
# pega a cor do céu
ilhb: lui $5, 0x006e
      ori $5, $5, 0xaaff
      addi $12, $0, 24

# pinta o céu entre as duas ilhas
twst: beq $10, $0, fim
      beq $12, $0, ilhc
      sw $5, 0($8)
      addiu $8, $8, 4

      addi $10, $10, -1
      addi $12, $12, -1
      j twst
      
#pega a cor da ilha
ilhc: lui $5, 0x0074
      ori $5, $5, 0x3c0b
      addi $12, $0, 42

# pinta a segunda ilha
tsst: beq $10, $0, fim
      beq $12, $0, ilhd
      sw $5, 0($8)
      addiu $8, $8, 4

      addi $10, $10, -1
      addi $12, $12, -1
      j tsst
      
# pega a cor do céu
ilhd: lui $5, 0x006e
      ori $5, $5, 0xaaff
      addi $12, $0, 10

# pinta o resto do céu 
tnst: beq $10, $0, fim
      beq $12, $0, cora
      sw $5, 0($8)
      addiu $8, $8, 4

      addi $10, $10, -1
      addi $12, $12, -1
      j tnst

      addi $10, $10, -1
      addi $12, $12, -1
      
# pega a primeira cor do mar
cora: lui $5, 0x0014
      ori $5, $5, 0x14b8
      addi $12, $0, 256
     
# pinta linha do mar
tesA: beq $10, $0, fim
      beq $12, $0, corb
      sw $5, 0($8)
      addiu $8, $8, 4

      addi $10, $10, -1
      addi $12, $12, -1
      j tesA
      
# pega a segunda cor do mar
corb: lui $5, 0x0012
      ori $5, $5, 0x0a8f
      addi $12, $0, 256
      
# pinta linha do mar e retornar a pegar a cor 1 do mar para fazer loop
tesB: beq $10, $0, fim # checa se todos os pixels foram pintados
      beq $12, $0, cora
      sw $5, 0($8)
      addiu $8, $8, 4

      addi $10, $10, -1
      addi $12, $12, -1
      j tesB
      
fim:  addi $2, $0, 10
      syscall