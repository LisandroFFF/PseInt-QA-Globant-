Algoritmo ejercicio_2
	Definir num, i, j Como Entero
	Definir char Como Caracter
	Escribir "Ingresa un numero entero positivo : "
	Leer num
	char <- ""
	Para i<-1 Hasta num Con Paso 1 Hacer
		Para j<-1 Hasta num Con Paso 1 Hacer
			Si i == 1 o i == num Entonces
				char <- Concatenar(char, "*")
			SiNo
				Si j == 1 o j == num Entonces
					char <- Concatenar(char, "*")
				SiNo
					char <- Concatenar(char, " ")
				FinSi
			FinSi
		Fin Para
		Escribir char
		char <- ""
	Fin Para
FinAlgoritmo
