//Realizar una función que calcule la suma de dos números. 
//En el algoritmo principal le pediremos al usuario los dos números para pasárselos a la función. Después la función
//		calculará la suma y lo devolverá para imprimirlo en el algoritmo.

Algoritmo uno
	Definir num1, num2 como Numero
	
	Escribir "Por favor, ingrese dos números enteros:"
	Leer num1, num2
	Escribir "La suma de los dos números enteros ingesados es " suma(num1, num2)

	
FinAlgoritmo

Funcion rta <- suma(num1, num2)
	Definir rta Como Numero
	rta <- num1 + num2
FinFuncion
	