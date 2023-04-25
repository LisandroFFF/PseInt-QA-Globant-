//Realizar una función que reciba un numero ingresado por el usuario y averigüe si el número es
//capicúa o no (Por ejemplo: 12321). Nota: recordar el uso del MOD y el Trunc. No podemos
//transformar el numero a cadena para realizar el ejercicio.


Algoritmo trece
	
	Definir num Como Numero
	Definir var Como Logico

	Escribir "Por favor, ingrese un número: "
	Leer num
	var <- capicua(num)
	Escribir "Es ", var, " que el número ingresado es capicúa"
	
FinAlgoritmo


Funcion rta <- capicua(num)
	Definir rta, restoBoo, modBoo Como Logico
	Definir acRes, acMod, acMod1, contador, acUlt Como Numero
	
//	acUlt <- num MOD 10 <- cuando el Trunc del número sea igual a cero
//	acMod <- num MOD 10 <- resultante de Truncar todos hasta un dígito antes del de arriba
//	acRes <- num MOD 10 <- el resto, que se compara con acUlt
	acMod <- num
	acMod1 <- 0
	acRes <- 0
	acUlt <- 0
	contador <- 0
	
	Mientras acRes == acUlt Y acMod >= 10 Hacer
		acRes <- acMod MOD 10
		acMod <- Trunc(acMod/10)
		acMod1 <- acMod
		//Línea necesaria para evitar problemas cuando el número tiene únicamente dos dígitos 
		//o se encuentra en la comparación de los dos últimos de ellos:
		Si acMod1 < 10 Entonces
			acUlt <- acMod1
		FinSi
		Mientras Trunc(acMod1) > 10 Hacer
			acMod1 <- acMod1 / 10
			acUlt <- Trunc(acMod1)
			contador <- contador + 1
		FinMientras
		acMod <- acMod - ((10^contador)*acUlt)
		contador <- 0
	FinMientras
	
	Si acRes == acUlt Y acMod < 10 Entonces
		rta <- Verdadero
	SiNo
		rta <- Falso
	FinSi
	
FinFuncion
	