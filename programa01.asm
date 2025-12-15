#dados
inicio:
	addi $t1, $zero, 1 #inicializa o contador com 1
	addi $t2, $zero, 21 #define o somatorio até 20

#somatório
processamento:
	beq $t1, $t2, saida #se o contador for = 20 vai para saida(completou o somatório
	mul $t3, $t1, 4 #calcula 4 x k e guarda em $t3
	addi $t3, $t3, 2 #adiciona 2 a 4k e guarda em $t3
	add $t4, $t4, $t3 #armazena o resultado a $t4( que contem a soma dos outros resultados)( na primeita iteração $t4 = 0)
	addi $t1, $t1, 1 # aumenta o contador
	j processamento

#saida
saida: 
	li $v0, 1 #carrega 1 em $v0 para fazer a chamada de sistema
	move $a0, $t4 #copia a variavel soma em $a0 para poder printar
	syscall