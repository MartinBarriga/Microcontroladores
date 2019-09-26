.include "m8535def.inc"

.def cont = r17
.def valor = r18
.def entrada = r19
.def aux = r20

ser aux
out ddra, aux
out portb, aux

inic:
	in entrada, pinb
	
	cpi entrada, $30
	brne targetCero

	cpi entrada, $31
	brne targetUno
	
	cpi entrada, $32
	brne targetDos

	cpi entrada, $33
	brne targetTres

	cpi entrada, $34
	brne targetCuatro

	cpi entrada, $35
	brne targetCinco

	cpi entrada, $36
	brne targetSeis

	cpi entrada, $37
	brne targetSiete

	cpi entrada, $38
	brne targetOcho

	cpi entrada, $39
	brne targetNueve
	
	cpi entrada, $3A
	brne targetA

	cpi entrada, $3B
	brne targetB

	cpi entrada, $3C
	brne targetC

	cpi entrada, $3D
	brne targetD

	cpi entrada, $3E
	brne targetE

	cpi entrada, $3F
	brne targetF	

	rjmp inic

targetNueve:
	ldi valor,$6f 
	out porta, valor
	rjmp inic

targetOcho:
	ldi valor,$7f
	out porta, valor
	rjmp inic

targetSiete:
	ldi valor,$27
	out porta, valor
	rjmp inic

targetSeis:
	ldi valor,$7d
	out porta, valor
	rjmp inic

targetCinco:
	ldi valor,$6d
	out porta, valor
	rjmp inic

targetCuatro:
	ldi valor,$66
	out porta, valor
	rjmp inic

targetTres:
	ldi valor,$4f
	out porta, valor
	rjmp inic

targetDos:
	ldi valor,$5b
	out porta, valor
	rjmp inic

targetUno:
	ldi valor,$06
	out porta, valor
	rjmp inic

targetCero:
	ldi valor,$3f
	out porta, valor
	rjmp inic

targetA:
	ldi valor,$77 
	out porta, valor
	rjmp inic

targetB:
	ldi valor,$1f 
	out porta, valor
	rjmp inic

targetC:
	ldi valor,$4e 
	out porta, valor
	rjmp inic

targetD:
	ldi valor,$3d
	out porta, valor
	rjmp inic

targetE:
	ldi valor,$4f
	out porta, valor
	rjmp inic

targetF:
	ldi valor,$47
	out porta, valor
	rjmp inic
