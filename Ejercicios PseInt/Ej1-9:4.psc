Algoritmo sin_titulo
	Definir vocal Como Caracter
	Escribir "Adivine la vocal: "
	Leer vocal
	
	Mientras vocal <> "e" O Longitud(vocal) > 1 Hacer
		Si Longitud(vocal) > 1 Entonces
			Escribir "La longitud de la cadena ingresada no puede contener más de un dígito"
		SiNo
			Escribir "Vocal incorrecta, ingrese otra: "
		FinSi
		Leer vocal
	FinMientras
	
	Escribir "Felicitaciones, adivinaste la vocal!"
FinAlgoritmo
