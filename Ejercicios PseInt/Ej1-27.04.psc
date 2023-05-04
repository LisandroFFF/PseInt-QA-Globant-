//Realizar un programa que rellene un vector con 5 valores ingresados por el usuario y los
//muestre por pantalla.

Algoritmo uno
	
	Definir vector,num,i como Numero
	Dimension vector[5]
	
	Para i = 0 Hasta 4 Hacer
		Escribir "Ingrese un numero: (",(i+1),"/5)"
		Leer num
		vector[i] = num
	FinPara
	
	Para i = 0 Hasta 4 Hacer
		Escribir "El numero ingresado en la ubicacion ",(i+1)," es ", vector[i]
	FinPara
	
FinAlgoritmo
