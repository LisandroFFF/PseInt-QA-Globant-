//Un docente de Programación tiene un listado de 3 notas registradas por cada uno de sus
//N estudiantes. 
//La nota final se compone de un trabajo práctico Integrador (35%),
//una Exposición (25%) 
//un Parcial (40%). 
//El docente requiere los siguientes informes claves de sus estudiantes:

Algoritmo sin_titulo
	definir nombre,nombreMayor Como Caracter
	
	definir n, i, aux Como numero
	definir notaParcial, notaExposicion, notaIntegrador Como numero
	definir notaFinal Como numero
	definir notaMayor, suma  Como numero
	definir contadorReprobados, contadorAprobados, contadorMedio como numero
	
	contadorMedio <- 0
	contadorReprobados <- 0
	contadorAprobados <- 0
	notaMayor <- 0
	suma <- 0
	aux <- 0
	//	El programa pedirá la cantidad de alumnos que tiene el docente
	escribir "Ingrese cantidad de alumnos:"
	leer n
	
	Para i<-1 Hasta n Con Paso 1 Hacer
		escribir "Ingrese nombre: "
		leer nombre
		//	y en cada alumno pedirá	las 3 notas
		escribir "Ingrese nota Parcial: "
		leer notaParcial
		Repetir

			si notaParcial <= 10 y notaParcial >= 0 entonces
				aux <- 1
			sino 
				escribir "Ingrese nota positiva menor a 10"
				leer notaParcial
			FinSi
		Mientras Que aux <> 1
		aux <- 0
		escribir "ingrese nota Exposicion:"
		leer notaExposicion	
		Repetir		
			si notaExposicion <= 10 y notaExposicion >= 0 entonces
				aux <- 1
			SiNo
				escribir "Ingrese nota positiva menor a 10"
				leer notaExposicion
			FinSi
		Mientras Que aux <> 1
		aux <- 0
		escribir "ingrese nota Integrador: "
		leer notaIntegrador
		Repetir

			si notaIntegrador <= 10 y notaIntegrador >= 0 entonces
				aux <- 1
			sino 
				escribir "Ingrese nota positiva menor a 10"
				leer notaIntegrador
			FinSi
		Mientras Que aux <> 1
		aux <- 0
	
	
		notaFinal <- 0.35*notaIntegrador + 0.25*notaExposicion + 0.4*notaParcial
		
		//	? Nota promedio final de los estudiantes que reprobaron el curso. Un estudiante
		//	reprueba el curso si tiene una nota final inferior a 6.5
		si notaFinal < 6.5 Entonces
			suma <- suma + notaFinal
			contadorReprobados <- contadorReprobados + 1
		FinSi
		//	? Porcentaje de alumnos que tienen una nota de integrador mayor a 7.5.
		si notaFinal > 7.5 Entonces
			contadorAprobados <- contadorAprobados + 1
		FinSi
		//	? La mayor nota obtenida en las exposiciones.
		si notaExposicion > notaMayor Entonces
			nombreMayor <- nombre
			notaMayor <- notaExposicion
		FinSi
		//	? Total de estudiantes que obtuvieron en el Parcial entre 4.0 y 7.5.
		si notaFinal >= 4.0 y notaFinal <= 7.5 Entonces
			contadorMedio <- contadorMedio + 1
		FinSi
		
		 
		 
		escribir "El alumno " nombre " obtuvo la nota final: " notaFinal
		
	Fin Para
	
	//	? Nota promedio final de los estudiantes que reprobaron el curso. Un estudiante
	//	reprueba el curso si tiene una nota final inferior a 6.5
	escribir "Nota promedio final de alumnos que reprobaron: "
	si contadorReprobados == 0 Entonces
		escribir "0"
	sino 
		escribir suma / contadorReprobados
	FinSi
	
	
	//	? Porcentaje de alumnos que tienen una nota de integrador mayor a 7.5.
	escribir "Porcentaje de alumnos que tienen una nota de integrador mayor a 7.5"
	escribir contadorAprobados / n * 100 "%"
	
	//	? La mayor nota obtenida en las exposiciones.
	escribir "El alumno que tiene la mayor nota es: " nombreMayor " con la nota:"
	escribir notaMayor
	
	//	? Total de estudiantes que obtuvieron en el Parcial entre 4.0 y 7.5.
	escribir "Total de estudiantes que obtuvieron en el Parcial entre 4.0 y 7.5:"
	escribir contadorMedio
	
FinAlgoritmo
