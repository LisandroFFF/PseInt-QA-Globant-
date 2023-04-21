//Realizar una función que permita obtener el término n de la sucesión de Fibonacci. La
//sucesión de Fibonacci es la sucesión de los siguientes números:
//	1, 1, 2, 3, 5, 8, 13, 21, 34, ...
//	1,1,2,3,5,8,13,21,34,55,89,144,233,377,610,987,1597
//	a,b,c,d
Algoritmo doce
	
	Definir num Como Entero
	Escribir "Por favor, ingrese un número"
	Leer num
	Escribir fibo(num)
FinAlgoritmo

Funcion b <- fibo(num)
	Definir a, b, c Como Entero
	a <- 0
	b <- 0
	c <- 1
	
	// Resuelto a revisar
	Para i <- 0 Hasta num-2 Hacer
		a <- b
		b <- c
		c <- a + b
		Escribir Sin Saltar b," "
	FinPara
	
	// A revisar, crear variable "d" si corresponde
//	Para i <- 0 Hasta num Hacer
//		a <- b
//		b <- c
// 		c <- a + b
//		d <- b + c
//		
//		Escribir Sin Saltar d," "
//	FinPara
	
FinFuncion
	