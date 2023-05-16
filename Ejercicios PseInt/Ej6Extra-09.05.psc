//6. Realizar un programa que permita visualizar el resultado del producto de una matriz de
//enteros de 3x3 por un vector de 3 elementos. Los valores de la matriz y el vector pueden
//inicializarse evitando así el ingreso de datos por teclado. Para conocer más acerca de cómo se
//realiza la multiplicación entre matrices consultar el siguiente link:

Algoritmo seisExtra
	
	Definir vectorUno, matrizUno, vectorFinal,i,j Como Numero
	
	Dimension vectorUno(3),matrizUno(3,3),vectorFinal(3)
	
	Para i = 0 Hasta 2
		vectorUno(i) = Aleatorio(1,9)
		Para j = 0 Hasta 2
			matrizUno(i,j) = Aleatorio(1,9)
		FinPara
	FinPara
	
	multiplicar(vectorUno, matrizUno, vectorFinal)
	mostrarVector(vectorUno)
	mostrarMatriz(matrizUno)
	mostrarVector(vectorFinal)
FinAlgoritmo

SubProceso multiplicar(vectorUno, matrizUno, vectorFinal)
	Definir i,j,k,auxiliar como Numero
	
	Para i = 0 Hasta 2
		Para j = 0 Hasta 2
			auxiliar = 0
				auxiliar = auxiliar + vectorUno(i) * matrizUno(j,i)
		FinPara
		vectorFinal(i) = auxiliar
	FinPara
	
FinSubProceso

SubProceso mostrarVector(vectorFinal)
	Definir i como Numero
	
	Escribir ""
	Escribir "La matriz obtenida es: "
	Escribir ""
	Para i = 0 Hasta 2
			Escribir Sin Saltar vectorFinal(i) "  "
	FinPara
FinSubProceso

SubProceso mostrarMatriz(matrizUno)
	Definir i,j como Numero
	
	Escribir ""
	Escribir "La matriz obtenida es: "
	Escribir ""
	Para i = 0 Hasta 2
		Para j = 0 Hasta 2
			Escribir Sin Saltar matrizUno(i,j) "  "
		FinPara
		Escribir ""
	FinPara
	Escribir ""
FinSubProceso