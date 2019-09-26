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
	brge targetCero

	cpi entrada, $31
	brge targetUno
	
	cpi entrada, $32
	brge targetDos

	cpi entrada, $33
	brge targetTres

	cpi entrada, $34
	brge targetCuatro

	cpi entrada, $35
	brge targetCinco

	cpi entrada, $36
	brge targetSeis

	cpi entrada, $37
	brge targetSiete

	cpi entrada, $38
	brge targetOcho

	cpi entrada, $39
	brge targetNueve
	
	cpi entrada, $3A
	brge targetA

	cpi entrada, $3B
	brge targetB

	cpi entrada, $3C
	brge targetC

	cpi entrada, $3D
	brge targetD

	cpi entrada, $3E
	brge targetE

	cpi entrada, $3F
	brge targetF	

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
