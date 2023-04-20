//Diseñar una función que reciba un numero en forma de cadena y lo devuelva como numero
//entero. El programa podrá recibir números de hasta 3 dígitos. Nota: no poner números con
//decimales ni letras. Ejemplo: ingresando "100"(carácter) debe convertirse en 100(entero).


Algoritmo siete
	
	Definir num Como Cadena
	Definir var Como Numero
	
	Hacer
	Escribir "Por favor, ingrese un número: "
	Leer num
	Hasta Que Longitud(num) <= 3
	
	Escribir Concatenar(num," es una cadena, lo demuestro al Concatenar con otra cadena")

	var <- devuelve(num)
	Escribir "El número ingresado es: " var
FinAlgoritmo

Funcion rta <- devuelve(num)
	Definir rta Como Numero
	rta <- ConvertirANumero(num)
FinFuncion