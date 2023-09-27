; Faça um programa que atribua aos registradores AL, BL, CL e DL, os valores FA; FB; FC e FD
respectivamente.

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

; Faça um programa, a partir do anterior, que troque o conteúdo dos registradores AL e DL; BL e
CL, utilizando instruções PUSH e POP

	mov	dl,FE
	mov	bl,10
	push	dl
	push	bl
	pop	al
	pop	cl
	
	end
