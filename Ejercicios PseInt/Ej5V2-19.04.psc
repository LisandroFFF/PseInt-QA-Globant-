Algoritmo cincoV2
	
	Definir num Como Entero
	Definir primo Como Logico
	
	Escribir "Ingrese un número"
	Leer num
	
	primo <- prim(num)
	Escribir "¿Es primo? " primo
	
FinAlgoritmo

Funcion r = prim(num)
	Definir r Como Logico
	Definir i Como Entero
	
	Para i <- 2 hasta 7 Hacer
		si num = 1 o num = 0 Entonces
			r <- falso
		SiNo
			si num mod i = 0 y i <> num
				i <- 10
				r <- Falso
			SiNo
				r <- Verdadero
			FinSi
		FinSi
	FinPara
FinFuncion