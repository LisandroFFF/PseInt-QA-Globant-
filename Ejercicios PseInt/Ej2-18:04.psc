//Realizar una funci�n que valide si un n�mero es impar o no. Si es impar la funci�n debe
//devolver un verdadero, si no es impar debe devolver falso. Nota: la funci�n no debe tener
//		mensajes que digan si es par o no, eso debe pasar en el Algoritmo.

Algoritmo dos
	
	Definir num Como Entero
	Definir var Como Logico
	Escribir "Por favor ingrese un n�mero entero: "
	Leer num
	var <- impar(num)
	Escribir "Es " var " que el n�mero ingresado es impar"
	
FinAlgoritmo

Funcion rta <- impar(num)
	Definir rta Como Logico
	Si num MOD 2 == 0 Entonces
		rta <- Falso
	SiNo
		rta <- Verdadero
	FinSi
FinFuncion
