//Disponemos de un vector unidimensional de 20 elementos de tipo car�cter. Se pide
//desarrollar un programa que:
//	a) Pida una frase al usuario y luego ingrese la frase dentro del arreglo letra por letra.
//Ayuda: utilizar la funci�n Subcadena de PSeInt.
//	b) Una vez completado lo anterior, pedirle al usuario un car�cter cualquiera y una
//	posici�n dentro del arreglo, y el programa debe intentar ingresar el car�cter en la
//	posici�n indicada, si es que hay lugar (es decir la posici�n est� vac�a o es un espacio
//	en blanco). De ser posible debe mostrar el vector con la frase y el car�cter ingresado,
//	de lo contrario debe darle un mensaje al usuario de que esa posici�n estaba ocupada.
//Por ejemplo, suponiendo la siguiente frase y los sub�ndices del vector:

Algoritmo seis
	
	Definir fraseUsuario, fraseArreglo, letraAModificar como Cadena
	Definir i, posicionAModificar como Numero
	
	Hacer
		Escribir "Por favor, ingrese una frase de hasta 20 caracteres:"
		Leer fraseUsuario
	Hasta Que Longitud(fraseUsuario) <= 20
	
	Dimension fraseArreglo[20]
	
	Para i = 0 Hasta 19 Hacer
		fraseArreglo[i] = Subcadena(fraseUsuario,i,i)
	FinPara
	
	Escribir "Por favor, ingrese la posicion que desea modificar"
	Leer posicionAModificar
	Escribir "Por favor, ingrese el caracter que desea agregar"
	Leer letraAModificar
	
	Si fraseArreglo[posicionAModificar] == "" O fraseArreglo[i] == " " Entonces
		fraseArreglo[posicionAModificar] = letraAModificar
		Para i = 0 Hasta 19 Hacer
			Escribir Sin Saltar "[",fraseArreglo[i],"]"
		FinPara
		Escribir ""
	SiNo
		Escribir "La posicion solicitada se encuentra ocupada por el caracter " fraseArreglo[posicionAModificar]
	FinSi
FinAlgoritmo
