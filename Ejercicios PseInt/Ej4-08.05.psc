//Rellenar en un subproceso una matriz cuadrada con números aleatorios salvo en la diagonal
//principal, la cual debe rellenarse con ceros. Una vez llena la matriz debe generar otro
//subproceso para imprimir la matriz.

Algoritmo cuatro
	
	Definir matriz,n Como Numero

	Escribir "Ingrese la cardinalidadd de su matriz: "
	Leer n
	Dimension matriz(n,n)
	
	llenarMatriz(matriz,n)
	mostrarMatriz(matriz,n)
	
FinAlgoritmo

SubProceso llenarMatriz(matriz,n)
	Definir i,j como Numero
	
	Para i = 0 Hasta n-1
		Para j = 0 Hasta n-1
			Si i == j Entonces
				matriz(i,j) = 0
			SiNo
				matriz(i,j) = Aleatorio(1,10)
			FinSi
		FinPara
	FinPara
FinSubProceso

SubProceso mostrarMatriz(matriz,n)
	Definir i,j como Numero
	
	Escribir ""
	Escribir "La matriz obtenida es: "
	Escribir ""
	Para i = 0 Hasta n-1
		Para j = 0 Hasta n-1
			Si Trunc(matriz(i,j)/10) == 0
				Escribir Sin Saltar " " matriz(i,j) "  "
			SiNo
				Escribir Sin Saltar matriz(i,j) " "
			FinSi
		FinPara
		Escribir ""
	FinPara
	Escribir ""
FinSubProceso