//Una matriz mágica es una matriz cuadrada (tiene igual número de filas que de columnas) que
//tiene como propiedad especial que la suma de las filas, las columnas y las diagonales es igual.
//Por ejemplo:
//	2 7 6
//	9 5 1
//	4 3 8
//	En la matriz de ejemplo las sumas son siempre 15. Considere el problema de construir un
//	algoritmo que compruebe si una matriz de datos enteros es mágica o no, y en caso de que
//	sea mágica escribir la suma. Además, el programa deberá comprobar que los números
//	introducidos son correctos, es decir, están entre el 1 y el 9. El usuario ingresa el tamaño de la
//	matriz que no debe superar orden igual a 10.

Algoritmo seis
	
	Definir tamanoMatriz, valorIngresado,matriz, matrizTranspuesta Como Numero
	
	Hacer
		Escribir "Ingrese la cardinalidad de la matriz: "
		Leer tamanoMatriz
	Hasta Que tamanoMatriz > 0 y tamanoMatriz < 11
	
	Dimension matriz(tamanoMatriz,tamanoMatriz)
	
	
	llenarMatriz(matriz,tamanoMatriz)
	mostrarMatriz(matriz,tamanoMatriz)
	matrizTranspuesta = transponerMatriz(matriz,tamanoMatriz)
	evaluarMatriz(matrizTranspuesta,tamanoMatriz)
	
FinAlgoritmo

SubProceso llenarMatriz(matriz,tamanoMatriz)
	Definir i,j,valorIngresado Como Numero
	
	Para i = 0 Hasta tamanoMatriz-1
		Para j = 0 Hasta tamanoMatriz-1
			Hacer
				Escribir "Ingrese el valor para los subíndices (",i,",",j,"):"
				Leer valorIngresado
			Hasta Que valorIngresado > 0 y valorIngresado < 10
			matriz(i,j) = valorIngresado
		FinPara
	FinPara
FinSubProceso

Funcion transpuesta = transponerMatriz(matriz,tamanoMatriz)
	Definir transpuesta Como Numero
	Definir i,j Como Numero
	
	Dimension transpuesta(tamanoMatriz,tamanoMatriz)
	
	Para i = 0 Hasta tamanoMatriz-1
		Para j = 0 Hasta tamanoMatriz-1
			transpuesta(i,j) = matriz(j,i)
		FinPara
	FinPara
	
	///A REVISAR, NO ME DEJA USARLO EN LA FUNCION!!!
	Escribir ""
	Escribir "La matriz transpuesta obtenida es: "
	Escribir ""
	Para i = 0 Hasta tamanoMatriz-1
		Para j = 0 Hasta tamanoMatriz-1
			Escribir Sin Saltar transpuesta(i,j) "  "
		FinPara
		Escribir ""
	FinPara
	Escribir ""
FinSubProceso

SubProceso mostrarMatriz(matriz,tamanoMatriz)
	Definir i,j como Numero
	
	Escribir ""
	Escribir "La matriz obtenida es: "
	Escribir ""
	Para i = 0 Hasta tamanoMatriz-1
		Para j = 0 Hasta tamanoMatriz-1
			Escribir Sin Saltar matriz(i,j) "  "
		FinPara
		Escribir ""
	FinPara
	Escribir ""
FinSubProceso

SubProceso evaluarMatriz(matriz,tamanoMatriz)
	Definir i,j,auxiliar,auxiliarDos como Numero
	Definir check Como Logico
	
	check = Verdadero
	auxiliar = 0
	auxiliarDos = 0
	
	Para i = 0 Hasta tamanoMatriz-1
		Para j = 0 Hasta tamanoMatriz-1
			auxiliar = auxiliar + matriz(i,j)
		FinPara
	Si i== 0 Entonces
		auxiliarDos = auxiliar
	FinSi
	Si auxiliar <> auxiliarDos Entonces
		check = Falso
	FinSi
	Escribir auxiliar
	Escribir auxiliarDos
	auxiliarDos = auxiliar
	auxiliar = 0
	FinPara
	
	Escribir check
	
FinSubProceso

//SubProceso calcularLados(matriz,tamanoMatriz)
//	Definir ladoArriba, ladoAbajo, ladoIzq, ladoDer, diagonalPrincipal, diagonalSecundaria como Numero
//	ladoArriba = 0
//	ladoAbajo = 0
//	ladoIzq = 0
//	ladoDer = 0
//	diagonalPrincipal = 0
//	diagonalSecundaria = 0
//	
//	Para i = 0 Hasta tamanoMatriz-1
//		Para j = 0 Hasta tamanoMatriz-1
//			Si i == 0 Entonces
//				ladoArriba = ladoArriba + matriz(i,j)
//			FinSi
//			Si j == 0 Entonces
//				ladoIzq = ladoIzq + matriz(i,j)
//			FinSi
//			Si i == tamanoMatriz-1 Entonces
//				ladoAbajo = ladoAbajo + matriz(i,j)
//			FinSi
//			Si j == tamanoMatriz-1 Entonces
//				ladoDer = ladoDer + matriz(i,j)
//			FinSi
//			SI i == j Entonces
//				diagonalPrincipal = diagonalPrincipal + matriz(i,j)
//			FinSi
//			
//			
//		FinPara
//	FinPara	
//FinSubProceso
