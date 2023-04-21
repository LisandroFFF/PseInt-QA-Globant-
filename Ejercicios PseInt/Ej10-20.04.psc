//Realizar una funci�n que calcule la suma de los d�gitos de un n�mero.
//Ejemplo: 25 = 2 + 5 = 7
//Nota: Para obtener el �ltimo n�mero de un digito de 2 cifras o m�s debemos pensar en el
//resto de una divisi�n entre 10. Recordar el uso de la funci�n Mod y Trunc.

Algoritmo diez
	Definir num, var Como Numero
	Escribir "Por favor, ingrese un n�mero"
	Leer num
	var <- suma(num)
	Escribir "La suma de los d�gitos del n�mero ingresado es: ", var
	
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