; Semáfaro vermelho, amarelo e verde.

  	in	00
	mov	al,90
	out	01
	in	00
	mov	al,D8
	out	01
	in	00
	mov	al,FC 
	out	01
	END

; Display que acenda C e E.

	in	00
	mov	al,F5
	mov	al,F0
	out	02
	end

; Armazene o valor recebido no endereço de memória.
  	in 	00
	mov	[90], al
	end

; Limite o valor da tecla.
le:	in	00
	cmp	al,60
	jz	le
	js	le
	cmp	al,7B
	jz	le
	js	le
	mov	[90],al
	end
