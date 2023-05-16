Algoritmo EjercicioIntegrador
	
	Definir matriz, palabra Como caracter
	Definir fila, columna, posc,i,r como entero
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
	

	//buscarR(matriz,fila,columna,r)
	
	
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

//Subproceso buscarR(matriz,fila,n,r Por Referencia)
//	Definir i, j como entero
//	para j=0 hasta n-1
//		Si matriz(fila,j)="r" o matriz(fila,j)="R"
//			r=j
//			j=n+1
//		FinSi
//	FinPara
//FinSubProceso
//
//SubProceso acomodarPalabra(matriz)
//	
//	Definir i,j,espaciosPorPalabra como Numero
//	Definir auxiliarEspacios como Cadena
//	Dimension espaciosPorPalabra(9)
//
//	//espaciosPorPalabra = 0
//	
//	Para i = 0 Hasta 8 Hacer
//		espaciosPorPalabra = r
//	FinPara
//	
//	Para j = 0 Hasta espaciosPorPalabra(i) Hacer
//		auxiliarEspacios = Concatenar(auxiliarEspacios," ") 
//	FinPara
//	
//	matriz(i,j)= auxiliarEspacios + matriz(i,j)
//	
//FinSubProceso

//Para i = 0 Hasta 8 Hacer
//	auxiliarEspacios = ""
//	Para j = 0 Hasta espaciosPorPalabra(i)
//		auxiliarEspacios = Concatenar(auxiliarEspacios," ") 
//	FinPara
//	matriz(i,j)= auxiliarEspacios + matriz(i,j)
//FinPara
