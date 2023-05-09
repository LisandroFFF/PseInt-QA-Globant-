//Realizar un programa que rellene una matriz de 3x3 con 9 valores ingresados por el usuario y
//los muestre por pantalla.

Algoritmo uno
	
	Definir matriz,i,j Como Numero
	Dimension matriz(3,3)
	
	Para i = 0 Hasta 2
		Para j = 0 Hasta 2
			Escribir "Ingrese el valor en la posicion (",i,",",j,")"
			Leer matriz(i,j)
		FinPara
	FinPara
	
	imprimirMatriz(matriz)
FinAlgoritmo

SubProceso imprimirMatriz(matriz)
	
	Definir i,j Como Numero
	Para i = 0 Hasta 2
		Para j = 0 Hasta 2
			Escribir Sin Saltar matriz(i,j) " "
		FinPara
		Escribir ""
	FinPara
FinSubProceso
