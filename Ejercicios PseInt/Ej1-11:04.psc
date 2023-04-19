Algoritmo ejUnoGuia
	Definir i, num, numMayor como Entero
	
	Para i<-1 Hasta 5 Con Paso 1 Hacer
		Escribir "Escriba un número:"
		Leer num
		Si num > numMayor Entonces
			numMayor <- num
		FinSi
	Fin Para
	
	Escribir "El número mayor ingresado es: ", numMayor
FinAlgoritmo
