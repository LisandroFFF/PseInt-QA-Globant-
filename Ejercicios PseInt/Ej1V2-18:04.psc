//Realizar una funci�n que calcule la suma de dos n�meros. 
//En el algoritmo principal le pediremos al usuario los dos n�meros para pas�rselos a la funci�n. Despu�s la funci�n
//		calcular� la suma y lo devolver� para imprimirlo en el algoritmo.

Algoritmo uno
	Definir num1, num2 como Numero
	
	Escribir "Por favor, ingrese dos n�meros enteros:"
	Leer num1, num2
	Escribir "La suma de los dos n�meros enteros ingesados es " suma(num1, num2)

	
FinAlgoritmo

Funcion rta <- suma(num1, num2)
	Definir rta Como Numero
	rta <- num1 + num2
FinFuncion
	