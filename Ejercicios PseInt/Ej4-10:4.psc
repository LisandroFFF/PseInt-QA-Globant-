//Se debe realizar un programa que:
//Pida por teclado un n�mero (entero positivo).
//Pregunte al usuario si desea introducir o no otro n�mero.
//Repita los pasos 1o y 2o mientras que el usuario no responda n/N (no).
//Muestre por pantalla la suma de los n�meros introducidos por el usuario.

Algoritmo ejCuatro
	Definir num, suma como Entero 
	Definir respuesta como Caracter 
	
	suma<-0
	Hacer 
		Escribir "Ingrese un n�mero entero positivo"
		leer num
		suma<-suma+num
		Escribir "�Desea escribir otro n�mero? si/no"
		leer respuesta
	Mientras Que respuesta <> "no"
	Escribir "La suma de los n�meros ingresados es: ", suma
FinAlgoritmo
