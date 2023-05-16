Algoritmo crucigrama
	Definir matriz, palabra, palabras Como Caracter
	Definir i, n, m, fila Como Entero
	n = 9
	m = 12
	Dimension matriz(n, m)
	Dimension palabras[9]
	palabras[0] = "VECTOR"
	palabras[1] = "MATRIX"
	palabras[2] = "PROGRAMA"
	palabras[3] = "SUBPROGRAMA"
	palabras[4] = "SUBPROCESO"
	palabras[5] = "VARIABLE"
	palabras[6] = "ENTERO"
	palabras[7] = "PARA"
	palabras[8] = "MIENTRAS"

	fila = 0
	palabra = ""
	inicializarMatriz(matriz, n, m)
	agregarPalabra(matriz, 0, palabras[0])
	agregarPalabra(matriz, 1, palabras[1])
	agregarPalabra(matriz, 2, palabras[2])
	agregarPalabra(matriz, 3, palabras[3])
	agregarPalabra(matriz, 4, palabras[4])
	agregarPalabra(matriz, 5, palabras[5])
	agregarPalabra(matriz, 6, palabras[6])
	agregarPalabra(matriz, 7, palabras[7])
	agregarPalabra(matriz, 8, palabras[8])
	Escribir "ANTES"
	imprimirMatriz(matriz, n, m)
	Escribir ""
	Escribir "DESPUÉS"
	acomodarPalabra(matriz, palabras)
	imprimirMatriz(matriz, n, m)
	
FinAlgoritmo

SubProceso inicializarMatriz(matriz, n, m)
// Debe recibir como parámetros la matriz a inicializar, la cantidad de filas y la cantidad de columnas.
// En primera instancia inicializaremos la matriz con un "*" (asterisco) en cada lugar para que la
// misma no esté vacía y no tengamos problemas.
	Definir i, j Como Entero
	Para i = 0 hasta n-1
		Para j = 0 hasta m-1
			matriz(i,j) = "*"
		FinPara
	FinPara
FinSubProceso

SubProceso imprimirMatriz(matriz, n, m)
// Debe recibir como parámetros la matriz a imprimir, la cantidad de filas y la cantidad de columnas.
// Para que veamos la matriz en la consola cuando lo necesitemos.
// Tengamos en cuenta que para que no queden pegadas las letras vamos a imprimir un espacio, la
// letra y otro espacio. Lo hacemos en imprimir para no modificar el contenido de la matriz.
	Definir i, j Como Entero
	Para i = 0 hasta n-1
		Para j = 0 hasta m-1
			Escribir " ", matriz(i,j), " " Sin Saltar
		FinPara
		Escribir ""
	FinPara
FinSubProceso

SubProceso agregarPalabra(matriz, fila, palabra)
// Se le debe indicar en los parámetros la matriz donde se va a agregar la palabra, la fila en la que se
// agregará y la propia palabra. Una vez el subprograma reciba eso debe descomponer la palabra y
// agregarla a la matriz en la posición deseada.
	Definir j, k Como Entero
	k = 0
	Para j = 0 hasta Longitud(palabra)-1
		matriz(fila,j) = Subcadena(palabra, k, k)
		k = k + 1
	FinPara
FinSubProceso

Funcion r <- buscarR(matriz, fila)
// Se le debe indicar la matriz donde se buscará la letra R y el número de fila en el que buscaremos.
// Debe comparar cada letra de la fila indicada hasta que encuentre la primera letra 'R'. Ahí debe
// devolvernos la posición de 'R'.
// Nota: cuidado! debe devolver la posición de la primera R solamente.
	Definir j, r Como Entero
	r = 0
	Para j<-0 Hasta 11 Hacer
		Si matriz(fila,j) == "R" Entonces
			r = j
			j = 11
		Fin Si
	Fin Para
FinFuncion

SubProceso acomodarPalabra(matriz, palabras)
// Se le debe indicar sólo la matriz en donde se acomodarán las palabras.
// Ahora debemos crear una lógica que nos permita mover las palabras de las filas. Recordar que
// podemos llamar a buscarR para saber cuántos espacios hay que mover las palabras.
// Una vez que las palabras se muevan hay que llenar los espacios con asteriscos nuevamente: es
// decir, si la palabra se mueve dos posiciones a la derecha hay que agregar dos asteriscos a la
	// izquierda de la fila.
	Definir i, j, k, l, r Como Entero
	k = 0
	l = 0
	Para i = 0 hasta 8
		r = buscarR(matriz, i)
		Si r <> 5 Entonces
			Para j = 5 - r hasta 11
				matriz(i,j) = Subcadena(palabras[i], k, k)
				k = k + 1
			FinPara
			Para j = 0 hasta 4 - r
				matriz(i,j) = "*"
			FinPara
			Para j = 11 hasta (5 - r) + Longitud(palabras[i]) Con Paso -1
				matriz(i,j) = "*"
			FinPara
		Fin Si
		k = 0
	FinPara
FinSubProceso
