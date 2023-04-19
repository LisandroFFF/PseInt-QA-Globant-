Algoritmo sin_titulo
	Definir num, num2, suma, i Como Entero
//	Escribir "Escriba un número para realizar una suma:"
//	Leer num
//	Escribir "Escriba un número para realizar una suma:"
//	Leer num2
//	suma <- num + num2
//	Escribir "La suma de los valores es: ", suma
	
	// num <- 7
	// Resultado: 1 + 2 + 3 + 4 + 5 + 6 + 7
	// num <- 10
	// Resultado: 1 + 2 + 3 + 4 + 5 + 6 + 7 + 8 + 9 + 10
	// num <- 5
	// Resultado: 1 + 2 + 3 + 4 + 5
	
	suma <- 0
	i <- 1
	Mientras i <= num Hacer
		suma <- suma + i
		i <- i + 1
	FinMientras
	
	Escribir "La suma de los primeros", num, " numeros naturales es ", suma
FinAlgoritmo
