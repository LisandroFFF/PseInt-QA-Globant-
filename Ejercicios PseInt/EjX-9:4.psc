Algoritmo sin_titulo
	Definir practicas, problemas, teoricas Como Real;
	Definir nombre Como Caracter;
	Definir notasValidas Como Logico
	
	nombre <- "a"
	
	Mientras nombre <> "" Hacer
		Escribir "Bienvenido al sistema de notas online";
		Escribir "Por favor ingrese su nombre: ";
		Leer nombre;
		
		Escribir "Por favor ingrese sus tres notas en el orden: 1-total practicas, 2- total problemas, 3- total teoricas "
		Leer practicas, problemas, teoricas;
		
		notasValidas <- (practicas <= 10 Y practicas >= 1) Y (problemas <= 10 Y problemas >= 1) Y (teoricas <= 10 Y teoricas >= 1)
		
		Si notasValidas Entonces
			Escribir "Su nota final de cursada es de ", practicas*0.10 + problemas*0.5 + teoricas*0.4
		SiNo
			Escribir "Algo ingresaste mal papá"
		FinSi
	FinMientras
FinAlgoritmo
