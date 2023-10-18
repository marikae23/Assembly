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
	
