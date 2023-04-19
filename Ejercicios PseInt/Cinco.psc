Algoritmo Cinco
	Definir numUno, numDos, cambio Como Entero
	Escribir "Ingrese un numero: "
	Leer numUno
	Escribir "Ingrese otro numero: "
	Leer numDos

	cambio <- numDos
	numDos <- numUno
	numUno <- cambio
	
	Escribir "Nuevo numero uno: ", numUno
	Escribir "Nuevo numero dos: ", numDos
FinAlgoritmo
