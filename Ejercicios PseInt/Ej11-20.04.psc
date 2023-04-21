//Realizar una función que reciba un numero ingresado por el usuario y averigüe si el número
//tiene todos sus dígitos impares (ejemplo: 333, 55, etc.). Para esto vamos a tener que separar el
//numero en partes (si es un numero de más de un digito) y ver si cada número es par o impar.
//Nota: recordar el uso de la función Mod y Trunc(). No podemos pasar el numero a cadena para
//realizar el ejercicio.

Algoritmo once
	Definir num Como Numero
	Definir var Como Logico
	Escribir "Por favor, ingrese un número"
	Leer num
	var <- suma(num)
	Escribir "Todos los números son impares: ", var
	
FinAlgoritmo

Funcion rta <- suma(num)
	Definir rta Como Logico
	Definir p, i Como Numero
	p<-0
	i<-0
	
	Mientras num > 0 Hacer
		Si (num MOD 10) MOD 2 == 0 Entonces
			p <- p + 1
//		SiNo
//			i <- i + 1
		FinSi
		num <- Trunc(num/10)
	FinMientras
	
	//Si p >= 0 Y i <> 0 Entonces
	Si p >= 1
		rta <- Falso
	SiNo
		rta <- Verdadero
	FinSi
FinFuncion