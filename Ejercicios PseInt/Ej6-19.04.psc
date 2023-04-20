//Realizar una función que calcule y retorne la suma de todos los divisores del número n
//distintos de n. El valor de n debe ser ingresado por el usuario.

Algoritmo seis
	
	Definir n, var Como Entero
	Escribir "Por favor, ingrese un número:"
	Leer n
	var <- suma(n)
	Escribir "La suma de todos los divisores del número " n " distintos de ese número son: " var
	
FinAlgoritmo

Funcion rta <- suma(n)
	Definir rta, i como Numero
	Para i <- 1 Hasta n Hacer
		Si i <> n Entonces
			Si n MOD i == 0 Entonces
				rta <- rta + i
			FinSi
		FinSi
	FinPara
FinFuncion
