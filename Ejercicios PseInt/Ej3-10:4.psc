Algoritmo ejTres
	
	Definir usuario, password Como Entero
	
	Repetir
		Escribir "Por favor, ingrese su n�mero de usuario:"
		Leer usuario
		Mientras usuario <> 1024
			Escribir "Usuario incorrecto, por favor ingr�selo nuevamente:"
			Leer usuario
		FinMientras
		Escribir "Por favor, ingrese su n�mero de password:"
		Leer password
		Mientras password <> 4567
			Escribir "Usuario incorrecto, por favor ingr�selo nuevamente:"
			Leer password
		FinMientras
	Hasta Que usuario = 1024 Y password = 4567
	
	Escribir "Ha ingresado al sistema."
	
FinAlgoritmo
