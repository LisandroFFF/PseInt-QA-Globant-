//Crear una matriz de orden n * m (donde n y m son valores ingresados por el usuario), llenarla
//con números aleatorios entre 1 y 100 y mostrar su traspuesta.
//?????????? ?? ??????? ?????? ?
//La matriz traspuesta de una matriz A se denota por B y se obtiene cambiando sus filas por
//columnas (o viceversa).

Algoritmo dosExtra
	
	Definir matriz,n,m Como Numero
	
	Escribir "Ingrese el eje X de su matriz: "
	Leer n
	Escribir "Ingrese el eje X de su matriz: "
	Leer m
	Dimension matriz(n,m)
	
	llenarMatriz(matriz,n,m)
	mostrarMatriz(matriz,n,m)
	mostrarTraspuesta(matriz,n,m)
	
FinAlgoritmo

SubProceso llenarMatriz(matriz,n,m)
	Definir i,j como Numero
	
	Para i = 0 Hasta n-1
		Para j = 0 Hasta m-1
			matriz(i,j) = Aleatorio(10,99)
		FinPara
	FinPara
FinSubProceso

SubProceso mostrarTraspuesta(matriz,n,m)
	Definir i,j como Numero
	
	Escribir ""
	Escribir "La matriz traspuesta obtenida es: "
	Escribir ""
	Para i = 0 Hasta m-1
		Para j = 0 Hasta n-1
			Escribir Sin Saltar matriz(j,i) " "
		FinPara
		Escribir ""
	FinPara
	Escribir ""
FinSubProceso

SubProceso mostrarMatriz(matriz,n,m)
	Definir i,j como Numero
	
	Escribir ""
	Escribir "La matriz obtenida es: "
	Escribir ""
	Para i = 0 Hasta n-1
		Para j = 0 Hasta m-1
			Escribir Sin Saltar matriz(i,j) " "
		FinPara
		Escribir ""
	FinPara
	Escribir ""
FinSubProceso
