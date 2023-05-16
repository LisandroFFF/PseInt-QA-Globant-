Algoritmo EjercicioIntegrador
	
	Definir matriz, palabra Como caracter
	Definir fila, columna, posc,i como entero
	posc = 0
	fila = 9
	columna=12
	i=0
	Dimension matriz(fila,columna)
	
	IniciarMatriz(matriz,fila,columna)
	ImprimirMatriz(matriz,fila,columna)
	Escribir "Ingresa las palabras que quieres que reorganice. Recuerda que estoy reorganizando las letras R"
	Para i <- 0 Hasta 8 Hacer
		Leer palabra
		palabra = Mayusculas(palabra)
		agregarPalabra(matriz,i,palabra)
		ImprimirMatriz(matriz, fila, columna)
	FinPara

FinAlgoritmo

SubProceso IniciarMatriz (M,i,j)
	Para i=0 hasta i-1 Hacer
		para j=0 hasta j-1 Hacer
			M[i,j]="*"
		FinPara
		Escribir ""
	FinPara
FinSubProceso

SubProceso ImprimirMatriz (M,i,j)
	Para i=0 hasta i-1 Hacer
		Para j = 0 hasta j-1 Hacer
			Escribir sin Saltar " ", M[i,j], " "
		FinPara
		Escribir ""
	FinPara
FinSubProceso

SubProceso agregarPalabra(matriz,fila,palabra)
	Definir i Como Entero
	Para i = 0 Hasta Longitud(palabra)-1 Hacer
		matriz(fila,i) = Subcadena(palabra,i,i)
	FinPara
FinSubProceso