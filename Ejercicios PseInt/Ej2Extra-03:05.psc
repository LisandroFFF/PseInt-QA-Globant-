//Realizar un programa que rellene un vector de tamaño N, con valores ingresados por el
//usuario y muestre por pantalla el promedio de la suma de todos los valores ingresados.

Algoritmo dosExtra
	
	Definir cantidadNumeros,vector como Numero
	Escribir "Ingrese la cantidad de numeros que desea agregar para sacar el promedio."
	Leer cantidadNumeros
	
	Dimension vector[cantidadNumeros]
	
	generarArreglo(vector,cantidadNumeros)
	Escribir mostrarArreglo(vector,cantidadNumeros)
	
FinAlgoritmo

SubProceso generarArreglo(vector Por Referencia,cantidadNumeros Por Referencia)
	Definir i, numerosIngresados Como Numero
	
	Para i = 0 Hasta cantidadNumeros-1 Hacer
		Escribir "Ingrese un numero (",i+1,"/",cantidadNumeros,")"
		Leer numerosIngresados
		vector[i]=numerosIngresados
	FinPara
	
FinSubProceso


Funcion promedio = mostrarArreglo(vector Por Referencia,cantidadNumeros Por Referencia)
	Definir i,sumatoria, promedio Como Numero
	sumatoria = 0
	Para i = 0 Hasta cantidadNumeros-1 Hacer
		sumatoria = sumatoria + vector[i]
	FinPara
	
	promedio = sumatoria/cantidadNumeros
FinFuncion
