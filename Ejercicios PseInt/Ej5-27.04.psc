//Realizar un programa que rellene un vector de tama�o N, con valores ingresados por el
//usuario. A continuaci�n, se deber� crear una funci�n que reciba el vector y devuelva el valor
//m�s grande del vector.

Algoritmo cinco
	Definir vector,num,numCantidad,i,resultado como Numero
	Escribir "Por favor, ingrese la cantidad de numeros para cargar al programa"
	Leer numCantidad
	Dimension vector[numCantidad]
	Escribir "Por favor, ingrese los " numCantidad " numeros para iniciar el programa"
	
	Para i = 0 Hasta numCantidad-1 Hacer
		Leer num
		vector[i]=num
	FinPara
	resultado = mayorValor(vector,numCantidad)
	Escribir "El mayor numero de los ingresados es: ", resultado
	
FinAlgoritmo

Funcion retorno = mayorValor(vector,numCantidad)
	Definir retorno, i Como Numero
	retorno = 0
	
	Para i = 0 Hasta numCantidad-1 Hacer
		Si retorno < vector[i] Entonces
			retorno = vector[i]
		FinSi
	FinPara
FinFuncion
	