//Realizar un programa que rellene dos vectores al mismo tiempo, con 5 valores aleatorios y los
//muestre por pantalla.


Algoritmo unoExtra
	
	Definir cantidadValores,vectorUno, vectorDos Como Numero
	Dimension vectorUno[5]
	Dimension vectorDos[5]
	
	rellenarVector(vectorUno)
	rellenarVector(vectorDos)
	
	Escribir mostrarVector(vectorUno)
	Escribir mostrarVector(vectorDos)
	
FinAlgoritmo

SubProceso rellenarVector(vector)
	Definir i Como Numero
	
	Para i = 0 Hasta 4 Hacer
		vector[i]=Aleatorio(1,100)
	FinPara
	
FinSubProceso

Funcion retorno = mostrarVector(vector)
	Definir i Como Numero
	
	Para i = 0 Hasta 4 Hacer
		Escribir Sin Saltar "[",vector[i],"]"
	FinPara
	
FinFuncion
	