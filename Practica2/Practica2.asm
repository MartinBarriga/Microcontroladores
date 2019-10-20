.include "m8535def.inc"
.def ra = r16 //Vinculamos ra con r16
.def aux = r17 //Vinculamos aux con r17
.def rc = r18 //Vinculamos rc con r18
.def rtreinta = r19 //Vinculamos rtreinta con r19
.def rsiete = r20 //Vinculamos rsiete con r20

ser aux //Llenamos aux con 1's
out ddra, aux //Asignamos el puerto a como salida
out ddrc, aux //Asignamos el puerto c como salida
out portb, aux //Asignamos el puerto b como entrada
out portd, aux //Asignamos el puerto d como entrada
ldi rtreinta, $30 //Metemos el valor $30 dentro del reg.
ldi rsiete, $07 //Metemos el valor $07 dentro del reg.

otro:
	in ra, pinb //leemos el valor del puerto b y lo metemos en ra
	subi ra, $30  //le restamos a ra el valor $30 
	cpi ra, $11 //preguntamos si el valor restante es mayor a $11, 
				//si es así, se trata de una letra y pasa a brge letra
	brge letra //Salta a la etiqueta letra

	sal1: 
		out porta, ra //Mandamos al puerto a el valor en ra
		in rc, pind //Leemos del puerto d y lo almacenamos en rc
		cpi rc, $0A //Preguntamos si rc es mayor o igual a 0A
		brge hex//En caso de haber sido mayor, lo mandamos al tag hex
		sal2: 
			add rc, rtreinta //finalmente le aumentamos $30
			out portc, rc //mandamos al puerto c , el valor en rc
			rjmp otro // saltamos al tag otro, para crear un ciclo inf.
		hex: 
			add rc, rsiete //Le sumamos 7, pues es la dif. entre $41 y $39   
			rjmp sal2
	letra: 
		subi ra, $07 //Se resta 7 a ra, pues si nos encontramos dentro de
					//esta etiqueta es porque ra ahora vale por lo menos 
					//11, y la diferencia entre 11 y 0A, que es a lo que 
					//queremos igualarlo, es de 7.
		rjmp sal1 //saltamos al tag sal1
