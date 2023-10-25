;Faça um programa, a partir do exercício anterior, que utiliza os dados armazenados
;na memória de 6016 a 6F16 e os transfira para a pilha BF16 a B016, utilizando as
;instruções push e pop. 

	mov	cl,60 ; Inicializa o contador de loop (cl) com 60
	mov	al,05 ; Inicializa o registrador al com 5
	mov	dl,10 ; Inicializa o registrador dl com 10
soma:	mov	[cl],al ; Etiqueta 'soma' - início do loop e Armazena o valor do registrador AL na memória, no endereço apontado por CL
	add	al,02  ; Adiciona 2 ao valor do registrador AL
	inc	cl ; Incrementa o valor do registrador CL para apontar para o próximo endereço de memória
	dec	dl ; Decrementa o valor do registrador DL
	jnz	soma ; Verifica se o registrador DL é zero e, se não for, volta ao início do loop 'soma'

	mov	al,[60] ; Carrega o valor na memória no endereço 60h para o registrador AL
	mov	cl,6l ; Inicializa o registrador CL com o valor 6L (onde L representa um valor hexadecimal)
	mov	dl,0f ; Inicializa o registrador DL com o valor 0Fh (onde 'h' representa hexadecimal)
	mov	bl,[cl] ; Carrega o valor na memória no endereço apontado por CL para o registrador BL
	xor	al,bl ; Realiza uma operação XOR entre os registradores AL e BL
	inc	cl ; Incrementa o valor do registrador CL
	dec	dl ; Decrementa o valor do registrador DL
	jnz	xorr ; Verifica se o registrador DL é zero e, se não for, volta ao início da etiqueta 'xorr'
	mov	[70],al ; Armazena o valor do registrador AL na memória no endereço 70h

	end


; Inicie o registrador DL com o valor 1610, após isso execute a instrução SHR DL
	mov	cl,60
	mov	dl,10
empilha:
	mov	al,[cl]
	push	al
	inc	cl
	dec 	dl
	jnz	empilha
	end
