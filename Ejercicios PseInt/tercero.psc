Algoritmo tercero
	Definir bebida, tipo, leche como Entero
	Escribir "Por favor, ingrese 1 si quiere t� o 2 si desea caf�"
	Leer bebida
	
	Si bebida == 1 Entonces
		Escribir "Ha seleccionado t�"
	SiNo
		Escribir "Ha seleccionado caf�, escriba 1 si lo prefiere solo o 2 si lo quiere cortado"
		Leer tipo
		Si tipo == 1 Entonces
			Escribir "Ha seleccionado caf� solo"
		Sino
			Escribir "Desea leche vegetal? Presione 1 si as� lo desea o pulse cualquier numero para seleccionar leche de vaca"
			Leer leche
			Si leche ==1 Entonces
				Escribir "Ha seleccionado caf� cortado con leche vegetal"
			SiNo
				Escribir "Ha seleccionado caf� cortado con leche de vaca"
			FinSi
		FinSi
	FinSi
FinAlgoritmo
