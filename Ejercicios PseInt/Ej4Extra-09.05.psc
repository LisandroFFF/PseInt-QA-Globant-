//Realizar un programa que calcule la multiplicación de dos matrices de enteros de 3x3.
//Inicialice las matrices para evitar el ingreso de datos por teclado.

Algoritmo cuatroExtra
	
	Definir matrizUno,matrizDos,matrizFinal,i,j,k,auxiliar como Numero
	
	Dimension matrizUno(3,3),matrizDos(3,3),matrizFinal(3,3)

	k = 0
	
	Para i = 0 Hasta 2
		Para j = 0 Hasta 2
			matrizUno(i,j) = Aleatorio(1,2)
			matrizDos(i,j) = Aleatorio(1,2)
		FinPara
	FinPara
	
	Para i = 0 Hasta 2
		Para j = 0 Hasta 2
			auxiliar = 0
			Para k = 0 Hasta 2
				auxiliar = auxiliar + matrizUno(i,k) * matrizDos(k,j)
			FinPara
			matrizFinal(i,j) = auxiliar
		FinPara
	FinPara
	
	mostrarMatriz(matrizUno)
	mostrarMatriz(matrizDos)
	mostrarMatriz(matrizFinal)
	
FinAlgoritmo

SubProceso mostrarMatriz(matrizFinal)
	Definir i,j como Numero
	
	Escribir ""
	Escribir "La matriz obtenida es: "
	Escribir ""
	Para i = 0 Hasta 2
		Para j = 0 Hasta 2
			Escribir Sin Saltar matrizFinal(i,j) "  "
		FinPara
		Escribir ""
	FinPara
	Escribir ""
FinSubProceso