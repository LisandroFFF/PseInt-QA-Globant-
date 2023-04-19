Algoritmo Cuatro
	Definir i, deDos, deTres, compartidos como Entero
	
	Para i<-1 Hasta 100 Con Paso 1 Hacer
		Si i MOD 2 = 0 Entonces
			deDos <- deDos + 1
		FinSi
		Si i MOD 3 = 0 Entonces
			deTres <- deTres + 1
		FinSi
		Si i MOD 3 = 0 Y i MOD 2 = 0 Entonces
			compartidos <- compartidos + 1
		FinSi
	Fin Para
	
	Escribir "La cantidad de numeros múltiplos de dos entre 1 y 100 es: ", deDos
	Escribir "La cantidad de numeros múltiplos de tres entre 1 y 100 es: ", deTres
	Escribir "La cantidad de numeros múltiplos de dos y tres entre 1 y 100 es: ", compartidos
FinAlgoritmo
