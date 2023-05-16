//Se debe crear una matriz con las siguientes palabras como se muestra a continuación. Luego de
//eso debemos acomodar las palabras para que la primera letra 'R' de cada una quede en la
//	posición 5, alineándose.

Algoritmo ejercicioCooperativoGuia5
	
	Definir matriz, resp Como Caracter
	Definir fila, posicionR Como Entero
	
	Dimension matriz[9,12]
	
	inicializarMatriz(matriz)
	imprimirMatriz(matriz)
	Escribir ""
	agregarPalabra(matriz)
	imprimirMatriz(matriz)
	
	Hacer
		Escribir "ingrese la fila en donde va a buscar la R"
		Leer fila
		posicionR <- buscarR(matriz, fila)
		acomodarPalabra(matriz, fila, posicionR)
		imprimirMatriz(matriz)
		Escribir "desea reemplazar otra fila"
		Leer resp
	Mientras Que resp<>"n"
	
FinAlgoritmo

//--------------------------------------------------//
SubProceso inicializarMatriz(matriz)
	
	Definir i, j Como Entero
	
	para i <-0 Hasta 8 Hacer
		para j <- 0 hasta 11 Hacer
			matriz[i, j] <- "*"
		FinPara
	FinPara	
	
FinSubProceso
//--------------------------------------------------//
SubProceso imprimirMatriz(matriz)
	
	Definir i, j Como Entero
	
	para i <-0 Hasta 8 Hacer
		para j <- 0 hasta 11 Hacer
			Escribir "" matriz[i, j] " " Sin Saltar
		FinPara
		Escribir ""
	FinPara
	
FinSubProceso
//--------------------------------------------------//
SubProceso agregarPalabra(matriz)
	Definir i, j, k como entero
	
	para i <- 0 hasta 8 Hacer
		
			segun i Hacer
				0:
					para j = 0 Hasta (Longitud("VECTOR")-1) Hacer
						matriz[i,j] <- Subcadena("VECTOR", j, j)
					FinPara
				1:
					para j = 0 Hasta (Longitud("MATRIX")-1) Hacer
						matriz[i,j] <- Subcadena("MATRIX", j, j)
					FinPara
				2:
					para j = 0 Hasta (Longitud("PROGRAMA")-1) Hacer
						matriz[i,j] <- Subcadena("PROGRAMA", j, j)
					FinPara
				3:
					para j = 0 Hasta (Longitud("SUBPROGRAMA")-1) Hacer
						matriz[i,j] <- Subcadena("SUBPROGRAMA", j, j)
					FinPara
				4:
					para j = 0 Hasta (Longitud("SUBPROCESO")-1) Hacer
						matriz[i,j] <- Subcadena("SUBPROCESO", j, j)
					FinPara
				5:
					para j = 0 Hasta (Longitud("VARIABLE")-1) Hacer
						matriz[i,j] <- Subcadena("VARIABLE", j, j)
					FinPara
				6:
					para j = 0 Hasta (Longitud("ENTERO")-1) Hacer
						matriz[i,j] <- Subcadena("ENTERO", j, j)
					FinPara
				7:
					para j = 0 Hasta (Longitud("PARA")-1) Hacer
						matriz[i,j] <- Subcadena("PARA", j, j)
					FinPara
				8:
					para j = 0 Hasta (Longitud("MIENTRAS")-1) Hacer
						matriz[i,j] <- Subcadena("MIENTRAS", j, j)
					FinPara
			FinSegun
	FinPara
	
FinSubProceso

//--------------------------------------------------//
Funcion resultado <- buscarR(matriz, fila)
	
	Definir j, resultado Como Entero
	Definir bandera Como Logico
	
	bandera=Falso
	para j =0 Hasta 8 Hacer
		si matriz[fila, j]=="R" y bandera=Falso Entonces
			resultado=j
			bandera=Verdadero
		FinSi
	FinPara
	Escribir "posicioR: " resultado
	
	
FinFuncion
//--------------------------------------------------//
SubProceso acomodarPalabra(matriz, fila, posicionR)
	
	Definir j, k, aux Como Entero
	
	aux=0
	si posicionR<>5 Entonces
		Mientras posicionR<5 Hacer
			para j <- 11 Hasta 1 Con Paso -1 Hacer
				matriz[fila,j] <- matriz[fila, j-1]
			FinPara
			posicionR=posicionR+1
			aux=aux+1
			
		FinMientras
		para k = 0 Hasta aux-1 Hacer
			matriz[fila,k] <- "*"
		FinPara
	FinSi


	
FinSubProceso
//--------------------------------------------------//

		