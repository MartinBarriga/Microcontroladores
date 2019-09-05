.include"m8535def.inc"
ser r16
out ddra, r16
out ddrc, r16
out portb, r16
out portd, r16
uno:in r16, pinb
	in r17, pind
	add r16, r17
	out porta, r16
	in r16, sreg
	out portc, r16
	rjmp uno
