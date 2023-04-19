Algoritmo tornillos
	Definir conDefectos, sinDefectos Como Entero
	Escribir "Por favor, ingrese la cantidad de tornillos defectuosos producidos:"
	Leer conDefectos
	Escribir "Por favor, ingrese la cantidad de tornillos sin defectos producidos:"
	Leer sinDefectos
	
	Si conDefectos >= 200 Entonces
		Si sinDefectos <= 10000 Entonces
			Escribir "Grado 5"
		SiNo
			Escribir "Grado 7"
		FinSi
	SiNo
		Si sinDefectos <= 10000 Entonces
			Escribir "Grado 6"
		SiNo
			Escribir "Grado 8"
		FinSi
	FinSi
FinAlgoritmo
