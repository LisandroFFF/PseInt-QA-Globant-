//Realizar un programa que lea 5 números (comprendidos entre 1 y 20) e imprima el número
//ingresado seguido de tantos asteriscos como indique su valor. Por ejemplo:
//	5 *****
//	3 ***
//	11 ***********
//	2 **
//	9 *********

Algoritmo unoIntegrador
	
	Definir i, contador, num como Numero
	Definir ac1, ac2, ac3, ac4, ac5 Como Caracter
	
	//Y (num > 0 Y num <21)
	contador <- 0
	
	Hacer
		Escribir "Por favor, ingrese un número del 1 al 20: "
		Leer num
		Mientras num < 1 O num > 20
			Escribir "Por favor, reingrese un número del 1 al 20: "
			Leer num
		FinMientras
		
		contador <- contador + 1
		
		Segun contador Hacer
			1:
				Para i<-1 Hasta num Hacer
					Si i == 1 Entonces
						ac1<- ConvertirATexto(num)+" *"
					SiNo
						ac1<- ac1 + "*"
					FinSi
				FinPara
			2:
				Para i<-1 Hasta num Hacer
					Si i == 1 Entonces
						ac2<- ConvertirATexto(num)+" *"
					SiNo
						ac2<- ac2 + "*"
					FinSi
				FinPara
			3:
				Para i<-1 Hasta num Hacer
					Si i == 1 Entonces
						ac3<- ConvertirATexto(num)+" *"
					SiNo
						ac3<- ac3 + "*"
					FinSi
				FinPara
			4:
				Para i<-1 Hasta num Hacer
					Si i == 1 Entonces
						ac4<- ConvertirATexto(num)+" *"
					SiNo
						ac4<- ac4 + "*"
					FinSi
				FinPara
			De Otro Modo:
				Para i<-1 Hasta num Hacer
					Si i == 1 Entonces
						ac5<- ConvertirATexto(num)+" *"
					SiNo
						ac5<- ac5 + "*"
					FinSi
				FinPara
		Fin Segun
	Hasta Que contador >= 5
	Escribir ac1
	Escribir ac2
	Escribir ac3
	Escribir ac4
	Escribir ac5
	
FinAlgoritmo