Algoritmo ejUnoGuia
	Definir i, num, numMayor como Entero
	
	Para i<-1 Hasta 5 Con Paso 1 Hacer
		Escribir "Escriba un n�mero:"
		Leer num
		Si num > numMayor Entonces
			numMayor <- num
		FinSi
	Fin Para
	
	Escribir "El n�mero mayor ingresado es: ", numMayor
FinAlgoritmo
