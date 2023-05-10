//Realizar un programa que rellene de números aleatorios una matriz a través de un
//subprograma y generar otro subprograma que muestre por pantalla la matriz final.

Algoritmo unoExtra
	
	Definir matriz,n,m Como Numero
	
	Escribir "Ingrese el eje X de su matriz: "
	Leer n
	Escribir "Ingrese el eje Y de su matriz: "
	Leer m
	Dimension matriz(n,m)
	
	llenarMatriz(matriz,n,m)
	mostrarMatriz(matriz,n,m)
	
FinAlgoritmo

SubProceso llenarMatriz(matriz,n,m)
	Definir i,j como Numero
	
	Para i = 0 Hasta n-1
		Para j = 0 Hasta m-1
			matriz(i,j) = Aleatorio(1,9)
		FinPara
	FinPara
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