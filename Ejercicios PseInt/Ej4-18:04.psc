//Realizar un programa que pida al usuario una frase y una letra a buscar en esa frase. La
//función debe devolver la cantidad de veces que encontró la letra. Nota: recordar el uso de la
//	función Subcadena().

Algoritmo cuatro
	Definir letra, frase Como Cadena
	Escribir "Ingrese una frase"
	Leer frase
	Escribir "Ingrese una letra"
	Leer letra
	Escribir "La letra " letra " aparece " cadenaUno(letra, frase) " veces en la frase: " frase

FinAlgoritmo

Funcion rta <- cadenaUno(letra, frase)
	Definir rta, i como Numero
	rta <- 0
	Para i <- 1 Hasta (Longitud(frase)) Hacer
		Si Subcadena(frase,i,i) == letra Entonces
			rta <- rta + 1
		FinSi
	FinPara
FinFuncion


//Subcadena(cadena,x,y)