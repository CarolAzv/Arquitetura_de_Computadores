.text
main:
    addi $a1 $0 5000 # tempo
    addi $a2 $0 0 # instrumento
    addi $a3 $0 65 # volume
    addi $a0 $0 60 # nota
    addi $v0 $0 31 # syscall
    syscall
   
    # pausa
    addi $v0 $0 32
    addi $a0 $0 5000
    syscall
   
    addi $a1 $0 5000 # volume
    addi $a2 $0 0 # instrumento
    addi $a3 $0 65 # volume
    addi $a0 $0 70 # nota
    addi $v0 $0 31 # syscall
    syscall
fim:
    addi $v0 $0 10
    syscall


---------------------------------------------------------------------------------------

.data
notas:  .word 60, 62, 64, 65, 67, 69, 71, 72  # escala de notas

.text
main:
    la $t0, notas       # endere�o da lista de notas
    addi $t1 $0 8           # n�mero de notas na lista
    addi $t2 $0 0           # �ndice do loop

loop:
    beq $t2, $t1, fim   # se �ndice == n�mero de notas, fim do loop

    lw $a0, 0($t0)      # carrega a nota atual
    addi $a1 $0 5000        # dura��o da nota
    addi $a2 $0 0           # instrumento
    addi $a3 $0 65          # volume
    addi $v0 $0 31          # syscall para tocar nota
    syscall

    # pausa entre notas
    addi $v0, 32          # syscall pausa
    lw $a0, 5000 # dura��o da pausa
    syscall

    addi $t0, $t0, 4    # pr�ximo endere�o da nota
    addi $t2, $t2, 1    # pr�ximo �ndice
    j loop

fim:
    li $v0, 10          # syscall para sair
    syscall