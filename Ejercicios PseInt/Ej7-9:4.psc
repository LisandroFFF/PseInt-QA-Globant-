Algoritmo ej7
	Definir nombre Como Caracter
	Definir practica, teorica, problemas Como Real
	
	Escribir "Ingresa el nombre del alumno"
	Leer nombre
	Mientras nombre <> "" 
		Escribir "Ingrese la nota de la parte practica"
		Leer practica
		Escribir "Ingrese la nota de la parte teorica"
		Leer teorica
		Escribir "Ingrese la nota de la parte de problemas"
		leer problemas
		
		si practica  >= 0 & practica <= 10 & teorica >= 0 & teorica <= 10 & problemas >= 0 & problemas <= 10 Entonces
			notaFin <- (practica*0.1) + (teorica*0.4) + (problemas*0.5)
			Escribir "Tu nota final : ", notaFin
		SiNo
			Escribir "Ingresa nuevamente, las notas deben estar entre un parametro de 0 a 10"
		FinSi
		
		Escribir "Ingresa el nombre del alumno"
		Leer nombre
	FinMientras
	
FinAlgoritmo