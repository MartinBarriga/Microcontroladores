.include"m8535def.inc"
ser r16 //Llenamos el registro 16 con 1's
out ddra, r16 //Asignamos el puerto a como salida
out ddrc, r16 //Asignamos el puerto c como salida
out portb, r16 //Asignamos el puerto b como entrada
out portd, r16 //Asignamos el puerto d como entrada
uno:in r16, pinb // Guardamos en el registro 16, lo leído del puerto b
	in r17, pind // Guardamos en el registro 17, lo leído del puerto d
	add r16, r17 //Sumamos lo contenido en el registro 16 y 17
			     // y sobreescribimos el registro 16 con el resultado
	out porta, r16 //Mandamos al puerto de salida A, lo que tenga r16 
	in r16, sreg //Sobreescribimos el registro 16 con el valor de sreg
	out portc, r16 //Mandamos al puerto de salida C, el valor de r16
	rjmp uno //Saltamos al target uno, creando un ciclo infinito
