
  mov  cl, 60 ; Inicializa o contador de loop (cl) com 60
  mov  al, 5 ; Inicializa o registrador al com 5
  mov  dl, 10 ; Inicializa o registrador dl com 10

soma: mov	[cl], al  ; Etiqueta 'soma' - início do loop
    ; Armazena o valor do registrador AL na memória, no endereço apontado por CL
    

    ; Adiciona 2 ao valor do registrador AL
    add	al, 2

    ; Incrementa o valor do registrador CL para apontar para o próximo endereço de memória
    inc	cl

    ; Decrementa o valor do registrador DL
    dec	dl

    ; Verifica se o registrador DL é zero e, se não for, volta ao início do loop 'soma'
    jnz	soma

; Fim do programa

; Adicione comentários adicionais ou finalize o programa conforme necessário

