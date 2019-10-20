.include "m8535def.inc"

.def cont = r17 //vinculamos cont con r17
.def valor = r18 //vinculamos valor con r18
.def entrada = r19 //vinculamos entrada con r19
.def aux = r20 //vinculamos aux con r20

ser aux //llenamos aux con 1's
out ddra, aux //definimos ddra como puerto de salida
out portb, aux//definimos port b como puerto de entrada

inic:
	in entrada, pinb //guardamos en entrada el valor del puerto b
	
	cpi entrada, $46 //preguntamos si el valor es mayor o igual a 3F
	brge targetF //si es el caso, lo mandamos al tag F

	cpi entrada, $45 //preguntamos si el valor es mayor o igual a 3E
	brge targetE //si es el caso, lo mandamos al tag E

	cpi entrada, $44 //preguntamos si el valor es mayor o igual a 3D
	brge targetD //si es el caso, lo mandamos al tag D

	cpi entrada, $43 //preguntamos si el valor es mayor o igual a 3C
	brge targetC //si es el caso, lo mandamos al tag C

	cpi entrada, $42 //preguntamos si el valor es mayor o igual a 3B
	brge targetB //si es el caso, lo mandamos al tag B

	cpi entrada, $41 //preguntamos si el valor es mayor o igual a 3A
	brge targetA //si es el caso, lo mandamos al tag A

	cpi entrada, $39 //preguntamos si el valor es mayor o igual a 39
	brge targetNueve //si es el caso, lo mandamos al tag nueve

	cpi entrada, $38 //preguntamos si el valor es mayor o igual a 38
	brge targetOcho //si es el caso, lo mandamos al tag ocho

	cpi entrada, $37 //preguntamos si el valor es mayor o igual a 37
	brge targetSiete //si es el caso, lo mandamos al tag siete

	cpi entrada, $36 //preguntamos si el valor es mayor o igual a 36
	brge targetSeis //si es el caso, lo mandamos al tag seis

	cpi entrada, $35 //preguntamos si el valor es mayor o igual a 35
	brge targetCinco //si es el caso, lo mandamos al tag cinco
	
	cpi entrada, $34 //preguntamos si el valor es mayor o igual a 34
	brge targetCuatro //si es el caso, lo mandamos al tag cuatro

	cpi entrada, $33 //preguntamos si el valor es mayor o igual a 33
	brge targetTres //si es el caso, lo mandamos al tag tres

	cpi entrada, $32 //preguntamos si el valor es mayor o igual a 32
	brge targetDos //si es el caso, lo mandamos al tag dos

	cpi entrada, $31 //preguntamos si el valor es mayor o igual a 31
	brge targetUno //si es el caso, lo mandamos al tag uno

	cpi entrada, $30 //preguntamos si el valor es mayor o igual a 30
	brge targetCero //si es el caso, lo mandamos al tag cero
	
	rjmp inic // saltamos al tag inic


targetA:
	ldi valor,$77  //le asignamos la representacion de la A en display en hex.
	out porta, valor //Mandamos al puerto A, lo almacenado en valor
	rjmp inic //Saltamos al tag inic para hacer un loop infinito

targetB:
	ldi valor,$7C   //le asignamos la representacion de la B en display en hex.
	out porta, valor //Mandamos al puerto A, lo almacenado en valor
	rjmp inic //Saltamos al tag inic para hacer un loop infinito

targetC:
	ldi valor,$39  //le asignamos la representacion de la C en display en hex.
	out porta, valor //Mandamos al puerto A, lo almacenado en valor
	rjmp inic //Saltamos al tag inic para hacer un loop infinito

targetD:
	ldi valor,$5E  //le asignamos la representacion de la D en display en hex.
	out porta, valor //Mandamos al puerto A, lo almacenado en valor
	rjmp inic //Saltamos al tag inic para hacer un loop infinito

targetE:
	ldi valor,$79  //le asignamos la representacion de la E en display en hex.
	out porta, valor //Mandamos al puerto A, lo almacenado en valor
	rjmp inic //Saltamos al tag inic para hacer un loop infinito

targetF:
	ldi valor,$71  //le asignamos la representacion de la F en display en hex.
	out porta, valor //Mandamos al puerto A, lo almacenado en valor
	rjmp inic //Saltamos al tag inic para hacer un loop infinito


targetNueve:
	ldi valor,$6f  //le asignamos la representacion deL 9 en display en hex.
	out porta, valor //Mandamos al puerto A, lo almacenado en valor
	rjmp inic //Saltamos al tag inic para hacer un loop infinito

targetOcho:
	ldi valor,$7f  //le asignamos la representacion del 8 en display en hex.
	out porta, valor //Mandamos al puerto A, lo almacenado en valor
	rjmp inic //Saltamos al tag inic para hacer un loop infinito

targetSiete:
	ldi valor,$27  //le asignamos la representacion del 7 en display en hex.
	out porta, valor //Mandamos al puerto A, lo almacenado en valor
	rjmp inic //Saltamos al tag inic para hacer un loop infinito

targetSeis:
	ldi valor,$7d  //le asignamos la representacion del 6 en display en hex.
	out porta, valor //Mandamos al puerto A, lo almacenado en valor
	rjmp inic //Saltamos al tag inic para hacer un loop infinito

targetCinco:
	ldi valor,$6d  //le asignamos la representacion del 5 en display en hex.
	out porta, valor //Mandamos al puerto A, lo almacenado en valor
	rjmp inic //Saltamos al tag inic para hacer un loop infinito

targetCuatro:
	ldi valor,$66  //le asignamos la representacion del 4 en display en hex.
	out porta, valor //Mandamos al puerto A, lo almacenado en valor
	rjmp inic //Saltamos al tag inic para hacer un loop infinito

targetTres:
	ldi valor,$4f  //le asignamos la representacion del 3 en display en hex.
	out porta, valor //Mandamos al puerto A, lo almacenado en valor
	rjmp inic //Saltamos al tag inic para hacer un loop infinito

targetDos:
	ldi valor,$5b  //le asignamos la representacion del 2 en display en hex.
	out porta, valor //Mandamos al puerto A, lo almacenado en valor
	rjmp inic //Saltamos al tag inic para hacer un loop infinito

targetUno:
	ldi valor,$06  //le asignamos la representacion del 1 en display en hex.
	out porta, valor //Mandamos al puerto A, lo almacenado en valor
	rjmp inic //Saltamos al tag inic para hacer un loop infinito

targetCero:
	ldi valor,$3f  //le asignamos la representacion del 0 en display en hex.
	out porta, valor //Mandamos al puerto A, lo almacenado en valor
	rjmp inic //Saltamos al tag inic para hacer un loop infinito

