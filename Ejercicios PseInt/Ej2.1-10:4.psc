Algoritmo EjDos
	Definir numUsuario, numMax, numMin, i, suma como Entero
	
//numMax <- 0
//numMin <- 0
//i <- 0
//suma <- 0
	
	Repetir
		Escribir "Por favor, ingrese un número entero: "
		Leer numUsuario
		Si numUsuario <> 0 Entonces
			i <- i+1
			suma <- suma + numUsuario
			Si numMax < numUsuario
				numMax <- numUsuario
			FinSi
			Si numMin > numUsuario
				numMin <- numUsuario
			FinSi
		FinSi
	Hasta Que numUsuario == 0
	
	Escribir "El número Máximo ingresado es " numMax ", el número Mínimo ingresado es " numMin 
	Escribir "El promedio de todos los números ingresados es " suma/i
FinAlgoritmo