//Escribir un programa que procese una secuencia de caracteres ingresada por teclado y
//terminada en punto, y luego codifique la palabra o frase ingresada de la siguiente manera:
//	cada vocal se reemplaza por el carácter que se indica en la tabla y el resto de los caracteres
//	(incluyendo a las vocales acentuadas) se mantienen sin cambios.
//	
//	a e i o u
//	@ # $ % *
//	
//	Realice un subprograma que reciba una secuencia de caracteres y retorne la codificación
//	correspondiente. Utilice la estructura "según" para la transformación.
//	Por ejemplo, si el usuario ingresa: Ayer, lunes, salimos a las once y 10.
//		La salida del programa debería ser: @y#r, l*n#s, s@l$m%s @ l@s %nc# y 10.
//		NOTA: investigue el uso de la función concatenar de PSeInt para armar la palabra/frase.

Algoritmo cuatro
	Definir frase Como Cadena
	Definir avanza Como Logico
	
	Hacer
		Escribir "Por favor, ingrese una frase y añada un punto final cuando desee finalizarla"
		Leer frase
		frase <- Minusculas(frase)
		Si Subcadena(frase, Longitud(frase), Longitud(frase)) == "." Entonces
			reemplazoChar(frase)
			avanza <- Verdadero
		SiNo
			avanza <- Falso
		FinSi
	Mientras Que avanza == True
	
FinAlgoritmo

SubProceso reemplazoChar(frase)
	Definir i Como Entero
	
	
	Para i <- 0 Hasta Longitud(frase) Hacer
		Segun Subcadena(frase, i, i) Hacer
			"a":
				Escribir Sin Saltar "@"
			"e":
				Escribir Sin Saltar "#"
			"i":
				Escribir Sin Saltar "$"
			"o":
				Escribir Sin Saltar "%"
			"u":
				Escribir Sin Saltar "*"
			De Otro Modo:
				Escribir Sin Saltar Subcadena(frase, i, i)
		Fin Segun
	FinPara
	Escribir ""
	Escribir "Gracias por utilizar el programa"
FinSubProceso


	