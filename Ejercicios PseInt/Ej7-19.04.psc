//Dise�ar una funci�n que reciba un numero en forma de cadena y lo devuelva como numero
//entero. El programa podr� recibir n�meros de hasta 3 d�gitos. Nota: no poner n�meros con
//decimales ni letras. Ejemplo: ingresando "100"(car�cter) debe convertirse en 100(entero).


Algoritmo siete
	
	Definir num Como Cadena
	Definir var Como Numero
	
	Hacer
	Escribir "Por favor, ingrese un n�mero: "
	Leer num
	Hasta Que Longitud(num) <= 3
	
	Escribir Concatenar(num," es una cadena, lo demuestro al Concatenar con otra cadena")

	var <- devuelve(num)
	Escribir "El n�mero ingresado es: " var
FinAlgoritmo

Funcion rta <- devuelve(num)
	Definir rta Como Numero
	rta <- ConvertirANumero(num)
FinFuncion