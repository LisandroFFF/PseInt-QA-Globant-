Algoritmo dosIntegrador
	Definir num, contador como Numero
	
	Escribir "Por favor, ingrese un n�mero entero:"
	Leer num
	
	contador <- 1
	
	Mientras num > 10 Hacer
		num <- num/10
		contador <- contador + 1
	FinMientras
	
	Escribir "El n�mero tiene " contador " cifras"
	
	
FinAlgoritmo
