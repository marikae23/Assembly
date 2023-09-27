; Faça um programa que atribua aos registradores AL, BL, CL e DL, os valores FA; FB; FC e FD respectivamente.

	mov	al,FA
	mov	bl,FB
	mov	cl,FC
	mov	dl,FD
	end

	mov	dl,FE
	mov	[10],DL
	mov	bl,10
	mov	al,[BL]
	end

__________________________________________________

; Faça um programa, a partir do anterior, que troque o conteúdo dos registradores AL e DL; BL e CL, utilizando instruções PUSH e POP

	mov	dl,FE
	mov	bl,10
	push	dl
	push	bl
	pop	al
	pop	cl
	
	end

__________________________________________________

; O Programa abaixo executa um laço sobre uma área de memória onde encontra-se armazenada acadeia de caracteres “BRASIL”, os registradores BL, CL e DL desempenham importante papel para a execução do programa. Digite e execute o programa abaixo e, em seguida responda:

; Qual a função do registrador CL? Explique porque ele foi inicializado com o valor C0.
; R: é usado para rastrear a posição onde a cópia será armazenada e é inicializado com C0, que é um valor específico da posição de memória.

; Qual a função do registrador DL ? Explique porque ele foi inicializado com o valor 10.

; Qual a função do registrador BL ? Explique porque ele foi inicializado com o valor 6.

	org	0
	jmp 	INICIO
	org 	10
	db 	"BRASIL”
	org 	20
	inicio: CLO
	mov 	CL,C0
	mov 	BL,6
	mov 	DL,10
	prox: 	MOV AL,[DL]
	mov 	[CL],AL
	inc 	CL
 	inc 	DL
 	dec 	BL
 	jnz 	PROX
	end
