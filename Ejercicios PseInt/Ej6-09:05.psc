Algoritmo ej6
	definir matriz Como Entero
	definir tamMatriz Como Entero
	definir resultado Como Entero
	//El usuario ingresa el tamaño de la matriz que no debe superar orden igual a 10.
	Repetir
		escribir "Ingrese un tamaño entre 1 y 9 para llenar la matriz"
		leer tamMatriz
	Mientras Que tamMatriz <= 1 o tamMatriz >= 10 
	
	dimension matriz[tamMatriz,tamMatriz]
	llenar(matriz, tamMatriz)
	Escribir checkSum(matriz,tamMatriz)
	
FinAlgoritmo

//Además, el programa deberá comprobar que los números introducidos son correctos, es decir, están entre el 1 y el 9. 
funcion llenar(matriz Por Referencia, tamanio)
	definir i, j Como Entero
	definir num Como Entero
	para i = 0 hasta tamanio - 1
		para j = 0 hasta tamanio - 1
			Repetir
				escribir "Ingrese un numero para fila: " i " y columna: " j 
				leer num
			Mientras Que num < 1 o num >= 10 
			matriz[i,j] = num
		FinPara
	FinPara
FinFuncion


funcion res = checkSum(matriz,tamanio)
	Definir res Como Logico
	Definir i,j,sumNueva,sumOrig Como Entero
	sumNueva= 0
	sumOrig =0
	res = Verdadero
	//Primera linea
	Para i=0 Hasta tamanio-1
		sumOrig = sumOrig + matriz[0,i]
	FinPara
	//Chequear lineas horizontales, sumando de a una, y comparando con la original, despues reiniciando la suma
	Para i=0 Hasta tamanio-1
		Para j=0 Hasta tamanio-1 Hacer
			sumNueva = sumNueva + matriz[i,j]
		FinPara
		Si (sumNueva <> sumOrig)
			res = Falso
		FinSi
		sumNueva = 0
	FinPara
	//se chequean ahora las verticales, se suma de a una, y compara con original, despues reinicia la suma despeus de cada columna
	Para i=0 Hasta tamanio-1
		Para j=0 Hasta tamanio-1 Hacer
			sumNueva = sumNueva + matriz[j,i]
		FinPara
		Si (sumNueva <> sumOrig)
			res = Falso
		FinSi
		sumNueva = 0
	FinPara
	//Se chequea que la diagonal principal (i.i) sea su suma igual a la original, es una sola, asi que un solo para.
	Para i=0 Hasta tamanio-1
		sumNueva = sumNueva + matriz[i,i]
	FinPara
	Si (sumNueva <> sumOrig)
		res = Falso
	FinSi
	sumNueva = 0
	//Diagonal contraria. Lo mismo pero el valor de la j se define como tamanio de la matriz menos i menos 1 porque coso.
	Para i=0 Hasta tamanio-1 Hacer
		sumNueva = sumNueva + matriz[i,tamanio-i-1]
	FinPara
	Si (sumNueva <> sumOrig)
		res = Falso
	FinSi
FinFuncion