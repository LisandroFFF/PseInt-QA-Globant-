//Realizar un programa que lea 10 números reales por teclado, los almacene en un arreglo y
//muestre por pantalla la suma, resta y multiplicación de todos los números ingresados al
//arreglo.

Algoritmo dos
	
	Definir vector,num,i,suma,resta,multi como Numero
	Dimension vector[10]
	
	Para i = 0 Hasta 9 Hacer
		Escribir "Ingrese un numero: (",(i+1),"/10)"
		Leer num
		vector[i] = num
	FinPara
	
	Escribir "Los 10 numeros ingresados son: "
	Para i = 0 Hasta 9 Hacer
		Escribir Sin Saltar vector[i], " "
	FinPara
	
	suma = 0
	resta = 0
	multi = 1
	
	Para i = 0 Hasta 9 Hacer
		suma = suma + vector(i)
		resta = resta - vector(i)
		multi = multi * vector(i)
	FinPara
	
	Escribir ""
	Escribir "La suma de los 10 numeros ingresados es: " suma
	Escribir "La resta de los 10 numeros ingresados es: " resta
	Escribir "La multiplicacion de los 10 numeros ingresados es: " multi
FinAlgoritmo
