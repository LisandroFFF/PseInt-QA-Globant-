Algoritmo ej05
	Definir matriz, palabra Como Caracter
	Dimension matriz[3,3]
	
	Escribir Sin Saltar "Ingrese una palabra de 9 caracteres: "
	leer palabra 
	validarTexto(palabra,9)
	
	llenarMatriz(palabra, matriz, 3, 3)
	mostrarMatriz(matriz, 3, 3)
FinAlgoritmo

SubProceso llenarMatriz(text, mat, m, n)
	Definir i, j, contador Como Entero
	contador = 0
	Para i = 0 hasta m-1 Hacer
		Para j = 0 hasta n-1 Hacer
			mat[i,j] = Subcadena(text,contador, contador)
			contador = contador + 1
		FinPara
	FinPara
FinSubProceso

SubProceso mostrarMatriz(mat, m, n)
	Definir i, j Como Entero
	Para i = 0 hasta m-1 Hacer
		para j = 0 Hasta  n-1 Hacer
			Escribir Sin Saltar mat[i,j] " " 
		FinPara
		Escribir ""
	FinPara
FinSubProceso

SubProceso validarTexto(text Por Referencia, largo)
	Mientras longitud(text) <> largo Hacer
		Escribir "La logitud debe ser " largo ":"
		leer text
	FinMientras
FinSubProceso