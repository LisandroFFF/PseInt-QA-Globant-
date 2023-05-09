//Dada una matriz de orden n * m (donde n y m son valores ingresados por el usuario) realizar
//un subprograma que llene la matriz de numeros aleatorios. Despues, crearemos otro
//subprograma que calcule y muestre la suma de los elementos de la matriz. Mostrar la matriz y
//los resultados por pantalla.

Algoritmo tres
	Definir matriz,n,m como Numero
	
	Escribir "Ingrese el eje X de su matriz: "
	Leer n
	Escribir "Ingrese el eje Y de su matriz: "
	Leer m
	
	Dimension matriz(n,m)
	
	llenarMatriz(matriz,n,m)
	mostrarMatriz(matriz,n,m)
	sumarNumeros(matriz,n,m)
	
FinAlgoritmo

SubProceso llenarMatriz(matriz,n,m)
	Definir i,j como Numero
	
	Para i = 0 Hasta n-1
		Para j = 0 Hasta m-1
			matriz(i,j) = Aleatorio(1,10)
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


Subproceso sumarNumeros(matriz,n,m)
	Definir i,j,suma como Numero
	suma=0
	
	Para i = 0 Hasta n-1
		Para j = 0 Hasta m-1
			suma = suma + matriz(i,j)
		FinPara
	FinPara
	
	Escribir "La suma de todos los valores de la matriz es: ", suma
FinSubProceso
	