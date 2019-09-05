.include "m8535def.inc"
.def ra = r16
.def aux = r17
.def rc = r18
.def rtreinta = r19
.def rsiete = r20

ser aux
out ddra, aux
out ddrc, aux
out portb, aux
out portd, aux
ldi rtreinta, $30
ldi rsiete, $07


otro:
	in ra, pinb
	subi ra, $30
	cpi ra, $11
	brge letra

	sal1: 
		out porta, ra
		in rc, pind
		cpi rc, $0A
		brge hex
		sal2: 
			add rc, rtreinta
			out portc, rc
			rjmp otro
		hex: 
			add rc, rsiete		
			rjmp sal2
	letra: 
		subi ra, $07
		rjmp sal1
