Algoritmo ej4Maxi
	Menu()
FinAlgoritmo

Funcion Menu ()
	Definir input Como Caracter
	Definir tamanio Como Entero
	Definir vectorA,vectorB,vectorC Como Entero
	Escribir 'Menu '
	Leer input;
	Escribir 'Ingrese tamanio de los vectores'
	Leer tamanio
	Dimension vectorA(tamanio)
	Dimension vectorB(tamanio)
	Dimension vectorC(tamanio)
	
	Mientras (input <> 'F')
		Segun Mayusculas(input)
			'A':
				Escribir 'Rellenando Vector A'
				llenarVector(vectorA,tamanio)
			'B':
				Escribir 'Rellenando Vector A'
				llenarVector(vectorB,tamanio)
			'C':
				Escribir 'RellenarConSuma'
				llenarVectorCConSuma(vectorA,vectorB,vectorC,tamanio)
			'D':
				Escribir 'rellenarConResta'
				llenarVectorCConResta(vectorA,vectorB,vectorC,tamanio)
			'E':
				Escribir 'Ingrese cual quiere ver A B C'
				Leer input
				Segun Mayusculas(input)
					'A': 
						escribirVector(vectorA,tamanio)
					'B':
						escribirVector(vectorB,tamanio)
					'C':
						escribirVector(vectorC,tamanio)
				FinSegun
			'F':
				input = 'F'
		FinSegun
		Si (input <> 'F')
			Escribir 'Ingrese nueva opcion'
			Leer input
		FinSi
	FinMientras
FinFuncion

funcion llenarVector(vector Por Referencia,tamanio)
	Definir i Como Entero
	Para i = 0 Hasta tamanio-1
		vector[i] = Aleatorio(-100,100)
	FinPara
FinFuncion

Funcion escribirVector(vector,tamanio)
	Definir i Como Entero
	para i=0 Hasta tamanio-1
		Escribir '[', vector[i], '],'
	FinPara
FinFuncion

Funcion llenarvectorCConSuma(vectorA,vectorB,vectorC Por Referencia, tamanio)
	Definir i Como Entero
	Para i = 0 Hasta tamanio-1 Hacer
		vectorC[i] = vectorA[i] + vectorB[i]
	FinPara
FinFuncion

Funcion llenarvectorCConResta(vectorA,vectorB,vectorC Por Referencia, tamanio)
	Definir i Como Entero
	Para i = 0 Hasta tamanio-1 Hacer
		vectorC[i] = vectorA[i] - vectorB[i]
	FinPara
FinFuncion