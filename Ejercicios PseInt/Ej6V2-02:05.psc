Algoritmo Ej6_ReemplazarMalena
	Definir vector Como Cadena
	Dimension vector[20]
	llenarArreglo(vector, 20)
	reemplazar(vector, 20)
FinAlgoritmo

SubProceso llenarArreglo(array, size)
	Definir i Como Entero
	Definir frase Como Cadena
	Escribir "Ingrese la frase"
	Leer frase
	Para i = 0 Hasta size-1 Hacer
		array[i] = Subcadena(frase,i,i)
	FinPara
FinSubProceso

SubProceso reemplazar(array, size)
	Definir char Como Cadena
	Definir i, pos Como Entero
	
	Escribir "Ingrese la posicion del Indice"
	Leer pos
	Escribir "Ingrese un caracter"
	Leer char
	
	Si array[pos] = " " o array[pos] = "" Entonces
		array[pos] = char
		mostrarVector(array, size)
	SiNo
		Escribir "Posición Ocupada"
	FinSi
FinSubProceso

SubProceso mostrarVector(array, size)
	Definir i Como Entero
	Escribir "Arreglo:"
	Para i = 0 Hasta size-1 Hacer
		Escribir Sin Saltar "[" array[i] "]"
	FinPara
	Escribir ""
FinSubProceso