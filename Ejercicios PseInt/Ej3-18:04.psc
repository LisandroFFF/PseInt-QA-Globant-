//Crea una función EsMultiplo que reciba los dos números pasados por el usuario, validando
//que el primer número sea múltiplo del segundo y devuelva verdadero si el primer número es
//	múltiplo del segundo, sino es múltiplo que devuelva falso.

Algoritmo tres
	Definir num1, num2 Como Numero
	Escribir "Por favor, ingrese dos números:"
	Leer num1, num2 
	Escribir "Es " EsMultiplo(num1, num2) " que el primer número es múltiplo del segundo"

FinAlgoritmo

Funcion rta <- EsMultiplo(num1, num2)
	Definir rta Como Logico
	Si num1 MOD num2 == 0 Entonces
		rta <- Verdadero
	SiNo
		rta <- Falso
	FinSi
FinFuncion
