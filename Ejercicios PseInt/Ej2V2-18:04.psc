//Realizar una función que valide si un número es impar o no. Si es impar la función debe
//devolver un verdadero, si no es impar debe devolver falso. Nota: la función no debe tener
//		mensajes que digan si es par o no, eso debe pasar en el Algoritmo.

Algoritmo dos
	
	Definir num como Numero
	
	Escribir "Por favor, ingrese un número:"
	Leer num
	Escribir "Es " impar(num) " que el número es impar"
FinAlgoritmo

Funcion rta <- impar(num)
	Definir rta Como Logico
	Si num MOD 2 == 0 Entonces
		rta <- Falso
	SiNo
		rta <- Verdadero
	FinSi
	
FinFuncion
