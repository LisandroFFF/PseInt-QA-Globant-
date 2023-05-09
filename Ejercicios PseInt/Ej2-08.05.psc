//Escribir un programa que realice la búsqueda lineal de un número entero ingresado por el
//usuario en una matriz de 5x5, llena de números aleatorios y devuelva por pantalla las
//coordenadas donde se encuentra el valor, es decir en que fila y columna se encuentra. En
//caso de no encontrar el valor dentro de la matriz se debe mostrar un mensaje.

Algoritmo dos
	
	Definir matriz, i, j,numeroUsuario como Numero
	Dimension matriz(5,5)
	
	Escribir "Ingrese el numero que desea buscar en la matriz: "
	Leer numeroUsuario
	
	Para i = 0 Hasta 4
		Para j = 0 Hasta 4
			matriz(i,j)=Aleatorio(1,10)
		FinPara
	FinPara
	
	imprimirMatriz(matriz)
	buscarNumero(matriz,numeroUsuario)
	
FinAlgoritmo

SubProceso imprimirMatriz(matriz)
	Definir i, j como Numero
	
	Escribir "La matriz obtenida es: "
	Escribir ""
	Para i = 0 Hasta 4
		Para j = 0 Hasta 4
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

SubProceso buscarNumero(matriz,numeroUsuario)
	Definir i, j,contador como Numero
	contador = 0
	
	Escribir Sin Saltar "El numero ingresado (",numeroUsuario,")"
	Para i = 0 Hasta 4
		Para j = 0 Hasta 4
			Si numeroUsuario == matriz(i,j) Entonces
				Si contador == 0
				contador = contador + 1
				Escribir Sin Saltar " se encuentra en la posicion: (",i,",",j,")"
				SiNo
				Escribir Sin Saltar ",(",i,",",j,")"
				FinSi
			FinSi
		FinPara
	FinPara
	Escribir ""
	
	Si contador < 1 Entonces
		Escribir "no se encuentra dentro de la matriz"
	FinSi
FinSubProceso
	