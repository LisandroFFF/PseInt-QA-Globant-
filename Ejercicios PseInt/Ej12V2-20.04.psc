Algoritmo fibonacci_12
	
	Definir num , respuesta Como Entero
	
	Escribir "Ingrese un número"
	Leer num
	
	respuesta <- fibonacci(num)
	
	Escribir respuesta
	
FinAlgoritmo

Funcion retorno <- fibonacci(n)
	
	Definir retorno , c , a , b , i  Como Entero
	
	a <- 0
	b <- 1
	
	Para i <- 1 hasta n Hacer
		
		Escribir sin saltar a , " "
		c <- a+b
		a <- b
		b <- c
		
	FinPara
	
FinFuncion