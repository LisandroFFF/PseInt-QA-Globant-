//Crear un vector que contenga 100 notas de 100 supuestos estudiantes, con valores entre 0 y
//20 generadas aleatoriamente mediante el uso de la función azar() o aleatorio() de PseInt.
//Luego, de acuerdo a las notas contenidas, el programa debe indicar cuántos estudiantes son:
//	a) Deficientes 0-5
//	b) Regulares 6-10
//	c) Buenos 11-15
//	d) Excelentes 16-20

Algoritmo cuatroExtra
	Definir vectorNotas, i como Numero
	Definir Deficientes, Regulares, Buenos, Excelentes Como Numero
	Dimension vectorNotas[100]
	
	Deficientes = 0
	Regulares = 0
	Buenos = 0
	Excelentes = 0
	
	
	Para i = 0 Hasta 99 Hacer
		vectorNotas[i]=Aleatorio(0,20)
		Si vectorNotas[i] < 6 Entonces
			Deficientes = Deficientes + 1
		FinSi
		Si vectorNotas[i]>5 Y vectorNotas[i]<11 Entonces
			Regulares = Regulares + 1
		FinSi
		
		Si vectorNotas[i]>15 Entonces
			Excelentes = Excelentes + 1
		FinSi
		Si vectorNotas[i]>10 Y vectorNotas[i]<16 Entonces
			Buenos = Buenos + 1
		FinSi
	FinPara
	
	Escribir "La cantidad de notas Deficientes es: " Deficientes
	Escribir "La cantidad de notas Regulares es: " Regulares
	Escribir "La cantidad de notas Buenas es: " Buenos
	Escribir "La cantidad de notas Excelentes es: " Excelentes
	
FinAlgoritmo
