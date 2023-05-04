//Crear una función que devuelva la diferencia que hay entre el valor más chico de un arreglo y
//su valor más grande.

Algoritmo seisExtra
	
	Definir arreglo,cantidadNumeros,i como Numero
	Escribir "Ingrese el tamaño del vector"
	Leer cantidadNumeros
	Dimension arreglo[cantidadNumeros]
	
	Para i = 0 Hasta cantidadNumeros-1 Hacer
		arreglo[i]=Aleatorio(1,100)
	FinPara
	
	Escribir "La diferencia entre el mayor numero del arreglo y el menor es: " diferenciaArreglo(arreglo,cantidadNumeros)
	
FinAlgoritmo

Funcion diferencia = diferenciaArreglo(arreglo,cantidadNumeros)
	Definir i,mayorNumero,menorNumero,diferencia Como Numero
	
	mayorNumero = 0
	menorNumero = 100
	diferencia = 0
	
	Para i = 0 Hasta cantidadNumeros-1 Hacer
		Si arreglo[i] > mayorNumero Entonces
			mayorNumero = arreglo[i]
		FinSi
		Si arreglo[i] < menorNumero Entonces
			menorNumero = arreglo[i]
		FinSi
	FinPara
	
	diferencia = mayorNumero - menorNumero
FinFuncion
