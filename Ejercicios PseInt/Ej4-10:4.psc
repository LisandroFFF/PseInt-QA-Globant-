//Se debe realizar un programa que:
//Pida por teclado un número (entero positivo).
//Pregunte al usuario si desea introducir o no otro número.
//Repita los pasos 1o y 2o mientras que el usuario no responda n/N (no).
//Muestre por pantalla la suma de los números introducidos por el usuario.

Algoritmo ejCuatro
	Definir num, suma como Entero 
	Definir respuesta como Caracter 
	
	suma<-0
	Hacer 
		Escribir "Ingrese un número entero positivo"
		leer num
		suma<-suma+num
		Escribir "¿Desea escribir otro número? si/no"
		leer respuesta
	Mientras Que respuesta <> "no"
	Escribir "La suma de los números ingresados es: ", suma
FinAlgoritmo
