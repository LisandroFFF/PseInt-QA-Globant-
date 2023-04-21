//Realizar una función que calcule la suma de los dígitos de un número.
//Ejemplo: 25 = 2 + 5 = 7
//Nota: Para obtener el último número de un digito de 2 cifras o más debemos pensar en el
//resto de una división entre 10. Recordar el uso de la función Mod y Trunc.

Algoritmo diez
	Definir num, var Como Numero
	Escribir "Por favor, ingrese un número"
	Leer num
	var <- suma(num)
	Escribir "La suma de los dígitos del número ingresado es: ", var
	
FinAlgoritmo

Funcion rta <- suma(num)
	Definir rta, i, lon Como Entero
	lon <- Longitud(ConvertirATexto(num))

	
	Para i <- 0 Hasta lon Hacer
		rta <- rta + (Trunc(num) MOD 10) 
		num <- num/10
		Si lon < 2 Entonces
			rta <- rta + num
		FinSi
	FinPara
	
FinFuncion