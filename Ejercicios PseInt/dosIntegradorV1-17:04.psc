Algoritmo dosIntegrador
	Definir num, contador como Numero
	
	Escribir "Por favor, ingrese un número entero:"
	Leer num
	
	contador <- 1
	
	Mientras num > 10 Hacer
		num <- num/10
		contador <- contador + 1
	FinMientras
	
	Escribir "El número tiene " contador " cifras"
	
	
FinAlgoritmo
