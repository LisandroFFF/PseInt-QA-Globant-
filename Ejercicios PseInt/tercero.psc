Algoritmo tercero
	Definir bebida, tipo, leche como Entero
	Escribir "Por favor, ingrese 1 si quiere té o 2 si desea café"
	Leer bebida
	
	Si bebida == 1 Entonces
		Escribir "Ha seleccionado té"
	SiNo
		Escribir "Ha seleccionado café, escriba 1 si lo prefiere solo o 2 si lo quiere cortado"
		Leer tipo
		Si tipo == 1 Entonces
			Escribir "Ha seleccionado café solo"
		Sino
			Escribir "Desea leche vegetal? Presione 1 si así lo desea o pulse cualquier numero para seleccionar leche de vaca"
			Leer leche
			Si leche ==1 Entonces
				Escribir "Ha seleccionado café cortado con leche vegetal"
			SiNo
				Escribir "Ha seleccionado café cortado con leche de vaca"
			FinSi
		FinSi
	FinSi
FinAlgoritmo
